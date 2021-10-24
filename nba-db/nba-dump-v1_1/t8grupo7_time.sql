-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: 3.144.153.204    Database: t8grupo7
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `time`
--

DROP TABLE IF EXISTS `time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time` (
  `id_time` varchar(10) NOT NULL,
  `ano_fundacao` year DEFAULT NULL,
  `abreviacao` varchar(3) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `arena` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time`
--

LOCK TABLES `time` WRITE;
/*!40000 ALTER TABLE `time` DISABLE KEYS */;
INSERT INTO `time` VALUES ('1610612737',1949,'ATL','Atlanta','Hawks','State Farm Arena'),('1610612738',1946,'BOS','Boston','Celtics','TD Garden'),('1610612739',1970,'CLE','Cleveland','Cavaliers','Quicken Loans Arena'),('1610612740',2002,'NOP','New Orleans','Pelicans','Smoothie King Center'),('1610612741',1966,'CHI','Chicago','Bulls','United Center'),('1610612742',1980,'DAL','Dallas','Mavericks','American Airlines Center'),('1610612743',1976,'DEN','Denver','Nuggets','Pepsi Center'),('1610612744',1946,'GSW','Golden State','Warriors','Chase Center'),('1610612745',1967,'HOU','Houston','Rockets','Toyota Center'),('1610612746',1970,'LAC','Los Angeles','Clippers','Staples Center'),('1610612747',1948,'LAL','Los Angeles','Lakers','Staples Center'),('1610612748',1988,'MIA','Miami','Heat','AmericanAirlines Arena'),('1610612749',1968,'MIL','Milwaukee','Bucks','Fiserv Forum'),('1610612750',1989,'MIN','Minnesota','Timberwolves','Target Center'),('1610612751',1976,'BKN','Brooklyn','Nets','Barclays Center'),('1610612752',1946,'NYK','New York','Knicks','Madison Square Garden'),('1610612753',1989,'ORL','Orlando','Magic','Amway Center'),('1610612754',1976,'IND','Indiana','Pacers','Bankers Life Fieldhouse'),('1610612755',1949,'PHI','Philadelphia','76ers','Wells Fargo Center'),('1610612756',1968,'PHX','Phoenix','Suns','Talking Stick Resort Arena'),('1610612757',1970,'POR','Portland','Trail Blazers','Moda Center'),('1610612758',1948,'SAC','Sacramento','Kings','Golden 1 Center'),('1610612759',1976,'SAS','San Antonio','Spurs','AT&T Center'),('1610612760',1967,'OKC','Oklahoma City','Thunder','Chesapeake Energy Arena'),('1610612761',1995,'TOR','Toronto','Raptors','Scotiabank Arena'),('1610612762',1974,'UTA','Utah','Jazz','Vivint Smart Home Arena'),('1610612763',1995,'MEM','Memphis','Grizzlies','FedExForum'),('1610612764',1961,'WAS','Washington','Wizards','Capital One Arena'),('1610612765',1948,'DET','Detroit','Pistons','Little Caesars Arena'),('1610612766',1988,'CHA','Charlotte','Hornets','Spectrum Center');
/*!40000 ALTER TABLE `time` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-24 10:44:19
