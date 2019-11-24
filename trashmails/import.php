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

$whitelist = "hotmail.com";

$fp = fopen(__DIR__ . '/domains.txt', 'rb');

if ($fp) {

    $conn = mysqli_init();

    mysqli_real_connect($conn, $dbHost, $dbUser, $dbPassword, $dbDatabase) or die();
    mysqli_set_charset($conn, $dbCharset);

    mysqli_query($conn, "truncate {$dbTable}");
    mysqli_query($conn, "ALTER TABLE {$dbTable} DROP INDEX `trashmail`");

    while (!feof($fp)) {

        $trashmail = str_replace(PHP_EOL, '', fgets($fp));

        if (stripos($whitelist, $trashmail) !== false) {
            mysqli_query($conn, "insert into {$dbTable} (`trashmail`) values ('{$trashmail}')");
        }

    }

    mysqli_query($conn, "ALTER TABLE {$dbTable} ADD UNIQUE ( `trashmail`)");
}