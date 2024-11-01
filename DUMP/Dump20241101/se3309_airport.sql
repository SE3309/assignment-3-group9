-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: se3309
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `airport`
--

DROP TABLE IF EXISTS `airport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airport` (
  `airportCode` char(3) NOT NULL,
  `airportName` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `timeZone` varchar(50) NOT NULL,
  PRIMARY KEY (`airportCode`),
  UNIQUE KEY `airportName` (`airportName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airport`
--

LOCK TABLES `airport` WRITE;
/*!40000 ALTER TABLE `airport` DISABLE KEYS */;
INSERT INTO `airport` VALUES ('AAD','Brandonborough','Brandonborough','South Africa','Europe/San_Marino'),('ACO','Contrerasfurt','Contrerasfurt','South Korea','Asia/Dushanbe'),('AEI','Millerville','Millerville','United States','Africa/Lome'),('AEX','Michaelland','Michaelland','India','Atlantic/Canary'),('AGK','Stevensfurt','Stevensfurt','Brazil','Asia/Colombo'),('AGT','Johnsonview','Johnsonview','Brazil','Africa/Niamey'),('AHI','Andersontown','Andersontown','Mexico','Europe/Prague'),('AKW','Crawfordburgh','Crawfordburgh','Canada','Asia/Karachi'),('APU','West Dustinhaven','West Dustinhaven','Germany','Europe/Tirane'),('ARB','Cisnerosbury','Cisnerosbury','Canada','Africa/Porto-Novo'),('AST','West Heather','West Heather','China','Pacific/Galapagos'),('ASZ','West Lisamouth','West Lisamouth','United Kingdom','Europe/Skopje'),('ATG','Nunezport','Nunezport','United States','Asia/Aden'),('AWQ','Smithview','Smithview','Japan','Africa/Casablanca'),('AYD','Port Julieview','Port Julieview','South Korea','Africa/Bissau'),('AYE','Maryview','Maryview','United States','Atlantic/Azores'),('BAZ','South Jennifer','South Jennifer','China','America/Belize'),('BCV','Martinezmouth','Martinezmouth','France','Pacific/Kiritimati'),('BFI','Charlesmouth','Charlesmouth','South Africa','Europe/Skopje'),('BFV','New Emilymouth','New Emilymouth','United States','America/Managua'),('BIG','Gibsonland','Gibsonland','China','Africa/Ndjamena'),('BJQ','Coxfort','Coxfort','Germany','Europe/Luxembourg'),('BJV','Chambersside','Chambersside','China','Atlantic/Reykjavik'),('BJX','Ginastad','Ginastad','India','Africa/Khartoum'),('BLK','West Holly','West Holly','Germany','Africa/Lagos'),('BRF','Wileyshire','Wileyshire','United Kingdom','Europe/Oslo'),('BVF','Patrickbury','Patrickbury','Mexico','America/Nassau'),('BZD','Jamesborough','Jamesborough','France','America/Swift_Current'),('BZS','East Josephchester','East Josephchester','Japan','Europe/Sarajevo'),('CBC','Woodwardside','Woodwardside','Italy','Africa/Bissau'),('CDN','North Nicholas','North Nicholas','Italy','Europe/San_Marino'),('CEE','Traceymouth','Traceymouth','Australia','Indian/Maldives'),('CFA','Codymouth','Codymouth','China','Europe/Berlin'),('CFY','Jenniferburgh','Jenniferburgh','France','Africa/Bujumbura'),('CFZ','Stokesborough','Stokesborough','India','America/Nassau'),('CGV','East Lee','East Lee','Germany','Indian/Maldives'),('CHY','Port Christina','Port Christina','France','America/Santo_Domingo'),('CIO','Martinezberg','Martinezberg','United States','America/Dominica'),('CJK','Huangborough','Huangborough','South Africa','Africa/Khartoum'),('CLY','Davidburgh','Davidburgh','China','Asia/Phnom_Penh'),('CNM','West John','West John','France','America/Caracas'),('CNP','North Amandamouth','North Amandamouth','India','America/Guyana'),('CYL','New Sethchester','New Sethchester','United Kingdom','Pacific/Fiji'),('DAB','East James','East James','Japan','Pacific/Nauru'),('DAP','Martinezhaven','Martinezhaven','France','America/Bogota'),('DBP','New Julieburgh','New Julieburgh','Canada','Europe/Andorra'),('DDC','Frenchmouth','Frenchmouth','Australia','America/Santo_Domingo'),('DDQ','East Kelly','East Kelly','South Korea','Africa/Bujumbura'),('DDY','South James','South James','Japan','Europe/Dublin'),('DFG','Butlerside','Butlerside','Germany','Africa/Banjul'),('DFO','Jennyland','Jennyland','China','Europe/Copenhagen'),('DFP','South Jessicaville','South Jessicaville','United Kingdom','Africa/Cairo'),('DGU','Port Patriciaville','Port Patriciaville','Canada','America/Guyana'),('DHN','Alexandriaton','Alexandriaton','United Kingdom','Asia/Dushanbe'),('DIC','Rogersfurt','Rogersfurt','Italy','Atlantic/Madeira'),('DIM','North Christopher','North Christopher','Japan','Asia/Pontianak'),('DIX','Smithborough','Smithborough','France','America/Bogota'),('DNP','Blacktown','Blacktown','United States','Asia/Aden'),('DOG','North Bryan','North Bryan','Germany','Europe/Vienna'),('DPP','New Hollybury','New Hollybury','United Kingdom','Europe/Zaporozhye'),('DUK','Gonzalezberg','Gonzalezberg','France','Africa/Dakar'),('DVE','Port Davidville','Port Davidville','South Africa','Asia/Katmandu'),('DVM','South Loriborough','South Loriborough','United Kingdom','Europe/Istanbul'),('DVN','Wyattfurt','Wyattfurt','Brazil','America/Barbados'),('DXA','New Michael','New Michael','Australia','Africa/Lome'),('DYU','Schneiderbury','Schneiderbury','Australia','Pacific/Apia'),('ECJ','North Natalie','North Natalie','Brazil','America/Guatemala'),('ECN','East Dawnchester','East Dawnchester','Australia','Africa/Khartoum'),('EDD','West Stacyview','West Stacyview','Australia','Indian/Antananarivo'),('EEB','Phelpsfort','Phelpsfort','United Kingdom','America/Barbados'),('EFV','Port Aprilmouth','Port Aprilmouth','United Kingdom','Africa/Maputo'),('EHC','Lake Luke','Lake Luke','Brazil','Europe/Podgorica'),('EHE','Grahamtown','Grahamtown','China','America/Jamaica'),('EIR','West Davidburgh','West Davidburgh','Mexico','Africa/Kinshasa'),('EJU','New Crystalbury','New Crystalbury','France','Africa/Conakry'),('EJW','Lake Veronica','Lake Veronica','Japan','Africa/Bangui'),('ENM','North Masonchester','North Masonchester','Australia','Pacific/Guadalcanal'),('ENT','Petersonfurt','Petersonfurt','Brazil','Africa/Kampala'),('ENX','Huntton','Huntton','India','Africa/Tripoli'),('EOX','East Steven','East Steven','South Korea','Africa/Gaborone'),('EPO','West James','West James','Germany','Asia/Shanghai'),('EQQ','Alexanderville','Alexanderville','Australia','Europe/Monaco'),('ESF','New Sheila','New Sheila','Germany','Asia/Jakarta'),('ESU','North Dawnstad','North Dawnstad','Australia','Pacific/Port_Moresby'),('EYW','East Blakemouth','East Blakemouth','France','Europe/Amsterdam'),('FKJ','Hunttown','Hunttown','United States','America/St_Kitts'),('FKM','New Tracy','New Tracy','Mexico','Asia/Bishkek'),('FRV','Kennethport','Kennethport','Germany','Europe/Istanbul'),('FUT','Kelleytown','Kelleytown','Brazil','Africa/Bamako'),('FWM','Richardhaven','Richardhaven','Japan','America/Managua'),('FXY','Brookemouth','Brookemouth','India','America/Guayaquil'),('FXZ','Baldwinmouth','Baldwinmouth','Canada','Africa/Gaborone'),('GBT','Rebeccaburgh','Rebeccaburgh','South Africa','Asia/Tokyo'),('GCF','East Dominiquefurt','East Dominiquefurt','United States','Asia/Brunei'),('GCH','New Christopherville','New Christopherville','Germany','Asia/Manila'),('GHB','Amymouth','Amymouth','Mexico','America/Lima'),('GHT','North Catherinemouth','North Catherinemouth','China','America/Dominica'),('GHX','Sarahborough','Sarahborough','France','Africa/Kinshasa'),('GKM','Villegasmouth','Villegasmouth','Italy','Asia/Vientiane'),('GMH','Jasonhaven','Jasonhaven','Canada','Africa/Accra'),('GMJ','Ryanborough','Ryanborough','Italy','Asia/Jerusalem'),('GNN','Potterstad','Potterstad','Mexico','America/Tegucigalpa'),('GSY','Sheltonchester','Sheltonchester','Canada','Europe/Brussels'),('GUK','Kimberlyshire','Kimberlyshire','South Africa','Europe/Athens'),('GVE','West Matthew','West Matthew','France','Asia/Rangoon'),('GVM','Feliciaberg','Feliciaberg','Italy','Africa/Niamey'),('GXK','Port Matthew','Port Matthew','Mexico','America/Barbados'),('HAZ','North Adrianachester','North Adrianachester','Italy','America/Belize'),('HCM','Gordonburgh','Gordonburgh','South Africa','Africa/Bamako'),('HEI','Howardborough','Howardborough','Japan','Africa/Accra'),('HGN','Port Ashleybury','Port Ashleybury','South Korea','Africa/Dar_es_Salaam'),('HHA','Aaronside','Aaronside','Australia','America/El_Salvador'),('HHS','Emilyhaven','Emilyhaven','Japan','Africa/Nairobi'),('HMJ','Wilsonbury','Wilsonbury','China','Asia/Singapore'),('HMW','Kathleenburgh','Kathleenburgh','China','America/Kentucky/Louisville'),('HNT','Seanside','Seanside','United Kingdom','Europe/Volgograd'),('HQG','Barbarastad','Barbarastad','China','Pacific/Easter'),('HRW','Kristenside','Kristenside','Japan','Asia/Taipei'),('HSF','North Angelabury','North Angelabury','France','Africa/Tunis'),('HSX','New Brooke','New Brooke','United States','Africa/Niamey'),('HTA','Scottton','Scottton','South Africa','Indian/Comoro'),('HTH','New Christopherstad','New Christopherstad','Australia','Europe/Warsaw'),('HTS','West Paigeborough','West Paigeborough','Canada','Europe/Copenhagen'),('HVF','Weisschester','Weisschester','South Korea','Africa/Kigali'),('HYX','Bridgesbury','Bridgesbury','Canada','Asia/Damascus'),('IBU','Rhodeschester','Rhodeschester','Japan','Europe/Rome'),('IDB','West Corey','West Corey','Mexico','Europe/Copenhagen'),('IDX','North Alexandra','North Alexandra','France','Asia/Urumqi'),('IFD','Andersonbury','Andersonbury','Brazil','Africa/Algiers'),('IFI','North Maryfort','North Maryfort','Canada','Africa/Luanda'),('IFQ','New Seanville','New Seanville','India','Europe/Rome'),('IFU','Spencerfurt','Spencerfurt','South Africa','Asia/Jerusalem'),('IGD','South Tina','South Tina','Japan','Africa/Libreville'),('IHH','Port Bradleyhaven','Port Bradleyhaven','United Kingdom','America/Costa_Rica'),('IHM','North Scottmouth','North Scottmouth','Canada','Africa/Porto-Novo'),('IIB','Sanchezland','Sanchezland','South Korea','Pacific/Kwajalein'),('IJN','Martinezland','Martinezland','United Kingdom','Asia/Pyongyang'),('IMG','South Kenneth','South Kenneth','France','Europe/Helsinki'),('INL','West Michellebury','West Michellebury','United Kingdom','Asia/Vientiane'),('IOV','Jesusville','Jesusville','Italy','Africa/Malabo'),('IRH','New Jose','New Jose','Italy','Africa/Windhoek'),('IUM','Nelsonside','Nelsonside','Italy','Africa/Luanda'),('IWU','Bellburgh','Bellburgh','United Kingdom','America/Barbados'),('IYN','Dennisbury','Dennisbury','Italy','Indian/Comoro'),('IZN','Harmonstad','Harmonstad','Germany','Asia/Beirut'),('JAR','Lake Joyshire','Lake Joyshire','South Korea','Europe/Zagreb'),('JDR','West Cindy','West Cindy','Japan','Pacific/Easter'),('JDV','East Curtismouth','East Curtismouth','India','Africa/Gaborone'),('JEM','New Monicashire','New Monicashire','Canada','Europe/Warsaw'),('JIE','New Roberttown','New Roberttown','South Korea','Africa/Monrovia'),('JJZ','South Scott','South Scott','France','Asia/Amman'),('JKF','Lake Alexmouth','Lake Alexmouth','Canada','America/Dominica'),('JKO','Lake Paulmouth','Lake Paulmouth','China','Africa/Maseru'),('JQM','Lake Joseph','Lake Joseph','United Kingdom','Europe/Istanbul'),('JSL','Daleburgh','Daleburgh','Italy','America/Panama'),('JTR','Williamstown','Williamstown','United States','Africa/Windhoek'),('JUD','New Jackchester','New Jackchester','South Korea','Europe/Prague'),('JWF','West Crystal','West Crystal','Germany','America/Boa_Vista'),('JYU','South Cynthiatown','South Cynthiatown','Canada','Africa/Windhoek'),('KBE','Perryside','Perryside','Brazil','Pacific/Guadalcanal'),('KEQ','Lake Jeffreyfurt','Lake Jeffreyfurt','France','Pacific/Efate'),('KHI','New Ashley','New Ashley','South Africa','Asia/Nicosia'),('KHZ','Johnview','Johnview','Brazil','Europe/Vilnius'),('KJG','Lake Erikbury','Lake Erikbury','Australia','Europe/Malta'),('KMM','East Kevin','East Kevin','Australia','Asia/Oral'),('KOA','Georgestad','Georgestad','China','Europe/Vilnius'),('KQL','Tranbury','Tranbury','Canada','Africa/Monrovia'),('KRQ','Jamietown','Jamietown','Germany','Africa/Monrovia'),('KSK','East Billymouth','East Billymouth','Australia','America/St_Vincent'),('KVZ','South Daniel','South Daniel','United States','Africa/Ndjamena'),('KWQ','Lukestad','Lukestad','Japan','Africa/Porto-Novo'),('KXN','North Christinemouth','North Christinemouth','India','Africa/Banjul'),('LGN','Jonesborough','Jonesborough','Mexico','Pacific/Nauru'),('LIV','Christinaside','Christinaside','Italy','Africa/Freetown'),('LMD','East Justin','East Justin','China','America/Nome'),('LNB','Hahnview','Hahnview','United Kingdom','Pacific/Galapagos'),('LNE','East Curtis','East Curtis','China','Asia/Tashkent'),('LOM','East Andrew','East Andrew','France','Africa/Gaborone'),('LPG','New Karenborough','New Karenborough','China','Asia/Tbilisi'),('LRG','Wrightville','Wrightville','Brazil','Indian/Mauritius'),('LRI','New Amy','New Amy','United States','America/Panama'),('LRW','West Cynthiaview','West Cynthiaview','France','Africa/Monrovia'),('LSI','Troyton','Troyton','Australia','America/Managua'),('LSM','Lake Kennethberg','Lake Kennethberg','Canada','Asia/Muscat'),('LSO','Anthonyton','Anthonyton','Japan','Africa/Cairo'),('LTA','South Davidton','South Davidton','France','Africa/Tunis'),('LWO','Lucasside','Lucasside','Germany','Asia/Thimphu'),('LWP','Harperland','Harperland','China','Europe/Dublin'),('MBE','West Ashley','West Ashley','United Kingdom','Europe/San_Marino'),('MBQ','South Jessica','South Jessica','Japan','Asia/Jakarta'),('MBW','Lake Jenniferbury','Lake Jenniferbury','Brazil','Europe/Oslo'),('MED','Port Karenville','Port Karenville','Germany','Europe/Vatican'),('MEP','New Jasonberg','New Jasonberg','Canada','America/Boa_Vista'),('MFU','North Luisshire','North Luisshire','United States','Africa/Kinshasa'),('MJB','North Thomas','North Thomas','United States','Asia/Yerevan'),('MJY','Hawkinsmouth','Hawkinsmouth','Mexico','Asia/Choibalsan'),('MMV','Port Andrewbury','Port Andrewbury','India','America/Montevideo'),('MSJ','West Michaelton','West Michaelton','United Kingdom','Europe/Paris'),('MTF','North Robin','North Robin','South Africa','Europe/Belgrade'),('MTM','Lake Eduardofort','Lake Eduardofort','United Kingdom','Asia/Katmandu'),('MTT','Robertborough','Robertborough','Mexico','Asia/Manila'),('MUS','South Timothymouth','South Timothymouth','France','Europe/Prague'),('MWA','Christopherland','Christopherland','Mexico','America/St_Kitts'),('NCR','West Justin','West Justin','India','Pacific/Majuro'),('NIB','East Sarahstad','East Sarahstad','Japan','Europe/Belgrade'),('NIL','Wilsonmouth','Wilsonmouth','Australia','Asia/Qyzylorda'),('NJE','West Jennifer','West Jennifer','Australia','Africa/Bujumbura'),('NJQ','Juliaborough','Juliaborough','United States','Europe/Budapest'),('NKH','Brownside','Brownside','Brazil','Africa/Kigali'),('NMR','Suzannemouth','Suzannemouth','Canada','Europe/Budapest'),('NNG','Lake Marymouth','Lake Marymouth','United States','Pacific/Funafuti'),('NNS','East Williamberg','East Williamberg','Canada','Atlantic/Canary'),('NOW','Smithside','Smithside','China','Europe/Bratislava'),('NPS','Ninamouth','Ninamouth','Japan','Africa/Bamako'),('NRP','Ronaldtown','Ronaldtown','Japan','Africa/Conakry'),('NRV','West Brianport','West Brianport','Brazil','America/Argentina/Buenos_Aires'),('NTK','Harperburgh','Harperburgh','United States','America/Managua'),('NTY','East Marietown','East Marietown','Italy','Europe/Luxembourg'),('NXI','South Tiffany','South Tiffany','Canada','Europe/Zaporozhye'),('NYK','Port Danielland','Port Danielland','South Korea','Europe/Rome'),('OBZ','Yangchester','Yangchester','Mexico','Africa/Niamey'),('ODE','Rodriguezburgh','Rodriguezburgh','India','Asia/Dubai'),('ODM','West Maria','West Maria','Brazil','Indian/Maldives'),('OEI','Carsonstad','Carsonstad','South Africa','Asia/Qyzylorda'),('OLQ','Larryberg','Larryberg','Brazil','Indian/Maldives'),('OLW','East Teresa','East Teresa','India','Asia/Tashkent'),('ORD','Vaughanborough','Vaughanborough','Italy','Europe/Tirane'),('OSJ','Port William','Port William','United States','Europe/Athens'),('OSL','Ambermouth','Ambermouth','India','America/Antigua'),('OSN','Janeborough','Janeborough','United Kingdom','Europe/Rome'),('OST','Elizabethton','Elizabethton','China','Asia/Colombo'),('OSX','New Vanessastad','New Vanessastad','Italy','Africa/Malabo'),('PAA','Robertside','Robertside','Australia','Africa/Lome'),('PAN','East John','East John','Italy','America/Chihuahua'),('PDC','West Charles','West Charles','China','Asia/Ulaanbaatar'),('PEC','Jonathanfort','Jonathanfort','Brazil','Africa/Windhoek'),('PIN','Zimmermanbury','Zimmermanbury','South Korea','Asia/Manila'),('PJQ','New Michelle','New Michelle','Canada','Africa/Malabo'),('PMP','Cruzport','Cruzport','France','Europe/Budapest'),('PPJ','North Jennifermouth','North Jennifermouth','Japan','Australia/Lord_Howe'),('PPW','South Garyhaven','South Garyhaven','South Africa','Asia/Aden'),('PQO','East Andreahaven','East Andreahaven','United States','Pacific/Kiritimati'),('PSU','New Robert','New Robert','United States','Europe/Prague'),('PTB','Smithport','Smithport','China','Atlantic/Cape_Verde'),('PUH','Richardfurt','Richardfurt','South Korea','Asia/Aden'),('PXR','Port Scottfurt','Port Scottfurt','India','Europe/Berlin'),('PYH','North Debramouth','North Debramouth','Brazil','Asia/Phnom_Penh'),('QAI','Berghaven','Berghaven','Canada','Europe/Bucharest'),('QDP','Stewartberg','Stewartberg','Italy','America/Antigua'),('QEA','North Brian','North Brian','Germany','Europe/London'),('QFC','Tonyaton','Tonyaton','Canada','Asia/Karachi'),('QHD','North Michael','North Michael','United States','Africa/Malabo'),('QHS','North Stephaniefort','North Stephaniefort','Italy','Asia/Yerevan'),('QJO','Port Elizabeth','Port Elizabeth','Australia','Africa/Addis_Ababa'),('QKV','Justintown','Justintown','South Korea','Asia/Dhaka'),('QME','Port Rhondamouth','Port Rhondamouth','Australia','Africa/Maseru'),('QOV','Lisafort','Lisafort','China','Indian/Antananarivo'),('QRD','Marcusview','Marcusview','Australia','Asia/Gaza'),('QRR','Perezchester','Perezchester','India','America/Jamaica'),('QSQ','Mariahmouth','Mariahmouth','Italy','Asia/Kuching'),('QSZ','Jonathanberg','Jonathanberg','Japan','Atlantic/Cape_Verde'),('QZW','West Micheleburgh','West Micheleburgh','United States','Pacific/Palau'),('RAI','West Sharon','West Sharon','Italy','Asia/Yerevan'),('RBK','North Morgan','North Morgan','China','Europe/Simferopol'),('RDM','Bensonhaven','Bensonhaven','Japan','Europe/Brussels'),('RFU','Wilsonton','Wilsonton','South Korea','Africa/Libreville'),('RHT','West Troyview','West Troyview','United Kingdom','America/Argentina/La_Rioja'),('RJO','West Emily','West Emily','China','Europe/Sofia'),('RKE','Hamiltonbury','Hamiltonbury','Japan','Atlantic/Reykjavik'),('RLM','New Bonnie','New Bonnie','Japan','Africa/Kampala'),('RNP','Smithshire','Smithshire','South Korea','Europe/Skopje'),('RNT','Matthewland','Matthewland','India','Asia/Riyadh'),('RNX','Bryanfort','Bryanfort','Japan','Atlantic/Reykjavik'),('RPH','Lake Jennifermouth','Lake Jennifermouth','Mexico','Europe/Budapest'),('RQF','Ryanmouth','Ryanmouth','Italy','Europe/Vilnius'),('RRN','Port Joshua','Port Joshua','France','Asia/Oral'),('RSH','New Charles','New Charles','Canada','Pacific/Easter'),('RSK','Nixonchester','Nixonchester','Brazil','America/Guatemala'),('RXT','New Marcusmouth','New Marcusmouth','South Africa','Africa/Bamako'),('RZR','Bennetttown','Bennetttown','United Kingdom','Africa/Niamey'),('SBN','Elizabethbury','Elizabethbury','South Korea','Europe/Ljubljana'),('SBP','Russellchester','Russellchester','Japan','Asia/Gaza'),('SBZ','Joshuaside','Joshuaside','United Kingdom','America/Managua'),('SHB','Emilyside','Emilyside','United Kingdom','Asia/Tehran'),('SIF','South Jeremy','South Jeremy','Canada','Africa/Dakar'),('SIL','North Michaelville','North Michaelville','South Korea','Europe/Vilnius'),('SIQ','Bethchester','Bethchester','Canada','Africa/Casablanca'),('SIU','North Shane','North Shane','India','America/La_Paz'),('SKC','South Daveton','South Daveton','South Korea','America/Barbados'),('SLM','Lake Gabrielle','Lake Gabrielle','Italy','Pacific/Chatham'),('SMD','Port Joshuahaven','Port Joshuahaven','China','America/Caracas'),('SMO','Rebeccaview','Rebeccaview','United States','Asia/Kuching'),('SMS','Lake Stephanie','Lake Stephanie','Brazil','Europe/Prague'),('SRK','Tonyamouth','Tonyamouth','Mexico','Indian/Maldives'),('SSC','Lake Georgeshire','Lake Georgeshire','Australia','Asia/Nicosia'),('SUZ','South Franciscochester','South Franciscochester','Brazil','Africa/Malabo'),('SVM','Port Robinland','Port Robinland','Italy','Asia/Singapore'),('SVU','Valeriebury','Valeriebury','Australia','Africa/Djibouti'),('SWS','Marissashire','Marissashire','Brazil','Pacific/Palau'),('SXD','Julieland','Julieland','South Africa','Asia/Katmandu'),('SXS','Lake Jeffreyside','Lake Jeffreyside','Mexico','Pacific/Nauru'),('SZX','Bucktown','Bucktown','Japan','Australia/Brisbane'),('TAM','Wrightmouth','Wrightmouth','France','America/Jamaica'),('TFC','Briggsfort','Briggsfort','Australia','Africa/Lubumbashi'),('TFS','Tranfort','Tranfort','Canada','Asia/Muscat'),('TFT','Lake Ann','Lake Ann','France','Asia/Baghdad'),('TGS','South Seanstad','South Seanstad','Mexico','Europe/Andorra'),('THR','South Jeremyfurt','South Jeremyfurt','Italy','Asia/Seoul'),('TIQ','Georgeview','Georgeview','Australia','Asia/Dili'),('TIS','South Sean','South Sean','Germany','America/Santo_Domingo'),('TKB','Millerfort','Millerfort','India','Africa/Maseru'),('TNJ','Lake Dana','Lake Dana','Mexico','America/Lima'),('TNQ','South Johnton','South Johnton','United States','America/Santiago'),('TNZ','East Susanland','East Susanland','Canada','Europe/Helsinki'),('TPW','North Baileyland','North Baileyland','South Africa','Pacific/Palau'),('TRP','Alexandriatown','Alexandriatown','Mexico','Europe/Minsk'),('TSN','Christyburgh','Christyburgh','South Korea','America/Santo_Domingo'),('TTY','New Jonathan','New Jonathan','India','Europe/Riga'),('TUU','North Jeffrey','North Jeffrey','Japan','Asia/Kuala_Lumpur'),('TXG','South Rachaelfurt','South Rachaelfurt','Italy','Europe/Uzhgorod'),('TXW','Curtiston','Curtiston','Brazil','Europe/Paris'),('TYB','Port Courtney','Port Courtney','Germany','Australia/Adelaide'),('TZK','Taylorborough','Taylorborough','Australia','Africa/Dakar'),('UHK','Edwardmouth','Edwardmouth','Canada','Asia/Amman'),('UNO','Benitezland','Benitezland','Brazil','Europe/Minsk'),('UTK','Vazquezmouth','Vazquezmouth','Germany','Europe/Helsinki'),('UTP','Jonathanstad','Jonathanstad','India','Africa/Bangui'),('UUV','New Crystal','New Crystal','India','Asia/Brunei'),('UWV','North Timothyport','North Timothyport','Australia','Europe/Andorra'),('UWW','Lopezborough','Lopezborough','United Kingdom','Africa/Lusaka'),('UXI','Sarahhaven','Sarahhaven','Canada','Africa/Brazzaville'),('UXZ','Lake Jennifer','Lake Jennifer','South Korea','Asia/Taipei'),('UZI','Vaughnview','Vaughnview','Mexico','Asia/Bishkek'),('VAL','Bryantport','Bryantport','United States','Asia/Pyongyang'),('VCV','Lake Samantha','Lake Samantha','Japan','Europe/Stockholm'),('VEV','Chavezside','Chavezside','Australia','Asia/Tbilisi'),('VGC','East Luis','East Luis','South Africa','Africa/Blantyre'),('VHM','Lake Hollyport','Lake Hollyport','India','Africa/Brazzaville'),('VIV','Bushmouth','Bushmouth','France','Africa/Accra'),('VJM','New Sarah','New Sarah','Italy','Asia/Kashgar'),('VJW','West Christine','West Christine','France','America/Havana'),('VKL','Cindychester','Cindychester','Brazil','Asia/Dhaka'),('VRQ','Jenkinsfurt','Jenkinsfurt','Germany','Africa/Dar_es_Salaam'),('VRR','Adamsside','Adamsside','India','Africa/Douala'),('VUW','West George','West George','Germany','Asia/Karachi'),('VVY','Johnfort','Johnfort','United Kingdom','Asia/Amman'),('VWE','Stokesshire','Stokesshire','United Kingdom','Europe/Madrid'),('WBG','Justinchester','Justinchester','France','Asia/Karachi'),('WCD','East Justinton','East Justinton','United States','Africa/Maseru'),('WCF','East Danielle','East Danielle','South Korea','Europe/Tallinn'),('WDL','Medinaton','Medinaton','United Kingdom','Africa/Abidjan'),('WDY','Johnsonmouth','Johnsonmouth','South Africa','Asia/Qatar'),('WFH','Port Jasonland','Port Jasonland','India','Asia/Beirut'),('WFN','Grayshire','Grayshire','South Africa','Europe/Budapest'),('WKR','Port Donaldborough','Port Donaldborough','South Korea','Europe/Bratislava'),('WSQ','Port Douglasbury','Port Douglasbury','Italy','America/Guatemala'),('WXB','East Jennifer','East Jennifer','Mexico','Asia/Kabul'),('XBN','South Christopher','South Christopher','Canada','Asia/Bishkek'),('XCB','Mejiaside','Mejiaside','United States','Europe/Monaco'),('XCJ','Butlerland','Butlerland','Canada','Asia/Ashgabat'),('XET','Amyview','Amyview','United States','Asia/Hebron'),('XJU','Ericachester','Ericachester','Mexico','Africa/Banjul'),('XKN','Christopherberg','Christopherberg','France','Europe/Prague'),('XKT','Woodmouth','Woodmouth','Germany','Africa/Lusaka'),('XLY','North Timothytown','North Timothytown','France','Asia/Anadyr'),('XND','Herreraville','Herreraville','Mexico','Europe/Vilnius'),('XNG','Cooperland','Cooperland','South Korea','Europe/Warsaw'),('XNX','South Isabel','South Isabel','South Africa','Asia/Beirut'),('XQG','East Danielhaven','East Danielhaven','Brazil','Europe/Tallinn'),('XQR','New Amandastad','New Amandastad','Australia','Atlantic/Cape_Verde'),('XRV','Port Dianestad','Port Dianestad','South Africa','America/Guyana'),('XZX','Jacquelineside','Jacquelineside','India','America/Port_of_Spain'),('YEY','Port Melissa','Port Melissa','South Korea','Europe/Amsterdam'),('YFY','South Jeffview','South Jeffview','Germany','Africa/Kigali'),('YGD','Jasmineview','Jasmineview','South Africa','Africa/Tunis'),('YIS','West Scott','West Scott','United Kingdom','Africa/Niamey'),('YKQ','Patriciastad','Patriciastad','India','America/Paramaribo'),('YKV','Charlestown','Charlestown','Canada','Indian/Mauritius'),('YNK','East Heatherburgh','East Heatherburgh','China','Africa/Maputo'),('YPO','South Josephland','South Josephland','China','Europe/Luxembourg'),('YRF','North Mariamouth','North Mariamouth','United Kingdom','Pacific/Guadalcanal'),('YVL','South Melissachester','South Melissachester','South Korea','Africa/Douala'),('YWE','Hardyshire','Hardyshire','United States','Africa/Windhoek'),('YXX','North Charles','North Charles','Brazil','Asia/Dili'),('YYB','Sarahfort','Sarahfort','South Korea','Europe/Skopje'),('YZZ','Loriview','Loriview','Canada','America/Costa_Rica'),('ZDV','Port Zachary','Port Zachary','France','Europe/Brussels'),('ZGR','New Lisastad','New Lisastad','Italy','Africa/Lome'),('ZGU','North Kimberlyfurt','North Kimberlyfurt','Canada','Europe/Dublin'),('ZGW','South Timothy','South Timothy','China','America/Managua'),('ZHB','Port Rachael','Port Rachael','Brazil','America/Mazatlan'),('ZID','Brownland','Brownland','United States','Europe/Tallinn'),('ZOG','Staceytown','Staceytown','China','Asia/Muscat'),('ZRM','Gonzalezmouth','Gonzalezmouth','Germany','Indian/Maldives'),('ZRV','Dawnshire','Dawnshire','Mexico','Africa/Porto-Novo'),('ZSY','Port Mollyfurt','Port Mollyfurt','Mexico','Africa/Conakry'),('ZVH','Port Isaiah','Port Isaiah','India','Africa/Malabo'),('ZXD','West Robertstad','West Robertstad','United States','Pacific/Palau'),('ZYD','Reedville','Reedville','Canada','Europe/Bucharest'),('ZYF','Courtneyton','Courtneyton','Canada','Europe/Budapest');
/*!40000 ALTER TABLE `airport` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-01 19:40:44
