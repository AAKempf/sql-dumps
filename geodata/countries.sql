-- ------------------------------------------------------
-- Andreas Kempf
--

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `continent` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Continent, by Capital Town',
  `country_de` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag_eu` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `countries_long` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iso_alpha2` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ISO 3361 alpha 2',
  `iso_alpha3` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ISO 3361 alpha 3',
  `timezone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capital` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `countries` (`country`(250))
) ENGINE=MyISAM AUTO_INCREMENT=203 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
ALTER TABLE `countries` DISABLE KEYS;
INSERT INTO `countries` VALUES (1,'Afghanistan','AS','Afghanistan','0','Islamic State of Afghanistan','AF','AFG','Asia/Kabul','Kabul');
INSERT INTO `countries` VALUES (2,'Albania','EU','Albanien','0','Republic of Albania','AL','ALB','Europe/Tirane','Tirana');
INSERT INTO `countries` VALUES (3,'Algeria','AF','Algerien','0','Democratic and Popular Republic of Algeria','DZ','DZA','Africa/Algiers','Algiers');
INSERT INTO `countries` VALUES (4,'Andorra','EU','Andorra','0','Principality of Andorra','AD','AND','Europe/Andorra','Andorra la Vella');
INSERT INTO `countries` VALUES (5,'Angola','AF','Angola','0','Republic of Angola','AO','AGO','Africa/Luanda','Luanda');
INSERT INTO `countries` VALUES (6,'Antigua and Barbuda','NA','Antigua und Barbuda','0','Antigua and Barbuda','AG','ATG','America/Antigua','Saint John`s');
INSERT INTO `countries` VALUES (7,'Argentina','SA','Argentinien','0','Argentine Republic','AR','ARG','America/Argentina/Buenos_Aires','Buenos Aires');
INSERT INTO `countries` VALUES (8,'Armenia','AS','Armenien','0','Republic of Armenia','AM','ARM','Asia/Yerevan','Yerevan');
INSERT INTO `countries` VALUES (9,'Australia','OC','Australien','0','Commonwealth of Australia','AU','AUS','Australia/Perth','Canberra');
INSERT INTO `countries` VALUES (10,'Austria','EU','Österreich','1','Republic of Austria','AT','AUT','Europe/Vienna','Vienna');
INSERT INTO `countries` VALUES (11,'Azerbaijan','AS','Aserbaidschan','0','Azerbaijani Republic','AZ','AZE','Asia/Baku','Baku');
INSERT INTO `countries` VALUES (12,'Bahamas','NA','Bahamas','0','Commonwealth of The Bahamas','BS','BHS','America/Nassau','Nassau');
INSERT INTO `countries` VALUES (13,'Bahrain','AS','Bahrain','0','State of Bahrain','BH','BHR','Asia/Bahrain','Manama');
INSERT INTO `countries` VALUES (14,'Bangladesh','AS','Bangladesch','0','People`s Republic of Bangladesh','BD','BGD','Asia/Dhaka','Dhaka');
INSERT INTO `countries` VALUES (15,'Barbados','NA','Barbados','0','Barbados','BB','BRB','America/Barbados','Bridgetown');
INSERT INTO `countries` VALUES (16,'Belarus','EU','Weißrussland','0','Republic of Belarus','BY','BLR','Europe/Minsk','Minsk');
INSERT INTO `countries` VALUES (17,'Belgium','EU','Belgien','1','Kingdom of Belgium','BE','BEL','Europe/Brussels','Brussels');
INSERT INTO `countries` VALUES (18,'Belize','NA','Belize','0','Belize','BZ','BLZ','America/Belize','Belmopan');
INSERT INTO `countries` VALUES (19,'Benin','AF','Benin','0','Republic of Benin','BJ','BEN','Africa/Porto-Novo','Porto-Novo');
INSERT INTO `countries` VALUES (20,'Bhutan','AS','Bhutan','0','Kingdom of Bhutan','BT','BTN','Asia/Thimphu','Thimphu');
INSERT INTO `countries` VALUES (21,'Bolivia','SA','Bolivien','0','Republic of Bolivia','BO','BOL','America/La_Paz','La Paz (,administrative) Sucre (,legislative/judiciary)');
INSERT INTO `countries` VALUES (22,'Bosnia and Herzegovina','EU','Bosnien und Herzegowina','0','Bosnia and Herzegovina','BA','BIH','Europe/Sarajevo','Sarajevo');
INSERT INTO `countries` VALUES (23,'Botswana','AF','Botsuana','0','Republic of Botswana','BW','BWA','Africa/Gaborone','Gaborone');
INSERT INTO `countries` VALUES (24,'Brazil','SA','Brasilien','0','Federative Republic of Brazil','BR','BRA','America/Sao_Paulo','Brasília');
INSERT INTO `countries` VALUES (25,'Brunei','AS','Brunei','0','Negara Brunei Darussalam','BN','BRN','Asia/Brunei','Bandar Seri Begawan');
INSERT INTO `countries` VALUES (26,'Bulgaria','EU','Bulgarien','1','Republic of Bulgaria','BG','BGR','Europe/Sofia','Sofia');
INSERT INTO `countries` VALUES (27,'Burkina Faso','AF','Burkina Faso','0','Burkina Faso','BF','BFA','Africa/Ouagadougou','Ouagadougou');
INSERT INTO `countries` VALUES (28,'Burma','AS','Burma','0','Union of Burma','MM','MMR','Asia/Rangoon','Rangoon');
INSERT INTO `countries` VALUES (29,'Burundi','AF','Burundi','0','Republic of Burundi','BI','BDI','Africa/Bujumbura','Bujumbura');
INSERT INTO `countries` VALUES (30,'Cambodia','AS','Kambodscha','0','Kingdom of Cambodia','KH','KHM','Asia/Phnom_Penh','Phnom Penh');
INSERT INTO `countries` VALUES (31,'Cameroon','AF','Kamerun','0','Republic of Cameroon','CM','CMR','Africa/Douala','Yaoundé');
INSERT INTO `countries` VALUES (32,'Canada','NA','Kanada','0','Canada','CA','CAN','','Ottawa');
INSERT INTO `countries` VALUES (33,'Cape Verde','AF','Kap Verde','0','Republic of Cape Verde','CV','CPV','Atlantic/Cape_Verde','Praia');
INSERT INTO `countries` VALUES (34,'Central African Republic','AF','Zentralafrikanische Republik','0','Central African Republic','CF','CAF','Africa/Bangui','Bangui');
INSERT INTO `countries` VALUES (35,'Chad','AF','Tschad','0','Republic of Chad','TD','TCD','Africa/Ndjamena','N`Djamena');
INSERT INTO `countries` VALUES (36,'Chile','SA','Chile','0','Republic of Chile','CL','CHL','America/Santiago','Santiago');
INSERT INTO `countries` VALUES (37,'China','AS','China','0','People`s Republic of China','CN','CHN','Asia/Shanghai','Beijing');
INSERT INTO `countries` VALUES (38,'Colombia','SA','Kolumbien','0','Republic of Colombia','CO','COL','America/Bogota','Bogotá');
INSERT INTO `countries` VALUES (39,'Comoros','AF','Komoren','0','Federal Islamic Republic of the Comoros','KM','COM','Indian/Comoro','Moroni');
INSERT INTO `countries` VALUES (40,'Congo (Brazzaville)','AF','Kongo (Republik)','0','Republic of the Congo','CG','COG','Africa/Brazzaville','Brazzaville');
INSERT INTO `countries` VALUES (41,'Congo (Kinshasa)','AF','Kongo (Demokratische Republik)','0','Democratic Republic of the Congo','CD','COD','Africa/Lubumbashi','Kinshasa');
INSERT INTO `countries` VALUES (42,'Costa Rica','NA','Costa Rica','0','Republic of Costa Rica','CR','CRI','America/Costa_Rica','San José');
INSERT INTO `countries` VALUES (43,'Côte d`Ivoire','AF','Elfenbeinküste','0','Republic of Côte d`Ivoire','CI','CIV','Africa/Abidjan','Yamoussoukro');
INSERT INTO `countries` VALUES (44,'Croatia','EU','Kroatien','1','Republic of Croatia','HR','HRV','Europe/Zagreb','Zagreb');
INSERT INTO `countries` VALUES (45,'Cuba','NA','Kuba','0','Republic of Cuba','CU','CUB','America/Havana','Havana');
INSERT INTO `countries` VALUES (46,'Cyprus','AS','Zypern','1','Republic of Cyprus','CY','CYP','Asia/Nicosia','Nicosia');
INSERT INTO `countries` VALUES (47,'Czech Republic','EU','Tschechien','1','Czech Republic','CZ','CZE','Europe/Prague','Prague');
INSERT INTO `countries` VALUES (48,'Denmark','EU','Dänemark','1','Kingdom of Denmark','DK','DNK','Europe/Copenhagen','Copenhagen');
INSERT INTO `countries` VALUES (49,'Djibouti','AF','Dschibuti','0','Republic of Djibouti','DJ','DJI','Africa/Djibouti','Djibouti');
INSERT INTO `countries` VALUES (50,'Dominica','NA','Dominica','0','Commonwealth of Dominica','DM','DMA','America/Dominica','Roseau');
INSERT INTO `countries` VALUES (51,'Dominican Republic','NA','Dominikanische Republik','0','Dominican Republic','DO','DOM','America/Santo_Domingo','Santo Domingo');
INSERT INTO `countries` VALUES (52,'Ecuador','SA','Ecuador','0','Republic of Ecuador','EC','ECU','America/Guayaquil','Quito');
INSERT INTO `countries` VALUES (53,'Egypt','AF','Ägypten','0','Arab Republic of Egypt','EG','EGY','Africa/Cairo','Cairo');
INSERT INTO `countries` VALUES (54,'El Salvador','NA','El Salvador','0','Republic of El Salvador','SV','SLV','America/El_Salvador','San Salvador');
INSERT INTO `countries` VALUES (55,'Equatorial Guinea','AF','Guinea','0','Republic of Equatorial Guinea','GQ','GNQ','Africa/Malabo','Malabo');
INSERT INTO `countries` VALUES (56,'Eritrea','AF','Eritrea','0','State of Eritrea','ER','ERI','Africa/Asmara','Asmara');
INSERT INTO `countries` VALUES (57,'Estonia','EU','Estland','1','Republic of Estonia','EE','EST','Europe/Tallinn','Tallinn');
INSERT INTO `countries` VALUES (58,'Ethiopia','AF','Äthiopien','0','Federal Democratic Republic of Ethiopia','ET','ETH','Africa/Addis_Ababa','Addis Ababa');
INSERT INTO `countries` VALUES (59,'Fiji','OC','Fidschi','0','Republic of the Fiji Islands','FJ','FJI','Pacific/Fiji','Suva');
INSERT INTO `countries` VALUES (60,'Finland','EU','Finnland','1','Republic of Finland','FI','FIN','Europe/Helsinki','Helsinki');
INSERT INTO `countries` VALUES (61,'France','EU','Frankreich','1','French Republic','FR','FRA','Europe/Paris','Paris');
INSERT INTO `countries` VALUES (62,'Gabon','AF','Gabun','0','Gabonese Republic','GA','GAB','Africa/Libreville','Libreville');
INSERT INTO `countries` VALUES (63,'Gambia','AF','Gambia','0','Republic of The Gambia','GM','GMB','Africa/Banjul','Banjul');
INSERT INTO `countries` VALUES (64,'Georgia','AS','Georgien','0','Georgia','GE','GEO','Asia/Tbilisi','T`bilisi');
INSERT INTO `countries` VALUES (65,'Germany','EU','Deutschland','1','Federal Republic of Germany','DE','DEU','Europe/Berlin','Berlin');
INSERT INTO `countries` VALUES (66,'Ghana','AF','Ghana','0','Republic of Ghana','GH','GHA','Africa/Accra','Accra');
INSERT INTO `countries` VALUES (67,'Greece','EU','Griechenland','1','Hellenic Republic','GR','GRC','Europe/Athens','Athens');
INSERT INTO `countries` VALUES (68,'Grenada','NA','Grenada','0','Grenada','GD','GRD','America/Grenada','Saint George`s');
INSERT INTO `countries` VALUES (69,'Guatemala','NA','Guatemala','0','Republic of Guatemala','GT','GTM','America/Guatemala','Guatemala');
INSERT INTO `countries` VALUES (70,'Guinea','AF','Guinea','0','Republic of Guinea','GN','GIN','Africa/Conakry','Conakry');
INSERT INTO `countries` VALUES (71,'Guinea-Bissau','AF','Guinea-Bissau','0','Republic of Guinea-Bissau','GW','GNB','Africa/Bissau','Bissau');
INSERT INTO `countries` VALUES (72,'Guyana','SA','Guyana','0','Co-operative Republic of Guyana','GY','GUY','America/Guyana','Georgetown');
INSERT INTO `countries` VALUES (73,'Haiti','NA','Haiti','0','Republic of Haiti','HT','HTI','America/Port-au-Prince','Port-au-Prince');
INSERT INTO `countries` VALUES (74,'Holy See','EU','Vatikan','0','Holy See','VA','VAT','','Vatican City');
INSERT INTO `countries` VALUES (75,'Honduras','NA','Honduras','0','Republic of Honduras','HN','HND','America/Tegucigalpa','Tegucigalpa');
INSERT INTO `countries` VALUES (76,'Hungary','EU','Ungarn','1','Republic of Hungary','HU','HUN','Europe/Budapest','Budapest');
INSERT INTO `countries` VALUES (77,'Iceland','EU','Island','0','Republic of Iceland','IS','ISL','Atlantic/Reykjavik','Reykjavík');
INSERT INTO `countries` VALUES (78,'India','AS','Indien','0','Republic of India','IN','IND','Asia/Kolkata','New Delhi');
INSERT INTO `countries` VALUES (79,'Indonesia','AS','Indonesien','0','Republic of Indonesia','ID','IDN','','Jakarta');
INSERT INTO `countries` VALUES (80,'Iran','AS','Iran','0','Islamic Republic of Iran','IR','IRN','Asia/Tehran','Tehran');
INSERT INTO `countries` VALUES (81,'Iraq','AS','Iraq','0','Republic of Iraq','IQ','IRQ','Asia/Baghdad','Baghdad');
INSERT INTO `countries` VALUES (82,'Ireland','EU','Irland','1','Ireland','IE','IRL','Europe/Dublin','Dublin');
INSERT INTO `countries` VALUES (83,'Israel','AS','Israel','0','State of Israel','IL','ISR','Asia/Jerusalem','');
INSERT INTO `countries` VALUES (84,'Italy','EU','Italien','1','Italian Republic','IT','ITA','Europe/Rome','Rome');
INSERT INTO `countries` VALUES (85,'Jamaica','NA','Jamaika','0','Jamaica','JM','JAM','America/Jamaica','Kingston');
INSERT INTO `countries` VALUES (86,'Japan','AS','Japan','0','Japan','JP','JPN','Asia/Tokyo','Tokyo');
INSERT INTO `countries` VALUES (87,'Jordan','AS','Jordanien','0','Hashemite Kingdom of Jordan','JO','JOR','Asia/Amman','Amman');
INSERT INTO `countries` VALUES (88,'Kazakhstan','AS','Kasachstan','0','Republic of Kazakhstan','KZ','KAZ','Asia/Almaty','Astana');
INSERT INTO `countries` VALUES (89,'Kenya','AF','Kenia','0','Republic of Kenya','KE','KEN','Africa/Nairobi','Nairobi');
INSERT INTO `countries` VALUES (90,'Kiribati','OC','Kiribati','0','Republic of Kiribati','KI','KIR','Pacific/Tarawa','Tarawa');
INSERT INTO `countries` VALUES (91,'Korea (North)','AS','Nordkorea','0','Democratic People`s Republic of Korea','KP','PRK','Asia/Pyongyang','P`yongyang');
INSERT INTO `countries` VALUES (92,'Korea (South)','AS','Südkorea','0','Republic of Korea','KR','KOR','Asia/Seoul','Seoul');
INSERT INTO `countries` VALUES (93,'Kuwait','AS','Kuwait','0','State of Kuwait','KW','KWT','Asia/Kuwait','Kuwait');
INSERT INTO `countries` VALUES (94,'Kyrgyzstan','AS','Kirgisistan','0','Kyrgyz Republic','KG','KGZ','Asia/Bishkek','Bishkek');
INSERT INTO `countries` VALUES (95,'Laos','AS','Laos','0','Lao People`s Democratic Republic','LA','LAO','Asia/Vientiane','Vientiane');
INSERT INTO `countries` VALUES (96,'Latvia','EU','Lettland','1','Republic of Latvia','LV','LVA','Europe/Riga','Riga');
INSERT INTO `countries` VALUES (97,'Lebanon','AS','Libanon','0','Lebanese Republic','LB','LBN','Asia/Beirut','Beirut');
INSERT INTO `countries` VALUES (98,'Lesotho','AF','Lesotho','0','Kingdom of Lesotho','LS','LSO','Africa/Maseru','Maseru');
INSERT INTO `countries` VALUES (99,'Liberia','AF','Liberia','0','Republic of Liberia','LR','LBR','Africa/Monrovia','Monrovia');
INSERT INTO `countries` VALUES (100,'Libya','AF','Libyen','0','Socialist People`s Libyan Arab Jamahiriya','LY','LBY','Africa/Tripoli','Tripoli');
INSERT INTO `countries` VALUES (101,'Liechtenstein','EU','Liechtenstein','0','Principality of Liechtenstein','LI','LIE','Europe/Vaduz','Vaduz');
INSERT INTO `countries` VALUES (102,'Lithuania','EU','Litauen','1','Republic of Lithuania','LT','LTU','Europe/Vilnius','Vilnius');
INSERT INTO `countries` VALUES (103,'Luxembourg','EU','Luxemburg','1','Grand Duchy of Luxembourg','LU','LUX','Europe/Luxembourg','Luxembourg');
INSERT INTO `countries` VALUES (104,'Macedonia','EU','Mazedonien','0','The Former Yugoslav Republic of Macedonia','MK','MKD','Europe/Skopje','Skopje');
INSERT INTO `countries` VALUES (105,'Madagascar','AF','Madagaskar','0','Republic of Madagascar','MG','MDG','Indian/Antananarivo','Antananarivo');
INSERT INTO `countries` VALUES (106,'Malawi','AF','Malawi','0','Republic of Malawi','MW','MWI','Africa/Blantyre','Lilongwe');
INSERT INTO `countries` VALUES (107,'Malaysia','AS','Malaysia','0','Malaysia','MY','MYS','','Kuala Lumpur');
INSERT INTO `countries` VALUES (108,'Maldives','AS','Malediven','0','Republic of Maldives','MV','MDV','Indian/Maldives','Male');
INSERT INTO `countries` VALUES (109,'Mali','AF','Mali','0','Republic of Mali','ML','MLI','Africa/Bamako','Bamako');
INSERT INTO `countries` VALUES (110,'Malta','EU','Malta','1','Malta','MT','MLT','Europe/Malta','Valletta');
INSERT INTO `countries` VALUES (111,'Marshall Islands','OC','Marshallinseln','0','Republic of the Marshall Islands','MH','MHL','','Majuro');
INSERT INTO `countries` VALUES (112,'Mauritania','AF','Mauretanien','0','Islamic Republic of Mauritania','MR','MRT','Africa/Nouakchott','Nouakchott');
INSERT INTO `countries` VALUES (113,'Mauritius','AF','Mauritius','0','Republic of Mauritius','MU','MUS','Indian/Mauritius','Port Louis');
INSERT INTO `countries` VALUES (114,'Mexico','NA','Mexiko','0','United Mexican States','MX','MEX','America/Mexico_City','Mexico');
INSERT INTO `countries` VALUES (115,'Micronesia','OC','Mikronesien','0','Federated States of Micronesia','FM','FSM','','Palikir');
INSERT INTO `countries` VALUES (116,'Moldova','EU','Moldawien','0','Republic of Moldova','MD','MDA','Europe/Chisinau','Chisinau');
INSERT INTO `countries` VALUES (117,'Monaco','EU','Monaco','0','Principality of Monaco','MC','MCO','Europe/Monaco','Monaco');
INSERT INTO `countries` VALUES (118,'Mongolia','AS','Mongolei','0','Mongolia','MN','MNG','Asia/Krasnoyarsk','Ulaanbaatar');
INSERT INTO `countries` VALUES (119,'Morocco','AF','Marokko','0','Kingdom of Morocco','MA','MAR','Africa/Casablanca','Rabat');
INSERT INTO `countries` VALUES (120,'Mozambique','AF','Mosambik','0','Republic of Mozambique','MZ','MOZ','Africa/Maputo','Maputo');
INSERT INTO `countries` VALUES (121,'Namibia','AF','Namibien','0','Republic of Namibia','NA','NAM','Africa/Windhoek','Windhoek');
INSERT INTO `countries` VALUES (122,'Nauru','OC','Nauru','0','Republic of Nauru','NR','NRU','Pacific/Nauru','Yaren District (,no capital city)');
INSERT INTO `countries` VALUES (123,'Nepal','AS','Nepal','0','Kingdom of Nepal','NP','NPL','Asia/Kathmandu','Kathmandu');
INSERT INTO `countries` VALUES (124,'Netherlands','EU','Niederlande','1','Kingdom of the Netherlands','NL','NLD','Europe/Amsterdam','Amsterdam The Hague (,seat of gov`t)');
INSERT INTO `countries` VALUES (125,'New Zealand','OC','Neuseeland','0','New Zealand','NZ','NZL','Pacific/Auckland','Wellington');
INSERT INTO `countries` VALUES (126,'Nicaragua','NA','Nicaragua','0','Republic of Nicaragua','NI','NIC','America/Managua','Managua');
INSERT INTO `countries` VALUES (127,'Niger','AF','Niger','0','Republic of Niger','NE','NER','Africa/Niamey','Niamey');
INSERT INTO `countries` VALUES (128,'Nigeria','AF','Nigeria','0','Federal Republic of Nigeria','NG','NGA','Africa/Lagos','Abuja');
INSERT INTO `countries` VALUES (129,'Norway','EU','Norwegen','0','Kingdom of Norway','NO','NOR','Europe/Oslo','Oslo');
INSERT INTO `countries` VALUES (130,'Oman','AS','Oman','0','Sultanate of Oman','OM','OMN','Asia/Muscat','Muscat');
INSERT INTO `countries` VALUES (131,'Pakistan','AS','Pakistan','0','Islamic Republic of Pakistan','PK','PAK','Asia/Karachi','Islamabad');
INSERT INTO `countries` VALUES (132,'Palau','OC','Palau','0','Republic of Palau','PW','PLW','Pacific/Palau','Koror');
INSERT INTO `countries` VALUES (133,'Panama','NA','Panama','0','Republic of Panama','PA','PAN','America/Panama','Panama');
INSERT INTO `countries` VALUES (134,'Papua New Guinea','OC','Papua-Neuguinea','0','Independent State of Papua New Guinea','PG','PNG','Pacific/Port_Moresby','Port Moresby');
INSERT INTO `countries` VALUES (135,'Paraguay','SA','Paraguay','0','Republic of Paraguay','PY','PRY','America/Asuncion','Asunción');
INSERT INTO `countries` VALUES (136,'Peru','SA','Peru','0','Republic of Peru','PE','PER','America/Lima','Lima');
INSERT INTO `countries` VALUES (137,'Philippines','AS','Philippinen','0','Republic of the Philippines','PH','PHL','Asia/Manila','Manila');
INSERT INTO `countries` VALUES (138,'Poland','EU','Polen','1','Republic of Poland','PL','POL','Europe/Warsaw','Warsaw');
INSERT INTO `countries` VALUES (139,'Portugal','EU','Portugal','1','Portuguese Republic','PT','PRT','Europe/Lisbon','Lisbon');
INSERT INTO `countries` VALUES (140,'Qatar','AS','Katar','0','State of Qatar','QA','QAT','Asia/Qatar','Doha');
INSERT INTO `countries` VALUES (141,'Romania','EU','Rumänien','1','Romania','RO','ROU','Europe/Bucharest','Bucharest');
INSERT INTO `countries` VALUES (142,'Russia','EU','Russland','0','Russian Federation','RU','RUS','Europe/Moscow','Moscow');
INSERT INTO `countries` VALUES (143,'Rwanda','AF','Ruanda','0','Rwandese Republic','RW','RWA','Africa/Kigali','Kigali');
INSERT INTO `countries` VALUES (144,'Saint Kitts and Nevis','NA','Saint Kitts und Nevis','0','Federation of Saint Kitts and Nevis','KN','KNA','America/St_Kitts','Basseterre');
INSERT INTO `countries` VALUES (145,'Saint Lucia','NA','Saint Lucia','0','Saint Lucia','LC','LCA','America/St_Lucia','Castries');
INSERT INTO `countries` VALUES (146,'Saint Vincent','NA','Saint Vincent','0','Saint Vincent','VC','VCT','America/St_Vincent','Kingstown');
INSERT INTO `countries` VALUES (147,'Samoa','OC','Samoa','0','Independent State of Samoa','WS','WSM','Pacific/Apia','Apia');
INSERT INTO `countries` VALUES (148,'San Marino','EU','San Marino','0','Republic of San Marino','SM','SMR','Europe/San_Marino','San Marino');
INSERT INTO `countries` VALUES (149,'Sao Tome and Principe','AF','São Tomé und Príncipe','0','Democratic Republic of Sao Tome and Principe','ST','STP','Africa/Sao_Tome','S?o Tomé');
INSERT INTO `countries` VALUES (150,'Saudi Arabia','AS','Saudi-Arabien','0','Kingdom of Saudi Arabia','SA','SAU','Asia/Riyadh','Riyadh');
INSERT INTO `countries` VALUES (151,'Senegal','AF','Senegal','0','Republic of Senegal','SN','SEN','Africa/Dakar','Dakar');
INSERT INTO `countries` VALUES (152,'Seychelles','AF','Seychellen','0','Republic of Seychelles','SC','SYC','Indian/Mahe','Victoria');
INSERT INTO `countries` VALUES (153,'Sierra Leone','AF','Sierra Leone','0','Republic of Sierra Leone','SL','SLE','Africa/Freetown','Freetown');
INSERT INTO `countries` VALUES (154,'Singapore','AS','Singapur','0','Republic of Singapore','SG','SGP','Asia/Singapore','Singapore');
INSERT INTO `countries` VALUES (155,'Slovakia','EU','Slowakei','1','Slovak Republic','SK','SVK','Europe/Bratislava','Bratislava');
INSERT INTO `countries` VALUES (156,'Slovenia','EU','Slowenien','1','Republic of Slovenia','SI','SVN','Europe/Ljubljana','Ljubljana');
INSERT INTO `countries` VALUES (157,'Solomon Islands','OC','Salomonen','0','Solomon Islands','SB','SLB','Pacific/Guadalcanal','Honiara');
INSERT INTO `countries` VALUES (158,'Somalia','AF','Somalia','0','Somalia','SO','SOM','Africa/Mogadishu','Mogadishu');
INSERT INTO `countries` VALUES (159,'South Africa','AF','Südafrika','0','Republic of South Africa','ZA','ZAF','Africa/Johannesburg','Pretoria (,administrative) Cape Town (,legislative) Bloemfontein (,judiciary)');
INSERT INTO `countries` VALUES (160,'Spain','EU','Spanien','1','Kingdom of Spain','ES','ESP','Europe/Madrid','Madrid');
INSERT INTO `countries` VALUES (161,'Sri Lanka','AS','Sri Lanka','0','Democratic Socialist Republic of Sri Lanka','LK','LKA','Asia/Colombo','Colombo');
INSERT INTO `countries` VALUES (162,'Sudan','AF','Sudan','0','Republic of the Sudan','SD','SDN','Africa/Khartoum','Khartoum');
INSERT INTO `countries` VALUES (163,'Suriname','SA','Surinam','0','Republic of Suriname','SR','SUR','America/Paramaribo','Paramaribo');
INSERT INTO `countries` VALUES (164,'Swaziland','AF','Swasiland','0','Kingdom of Swaziland','SZ','SWZ','Africa/Mbabane','Mbabane (,administrative) Lobamba (,legislative)');
INSERT INTO `countries` VALUES (165,'Sweden','EU','Schweden','1','Kingdom of Sweden','SE','SWE','Europe/Stockholm','Stockholm');
INSERT INTO `countries` VALUES (166,'Switzerland','EU','Schweiz','0','Swiss Confederation','CH','CHE','Europe/Zurich','Bern');
INSERT INTO `countries` VALUES (167,'Syria','AS','Syrien','0','Syrian Arab Republic','SY','SYR','Asia/Damascus','Damascus');
INSERT INTO `countries` VALUES (168,'Tajikistan','AS','Tadschikistan','0','Republic of Tajikistan','TJ','TJK','Asia/Dushanbe','Dushanbe');
INSERT INTO `countries` VALUES (169,'Tanzania','AF','Tansania','0','United Republic of Tanzania','TZ','TZA','Africa/Dar_es_Salaam','Dar es Salaam Dodoma (,legislative)');
INSERT INTO `countries` VALUES (170,'Thailand','AS','Thailand','0','Kingdom of Thailand','TH','THA','Asia/Bangkok','Bangkok');
INSERT INTO `countries` VALUES (171,'Togo','AF','Togo','0','Togolese Republic','TG','TGO','Africa/Lome','Lom&eacute &');
INSERT INTO `countries` VALUES (172,'Tonga','OC','Tonga','0','Kingdom of Tonga','TO','TON','Pacific/Tongatapu','Nuku`alofa');
INSERT INTO `countries` VALUES (173,'Trinidad and Tobago','NA','Trinidad und Tobago','0','Republic of Trinidad and Tobago','TT','TTO','America/Port_of_Spain','Port-of-Spain');
INSERT INTO `countries` VALUES (174,'Tunisia','AF','Tunesien','0','Republic of Tunisia','TN','TUN','Africa/Tunis','Tunis');
INSERT INTO `countries` VALUES (175,'Turkey','AS','Türkei','0','Republic of Turkey','TR','TUR','Europe/Istanbul','Ankara');
INSERT INTO `countries` VALUES (176,'Turkmenistan','AS','Turkmenistan','0','Turkmenistan','TM','TKM','Asia/Ashgabat','Ashgabat');
INSERT INTO `countries` VALUES (177,'Tuvalu','OC','Tuvalu','0','Tuvalu','TV','TUV','Pacific/Funafuti','Funafuti');
INSERT INTO `countries` VALUES (178,'Uganda','AF','Uganda','0','Republic of Uganda','UG','UGA','Africa/Kampala','Kampala');
INSERT INTO `countries` VALUES (179,'Ukraine','EU','Ukraine','0','Ukraine','UA','UKR','','Kiev');
INSERT INTO `countries` VALUES (180,'United Arab Emirates','AS','Vereinigte Arabische Emirate','0','United Arab Emirates','AE','ARE','','Abu Dhabi');
INSERT INTO `countries` VALUES (181,'United Kingdom','EU','Großbritannien','1','United Kingdom of Great Britain and Northern Ireland','GB','GBR','Europe/London','London');
INSERT INTO `countries` VALUES (182,'United States','NA','USA','0','United States of America','US','USA','','Washington, DC');
INSERT INTO `countries` VALUES (183,'Uruguay','SA','Uruguay','0','Oriental Republic of Uruguay','UY','URY','America/Montevideo','Montevideo');
INSERT INTO `countries` VALUES (184,'Uzbekistan','AS','Usbekistan','0','Republic of Uzbekistan','UZ','UZB','Asia/Samarkand','Tashkent');
INSERT INTO `countries` VALUES (185,'Vanuatu','OC','Vanuatu','0','Republic of Vanuatu','VU','VUT','Pacific/Efate','Port-Vila');
INSERT INTO `countries` VALUES (186,'Venezuela','SA','Venezuela','0','Republic of Venezuela','VE','VEN','America/Caracas','Caracas');
INSERT INTO `countries` VALUES (187,'Vietnam','AS','Vietnam','0','Socialist Republic of Vietnam','VN','VNM','Asia/Ho_Chi_Minh','Hanoi');
INSERT INTO `countries` VALUES (188,'Yemen','AS','Yemen','0','Republic of Yemen','YE','YEM','Asia/Aden','Sanaa');
INSERT INTO `countries` VALUES (189,'Zambia','AF','Sambia','0','Republic of Zambia','ZM','ZMB','Africa/Lusaka','Lusaka');
INSERT INTO `countries` VALUES (190,'Zimbabwe','AF','Simbabwe','0','Republic of Zimbabwe','ZW','ZWE','Africa/Harare','Harare');
INSERT INTO `countries` VALUES (191,'Serbia','EU','Serbien','0','Serbia','RS','SRB','Europe/Belgrade','Belgrad');
INSERT INTO `countries` VALUES (192,'Kosovo','','Kosovo','0','Kosovo','XK','','Europe/Belgrade','Skopje');
INSERT INTO `countries` VALUES (193,'Taiwan','AS','Taiwan','0','Taiwan','TW','TWN','Asia/Taipei','Taipei');
INSERT INTO `countries` VALUES (194,'New Caledonia','OC','Neukaledonien','0','Territory of New Caledonia and Dependencies','NC','NCL','Pacific/Noumea','Noumea');
INSERT INTO `countries` VALUES (195,'Tibet','','Tibet','0','Tibet Autonomous Region','TB','','Asia/Urumqi','Lhasa');
INSERT INTO `countries` VALUES (196,'Palestine','AS','Palästina','0','State of Palestine','PS','PSE','Asia/Jerusalem','Jerusalem, Ramallah');
INSERT INTO `countries` VALUES (197,'Greenland','NA','Grönland','0','Grönland','GL','GRL','','Nuuk');
INSERT INTO `countries` VALUES (198,'French Guiana','SA','Französisch-Guayana','0','French Guiana','GF','GUF','America/Cayenne','Cayenne');
INSERT INTO `countries` VALUES (199,'Falkland Islands','SA','Falklandinseln','0','Falkland Islands','FK','FLK','','');
INSERT INTO `countries` VALUES (200,'French Polynesia','OC','Französisch-Polynesien','0','French Polynesia','PF','PYF','','');
INSERT INTO `countries` VALUES (201,'Montenegro','EU','Montenegro','0','Montenegro','ME','MNE','Europe/Belgrade','Podgorica');
INSERT INTO `countries` VALUES (202,'Jersey','EU','Jersey','1','Bailiwick of Jersey','JE','JEY','Europe/London','Saint Helier');
ALTER TABLE `countries` ENABLE KEYS;
