<?php
/**
 * Small script to import the trashmail domain names into a sql table
 *
 * Just copy & paste
 * https://raw.githubusercontent.com/Bon-Appetit/trashmail-domains/master/domains.txt
 * to your local file domains.txt
 *
 */

$dbUser = "";
$dbPassword = "";
$dbHost = "localhost";
$dbDatabase = "";
$dbCharset = "utf8mb4";

// Table with the domain names
$dbTable = "trashmails";

$whitelist = file_get_contents('https://raw.githubusercontent.com/Bon-Appetit/trashmail-domains/master/whitelist.txt');
$arrWhitelist = explode(PHP_EOL, $whitelist);

$fp = fopen(__DIR__ . '/domains.txt', 'rb');

if ($fp) {

    $conn = mysqli_init();

    mysqli_real_connect($conn, $dbHost, $dbUser, $dbPassword, $dbDatabase) or die();
    mysqli_set_charset($conn, $dbCharset);

    mysqli_query($conn, "truncate {$dbTable}");
    mysqli_query($conn, "ALTER TABLE {$dbTable} DROP INDEX `trashmail`");

    $i = 0;
    while (!feof($fp)) {

        $trashmail = str_replace(PHP_EOL, '', fgets($fp));

        if (!in_array($arrWhitelist, $trashmail)) {
            mysqli_query($conn, "insert into {$dbTable} (`trashmail`) values ('{$trashmail}')");
            $i++;
        }
    }

    echo "{$i} Domains imported<br>";
    echo '<p>Whitelist</p>:<ol><li>' . implode('<li>', $arrWhitelist) . '</ol>';

    mysqli_query($conn, "ALTER TABLE {$dbTable} ADD UNIQUE ( `trashmail`)");
} else {
    echo 'domains.txt missing';
}