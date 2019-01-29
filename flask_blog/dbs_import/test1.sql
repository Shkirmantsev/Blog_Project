-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: test1
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

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
-- Table structure for table `alembic_version`
--

DROP TABLE IF EXISTS `alembic_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alembic_version` (
  `version_num` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alembic_version`
--

LOCK TABLES `alembic_version` WRITE;
/*!40000 ALTER TABLE `alembic_version` DISABLE KEYS */;
INSERT INTO `alembic_version` VALUES ('2c725a6dc543');
/*!40000 ALTER TABLE `alembic_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(140) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(140) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'First post','First-post','First post body','2019-01-17 13:53:14'),(2,'Second post','Second-post','Second post body','2019-01-17 13:53:14'),(3,'Third post! 3-test v2','Third-post--3-test','First post body','2019-01-17 13:53:14'),(4,'fifth 5 post!','fifth-5-post-','<body of fifth (5) post>','2019-01-24 22:55:56'),(5,'6 post','6-post','6 body post','2019-01-24 23:13:38'),(6,'7 seven post','7-seven-post','7 seven post\r\nBODY\r\n.\r\n.\r\n.','2019-01-26 13:00:39'),(7,'8 eights post','8-eights-post','8 eights post <BODY>','2019-01-26 13:02:06'),(8,'9 post','9-post','9 post Body','2019-01-26 13:02:24'),(9,'Some 10 post','Some-10-post','Some 10 post Body','2019-01-26 13:02:47'),(10,'Some 11 post','Some-11-post','body ------ >>>','2019-01-26 13:03:08'),(13,'Post 12','Post-12','Post 12 Body','2019-01-26 13:04:17'),(14,'13 post','13-post','Body 13','2019-01-26 13:04:41'),(15,'P 14','P-14','P-14 body body body','2019-01-26 13:04:47'),(16,'P15','P15','P15 <BODY---------------------------------------->\r\nP15 <BODY-------------------------\\n-------------->\r\n\r\n','2019-01-26 15:56:49'),(17,'P16 v.2.1','P16-v-2-1','P16 <BODY2----------------------------------------> P16\r\n\r\n<BODY-------------------------\\n--------------> ','2019-01-26 15:57:19'),(18,'Steave Jobs second story','P17','<p>My second story is about love and loss. </p>\r\n \r\n<p>I was lucky — I found what I loved to do early in life. Woz and I started Apple in my parents garage \r\nwhen I was 20. We worked hard, and in 10 years Apple had grown from just the two of us in a \r\ngarage into a $2 billion company with over 4000 employees. We had just released our finest \r\ncreation — the Macintosh — a year earlier, and I had just turned 30. And then I got fired. How can \r\nyou get fired from a company you started? Well, as Apple grew we hired someone who I thought \r\nwas very talented to run the company with me, and for the first year or so things went well. But \r\nthen our visions of the future began to diverge and eventually we had a falling out. When we did, \r\nour Board of Directors sided with him. So at 30 I was out. And very publicly out. What had been the \r\nfocus of my entire adult life was gone, and it was devastating. </p>\r\n \r\n<p>I really didn\'t know what to do for a few months. I felt that I had let the previous generation of \r\nentrepreneurs down - that I had dropped the baton as it was being passed to me. I met with David \r\nPackard and Bob Noyce and tried to apologize for screwing up so badly. I was a very public failure, \r\nand I even thought about running away from the valley. But something slowly began to dawn on \r\nme — I still loved what I did. The turn of events at Apple had not changed that one bit. I had been \r\nrejected, but I was still in love. And so I decided to start over. \r\nI didn\'t see it then, but it turned out that getting fired from Apple was the best thing that could have \r\never happened to me. The heaviness of being successful was replaced by the lightness of being a \r\nbeginner again, less sure about everything. It freed me to enter one of the most creative periods of \r\nmy life. \r\n \r\n<p>During the next five years, I started a company named NeXT, another company named Pixar, and \r\nfell in love with an amazing woman who would become my wife. Pixar went on to create the worlds \r\nfirst computer animated feature film, Toy Story, and is now the most successful animation studio in \r\nthe world. In a remarkable turn of events, Apple bought NeXT, I returned to Apple, and the \r\ntechnology we developed at NeXT is at the heart of Apple\'s current renaissance. And Laurene and \r\nI have a wonderful family together. \r\n \r\n<p>I\'m pretty sure none of this would have happened if I hadn\'t been fired from Apple. It was awful \r\ntasting medicine, but I guess the patient needed it. Sometimes life hits you in the head with a brick. \r\nDon\'t lose faith. I\'m convinced that the only thing that kept me going was that I loved what I did. \r\nYou\'ve got to find what you love. And that is as true for your work as it is for your lovers. Your work \r\nis going to fill a large part of your life, and the only way to be truly satisfied is to do what you \r\nbelieve is great work. And the only way to do great work is to love what you do. If you haven\'t \r\nfound it yet, keep looking. Don\'t settle. As with all matters of the heart, you\'ll know when you find it. \r\nAnd, like any great relationship, it just gets better and better as the years roll on. So keep looking \r\nuntil you find it. Don\'t settle. \r\n\r\n','2019-01-26 15:58:17'),(19,'Jobs. Third story is about death','18--post','<p>My third story is about death.\r\n\r\n  <p>When I was 17, I read a quote that went something like: \"If you live each day as if it was your last, someday you\'ll most certainly be right\". It made an impression on me, and since then, for the past 33 years, I have looked in the mirror every morning and asked myself: \"If today were the last day of my life, would I want to do what I am about to do today?\" And whenever the answer has been \"No\" for too many days in a row, I know I need to change something.\r\n\r\n<p>Remembering that I\'ll be dead soon is the most important tool I\'ve ever encountered to help me make the big choices in life. Because almost everything — all external expectations, all pride, all fear of embarrassment or failure - these things just fall away in the face of death, leaving only what is truly important. Remembering that you are going to die is the best way I know to avoid the trap of thinking you have something to lose. You are already naked. There is no reason not to follow your heart. \r\n\r\n <p>About a year ago I was diagnosed with cancer. I had a scan at 7:30 in the morning, and it clearly showed a tumor on my pancreas. I didn\'t even know what a pancreas was. The doctors told me this was almost certainly a type of cancer that is incurable, and that I should expect to live no longer than three to six months. My doctor advised me to go home and get my affairs in order, which is doctor\'s code for prepare to die. It means to try to tell your kids everything you thought you\'d have the next 10 years to tell them in just a few months. It means to make sure everything is buttoned up so that it will be as easy as possible for your family. It means to say your goodbyes. I lived with that diagnosis all day. Later that evening I had a biopsy, where they stuck an endoscope down my throat, through my stomach, and into my intestines, put a needle into my pancreas and got a few cells from the tumor. I was sedated, but my wife, who was there, told me that when they viewed the cells under a microscope the doctors started crying because it turned out to be a very rare form of pancreatic cancer that is curable with surgery. I had the surgery and I\'m fine now.  This was the closest I\'ve been to facing death, and I hope its the closest I get for a few more decades. Having lived through it, I can now say this to you with a bit more certainty than when death was a useful but purely intellectual concept: \r\n\r\n   <p> No one wants to die. Even people who want to go to heaven don\'t want to die to get there. And yet death is the destination we all share. No one has ever escaped it. And that is as it should be because Death is very likely the single best invention of Life. It is Life\'s change agent. It clears out the old to make way for the new. Right now the new is you, but someday not too long from now, you will gradually become the old and be cleared away. Sorry to be so dramatic, but it is quite true. Your time is limited, so don\'t waste it living someone else\'s life. Don\'t be trapped by dogma — which is living with the results of other people\'s thinking. Don\'t let the noise of others\' opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition. They somehow already know what you truly want to become. Everything else is secondary.\r\n\r\n       <p>When I was young, there was an amazing publication called The Whole Earth Catalog, which was one of the bibles of my generation. It was created by a fellow named Stewart Brand not far from here in Menlo Park, and he brought it to life with his poetic touch. This was in the late 1960\'s, before personal computers and desktop publishing, so it was all made with typewriters, scissors, and polaroid cameras. It was sort of like Google in paperback form, 35 years before Google came along: it was idealistic, and overflowing with neat tools and great notions. \r\n\r\n   <p>Stewart and his team put out several issues of The Whole Earth Catalog, and then when it had run its course, they put out a final issue. It was the mid-1970s, and I was your age. On the back cover of their final issue was a photograph of an early morning country road, the kind you might find yourself hitchhiking on if you were so adventurous. Beneath it were the words: \"Stay Hungry. Stay Foolish.\" It was their farewell message as they signed off. Stay Hungry. Stay Foolish. And I have always wished that for myself. And now, as you graduate to begin anew, I wish that for you. Stay Hungry. Stay Foolish.  Thank you all very much. ','2019-01-27 23:15:44');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_tags` (
  `post_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  KEY `post_id` (`post_id`),
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `post_tags_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  CONSTRAINT `post_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(1,1),(1,2),(3,1),(3,3),(18,4),(19,4),(19,2),(18,1),(16,1),(17,3),(14,2),(13,1),(14,4),(15,4);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'admin','administrator');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_users` (
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  KEY `role_id` (`role_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `roles_users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `roles_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
INSERT INTO `roles_users` VALUES (1,1);
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tagname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'python','python'),(2,'python2','python2'),(3,'python3','python3'),(4,'Flusk','Flusk');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'shkirmantsev@gmail.com','$6$rounds=656000$DjNG6LO0V9AmaCPM$oJ05JLSYp9DT9/YPuL4U9XSOV1bYGHY8bsNM2AXDKbt9Q76jw5ObSJTLslbROR8Sa2nTVIxOpLEZMd6wyTBzJ0',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-28 20:19:44
