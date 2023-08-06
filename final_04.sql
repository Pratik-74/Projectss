-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: employeedb
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `assigntask`
--

DROP TABLE IF EXISTS `assigntask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assigntask` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Reg_ID` int DEFAULT NULL,
  `Title` varchar(45) DEFAULT NULL,
  `Description` longtext,
  `Comments` longtext,
  `status` int DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assigntask`
--

LOCK TABLES `assigntask` WRITE;
/*!40000 ALTER TABLE `assigntask` DISABLE KEYS */;
INSERT INTO `assigntask` VALUES (1,2,'Designing','web page.................................................','Nahi aata',1),(2,4,'Design Dashboard Page','Design the page according to the requirement given by the client',NULL,0);
/*!40000 ALTER TABLE `assigntask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `SlNo.` int NOT NULL AUTO_INCREMENT,
  `Reg_ID` int DEFAULT NULL,
  `CheckIn` datetime NOT NULL,
  `CheckOut` datetime DEFAULT NULL,
  `ToNodays` int DEFAULT NULL,
  `Reason` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`SlNo.`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,2,'2022-07-25 16:58:18',NULL,1,'Too late to join'),(2,2,'2022-07-25 17:53:53',NULL,1,'na'),(3,4,'2022-07-26 14:29:51','2022-07-26 18:29:05',1,'On Duty'),(4,4,'2022-07-25 09:29:51','2022-07-25 18:29:51',1,'On Duty'),(5,4,'2022-07-22 09:29:51','2022-07-22 18:29:51',1,'On Duty'),(6,4,'2022-07-21 09:29:51','2022-07-21 18:29:51',1,'On Duty'),(7,4,'2022-07-20 09:29:51','2022-07-20 18:29:51',1,'On Duty'),(8,4,'2022-07-19 09:29:51','2022-07-19 00:00:00',1,'On Duty'),(9,4,'2022-07-18 09:29:51','2022-07-18 18:29:51',1,'On Duty');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeedetails`
--

DROP TABLE IF EXISTS `employeedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employeedetails` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `RegistrationNumber` varchar(50) NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  `CorrespondenceAddress` varchar(200) DEFAULT NULL,
  `PermanetAddress` varchar(200) DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  `MobileNumber` varchar(10) NOT NULL,
  `DOB` date NOT NULL,
  `MaritalStatus` varchar(45) DEFAULT NULL,
  `PanCard` varchar(45) DEFAULT NULL,
  `BloodGroup` varchar(45) NOT NULL,
  `EmergencyContactNumber` varchar(10) DEFAULT NULL,
  `EducationalDetails` longtext,
  `EmploymentDetails` longtext,
  `IsActive` tinyint(1) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT NULL,
  `Status` int DEFAULT '0',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `RegistrationNumber_UNIQUE` (`RegistrationNumber`),
  UNIQUE KEY `PanCard_UNIQUE` (`PanCard`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeedetails`
--

LOCK TABLES `employeedetails` WRITE;
/*!40000 ALTER TABLE `employeedetails` DISABLE KEYS */;
INSERT INTO `employeedetails` VALUES (1,'1','Pratik ','Sinha','Male','E404 street Nowhere City Near Lkd','XYZ apartment near CBA , YI city','sinha@gmail.com','8029438420','1998-10-14','Single','vdfy6457kj','AB+ve','9892849289','<EducationDetails><CourseTitle name=\"10th\"><Specialization>General</Specialization><Board>CBSE</Board><Institute>SJIT </Institute><CourseType>FullTime</CourseType><Percentage>67</Percentage></CourseTitle><CourseTitle name=\"12th\"><Specialization>PCMB</Specialization><Board>CBSE</Board><Institute>RV PUC College</Institute><CourseType>FullTime</CourseType><Percentage>68</Percentage></CourseTitle><CourseTitle name=\"Degree\"><Specialization>BSc Stats</Specialization><Board>BU</Board><Institute>RCC College</Institute><CourseType>FullTime</CourseType><Percentage>69</Percentage></CourseTitle><CourseTitle name=\"PG\"><Specialization>MSc Computational Maths</Specialization><Board>BTU</Board><Institute>JUY College</Institute><CourseType>FullTime</CourseType><Percentage>70</Percentage></CourseTitle><CourseTitle name=\"Others\"><Specialization></Specialization><Board></Board><Institute></Institute><CourseType></CourseType><Percentage></Percentage></CourseTitle></EducationDetails>','<EmploymentDetails><Employer><EmployerName>JCC</EmployerName><PositionHeld>Junior Developer</PositionHeld><GrossSalary>300000</GrossSalary><FromDate>09-07-2021 00:00:00</FromDate><ToDate>13-03-2022 00:00:00</ToDate><ReasonForLeaving>Career Growth</ReasonForLeaving></Employer></EmploymentDetails>',1,'2022-07-25 11:22:02',4),(2,'2','Mohammed','Sahil Khan','Male','Bangalore','Bangalore','mohammedsahilkhan.1110@gmail.com','7795958013','2000-01-11','Single','123456789','A+ve','100','<EducationDetails><CourseTitle name=\"10th\"><Specialization>General</Specialization><Board>Karnataka State Board</Board><Institute>Colonel Hill English School</Institute><CourseType>FullTime</CourseType><Percentage>78</Percentage></CourseTitle><CourseTitle name=\"12th\"><Specialization>CEBA</Specialization><Board>Karnataka Secondary Education</Board><Institute>St.Germains PU College</Institute><CourseType>FullTime</CourseType><Percentage>93</Percentage></CourseTitle><CourseTitle name=\"Degree\"><Specialization>BCA Computer Application</Specialization><Board>Bangalore University</Board><Institute>Presidency College</Institute><CourseType>FullTime</CourseType><Percentage>80</Percentage></CourseTitle><CourseTitle name=\"PG\"><Specialization>MCA Computer Application</Specialization><Board>Bangalore University</Board><Institute>Presidency College</Institute><CourseType>FullTime</CourseType><Percentage>82</Percentage></CourseTitle><CourseTitle name=\"Others\"><Specialization></Specialization><Board></Board><Institute></Institute><CourseType></CourseType><Percentage></Percentage></CourseTitle></EducationDetails>','<EmploymentDetails><Employer><EmployerName>JCC</EmployerName><PositionHeld>SWE</PositionHeld><GrossSalary>200000</GrossSalary><FromDate>25-06-2020 00:00:00</FromDate><ToDate>31-12-2021 00:00:00</ToDate><ReasonForLeaving>Less money</ReasonForLeaving></Employer></EmploymentDetails>',1,'2022-07-25 16:06:58',4),(3,'4','Harry','Singh','Male','Ahalya Apartment No 23 Mattikere MSR Nagara 560054 Bangalore Karnataka','House No 28 Near Engineering College of Hassan, Hassan Karnataka','harshagowda065@gmail.com','9839283292','2022-04-04','Single','DILPS5649K','AB+ve','9898294729','<EducationDetails><CourseTitle name=\"10th\"><Specialization>General</Specialization><Board>Karnataka State Board</Board><Institute>Colonel Hill English School</Institute><CourseType>FullTime</CourseType><Percentage>78</Percentage></CourseTitle><CourseTitle name=\"12th\"><Specialization>PCMB</Specialization><Board>Karnataka Secondary Education</Board><Institute>St.Germains PU College</Institute><CourseType>FullTime</CourseType><Percentage>93</Percentage></CourseTitle><CourseTitle name=\"Degree\"><Specialization>BCA Computer Application</Specialization><Board>Bangalore University</Board><Institute>Presidency College</Institute><CourseType>FullTime</CourseType><Percentage>80</Percentage></CourseTitle><CourseTitle name=\"PG\"><Specialization>MCA Computer Application</Specialization><Board>Bangalore University</Board><Institute>Presidency College</Institute><CourseType>FullTime</CourseType><Percentage>82</Percentage></CourseTitle><CourseTitle name=\"Others\"><Specialization></Specialization><Board></Board><Institute></Institute><CourseType></CourseType><Percentage></Percentage></CourseTitle></EducationDetails>','<EmploymentDetails><Employer><EmployerName>JCC</EmployerName><PositionHeld>Junior Developer</PositionHeld><GrossSalary>300000</GrossSalary><FromDate>01-06-2021 00:00:00</FromDate><ToDate>26-03-2022 00:00:00</ToDate><ReasonForLeaving>Career Growth</ReasonForLeaving></Employer></EmploymentDetails>',1,'2022-07-26 11:24:28',4);
/*!40000 ALTER TABLE `employeedetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leaverequest`
--

DROP TABLE IF EXISTS `leaverequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leaverequest` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `RegNo` int NOT NULL,
  `TotalNumDays` int DEFAULT NULL,
  `Type` varchar(45) DEFAULT NULL,
  `Reason` varchar(200) DEFAULT NULL,
  `From_Date` date DEFAULT NULL,
  `Todate` date DEFAULT NULL,
  `Approved_status` int DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leaverequest`
--

LOCK TABLES `leaverequest` WRITE;
/*!40000 ALTER TABLE `leaverequest` DISABLE KEYS */;
INSERT INTO `leaverequest` VALUES (1,4,1,'SickLeave','Fever','2022-07-27','2022-07-27',1);
/*!40000 ALTER TABLE `leaverequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leavetype`
--

DROP TABLE IF EXISTS `leavetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leavetype` (
  `Reg_Id` int NOT NULL,
  `SickLeave` int NOT NULL,
  `EarnedLeave` int DEFAULT NULL,
  `LossofPay` int DEFAULT NULL,
  PRIMARY KEY (`Reg_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leavetype`
--

LOCK TABLES `leavetype` WRITE;
/*!40000 ALTER TABLE `leavetype` DISABLE KEYS */;
INSERT INTO `leavetype` VALUES (1,14,16,0),(2,14,16,0),(4,13,16,0),(5,14,16,0);
/*!40000 ALTER TABLE `leavetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `EmployeeId` int NOT NULL AUTO_INCREMENT,
  `UserName` varchar(60) DEFAULT NULL,
  `E_PassWord` varchar(20) DEFAULT NULL,
  `LastLoginDate` datetime DEFAULT NULL,
  `status` int DEFAULT '0',
  `DOJ` date NOT NULL,
  `Designation` varchar(45) DEFAULT NULL,
  `Department` varchar(45) DEFAULT NULL,
  `EmployeeType` varchar(45) DEFAULT NULL,
  `Branch` varchar(45) DEFAULT NULL,
  `Reporting_Manager` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`EmployeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'kpratik599@gmail.com','Rested','2022-07-25 11:16:28',2,'2022-04-04','Junior Software Developer','ESS','Full Time','Bangalore','Joseph'),(2,'mohammedsahilkhan.1110@gmail.com','Sahil11','2022-07-25 16:05:29',2,'2020-01-11','Junior Software Developer','ESS','Full Time','Bangalore','Praful '),(3,'ravi@gmail.com','ravi11','2012-07-25 16:05:29',4,'2012-01-11','HR','','FullTime','Bangalore',NULL),(4,'harshagowda065@gmail.com','harry2','2022-07-26 11:10:21',2,'2022-04-04','Junior Software Developer','ESS','Full Time','Bangalore','Joseph'),(5,'harshagowda065@gmail.com','107N9F7',NULL,0,'2022-04-04','Junior Software Developer','ESS','Full Time','Bangalore','Joseph');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `RegId` varchar(45) NOT NULL,
  `Salary` int DEFAULT NULL,
  `BankName` varchar(45) DEFAULT NULL,
  `BankAcNo` int DEFAULT NULL,
  `status` int DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary`
--

LOCK TABLES `salary` WRITE;
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
INSERT INTO `salary` VALUES (1,'1',400000,NULL,NULL,0),(2,'2',500000,NULL,NULL,0),(3,'4',500000,'BOB',298398234,1),(4,'5',500000,NULL,NULL,0);
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'employeedb'
--
/*!50003 DROP PROCEDURE IF EXISTS `ApproveLeave` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ApproveLeave`(
P_Rid int,
P_From Date,
P_To Date
)
BEGIN
update leaverequest set Approved_status = 1 where RegNo = P_Rid and From_Date = P_From and Todate = P_To;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AssignTask` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AssignTask`(
P_RID int,
P_Title varchar(95),
P_Description longtext
)
BEGIN
insert into assigntask (`Reg_ID`,`Title`,`Description`) values (P_RID,P_Title,P_Description);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DisplayWorkdays` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DisplayWorkdays`()
BEGIN
declare startdate date;
declare enddate date;
set startdate =DATE_SUB(LAST_DAY(DATE_ADD(NOW(), INTERVAL -0 MONTH)),INTERVAL DAY(LAST_DAY(DATE_ADD(NOW(), INTERVAL -0 MONTH)))-1 DAY);
set enddate = LAST_DAY(DATE_ADD(NOW(), INTERVAL -0 MONTH)) ;
select a.Reg_ID,e.FirstName,e.LastName, 5 * (DATEDIFF(enddate,startdate) DIV 7) + MID('0123444401233334012222340111123400001234000123440', 7 * WEEKDAY(startdate) + WEEKDAY(enddate) + 1, 1) as numdays,count(*) as days from attendance a JOIN employeedetails AS e ON e.RegistrationNumber = a.Reg_ID where a.CheckIn>=startdate and a.CheckOut<=enddate group by e.RegistrationNumber  ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllLeaveReport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllLeaveReport`()
BEGIN
select * from leaverequest;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllTasks` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllTasks`(
P_RID int
)
BEGIN
select * from assigntask where Reg_ID = P_RID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAttendanceDetail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAttendanceDetail`(
P_RId int
)
BEGIN
select * from attendance where Reg_ID = P_RId order by CheckIn DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetCheckInDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetCheckInDetails`(
P_RID int
)
BEGIN
select CheckIn,CheckOut from attendance where Reg_ID = P_RID and date(CheckIn) = date(now());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetDetails`(
P_Id int
)
BEGIN
select FirstName,LastName,Gender,CorrespondenceAddress,PermanetAddress,Email,MobileNumber,DOB,MaritalStatus,PanCard,BloodGroup,EmergencyContactNumber,EducationalDetails,EmploymentDetails from employeedetails where RegistrationNumber = P_Id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetDetailsForPayslip` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetDetailsForPayslip`(
P_Rid int
)
BEGIN
select e.FirstName,e.LastName,l.Designation,l.Department,l.EmployeeType,s.Salary,s.BankName,s.BankAcNo from login l JOIN employeedetails AS e ON e.RegistrationNumber = l.EmployeeId JOIN salary AS s ON s.RegId = l.EmployeeId where l.EmployeeId =P_Rid group by l.EmployeeId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetEduDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetEduDetails`(
P_ID int
)
BEGIN
select EducationalDetails from employeedetails where P_ID = Id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetEmpDetailFromHR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetEmpDetailFromHR`(
P_RID int
)
BEGIN
select DOJ,Designation,Department,EmployeeType,Branch,Reporting_Manager from login where EmployeeId = P_RID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetEmployeeDetailForManager` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetEmployeeDetailForManager`(
P_DeptName varchar(50)
)
BEGIN
select l.EmployeeId,e.FirstName,e.LastName,l.Department,l.Designation,l.Branch from employeedetails as e JOIN login AS l ON e.RegistrationNumber = l.EmployeeId where l.Department=P_DeptName group by l.EmployeeId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetLeaveDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetLeaveDetails`(
P_RID int
)
BEGIN
select * from leaverequest  where RegNo= P_RID order by From_Date DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetLeaveTypeDetail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetLeaveTypeDetail`(
P_RID int
)
BEGIN
select * from leavetype where Reg_Id = P_RID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetLoginDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetLoginDetails`(
P_UserName varchar(20),
P_Password varchar(20)
)
Begin
declare Failedcount int;
declare flag bool;
set Failedcount = (select LoginFailedCount from login where UserName = P_UserName);
if exists(select * from login where P_UserName = UserName) then
	if exists(select * from login where P_UserName = UserName && P_Password = E_PassWord) then
		select "Success" as userexists;
    else 
    Update login set  LoginFailedCount = Failedcount+1  WHERE UserName = P_UserName; 
	Update login set LastLoginDate=GETDATE()  WHERE UserName = P_UserName;
    if Failedcount>5 then
	select "Attempt exceeded" as userExists;
    end if;
    end if;
 else 
 select "user not exists" as userExists;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetPayslipStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetPayslipStatus`(
P_Rid int
)
BEGIN
select status from salary where RegId = P_Rid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetPersonnelDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetPersonnelDetails`(
P_Id int
)
BEGIN
select FirstName,LastName,CorrespondenceAddress,PermanetAddress,Email,MobileNumber,DOB,MaritalStatus,PanCard,BloodGroup,EmergencyContactNumber from employeedetails where Id = P_Id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetStatusId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetStatusId`(
P_RegisterId int
)
BEGIN
select Status from employeedetails where RegistrationNumber = P_RegisterId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertEmployeeDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertEmployeeDetails`(
P_RegNumber varchar(2),
P_First_Name varchar(45),
P_Last_Name varchar(45),
P_Gender varchar(45),
P_Coresspondence_Address varchar(250),
P_Permanent_Address varchar (250),
P_Email varchar(70),
P_Mobile_No varchar(10),
P_DateOfBirth date,
P_Marital_Status varchar(20),
P_PAN_Card varchar(20),
P_Blood_Group varchar(10),                                                                                                  																																																						
P_Emerg_C_No varchar(10),
P_EducationalDetails longtext,
P_EmploymentDetails longtext,
P_IsActive tinyint(1)
)
BEGIN
insert into employeedetails (`RegistrationNumber`, `FirstName`, `LastName`,`Gender`, `CorrespondenceAddress`, `PermanetAddress`, `Email`, `MobileNumber`, `DOB`, `MaritalStatus`,`PanCard`, `BloodGroup`, `EmergencyContactNumber`, `EducationalDetails`, `EmploymentDetails`,`IsActive`, `CreatedOn`,`status`)  values (
P_RegNumber,
P_First_Name,
P_Last_Name,
P_Gender,
P_Coresspondence_Address,
P_Permanent_Address ,
P_Email,
P_Mobile_No,
P_DateOfBirth ,
P_Marital_Status ,
P_PAN_Card,
P_Blood_Group ,                                                                                                  																																																						
P_Emerg_C_No ,
P_EducationalDetails ,
P_EmploymentDetails,
P_IsActive,
now(),
2);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertEmpregister` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertEmpregister`(
P_Ename varchar(60),
P_Email varchar(60),
P_DateOfBirth date,
P_ContactNumber varchar(60),
P_Gender varchar(6),
P_Password varchar(20)
)
BEGIN
declare v_count int;
select count(*) into v_count  from e_register where Email= P_Email;
if(v_count=0) then
insert into e_register (`Ename`,`Email`,`DateOfBirth`,`ContactNumber`,`Gender`,`Password`) values (P_Ename,P_Email,P_DateOfBirth,P_ContactNumber,P_Gender,P_Password);  
else
select Email from e_register where Email=P_Email;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertLeaveRequest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertLeaveRequest`(
P_RID int,
P_TotalNumDays int,
P_Type varchar(45),
P_Reason varchar(200),
P_From_Date Date,
P_ToDate date
)
BEGIN
declare lcount int;
insert into leaverequest (`RegNo`,`TotalNumDays`,`Type`,`Reason`,`From_Date`,`Todate`)
values( P_RID,P_TotalNumDays,P_Type,P_Reason,P_From_Date,P_ToDate);
if(P_Type = 'EarnedLeave') then
select EarnedLeave into lcount from leavetype where P_RID  = Reg_Id;
update leavetype set EarnedLeave = (lcount-P_TotalNumDays) where P_RID = Reg_Id;
elseif(P_Type = 'SickLeave') then
select SickLeave into lcount from leavetype where P_RID  = Reg_Id;
update leavetype set SickLeave = (lcount-P_TotalNumDays) where P_RID = Reg_Id;
else 
select LossofPay into lcount from leavetype where P_RID  = Reg_Id;
update leavetype set SickLeave = (lcount+P_TotalNumDays) where P_RID = Reg_Id;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertUpdateSalary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertUpdateSalary`(
P_userName varchar(45),
P_password varchar(45),
P_salary varchar(45)
)
BEGIN
declare RegId int;
select EmployeeId into RegId from login where UserName = P_userName and E_PassWord = P_password;
insert into salary (`RegId`,`Salary`) values (RegId,P_Salary);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InserUpdatepersonaldetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InserUpdatepersonaldetails`(
P_First_Name varchar(45),
P_Last_Name varchar(45),
P_Father_Name Varchar(45),
P_Coresspondence_Address varchar(250),
P_Permanent_Address varchar (250),
P_Telephone_No int(11),
P_Mobile_No int(11),
P_Email varchar(70),
P_DateOfBirth date,
P_Marital_Status varchar(20),
P_PAN_Card varchar(20),
P_Blood_Group varchar(10),
P_Emerg_C_Name varchar(60),                                                                                                     																																																						
P_Emerg_C_No int(10),
P_Emerg_C_Rel varchar(20))
BEGIN
insert into personal_details (`First_Name`,`Last_Name`,`Father's_Name`,`Correspondence_Address`,`Permanent_Address`,`Telephone_No`,`Mobile_No`,`Email`,`DateOfBirth`,`Marital_Status`,`PAN_Card`,`Blood_Group`,`Emerg_C_Name`,`Emerg_C_No`,`Emerg_C_Rel`) values (P_First_Name,P_Last_Name,P_Father_Name,P_Coresspondence_Address,P_Permanent_Address,P_Telephone_No,P_Mobile_No,P_Email,(str_to_date(`P_DateOfBirth`,`dd-mm-yyyy`)),P_Marital_Status,P_PAN_Card,P_Blood_Group,P_Emerg_C_Name,P_Emerg_C_No,P_Emerg_C_Rel);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `MarkAttendance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `MarkAttendance`(
PReg_Id int,
PReason varchar(200),
PTotalNodays int
)
begin
declare currentdate datetime;
if(select exists (select * from attendance where hour(now()) >18) )
then
update attendance set Checkout = now() where date(CheckIn) = date(now()) and Reg_ID =  PReg_Id;
else
insert into attendance (Reg_ID,CheckIn,ToNoDays,Reason) values (PReg_Id,now(),PTotalNodays,PReason);
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tempGenHr` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `tempGenHr`(
P_userName varchar(50),
P_password varchar(7),
P_DOJ date,
P_Designation varchar(45),
P_Department varchar(45),
P_EmployeeType varchar(45),
P_Salary int,
P_Branch varchar(45),
P_Reporting_Manager varchar(45)
)
BEGIN
declare RegId int;
insert into login (`UserName`,`E_Password`,`DOJ`,`Designation`,`Department`,`EmployeeType`,`Branch`,`Reporting_Manager`) values (P_userName,P_password,P_DOJ,P_Designation,P_Department,P_EmployeeType,P_Branch,P_Reporting_Manager);
select EmployeeId into RegId from login where UserName = P_userName and E_PassWord = P_password;
insert into salary (`RegId`,`Salary`) values (RegId,P_Salary);
insert into leavetype (`Reg_Id`,`SickLeave`,`EarnedLeave`,`LossofPay`) values (RegId,14,16,0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateEducationDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateEducationDetails`(
P_Id int,
P_edudata longtext
)
BEGIN
declare t_status int;
select status into t_status from employeedetails where RegistrationNumber=P_Id;
if t_status = 2 then
update employeedetails set EducationalDetails=P_edudata,status=3 where RegistrationNumber=P_Id;
else
update employeedetails set EducationalDetails=P_edudata,status=4 where RegistrationNumber=P_Id;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateEmpData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateEmpData`(
P_Id int,
P_EmpData longtext
)
BEGIN
update employeedetails set EmploymentDetails=P_EmpData,status=4 where RegistrationNumber=P_Id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdatePassword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdatePassword`(
P_userName varchar(50),
P_password varchar(50),
out P_RegId int
)
BEGIN
update login set E_PassWord=P_password,LastLoginDate=now(),status=1 where UserName = P_userName;
select EmployeeId into P_RegId from login where P_userName=UserName;
select P_RegId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updatePayslipStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatePayslipStatus`(
P_Rid int
)
BEGIN
update salary set status = 1 where RegId= P_Rid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updatePersonalDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatePersonalDetails`(
P_RegNumber varchar(2),
P_First_Name varchar(45),
P_Last_Name varchar(45),
P_Gender varchar(45),
P_Coresspondence_Address varchar(250),
P_Permanent_Address varchar (250),
P_Email varchar(70),
P_Mobile_No varchar(10),
P_DateOfBirth date,
P_Marital_Status varchar(20),
P_PAN_Card varchar(20),
P_Blood_Group varchar(10),                                                                                                  																																																						
P_Emerg_C_No varchar(10)
)
BEGIN
update employeedetails set FirstName=P_First_Name,LastName=P_Last_Name,Gender=P_Gender,CorrespondenceAddress=P_Coresspondence_Address,PermanetAddress=P_Permanent_Address,Email=P_Email,MobileNumber=P_Mobile_No,DOB=P_DateOfBirth,MaritalStatus=P_Marital_Status,PanCard=P_PAN_Card,BloodGroup=P_Blood_Group,EmergencyContactNumber=P_Emerg_C_No where RegistrationNumber=P_RegNumber;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateStatus`(
P_Id int,
P_status int
)
BEGIN
update employeedetails set status = P_status where Id = P_Id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateTaskStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateTaskStatus`(
P_taskId int,
P_Comment varchar(155)
)
BEGIN
update assigntask set status = 1,Comments=P_Comment where Id=P_taskId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `verify` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `verify`(
P_UserName varchar(50),
P_Password varchar(20),
p_outmessage varchar(100)
)
BEGIN
declare v_count int;
select count(*) into v_count  from login where UserName= P_UserName and E_PassWord=P_Password;
if(v_count=0)
	then
    set p_outmessage='Invalid Credential';
    end if;
    Select UserName,E_PassWord,status,EmployeeId  from login where UserName= P_UserName and E_PassWord=P_Password;
    -- select p_outmessage;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-04 14:23:51
