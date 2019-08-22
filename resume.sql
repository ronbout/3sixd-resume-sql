-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: resume
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Current Database: `resume`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `resume` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `resume`;

--
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `personId` int(10) unsigned NOT NULL,
  `executiveSummary` text,
  `objective` varchar(500) DEFAULT NULL,
  `agencyId` int(10) unsigned DEFAULT NULL,
  `agencyContactId` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personId` (`personId`),
  KEY `agencyId` (`agencyId`),
  KEY `agencyContactId` (`agencyContactId`),
  CONSTRAINT `FK_CANDIDATE_PERSONID` FOREIGN KEY (`personId`) REFERENCES `person` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `candidate_ibfk_1` FOREIGN KEY (`agencyId`) REFERENCES `company` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `candidate_ibfk_2` FOREIGN KEY (`agencyContactId`) REFERENCES `person` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES (3,1,'I am a below average programmer.  I make up for it by being a pretty lousy employee.  So, you won\'t have to fix much of my code as I will not get around to writing much of it.  My strongest point is that I am excellent at shifting blame.','Job that will pad my bank account, while not really providing any value.',1,3),(5,2,'I am an outstanding programmer with a long history of success.  I excel at both front-end and back-end coding and am certified in 42 different technologies.  My strongest point is that I can type with both my toes and fingers, allowing me to code twice as fast as any other human.  We weakest point is that I am a serial killer with an increasing thirst for human sacrifice.  The FBI is closing in, but I should be good for 2-3 projects.','An exciting position with a cutting edge company that can also supply fresh victims.',1,NULL),(6,7,'You know about the \"faster than a speeding bullet\" and \"able to leap tall buildings in a single bound\" thing, right?','Save mankind',NULL,NULL),(7,10,'Full stack problem solver','Get a high paying job with little effort',NULL,NULL),(8,11,NULL,NULL,NULL,NULL),(9,12,NULL,NULL,NULL,NULL),(10,15,'Whole bunch of stuff','Good Job',NULL,NULL);
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `candidate_basic_vw`
--

DROP TABLE IF EXISTS `candidate_basic_vw`;
/*!50001 DROP VIEW IF EXISTS `candidate_basic_vw`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `candidate_basic_vw` AS SELECT 
 1 AS `id`,
 1 AS `executiveSummary`,
 1 AS `objective`,
 1 AS `agencyContactId`,
 1 AS `agencyContactFormattedName`,
 1 AS `agencyContactMobilePhone`,
 1 AS `agencyContactWorkPhone`,
 1 AS `personId`,
 1 AS `personFormattedName`,
 1 AS `personGivenName`,
 1 AS `personMiddleName`,
 1 AS `personFamilyName`,
 1 AS `personAffix`,
 1 AS `personAddressLine1`,
 1 AS `personAddressLine2`,
 1 AS `personMunicipality`,
 1 AS `personRegion`,
 1 AS `personPostalCode`,
 1 AS `personCountryCode`,
 1 AS `personEmail1`,
 1 AS `personEmail2`,
 1 AS `personWebsite`,
 1 AS `agencyId`,
 1 AS `agencyName`,
 1 AS `agencyDescription`,
 1 AS `agencyAddressLine1`,
 1 AS `agencyAddressLine2`,
 1 AS `agencyMunicipality`,
 1 AS `agencyRegion`,
 1 AS `agencyPostalCode`,
 1 AS `agencyCountryCode`,
 1 AS `agencyEmail`,
 1 AS `agencyWebsite`,
 1 AS `personHomePhone`,
 1 AS `personMobilePhone`,
 1 AS `personWorkPhone`,
 1 AS `jobSkillName`,
 1 AS `edSkillName`,
 1 AS `certSkillName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `candidate_certifications_vw`
--

DROP TABLE IF EXISTS `candidate_certifications_vw`;
/*!50001 DROP VIEW IF EXISTS `candidate_certifications_vw`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `candidate_certifications_vw` AS SELECT 
 1 AS `id`,
 1 AS `candidateId`,
 1 AS `name`,
 1 AS `description`,
 1 AS `issueDate`,
 1 AS `certificateImage`,
 1 AS `skillIds`,
 1 AS `skillNames`,
 1 AS `skillPcts`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `candidate_education_vw`
--

DROP TABLE IF EXISTS `candidate_education_vw`;
/*!50001 DROP VIEW IF EXISTS `candidate_education_vw`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `candidate_education_vw` AS SELECT 
 1 AS `id`,
 1 AS `candidateId`,
 1 AS `schoolName`,
 1 AS `schoolMunicipality`,
 1 AS `schoolRegion`,
 1 AS `schoolCountry`,
 1 AS `degreeName`,
 1 AS `degreeType`,
 1 AS `degreeMajor`,
 1 AS `degreeMinor`,
 1 AS `startDate`,
 1 AS `endDate`,
 1 AS `skillIds`,
 1 AS `skillNames`,
 1 AS `candidateSkillIds`,
 1 AS `skillPcts`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `candidate_highlights_skills_vw`
--

DROP TABLE IF EXISTS `candidate_highlights_skills_vw`;
/*!50001 DROP VIEW IF EXISTS `candidate_highlights_skills_vw`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `candidate_highlights_skills_vw` AS SELECT 
 1 AS `id`,
 1 AS `candidateId`,
 1 AS `highlight`,
 1 AS `sequence`,
 1 AS `skillIds`,
 1 AS `skillNames`,
 1 AS `candidateSkillIds`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `candidate_job_highlights_skills_vw`
--

DROP TABLE IF EXISTS `candidate_job_highlights_skills_vw`;
/*!50001 DROP VIEW IF EXISTS `candidate_job_highlights_skills_vw`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `candidate_job_highlights_skills_vw` AS SELECT 
 1 AS `id`,
 1 AS `jobId`,
 1 AS `candidateId`,
 1 AS `highlight`,
 1 AS `sequence`,
 1 AS `includeInSummary`,
 1 AS `skillIds`,
 1 AS `skillNames`,
 1 AS `candidateSkillIds`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `candidate_jobedskilllist_vw`
--

DROP TABLE IF EXISTS `candidate_jobedskilllist_vw`;
/*!50001 DROP VIEW IF EXISTS `candidate_jobedskilllist_vw`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `candidate_jobedskilllist_vw` AS SELECT 
 1 AS `id`,
 1 AS `formattedName`,
 1 AS `familyName`,
 1 AS `jobSkillname`,
 1 AS `edSkillName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `candidate_jobedskills_vw`
--

DROP TABLE IF EXISTS `candidate_jobedskills_vw`;
/*!50001 DROP VIEW IF EXISTS `candidate_jobedskills_vw`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `candidate_jobedskills_vw` AS SELECT 
 1 AS `id`,
 1 AS `formattedName`,
 1 AS `familyName`,
 1 AS `jobSkillName`,
 1 AS `skillId`,
 1 AS `edSkillName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `candidate_jobs_vw`
--

DROP TABLE IF EXISTS `candidate_jobs_vw`;
/*!50001 DROP VIEW IF EXISTS `candidate_jobs_vw`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `candidate_jobs_vw` AS SELECT 
 1 AS `id`,
 1 AS `candidateId`,
 1 AS `startDate`,
 1 AS `endDate`,
 1 AS `payType`,
 1 AS `startPay`,
 1 AS `endPay`,
 1 AS `summary`,
 1 AS `jobTitleId`,
 1 AS `jobTitle`,
 1 AS `companyId`,
 1 AS `name`,
 1 AS `municipality`,
 1 AS `region`,
 1 AS `countryCode`,
 1 AS `personId`,
 1 AS `personName`,
 1 AS `personMobilePhone`,
 1 AS `personWorkPhone`,
 1 AS `skillIds`,
 1 AS `skillNames`,
 1 AS `skillPcts`,
 1 AS `skillTestedFlag`,
 1 AS `skillTestResults`,
 1 AS `skillTotalMonths`,
 1 AS `resumeTechtags`,
 1 AS `resumeTechtagNames`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `candidate_jobskilllist_vw`
--

DROP TABLE IF EXISTS `candidate_jobskilllist_vw`;
/*!50001 DROP VIEW IF EXISTS `candidate_jobskilllist_vw`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `candidate_jobskilllist_vw` AS SELECT 
 1 AS `id`,
 1 AS `formattedName`,
 1 AS `familyName`,
 1 AS `jobSkillName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `candidate_skilllist_vw`
--

DROP TABLE IF EXISTS `candidate_skilllist_vw`;
/*!50001 DROP VIEW IF EXISTS `candidate_skilllist_vw`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `candidate_skilllist_vw` AS SELECT 
 1 AS `id`,
 1 AS `formattedName`,
 1 AS `familyName`,
 1 AS `jobSkillname`,
 1 AS `edSkillName`,
 1 AS `certSkillName`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `candidate_skills`
--

DROP TABLE IF EXISTS `candidate_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidate_skills` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `candidateId` int(10) unsigned NOT NULL,
  `skillId` int(10) unsigned NOT NULL,
  `resumeTechtagId` int(10) unsigned DEFAULT NULL,
  `experienceLevel` varchar(30) DEFAULT NULL,
  `tested` tinyint(1) NOT NULL DEFAULT '0',
  `testResults` varchar(80) DEFAULT NULL,
  `totalMonths` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `candidateId_2` (`candidateId`,`skillId`,`resumeTechtagId`),
  KEY `skillId` (`skillId`),
  KEY `candidateId` (`candidateId`),
  KEY `techtagId` (`resumeTechtagId`),
  CONSTRAINT `candidate_skills_ibfk_1` FOREIGN KEY (`skillId`) REFERENCES `skill` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `candidate_skills_ibfk_2` FOREIGN KEY (`candidateId`) REFERENCES `candidate` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `candidate_skills_ibfk_3` FOREIGN KEY (`resumeTechtagId`) REFERENCES `techtag` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_skills`
--

LOCK TABLES `candidate_skills` WRITE;
/*!40000 ALTER TABLE `candidate_skills` DISABLE KEYS */;
INSERT INTO `candidate_skills` VALUES (2,7,9,5,NULL,0,NULL,NULL),(3,7,10,5,NULL,0,NULL,NULL),(4,7,11,5,NULL,0,NULL,NULL),(5,7,12,5,NULL,0,NULL,NULL),(6,7,13,5,NULL,1,'80',22),(7,7,14,5,NULL,0,NULL,NULL),(8,7,15,5,NULL,0,NULL,NULL),(9,7,16,5,NULL,0,NULL,NULL),(10,7,17,5,NULL,0,NULL,NULL),(11,7,18,6,NULL,1,'85',15),(12,7,19,6,NULL,0,NULL,NULL),(13,7,20,6,NULL,0,NULL,NULL),(14,7,21,6,NULL,0,NULL,NULL),(15,7,22,6,NULL,0,NULL,NULL),(16,7,23,6,NULL,0,NULL,NULL),(17,7,24,6,NULL,0,NULL,NULL),(18,7,25,6,NULL,0,NULL,NULL),(19,7,26,6,NULL,0,NULL,NULL),(20,7,27,7,NULL,0,NULL,NULL),(21,7,28,7,NULL,0,NULL,NULL),(22,7,29,7,NULL,0,NULL,NULL),(23,7,30,7,NULL,0,NULL,NULL),(24,7,31,7,NULL,0,NULL,NULL),(25,7,32,7,NULL,0,NULL,NULL),(26,7,33,7,NULL,0,NULL,NULL),(27,7,34,7,NULL,0,NULL,NULL),(28,7,35,7,NULL,0,NULL,NULL),(29,7,36,7,NULL,0,NULL,NULL),(30,7,37,7,NULL,0,NULL,NULL),(31,7,38,7,NULL,0,NULL,NULL),(32,7,39,8,NULL,0,NULL,NULL),(33,7,40,8,NULL,0,NULL,NULL),(34,7,41,8,NULL,0,NULL,NULL),(35,7,42,8,NULL,0,NULL,NULL),(36,7,43,8,NULL,0,NULL,NULL),(37,7,44,8,NULL,0,NULL,NULL),(38,7,45,8,NULL,0,NULL,NULL),(39,7,46,8,NULL,0,NULL,NULL),(40,7,47,9,NULL,0,NULL,NULL),(41,7,48,9,NULL,0,NULL,NULL),(42,7,49,9,NULL,0,NULL,NULL),(43,7,50,9,NULL,0,NULL,NULL),(44,7,51,9,NULL,0,NULL,NULL),(45,7,52,9,NULL,0,NULL,NULL),(46,7,53,9,NULL,0,NULL,NULL),(47,7,54,9,NULL,0,NULL,NULL),(48,7,55,9,NULL,0,NULL,NULL),(49,7,56,10,NULL,0,NULL,NULL),(50,7,57,10,NULL,0,NULL,NULL),(51,7,58,12,NULL,0,NULL,NULL),(52,7,59,12,NULL,0,NULL,NULL),(53,7,60,12,NULL,0,NULL,NULL),(54,7,61,12,NULL,0,NULL,NULL),(55,7,62,12,NULL,0,NULL,NULL),(56,7,63,12,NULL,0,NULL,NULL),(57,7,64,11,NULL,0,NULL,NULL),(58,7,65,11,NULL,0,NULL,NULL),(59,7,66,11,NULL,0,NULL,NULL),(60,7,67,13,NULL,0,NULL,NULL),(61,7,68,13,NULL,0,NULL,NULL),(62,7,69,14,NULL,0,NULL,NULL),(63,7,70,15,NULL,0,NULL,NULL),(64,7,71,16,NULL,0,NULL,NULL),(65,7,72,16,NULL,0,NULL,NULL),(66,7,73,16,NULL,0,NULL,NULL),(67,7,74,16,NULL,0,NULL,NULL),(68,7,75,16,NULL,0,NULL,NULL),(69,7,76,16,NULL,0,NULL,NULL),(70,7,77,16,NULL,0,NULL,NULL),(71,7,78,16,NULL,0,NULL,NULL),(72,7,79,16,NULL,0,NULL,NULL),(73,7,80,16,NULL,0,NULL,NULL),(74,7,81,17,NULL,0,NULL,NULL),(75,7,82,17,NULL,0,NULL,NULL),(76,7,83,17,NULL,0,NULL,NULL),(77,7,84,18,NULL,0,NULL,NULL),(78,7,86,18,NULL,0,NULL,NULL),(79,7,87,18,NULL,0,NULL,NULL),(80,7,88,19,NULL,0,NULL,NULL),(81,7,89,19,NULL,0,NULL,NULL),(82,7,90,19,NULL,0,NULL,NULL),(83,7,91,19,NULL,0,NULL,NULL),(84,7,92,19,NULL,0,NULL,NULL),(85,7,93,19,NULL,0,NULL,NULL),(86,7,94,19,NULL,0,NULL,NULL),(87,7,95,19,NULL,0,NULL,NULL),(88,7,96,19,NULL,0,NULL,NULL),(89,7,97,19,NULL,0,NULL,NULL),(90,7,98,19,NULL,0,NULL,NULL),(91,7,99,5,NULL,0,NULL,NULL),(92,7,100,5,NULL,0,NULL,NULL),(93,7,101,5,NULL,0,NULL,NULL),(94,7,102,7,NULL,0,NULL,NULL),(95,7,103,7,NULL,0,NULL,NULL),(96,7,104,7,NULL,0,NULL,NULL),(97,7,105,7,NULL,0,NULL,NULL),(98,7,106,7,NULL,0,NULL,NULL),(99,7,107,7,NULL,0,NULL,NULL),(100,7,108,7,NULL,0,NULL,NULL),(101,7,109,7,NULL,0,NULL,NULL),(102,8,113,20,NULL,0,NULL,NULL),(103,8,114,21,NULL,0,NULL,NULL),(104,8,115,22,NULL,0,NULL,NULL),(105,8,116,23,NULL,0,NULL,NULL),(106,8,117,24,NULL,0,NULL,NULL),(107,8,118,22,NULL,0,NULL,NULL),(108,8,119,22,NULL,0,NULL,NULL),(109,8,120,24,NULL,0,NULL,NULL),(110,8,1,24,NULL,0,NULL,NULL),(111,8,121,24,NULL,0,NULL,NULL),(112,8,122,24,NULL,0,NULL,NULL),(113,8,123,24,NULL,0,NULL,NULL),(114,8,124,25,NULL,0,NULL,NULL),(115,8,125,26,NULL,0,NULL,NULL),(116,8,126,27,NULL,0,NULL,NULL),(117,8,127,28,NULL,0,NULL,NULL),(118,8,128,29,NULL,0,NULL,NULL),(119,8,129,30,NULL,0,NULL,NULL),(120,10,115,NULL,NULL,0,NULL,NULL),(121,10,114,NULL,NULL,0,NULL,NULL),(122,10,103,NULL,NULL,0,NULL,NULL),(123,6,123,NULL,NULL,0,NULL,NULL),(124,6,129,NULL,NULL,0,NULL,NULL),(125,6,12,NULL,NULL,0,NULL,NULL),(126,6,14,NULL,NULL,0,NULL,NULL),(127,6,39,NULL,NULL,0,NULL,NULL),(128,6,13,NULL,NULL,0,NULL,NULL),(129,6,11,NULL,NULL,0,NULL,NULL),(130,6,119,NULL,NULL,0,NULL,NULL),(131,6,121,NULL,NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `candidate_skills` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`jimbo`@`localhost`*/ /*!50003 TRIGGER tr_candidate_skills_bi BEFORE INSERT ON candidate_skills
FOR EACH ROW
BEGIN
	
	DECLARE all_good INT;

	SELECT COUNT(1) INTO all_good
		FROM skills_techtags
		WHERE skills_techtags.skillId = NEW.skillId
			AND skills_techtags.techtagId = NEW.resumeTechtagId;

	IF all_good = 0 AND NEW.resumeTechtagId IS NOT NULL THEN
		SET @msg = 'The techtagId must relate to the skillId through the "skills_techtags" table';
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = @msg;
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`jimbo`@`localhost`*/ /*!50003 TRIGGER tr_candidate_skills_bu BEFORE UPDATE ON candidate_skills
FOR EACH ROW
BEGIN
	
	DECLARE all_good INT;

	SELECT COUNT(1) INTO all_good
		FROM skills_techtags
		WHERE skills_techtags.skillId = NEW.skillId
			AND skills_techtags.techtagId = NEW.resumeTechtagId;

	IF all_good = 0 AND NEW.resumeTechtagId IS NOT NULL THEN
		SET @msg = 'The techtagId must relate to the skillId through the "skills_techtags" table';
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = @msg;
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `candidate_skills_vw`
--

DROP TABLE IF EXISTS `candidate_skills_vw`;
/*!50001 DROP VIEW IF EXISTS `candidate_skills_vw`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `candidate_skills_vw` AS SELECT 
 1 AS `id`,
 1 AS `formattedName`,
 1 AS `familyName`,
 1 AS `jobSkillName`,
 1 AS `edSkillName`,
 1 AS `candidateSkillId`,
 1 AS `certSkillName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `candidate_with_jobskills_vw`
--

DROP TABLE IF EXISTS `candidate_with_jobskills_vw`;
/*!50001 DROP VIEW IF EXISTS `candidate_with_jobskills_vw`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `candidate_with_jobskills_vw` AS SELECT 
 1 AS `id`,
 1 AS `formattedName`,
 1 AS `familyName`,
 1 AS `skillId`,
 1 AS `jobSkillName`,
 1 AS `skillTested`,
 1 AS `testResults`,
 1 AS `skillTotalMonths`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `candidate_with_phones_jobskills_vw`
--

DROP TABLE IF EXISTS `candidate_with_phones_jobskills_vw`;
/*!50001 DROP VIEW IF EXISTS `candidate_with_phones_jobskills_vw`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `candidate_with_phones_jobskills_vw` AS SELECT 
 1 AS `id`,
 1 AS `FullName`,
 1 AS `LastName`,
 1 AS `Agency`,
 1 AS `phoneType`,
 1 AS `phoneNumber`,
 1 AS `jobSkillName`,
 1 AS `edSkillName`,
 1 AS `certSkillName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `candidate_with_phones_skills_vw`
--

DROP TABLE IF EXISTS `candidate_with_phones_skills_vw`;
/*!50001 DROP VIEW IF EXISTS `candidate_with_phones_skills_vw`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `candidate_with_phones_skills_vw` AS SELECT 
 1 AS `id`,
 1 AS `formattedName`,
 1 AS `lastName`,
 1 AS `agency`,
 1 AS `phoneType`,
 1 AS `phoneNumber`,
 1 AS `jobSkillName`,
 1 AS `edSkillName`,
 1 AS `certSkillName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `candidate_with_phonetypes_jobskills_vw`
--

DROP TABLE IF EXISTS `candidate_with_phonetypes_jobskills_vw`;
/*!50001 DROP VIEW IF EXISTS `candidate_with_phonetypes_jobskills_vw`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `candidate_with_phonetypes_jobskills_vw` AS SELECT 
 1 AS `id`,
 1 AS `formattedName`,
 1 AS `jobSkillName`,
 1 AS `Home`,
 1 AS `Mobile`,
 1 AS `Work`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `candidate_with_phonetypes_skills_vw`
--

DROP TABLE IF EXISTS `candidate_with_phonetypes_skills_vw`;
/*!50001 DROP VIEW IF EXISTS `candidate_with_phonetypes_skills_vw`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `candidate_with_phonetypes_skills_vw` AS SELECT 
 1 AS `id`,
 1 AS `formattedName`,
 1 AS `jobSkillName`,
 1 AS `edSkillName`,
 1 AS `certSkillName`,
 1 AS `homePhone`,
 1 AS `mobilePhone`,
 1 AS `workPhone`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `candidatecertifications`
--

DROP TABLE IF EXISTS `candidatecertifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidatecertifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `candidateId` int(10) unsigned NOT NULL,
  `name` varchar(60) NOT NULL,
  `description` varchar(240) DEFAULT NULL,
  `issueDate` date DEFAULT NULL,
  `certificateImage` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `candidateId` (`candidateId`),
  CONSTRAINT `candidatecertifications_ibfk_1` FOREIGN KEY (`candidateId`) REFERENCES `candidate` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidatecertifications`
--

LOCK TABLES `candidatecertifications` WRITE;
/*!40000 ALTER TABLE `candidatecertifications` DISABLE KEYS */;
INSERT INTO `candidatecertifications` VALUES (1,3,'Scrum Master Certification',NULL,'2015-10-04',NULL),(2,7,'Cisco Certified Network Associate (CCNA)',NULL,NULL,'ccna_cert.png'),(3,7,'Cisco Certified Networking Professional (CCNP)',NULL,NULL,'ccnp_cert.jpg');
/*!40000 ALTER TABLE `candidatecertifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidatecertifications_skills`
--

DROP TABLE IF EXISTS `candidatecertifications_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidatecertifications_skills` (
  `certificationId` int(10) unsigned NOT NULL,
  `candidateSkillId` int(10) unsigned NOT NULL,
  `usePercentage` tinyint(3) unsigned NOT NULL DEFAULT '100',
  PRIMARY KEY (`certificationId`,`candidateSkillId`),
  KEY `skillId` (`candidateSkillId`),
  CONSTRAINT `candidatecertifications_skills_ibfk_1` FOREIGN KEY (`certificationId`) REFERENCES `candidatecertifications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `candidatecertifications_skills_ibfk_2` FOREIGN KEY (`candidateSkillId`) REFERENCES `candidate_skills` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidatecertifications_skills`
--

LOCK TABLES `candidatecertifications_skills` WRITE;
/*!40000 ALTER TABLE `candidatecertifications_skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidatecertifications_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidateeducation`
--

DROP TABLE IF EXISTS `candidateeducation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidateeducation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `candidateId` int(10) unsigned NOT NULL,
  `schoolName` varchar(60) NOT NULL,
  `schoolMunicipality` varchar(80) DEFAULT NULL,
  `schoolRegion` varchar(30) DEFAULT NULL,
  `schoolCountry` varchar(30) DEFAULT NULL,
  `degreeName` varchar(80) NOT NULL,
  `degreeType` enum('non-Degree','Associates','Bachelors','Masters','Doctorate','Diploma') NOT NULL,
  `degreeMajor` varchar(30) DEFAULT NULL,
  `degreeMinor` varchar(30) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `candidateId` (`candidateId`),
  CONSTRAINT `candidateeducation_ibfk_1` FOREIGN KEY (`candidateId`) REFERENCES `candidate` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidateeducation`
--

LOCK TABLES `candidateeducation` WRITE;
/*!40000 ALTER TABLE `candidateeducation` DISABLE KEYS */;
INSERT INTO `candidateeducation` VALUES (1,5,'MIT',NULL,NULL,NULL,'BS Computer Science','Bachelors','Computer Science',NULL,NULL,NULL),(2,7,'Jawaharlal Nehru Technological University','Hyderabad','Telangana','India','Bachelor Of Engineering in Computer Science','Bachelors','Computer Science',NULL,NULL,NULL),(3,8,'JNTU',NULL,NULL,'India','Bachelors in Information Technology','Bachelors',NULL,NULL,NULL,NULL),(9,10,'University of Hard Knocks','','','','Bachelor of Life','Bachelors','','',NULL,'2016-02-12');
/*!40000 ALTER TABLE `candidateeducation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidateeducation_skills`
--

DROP TABLE IF EXISTS `candidateeducation_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidateeducation_skills` (
  `educationId` int(10) unsigned NOT NULL,
  `candidateSkillId` int(10) unsigned NOT NULL,
  `usePercentage` tinyint(3) unsigned NOT NULL DEFAULT '100',
  PRIMARY KEY (`educationId`,`candidateSkillId`),
  KEY `skillId` (`candidateSkillId`),
  CONSTRAINT `candidateeducation_skills_ibfk_1` FOREIGN KEY (`educationId`) REFERENCES `candidateeducation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `candidateeducation_skills_ibfk_2` FOREIGN KEY (`candidateSkillId`) REFERENCES `candidate_skills` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidateeducation_skills`
--

LOCK TABLES `candidateeducation_skills` WRITE;
/*!40000 ALTER TABLE `candidateeducation_skills` DISABLE KEYS */;
INSERT INTO `candidateeducation_skills` VALUES (2,95,100),(9,121,100),(9,122,100);
/*!40000 ALTER TABLE `candidateeducation_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidatehighlights`
--

DROP TABLE IF EXISTS `candidatehighlights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidatehighlights` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `candidateId` int(10) unsigned NOT NULL,
  `highlight` varchar(400) NOT NULL,
  `sequence` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `candidateId` (`candidateId`),
  CONSTRAINT `candidatehighlights_ibfk_1` FOREIGN KEY (`candidateId`) REFERENCES `candidate` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidatehighlights`
--

LOCK TABLES `candidatehighlights` WRITE;
/*!40000 ALTER TABLE `candidatehighlights` DISABLE KEYS */;
INSERT INTO `candidatehighlights` VALUES (1,3,'Able to avoid blame by subtly blaming another.',1),(2,3,'Knows how to do just enough to not get fired.',2),(3,3,'this is a highlight',3),(4,7,'Around 8 years of experience in Designing, Implementing and Troubleshooting Service Provider Networks, Enterprise Networks and Network admin',4),(5,7,'Expertise in installing, configuring, and maintaining Cisco Switches (2900, 3500 ,3700 series, 6500 series)',5),(6,7,'Expertise in installing, configuring, and troubleshooting of Cisco Routers (3800, 3600, 2800, 2600, 1800, 1700, 800)',6),(7,7,'Extensively worked on Cisco catalyst 6509 and implemented VSS along with VDC and VPC on Nexus 5505, 7009 switches.',7),(8,7,'Protocols Awareness: OSPF, EIGRP, RIP, BGP, HSRP, ACL, VTP, NAT/PAT, CDP, SSH, HTTP, HTTPS, NTP, SNMP, ARP, STP (802.1D), SNMP, DNS & DHCP.',8),(9,7,'Hands on Knowledge/experience on F5 load balancers, its methods, implementation and troubleshooting on LTMs and GTMs.',9),(10,7,'Administration and diagnostics of LAN and WAN with in-depth knowledge of TCP/IP, NAT, PPP, ISDN and associates network protocols and service',10),(11,7,'Cisco ASA Firewall troubleshooting and policy change requests for new IP segments that either come on line or that may have been altered dur',11),(12,7,'Extensive Knowledge on the implementation of Cisco ASA 5500 series firewalls.',12),(13,7,'Experience in working with Cisco Nexus 7K, 5K & 2K Switches.',13),(14,7,'Knowledge of implementing and troubleshooting complex layer 2 technologies such as VLAN Trunks, VTP, Ether channel, STP, RSTP and MST.',14),(15,7,'Experience in configuring HSRP and redistribution between routing protocols while troubleshooting them.',1),(16,7,'Extensive experience in Designing, Implementing and Troubleshooting Service Provider Networks and Enterprise Networks.',2),(17,7,'Experience with complex routed LAN and WAN networks, Cisco Routers, Switches and Juniper Routers',17),(18,7,'In-depth knowledge of implementing, configuring and troubleshooting Routing Protocols such as Static Routing, EIGRP, OSPF and BGP',18),(19,7,'Extensive knowledge of deploying and troubleshooting L2/L3, TCP/IP and Multilayer Switches',19),(20,7,'Expertise in implementation and troubleshooting of protocols such as STP, RSTP, PVST, HSRP and VRRP',3),(21,7,'Network management using Syslog, Packet Sniffers, SNMP etc.',21),(22,7,'Experience in configuration Voice over IP (VOIP).',22),(23,7,'Extensive knowledge of deploying & troubleshooting TCP/IP, Implementing IPv6, Translation from IPv4 to IPv6, Multilayer Switching, UDP, Ethe',23),(24,7,'Extensive knowledge in developing test plans, procedures, and testing Various LAN/WAN Products and Protocols.',24),(25,7,'Created and designed network layout and documented network system design with detail information using Visio software. Vendor co-ordination ',25),(26,7,'Specialize in VoIP traffic analysis and designing VoIP networks for small MSPs.',26),(27,7,'Well experienced in troubleshooting and optimizing performance in Cisco based routers and switches. Have worked in NOC environment for more ',27),(28,7,'Excellent problem solving and debugging skills with good verbal/written communication and presentation skills',28),(72,8,'Having 8+ years of IT Software Experience in the areas of various applications based on Object Oriented Programming (OOPS), Client/Server, N-tier architecture, Web based Technology.',1),(73,8,'Experience in all phases of Software Development Life Cycle (SDLC) and AGILE methodologies of Analysis, Design, Development, Implementation, Testing and User Training of Enterprise Web Applications, standalone and Distributed applications.',2),(74,8,'Provides hands-on experience in system requirement gathering, analysis, design, development and troubleshooting for Web and Windows based .NET projects. ',3),(75,8,'Have good experience in migration projects from lower technologies to .NET. Have migrated projects from VB, ASP, VBA and VB COM components.',4),(76,8,'Good hands-on knowledge and experience in compatibility issue soling for web pages or web-enabled applications using Media Query to customize CSS in order to offer the audiences a better visiting experience.',5),(77,8,'Extensive experience in web-based page and site designs using HTML/HTML5, CSS/CSS3, JavaScript, JQUERY, AJAX, JSON and DOM manipulation skills.',6),(78,8,'Extensive experience of designing and developing software applications with the C++, C#(4.0/3.5/3.0/2.0)/VB.NET (9,8,7),  .NET  Framework  (4.5/4.0/3.5/3.0/2.0/1.x), ASP.NET(4.0/3.5/3.0/2.0), ADO.NET, EF 5.0/4.3, AJAX, LINQ, Microsoft Windows Azure, Service Oriented Architecture [SOA] using Windows communication Foundation , WPF, Silver Light(4.0/3.0), CSS, Web Services, SOAP, Automation.',7),(79,8,'Experience in developing application using WPF and Silverlight with Prism framework.',8),(80,8,'Good hands on experience in design using Object Oriented Programming Principles like Encapsulation, Inheritance, Polymorphism, Abstraction and Design patterns like MVVM, Abstract factory, Singleton, MVC, MVP.',9),(81,8,'Working with Bootstrap twitter framework to Design single page application.',10),(82,8,'Experience in Angular.JS, node.JS, Twitter Bootstrap framework for developing UI.',11),(83,8,'Solid experience in developing Single Page Application (SPA) based on client side JavaScript framework Angular JS, knockout and backbone employing MVC and MVVM patterns and Web API.',12),(84,8,'Keen understanding and implemented experience in Waterfall, Incremental and Agile Software Development Life Cycle (SDLC) methodology.',13),(85,8,'Extensively used LINQ (LINQ to SQL, LINQ to XML), ADO.NET, ADO.NET Entity Framework and T-SQL in developing Data Access Layer.',14),(86,8,'Strengths in Database Structure Designing like Creating and Altering Table, View, Stored Procedures, User-Defined Functions, Built-in Functions, Triggers and Indexing ',15),(87,8,'Hands-on experience with Reporting Tools in writing and tuning with better design and much information in different layouts using SQL Server Reporting Services (SSRS), Crystal Reports.',16),(88,8,'Experienced in Version Control Systems using Team Foundation Server 2010/2008 and Visual Source Safe (VSS).',17),(89,8,'Effective Problem Solver with experience in using the debuggers and Tracking utilities in Visual Studio. Highly experienced in identifying issues during code review.',18),(90,8,'Experience with Entity Framework approaches such as code-first and database-first.',19),(91,8,'Experience in deploying, configuring and maintaining the web sites and services on IIS 7.0 with and without secured socket layer.',20),(92,8,'Very good Written, Analytical Skills, Self-motivated, hard working professional with good organizational, leadership, interpersonal and communication skills.',21),(93,10,'test of insert highlights',1),(94,7,'a different test',30);
/*!40000 ALTER TABLE `candidatehighlights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidatehighlights_skills`
--

DROP TABLE IF EXISTS `candidatehighlights_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidatehighlights_skills` (
  `candidateHighlightsId` int(10) unsigned NOT NULL,
  `candidateSkillId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`candidateHighlightsId`,`candidateSkillId`),
  KEY `skillId` (`candidateSkillId`),
  CONSTRAINT `candidatehighlights_skills_ibfk_1` FOREIGN KEY (`candidateHighlightsId`) REFERENCES `candidatehighlights` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `candidatehighlights_skills_ibfk_2` FOREIGN KEY (`candidateSkillId`) REFERENCES `candidate_skills` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidatehighlights_skills`
--

LOCK TABLES `candidatehighlights_skills` WRITE;
/*!40000 ALTER TABLE `candidatehighlights_skills` DISABLE KEYS */;
INSERT INTO `candidatehighlights_skills` VALUES (6,4),(6,5),(5,6),(6,7),(17,32),(5,95),(6,95),(93,120);
/*!40000 ALTER TABLE `candidatehighlights_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidatejob_skills`
--

DROP TABLE IF EXISTS `candidatejob_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidatejob_skills` (
  `jobId` int(10) unsigned NOT NULL,
  `candidateSkillId` int(10) unsigned NOT NULL,
  `usePercentage` tinyint(3) unsigned NOT NULL DEFAULT '100',
  PRIMARY KEY (`jobId`,`candidateSkillId`),
  KEY `skillId` (`candidateSkillId`),
  KEY `jobId` (`jobId`),
  CONSTRAINT `candidatejob_skills_ibfk_1` FOREIGN KEY (`jobId`) REFERENCES `candidatejobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `candidatejob_skills_ibfk_2` FOREIGN KEY (`candidateSkillId`) REFERENCES `candidate_skills` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidatejob_skills`
--

LOCK TABLES `candidatejob_skills` WRITE;
/*!40000 ALTER TABLE `candidatejob_skills` DISABLE KEYS */;
INSERT INTO `candidatejob_skills` VALUES (6,2,100),(6,10,100),(6,11,100),(6,12,100),(6,13,100),(6,20,100),(6,21,100),(6,23,100),(6,29,100),(6,30,100),(6,31,100),(6,43,100),(6,45,100),(6,84,100),(6,90,100),(6,91,100),(6,92,100),(6,93,100),(6,94,100),(6,95,100),(6,96,100),(6,97,100),(6,98,100),(6,99,100),(6,100,100),(7,102,100),(7,103,100),(7,104,100),(7,105,100),(7,106,100),(7,107,100),(7,108,100),(7,109,100),(7,110,100),(7,111,100),(7,112,100),(7,113,100),(7,114,100),(7,115,100),(7,116,100),(7,117,100),(7,118,100),(7,119,100);
/*!40000 ALTER TABLE `candidatejob_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidatejobhighlights`
--

DROP TABLE IF EXISTS `candidatejobhighlights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidatejobhighlights` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jobId` int(10) unsigned NOT NULL,
  `includeInSummary` tinyint(1) NOT NULL DEFAULT '0',
  `highlight` varchar(360) NOT NULL,
  `sequence` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobId` (`jobId`),
  CONSTRAINT `candidatejobhighlights_ibfk_1` FOREIGN KEY (`jobId`) REFERENCES `candidatejobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidatejobhighlights`
--

LOCK TABLES `candidatejobhighlights` WRITE;
/*!40000 ALTER TABLE `candidatejobhighlights` DISABLE KEYS */;
INSERT INTO `candidatejobhighlights` VALUES (1,4,0,'Drank 13 cups of coffee in a single sitting.',0),(2,4,0,'Went to the bathroom 26 times in a single day.',0),(34,6,0,'Deployment and decommission of VLANs on core ASR 9K, Nexus 7K, 5K and its downstream devices.',0),(35,6,0,'Performed OSPF, BGP, DHCP Profile, HSRP, IPV6, Bundle Ethernet implementation on ASR 9K redundant pair.',0),(36,6,0,'Configured CIDR IP RIP, PPP, BGP, MPLS and OSPF routing.',0),(37,6,1,'Experience in MPLS migrations, implemented a backup for the existing WAN connection using site-to-site IP sec VPN tunnels.',0),(38,6,0,'Created and tested Cisco router and switching operations using OSPF routing protocol, ASA Firewalls, and MPLS switching for stable VPNs.',0),(39,6,0,'Switches Replace branch hardware with new 2851 routers and 2960 switches.',0),(40,6,0,'Cisco Checkpoint Firewall troubleshooting and policy change requests for new IP segments that either come on line or that may have been altered during various planned network changes on the network.',0),(41,6,0,'Experience with configuring Nexus 2000 Fabric Extender (FEX) which acts as a remote line card (module) for the Nexus 5000.',0),(42,6,0,'Worked on F5 BigIP GTM/LTM appliances to include writing iRules, SSL offload and everyday task of creating WIP and VIPs.',0),(43,6,0,'Other responsibilities included documentation and supporting other teams.',0),(44,6,0,'Experience in working with BGP attributes such as Weight, Local-Preference, MED and AS-PATH to influence inbound and out bound traffic.',0),(45,6,0,'Involved in Switching Technology Administration including creation and management of VLANs, Port security, Trunking, STP, InterVlan routing and LAN security.',0),(46,6,0,'Used and maintained routing protocols EIGRP, OSPF and BGP on the Routers in the network and also worked on BGP Route Reflectors, Confederations.',0),(47,6,0,'Deployed a large-scale HSRP solution to improve the uptime of collocation customers, in an event where a core router became unreachable.',0),(48,6,0,'Created Lab setup with 7k and 5K NEXUS switches for application testing.',0),(49,6,0,'Experience with designing and deployment of MPLS Traffic Engineering.',0),(50,6,0,'Configuring RIP, OSPF, EIGRP BGP, MPLS, QOS, ATM and Frame Relay.',0),(51,6,0,'Involved in design and implementation of Data Center Migration, worked on implementation strategies for the expansion of the MPLS VPN networks.',0),(52,6,0,'Upgrade Cisco Routers, Switches and Firewall (PIX) IOS using TFTP.',0),(53,6,0,'Checking layer 2 and layer 3 connections for call manager, unity, IP Phone, and IOS router after the site is implemented.',0),(54,6,0,'Updated the HP open view map to reflect changes made to any existing node/object.',0),(55,6,0,'Ensure Network, system and data availability and integrity through preventive maintenance and upgrade.',0),(56,6,0,'Worked on the security levels with RADIUS, TACACS+.',0),(57,6,0,'Installed Cisco Presence cluster and intergraded with call manager cluster',0),(58,6,0,'Monitored network for optimum traffic distribution and load balancing using Solar winds.',0),(59,6,0,'Validation of existing infrastructure and recommended new network designs.',0),(60,6,0,'Created scripts to monitor CPU/Memory on various low end routers in the network.',0),(61,6,0,'Upgrading and troubleshooting Cisco IOS to the Cisco Switches and routers.',0),(62,6,0,'Configuring the back end in the call manager',0),(63,6,0,'Configure and troubleshoot Juniper EX series switches and routers.',0),(64,6,0,'Experience with manipulating various BGP attributes such as Local Preference, MED, Extended Communities, Route-Reflector clusters, Route-maps and route policy implementation.',0),(65,7,0,'Analyzed existing legacy system and Designed According to the clients requirement using .Net 4.0 and 4.5 in two different releases',0),(66,7,0,'Extensively used JavaScript and jQuery library for client side validation ',0),(67,7,0,'Performed SDLC life cycle by Initially Designed and Developed the application and worked on Warranty Period and Maintenance For supporting the application',0),(68,7,0,'Worked on Different Releases of application and provided Excellent support to the client in maintaining the application',0),(69,7,0,'Extensive experience in using WPF controls for developing rich Windows UI application',0),(70,7,0,'Experience in creating the windows based application with animation and special effects using WPF controls',0),(71,7,0,'Have designed applications using PRISM framework.',0),(72,7,0,'Implemented MVVM framework to use data binding capabilities effectively.',0),(73,7,0,'Played Key role in developing the various modules in the application. ',0),(74,7,0,'Implemented the various State Management techniques like Session, Cache and View state to persist information in .aspx files and between post backs.  ',0),(75,7,0,'Involved in handling client side state management like View State and Query Profiles and Server side state management techniques like Sessions.  ',0),(76,7,0,'Designed Master Page and themes for a common visual appearance for all the ASP.NET pages.',0),(77,7,0,'Developed CSS thereby enabling central control for page layouts, colors and fonts for page and controls.',0),(78,7,0,'Worked on CR\'s and providing support to the issues faced by the client in the project.',0),(79,7,0,'Involved in creating and consuming Web Services and WCF Services and responsible',0),(80,7,0,'Communicating and providing real time data from integrated server to client application.',0),(81,7,0,'Handled many production issues and enhanced the User interface as per the requirements',0),(82,7,0,'Heavily used .Net Web Controls, Validation Controls and User Controls.',0),(83,7,0,'Implemented forms authentication and authorization, membership and role providers for maintaining security in the application.',0),(84,7,0,'Designed the user interaction between multiple pages in a given session.',0),(85,7,0,'Used SSIS and SSRS for reporting, data integration and data transfers',0),(86,7,0,'Developed Unit Test Cases to ensure that the code met its design and behaved as intended.',0);
/*!40000 ALTER TABLE `candidatejobhighlights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidatejobhighlights_skills`
--

DROP TABLE IF EXISTS `candidatejobhighlights_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidatejobhighlights_skills` (
  `candidateJobHighlightsId` int(10) unsigned NOT NULL,
  `candidateSkillId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`candidateJobHighlightsId`,`candidateSkillId`),
  KEY `candidateSkillId` (`candidateSkillId`),
  CONSTRAINT `candidatejobhighlights_skills_ibfk_1` FOREIGN KEY (`candidateJobHighlightsId`) REFERENCES `candidatejobhighlights` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `candidatejobhighlights_skills_ibfk_2` FOREIGN KEY (`candidateSkillId`) REFERENCES `candidate_skills` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidatejobhighlights_skills`
--

LOCK TABLES `candidatejobhighlights_skills` WRITE;
/*!40000 ALTER TABLE `candidatejobhighlights_skills` DISABLE KEYS */;
INSERT INTO `candidatejobhighlights_skills` VALUES (44,4),(44,5),(40,6),(44,7),(50,32),(40,95),(44,95),(37,123),(37,124),(35,130),(39,130),(34,131);
/*!40000 ALTER TABLE `candidatejobhighlights_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidatejobs`
--

DROP TABLE IF EXISTS `candidatejobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidatejobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `candidateId` int(10) unsigned NOT NULL,
  `companyId` int(10) unsigned NOT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `contactPersonId` int(10) unsigned DEFAULT NULL,
  `payType` enum('Salary','Hourly','','') DEFAULT NULL,
  `startPay` float DEFAULT NULL,
  `endPay` float DEFAULT NULL,
  `jobTitleId` int(10) unsigned DEFAULT NULL,
  `summary` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `candidateId` (`candidateId`),
  KEY `companyId` (`companyId`),
  KEY `contactPersonId` (`contactPersonId`),
  KEY `jobTitleId` (`jobTitleId`),
  CONSTRAINT `candidatejobs_ibfk_1` FOREIGN KEY (`candidateId`) REFERENCES `candidate` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `candidatejobs_ibfk_2` FOREIGN KEY (`companyId`) REFERENCES `company` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `candidatejobs_ibfk_3` FOREIGN KEY (`contactPersonId`) REFERENCES `person` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `candidatejobs_ibfk_4` FOREIGN KEY (`jobTitleId`) REFERENCES `candidatetitles` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidatejobs`
--

LOCK TABLES `candidatejobs` WRITE;
/*!40000 ALTER TABLE `candidatejobs` DISABLE KEYS */;
INSERT INTO `candidatejobs` VALUES (4,3,2,'2014-03-01','2016-10-21',8,'Hourly',28,35.5,1,'solved over 100 NYTimes Crossword Puzzles while here!'),(5,3,3,'2013-01-15','2014-02-28',NULL,'Salary',40000,45000,2,'Learned how not to get fired!'),(6,7,4,'2015-06-01',NULL,NULL,'',NULL,NULL,5,''),(7,8,5,'2015-10-01',NULL,NULL,NULL,NULL,NULL,6,'');
/*!40000 ALTER TABLE `candidatejobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidatesocialmedia`
--

DROP TABLE IF EXISTS `candidatesocialmedia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidatesocialmedia` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `candidateId` int(10) unsigned NOT NULL,
  `socialType` enum('Facebook','LinkedIn','Twitter','Google+','Instagram') NOT NULL,
  `socialLink` varchar(120) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `candidateId` (`candidateId`),
  CONSTRAINT `candidatesocialmedia_ibfk_1` FOREIGN KEY (`candidateId`) REFERENCES `candidate` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidatesocialmedia`
--

LOCK TABLES `candidatesocialmedia` WRITE;
/*!40000 ALTER TABLE `candidatesocialmedia` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidatesocialmedia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidatetitles`
--

DROP TABLE IF EXISTS `candidatetitles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidatetitles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `candidateId` int(10) unsigned NOT NULL,
  `titleDescription` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `candidateId` (`candidateId`),
  CONSTRAINT `candidatetitles_ibfk_1` FOREIGN KEY (`candidateId`) REFERENCES `candidate` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidatetitles`
--

LOCK TABLES `candidatetitles` WRITE;
/*!40000 ALTER TABLE `candidatetitles` DISABLE KEYS */;
INSERT INTO `candidatetitles` VALUES (1,3,'Senior Developer'),(2,3,'Junior Developer'),(3,5,'DBA'),(4,5,'Front-End Dev'),(5,7,'Sr. Network Engineer'),(6,8,'Sr. Net Developer');
/*!40000 ALTER TABLE `candidatetitles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `description` varchar(300) DEFAULT NULL,
  `companyPhone` char(20) DEFAULT NULL,
  `contactPersonId` int(10) unsigned DEFAULT NULL,
  `addressLine1` varchar(80) DEFAULT NULL,
  `addressLine2` varchar(50) DEFAULT NULL,
  `municipality` varchar(30) DEFAULT NULL,
  `region` varchar(30) DEFAULT NULL,
  `postalCode` varchar(15) DEFAULT NULL,
  `countryCode` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `website` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contactPersonId` (`contactPersonId`),
  CONSTRAINT `company_ibfk_1` FOREIGN KEY (`contactPersonId`) REFERENCES `person` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'ABC Agency','ABC Consultants for Web Dev',NULL,8,NULL,NULL,NULL,NULL,NULL,NULL,'contactus@abcagency.com',NULL),(2,'Acme Insurance','Acme Health Insurance company',NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Susan\'s Hair Design',NULL,NULL,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'T-Mobile','Test Company','',NULL,'','','Atlanta','GA','','','',''),(5,'Hershey\'s',NULL,NULL,NULL,NULL,NULL,NULL,'PA',NULL,NULL,NULL,NULL),(6,'RLB Political Consultants','World&#39;s best political consultants',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,'ronnie@gmail.com','rlbpolitics.com');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_persons`
--

DROP TABLE IF EXISTS `company_persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_persons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `companyId` int(10) unsigned NOT NULL,
  `personId` int(10) unsigned NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `companyId` (`companyId`),
  KEY `personId` (`personId`),
  CONSTRAINT `company_persons_ibfk_1` FOREIGN KEY (`companyId`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `company_persons_ibfk_2` FOREIGN KEY (`personId`) REFERENCES `person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_persons`
--

LOCK TABLES `company_persons` WRITE;
/*!40000 ALTER TABLE `company_persons` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `company_vw`
--

DROP TABLE IF EXISTS `company_vw`;
/*!50001 DROP VIEW IF EXISTS `company_vw`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `company_vw` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `description`,
 1 AS `companyPhone`,
 1 AS `addressLine1`,
 1 AS `addressLine2`,
 1 AS `municipality`,
 1 AS `region`,
 1 AS `postalCode`,
 1 AS `countryCode`,
 1 AS `email`,
 1 AS `website`,
 1 AS `personId`,
 1 AS `personFormattedName`,
 1 AS `personGivenName`,
 1 AS `personMiddleName`,
 1 AS `personFamilyName`,
 1 AS `personAffix`,
 1 AS `personAddressLine1`,
 1 AS `personAddressLine2`,
 1 AS `personMunicipality`,
 1 AS `personRegion`,
 1 AS `personPostalCode`,
 1 AS `personCountryCode`,
 1 AS `personEmail1`,
 1 AS `personEmail2`,
 1 AS `personWebsite`,
 1 AS `personHomePhone`,
 1 AS `personMobilePhone`,
 1 AS `personWorkPhone`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fullName` char(50) NOT NULL,
  `userName` char(20) DEFAULT NULL,
  `email` char(50) NOT NULL,
  `confirmValue` char(60) DEFAULT NULL,
  `confirmFlag` tinyint(1) NOT NULL DEFAULT '0',
  `password` char(32) DEFAULT NULL,
  `securityLevel` tinyint(4) NOT NULL DEFAULT '1',
  `candidateId` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_unique` (`email`),
  KEY `candidateId` (`candidateId`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'Ronald','ronbout','ronbout@3sixd.com',NULL,1,'reddog',1,0),(2,'Fred Flintstone',NULL,'flintstone@bedrock.com',NULL,0,'73d94ca09de7d23b853273b035cbc752',1,NULL),(4,'Jim Heffner',NULL,'jim.heffner@3sixd.com',NULL,1,'github',10,NULL),(6,'William Kelly',NULL,'kelly@candada.com','hnexiqedqpbrufdaxqhc',0,'a0dc7888a1274ebbf45eeabb5f13543b',1,NULL),(20,'Ron Boutilier',NULL,'ronbout@gmail.com',NULL,1,'google',1,NULL),(21,'Misha Cross',NULL,'misha@vivid.com','jwzqxqsukbwdinydbvjy',0,'420fc26fa13e665e32ca17ea781c645a',1,7),(23,'Ron Boutilier',NULL,'ronbout@yahoo.com',NULL,1,'github',1,NULL),(27,'Test name',NULL,'test@test.com','ofbvrnmnqyhqcdxgnoog',0,'098f6bcd4621d373cade4e832627b4f6',1,NULL);
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `formattedName` varchar(60) NOT NULL,
  `givenName` varchar(30) NOT NULL,
  `middleName` varchar(30) DEFAULT NULL,
  `familyName` varchar(30) NOT NULL,
  `affix` varchar(10) DEFAULT NULL,
  `addressLine1` varchar(80) DEFAULT NULL,
  `addressLine2` varchar(50) DEFAULT NULL,
  `municipality` varchar(30) DEFAULT NULL,
  `region` varchar(30) DEFAULT NULL,
  `postalCode` varchar(15) DEFAULT NULL,
  `countryCode` varchar(30) DEFAULT NULL,
  `email1` varchar(50) DEFAULT NULL,
  `email2` varchar(50) DEFAULT NULL,
  `website` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'Steven Seagal','Steven',NULL,'Seagal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'stevie@superstar.com',NULL,NULL),(2,'Payal Gosh','Payal',NULL,'Gosh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pgosh@barbell.com',NULL,NULL),(3,'Bobby Boring','Bobby',NULL,'Boring',NULL,NULL,NULL,NULL,NULL,'',NULL,'boring@abcagency.com',NULL,NULL),(6,'James Cameron','James',NULL,'Cameron',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'titanic@terminator.com',NULL,NULL),(7,'Clark Kent','Clark',NULL,'Kent',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'superman@JusticeLeague.com',NULL,NULL),(8,'William Jenkins','William',NULL,'Jenkins',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'Becky Weatherly','Becky',NULL,'Weatherly',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'Benjamin  Parimala ','Benjamin','','Parimala','','','','','','','USA','pben0539@gmail.com','',''),(11,'Sai Krishna','Sai',NULL,'Krishna',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Jonathon Chan','Jonathon',NULL,'Chan',NULL,'','','','','','','chan@poker.com',NULL,'poker.com'),(14,'Joey  Gallo ','Joey','','Gallo','','','','','','','','','',''),(15,'Test  name ','Test','','name','','','','','','','','test@test.com','','');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_person_bi` BEFORE INSERT ON `person` FOR EACH ROW BEGIN
	IF new.formattedName IS NULL OR new.formattedName = '' THEN 
		 SET new.formattedName = CONCAT_WS(' ', new.givenName, new.middleName, new.familyName, new.affix);
	END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`jimbo`@`localhost`*/ /*!50003 TRIGGER tr_person_bu BEFORE UPDATE ON person
FOR EACH ROW
BEGIN
	SET new.formattedName = CONCAT_WS(' ', new.givenName, new.middleName, new.familyName, new.affix);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `person_with_phones_vw`
--

DROP TABLE IF EXISTS `person_with_phones_vw`;
/*!50001 DROP VIEW IF EXISTS `person_with_phones_vw`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `person_with_phones_vw` AS SELECT 
 1 AS `id`,
 1 AS `formattedName`,
 1 AS `givenName`,
 1 AS `middleName`,
 1 AS `familyName`,
 1 AS `affix`,
 1 AS `addressLine1`,
 1 AS `addressLine2`,
 1 AS `municipality`,
 1 AS `region`,
 1 AS `postalCode`,
 1 AS `countryCode`,
 1 AS `email1`,
 1 AS `email2`,
 1 AS `website`,
 1 AS `phoneType`,
 1 AS `phoneNumber`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `person_with_phonetypes_vw`
--

DROP TABLE IF EXISTS `person_with_phonetypes_vw`;
/*!50001 DROP VIEW IF EXISTS `person_with_phonetypes_vw`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `person_with_phonetypes_vw` AS SELECT 
 1 AS `id`,
 1 AS `formattedName`,
 1 AS `givenName`,
 1 AS `middleName`,
 1 AS `familyName`,
 1 AS `affix`,
 1 AS `addressLine1`,
 1 AS `addressLine2`,
 1 AS `municipality`,
 1 AS `region`,
 1 AS `postalCode`,
 1 AS `countryCode`,
 1 AS `email1`,
 1 AS `email2`,
 1 AS `website`,
 1 AS `homePhone`,
 1 AS `mobilePhone`,
 1 AS `workPhone`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `personphone`
--

DROP TABLE IF EXISTS `personphone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personphone` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `personId` int(10) unsigned NOT NULL,
  `phoneType` enum('Home','Work','Mobile','Other','Fax','Pager') NOT NULL,
  `phoneNumber` char(20) NOT NULL,
  `phoneExt` char(6) DEFAULT NULL,
  `whenAvailable` varchar(40) NOT NULL DEFAULT 'anytime',
  PRIMARY KEY (`id`),
  KEY `personId` (`personId`),
  CONSTRAINT `FK_PHONE_PERSONID` FOREIGN KEY (`personId`) REFERENCES `person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personphone`
--

LOCK TABLES `personphone` WRITE;
/*!40000 ALTER TABLE `personphone` DISABLE KEYS */;
INSERT INTO `personphone` VALUES (1,1,'Home','202-333-9483','','Mon-Fri 6-10pm,'),(2,1,'Mobile','202-333-4442','','anytime'),(3,2,'Work','307-444-2222','','anytime'),(4,3,'Work','213-333-1243','','Mon-Fri 8 - 5'),(5,6,'Mobile','666-666-6666','','anytime'),(6,9,'Work','333-444-4444','','anytime'),(7,8,'Work','321-456-9087','','anytime'),(8,8,'Mobile','601-333-8123','','anytime'),(12,12,'Work','111-111-2222',NULL,'anytime'),(15,10,'Mobile','850-462- 5333',NULL,'anytime'),(17,14,'Mobile','333-232-9999',NULL,'anytime'),(18,15,'Mobile','555-444-8888',NULL,'anytime');
/*!40000 ALTER TABLE `personphone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requisition`
--

DROP TABLE IF EXISTS `requisition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requisition` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `clientId` int(10) unsigned NOT NULL,
  `contactPerson` int(10) unsigned DEFAULT NULL,
  `postDate` date NOT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `address1` varchar(80) DEFAULT NULL,
  `address2` varchar(50) DEFAULT NULL,
  `municipality` varchar(30) DEFAULT NULL,
  `region` varchar(30) DEFAULT NULL,
  `postalCode` varchar(15) DEFAULT NULL,
  `countryCode` varchar(30) NOT NULL DEFAULT 'United States',
  `phone` varchar(25) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `url` varchar(120) DEFAULT NULL,
  `summary` text NOT NULL,
  `typicalDay` text,
  `responsibilities` text,
  `educationlevel` enum('non-Degree','Associates','Bachelors','Masters','Doctorate','Diploma') DEFAULT NULL,
  `educationSubject` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clientId` (`clientId`),
  KEY `contactPerson` (`contactPerson`),
  CONSTRAINT `requisition_ibfk_1` FOREIGN KEY (`clientId`) REFERENCES `company` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `requisition_ibfk_2` FOREIGN KEY (`contactPerson`) REFERENCES `person` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requisition`
--

LOCK TABLES `requisition` WRITE;
/*!40000 ALTER TABLE `requisition` DISABLE KEYS */;
/*!40000 ALTER TABLE `requisition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requisition_skills`
--

DROP TABLE IF EXISTS `requisition_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requisition_skills` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `requisitionId` int(10) unsigned NOT NULL,
  `skillId` int(10) unsigned NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `importanceRank` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `requisitionId` (`requisitionId`),
  KEY `skillId` (`skillId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requisition_skills`
--

LOCK TABLES `requisition_skills` WRITE;
/*!40000 ALTER TABLE `requisition_skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `requisition_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(80) NOT NULL,
  `description` varchar(240) DEFAULT NULL,
  `url` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_2` (`name`),
  KEY `Name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES (1,'JavaScript','Any version of Javascript test','https://developer.mozilla.org/en-US/docs/Web/JavaScript'),(2,'PHP',NULL,NULL),(3,'MySQL',NULL,NULL),(4,'Oracle',NULL,NULL),(5,'Java',NULL,NULL),(6,'Visual Studio','',''),(7,'Scrum',NULL,NULL),(8,'Agile Methodology',NULL,NULL),(9,'Cisco 7600',NULL,NULL),(10,'Cisco 7200',NULL,NULL),(11,'Cisco 3800',NULL,NULL),(12,'Cisco 3600',NULL,NULL),(13,'Cisco 2900',NULL,NULL),(14,'Cisco 2800',NULL,NULL),(15,'Cisco 2600',NULL,NULL),(16,'Cisco 1800',NULL,NULL),(17,'Cisco 1700',NULL,NULL),(18,'OSPF',NULL,NULL),(19,'EIGRP',NULL,NULL),(20,'BGP',NULL,NULL),(21,'RIP v1/v2',NULL,NULL),(22,'PBR',NULL,NULL),(23,'Route Filtering',NULL,NULL),(24,'Redistribution',NULL,NULL),(25,'Summarization',NULL,NULL),(26,'Static Routing',NULL,NULL),(27,'Cisco Nexus 2K',NULL,NULL),(28,'Cisco Nexus 5K',NULL,NULL),(29,'Cisco Nexus 7K',NULL,NULL),(30,'Cisco Catalyst 2900',NULL,NULL),(31,'Cisco Catalyst 3500',NULL,NULL),(32,'Cisco Catalyst 3700',NULL,NULL),(33,'Cisco Catalyst 6500',NULL,NULL),(34,'Cisco Catalyst 4500',NULL,NULL),(35,'Cisco Catalyst 3850',NULL,NULL),(36,'Cisco Catalyst 3560',NULL,NULL),(37,'Cisco Catalyst 3750',NULL,NULL),(38,'Cisco Catalyst 2960',NULL,NULL),(39,'LAN',NULL,NULL),(40,'VTP',NULL,NULL),(41,'STP',NULL,NULL),(42,'PVST+',NULL,NULL),(43,'RPVST+',NULL,NULL),(44,'Inter VLAN routing & Multi-Layer Switch',NULL,NULL),(45,'Etherchannels',NULL,NULL),(46,'Transparent Bridging',NULL,NULL),(47,'Cisco ASA 5580-20',NULL,NULL),(48,'ACL',NULL,NULL),(49,'IPSEC',NULL,NULL),(50,'F5 Load Balancer',NULL,NULL),(51,'Checkpoint',NULL,NULL),(52,'IOS Firewall features',NULL,NULL),(53,'Palo Alto',NULL,NULL),(54,'DMZ Setup',NULL,NULL),(55,'NAT/PAT',NULL,NULL),(56,'F5 Networks (Big-IP) LTM 8900',NULL,NULL),(57,'6400',NULL,NULL),(58,'PPP',NULL,NULL),(59,'HDLC',NULL,NULL),(60,'Channelized links (T1/T3)',NULL,NULL),(61,'Fiber Optic Circuits',NULL,NULL),(62,'Frame Relay',NULL,NULL),(63,'VOIP',NULL,NULL),(64,'Ethernet (IEEE 802.3)',NULL,NULL),(65,'Fast Ethernet',NULL,NULL),(66,'Gigabit Ethernet',NULL,NULL),(67,'HSRP',NULL,NULL),(68,'GLBP',NULL,NULL),(69,'Riverbed Steelhead Appliance',NULL,NULL),(70,'Infoblox',NULL,NULL),(71,'IOS and Features',NULL,NULL),(72,'IRDP',NULL,NULL),(73,'NAT',NULL,NULL),(74,'SNMP',NULL,NULL),(75,'SYSLOG',NULL,NULL),(76,'NTP',NULL,NULL),(77,'DHCP',NULL,NULL),(78,'CDP',NULL,NULL),(79,'TFTP',NULL,NULL),(80,'FTP',NULL,NULL),(81,'TACACS+',NULL,NULL),(82,'RADIUS',NULL,NULL),(83,'Cisco ACS',NULL,NULL),(84,'Wireshark',NULL,NULL),(86,'Solarwinds',NULL,NULL),(87,'TCP dump',NULL,NULL),(88,'Windows 2003',NULL,NULL),(89,'Windows 2008 Server',NULL,NULL),(90,'FTP Server',NULL,NULL),(91,'Proxy Server',NULL,NULL),(92,'eMail Management Server',NULL,NULL),(93,'Linux',NULL,NULL),(94,'Cisco Call Manager',NULL,NULL),(95,'Exchange 2003',NULL,NULL),(96,'Microsoft Visio',NULL,NULL),(97,'Microsoft Outlook',NULL,NULL),(98,'Outlook Express',NULL,NULL),(99,'Cisco 3640',NULL,NULL),(100,'Cisco 12000',NULL,NULL),(101,'Cisco 3845',NULL,NULL),(102,'Cisco Catalyst 3550',NULL,NULL),(103,'Cisco',NULL,NULL),(104,'ASA5510',NULL,NULL),(105,'ASA',NULL,NULL),(106,'Cicso 2248',NULL,NULL),(107,'Cisco 3560',NULL,NULL),(108,'Cisco 5020',NULL,NULL),(109,'Cisco 6509',NULL,NULL),(111,'Cisco Nexus',NULL,NULL),(112,'Cisco Catalyst',NULL,NULL),(113,' Visual Studio 2012/2013','',''),(114,' C#',NULL,NULL),(115,' .Net Framework 4.0/4.5',NULL,NULL),(116,' WCF',NULL,NULL),(117,' Web API',NULL,NULL),(118,' PRISM Framework',NULL,NULL),(119,' Entity Framework','',''),(120,' JQuery','JQuery library for frontend',''),(121,' AJAX',NULL,NULL),(122,' HTML5','',''),(123,' CSS','Cascading Style Sheets',''),(124,' WPF',NULL,NULL),(125,' SQL Server 2012','',''),(126,' SSIS','',''),(127,' SSRS',NULL,NULL),(128,' Team Foundation Server(TFS)',NULL,NULL),(129,' IIS 7.0',NULL,NULL),(140,'ES6','es6',''),(141,'mytest','just a test','');
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_relations`
--

DROP TABLE IF EXISTS `skill_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill_relations` (
  `parentSkillId` int(10) unsigned NOT NULL,
  `childSkillId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`parentSkillId`,`childSkillId`) USING BTREE,
  KEY `skillId2` (`childSkillId`),
  CONSTRAINT `skill_relations_ibfk_1` FOREIGN KEY (`parentSkillId`) REFERENCES `skill` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `skill_relations_ibfk_2` FOREIGN KEY (`childSkillId`) REFERENCES `skill` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_relations`
--

LOCK TABLES `skill_relations` WRITE;
/*!40000 ALTER TABLE `skill_relations` DISABLE KEYS */;
INSERT INTO `skill_relations` VALUES (103,9),(103,10),(103,11),(103,12),(103,13),(103,14),(103,15),(103,16),(103,17),(103,27),(111,27),(103,28),(111,28),(103,29),(111,29),(103,30),(112,30),(103,31),(112,31),(103,32),(112,32),(103,33),(112,33),(103,34),(112,34),(103,35),(112,35),(103,36),(112,36),(103,37),(112,37),(103,38),(112,38),(103,47),(103,83),(103,94),(103,99),(103,100),(103,101),(103,102),(112,102),(103,107),(103,108),(103,109),(103,111),(103,112),(1,120),(1,140);
/*!40000 ALTER TABLE `skill_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills_techtags`
--

DROP TABLE IF EXISTS `skills_techtags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skills_techtags` (
  `skillId` int(10) unsigned NOT NULL,
  `techtagId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`skillId`,`techtagId`),
  KEY `TechtagId` (`techtagId`),
  KEY `SkillId` (`skillId`),
  CONSTRAINT `skills_techtags_ibfk_1` FOREIGN KEY (`skillId`) REFERENCES `skill` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `skills_techtags_ibfk_2` FOREIGN KEY (`techtagId`) REFERENCES `techtag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills_techtags`
--

LOCK TABLES `skills_techtags` WRITE;
/*!40000 ALTER TABLE `skills_techtags` DISABLE KEYS */;
INSERT INTO `skills_techtags` VALUES (3,1),(4,1),(2,2),(5,2),(120,2),(140,2),(1,3),(120,3),(123,3),(140,3),(7,4),(8,4),(9,5),(10,5),(11,5),(12,5),(13,5),(14,5),(15,5),(16,5),(17,5),(99,5),(100,5),(101,5),(18,6),(19,6),(20,6),(21,6),(22,6),(23,6),(24,6),(25,6),(26,6),(27,7),(28,7),(29,7),(30,7),(31,7),(32,7),(33,7),(34,7),(35,7),(36,7),(37,7),(38,7),(102,7),(103,7),(104,7),(105,7),(106,7),(107,7),(108,7),(109,7),(39,8),(40,8),(41,8),(42,8),(43,8),(44,8),(45,8),(46,8),(9,9),(47,9),(48,9),(49,9),(50,9),(51,9),(52,9),(53,9),(54,9),(55,9),(56,10),(57,10),(64,11),(65,11),(66,11),(58,12),(59,12),(60,12),(61,12),(62,12),(63,12),(67,13),(68,13),(69,14),(70,15),(71,16),(72,16),(73,16),(74,16),(75,16),(76,16),(77,16),(78,16),(79,16),(80,16),(81,17),(82,17),(83,17),(84,18),(86,18),(87,18),(88,19),(89,19),(90,19),(91,19),(92,19),(93,19),(94,19),(95,19),(96,19),(97,19),(98,19),(113,20),(114,21),(115,22),(118,22),(119,22),(116,23),(1,24),(117,24),(120,24),(121,24),(122,24),(123,24),(124,25),(125,26),(126,27),(127,28),(128,29),(129,30);
/*!40000 ALTER TABLE `skills_techtags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `techtag`
--

DROP TABLE IF EXISTS `techtag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `techtag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(80) NOT NULL,
  `description` varchar(160) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_2` (`name`),
  KEY `Name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `techtag`
--

LOCK TABLES `techtag` WRITE;
/*!40000 ALTER TABLE `techtag` DISABLE KEYS */;
INSERT INTO `techtag` VALUES (1,'SQL Database','SQl Database Administration and Programming'),(2,'Programming Language',NULL),(3,'Front-End Programming','Anything related to Client-side Web Development (HTML, CSS, Javascript, etc)'),(4,'Agile Methodology',NULL),(5,'Routers',NULL),(6,'Routing Protocols',NULL),(7,'Switches',NULL),(8,'Switching Protocols',NULL),(9,'Network Security',NULL),(10,'Load Balancer',NULL),(11,'LAN',NULL),(12,'WAN',NULL),(13,'Gateway Redundancy',NULL),(14,'WAN Optimizer',NULL),(15,'DHCP and DNS',NULL),(16,'Various Features and Services',NULL),(17,'AAA Architecture',NULL),(18,'Network Monitoring Tools',NULL),(19,'Operating Systems/Software',NULL),(20,'IDE Tools',NULL),(21,'.Net Technologies',NULL),(22,'Frameworks',NULL),(23,'Middleware',NULL),(24,'Web Technologies',NULL),(25,'UI Technologies',NULL),(26,'Databases',NULL),(27,'ETL Tools',NULL),(28,'Reporting Tools',NULL),(29,'Version Control Tools',NULL),(30,'Servers',NULL);
/*!40000 ALTER TABLE `techtag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webcontact`
--

DROP TABLE IF EXISTS `webcontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webcontact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` char(15) DEFAULT NULL,
  `message` varchar(800) DEFAULT NULL,
  `resumeLink` varchar(80) DEFAULT NULL,
  `lastUpdateUser` varchar(190) NOT NULL,
  `lastUpdateMembersId` int(10) unsigned DEFAULT NULL,
  `lastUpdateTs` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webcontact`
--

LOCK TABLES `webcontact` WRITE;
/*!40000 ALTER TABLE `webcontact` DISABLE KEYS */;
INSERT INTO `webcontact` VALUES (2,'Fred Flintstone','freddie@bedrock.com','333-444-5555','Yabba Dabba Doo!',NULL,'jimbo@localhost',NULL,'2016-10-14 23:54:20');
/*!40000 ALTER TABLE `webcontact` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_webcontact_bi` BEFORE INSERT ON `webcontact` FOR EACH ROW BEGIN

			DECLARE usr VARCHAR(190);

			SELECT USER() INTO usr;

			SET NEW.lastUpdateUser = usr;

			SET NEW.lastUpdateTs = NOW();

		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_webcontact_ai` AFTER INSERT ON `webcontact` FOR EACH ROW BEGIN

			

			

			INSERT INTO webcontact_audit (webcontactId, name, email, phone, message, resumeLink, lastUpdateUser, lastUpdateMembersId, lastUpdateTs, operation)

				VALUES (NEW.id, NEW.name, NEW.email, NEW.phone, NEW.message, NEW.resumeLink, NEW.lastUpdateUser, NEW.lastUpdateMembersId, NEW.lastUpdateTs, "INSERT");

		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_webcontact_bu` BEFORE UPDATE ON `webcontact` FOR EACH ROW BEGIN

			DECLARE usr VARCHAR(190);

			SELECT USER() INTO usr;

			SET NEW.lastUpdateUser = usr;

			SET NEW.lastUpdateTs = NOW();

		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_webcontact_au` AFTER UPDATE ON `webcontact` FOR EACH ROW BEGIN

			

			

			INSERT INTO webcontact_audit (webcontactId, name, email, phone, message, resumeLink, lastUpdateUser, lastUpdateMembersId, lastUpdateTs, operation)

				VALUES (NEW.id, NEW.name, NEW.email, NEW.phone, NEW.message, NEW.resumeLink, NEW.lastUpdateUser, NEW.lastUpdateMembersId, NEW.lastUpdateTs, "UPDATE");

		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_webcontact_ad` AFTER DELETE ON `webcontact` FOR EACH ROW BEGIN

			

			

				IF (SELECT @memberid IS NULL)

					THEN

						SET @memberid = NULL;

				END IF;

				SET @ts = NOW();

			INSERT INTO webcontact_audit (webcontactId, name, email, phone, message, resumeLink, lastUpdateUser, lastUpdateMembersId, lastUpdateTs, operation)

				VALUES (OLD.id, OLD.name, OLD.email, OLD.phone, OLD.message, OLD.resumeLink, OLD.lastUpdateUser, @memberid, @ts, "DELETE");

		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `webcontact_audit`
--

DROP TABLE IF EXISTS `webcontact_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webcontact_audit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` char(15) DEFAULT NULL,
  `message` varchar(800) DEFAULT NULL,
  `resumeLink` varchar(80) DEFAULT NULL,
  `lastUpdateUser` varchar(190) NOT NULL,
  `lastUpdateMembersId` int(10) unsigned DEFAULT NULL,
  `lastUpdateTs` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `operation` char(10) NOT NULL,
  `webcontactId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webcontact_audit`
--

LOCK TABLES `webcontact_audit` WRITE;
/*!40000 ALTER TABLE `webcontact_audit` DISABLE KEYS */;
INSERT INTO `webcontact_audit` VALUES (1,'Clark Kent','mild@mannered.com','555-666-9999','Hey Lois',NULL,'jimbo@localhost',5,'2016-10-15 05:52:27','DELETE',6);
/*!40000 ALTER TABLE `webcontact_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webcontact_audit_bak`
--

DROP TABLE IF EXISTS `webcontact_audit_bak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webcontact_audit_bak` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` char(15) DEFAULT NULL,
  `message` varchar(800) DEFAULT NULL,
  `resumeLink` varchar(80) DEFAULT NULL,
  `lastUpdateUser` varchar(190) NOT NULL,
  `lastUpdateMembersId` int(10) unsigned DEFAULT NULL,
  `lastUpdateTs` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `operation` char(10) NOT NULL,
  `webcontactId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webcontact_audit_bak`
--

LOCK TABLES `webcontact_audit_bak` WRITE;
/*!40000 ALTER TABLE `webcontact_audit_bak` DISABLE KEYS */;
INSERT INTO `webcontact_audit_bak` VALUES (1,'Fred Flintstone','freddie@bedrock.com','333-444-5555','Yabba Dabba Doo!',NULL,'jimbo@localhost',NULL,'2016-10-14 23:54:20','INSERT',2),(2,'Taylor Swift','tay@singer.com','444-333-4444','Shake it off!',NULL,'jimbo@localhost',NULL,'2016-10-15 04:58:37','INSERT',3),(3,'Taylor Swift','tay@singers.com','555-666-6969','Shake it off',NULL,'jimbo@localhost',NULL,'2016-10-15 05:19:15','INSERT',4),(4,'Taylor Swift','tay@singers.com','555-666-6969','Shake it off',NULL,'jimbo@localhost',NULL,'2016-10-15 05:23:12','INSERT',5),(5,'Taylor Swift','tay@singers.com','555-666-6969','Shake it off',NULL,'jimbo@localhost',NULL,'2016-10-15 05:19:15','DELETE',4),(6,'Taylor Swift','tay@singers.com','555-666-6969','Shake it off',NULL,'jimbo@localhost',NULL,'2016-10-15 05:23:12','DELETE',5),(7,'Clark Kent','mild@mannered.com','555-666-9999','Hey Lois',NULL,'jimbo@localhost',1,'2016-10-15 05:26:53','INSERT',6),(8,'Taylor Swift','tay@singer.com','444-333-4444','Shake it off!',NULL,'jimbo@localhost',1,'2016-10-15 04:58:37','DELETE',3);
/*!40000 ALTER TABLE `webcontact_audit_bak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `resume`
--

USE `resume`;

--
-- Final view structure for view `candidate_basic_vw`
--

/*!50001 DROP VIEW IF EXISTS `candidate_basic_vw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`jimbo`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `candidate_basic_vw` AS select `c1`.`id` AS `id`,`c1`.`executiveSummary` AS `executiveSummary`,`c1`.`objective` AS `objective`,ifnull(`c1`.`agencyContactId`,`a1`.`contactPersonId`) AS `agencyContactId`,`apv`.`formattedName` AS `agencyContactFormattedName`,`apv`.`mobilePhone` AS `agencyContactMobilePhone`,`apv`.`workPhone` AS `agencyContactWorkPhone`,`c1`.`personId` AS `personId`,`p1`.`formattedName` AS `personFormattedName`,`p1`.`givenName` AS `personGivenName`,`p1`.`middleName` AS `personMiddleName`,`p1`.`familyName` AS `personFamilyName`,`p1`.`affix` AS `personAffix`,`p1`.`addressLine1` AS `personAddressLine1`,`p1`.`addressLine2` AS `personAddressLine2`,`p1`.`municipality` AS `personMunicipality`,`p1`.`region` AS `personRegion`,`p1`.`postalCode` AS `personPostalCode`,`p1`.`countryCode` AS `personCountryCode`,`p1`.`email1` AS `personEmail1`,`p1`.`email2` AS `personEmail2`,`p1`.`website` AS `personWebsite`,`c1`.`agencyId` AS `agencyId`,`a1`.`name` AS `agencyName`,`a1`.`description` AS `agencyDescription`,`a1`.`addressLine1` AS `agencyAddressLine1`,`a1`.`addressLine2` AS `agencyAddressLine2`,`a1`.`municipality` AS `agencyMunicipality`,`a1`.`region` AS `agencyRegion`,`a1`.`postalCode` AS `agencyPostalCode`,`a1`.`countryCode` AS `agencyCountryCode`,`a1`.`email` AS `agencyEmail`,`a1`.`website` AS `agencyWebsite`,`cv`.`homePhone` AS `personHomePhone`,`cv`.`mobilePhone` AS `personMobilePhone`,`cv`.`workPhone` AS `personWorkPhone`,`cv`.`jobSkillName` AS `jobSkillName`,`cv`.`edSkillName` AS `edSkillName`,`cv`.`certSkillName` AS `certSkillName` from ((((`candidate` `c1` join `person` `p1` on((`c1`.`personId` = `p1`.`id`))) left join `company` `a1` on((`c1`.`agencyId` = `a1`.`id`))) left join `candidate_with_phonetypes_skills_vw` `cv` on((`c1`.`id` = `cv`.`id`))) left join `person_with_phonetypes_vw` `apv` on((ifnull(`c1`.`agencyContactId`,`a1`.`contactPersonId`) = `apv`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `candidate_certifications_vw`
--

/*!50001 DROP VIEW IF EXISTS `candidate_certifications_vw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `candidate_certifications_vw` AS select `cc1`.`id` AS `id`,`cc1`.`candidateId` AS `candidateId`,`cc1`.`name` AS `name`,`cc1`.`description` AS `description`,`cc1`.`issueDate` AS `issueDate`,`cc1`.`certificateImage` AS `certificateImage`,group_concat(`s1`.`id` separator '|') AS `skillIds`,group_concat(`s1`.`name` separator '|') AS `skillNames`,group_concat(`ccs1`.`usePercentage` separator '|') AS `skillPcts` from (((`candidatecertifications` `cc1` left join `candidatecertifications_skills` `ccs1` on((`cc1`.`id` = `ccs1`.`certificationId`))) left join `candidate_skills` `cs` on((`ccs1`.`candidateSkillId` = `cs`.`id`))) left join `skill` `s1` on((`cs`.`skillId` = `s1`.`id`))) group by `cc1`.`id` order by `cc1`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `candidate_education_vw`
--

/*!50001 DROP VIEW IF EXISTS `candidate_education_vw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`jimbo`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `candidate_education_vw` AS select `ed1`.`id` AS `id`,`ed1`.`candidateId` AS `candidateId`,`ed1`.`schoolName` AS `schoolName`,`ed1`.`schoolMunicipality` AS `schoolMunicipality`,`ed1`.`schoolRegion` AS `schoolRegion`,`ed1`.`schoolCountry` AS `schoolCountry`,`ed1`.`degreeName` AS `degreeName`,`ed1`.`degreeType` AS `degreeType`,`ed1`.`degreeMajor` AS `degreeMajor`,`ed1`.`degreeMinor` AS `degreeMinor`,`ed1`.`startDate` AS `startDate`,`ed1`.`endDate` AS `endDate`,group_concat(`s1`.`id` separator '|') AS `skillIds`,group_concat(`s1`.`name` separator '|') AS `skillNames`,group_concat(`cs`.`id` separator '|') AS `candidateSkillIds`,group_concat(`eds1`.`usePercentage` separator '|') AS `skillPcts` from (((`candidateeducation` `ed1` left join `candidateeducation_skills` `eds1` on((`ed1`.`id` = `eds1`.`educationId`))) left join `candidate_skills` `cs` on((`eds1`.`candidateSkillId` = `cs`.`id`))) left join `skill` `s1` on((`cs`.`skillId` = `s1`.`id`))) group by `ed1`.`id` order by `ed1`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `candidate_highlights_skills_vw`
--

/*!50001 DROP VIEW IF EXISTS `candidate_highlights_skills_vw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`jimbo`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `candidate_highlights_skills_vw` AS select `ch`.`id` AS `id`,`ch`.`candidateId` AS `candidateId`,`ch`.`highlight` AS `highlight`,`ch`.`sequence` AS `sequence`,group_concat(`s`.`id` separator '|') AS `skillIds`,group_concat(`s`.`name` separator '|') AS `skillNames`,group_concat(`cs`.`id` separator '|') AS `candidateSkillIds` from (((`candidatehighlights` `ch` left join `candidatehighlights_skills` `chs` on((`chs`.`candidateHighlightsId` = `ch`.`id`))) left join `candidate_skills` `cs` on((`cs`.`id` = `chs`.`candidateSkillId`))) left join `skill` `s` on((`s`.`id` = `cs`.`skillId`))) group by `ch`.`id` order by `ch`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `candidate_job_highlights_skills_vw`
--

/*!50001 DROP VIEW IF EXISTS `candidate_job_highlights_skills_vw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`jimbo`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `candidate_job_highlights_skills_vw` AS select `cjh`.`id` AS `id`,`cj`.`id` AS `jobId`,`cj`.`candidateId` AS `candidateId`,`cjh`.`highlight` AS `highlight`,`cjh`.`sequence` AS `sequence`,`cjh`.`includeInSummary` AS `includeInSummary`,group_concat(`s`.`id` separator '|') AS `skillIds`,group_concat(`s`.`name` separator '|') AS `skillNames`,group_concat(`cs`.`id` separator '|') AS `candidateSkillIds` from ((((`candidatejobs` `cj` join `candidatejobhighlights` `cjh` on((`cjh`.`jobId` = `cj`.`id`))) left join `candidatejobhighlights_skills` `cjhs` on((`cjhs`.`candidateJobHighlightsId` = `cjh`.`id`))) left join `candidate_skills` `cs` on((`cs`.`id` = `cjhs`.`candidateSkillId`))) left join `skill` `s` on((`s`.`id` = `cs`.`skillId`))) group by `cjh`.`id` order by `cjh`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `candidate_jobedskilllist_vw`
--

/*!50001 DROP VIEW IF EXISTS `candidate_jobedskilllist_vw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `candidate_jobedskilllist_vw` AS select `candidate_jobedskills_vw`.`id` AS `id`,`candidate_jobedskills_vw`.`formattedName` AS `formattedName`,`candidate_jobedskills_vw`.`familyName` AS `familyName`,`candidate_jobedskills_vw`.`jobSkillName` AS `jobSkillname`,group_concat(`candidate_jobedskills_vw`.`edSkillName` separator '|') AS `edSkillName` from `candidate_jobedskills_vw` group by `candidate_jobedskills_vw`.`id` order by `candidate_jobedskills_vw`.`familyName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `candidate_jobedskills_vw`
--

/*!50001 DROP VIEW IF EXISTS `candidate_jobedskills_vw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `candidate_jobedskills_vw` AS select `c1`.`id` AS `id`,`c1`.`formattedName` AS `formattedName`,`c1`.`familyName` AS `familyName`,`c1`.`jobSkillName` AS `jobSkillName`,`cs`.`skillId` AS `skillId`,`s`.`name` AS `edSkillName` from ((((`candidate_jobskilllist_vw` `c1` left join `candidateeducation` `ed` on((`c1`.`id` = `ed`.`candidateId`))) left join `candidateeducation_skills` `eds` on((`ed`.`id` = `eds`.`educationId`))) left join `candidate_skills` `cs` on((`eds`.`candidateSkillId` = `cs`.`id`))) left join `skill` `s` on((`cs`.`skillId` = `s`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `candidate_jobs_vw`
--

/*!50001 DROP VIEW IF EXISTS `candidate_jobs_vw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`jimbo`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `candidate_jobs_vw` AS select `j1`.`id` AS `id`,`j1`.`candidateId` AS `candidateId`,`j1`.`startDate` AS `startDate`,`j1`.`endDate` AS `endDate`,`j1`.`payType` AS `payType`,`j1`.`startPay` AS `startPay`,`j1`.`endPay` AS `endPay`,`j1`.`summary` AS `summary`,`j1`.`jobTitleId` AS `jobTitleId`,`jt1`.`titleDescription` AS `jobTitle`,`j1`.`companyId` AS `companyId`,`c1`.`name` AS `name`,`c1`.`municipality` AS `municipality`,`c1`.`region` AS `region`,`c1`.`countryCode` AS `countryCode`,ifnull(`j1`.`contactPersonId`,`c1`.`contactPersonId`) AS `personId`,`cpv`.`formattedName` AS `personName`,`cpv`.`mobilePhone` AS `personMobilePhone`,`cpv`.`workPhone` AS `personWorkPhone`,group_concat(`s1`.`id` separator '|') AS `skillIds`,group_concat(`s1`.`name` separator '|') AS `skillNames`,group_concat(`js1`.`usePercentage` separator '|') AS `skillPcts`,group_concat(coalesce(`cs`.`tested`,0) separator '|') AS `skillTestedFlag`,group_concat(coalesce(`cs`.`testResults`,0) separator '|') AS `skillTestResults`,group_concat(coalesce(`cs`.`totalMonths`,0) separator '|') AS `skillTotalMonths`,group_concat(`cs`.`resumeTechtagId` separator '|') AS `resumeTechtags`,group_concat(`tt`.`name` separator '|') AS `resumeTechtagNames` from (((((((`candidatejobs` `j1` join `company` `c1` on((`j1`.`companyId` = `c1`.`id`))) left join `candidatejob_skills` `js1` on((`j1`.`id` = `js1`.`jobId`))) left join `candidate_skills` `cs` on((`js1`.`candidateSkillId` = `cs`.`id`))) left join `skill` `s1` on((`cs`.`skillId` = `s1`.`id`))) left join `techtag` `tt` on((`cs`.`resumeTechtagId` = `tt`.`id`))) left join `candidatetitles` `jt1` on((`j1`.`jobTitleId` = `jt1`.`id`))) left join `person_with_phonetypes_vw` `cpv` on((ifnull(`j1`.`contactPersonId`,`c1`.`contactPersonId`) = `cpv`.`id`))) group by `j1`.`id` order by `j1`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `candidate_jobskilllist_vw`
--

/*!50001 DROP VIEW IF EXISTS `candidate_jobskilllist_vw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `candidate_jobskilllist_vw` AS select `candidate_with_jobskills_vw`.`id` AS `id`,`candidate_with_jobskills_vw`.`formattedName` AS `formattedName`,`candidate_with_jobskills_vw`.`familyName` AS `familyName`,group_concat(`candidate_with_jobskills_vw`.`jobSkillName` separator '|') AS `jobSkillName` from `candidate_with_jobskills_vw` group by `candidate_with_jobskills_vw`.`id` order by `candidate_with_jobskills_vw`.`familyName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `candidate_skilllist_vw`
--

/*!50001 DROP VIEW IF EXISTS `candidate_skilllist_vw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `candidate_skilllist_vw` AS select `candidate_skills_vw`.`id` AS `id`,`candidate_skills_vw`.`formattedName` AS `formattedName`,`candidate_skills_vw`.`familyName` AS `familyName`,`candidate_skills_vw`.`jobSkillName` AS `jobSkillname`,`candidate_skills_vw`.`edSkillName` AS `edSkillName`,group_concat(`candidate_skills_vw`.`certSkillName` separator '|') AS `certSkillName` from `candidate_skills_vw` group by `candidate_skills_vw`.`id` order by `candidate_skills_vw`.`familyName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `candidate_skills_vw`
--

/*!50001 DROP VIEW IF EXISTS `candidate_skills_vw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `candidate_skills_vw` AS select `c1`.`id` AS `id`,`c1`.`formattedName` AS `formattedName`,`c1`.`familyName` AS `familyName`,`c1`.`jobSkillname` AS `jobSkillName`,`c1`.`edSkillName` AS `edSkillName`,`certs`.`candidateSkillId` AS `candidateSkillId`,`s`.`name` AS `certSkillName` from ((((`candidate_jobedskilllist_vw` `c1` left join `candidatecertifications` `cert` on((`c1`.`id` = `cert`.`candidateId`))) left join `candidatecertifications_skills` `certs` on((`cert`.`id` = `certs`.`certificationId`))) left join `candidate_skills` `cs` on((`certs`.`candidateSkillId` = `cs`.`id`))) left join `skill` `s` on((`cs`.`skillId` = `s`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `candidate_with_jobskills_vw`
--

/*!50001 DROP VIEW IF EXISTS `candidate_with_jobskills_vw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `candidate_with_jobskills_vw` AS select distinct `c1`.`id` AS `id`,`p1`.`formattedName` AS `formattedName`,`p1`.`familyName` AS `familyName`,`cs`.`skillId` AS `skillId`,`s`.`name` AS `jobSkillName`,`cs`.`tested` AS `skillTested`,`cs`.`testResults` AS `testResults`,`cs`.`totalMonths` AS `skillTotalMonths` from (((((`candidate` `c1` join `person` `p1` on((`c1`.`personId` = `p1`.`id`))) left join `candidatejobs` `cj` on((`c1`.`id` = `cj`.`candidateId`))) left join `candidatejob_skills` `cjs` on((`cj`.`id` = `cjs`.`jobId`))) left join `candidate_skills` `cs` on((`cjs`.`candidateSkillId` = `cs`.`id`))) left join `skill` `s` on((`cs`.`skillId` = `s`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `candidate_with_phones_jobskills_vw`
--

/*!50001 DROP VIEW IF EXISTS `candidate_with_phones_jobskills_vw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `candidate_with_phones_jobskills_vw` AS select `p1`.`id` AS `id`,`p1`.`formattedName` AS `FullName`,`p1`.`familyName` AS `LastName`,`c2`.`name` AS `Agency`,`p2`.`phoneType` AS `phoneType`,`p2`.`phoneNumber` AS `phoneNumber`,`cs`.`jobSkillname` AS `jobSkillName`,`cs`.`edSkillName` AS `edSkillName`,`cs`.`certSkillName` AS `certSkillName` from ((((`candidate` `c1` join `person` `p1` on((`c1`.`personId` = `p1`.`id`))) left join `personphone` `p2` on((`p1`.`id` = `p2`.`personId`))) left join `company` `c2` on((`c1`.`agencyId` = `c2`.`id`))) left join `candidate_skilllist_vw` `cs` on((`c1`.`id` = `cs`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `candidate_with_phones_skills_vw`
--

/*!50001 DROP VIEW IF EXISTS `candidate_with_phones_skills_vw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`jimbo`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `candidate_with_phones_skills_vw` AS select `c1`.`id` AS `id`,`p1`.`formattedName` AS `formattedName`,`p1`.`familyName` AS `lastName`,`c2`.`name` AS `agency`,`p2`.`phoneType` AS `phoneType`,`p2`.`phoneNumber` AS `phoneNumber`,`cs`.`jobSkillname` AS `jobSkillName`,`cs`.`edSkillName` AS `edSkillName`,`cs`.`certSkillName` AS `certSkillName` from ((((`candidate` `c1` join `person` `p1` on((`c1`.`personId` = `p1`.`id`))) left join `personphone` `p2` on((`p1`.`id` = `p2`.`personId`))) left join `company` `c2` on((`c1`.`agencyId` = `c2`.`id`))) left join `candidate_skilllist_vw` `cs` on((`c1`.`id` = `cs`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `candidate_with_phonetypes_jobskills_vw`
--

/*!50001 DROP VIEW IF EXISTS `candidate_with_phonetypes_jobskills_vw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`jimbo`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `candidate_with_phonetypes_jobskills_vw` AS select `candidate_with_phones_skills_vw`.`id` AS `id`,`candidate_with_phones_skills_vw`.`formattedName` AS `formattedName`,`candidate_with_phones_skills_vw`.`jobSkillName` AS `jobSkillName`,group_concat((case when (`candidate_with_phones_skills_vw`.`phoneType` = 'Home') then `candidate_with_phones_skills_vw`.`phoneNumber` end) separator ',') AS `Home`,group_concat((case when (`candidate_with_phones_skills_vw`.`phoneType` = 'Mobile') then `candidate_with_phones_skills_vw`.`phoneNumber` end) separator ',') AS `Mobile`,group_concat((case when (`candidate_with_phones_skills_vw`.`phoneType` = 'Work') then `candidate_with_phones_skills_vw`.`phoneNumber` end) separator ',') AS `Work` from `candidate_with_phones_skills_vw` group by `candidate_with_phones_skills_vw`.`id` order by `candidate_with_phones_skills_vw`.`lastName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `candidate_with_phonetypes_skills_vw`
--

/*!50001 DROP VIEW IF EXISTS `candidate_with_phonetypes_skills_vw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`jimbo`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `candidate_with_phonetypes_skills_vw` AS select `candidate_with_phones_skills_vw`.`id` AS `id`,`candidate_with_phones_skills_vw`.`formattedName` AS `formattedName`,`candidate_with_phones_skills_vw`.`jobSkillName` AS `jobSkillName`,`candidate_with_phones_skills_vw`.`edSkillName` AS `edSkillName`,`candidate_with_phones_skills_vw`.`certSkillName` AS `certSkillName`,group_concat((case when (`candidate_with_phones_skills_vw`.`phoneType` = 'Home') then `candidate_with_phones_skills_vw`.`phoneNumber` end) separator ',') AS `homePhone`,group_concat((case when (`candidate_with_phones_skills_vw`.`phoneType` = 'Mobile') then `candidate_with_phones_skills_vw`.`phoneNumber` end) separator ',') AS `mobilePhone`,group_concat((case when (`candidate_with_phones_skills_vw`.`phoneType` = 'Work') then `candidate_with_phones_skills_vw`.`phoneNumber` end) separator ',') AS `workPhone` from `candidate_with_phones_skills_vw` group by `candidate_with_phones_skills_vw`.`id` order by `candidate_with_phones_skills_vw`.`lastName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `company_vw`
--

/*!50001 DROP VIEW IF EXISTS `company_vw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`jimbo`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `company_vw` AS select `c1`.`id` AS `id`,`c1`.`name` AS `name`,`c1`.`description` AS `description`,`c1`.`companyPhone` AS `companyPhone`,`c1`.`addressLine1` AS `addressLine1`,`c1`.`addressLine2` AS `addressLine2`,`c1`.`municipality` AS `municipality`,`c1`.`region` AS `region`,`c1`.`postalCode` AS `postalCode`,`c1`.`countryCode` AS `countryCode`,`c1`.`email` AS `email`,`c1`.`website` AS `website`,`c1`.`contactPersonId` AS `personId`,`pp1`.`formattedName` AS `personFormattedName`,`pp1`.`givenName` AS `personGivenName`,`pp1`.`middleName` AS `personMiddleName`,`pp1`.`familyName` AS `personFamilyName`,`pp1`.`affix` AS `personAffix`,`pp1`.`addressLine1` AS `personAddressLine1`,`pp1`.`addressLine2` AS `personAddressLine2`,`pp1`.`municipality` AS `personMunicipality`,`pp1`.`region` AS `personRegion`,`pp1`.`postalCode` AS `personPostalCode`,`pp1`.`countryCode` AS `personCountryCode`,`pp1`.`email1` AS `personEmail1`,`pp1`.`email2` AS `personEmail2`,`pp1`.`website` AS `personWebsite`,`pp1`.`homePhone` AS `personHomePhone`,`pp1`.`mobilePhone` AS `personMobilePhone`,`pp1`.`workPhone` AS `personWorkPhone` from (`company` `c1` left join `person_with_phonetypes_vw` `pp1` on((`c1`.`contactPersonId` = `pp1`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `person_with_phones_vw`
--

/*!50001 DROP VIEW IF EXISTS `person_with_phones_vw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `person_with_phones_vw` AS select `p1`.`id` AS `id`,`p1`.`formattedName` AS `formattedName`,`p1`.`givenName` AS `givenName`,`p1`.`middleName` AS `middleName`,`p1`.`familyName` AS `familyName`,`p1`.`affix` AS `affix`,`p1`.`addressLine1` AS `addressLine1`,`p1`.`addressLine2` AS `addressLine2`,`p1`.`municipality` AS `municipality`,`p1`.`region` AS `region`,`p1`.`postalCode` AS `postalCode`,`p1`.`countryCode` AS `countryCode`,`p1`.`email1` AS `email1`,`p1`.`email2` AS `email2`,`p1`.`website` AS `website`,`p2`.`phoneType` AS `phoneType`,`p2`.`phoneNumber` AS `phoneNumber` from (`person` `p1` left join `personphone` `p2` on((`p1`.`id` = `p2`.`personId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `person_with_phonetypes_vw`
--

/*!50001 DROP VIEW IF EXISTS `person_with_phonetypes_vw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`jimbo`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `person_with_phonetypes_vw` AS select `p1`.`id` AS `id`,`p1`.`formattedName` AS `formattedName`,`p1`.`givenName` AS `givenName`,`p1`.`middleName` AS `middleName`,`p1`.`familyName` AS `familyName`,`p1`.`affix` AS `affix`,`p1`.`addressLine1` AS `addressLine1`,`p1`.`addressLine2` AS `addressLine2`,`p1`.`municipality` AS `municipality`,`p1`.`region` AS `region`,`p1`.`postalCode` AS `postalCode`,`p1`.`countryCode` AS `countryCode`,`p1`.`email1` AS `email1`,`p1`.`email2` AS `email2`,`p1`.`website` AS `website`,group_concat((case when (`p1`.`phoneType` = 'Home') then `p1`.`phoneNumber` end) separator ',') AS `homePhone`,group_concat((case when (`p1`.`phoneType` = 'Mobile') then `p1`.`phoneNumber` end) separator ',') AS `mobilePhone`,group_concat((case when (`p1`.`phoneType` = 'Work') then `p1`.`phoneNumber` end) separator ',') AS `workPhone` from `person_with_phones_vw` `p1` group by `p1`.`formattedName` order by `p1`.`familyName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-21 16:57:32
