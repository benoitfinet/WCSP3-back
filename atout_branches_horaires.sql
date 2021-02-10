-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: atout_branches
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

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
-- Dumping data for table `horaires`
--

LOCK TABLES `horaires` WRITE;
/*!40000 ALTER TABLE `horaires` DISABLE KEYS */;
INSERT INTO `horaires` VALUES (1,'Info Covid','Le gouvernement a autorisé notre réouverture dans le respect de règles sanitaires strictes. Les gestes barrières habituels sont complétés par des règles adaptées aux spécificités de notre parc, elles sont décrites ci-dessous et sont susceptibles d\'évoluer en fonction des contraintes que nous rencontrerons.','https://zupimages.net/up/21/03/4oo2.jpg'),(2,'Le parc est ouvert de Mars jusqu’aux vacances de la Toussaint','','https://zupimages.net/up/21/06/iszo.jpeg'),(3,'De Mars à Juin','Ouverture les Mercredi, Samedi et Dimanche de 13h00 à 18h30. (dernier départ vers les parcours à 16h30). Les matinées et autre jours de la semaine sur réservation.',NULL),(4,'Pendant les vacances scolaire de Pâques (zones B et C)','Ouverture tous les jours de 10h30 à 18h30 (dernier départ vers les parcours à 16h30).',NULL),(5,'Pendant les vacances scolaire de Juillet et Août','Tous les jours de 10h30 à 19h30. (dernier départ vers les parcours à 17h30).',NULL),(6,'Septembre et Octobre','Ouverture les Mercredi, Samedi et Dimanche de 13h00 à 18h00. (dernier départ vers les parcours à 16h00). Les matinées et autre jours de la semaine sur réservation.\n\n',NULL),(7,'Balades nocturnes à partir de 10 ans du mois de Mai jusqu’à Septembre','Une soirée par mois jusqu’à 23h00. Réservation obligatoire, places limitées.',NULL),(8,'Réservations','Afin de ne pas venir pour rien, utilisez l’onglet « RÉSERVATION » et réservez votre date et votre créneau horaire. Pour les groupes, réservation obligatoire (si possible en matinée), contactez-nous : contact@atoutbranches.com . Réservez en ligne\n\nFermeture du parc après les vacances de la toussaint jusqu’au 1er Mars.',NULL),(9,'Année en cours','Calendrier 2021','');
/*!40000 ALTER TABLE `horaires` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-10 12:18:06
