CREATE DATABASE  IF NOT EXISTS `atout_branches` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `atout_branches`;
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
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `text` varchar(10000) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES (1,'Les parcours acrobatiques en hauteur','Le parcours acrobatique en hauteur est une activité qui consiste à se balader d’arbre en arbre au travers de différents obstacles plus fun les uns que les autres. Cette activité est adaptée pour tous les âges puisque le parc Atout Branches propose plusieurs parcours avec plus de 100 ateliers spécifiquement conçus pour des âges différents.\nVous atteindrez 18 mètres de hauteur au plus haut point du circuit Panoramique.\nNos 12 parcours sont adaptés en hauteur et difficultés en fonction de l’âge et de la taille des pratiquants.\nNos parcours accrobranches sont régis par une réglementation dite de « pratique en autonomie surveillée », c’est-à-dire que l’activité n’est pas encadrée individuellement.\n100 % ligne de vie continue, Atout Branches vous profitez des dernières innovations en matière de sécurité. Tous les circuits sont équipés d\'une ligne de vie continue.\nCe système élimine les erreurs de manipulations sur le parcours puisque l\'un des connecteurs de votre équipement est accroché en permanence à la ligne de vie du début à la fin du parcours.\nVotre équipement est composé d\'un harnais équipé de 2 longes de sécurité. Chacune de ces longes est terminée par un connecteur. Le premier est un mousqueton à virole de sureté le second est un crochet qui ne peut être décroché à la fin du parcours. Ce crochet spécial reste connecté dès le début du parcours et en permanence tout au long de celui-ci. Votre sécurité n\'est plus dépendante de votre attention.\nAprès une initiation obligatoire sur l’utilisation du matériel et l’application des règles de sécurité, vous évoluez en autonomie dans les arbres, à votre rythme, sous la surveillance générale de nos opérateurs qui interviennent en cas de difficulté majeure.\nPour plus de confort pensez à apporter une paire de gant type cycliste. Notre parc en propose à la vente (2€ la paire, T5 jusqu’à T11).','https://zupimages.net/up/21/06/v6tl.jpeg'),(2,'Parcours PICCOLO','Tout près du sol, des obstacles à franchir et des situations d\'équilibre pour les apprentis aventuriers.\n\nAccessible de 2 à 5 ans.','https://zupimages.net/up/21/06/sfrf.jpeg'),(3,'Parcours PITCHOUN (NOUVEAUTE 2021)','Réveil tes sens et l’aventurier qui est en toi. Ce parcours d’initiation d’une hauteur d’environ 1 mètre t’apportera l’agilité nécessaire pour continuer l’aventure des parcours suivants. Les parents pourront t’aider dans ta progression.\n\nAccessible de 3 à 7 ans.','https://zupimages.net/up/21/06/iszo.jpeg'),(4,'Parcours COLIBRI','Une série de tyroliennes pour les tous petits.\n\nAccessible de 2 à 7 ans.','https://zupimages.net/up/21/06/ooss.jpg'),(5,'Parcours OUISTITI','Avec une hauteur de 3 à 4 mètres, ce circuit est un vrai challenge pour les enfants. Des obstacles en hauteur pour développer concentration et équilibre.\n\nTaille requise : 1m.\nAccessible de 4 à 7 ans.','https://zupimages.net/up/21/06/qd79.jpeg'),(6,'Parcours VERT','De 3 à 5 mètres du sol, ce circuit s\'adresse à tous les publics recherchant de nouvelles sensations. De l\'adulte novice au jeune aventurier chacun y trouvera son plaisir.\n\nTaille requise : 1m20.\nAccessible à partir de 7 ans.','https://zupimages.net/up/21/06/4gj8.jpeg'),(7,'Parcours JAUNE','Jusqu\'à 5 mètres de hauteur, circuit ludique et un peu plus difficile que le circuit vert. Il mettra à l\'épreuve de vos capacités d\'équilibre.\n\nTaille requise : 1m20.\nAccessible à partir de 7 ans.','https://zupimages.net/up/21/06/bm1q.jpeg'),(8,'Parcours BLEU','Jusqu\'à 6 mètres de hauteur, circuit plus acrobatique que le vert et le jaune. Un bon échauffement avant d\'attaquer le circuit rouge.\n\nTaille requise : 1m30.','https://zupimages.net/up/21/06/49v0.jpg'),(9,'Parcours ROUGE n° 1 et n° 2 (NOUVEAUTE 2021)','De 4 à 11 mètres de haut, des sensations garanties avec la diversité des passages aériens. Un raccourci au milieu vous laissera le choix entre le circuit long ou court.\n\nTaille requise : 1m40.','https://zupimages.net/up/21/06/vzgm.jpg'),(10,'Parcours PANORAMIQUE','100% tyroliennes, le circuit le plus haut du parcours avec son perchoir à 18 mètres et une série de 8 tyroliennes pour survoler le parc.\n\nTaille requise 1m40. ( accès possible aux enfants de 1m30 encadrés par 2 adultes)','https://zupimages.net/up/21/06/g2nh.jpeg'),(11,'Parcours NOIR','Seuls les plus téméraires oseront se mesurer au parcours noir, votre équilibre et vos capacités à surmonter la peur du vide seront mises à l\'épreuve. Encore de grandes tyroliennes pour vous récompenser et pour finir un saut en chute libre.\n\nTaille requise : 1m50.\nAccessible à partir de 15 ans.','https://zupimages.net/up/21/06/7hjt.jpeg'),(12,'Parcours EBENE','Circuit court mais qui vous demandera beaucoup de force dans les bras. Encore des émotions pour finir avec un saut de tarzan impressionnant.\n\nTaille requise : 1m60\nAccessible à partir de 15 ans.','https://zupimages.net/up/21/06/v6tl.jpeg'),(13,'VERTIJUMP','Une attraction indépendante du parcours. Vous montez à 12 mètres pour un saut avec une chute libre de plusieurs mètres. Oserez sauter ?','https://zupimages.net/up/21/06/sfrf.jpeg'),(14,'LES NOCTURNES 2021','Découvrez des sensations nouvelles en effectuant les parcours dans l\'obscurité.\nSéances spéciales les samedis : 29 Mai, 26 Juin, 24 Juillet, 21 Aout, 18 Septembre.\n\nConditions : Age minimum 10 ans, les mineurs doivent être accompagnés d\'un adulte.\nNombre de places limité - Réservation Obligatoire.\nICI Réservation (créer un lien)','https://zupimages.net/up/21/06/iszo.jpeg'),(15,'L\'escape game','Un ESCAPE GAME 100% naturel, saurez-vous trouver le refuge et y entrer vous avez 1h pour cela.Fouillez la forêt à la recherche des objets indispensables pour trouver et déverrouiller la porte d\'accès.Le jeu se déroule uniquement au sol et s\'adresse à tous, adultes et enfants à partir de 10 ansNous conseillons de constituer une équipe de 3 à 6 joueurs.\nUne aventure ludique et sportive qui fera appel à toute votre ingéniosité.\nRéservation téléphonique ou par mail obligatoire par avance.','https://zupimages.net/up/21/06/ooss.jpg'),(16,'Parcours d\'énigmes','Testez vos capacités d\'orientation et votre perspicacité avec les parcours d\'énigmes Un livret de jeu vous donne toutes les instructions pour parcourir la forêt en résolvant les énigmes. Idéal pour jouer en groupes jusqu\'à 5 personnes par groupe Très apprécié pour les anniversaires.','https://zupimages.net/up/21/06/qd79.jpeg'),(17,'La chasse au trésor','La chasse au trésor qui fait appel votre maitrise de l\'orientation. Retrouvez les coffres forts cachés dans le parc pour reconstituer la clé du mystère. Idéal pour jouer en groupes pour compléter les anniversaires par exemple. Nous mettons un coffre à votre disposition si vous souhaitez prévoir des récompenses pour les participants','https://zupimages.net/up/21/06/4x0m.jpeg'),(18,'L\'atout spider / L\'aire de jeux enfants','Cette activité sans baudrier, l’Atout Spider permet de se déplacer et jouer en toute sécurité sur un filet géant telle une toile d’araignée. Vous retrouverez autour de l’Atout spider différents jeux pour vos enfants (tyrolienne, slackline, Ninja Warrior)\nEnfants à partir de 4 ans et jusqu’à 12 ans.','https://zupimages.net/up/21/06/4gj8.jpeg'),(19,'Le laser game','Le laser game est devenu à la mode en raison de son côté ludique, stratégique et divertissant, le laser Game est un jeu dans lequel deux équipes de joueurs ou unités s’affrontent dans une simulation de tir. Au travers différents scénarios, l’idée est de marquer le maximum de points en touchant les adversaires.Muni d’une arme laser et d’un plastron, le laser Game est une activité sportive 100% sécu.\nA partir de 7 ans, de 6 à 20 personnes,\nRéservation téléphonique ou par mail obligatoire par avance.','https://zupimages.net/up/21/06/bm1q.jpeg'),(20,'Chasse au mot','Muni d\'une carte, les enfants accompagné d\'un adulte devront utiliser leur sens de l\'orientation afin de rechercher dans le parc les endroits ou sont cachées des lettres afin de reconstituer un mots. Nous vous proposons deux chasses au mot.','https://zupimages.net/up/21/06/49v0.jpg');
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_photo`
--

DROP TABLE IF EXISTS `activity_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_photo` (
  `activity_id` int NOT NULL,
  `photo_id` int NOT NULL,
  KEY `fk_activity_photo_1_idx` (`activity_id`),
  KEY `fk_activity_phto_1_idx` (`photo_id`),
  CONSTRAINT `fk_activity_photo_1` FOREIGN KEY (`activity_id`) REFERENCES `activity` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_activity_phto_1` FOREIGN KEY (`photo_id`) REFERENCES `photo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_photo`
--

LOCK TABLES `activity_photo` WRITE;
/*!40000 ALTER TABLE `activity_photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'bonjour@aurevoir.fr','$2a$10$wWfSACKs1RGFUWG3RJeCieZ/Z3Q0JGw6iRcJl4MLTXIHwNFL4k94C'),(2,'bonjour','$2a$10$DgIfjNzAi.RdBQmTWF4SyO8DVnrdHkYutKflDqKh9EZze.3MJm8.C');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calandar`
--

DROP TABLE IF EXISTS `calandar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calandar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `image` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calandar`
--

LOCK TABLES `calandar` WRITE;
/*!40000 ALTER TABLE `calandar` DISABLE KEYS */;
/*!40000 ALTER TABLE `calandar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drink`
--

DROP TABLE IF EXISTS `drink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drink` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `price` int NOT NULL,
  `description` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drink`
--

LOCK TABLES `drink` WRITE;
/*!40000 ALTER TABLE `drink` DISABLE KEYS */;
/*!40000 ALTER TABLE `drink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'Les Nocturnes','Atout Branches propose des mois de Mai à Septembre une soirée nocturne et à partir de 10 ans. Réservation obligatoire, places limitées.','https://zupimages.net/up/21/06/803l.jpeg'),(2,'Fête des mères et fête des pères','Fête des mères et fête de pères. 50% sur le prix de l’entrée pour le parent pratiquant sous condition de venir en famille de trois personnes minimum.','https://zupimages.net/up/21/06/qd79.jpeg'),(3,'Fête de la nature','Texte à ajouter','https://zupimages.net/up/21/06/sfrf.jpeg'),(4,'Halloween','Texte à ajouter','https://zupimages.net/up/21/06/4x0m.jpeg'),(5,'Texte en bas','Privatisation du parc ou pour toutes demandes particulières, contactez-nous : contact@atoutbranches.com','');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_photo`
--

DROP TABLE IF EXISTS `event_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_photo` (
  `event_id` int NOT NULL,
  `photo_id` int NOT NULL,
  PRIMARY KEY (`event_id`),
  KEY `fk_event_photo_photo_idx` (`photo_id`),
  CONSTRAINT `fk_event_photo_envent` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_event_photo_photo` FOREIGN KEY (`photo_id`) REFERENCES `photo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_photo`
--

LOCK TABLES `event_photo` WRITE;
/*!40000 ALTER TABLE `event_photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `findus`
--

DROP TABLE IF EXISTS `findus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `findus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `text` varchar(10000) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `findus`
--

LOCK TABLES `findus` WRITE;
/*!40000 ALTER TABLE `findus` DISABLE KEYS */;
INSERT INTO `findus` VALUES (1,'La carte','Atout branches vous acceuil dans le Parc naturel du Gâtinais français\n\nNotre adresse : Route de Boutigny, 91490 Milly-la-Forêt\n\nCode + Google: CF38+CP Milly-la-Forêt\n\nCoordonnées géographiques : 48.40365082524155, 2.466910482299927','https://zupimages.net/up/21/05/u9c2.png'),(2,'A l\'approche de Milly , suivre les panneaux panneau routier : \"Parc d\'Aventures\"','Itinéraire détaillé :\n- Depuis l\'autoroute A6, prendre la sortie N°13\n\nSuivre la direction Milly-la-Forêt (7km). Au rond-point d\'entrée à Milly prendre direction Étampes. Après 1km prendre à droite la D105 direction Boutigny. L\'entrée du parc est à 500m à droite. - Depuis Etampes, suivre la direction Milly-la-Forêt.\n\nAu 1er rond-point à l\'entrée de Milly-la-Forêt, tourner à gauche direction Fontainebleau/A6. Après 800m prendre à gauche la D105 direction Boutigny. L\'entrée du parc est à 500m à droite\n\n- Depuis Fontainebleau, suivre la direction Milly-la-Forêt. Au 1er feu à l\'entrée de Milly-la-Forêt, tourner à droite direction Étampes. Au 1er rond-point, traverser direction Boutigny/ Étampes. Après 1km prendre à droite la D105 direction Boutigny. L\'entrée du parc est à 500m à droite.\n\n- Venir en covoiturage : Des covoiturages sont régulièrement proposés sur les sites de covoiturage. Vous réduirez vos frais de route, voyagerez écologique et vous ferez des heureux !\n\n- Pour venir en autocar, Obtenez rapidement votre devis personnalisé sur Autocar Location !\n\n- Petit groupe de 6 à 16 personnes, obtenez votre devis pour votre minibus avec chauffeur sur Location Minibus 8 places ou Location Minibus 16 places\n\nNous contacter : contact@atoutbranches.com','https://zupimages.net/up/21/06/ooss.jpg'),(3,'L’accès en train et en bus :','TGV jusqu’à la gare de Boulogne sur mer puis bus ou taxi jusqu’à Wimereux (2h38 depuis Paris, 1 h depuis Lille) TGV jusqu’à la gare de Calais puis trajet en autocar ou taxi jusqu’à Wimereux.\nA partir des gares TGV de Boulogne ou Calais, TER jusqu’à la gare de Wimille-Wimereux . La gare est à 15 minutes de marche de nos appartements ou à 1 arrêt de bus. Il y a des lignes de bus( www.marineo.fr) qui peuvent faire le lien entre le train et l’appartement depuis Boulogne sur mer mais aussi depuis la gare de wimereux .\nPour les infos et horaires consultez le site du TER Nord-Pas de Calais, le site de la SNCF pour les grandes lignes ou le site Trainline (bus ou train). Vous souhaitez venir en train ou Bus et visiter la côte: il y a la ligne de bus Oscar ( bus Haut de France) qui assure une ligne régulière sur la côte entre Calais et Boulogne sur Mer (vous pouvez ainsi visiter les Caps Gris nez et Blanc Nez, les villages côtiers… le tarif est de 1€.\nvoici le lien pour accèder aux arrêts et aux horaires: Bus oscar',NULL),(4,'Info sur les places de parking :','Tous les parkings et emplacements autour de l’immeuble sont gratuits.\nEn été , il peut être difficile de se garer l’après midi aux alentours de l’immeuble car nous sommes à côté de la plage …mais avec de la persévérance et en s’éloignant un peu de la mer, nous trouvons toujours de la place ?.\nHors saison estivale, il est très facile de trouver des places de parkings à proximité de l’appartement.',NULL);
/*!40000 ALTER TABLE `findus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `price` int NOT NULL,
  `description` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food`
--

LOCK TABLES `food` WRITE;
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
/*!40000 ALTER TABLE `food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupes`
--

DROP TABLE IF EXISTS `groupes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groupes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `text` varchar(10000) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupes`
--

LOCK TABLES `groupes` WRITE;
/*!40000 ALTER TABLE `groupes` DISABLE KEYS */;
INSERT INTO `groupes` VALUES (1,'En famille ou entre amis','En famille ou entre amis, les activités ludo-sportives que nous vous proposons vous apportent une diversité dans l’éveil et le développement des personnes. Elles développent l’équilibre entre le physique et le mental, Enseigne l\'autonomie, Aiguise la prise de décision, Apprend à penser et à agir sous pression, Augmente le niveau de condition physique, Développe l\'estime de soi. Ces qualités développées sont nécessaires au bien-être des personnes et éveil les sens indispensables pour un environnement bienveillant et favorable tout au long de la vie.','https://zupimages.net/up/21/06/doyi.jpg'),(2,'Les anniversaires','D’une réservation pour un minimum de 6 enfants et d’une prise en charge de votre groupe dès votre arrivée.\n\nD’une table privatisée qui vous est réservée pour une durée de 3h pour organiser l’anniversaire.\n\nLe groupe peut alors s’élancer sur les parcours dans les arbres pendant environ 1h30 - 2h.\n\nD’un carton d\'invitation à remettre à vos amis. Ce carton vous permet de préciser la date, l’adresse et les consignes liées à notre activité. ','https://zupimages.net/up/21/06/vzgm.jpg'),(3,'Les centres de loisirs / Scolaires','Activités pédagogiques demandées par les professeurs des écoles, elles permettent aux enfants d’agir, de s’exprimer, et de comprendre à travers les activités physique, d’adapter leurs déplacements à des environnements variés. Nous prioriserons leurs accès en semaine et les mercredis .','https://zupimages.net/up/21/06/g2nh.jpeg'),(4,'Le team building / Séminaires','Nous accueillons les Petites et Moyennes Entreprises pour une journée team-building ou séminaire en semaines.\n\nFace aux succès et à la demande importante de la part des entreprises, de nombreuses variantes sont venues compléter les possibilités d’animations Team-building ou de séminaire.\n\nNos activités et nos parcours progressifs répondent à vos besoins de créativité, de coopération, d’émulation de groupe, de cohésion d’équipe, d’intégration de forces vives, de mobilisation et remotivation des troupes, et bien sûr de détente et de sensations fortes !\n\nMettez vos équipes en défi, organisation d\'olympiades avec nos activités : Parcours acrobatiques en hauteur, Laser Game, Courses d’orientation, Murs d’escalade. Notre traiteur local vous propose différentes formules pour votre déjeuner : Apéritif dinatoire, cocktail, buffet.','https://zupimages.net/up/21/06/7hjt.jpeg'),(5,'Les comités d\'entreprises / Associations','Mettez vos équipes en défi, organisation d\'olympiades avec nos activités : Parcours acrobatiques en hauteur, Laser Game, Courses d’orientation, Murs d’escalade.\n\nNotre traiteur local vous propose différentes formules pour votre déjeuner : Apéritif dinatoire, cocktail, buffet.','https://zupimages.net/up/21/06/v6tl.jpeg'),(6,'EVG / EVJF','Fêtez votre enterrement de vie de célibataire en pleine forêt.\n\nUn(e) de vos proches se marie ? Enterrez sa vie de jeune fille ou de garçon au Parc Alti’Max pour passer une journée forte d’émotions !\n\nA vous de choisir l\'activité qui mettra le ou la futur(e) marié(e) au défi : Parcours acrobatiques en hauteur, Laser Game, Courses d’orientation, Murs d’escalade.\n\nAlti’Max offrira au futur(e) marié(e) sa place d’accrobranche. En option, nous pouvons vous proposer du Champagne.','https://zupimages.net/up/21/06/sfrf.jpeg'),(7,'Les anniversaires','Vous bénéficiez:','Obtenez votre'),(8,'Les anniversaires','Une entrée est offerte pour un adulte (un parent ou un ami) pour chacune des formules.\n\nD’une entrée à prix réduit de 50% pour l’enfant qui a fêté son anniversaire et qui reviendra dans l’année.\nPour encore plus de sensations, vous pouvez privatiser avec un supplément votre terrasse aérienne.','carte d\'invitation !');
/*!40000 ALTER TABLE `groupes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home`
--

DROP TABLE IF EXISTS `home`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `subtitle` varchar(100) DEFAULT NULL,
  `text` varchar(10000) NOT NULL,
  `subtext` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home`
--

LOCK TABLES `home` WRITE;
/*!40000 ALTER TABLE `home` DISABLE KEYS */;
INSERT INTO `home` VALUES (1,'Atout branches','Au cœur du Parc naturel régional du Gâtinais français','Atout Branches est un parc d’activités de loisirs ludo sportives situé à Milly la Forêt au cœur du Parc Naturel Régional du Gâtinais Français, véritable poumon vert au sud de l’Ile-de-France. Nous accueillons petits et grands pour une journée inoubliables sur les thèmes sports, nature, sensations et réflexions. Venez-vous ressourcer dans ce cadre magnifique et réveiller vos sens, les activités que nous vous proposons sont imaginés de manière à s’adapter à tout le monde et dans le respect de la nature et de notre eco system. Une buvette, aires de repos et pique-nique et un chalet sanitaire sont à votre disposition.','https://zupimages.net/up/21/06/6f19.jpeg'),(2,'Nos activités','Garantie 100% FUN','NE PAS EFFACER',NULL),(3,'Evènements','Nocturne','Evénements Alti’Max propose des mois de Mai à Septembre une soirée nocturne tous les premiers samedi du mois et à partir de 6 ans. Réservation obligatoire, places limitées. Fête des mères et fête de pères. 50% sur le prix de l’entrée pour le parent pratiquant sous condition de venir en famille de trois personnes minimum. Privatisation du parc ou pour toutes demandes particulières, contactez-nous : altimax78@gmail.com','https://zupimages.net/up/21/06/ooss.jpg'),(4,'Offres','Privatisez votre terrasse','Privatisez votre terrasse Vous pouvez privatiser votre terrasse aérienne à la journée. Equipé d’une table, de bancs et d’un coffre fermé par cadenas afin d’y déposer vos affaires. Vous pourrez ainsi profiter de votre pause déjeuner, gouter ou anniversaire en hauteur avec la vue sur le parc et à l’écart.','https://zupimages.net/up/21/06/qd79.jpeg'),(5,'Des offres pour tout publics','En famille, entre amis, entre collègues ...','NE PAS EFFACER',NULL),(6,'Photo Carousel 1','Activité 1','Activité 1','https://zupimages.net/up/21/06/4x0m.jpeg'),(7,'Photo Carousel 2','Activité 2','Activité 2','https://zupimages.net/up/21/06/4gj8.jpeg'),(8,'Photo Carousel 3','Activité 3','Activité 3','https://zupimages.net/up/21/06/bm1q.jpeg'),(9,'Photo Carousel 4','Activité 4','Activité 4','https://zupimages.net/up/21/06/49v0.jpg'),(10,'Photo Carousel 5','Activité 5','Activité 5','https://zupimages.net/up/21/06/doyi.jpg'),(11,'Photo Carousel 6','Activité 6','Activité 6','https://zupimages.net/up/21/06/vzgm.jpg'),(12,'petitCarousel','Les anniversaires','Les anniversaires','https://zupimages.net/up/21/06/g2nh.jpeg'),(13,'Photo carousel 7','Chasse au mot','','https://zupimages.net/up/21/06/7hjt.jpeg'),(14,'Nouveau propriétaire !','Ouverture du parc saison 2021 le samedi 17 avril','',NULL);
/*!40000 ALTER TABLE `home` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horaires`
--

DROP TABLE IF EXISTS `horaires`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horaires` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `text` varchar(10000) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horaires`
--

LOCK TABLES `horaires` WRITE;
/*!40000 ALTER TABLE `horaires` DISABLE KEYS */;
INSERT INTO `horaires` VALUES (1,'Info Covid','Le gouvernement a autorisé notre réouverture dans le respect de règles sanitaires strictes. Les gestes barrières habituels sont complétés par des règles adaptées aux spécificités de notre parc, elles sont décrites ci-dessous et sont susceptibles d\'évoluer en fonction des contraintes que nous rencontrerons.','https://zupimages.net/up/21/03/4oo2.jpg'),(2,'Le parc est ouvert de Mars jusqu’aux vacances de la Toussaint','','https://zupimages.net/up/21/06/iszo.jpeg'),(3,'De Mars à Juin','Ouverture les Mercredi, Samedi et Dimanche de 13h00 à 18h30. (dernier départ vers les parcours à 16h30). Les matinées et autre jours de la semaine sur réservation.',NULL),(4,'Pendant les vacances scolaire de Pâques (zones B et C)','Ouverture tous les jours de 10h30 à 18h30 (dernier départ vers les parcours à 16h30).',NULL),(5,'Pendant les vacances scolaire de Juillet et Août','Tous les jours de 10h30 à 19h30. (dernier départ vers les parcours à 17h30).',NULL),(6,'Septembre et Octobre','Ouverture les Mercredi, Samedi et Dimanche de 13h00 à 18h00. (dernier départ vers les parcours à 16h00). Les matinées et autre jours de la semaine sur réservation.\n\n',NULL),(7,'Balades nocturnes à partir de 10 ans du mois de Mai jusqu’à Septembre','Une soirée par mois jusqu’à 23h00. Réservation obligatoire, places limitées.',NULL),(8,'Réservations','Afin de ne pas venir pour rien, utilisez l’onglet « RÉSERVATION » et réservez votre date et votre créneau horaire. Pour les groupes, réservation obligatoire (si possible en matinée), contactez-nous : contact@atoutbranches.com . Réservez en ligne\n\nFermeture du parc après les vacances de la toussaint jusqu’au 1er Mars.',NULL),(9,'Année en cours','Calendrier 2021','');
/*!40000 ALTER TABLE `horaires` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info`
--

DROP TABLE IF EXISTS `info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(300) DEFAULT NULL,
  `description` mediumtext,
  `subtitle` varchar(10000) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info`
--

LOCK TABLES `info` WRITE;
/*!40000 ALTER TABLE `info` DISABLE KEYS */;
INSERT INTO `info` VALUES (1,'Mentions Légales','PROPRIÉTÉ\n\nNom de la structure : Atout Branches\nSAS au capital de 5000,00 € enregistrée au RCS EVRY\nSIREN ; 449 058 700 \nSiège social : 7 rue du Camp Romain - 91490 Milly la Forêt\nCode APE : 9321Z\nN° de TVA intercommunautaire : FR51 449 058 700\nN° d’enregistrement Jeunesse et Sport : ET000220\nInstallations certifiées conformes à la norme AFNOR XP S52-902-1\nTéléphone : 06 72 46 86 44\nEmail : contact@atoutbranches.com\n\nDirecteur de la publication : Atout Branches\nResponsable de la rédaction : Atout Branches\n\n\nRÉALISATION\n\nSite réalisé par wildcodeschool\nSARL au Capital de ……………….\nImmatriculée au RCS de ………………….\nSous le numéro …………………\nCourriel : ……………….\nSiège Social : ……………..\n\nHÉBERGEMENT\n\nCe site est hébergé par ……………\nSAS au capital de …… enregistrée au RCS ………..\nSous le numéro ………………..\nSiège social : …………………\n\nACCÈS AU SITE\n\nL’éditeur s’efforce de permettre l’accès au site 24 heures sur 24, 7 jours sur 7, sauf en cas de force majeure ou d’un événement hors du contrôle du Propriétaire, et sous réserve des éventuelles pannes et interventions de maintenance nécessaires au bon fonctionnement du site et des services. Par conséquent, le Propriétaire ne peut garantir une disponibilité du site et/ou des services, une fiabilité des transmissions et des performances en termes de temps de réponse ou de qualité. La responsabilité de l’éditeur ne saurait être engagée en cas d’impossibilité d’accès à ce site et/ou d’utilisation des services.\n\nCOPYRIGHT\n\nTout ce qui est contenu dans le site est protégé par copyright. Il est possible d’accéder à des données, images et textes à usage personnel exclusivement, la reproduction, modification ou publication, totale ou partielle, en est interdire quelles que soient les raisons. Toute utilisation des marques ou logos, sans le consentement écrit du Propriétaire, ou des tiers intéressés constitue une violation entraînant des poursuites judiciaires. Les services du Propriétaire en ligne sont gratuits. L’utilisation du site est entièrement gratuite hors temps de connexion selon les conditions de votre fournisseur d’accès à Internet.\n\nCRÉDIT PHOTOS ET VIDÉOS\n\n©Fabien Traisnel\n©……………\n©…………..\n\nSTATISTIQUES WEB\n\nDes statistiques de clics sont produites afin de permettre une amélioration constante de notre site Web. Les clics individuels sont enregistrés de façon anonyme et ne peuvent être réassociés à des utilisateurs spécifiques. Loi du 6 janvier 1978 relative à l’informatique et aux libertés. Nous protégeons votre vie privée. Le Propriétaire protège votre vie privée à double titre. En accord avec nos mesures internes sur la confidentialité, nous transférons vos données, exclusivement aux sociétés distributeurs agréés membres du réseau commercial du Propriétaire, pour leur permettre de vous contacter au plus tôt. D’autre part, conformément à la loi Informatique et Libertés (article 34 de la loi n°78-17 du 6 janvier 1978), les données nominatives vous concernant que vous communiquerez sur le site ne seront utilisées à des fins commerciales et de marketing qu’avec votre agrément. Conformément à la loi « informatique et liberté » du 6 janvier 1978, vous bénéficiez d’un droit d’accès, de rectification et de suppression des données vous concernant, ainsi que du droit de vous opposer au traitement de ces données pour des motifs légitimes ou à leur utilisation à des fins de prospection, notamment commerciale.\n\nCOOKIES\n\nUn cookie est un petit fichier texte enregistré par un site Web sur votre disque dur. Les cookies n’endommagent nullement votre ordinateur et ne contiennent pas de virus. Les cookies de nos pages Web ne recueillent aucune donnée personnelle vous concernant. À tout moment, vous pouvez désactiver l’utilisation de cookies par le biais du paramétrage de votre navigateur. La durée de conservation de ces informations dans votre ordinateur est de 30 jours. En règle générale, nos sites Web contiennent des cookies uniquement à des fins d’évaluation statistique anonyme et pour améliorer la navigation des internautes. Si ces cookies devaient, en outre, être utiles dans des cas particuliers, vous en êtes informés à l’endroit correspondant.\n\nMODALITÉS DU SITE\n\nL’utilisation des services offerts par le site implique l’acceptation de ce qui est exposé ci-dessous. Ces indications sont susceptibles de modification, nous vous invitons à les consulter très régulièrement pour vérifier le contenu. Le Propriétaire du site apporte le plus grand soin et met en œuvre tout moyen pour diffuser des informations de qualité. Le Propriétaire ne peut toutefois pas garantir de manière absolue l’exactitude et l’exhaustivité de l’ensemble de ces informations. Ces informations et/ou documents sont susceptibles de contenir des inexactitudes techniques et des erreurs typographiques. Il est fortement recommandé de vérifier l’exactitude et la pertinence des informations et/ou documents mis à disposition sur ce site. Le Propriétaire se réserve le droit de les corriger, dès que ces erreurs sont portées à sa connaissance. Les informations et/ou documents disponibles sur ce site sont susceptibles d’être modifiés à tout moment, et peuvent avoir fait l’objet de mises à jour. En particulier, ils peuvent avoir fait l’objet d’une mise à jour entre le moment de leur téléchargement et celui où l’utilisateur en prend connaissance. Le Propriétaire ne représente pas, ne garantit pas, ne cautionne pas, ni ne détient aucune responsabilité sur des sites extérieurs pour lesquels il pourrait exister des liens depuis ce site ou vice-versa. Tout site extérieur que vous pouvez visiter à partir d’un lien hypertexte depuis ce site est en dehors du contrôle du Propriétaire et vous le visitez à vos propres risques. Le Propriétaire ne pourra en aucun cas être tenu pour responsable du contenu des sites ainsi accessibles, ou des éventuelles collectes et transmission de données personnelles, installation de cookies ou tout autre procédé tendant aux mêmes fins, effectués par ces sites.\n\nINFORMATIONS TECHNIQUES / SÉCURITÉ\n\nIl est rappelé que le secret des correspondances n’est pas garanti sur le réseau Internet. Par ailleurs, il appartient à chaque utilisateur d’internet de prendre les mesures appropriées de façon à protéger ses propres données et / ou logiciels de la contamination d’éventuels virus circulants sur Internet.\n\nModification des mentions légales et conditions d’utilisation\nLe Propriétaire se réserve la possibilité de modifier, à tout moment et sans préavis, les présentes conditions d’utilisation afin de les adapter aux évolutions du site et/ou de son exploitation. L’utilisateur s’engage donc à les consulter régulièrement.',NULL,NULL),(2,'Politique de confidentialité','Bienvenue sur la page de la politique de confidentialité d’ Atout Branches qui respecte votre vie privée et s’engage à protéger vos données personnelles.',NULL,NULL),(3,'Réglement intérieur','L’ACCES AU PARC, A TOUTES LES ZONES D’ACTIVITES ET AUX STRUCTURES EN HAUTEUR EST INTERDIT EN DEHORS DES HEURES D’OUVERTURE.','L’accès au site et des différentes activités proposés implique la lecture obligatoire et l’acceptation du présent règlement interne.\nLa pratique des activités sont physiques, le non-respect des règles peut entrainer des blessures.',NULL),(4,'texte footer','Atout Branches est un parc d’activités de loisirs ludo sportives situé à Milly la Forêt au cœur du Parc Naturel Régional du Gâtinais Français, véritable poumon vert au sud de l’Ile-de-France. Nous accueillons petits et grands pour une journée inoubliables sur les thèmes sports, nature, sensations et réflexions. Venez-vous ressourcer dans ce cadre magnifique et réveiller vos sens, les activités que nous vous proposons sont imaginés de manière à s’adapter à tout le monde et dans le respect de la nature et de notre eco system. Une buvette, aires de repos et pique-nique et un chalet sanitaire sont à votre disposition.',NULL,NULL),(5,'Réglement intérieur','DESCRIPTION DE LA PRATIQUE ET DES ACTIVITES\n','Atout Branches est un parc à espace d’activités ludique permettant aux pratiquants des faire plusieurs activités :\n\n- Parcours acrobatiques en hauteur.\n- Escape Game 100% naturel.\n- Parcours d\'énigmes.\n- Chasse au trésor.\n- Laser Game.\n\n- Les parcours acrobatiques en hauteur (PAH), permettent aux pratiquants de cheminer en hauteur de façon autonome et plus ou moins acrobatique, sur et entre les arbres ou autres supports naturels ou non.\nLe parc se compose de plus de 100 ateliers répartis sur 11 parcours de difficultés croissantes.\nTous les parcours exceptés pitchoune sont équipés d’une ligne de vie continue, garantissant une sécurité des participants tout au long de l’activité.\nLes parcours sont distingués par leurs noms, des chiffres et codes couleurs indiqués par des pancartes à chaque début de parcours.\n\n-Un ESCAPE GAME 100% naturel. Saurez-vous trouver le refuge et y entrer ? Vous avez 1h pour cela.\nFouillez la forêt à la recherche des objets indispensables pour trouver et déverrouiller la porte d\'accès.\n\n- Un parcours d\'énigmes. Testez vos capacités d\'orientation et votre perspicacité avec les parcours d\'énigmes. Un livret de jeu vous donne toutes les instructions pour parcourir la forêt en résolvant les énigmes.\n\n- Une chasse au trésor. La chasse au trésor qui fait appel votre maitrise de l\'orientation. Retrouvez les coffres forts cachés dans le parc pour reconstituer la clé du mystère.\n\n- Le laser Game, une activité ludique et sportive à pratiquer en famille, entre amis ou collaborateurs.\nUniquement des rayons infrarouges sont émis depuis le fusil laser, vous êtes donc virtuellement touché, aucuns risques de blessures avec les billes.\nLes différents scénarios permettent une variante des jeux. Ils permettent de renouveler l’expérience Laser Game en procurant de nouvelles sensations à travers des rôles à jouer. NOUVEAUTE 2021.\n\nToutes ces activités proposées par Atout Branches développent l’équilibre, la concentration, la psychomotricité, le mental, enseigne l\'autonomie, aiguise la prise de décision, apprend à penser et à agir sous pression, augmente le niveau de condition physique, développe l\'estime de soi.\nLe suivi de ces consignes est obligatoire en toutes circonstances.\nLe non-respect des consignes peut entrainer des blessures.\n\nLes prestations comprennent selon les formules :\n\n- L’accès aux différentes activités.\n- La fourniture est la mise en place de l’équipement de protection individuelle (EPI) des pratiquants.\n- Les consignes d’utilisation du matériel et les explications de début de séance de chaque activité.\n- La mise en application sur parcours test obligatoire et validé par un opérateur pour le PAH.\n- La surveillance, les conseils et/ou les aides éventuelles en cour de séance.',NULL),(6,'Réglement intérieur','CONDITIONS D’ACCES AU SITE (APPLICABLE A TOUTES PERSONNES PRESENTES)','- Avant de commencer, vous êtes invité(e) à consulter le plan d’organisation de sécurité et de secours (identification des personnes responsables, numéros de téléphone d’urgence, cheminements à respecter…)\n- Avoir souscrit, au préalable, à une assurance en responsabilité civil.\n- Adopter en toute circonstance un comportement responsable et prudent pour vous, pour les autres personnes et pour le matériel.\n- Respecter la signalisation en vigueur , ne pas gêner les pratiquants en restant à proximité des ateliers.\n- Rester vigilant à l’environnement en faisant attention aux branches, racines et installations.\n- Ne pas courir dans les allées, respecter les balisages et les cheminements au sols pour protéger le site naturel.\n- Ne pas fumer, ni vapoter, ni faire de feux. Il est rappelé que le parc se situe en milieu boisé et sensible. Une zone fumeur est disponible ( zone terrasse près de l’accueil).\n- Garder le site propre. Des poubelles sont mises à votre disposition avec un tri sélectif.\n- La direction se réserve le droit de refuser l’accès au parc et aux installations à toute personne dont elle estimerait qu’elle ne remplit pas les conditions prévu au présent règlement.',NULL),(7,'Réglement intérieur','CONDITIONS DE PRATIQUE DES ACTIVITES','- S’être acquitté d’un droit d’entrée.\n- Porter une tenue adapté à l’exercices des activités d’extérieur (tenue sportive, chaussures fermées, les cheveux longs doivent être attachés, les foulards et colliers retirés, les lunettes doivent être munies d’un système de maintien).\n- Ne garder sur vous aucun objet susceptible de tomber. Des casiers sécurisés sont à votre disposition gratuitement.\n- Être en bonne santé et n’être affecté d’aucuns troubles psychologiques. La pratique est interdite à toute personne ayant consommé de l’alcool ou toute substances pouvant altérés les capacités de réflexion et physiques.\n- La pratique des activités du parc sont déconseillés aux femmes enceintes. Pour votre sécurité et votre confort, les personnes pesant plus de 100 kg doivent demander l’avis au responsable avant tout achat d’activités.\n- Avoir suivi les explications de début de séance et avoir réalisé le parcours test d’initiation avec succès, celui-ci doit être validé par un opérateur = conditions obligatoires avant l’accès à l’activité de PAH.\n- La signalétique à l’entrée de chaque atelier doit être consultée et respectée comme le matériel, les plates-formes et les ateliers ne devront pas être surchargés.\n- Respecter les consignes de sécurités inscrites sur les panneaux devant chaque zones activités.\n','https://zupimages.net/up/21/06/aw9e.png'),(8,'Réglement intérieur',NULL,'Toute personne qui a l’issu des explications des consignes de sécurité ne se sent pas capable, physiquement ou moralement d’effectué seul et correctement les manipulations indispensables à une évolution de façon autonome de chaque activité, doit renoncer à la pratique de l’activité. Il en est de même pour toutes personne n’ayant pas réussi la validation du parcours test d’initiation PAH. Aucun remboursement ne sera accordé ultérieurement.\n\nVous effectuez les différentes activités et parcours en pratique autonome : vous êtes responsable de votre propre sécurité.\n\n- Chaque pratiquants est équipés par nos soins. Tout équipements enlevés doit être remis et contrôlés par un opérateur.\n- Le pratiquant doit obligatoirement porter les équipements de protection individuel (EPI) fourni par l’établissement Atout Branches : baudrier, casque et gants. Il est interdit d’utiliser son propre équipement.\n- En cas de problème, prévenir un opérateur par tout moyen utile. Des sifflets sont à votre disposition sur des parcours. Les opérateurs sont facilement reconnaissables avec leurs teeshirt Atout Branches.',NULL),(9,'Réglement intérieur','IL EST INTERDIT :','- D’accéder à une activité sans avoir l’âge et le forfait requis. Il est possible d’être surclasser sur accord du responsable du site pour le PAH.\n- D’Interrompre et de quitter un parcours sans l’autorisation et l’assistance d’un opérateur. Des échelles sont présente sur certains parcours afin de pouvoir quitter celui-ci en toute sécurité.\n- De retirer sont équipements de protection individuel (baudriers, casque et gants) sur les parcours.\n- De venir directement en aide à un pratiquant sur les parcours, de monter sur les parcours sans baudriers, d’utiliser une échelle pour monter sur un parcours. Seuls les employés d’Atout Branches sont habilités à la faire.\n- Des sortir de l’enceinte du parc avec tous type d’équipements appartenant au parc.\n- De retirer le matériel en dehors de la plateforme d’équipement PAH.\n- De fumer dans toute l’enceinte du parc. Une zone fumeur est à votre disposition à l’extérieur et au niveau du portail d’entrée.',NULL),(10,'Réglement intérieur','ASSURANCE ET CONTROLE DES INSTALATIONS','Dans le cadre de l’exploitation de son parc, Atout Branches a soumis à un contrat d’assurance en responsabilité civil auprès de AXA. La société Atout Branches ne pourra être tenue pour responsable de la détérioration, perte ou vols d’effet personnels (tenue, objets …) des pratiquants, des accompagnateurs ou des visiteurs. Ni pour les dégradations ou vols qui pourraient survenir dans les véhicules stationnés sur le parking. Atout Branches décline toute responsabilité en cas d’accident survenu à la suite du non-respect des consignes de sécurités. Atout Branches se réserve le droit de réclamer des indemnités financières aux participants en cas de perte ou de dégradations de matériels. Chaque année, la société SOLEUS control l’état et le bon fonctionnement des installations des parcours acrobatiques en hauteur.',NULL),(11,'Réglement intérieur','OUVERTURE ET FERMETURE DU SITE','Le parc est ouvert de Mars à Octobre, aux périodes indiquées sur les brochures et sur le site internet.\nL’accès au parc, aux zones d’activités et aux structures en hauteur est interdit en dehors des heures d’ouverture.\nEn cas de mauvaises conditions météorologiques (vent fort, orages avec risque de foudre …), la direction se réserve le droit d’évacuer temporairement ou définitivement le parc pour votre propre sécurité.\nLa société Atout Branches n’assure aucunes responsabilités en cas de non-respect des consignes de sécurité et du présent règlement intérieur.\n\nLa direction se réserve le droit d’exclure toutes personnes :\n\n- Ne respectant pas les consignes.\n- Ayant un comportement dangereux pour lui-même ou pour les autres.\n- Irrespectueuses envers le personnel du parc, des installations ou de l’environnement.\nLa direction peut prendre et faire appliquer toute décisions qui lui semble justifié.',NULL),(12,'Buvette','Consultez le plan du parc','Atout Branches est un parc d’activités de loisirs ludo sportives situé à Milly la Forêt au cœur du Parc Naturel Régional du Gâtinais Français, véritable poumon vert au sud de l’Ile-de-France.\nNous accueillons petits et grands pour une journée inoubliables sur les thèmes sports, nature, sensations et réflexions.\nVenez-vous ressourcer dans ce cadre magnifique et réveiller vos sens, les activités que nous vous proposons sont imaginés de manière à s’adapter à tout le monde et dans le respect de la nature et de notre eco system.\nUne buvette, aires de repos et pique-nique et un chalet sanitaire sont à votre disposition.','https://zupimages.net/up/21/05/reu1.jpg'),(13,'Mentions légales','PROPRIETE','Nom de la structure : Atout Branches\nSAS au capital de 5000,00 € enregistrée au RCS EVRY\nSIREN ; 449 058 700\nSiège social : 7 rue du Camp Romain - 91490 Milly la Forêt\nCode APE : 9321Z\nN° de TVA intercommunautaire : FR51 449 058 700\nN° d’enregistrement Jeunesse et Sport : ET000220\nInstallations certifiées conformes à la norme AFNOR XP S52-902-1\nTéléphone : 06 72 46 86 44\nEmail : contact@atoutbranches.com\n\nDirecteur de la publication : Atout Branches\nResponsable de la rédaction : Atout Branches',NULL),(14,'Mentions légales','RÉALISATION','Site réalisé par wildcodeschool\nSARL au Capital de ……………….\nImmatriculée au RCS de ………………….\nSous le numéro …………………\nCourriel : ……………….\nSiège Social : ……………..\n\n',NULL),(15,'Mentions légales','HÉBERGEMENT','Ce site est hébergé par ……………\nSAS au capital de …… enregistrée au RCS ………..\nSous le numéro ………………..\nSiège social : …………………',NULL),(16,'Mentions légales','ACCÈS AU SITE','L’éditeur s’efforce de permettre l’accès au site 24 heures sur 24, 7 jours sur 7, sauf en cas de force majeure ou d’un événement hors du contrôle du Propriétaire, et sous réserve des éventuelles pannes et interventions de maintenance nécessaires au bon fonctionnement du site et des services. Par conséquent, le Propriétaire ne peut garantir une disponibilité du site et/ou des services, une fiabilité des transmissions et des performances en termes de temps de réponse ou de qualité. La responsabilité de l’éditeur ne saurait être engagée en cas d’impossibilité d’accès à ce site et/ou d’utilisation des services.',NULL),(17,'Mentions légales','COPYRIGHT','Tout ce qui est contenu dans le site est protégé par copyright. Il est possible d’accéder à des données, images et textes à usage personnel exclusivement, la reproduction, modification ou publication, totale ou partielle, en est interdire quelles que soient les raisons. Toute utilisation des marques ou logos, sans le consentement écrit du Propriétaire, ou des tiers intéressés constitue une violation entraînant des poursuites judiciaires. Les services du Propriétaire en ligne sont gratuits. L’utilisation du site est entièrement gratuite hors temps de connexion selon les conditions de votre fournisseur d’accès à Internet.',NULL),(18,'Mentions légales','CRÉDIT PHOTOS ET VIDÉOS','©Fabien Traisnel\n©……………\n©…………..',NULL),(19,'Mentions légales','STATISTIQUES WEB','Des statistiques de clics sont produites afin de permettre une amélioration constante de notre site Web. Les clics individuels sont enregistrés de façon anonyme et ne peuvent être réassociés à des utilisateurs spécifiques. Loi du 6 janvier 1978 relative à l’informatique et aux libertés. Nous protégeons votre vie privée. Le Propriétaire protège votre vie privée à double titre. En accord avec nos mesures internes sur la confidentialité, nous transférons vos données, exclusivement aux sociétés distributeurs agréés membres du réseau commercial du Propriétaire, pour leur permettre de vous contacter au plus tôt. D’autre part, conformément à la loi Informatique et Libertés (article 34 de la loi n°78-17 du 6 janvier 1978), les données nominatives vous concernant que vous communiquerez sur le site ne seront utilisées à des fins commerciales et de marketing qu’avec votre agrément. Conformément à la loi « informatique et liberté » du 6 janvier 1978, vous bénéficiez d’un droit d’accès, de rectification et de suppression des données vous concernant, ainsi que du droit de vous opposer au traitement de ces données pour des motifs légitimes ou à leur utilisation à des fins de prospection, notamment commerciale.',NULL),(20,'Mentions légales','COOKIES','Un cookie est un petit fichier texte enregistré par un site Web sur votre disque dur. Les cookies n’endommagent nullement votre ordinateur et ne contiennent pas de virus. Les cookies de nos pages Web ne recueillent aucune donnée personnelle vous concernant. À tout moment, vous pouvez désactiver l’utilisation de cookies par le biais du paramétrage de votre navigateur. La durée de conservation de ces informations dans votre ordinateur est de 30 jours. En règle générale, nos sites Web contiennent des cookies uniquement à des fins d’évaluation statistique anonyme et pour améliorer la navigation des internautes. Si ces cookies devaient, en outre, être utiles dans des cas particuliers, vous en êtes informés à l’endroit correspondant.',NULL),(21,'Mentions légales','MODALITÉS DU SITE','L’utilisation des services offerts par le site implique l’acceptation de ce qui est exposé ci-dessous. Ces indications sont susceptibles de modification, nous vous invitons à les consulter très régulièrement pour vérifier le contenu. Le Propriétaire du site apporte le plus grand soin et met en œuvre tout moyen pour diffuser des informations de qualité. Le Propriétaire ne peut toutefois pas garantir de manière absolue l’exactitude et l’exhaustivité de l’ensemble de ces informations. Ces informations et/ou documents sont susceptibles de contenir des inexactitudes techniques et des erreurs typographiques. Il est fortement recommandé de vérifier l’exactitude et la pertinence des informations et/ou documents mis à disposition sur ce site. Le Propriétaire se réserve le droit de les corriger, dès que ces erreurs sont portées à sa connaissance. Les informations et/ou documents disponibles sur ce site sont susceptibles d’être modifiés à tout moment, et peuvent avoir fait l’objet de mises à jour. En particulier, ils peuvent avoir fait l’objet d’une mise à jour entre le moment de leur téléchargement et celui où l’utilisateur en prend connaissance. Le Propriétaire ne représente pas, ne garantit pas, ne cautionne pas, ni ne détient aucune responsabilité sur des sites extérieurs pour lesquels il pourrait exister des liens depuis ce site ou vice-versa. Tout site extérieur que vous pouvez visiter à partir d’un lien hypertexte depuis ce site est en dehors du contrôle du Propriétaire et vous le visitez à vos propres risques. Le Propriétaire ne pourra en aucun cas être tenu pour responsable du contenu des sites ainsi accessibles, ou des éventuelles collectes et transmission de données personnelles, installation de cookies ou tout autre procédé tendant aux mêmes fins, effectués par ces sites.',NULL),(22,'Mentions légales','INFORMATIONS TECHNIQUES / SÉCURITÉ','Il est rappelé que le secret des correspondances n’est pas garanti sur le réseau Internet. Par ailleurs, il appartient à chaque utilisateur d’internet de prendre les mesures appropriées de façon à protéger ses propres données et / ou logiciels de la contamination d’éventuels virus circulants sur Internet.',NULL),(23,'Mentions légales','MODIFICATION DES MENTIONS LÉGALES ET CONDITIONS D’UTILISATION','Le Propriétaire se réserve la possibilité de modifier, à tout moment et sans préavis, les présentes conditions d’utilisation afin de les adapter aux évolutions du site et/ou de son exploitation. L’utilisateur s’engage donc à les consulter régulièrement.',NULL),(24,'Politique de confidentialité','1. INTRODUCTION','Cette politique de confidentialité vous explique comment l’entreprise Atout Branches utilise vos données personnelles lorsque vous visitez notre site et interagissez avec nous.\nIl est important que vous lisiez la présente politique de confidentialité afin que vous soyez conscient des raisons pour lesquelles nous utilisons vos données et comment nous le faisons.\nLa présente politique de confidentialité a été réalisée le 06/11/2020.\nSi vous avez des questions ou si vous souhaitez exercer votre droit à la protection de la vie privée, veuillez suivre les instructions de la présente politique de confidentialité.',NULL),(25,'Politique de confidentialité','2. LES DONNÉES PERSONNELLES QUE NOUS RECUEILLONS','Les données personnelles, ou les informations personnelles, signifient toute information à propos d’un individu pouvant servir à l’identifier :\nles données d’identité comprennent le titre, le prénom, le nom, le nom d’utilisateur ou identifiant similaire, ainsi qu’une version cryptée d’un identifiant/mot de passe.\nles données de contact comprennent les adresses (e-mail et postale) et les numéros de téléphone.\nles données techniques comprennent votre adresse IP, vos données de connexion, le type et la version de votre navigateur, votre fuseau horaire et votre localisation, les types et versions de plug-in de votre navigateur, votre système et votre plateforme d’exploitation, et d’autres technologies sur les appareils que vous utilisez pour accéder à ce site Internet.\nElles sont utilisées pour mesurer l’audience du site wildcodeschool.\nles données de marketing et de communication comprennent vos préférences et votre profil concernant la réception ou non des publicités des sites tiers (Google), concernant la visualisation de vidéo YouTube, ou encore la réservation en ligne.\nN’oubliez pas que si vous choisissez de ne pas partager de données personnelles avec nous ou refusez certaines autorisations de contact, nous ne pourrons peut-être pas vous fournir les services demandés.',NULL),(26,'Politique de confidentialité','3. COMMENT VOS DONNÉES PERSONNELLES SONT-ELLES RECUEILLIES ?','Nous utilisons diverses fonctionnalités et technologies en mesure de collecter des données vous concernant :\nlorsque vous utilisez le formulaire de contact sur notre site (Données d’identité et de contact)\nlorsque nous utilisons des solutions techniques tierces pour les mesures d’audience (Google Analytics), ou l’affichage de vidéos (YouTube). (Données techniques)\nlorsque nous utilisons des solutions marketing tierces, publicités ciblées (Facebook, Google, Digitaleo)\nlorsque vous réservez en ligne',NULL),(27,'Politique de confidentialité','4. UTILISATION DE VOS DONNÉES PERSONNELLES.','Nous utiliserons uniquement vos données personnelles conformément à la loi. Généralement, vos données personnelles seront utilisées dans les cas suivants :\n\n\nafin de répondre à votre demande de devis via notre formulaire de contact,\nafin de vous permettre de vous abonner à notre newsletter,\nafin de vous permettre de réserver une date de sortie,\nafin de nous permettre d’effectuer des mesures d’audience sur notre site,\nafin de vous faire profiter des fonctionnalités et du ciblage publicitaire de certains grands acteurs du web (Google, YouTube, Facebook).',NULL),(28,'Politique de confidentialité','5. UTILISATION DES COOKIES.','Un « cookie » est un fichier déposé par un site web sur votre terminal (ordinateur, tablette, smartphone).\nLes cookies stockent des informations de navigation, telles que des préférences de navigation ou des informations de profil. Ils sont omniprésents et largement utilisés sur tous les sites web.\nSur le site Atout Branches certains cookies sont indispensables au bon fonctionnement de notre plate-forme web et au confort des utilisateurs.\nD’autres sont déposés par des services tiers, pour le visionnage de vidéo (YouTube), pour les mesures d’audience (Analytics), et pour des publicités ciblées (Google double Click), pour les interactions avec les réseaux sociaux, ou pour des fonctionnalités diverses telles que la réservation en ligne. Nous ne contrôlons pas les cookies installés par ces services tiers et nous vous invitons à consulter leur politique de confidentialité.',NULL),(29,'Politique de confidentialité','6. ACCEPTATION OU RÉFUTATION DES COOKIES.\n','Si vous ne souhaitez pas que le site Atout Branches dépose de cookies sur votre terminal, vous pouvez paramétrer votre navigateur afin qu’il refuse tout ou partie des cookies. Pour le site Atout Branches spécifiquement, pour les sites que vous désignerez, ou encore pour l’ensemble des sites que vous visiterez. Le paramétrage des navigateurs est spécifique pour chacun d’entre-eux. Nous vous proposons ici les liens vers la documentation des navigateurs les plus courants :\n\nChrome Firefox Internet Explorer Microsoft Edge Opéra (mac) Opéra (Windows) Safari 7 Safari IOS\n\nPour les cookies de mesures d’audience, il est également possible d’installer une extension (créer un lien) sur vos navigateurs.\nPour les cookies publicitaires de Google, vous pouvez paramétrer vos préférences directement ICI. (créer un lien)\n\n\nNous attirons cependant votre attention sur le fait que certains cookies sont parfois indispensables au bon fonctionnement des sites web.\nC’est notamment le cas pour celui de Forêt Adrénaline.\nEn les refusant vous pourrez ne pas pouvoir profiter de certaines de nos fonctionnalités.',NULL),(30,'Politique de confidentialité','7. DIVULGATION DE VOS DONNÉES PERSONNELLES.','La société Atout Branches s’engage à ne pas divulguer vos données d’identité et de contact et de les utiliser strictement dans le cadre de notre relation commerciale. Les données techniques et marketing pourront être partagés avec des services tiers dans le cadre de l’analyse de l’audience du site d’Atout Branches (Google Analytics), du visionnage de vidéo (YouTube), de fonctionnalités telles que la réservation en ligne, de publicités ciblées (Double-Click – Google).\nNous vous invitons à consulter les politiques de confidentialité de ces services tiers.',NULL),(31,'Politique de confidentialité','8. SÉCURITÉ DES DONNÉES.','Nous avons mis en place des mesures de sécurité pour protéger l’intégrité de notre plate-forme web et par conséquence de vos données personnelles. Le protocole https assure le chiffrage et l’intégrité des transferts de données. Nous profitons également des mesures de sécurité mises en place par notre hébergeur.',''),(32,'Politique de confidentialité','9. VOTRE CONTRÔLE DE VOS DONNÉES PERSONNELLES.','Conformément au règlement général sur la protection des données personnelles nous nous engageons à :\nvous permettre d’effectuer une demande d’accès aux données vous concernant, Vous permettre d’obtenir une copie de vos données personnelles dans un format courant (par exemple un fichier .csv) ;\nvous permettre de nous demander de rectifier des données personnelles vous concernant qui seraient incomplètes ou inexactes,\nvous permettre de nous demander de supprimer les données personnelles que nous possédons et vous concernant,\nPour cela, nous vous invitons à nous envoyer un courrier en recommandé à Atout Branches, Route de Boutigny, 91490 Milly-la-Forêt, en précisant : votre adresse IP, adresse email, Nom et Prénom afin de bien supprimer l’intégralité de ces données.\n\nNous essayons de répondre à toutes les demandes légitimes dans un délai d’un mois. Ce délai d’un mois peut être dépassé dans le cas où votre demande est particulièrement complexe ou si vous en avez fait plusieurs. Dans ce cas, nous vous préviendrons et vous tiendrons informé. Les données personnelles collectées par Atout Branches sont sous la responsabilité du délégué à la protection des données (DPO). En cas de difficulté en lien avec la gestion de vos données personnelles, vous pouvez adresser une réclamation auprès du délégué à la protection des données personnelles ou auprès de la CNIL ou de toute autre autorité compétente.',''),(33,'Bannière Mentions Légales','','','https://zupimages.net/up/21/06/7hjt.jpeg'),(34,'Bannière Politique','','','https://zupimages.net/up/21/06/g2nh.jpeg'),(35,'Bannière Règlement','',NULL,'https://zupimages.net/up/21/06/vzgm.jpg'),(36,'Plan du parc','',NULL,'https://zupimages.net/up/21/06/ot91.png'),(37,'','',NULL,NULL);
/*!40000 ALTER TABLE `info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `panier`
--

DROP TABLE IF EXISTS `panier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `panier` (
  `id` int NOT NULL AUTO_INCREMENT,
  `prix` int NOT NULL,
  `text` varchar(400) DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `panier`
--

LOCK TABLES `panier` WRITE;
/*!40000 ALTER TABLE `panier` DISABLE KEYS */;
/*!40000 ALTER TABLE `panier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parc`
--

DROP TABLE IF EXISTS `parc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parc` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `text` varchar(10000) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parc`
--

LOCK TABLES `parc` WRITE;
/*!40000 ALTER TABLE `parc` DISABLE KEYS */;
INSERT INTO `parc` VALUES (1,'','Atout Branches est un parc d’activités de loisirs ludo sportives situé à Milly la Forêt au cœur du Parc Naturel Régional du Gâtinais Français, véritable poumon vert au sud de l’Ile-de-France.\nNous accueillons petits et grands pour une journée inoubliables sur les thèmes sports, nature, sensations et réflexions.\nVenez-vous ressourcer dans ce cadre magnifique et réveiller vos sens, les activités que nous vous proposons sont imaginés de manière à s’adapter à tout le monde et dans le respect de la nature et de notre eco system.\nUne buvette, aires de repos et pique-nique et un chalet sanitaire sont à votre disposition.',''),(2,'plan du Parc','Consultez le','https://zupimages.net/up/21/06/4gj8.jpeg'),(3,'Notre buvette','Après l\'effort, le réconfort. Vous avez besoin de recharger les batteries. Situé au cœur du parc, notre espace buvette et snacking ombragé n’est pas seulement réservé qu’aux pratiquants des activités. Nous vous attendrons avec plaisir pour une petite pause gourmande au niveau du chalet d’accueil/buvette. Des aires de pique-nique avec des tables et bancs sont à votre disposition gratuitement. Nouveauté pour 2021, Vous pouvez privatiser votre terrasse aérienne. Pique-niquer, fêter son anniversaire, organiser un EVJF et EVG ou tout simplement se reposer… Profitez d’un lieu atypique et unique à l’abri des regards.','https://zupimages.net/up/21/06/573e.png'),(4,'Nos Engagements','Prendre conscience des enjeux environnementaux c’est agir localement mais penser à l’échelle planétaire, puisque nous partageons une seul et même planète.\nLes structures du Parc et ses nombreuses activités s’intègrent parfaitement à leur environnement, sans répercussion sur la faune et la flore. Promouvoir les comportements écologiquement responsables de chacun à travers des réflexions , c’est ce que nous vous proposons avec nos jeux de réflexions. (chasse au trésors, parcours d’énigmes et escape Game).','https://zupimages.net/up/21/06/4x0m.jpeg'),(5,'Consultez notre carte','ici',''),(6,'Carte parc','','https://zupimages.net/up/21/06/ot91.png'),(7,'Image Bannière','','https://zupimages.net/up/21/06/sfrf.jpeg');
/*!40000 ALTER TABLE `parc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `park_hours`
--

DROP TABLE IF EXISTS `park_hours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `park_hours` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data_start` datetime NOT NULL,
  `data_closing` datetime NOT NULL,
  `hour_start` datetime NOT NULL,
  `hour_closing` datetime NOT NULL,
  `opening_day` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `park_hours`
--

LOCK TABLES `park_hours` WRITE;
/*!40000 ALTER TABLE `park_hours` DISABLE KEYS */;
/*!40000 ALTER TABLE `park_hours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `petitCarousel`
--

DROP TABLE IF EXISTS `petitCarousel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `petitCarousel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(200) DEFAULT NULL,
  `text` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `petitCarousel`
--

LOCK TABLES `petitCarousel` WRITE;
/*!40000 ALTER TABLE `petitCarousel` DISABLE KEYS */;
INSERT INTO `petitCarousel` VALUES (1,'https://zupimages.net/up/21/06/4gj8.jpeg','Texte 1'),(2,'https://zupimages.net/up/21/06/bm1q.jpeg\n','Texte 2'),(3,'https://zupimages.net/up/21/06/49v0.jpg','Texte 3'),(4,'https://zupimages.net/up/21/06/doyi.jpg','Texte 4'),(5,'https://zupimages.net/up/21/06/vzgm.jpg','Texte 5'),(6,'https://zupimages.net/up/21/06/g2nh.jpeg','Texte 6');
/*!40000 ALTER TABLE `petitCarousel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo`
--

LOCK TABLES `photo` WRITE;
/*!40000 ALTER TABLE `photo` DISABLE KEYS */;
INSERT INTO `photo` VALUES (1,'Activités','https://zupimages.net/up/21/06/ooss.jpg'),(2,'Groupes','https://zupimages.net/up/21/06/qd79.jpeg'),(3,'Tarifs','https://zupimages.net/up/21/06/4x0m.jpeg'),(4,'Horaires','https://zupimages.net/up/21/06/4gj8.jpeg'),(5,'Où nous trouver','https://zupimages.net/up/21/06/bm1q.jpeg'),(6,'Réserver','https://zupimages.net/up/21/06/49v0.jpg'),(7,'Réglement intérieur','https://zupimages.net/up/21/06/doyi.jpg'),(8,'Mentions légales','https://zupimages.net/up/21/06/vzgm.jpg'),(9,'Politique de confidentialité','https://zupimages.net/up/21/06/g2nh.jpeg'),(10,'Le parc','https://zupimages.net/up/21/06/7hjt.jpeg'),(11,'Nous contacter','https://zupimages.net/up/21/06/v6tl.jpeg'),(12,'Organisez votre journée','https://zupimages.net/up/21/06/sfrf.jpeg'),(13,'',''),(14,'','');
/*!40000 ALTER TABLE `photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price`
--

DROP TABLE IF EXISTS `price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `price` (
  `id` int NOT NULL AUTO_INCREMENT,
  `activity_price` int NOT NULL,
  `age_min` int DEFAULT NULL,
  `age_max` int DEFAULT NULL,
  `discount` int DEFAULT NULL,
  `activity_id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_price_1_idx` (`activity_id`),
  CONSTRAINT `fk_price_1` FOREIGN KEY (`activity_id`) REFERENCES `activity` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price`
--

LOCK TABLES `price` WRITE;
/*!40000 ALTER TABLE `price` DISABLE KEYS */;
/*!40000 ALTER TABLE `price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snack`
--

DROP TABLE IF EXISTS `snack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `snack` (
  `id` int NOT NULL AUTO_INCREMENT,
  `drink` varchar(45) DEFAULT NULL,
  `food` varchar(45) DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snack`
--

LOCK TABLES `snack` WRITE;
/*!40000 ALTER TABLE `snack` DISABLE KEYS */;
/*!40000 ALTER TABLE `snack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarifs`
--

DROP TABLE IF EXISTS `tarifs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarifs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `text` varchar(10000) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarifs`
--

LOCK TABLES `tarifs` WRITE;
/*!40000 ALTER TABLE `tarifs` DISABLE KEYS */;
INSERT INTO `tarifs` VALUES (1,'Tarifs individuels','',''),(2,'PARCOURS ACROBATIQUES EN HAUTEUR (ACCÈS AUX MURS D’ESCALADE ET À L’AIRE DE JEUX ENFANTS)','',''),(3,'Pitchoun','Enfant de 2 à 5 ans\nParcours Piccolo, Pitchoun et Colibri','11,00€'),(4,'Oustiti','Enfant de 2 à 7 ans, la taille requise pour le ouistiti est de 1m\nParcours Picolo, Pitchoun, Colibri et Ouistiti','15,00€'),(5,'Enfant','De 4 à 7 ans Taille requise : 1m20 et 1,40 pour le bleu\nParcours Pitchoun, Colibri, Ouistiti, vert, jaune, bleu','16,00€'),(6,'Junior','- de 15 ans et + de 1m40\nParcours vert, jaune, bleu, rouge 1 et 2','19,00€'),(7,'Adulte','+ de 15 ans\nParcours vert, jaune, bleu, rouge 1 et 2, panoramique, noir et Ebene','25,00€'),(8,'Nocturne','','30,00€'),(9,'FORESCAPE - ESCAPE GAME','Une aventure ludique et sportive qui fera appel à toute votre ingéniosité.\n\n90 € la séance pour un groupe jusqu\'à 8 joueurs',''),(10,'PARCOURS D\'ENIGMES AU SOL','Jeu d\'orientation dans les chemins du parc. Plusieurs Thèmes\n\n20 € le livret de jeu pour jouer seul ou en groupe.',''),(11,'CHASSE AU TRESOR','Retrouvez les coffres forts cachés dans le parc pour reconstituer la clé du mystère.\n\n15 € le jeu pour jouer seul ou en groupe.',''),(12,'ATOUT SPIDER SEUL ET AIRE DE JEUX ENFANTS NOUVEAUTE 2021','De 3 à 7 ans : 8 €\n\nSupplément de 4 € pour les enfants ayant pris une formule parcours aériens en hauteur.',''),(13,'LASER GAME NOUVEAUTE 2021','A partir de 7 ans\n\nDe 8 à 20 personnes\n\n15€ de l\'heure',''),(14,'MUR D’ESCALADE NOUVEAUTE 2021','Compris avec l’accès au parcours aérien en hauteur',''),(15,'ANNIVERSAIRE','A partir de 6 enfants minimum.\n\nFormule avec goûter : Tarifs normale de l’entrée plus un supplément de 6 € par enfant dès 6 enfants et de 5 € par enfants dès 10 enfants. Table réservé, gâteau au chocolat, bougies et fontaine, boissons au choix à confirmer sur place, un cornet de bonbons par enfant et tout le nécessaire au goûter + en cadeau, une entrée à tarif réduit de 50 % pour l’enfant qui a fêté son anniversaire et qui reviendra dans l’année. Formule sans goûter : Tarifs normale de l’entrée plus un supplément de 10 € table réservé + en cadeau, une entrée à tarif réduit de 50 % pour l’enfant qui a fêté son anniversaire et qui reviendra dans l’année. vous êtes libre d’apporter ce que vous souhaitez. Pour le paiement de l\'acompte, rendez-vous sur l\'onglet \"billetterie en ligne \"acompte anniversaire\". Le reste dû sera à payer sur le parc le jour de votre sortie (montant calculé sur le nombre d\'enfants réellement présents le jour de l\'anniversaire avec un minimum de 6 enfants).',''),(16,'TERRASSES AERIENNES PRIVATIVES NOUVEAUTE 2021','A partir de 30 euros la journée.',''),(17,'TARIFS GROUPE','',''),(18,'TARIFS DE GROUPE À PARTIR DE 10 PERSONNES','10% sur le tarif de l’entrée, 72 heures à l’avance. Faite votre demande via le formulaire « tarifs de groupe ».\n\n',''),(19,'Titre provisoire','Nous consulter / faite votre demande via notre adresse mail : contact@atoutbranches.com (créer un lien)\n\nPaiement possible en espèces, Carte Bancaire, chèques, chèques vacances ANCV.\nMerci de bien préremplir vos chèques vacances avant votre arrivée sur le parc.\nEntrée gratuite pour les non pratiquants.\nICI Réservation en ligne conseillé. (créer un lien)',''),(20,'TARIFS PACS MULTI ACTIVITES','Pac 2 activités au choix : remise de 10% sur les deux activités.\n\nPac 3 activités au choix : remise de 15% sur les trois activités.','');
/*!40000 ALTER TABLE `tarifs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-10 15:30:23
