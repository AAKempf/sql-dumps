-- ------------------------------------------------------
-- Andreas Kempf
--
-- Just copy & paste
-- https://raw.githubusercontent.com/Bon-Appetit/trashmail-domains/master/domains.txt
-- to your local file domains.txt
--
-- LOAD DATA is not allowed for some users on shared web servers
-- Use trashmails.sql instead

-- ------------------------------------------------------
-- Table structure for table `trashmails`
--

USE `tool_tables`;

DROP TABLE IF EXISTS `trashmails`;


CREATE TABLE `trashmails` (
  `trashmail` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `trashmail` (`trashmail`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- ------------------------------------------------------
-- Time optimization DISABLE KEYS;
--
ALTER TABLE `trashmails` DISABLE KEYS;

-- ------------------------------------------------------
-- Inserting data for table `trashmails`
--


LOAD DATA LOCAL INFILE 'domains.txt'
    INTO TABLE `trashmails`
    CHARACTER SET 'UTF8';

ALTER TABLE `trashmails` ENABLE KEYS


-- Dump completed on 2019-08-28 19:48:40
