-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: project_2
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `password` varchar(60) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `address` varchar(60) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (25,'ndkmath1@gmail.com','$2a$10$d3ZPKO7.LNlD8HLNCZA6lesh0xf7QLSRoZeXGvfAE3rVD6M5jWdFC','Khanh Nguyen','0123 456 789','10 Hai Bà Trưng',NULL),(26,'admin@gmail.com','$2a$10$W8O2NL2LHoh3vyNQmMfaoOIGQaIL8itko3cL.yhuPvc.XKjiHRs7S','Admin','0978 098 098','100 Giải Phóng, Hai Bà Trưng',NULL),(27,'numbershot@yah00.us','$2a$10$o.fGklRAZCF23m77/2Lq2.UHie4i1AUhPQEYL3zJ.jrz58IFVejAe','Jill Byrd','3116679734','1311 Langan Square',NULL),(28,'jolsen@gma1l.biz','$2a$10$qQumEYrJnkhspZ57lnoJD.RyCjTfxIQ49boeajKWhJkeSGLjQwWLy','Marilyn Black','8391740784','916 Stiers Rd',NULL),(29,'jryan61@ma1lbox.co.uk','$2a$10$WkxPqVmVtxbcTXIFQnrpy.8vfAhP9nQRzgPE3xiyGmYAgJrZ.khFu','Jeffrey Suarez','3137494700','1159 Greengold Crescent',NULL),(30,'mgross7@gma1l.biz','$2a$10$WmYC9g6gKous6XZETwKc9OVAJGlb4a.9VS/UbWSM/V7nB1hEuRcHG','Stanley Beck','8640418745','421 Rosewood Ridge',NULL),(31,'ecardenas84@gma1l.biz','$2a$10$/VVgmsq5OwvLMVFAK3DGMOxRzEpnWLVnFBfCyTSOu2EfeTRVQQJ2m','Randi Velez','0710433701','1346 Hall Ln',NULL),(32,'bpowell@hotma1l.net','$2a$10$S4VFsn3UdvnvRr1jBGYM9OkbXjBKab47Vn1aBFDCqevZCnHPcrp4y','Antonio Swanson','3615188340','751 Dogwood Ln',NULL),(33,'bcollins@hotma1l.net','$2a$10$yPhBntjfczhqVoKscjqVFuc6md.8wzde4cD9UP.itEIktQ04iUXE2','Christy Stark','7547112609','1404 Western Way',NULL),(34,'whopull@somema1l.biz','$2a$10$SzEjpPT3sjcVxuJJGzBLb.SPukQD1esVdJZIeG0j38LRbo.1M4J.S','Savannah Potter','6597654837','1458 Hickam Rd',NULL),(35,'it\'snumbers@ma1l2u.us','$2a$10$anQjmXwZJXFInTzhdaoQzu4ZQNkLkcSjUKKhZUxsAQd.yczZFcVwa','Rocky Bender','0245027361','468 Fayette Parkway',NULL),(36,'hatit\'s@somema1l.com','$2a$10$gBtuD8m4jUPN5qmmfDAGies9LWdlZytEzKaNKHvnVagWwRSnXyOLq','Rachel Melton','7718172373','645 Palmer Ln',NULL),(37,'mkerr@hotma1l.net','$2a$10$3ilYbibzZlZPUsicEWMfEeiSmFzwewg6TmU/upguQU63V/SOAg9vG','Edward Kramer','3898757566','430 Spruce Boulevard',NULL),(38,'gwooten@b1zmail.com','$2a$10$NUOT8XqnttSXAnh0W2VWvurxmBROiZk6eb/Z60V3oBqLRxa4DD09.','Sherry Sullivan','4994528353','627 Christopher Path',NULL),(39,'boonhot@somema1l.co.uk','$2a$10$/r8TkPc9RP/UBpJkmR0GAuxZf5P9BE0m0cWbqrBzpbVyTnzzn0e4e','Larry Collins','1048447038','1496 Nugent Crescent',NULL),(40,'snelson@hotma1l.net','$2a$10$LolTRpYn6HZXIWkSZbwN4ehaBmsIBpwh9hRy07ZGyBairYeJ/En8i','Sherri Harding','6780768042','464 Yost Path',NULL),(41,'lostbuild@gma1l.co.uk','$2a$10$iv.w5F9GRqztBJqnZeKR1eHGXYmmIuTb6q3EpSSft/n.AFxr/qNy2','Austin Macias','3205764570','779 Shagbark Ave',NULL),(42,'jkelly@everyma1l.net','$2a$10$XZzp/Kgks7hWN3hm5034X.3zfhiPRsaQHTPZfkH7YyU/meIldOxcG','Hunter Sykes','9767637568','1058 Harmony Blvd',NULL),(43,'bfaulkner@ma1l2u.biz','$2a$10$9QGPi8Vw4VhmlEHg1JNOmeGG81T5kZ1mFZzxbA96Pctbj4y4F5CkC','Jane Moon','9648194472','604 Sugartree Lane',NULL),(44,'clambert@ma1lbox.us','$2a$10$BcgECGiwnecGDwYald7h1OHRBLzCgDGV9SBS7PQiM4ViEtK6OiAVC','Thelma Cline','9399890815','1480 Durban Lane',NULL),(45,'magnetic@gma1l.us','$2a$10$sPNA7yLTOGK8wFbYHLDPfutx4OmQzqa4kLZzNqBaLMr8eMDZD9e7W','Breanna Dudley','2679227708','1151 Eldwood Place',NULL),(46,'edited@ma1lbox.org','$2a$10$DvE9UwHDbIVEPgBidiHENu0MQPx6FjIsIy6Q.alWQvb7emdoUQYs6','Steve McPherson','8131001734','1479 Hazlett Parkway',NULL),(56,'neww@gmail.com','$2a$10$.9doiUkNaLQGBQpXgVxEsOP9mmyAfD7ggA4Ysqlw4ROqbqEkg.t3a','new','123456789','address',NULL);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill` (
  `bill_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_time` datetime NOT NULL,
  `route_id` int(11) NOT NULL,
  `station_id_first` int(11) DEFAULT NULL,
  `station_id_last` int(11) DEFAULT NULL,
  `customer_name` varchar(60) NOT NULL,
  `customer_phone` varchar(15) NOT NULL,
  `cus_start_point` varchar(45) NOT NULL,
  `cus_end_point` varchar(45) NOT NULL,
  `ticket` varchar(45) DEFAULT NULL,
  `car_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`bill_id`),
  KEY `bill_route_idx` (`route_id`),
  KEY `bill_station_first_idx` (`station_id_first`),
  KEY `bill_station_last_idx` (`station_id_last`),
  KEY `bill_driver_idx` (`driver_id`),
  KEY `bill_car_idx` (`car_id`),
  CONSTRAINT `FK546wdhm4uolavfribxp24h0lo` FOREIGN KEY (`route_id`) REFERENCES `route` (`route_id`),
  CONSTRAINT `FK6rvot2hjl5jy14rxq2xca21au` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`),
  CONSTRAINT `FKha5w686kmpqqxokvui6kwjp6u` FOREIGN KEY (`station_id_first`) REFERENCES `station` (`station_id`),
  CONSTRAINT `FKjwsmshekrpi6e3t1aba25r44m` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`),
  CONSTRAINT `FKkv4dp6v7p4ge2nsnpmwdko1tt` FOREIGN KEY (`station_id_last`) REFERENCES `station` (`station_id`),
  CONSTRAINT `bill_car` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `bill_driver` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `bill_route` FOREIGN KEY (`route_id`) REFERENCES `route` (`route_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `bill_station_first` FOREIGN KEY (`station_id_first`) REFERENCES `station` (`station_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `bill_station_last` FOREIGN KEY (`station_id_last`) REFERENCES `station` (`station_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car` (
  `car_id` int(11) NOT NULL AUTO_INCREMENT,
  `car_type` varchar(45) DEFAULT NULL,
  `num_seat_type_1` int(11) DEFAULT NULL,
  `num_seat_type_2` int(11) DEFAULT NULL,
  `license_plate` varchar(45) NOT NULL,
  `driver_id` int(11) NOT NULL,
  PRIMARY KEY (`car_id`),
  KEY `car_driver_idx` (`driver_id`),
  CONSTRAINT `FKt075681k23ii3uvdxjvvmmpm` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`),
  CONSTRAINT `car_driver` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES (1,'Limousine 9 seat',5,3,'29A - 1234',1),(2,'Limousine 9 seat',5,3,'29A - 0938',2),(3,'Limousine 9 seat',5,3,'29A - 3487',3),(4,'Limousine 9 seat',5,3,'29A - 1213',4),(5,'Limousine 9 seat',5,3,'29A - 9898',5),(6,'Limousine 9 seat',5,3,'29A - 2222',6),(7,'Limousine 9 seat',5,3,'29A - 3333',7);
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `driver` (
  `driver_id` int(11) NOT NULL AUTO_INCREMENT,
  `driver_name` varchar(45) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`driver_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (1,'Nguyễn Tuấn Anh','0912 122 456'),(2,'Đỗ Duy Mạnh','01675 909 312'),(3,'Phạm Đức Huy','0963 123 456'),(4,'Nguyễn Văn Quyết','0979 111 222'),(5,'Vũ Minh Tuấn','0123 456 789'),(6,'Phạm Văn Tiến','0976 111 222'),(7,'Lê Văn Tuấn Anh','0967 122 929'),(8,'Lê Anh Phương','0983 903 399'),(9,'Trần Văn Quyết','0915 349 098'),(10,'Nguyễn Sỹ Thành Công','01674 111 222');
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `route` (
  `route_id` int(11) NOT NULL AUTO_INCREMENT,
  `origin` varchar(45) NOT NULL,
  `destination` varchar(45) NOT NULL,
  `cost_seat_type_1` int(11) DEFAULT NULL,
  `cost_seat_type_2` int(11) DEFAULT NULL,
  `minute` int(11) DEFAULT NULL,
  PRIMARY KEY (`route_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` VALUES (1,'Hà Nội','Thanh Hóa',180,150,NULL),(2,'Hà Nội','Ninh Bình',150,130,NULL),(3,'Hà Nội','Hải Phòng',200,170,NULL),(4,'Hà Nội','Nam Định',150,130,NULL),(5,'Hà Nội','Tuyên Quang',300,260,NULL);
/*!40000 ALTER TABLE `route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_control`
--

DROP TABLE IF EXISTS `schedule_control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule_control` (
  `schedule_id` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `route_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  PRIMARY KEY (`schedule_id`),
  KEY `sc_car_idx` (`car_id`),
  KEY `sc_driver_idx` (`driver_id`),
  KEY `sc_route_idx` (`route_id`),
  CONSTRAINT `FK7rv93572u8h6eu83chdaaljnu` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`),
  CONSTRAINT `FKn2hamn0c6mo1pegjbl8048w3c` FOREIGN KEY (`route_id`) REFERENCES `route` (`route_id`),
  CONSTRAINT `FKse5ayruagltfbbs28py2rv9oa` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`),
  CONSTRAINT `sc_car` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `sc_driver` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `sc_route` FOREIGN KEY (`route_id`) REFERENCES `route` (`route_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_control`
--

LOCK TABLES `schedule_control` WRITE;
/*!40000 ALTER TABLE `schedule_control` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule_control` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `station`
--

DROP TABLE IF EXISTS `station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `station` (
  `station_id` int(11) NOT NULL AUTO_INCREMENT,
  `station_name` varchar(45) NOT NULL,
  `route_id` int(11) DEFAULT NULL,
  `order` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`station_id`),
  KEY `station_route_idx` (`route_id`),
  CONSTRAINT `FK9y8el64ewnhgt8x9hflaxuppc` FOREIGN KEY (`route_id`) REFERENCES `route` (`route_id`),
  CONSTRAINT `station_route` FOREIGN KEY (`route_id`) REFERENCES `route` (`route_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station`
--

LOCK TABLES `station` WRITE;
/*!40000 ALTER TABLE `station` DISABLE KEYS */;
INSERT INTO `station` VALUES (1,'Công viên Thống Nhất',2,1),(2,'Ngã tư Văn Cao – Thuỵ Khuê',2,1),(3,'Ga Hà Nội (Nằm trên phố Lê Duẩn)',2,1),(4,'Cầu Non Nước - TP. Ninh Bình',2,2),(5,'Trường THPT chuyên Lương Văn Tụy - Ninh Bình',2,2);
/*!40000 ALTER TABLE `station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stop_point`
--

DROP TABLE IF EXISTS `stop_point`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stop_point` (
  `stop_point_id` int(11) NOT NULL AUTO_INCREMENT,
  `route_id` int(11) NOT NULL,
  `numerical_order` int(11) NOT NULL,
  `stop_point_name` varchar(45) NOT NULL,
  `minute_to` int(11) DEFAULT NULL,
  `distance` int(11) DEFAULT NULL,
  PRIMARY KEY (`stop_point_id`),
  KEY `stop_point_route_idx` (`route_id`),
  CONSTRAINT `FKjv73m6ac8h4h2h6o61tft7pjr` FOREIGN KEY (`route_id`) REFERENCES `route` (`route_id`),
  CONSTRAINT `stop_point_route` FOREIGN KEY (`route_id`) REFERENCES `route` (`route_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stop_point`
--

LOCK TABLES `stop_point` WRITE;
/*!40000 ALTER TABLE `stop_point` DISABLE KEYS */;
INSERT INTO `stop_point` VALUES (1,2,1,'Giải Phóng',20,20),(2,2,2,'Bến Xe Giáp Bát',30,10),(3,2,3,'Bến Xe Nước Ngầm',40,50),(4,2,4,'Cao tốc Pháp Vân',60,70);
/*!40000 ALTER TABLE `stop_point` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `week_schedule`
--

DROP TABLE IF EXISTS `week_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `week_schedule` (
  `week_schedule_id` int(11) NOT NULL AUTO_INCREMENT,
  `weekday` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `car_id` int(11) NOT NULL,
  PRIMARY KEY (`week_schedule_id`),
  KEY `ws_car_idx` (`car_id`),
  KEY `ws_route_idx` (`route_id`),
  CONSTRAINT `FK2f47bamosbt621mmmed6i6mml` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`),
  CONSTRAINT `FKn6oxk7el3jbrfpdhwwvme1uis` FOREIGN KEY (`route_id`) REFERENCES `route` (`route_id`),
  CONSTRAINT `ws_car` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ws_route` FOREIGN KEY (`route_id`) REFERENCES `route` (`route_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `week_schedule`
--

LOCK TABLES `week_schedule` WRITE;
/*!40000 ALTER TABLE `week_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `week_schedule` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-01 23:20:51
