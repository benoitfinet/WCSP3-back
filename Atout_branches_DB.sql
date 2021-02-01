-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: atout_branches
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.3

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
  `name` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
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
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
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
  `name` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  `price` int NOT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home`
--

LOCK TABLES `home` WRITE;
/*!40000 ALTER TABLE `home` DISABLE KEYS */;
INSERT INTO `home` VALUES (1,'Atout branches','Au cœur du Parc naturel régional du Gâtinais français','Atout Branches est un parc d’activités de loisirs ludo sportives situé à Milly la Forêt au cœur du Parc Naturel Régional du Gâtinais Français, véritable poumon vert au sud de l’Ile-de-France. Nous accueillons petits et grands pour une journée inoubliables sur les thèmes sports, nature, sensations et réflexions. Venez-vous ressourcer dans ce cadre magnifique et réveiller vos sens, les activités que nous vous proposons sont imaginés de manière à s’adapter à tout le monde et dans le respect de la nature et de notre eco system. Une buvette, aires de repos et pique-nique et un chalet sanitaire sont à votre disposition.',NULL),(2,'Nos activités','Garantie 100% FUN','NE PAS EFFACER',NULL),(3,'Evènements','Nocturne','Evénements Alti’Max propose des mois de Mai à Septembre une soirée nocturne tous les premiers samedi du mois et à partir de 6 ans. Réservation obligatoire, places limitées. Fête des mères et fête de pères. 50% sur le prix de l’entrée pour le parent pratiquant sous condition de venir en famille de trois personnes minimum. Privatisation du parc ou pour toutes demandes particulières, contactez-nous : altimax78@gmail.com',NULL),(4,'Offres','Privatisez votre terrasse','Privatisez votre terrasse Vous pouvez privatiser votre terrasse aérienne à la journée. Equipé d’une table, de bancs et d’un coffre fermé par cadenas afin d’y déposer vos affaires. Vous pourrez ainsi profiter de votre pause déjeuner, gouter ou anniversaire en hauteur avec la vue sur le parc et à l’écart.',NULL),(5,'Des offres pour tout publics','En famille, entre amis, entre collègues ...','NE PAS EFFACER',NULL);
/*!40000 ALTER TABLE `home` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info`
--

DROP TABLE IF EXISTS `info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  `subtitle` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info`
--

LOCK TABLES `info` WRITE;
/*!40000 ALTER TABLE `info` DISABLE KEYS */;
INSERT INTO `info` VALUES (1,'Mentions Légales','PROPRIÉTÉ\n\nNom de la structure : Atout Branches\nSAS au capital de 5000,00 € enregistrée au RCS EVRY\nSIREN ; 449 058 700 \nSiège social : 7 rue du Camp Romain - 91490 Milly la Forêt\nCode APE : 9321Z\nN° de TVA intercommunautaire : FR51 449 058 700\nN° d’enregistrement Jeunesse et Sport : ET000220\nInstallations certifiées conformes à la norme AFNOR XP S52-902-1\nTéléphone : 06 72 46 86 44\nEmail : contact@atoutbranches.com\n\nDirecteur de la publication : Atout Branches\nResponsable de la rédaction : Atout Branches\n\n\nRÉALISATION\n\nSite réalisé par wildcodeschool\nSARL au Capital de ……………….\nImmatriculée au RCS de ………………….\nSous le numéro …………………\nCourriel : ……………….\nSiège Social : ……………..\n\nHÉBERGEMENT\n\nCe site est hébergé par ……………\nSAS au capital de …… enregistrée au RCS ………..\nSous le numéro ………………..\nSiège social : …………………\n\nACCÈS AU SITE\n\nL’éditeur s’efforce de permettre l’accès au site 24 heures sur 24, 7 jours sur 7, sauf en cas de force majeure ou d’un événement hors du contrôle du Propriétaire, et sous réserve des éventuelles pannes et interventions de maintenance nécessaires au bon fonctionnement du site et des services. Par conséquent, le Propriétaire ne peut garantir une disponibilité du site et/ou des services, une fiabilité des transmissions et des performances en termes de temps de réponse ou de qualité. La responsabilité de l’éditeur ne saurait être engagée en cas d’impossibilité d’accès à ce site et/ou d’utilisation des services.\n\nCOPYRIGHT\n\nTout ce qui est contenu dans le site est protégé par copyright. Il est possible d’accéder à des données, images et textes à usage personnel exclusivement, la reproduction, modification ou publication, totale ou partielle, en est interdire quelles que soient les raisons. Toute utilisation des marques ou logos, sans le consentement écrit du Propriétaire, ou des tiers intéressés constitue une violation entraînant des poursuites judiciaires. Les services du Propriétaire en ligne sont gratuits. L’utilisation du site est entièrement gratuite hors temps de connexion selon les conditions de votre fournisseur d’accès à Internet.\n\nCRÉDIT PHOTOS ET VIDÉOS\n\n©Fabien Traisnel\n©……………\n©…………..\n\nSTATISTIQUES WEB\n\nDes statistiques de clics sont produites afin de permettre une amélioration constante de notre site Web. Les clics individuels sont enregistrés de façon anonyme et ne peuvent être réassociés à des utilisateurs spécifiques. Loi du 6 janvier 1978 relative à l’informatique et aux libertés. Nous protégeons votre vie privée. Le Propriétaire protège votre vie privée à double titre. En accord avec nos mesures internes sur la confidentialité, nous transférons vos données, exclusivement aux sociétés distributeurs agréés membres du réseau commercial du Propriétaire, pour leur permettre de vous contacter au plus tôt. D’autre part, conformément à la loi Informatique et Libertés (article 34 de la loi n°78-17 du 6 janvier 1978), les données nominatives vous concernant que vous communiquerez sur le site ne seront utilisées à des fins commerciales et de marketing qu’avec votre agrément. Conformément à la loi « informatique et liberté » du 6 janvier 1978, vous bénéficiez d’un droit d’accès, de rectification et de suppression des données vous concernant, ainsi que du droit de vous opposer au traitement de ces données pour des motifs légitimes ou à leur utilisation à des fins de prospection, notamment commerciale.\n\nCOOKIES\n\nUn cookie est un petit fichier texte enregistré par un site Web sur votre disque dur. Les cookies n’endommagent nullement votre ordinateur et ne contiennent pas de virus. Les cookies de nos pages Web ne recueillent aucune donnée personnelle vous concernant. À tout moment, vous pouvez désactiver l’utilisation de cookies par le biais du paramétrage de votre navigateur. La durée de conservation de ces informations dans votre ordinateur est de 30 jours. En règle générale, nos sites Web contiennent des cookies uniquement à des fins d’évaluation statistique anonyme et pour améliorer la navigation des internautes. Si ces cookies devaient, en outre, être utiles dans des cas particuliers, vous en êtes informés à l’endroit correspondant.\n\nMODALITÉS DU SITE\n\nL’utilisation des services offerts par le site implique l’acceptation de ce qui est exposé ci-dessous. Ces indications sont susceptibles de modification, nous vous invitons à les consulter très régulièrement pour vérifier le contenu. Le Propriétaire du site apporte le plus grand soin et met en œuvre tout moyen pour diffuser des informations de qualité. Le Propriétaire ne peut toutefois pas garantir de manière absolue l’exactitude et l’exhaustivité de l’ensemble de ces informations. Ces informations et/ou documents sont susceptibles de contenir des inexactitudes techniques et des erreurs typographiques. Il est fortement recommandé de vérifier l’exactitude et la pertinence des informations et/ou documents mis à disposition sur ce site. Le Propriétaire se réserve le droit de les corriger, dès que ces erreurs sont portées à sa connaissance. Les informations et/ou documents disponibles sur ce site sont susceptibles d’être modifiés à tout moment, et peuvent avoir fait l’objet de mises à jour. En particulier, ils peuvent avoir fait l’objet d’une mise à jour entre le moment de leur téléchargement et celui où l’utilisateur en prend connaissance. Le Propriétaire ne représente pas, ne garantit pas, ne cautionne pas, ni ne détient aucune responsabilité sur des sites extérieurs pour lesquels il pourrait exister des liens depuis ce site ou vice-versa. Tout site extérieur que vous pouvez visiter à partir d’un lien hypertexte depuis ce site est en dehors du contrôle du Propriétaire et vous le visitez à vos propres risques. Le Propriétaire ne pourra en aucun cas être tenu pour responsable du contenu des sites ainsi accessibles, ou des éventuelles collectes et transmission de données personnelles, installation de cookies ou tout autre procédé tendant aux mêmes fins, effectués par ces sites.\n\nINFORMATIONS TECHNIQUES / SÉCURITÉ\n\nIl est rappelé que le secret des correspondances n’est pas garanti sur le réseau Internet. Par ailleurs, il appartient à chaque utilisateur d’internet de prendre les mesures appropriées de façon à protéger ses propres données et / ou logiciels de la contamination d’éventuels virus circulants sur Internet.\n\nModification des mentions légales et conditions d’utilisation\nLe Propriétaire se réserve la possibilité de modifier, à tout moment et sans préavis, les présentes conditions d’utilisation afin de les adapter aux évolutions du site et/ou de son exploitation. L’utilisateur s’engage donc à les consulter régulièrement.',NULL),(2,'Politique de confidentialité','Bienvenue sur la page de la politique de confidentialité d’ Atout Branches qui respecte votre vie privée et s’engage à protéger vos données personnelles.\n\n1. Introduction\n\nCette politique de confidentialité vous explique comment l’entreprise Atout Branches utilise vos données personnelles lorsque vous visitez notre site et interagissez avec nous.\nIl est important que vous lisiez la présente politique de confidentialité afin que vous soyez conscient des raisons pour lesquelles nous utilisons vos données et comment nous le faisons.\nLa présente politique de confidentialité a été réalisée le 06/11/2020.\nSi vous avez des questions ou si vous souhaitez exercer votre droit à la protection de la vie privée, veuillez suivre les instructions de la présente politique de confidentialité.\n\n\n2. Les données personnelles que nous recueillons\n\nLes données personnelles, ou les informations personnelles, signifient toute information à propos d’un individu pouvant servir à l’identifier :\nles données d’identité comprennent le titre, le prénom, le nom, le nom d’utilisateur ou identifiant similaire, ainsi qu’une version cryptée d’un identifiant/mot de passe.\nles données de contact comprennent les adresses (e-mail et postale) et les numéros de téléphone.\nles données techniques comprennent votre adresse IP, vos données de connexion, le type et la version de votre navigateur, votre fuseau horaire et votre localisation, les types et versions de plug-in de votre navigateur, votre système et votre plateforme d’exploitation, et d’autres technologies sur les appareils que vous utilisez pour accéder à ce site Internet.\nElles sont utilisées pour mesurer l’audience du site wildcodeschool.\nles données de marketing et de communication comprennent vos préférences et votre profil concernant la réception ou non des publicités des sites tiers (Google), concernant la visualisation de vidéo YouTube, ou encore la réservation en ligne.\nN’oubliez pas que si vous choisissez de ne pas partager de données personnelles avec nous ou refusez certaines autorisations de contact, nous ne pourrons peut-être pas vous fournir les services demandés.\n\n\n3. Comment vos données personnelles sont-elles recueillies ?\n\nNous utilisons diverses fonctionnalités et technologies en mesure de collecter des données vous concernant :\n\n\nlorsque vous utilisez le formulaire de contact sur notre site (Données d’identité et de contact)\nlorsque nous utilisons des solutions techniques tierces pour les mesures d’audience (Google Analytics), ou l’affichage de vidéos (YouTube). (Données techniques)\nlorsque nous utilisons des solutions marketing tierces, publicités ciblées (Facebook, Google, Digitaleo)\nlorsque vous réservez en ligne\n\n\n4. Utilisation de vos données personnelles.\n\nNous utiliserons uniquement vos données personnelles conformément à la loi. Généralement, vos données personnelles seront utilisées dans les cas suivants :\n\n\nafin de répondre à votre demande de devis via notre formulaire de contact,\nafin de vous permettre de vous abonner à notre newsletter,\nafin de vous permettre de réserver une date de sortie,\nafin de nous permettre d’effectuer des mesures d’audience sur notre site,\nafin de vous faire profiter des fonctionnalités et du ciblage publicitaire de certains grands acteurs du web (Google, YouTube, Facebook).\n\n\n5. Utilisation des cookies.\n\nUn « cookie » est un fichier déposé par un site web sur votre terminal (ordinateur, tablette, smartphone).\nLes cookies stockent des informations de navigation, telles que des préférences de navigation ou des informations de profil. Ils sont omniprésents et largement utilisés sur tous les sites web.\nSur le site Atout Branches certains cookies sont indispensables au bon fonctionnement de notre plate-forme web et au confort des utilisateurs.\nD’autres sont déposés par des services tiers, pour le visionnage de vidéo (YouTube), pour les mesures d’audience (Analytics), et pour des publicités ciblées (Google double Click), pour les interactions avec les réseaux sociaux, ou pour des fonctionnalités diverses telles que la réservation en ligne. Nous ne contrôlons pas les cookies installés par ces services tiers et nous vous invitons à consulter leur politique de confidentialité.\n\n6. Acceptation ou réfutation des cookies.\n\nSi vous ne souhaitez pas que le site Atout Branches dépose de cookies sur votre terminal, vous pouvez paramétrer votre navigateur afin qu’il refuse tout ou partie des cookies. Pour le site Atout Branches spécifiquement, pour les sites que vous désignerez, ou encore pour l’ensemble des sites que vous visiterez. Le paramétrage des navigateurs est spécifique pour chacun d’entre-eux. Nous vous proposons ici les liens vers la documentation des navigateurs les plus courants :\n\nChrome Firefox Internet Explorer Microsoft Edge Opéra (mac) Opéra (Windows) Safari 7 Safari IOS\n\nPour les cookies de mesures d’audience, il est également possible d’installer une extension (créer un lien) sur vos navigateurs.\nPour les cookies publicitaires de Google, vous pouvez paramétrer vos préférences directement ICI. (créer un lien)\n\n\nNous attirons cependant votre attention sur le fait que certains cookies sont parfois indispensables au bon fonctionnement des sites web.\nC’est notamment le cas pour celui de Forêt Adrénaline.\nEn les refusant vous pourrez ne pas pouvoir profiter de certaines de nos fonctionnalités.\n\n\n7. Divulgation de vos données personnelles.\n\nLa société Atout Branches s’engage à ne pas divulguer vos données d’identité et de contact et de les utiliser strictement dans le cadre de notre relation commerciale. Les données techniques et marketing pourront être partagés avec des services tiers dans le cadre de l’analyse de l’audience du site d’Atout Branches (Google Analytics), du visionnage de vidéo (YouTube), de fonctionnalités telles que la réservation en ligne, de publicités ciblées (Double-Click – Google).\nNous vous invitons à consulter les politiques de confidentialité de ces services tiers.\n\n\n8. Sécurité des données.\n\nNous avons mis en place des mesures de sécurité pour protéger l’intégrité de notre plate-forme web et par conséquence de vos données personnelles. Le protocole https assure le chiffrage et l’intégrité des transferts de données. Nous profitons également des mesures de sécurité mises en place par notre hébergeur.\n\n\n9. Votre contrôle de vos données personnelles.\n\nConformément au règlement général sur la protection des données personnelles nous nous engageons à :\nvous permettre d’effectuer une demande d’accès aux données vous concernant, Vous permettre d’obtenir une copie de vos données personnelles dans un format courant (par exemple un fichier .csv) ;\nvous permettre de nous demander de rectifier des données personnelles vous concernant qui seraient incomplètes ou inexactes,\nvous permettre de nous demander de supprimer les données personnelles que nous possédons et vous concernant,\nPour cela, nous vous invitons à nous envoyer un courrier en recommandé à Atout Branches, Route de Boutigny, 91490 Milly-la-Forêt, en précisant : votre adresse IP, adresse email, Nom et Prénom afin de bien supprimer l’intégralité de ces données.\n\nNous essayons de répondre à toutes les demandes légitimes dans un délai d’un mois. Ce délai d’un mois peut être dépassé dans le cas où votre demande est particulièrement complexe ou si vous en avez fait plusieurs. Dans ce cas, nous vous préviendrons et vous tiendrons informé. Les données personnelles collectées par Atout Branches sont sous la responsabilité du délégué à la protection des données (DPO). En cas de difficulté en lien avec la gestion de vos données personnelles, vous pouvez adresser une réclamation auprès du délégué à la protection des données personnelles ou auprès de la CNIL ou de toute autre autorité compétente.',NULL),(3,'Réglement intérieur','L’ACCES AU PARC, A TOUTES LES ZONES D’ACTIVITES ET AUX STRUCTURES EN HAUTEUR EST INTERDIT EN DEHORS DES HEURES D’OUVERTURE.\n\nL’accès au site et des différentes activités proposés implique la lecture obligatoire et l’acceptation du présent règlement interne.\nLa pratique des activités sont physiques, le non-respect des règles peut entrainer des blessures.\n\nDESCRIPTION DE LA PRATIQUE ET DES ACTIVITES\n\nAtout Branches est un parc à espace d’activités ludique permettant aux pratiquants des faire plusieurs activités :\n- Parcours acrobatiques en hauteur et VERTIJUMP saut de 12 mètres.\n- Escape Game 100% naturel.\n- Parcours d\'énigmes.\n- Chasse au trésor.\n- Atout Spider / aire de jeux enfants.\n- Laser Game.\n- Murs d’escalade.\n\n- Les parcours acrobatiques en hauteur (PAH), permettent aux pratiquants de cheminer en hauteur de façon autonome et plus ou moins acrobatique, sur et entre les arbres ou autres supports naturels ou non.\nLe parc se compose de plus de 100 ateliers répartis sur 12 parcours de difficultés croissantes.\n\nNOUVEAUTE 2021 : 1 parcours Pitchoun et 1 parcours Rouge N°2\n\nTous les parcours exceptés pitchoune sont équipés d’une ligne de vie continue, garantissant une sécurité des participants tout au long de l’activité.\nLes parcours sont distingués par leurs noms, des chiffres et codes couleurs indiqués par des pancartes à chaque début de parcours.\n\nVERTIJUMP, Une attraction indépendante du parcours. Vous montez à 12 mètres pour un saut avec une chute libre de plusieurs mètres. Oserez sauter ?\n\n- Un escape Game 100% naturel, Un ESCAPE GAME 100% naturel, saurez-vous trouver le refuge et y entrer vous avez 1h pour cela.\nFouillez la forêt à la recherche des objets indispensables pour trouver et déverrouiller la porte d\'accès.\n\n- Un parcours d\'énigmes, Testez vos capacités d\'orientation et votre perspicacité avec les parcours d\'énigmes.\nUn livret de jeu vous donne toutes les instructions pour parcourir la forêt en résolvant les énigmes.\n\n- Une chasse au trésor, La chasse au trésor qui fait appel votre maitrise de l\'orientation.\nRetrouvez les coffres forts cachés dans le parc pour reconstituer la clé du mystère.\n\n- l’Atout Spider / aire de jeux enfants, 100 mètres carré de filets suspendu permet de se déplacer et jouer en toute sécurité. tyrolienne, slackline, Ninja Warrior. NOUVEAUTE 2021.\n\n\n- Le laser Game, une activité ludique et sportive à pratiquer en famille, entre amis ou collaborateurs.\nUniquement des rayons infrarouges sont émis depuis le fusil laser, vous êtes donc virtuellement touché, aucuns risques de blessures avec les billes.\nLes différents scénarios permettent une variante des jeux. Ils permettent de renouveler l’expérience Laser Game en procurant de nouvelles sensations à travers des rôles à jouer. NOUVEAUTE 2021.\n\n- Les murs d’escalade, une expérience de grimpe unique pour tous qui s’adapte aux différents niveaux de pratique en intégrant une valeur ancestrale de l’escalade, le dépassement de soi. NOUVEAUTE 2021.\n\nToutes ces activités proposés par Atout Branches développent l’équilibre, la concentration, la psychomotricité, le mental, enseigne l\'autonomie, aiguise la prise de décision, apprend à penser et à agir sous pression, augmente le niveau de condition physique, développe l\'estime de soi.\nLe suivi de ces consignes est obligatoire en toutes circonstances.\nLe non-respect des consignes peut entrainer des blessures.\n\n\nLes prestations comprennent selon les formules :\n- L’accès aux différentes activités.\n- La fourniture est la mise en place de l’équipement de protection individuelle (EPI) des pratiquants.\n- Les consignes d’utilisation du matériel et les explications de début de séance de chaque activités.\n- La mise en application sur parcours test obligatoire et validé par un opérateur pour le PAH.\n- La surveillance, les conseils et/ou les aides éventuelles en cour de séance.\n\nCONDITIONS D’ACCES AU SITE (APPLICABLE A TOUTES PERSONNES PRESENTES)\n\n- Avant de commencer, vous êtes invité(e) à consulter le plan d’organisation de sécurité et de secours (identification des personnes responsables, numéros de téléphone d’urgence, cheminements à respecter…)\n- Avoir souscrit, au préalable, à une assurance en responsabilité civil.\n- Adopter en toute circonstance un comportement responsable et prudent pour vous, pour les autres personnes et pour le matériel.\n- Respecter la signalisation en vigueur , ne pas gêner les pratiquants en restant à proximité des ateliers.\n- Rester vigilant à l’environnement en faisant attention aux branches, racines et installations.\n- Ne pas courir dans les allées, respecter les balisages et les cheminements au sols pour protéger le site naturel.\n- Ne pas fumer, ni vapoter, ni faire de feux. Il est rappelé que le parc se situe en milieu boisé et sensible. Une zone fumeur est disponible ( zone terrasse près de l’accueil).\n- Garder le site propre. Des poubelles sont mises à votre disposition avec un tri sélectif.\n- La direction se réserve le droit de refuser l’accès au parc et aux installations à toute personne dont elle estimerait qu’elle ne remplit pas les conditions prévu au présent règlement.\n\nCONDITIONS DE PRATIQUE DES ACTIVITES\n\n- S’être acquitté d’un droit d’entrée.\n- Porter une tenue adapté à l’exercices des activités d’extérieur (tenue sportive, chaussures fermés, les cheveux longs doivent être attachés, les foulards et colliers retirés, les lunettes doivent être munies d’un système de maintien).\n- Ne garder sur vous aucuns objets susceptible de tomber. Des casiers sécurisés sont à votre disposition gratuitement.\n- Être en bonne santé et n’être affecté d’aucuns troubles psychologique. La pratique est interdite à toute personne ayant consommé de l’alcool ou toute substances pouvant altérés les capacités de réflexion et physiques.\n- La pratique des activités du parc sont déconseillés aux femmes enceintes. Pour votre sécurité et votre confort, les personnes pesant plus de 100 kg doivent demander l’avis au responsable avant tout achat d’activités.\n- Avoir suivi les explications de début de séance et avoir réalisé le parcours test d’initiation avec succès, celui-ci doit être validé par un opérateur = conditions obligatoire avant l’accès à l’activité de PAH.\n- La signalétique à l’entrée de chaque atelier doit être consultée et respectée comme le matériel, les plates-formes et les ateliers ne devront pas être surchargés.\n- Respecter les consignes de sécurités inscrites sur les panneaux devant chaque zones activités.\n\nToute personne qui a l’issu des explications des consignes de sécurité ne se sent pas capable, physiquement ou moralement d’effectué seul et correctement les manipulations indispensables à une évolution de façon autonome de chaque activités, doit renoncer à la pratique de l’activité. Il en est de même pour toutes personne n’ayant pas réussi la validation du parcours test d’initiation PAH. Aucun remboursement ne sera accordé ultérieurement.\nVous effectuez les différentes activités et parcours en pratique autonome : vous êtes responsable de votre propre sécurité. - Chaque pratiquants est équipés par nos soins. Tout équipements enlevés doit être remis et contrôlés par un opérateur. - Le pratiquant doit obligatoirement porter les équipements de protection individuel (EPI) fourni par l’établissement Atout Branches : baudrier, casque et gants. Il est interdit d’utiliser son propre équipement. - En cas de problème, prévenir un opérateur par tout moyen utile. Des sifflets sont à votre disposition sur des parcours. Les opérateurs sont facilement reconnaissables avec leurs teeshirt Atout Branches.\n\nIL EST INTERDIT :\n\n- D’accéder à une activités sans avoir l’âge et le forfait requis. Il est possible d’être surclasser sur accord du responsable du site pour le PAH. - d’Interrompre et de quitter un parcours sans l’autorisation et l’assistance d’un opérateur. Des échelles sont présente sur certains parcours afin de pouvoir quitter celui-ci en toute sécurité. - De retirer sont équipements de protection individuel (baudriers , casque et gants) sur les parcours. - De venir directement en aide à un pratiquants sur les parcours, de monter sur les parcours sans baudriers, d’utiliser une échelle pour monter sur un parcours. Seul les employés d’Atout Branches sont habilités à la faire. - Des sortir de l’enceinte du parc avec tous type d’équipements appartenant au parc. - De retirer le matériel en dehors de la plateforme d’équipement PAH. - De fumer dans toute l’enceinte du parc. Une zone fumeur est à votre disposition à l’extérieur et au niveau du portail d’entrée.\n\nASSURANCE ET CONTROL DES INSTALATIONS\n\nDans le cadre de l’exploitation de son parc, Atout Branches a soumis à un contrat d’assurance en responsabilité civil auprès de AXA. La société Atout Branches ne pourra être tenue pour responsable de la détérioration, perte ou vols d’effet personnels (tenue, objets …) des pratiquants, des accompagnateurs ou des visiteurs. Ni pour les dégradations ou vols qui pourraient survenir dans les véhicules stationnés sur le parking. Atout Branches décline toute responsabilité en cas d’accident survenu à la suite du non-respect des consignes de sécurités. Atout Branches se réserve le droit de réclamer des indemnités financier aux participants en cas de perte ou de dégradations de matériels. Chaque année, la société SOLEUS control l’état et le bon fonctionnement des installations des parcours acrobatiques en hauteur.\n\nOUVERTURE ET FERMETURE DU SITE\n\nLe parc est ouvert de Mars à Octobre, aux périodes indiquées sur les brochures et sur le site internet.\nL’accès au parc, aux zones d’activités et aux structures en hauteur est interdit en dehors des heures d’ouverture.\nEn cas de mauvaises conditions météorologiques (vent fort, orages avec risque de foudre …), la direction se réserve le droit d’évacuer temporairement ou définitivement le parc pour votre propre sécurité.\nLa société Atout Branches n’assure aucunes responsabilités en cas de non-respect des consignes de sécurité et du présent règlement intérieur.\nLa direction se réserve le droit d’exclure toutes personnes :\n- Ne respectant pas les consignes.\n- Ayant un comportement dangereux pour lui-même ou pour les autres.\n- Irrespectueuses envers le personnels du parc, des installations ou de l’environnement.\n\nLa direction peut prendre et faire appliquer toute décisions qui lui semble justifié.',NULL);
/*!40000 ALTER TABLE `info` ENABLE KEYS */;
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
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo`
--

LOCK TABLES `photo` WRITE;
/*!40000 ALTER TABLE `photo` DISABLE KEYS */;
INSERT INTO `photo` VALUES (1,'bonjour','dtc');
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-29  9:46:48
