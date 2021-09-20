-- MySQL dump 10.13  Distrib 5.6.21, for Win32 (x86)
--
-- Host: localhost    Database: flyaway
-- ------------------------------------------------------
-- Server version	5.1.45-community

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `uname` varchar(40) DEFAULT NULL,
  `pass` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('admin@flyaway.com','admin1234');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `airlineslist`
--

DROP TABLE IF EXISTS `airlineslist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `airlineslist` (
  `FlightId` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) DEFAULT NULL,
  `Source` varchar(20) DEFAULT NULL,
  `Destination` varchar(20) DEFAULT NULL,
  `Day` varchar(10) DEFAULT NULL,
  `TicketPrice` int(10) DEFAULT NULL,
  PRIMARY KEY (`FlightId`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airlineslist`
--

LOCK TABLES `airlineslist` WRITE;
/*!40000 ALTER TABLE `airlineslist` DISABLE KEYS */;
INSERT INTO `airlineslist` VALUES (1,'AirIndia','Bangalore','Delhi','WEDNESDAY',4000),(2,'AirIndia','Bangalore','Mumbai','THURSDAY',3000),(3,'AirIndia','Bangalore','Hyderabad','FRIDAY',2000),(4,'AirIndia','Delhi','Bangalore','SATURDAY',4000),(5,'AirIndia','Delhi','Mumbai','SUNDAY',2000),(6,'AirIndia','Delhi','Hyderabad','MONDAY',3000),(7,'AirIndia','Delhi','Bangalore','TUESDAY',4000),(8,'AirIndia','Hyderabad','Delhi','WEDNESDAY',3500),(9,'AirIndia','Hyderabad','Mumbai','THURSDAY',2500),(10,'AirIndia','Hyderabad','Bangalore','FRIDAY',2000),(11,'AirIndia','Mumbai','Delhi','SUNDAY',2000),(12,'AirIndia','Mumbai','Hyderabad','SATURDAY',3000),(13,'AirIndia','Mumbai','Bangalore','SATURDAY',4000),(14,'Indigo','Bangalore','Hyderabad','MONDAY',3500),(15,'Indigo','Bangalore','Mumbai','SUNDAY',2500),(16,'Indigo','Bangalore','Delhi','TUESDAY',4500),(17,'Indigo','Delhi','Hyderabad','MONDAY',3500),(18,'Indigo','Delhi','Mumbai','SUNDAY',2500),(19,'Indigo','Delhi','Bangalore','TUESDAY',4500),(20,'Indigo','Hyderabad','Delhi','WEDNESDAY',3500),(21,'Indigo','Hyderabad','Mumbai','THURSDAY',2500),(22,'Indigo','Hyderabad','Bangalore','FRIDAY',2500),(23,'Indigo','Mumbai','Delhi','SUNDAY',2000),(24,'Indigo','Mumbai','Hyderabad','SATURDAY',3500),(25,'Indigo','Mumbai','Bangalore','SATURDAY',4500),(26,'AirAsia','Bangalore','Hyderabad','MONDAY',1500),(27,'AirAsia','Bangalore','Mumbai','SUNDAY',1800),(28,'AirAsia','Bangalore','Delhi','TUESDAY',4500),(29,'AirAsia','Delhi','Hyderabad','MONDAY',1500),(30,'AirAsia','Delhi','Mumbai','SUNDAY',1800),(31,'AirAsia','Delhi','Bangalore','TUESDAY',4500),(32,'AirAsia','Hyderabad','Delhi','WEDNESDAY',1500),(33,'AirAsia','Hyderabad','Mumbai','THURSDAY',1800),(34,'AirAsia','Hyderabad','Bangalore','FRIDAY',1800),(35,'AirAsia','Mumbai','Delhi','SUNDAY',2000),(36,'AirAsia','Mumbai','Hyderabad','SATURDAY',1500),(37,'AirAsia','Mumbai','Bangalore','SATURDAY',4500),(38,'AirAsia','Mumbai','Bangalore','Tuesday',1200),(39,'AirAsia','Bangalore','Delhi','Tuesday',1350),(40,'AirAsia','Bangalore','Mumbai','Tuesday',1587);
/*!40000 ALTER TABLE `airlineslist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookinglist`
--

DROP TABLE IF EXISTS `bookinglist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookinglist` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `passengerName` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `cardNumber` varchar(40) DEFAULT NULL,
  `Source` varchar(20) DEFAULT NULL,
  `Destination` varchar(20) DEFAULT NULL,
  `Day` varchar(20) DEFAULT NULL,
  `noOfPersons` int(10) DEFAULT NULL,
  `TotalPrice` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookinglist`
--

LOCK TABLES `bookinglist` WRITE;
/*!40000 ALTER TABLE `bookinglist` DISABLE KEYS */;
INSERT INTO `bookinglist` VALUES (2,'vijaysai','vijaysaiyekbote@gmail.com','0970494884','1234567899874','Bangalore','Delhi','2021-09-22 WEDNESDAY',2,8000),(3,'vikram','vikky@vikky.com','1234509878','158976425876','Bangalore','Delhi','2021-09-28 TUESDAY',5,6750),(4,'Sashank','sashi@sashi.com','3243541324','1234098734567465','Bangalore','Mumbai','2021-09-21 TUESDAY',3,4761),(5,'Ramesh','Ramesh@ram.com','8795487945','1234567898764325','Delhi','Hyderabad','2021-09-20 MONDAY',3,9000),(36,'Sashank','sashi@sashi.com','1234567892','1894789418671864','Bangalore','Hyderabad','2021-09-20 MONDAY',1,3500),(37,'vijaysai','vijaysa@vijay.com','12348764548','12345678945132','Bangalore','Delhi','2021-09-21 TUESDAY',1,4500),(38,'vijaysai','vijaysa@vijay.com','123456789932','1348646583411','Bangalore','Delhi','2021-09-21 TUESDAY',3,13500);
/*!40000 ALTER TABLE `bookinglist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `uname` varchar(40) DEFAULT NULL,
  `pass` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('vijaysai','1234'),('navin','1235'),('vijaysaiyekbote@gmail.com','1234'),('vijaysaiyekbote@gmail.com','1234'),('vijay@flyaway.com','1234'),('viren@flyaway.com','1236');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-20 11:54:59
