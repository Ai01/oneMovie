-- MySQL dump 10.13  Distrib 5.7.19, for osx10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: oneMovie
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `Movie`
--

DROP TABLE IF EXISTS `Movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Movie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `grade` float DEFAULT NULL,
  `resourceLink` varchar(255) DEFAULT NULL,
  `releaseDate` datetime DEFAULT NULL,
  `director` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `posterUrl` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `movie_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movie`
--

LOCK TABLES `Movie` WRITE;
/*!40000 ALTER TABLE `Movie` DISABLE KEYS */;
INSERT INTO `Movie` VALUES (1,'怦然心动 / Flipped',8.9,'https://movie.douban.com/subject/3319755/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(2,'十二怒汉 / 12 Angry Men',9.4,'https://movie.douban.com/subject/1293182/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(3,'搏击俱乐部 / Fight Club',9,'https://movie.douban.com/subject/1292000/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(4,'少年派的奇幻漂流 / Life of Pi',9,'https://movie.douban.com/subject/1929463/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(5,'指环王3：王者无敌 / The Lord of the Rings: The Return of the King',9.1,'https://movie.douban.com/subject/1291552/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(6,'鬼子来了',9.2,'https://movie.douban.com/subject/1291858/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(7,'蝙蝠侠：黑暗骑士 / The Dark Knight',9,'https://movie.douban.com/subject/1851857/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(8,'活着',9.1,'https://movie.douban.com/subject/1292365/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(9,'天空之城 / 天空の城ラピュタ',9,'https://movie.douban.com/subject/1291583/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(10,'罗马假日 / Roman Holiday',8.9,'https://movie.douban.com/subject/1293839/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(11,'大话西游之月光宝盒 / 西遊記第壹佰零壹回之月光寶盒',8.9,'https://movie.douban.com/subject/1299398/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(12,'飞屋环游记 / Up',8.9,'https://movie.douban.com/subject/2129039/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(13,'两杆大烟枪 / Lock, Stock and Two Smoking Barrels',9.1,'https://movie.douban.com/subject/1293350/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(14,'窃听风暴 / Das Leben der Anderen',9.1,'https://movie.douban.com/subject/1900841/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(15,'飞越疯人院 / One Flew Over the Cuckoo\'s Nest',9,'https://movie.douban.com/subject/1292224/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(16,'疯狂动物城 / Zootopia',9.2,'https://movie.douban.com/subject/25662329/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(17,'控方证人 / Witness for the Prosecution',9.6,'https://movie.douban.com/subject/1296141/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(18,'闻香识女人 / Scent of a Woman',8.9,'https://movie.douban.com/subject/1298624/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(19,'海豚湾 / The Cove',9.3,'https://movie.douban.com/subject/3442220/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(20,'哈尔的移动城堡 / ハウルの動く城',8.9,'https://movie.douban.com/subject/1308807/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(21,'V字仇杀队 / V for Vendetta',8.8,'https://movie.douban.com/subject/1309046/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(22,'教父2 / The Godfather: Part Ⅱ',9.1,'https://movie.douban.com/subject/1299131/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(23,'辩护人 / 변호인',9.1,'https://movie.douban.com/subject/21937445/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(24,'死亡诗社 / Dead Poets Society',8.9,'https://movie.douban.com/subject/1291548/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(25,'美丽心灵 / A Beautiful Mind',8.9,'https://movie.douban.com/subject/1306029/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(26,'小森林 夏秋篇 / リトル・フォレスト 夏・秋',8.9,'https://movie.douban.com/subject/25814705/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(27,'谍影重重3 / The Bourne Ultimatum',8.7,'https://movie.douban.com/subject/1578507/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(28,'喜剧之王 / 喜劇之王',8.5,'https://movie.douban.com/subject/1302425/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(29,'贫民窟的百万富翁 / Slumdog Millionaire',8.5,'https://movie.douban.com/subject/2209573/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(30,'雨人 / Rain Man',8.6,'https://movie.douban.com/subject/1291870/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(31,'东邪西毒 / 東邪西毒',8.6,'https://movie.douban.com/subject/1292328/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(32,'记忆碎片 / Memento',8.5,'https://movie.douban.com/subject/1304447/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(33,'喜宴',8.8,'https://movie.douban.com/subject/1303037/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(34,'怪兽电力公司 / Monsters, Inc.',8.6,'https://movie.douban.com/subject/1291579/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(35,'燃情岁月 / Legends of the Fall',8.7,'https://movie.douban.com/subject/1295865/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(36,'疯狂原始人 / The Croods',8.7,'https://movie.douban.com/subject/1907966/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(37,'虎口脱险 / La grande vadrouille',8.9,'https://movie.douban.com/subject/1296909/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(38,'黑天鹅 / Black Swan',8.5,'https://movie.douban.com/subject/1978709/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(39,'卢旺达饭店 / Hotel Rwanda',8.8,'https://movie.douban.com/subject/1291822/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(40,'英雄本色',8.6,'https://movie.douban.com/subject/1297574/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(41,'恋恋笔记本 / The Notebook',8.5,'https://movie.douban.com/subject/1309163/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(42,'猜火车 / Trainspotting',8.5,'https://movie.douban.com/subject/1292528/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(43,'魂断蓝桥 / Waterloo Bridge',8.8,'https://movie.douban.com/subject/1293964/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(44,'傲慢与偏见 / Pride & Prejudice',8.4,'https://movie.douban.com/subject/1418200/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(45,'穿越时空的少女 / 時をかける少女',8.6,'https://movie.douban.com/subject/1937946/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(46,'教父3 / The Godfather: Part III',8.8,'https://movie.douban.com/subject/1294240/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(47,'完美的世界 / A Perfect World',9,'https://movie.douban.com/subject/1300992/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(48,'7号房的礼物 / 7번방의 선물',8.7,'https://movie.douban.com/subject/10777687/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(49,'雨中曲 / Singin\' in the Rain',8.9,'https://movie.douban.com/subject/1293460/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(50,'纵横四海 / 緃横四海',8.7,'https://movie.douban.com/subject/1295409/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(51,'爆裂鼓手 / Whiplash',8.6,'https://movie.douban.com/subject/25773932/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(52,'战争之王 / Lord of War',8.5,'https://movie.douban.com/subject/1419936/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(53,'地球上的星星 / Taare Zameen Par',8.8,'https://movie.douban.com/subject/2363506/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(54,'梦之安魂曲 / Requiem for a Dream',8.7,'https://movie.douban.com/subject/1292270/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(55,'恐怖游轮 / Triangle',8.3,'https://movie.douban.com/subject/3011051/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(56,'达拉斯买家俱乐部 / Dallas Buyers Club',8.6,'https://movie.douban.com/subject/1793929/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(57,'碧海蓝天 / Le grand bleu',8.7,'https://movie.douban.com/subject/1300960/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(58,'阿飞正传 / 阿飛正傳',8.5,'https://movie.douban.com/subject/1305690/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(59,'牯岭街少年杀人事件 / 牯嶺街少年殺人事件',8.7,'https://movie.douban.com/subject/1292329/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(60,'被解救的姜戈 / Django Unchained',8.5,'https://movie.douban.com/subject/6307447/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(61,'谍影重重2 / The Bourne Supremacy',8.5,'https://movie.douban.com/subject/1308767/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(62,'谍影重重 / The Bourne Identity',8.5,'https://movie.douban.com/subject/1304102/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(63,'魔女宅急便 / 魔女の宅急便',8.5,'https://movie.douban.com/subject/1307811/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(64,'秒速5厘米 / 秒速5センチメートル',8.3,'https://movie.douban.com/subject/2043546/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(65,'惊魂记 / Psycho',8.9,'https://movie.douban.com/subject/1293181/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(66,'忠犬八公物语 / ハチ公物語',9,'https://movie.douban.com/subject/1959195/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(67,'再次出发之纽约遇见你 / Begin Again',8.5,'https://movie.douban.com/subject/6874403/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(68,'海盗电台 / The Boat That Rocked',8.6,'https://movie.douban.com/subject/3007773/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(69,'青蛇',8.4,'https://movie.douban.com/subject/1303394/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(70,'东京物语 / 東京物語',9.2,'https://movie.douban.com/subject/1291568/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(71,'哪吒闹海',8.9,'https://movie.douban.com/subject/1307315/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(72,'绿里奇迹 / The Green Mile',8.7,'https://movie.douban.com/subject/1300374/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(73,'末路狂花 / Thelma & Louise',8.7,'https://movie.douban.com/subject/1291992/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(74,'勇闯夺命岛 / The Rock',8.5,'https://movie.douban.com/subject/1292728/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(75,'终结者2：审判日 / Terminator 2: Judgment Day',8.6,'https://movie.douban.com/subject/1291844/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(76,'这个男人来自地球 / The Man from Earth',8.5,'https://movie.douban.com/subject/2300586/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(77,'头脑特工队 / Inside Out',8.7,'https://movie.douban.com/subject/10533913/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(78,'源代码 / Source Code',8.3,'https://movie.douban.com/subject/3075287/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(79,'卡萨布兰卡 / Casablanca',8.6,'https://movie.douban.com/subject/1296753/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(80,'新龙门客栈 / 新龍門客棧',8.5,'https://movie.douban.com/subject/1292287/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(81,'荒野生存 / Into the Wild',8.6,'https://movie.douban.com/subject/1905462/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(82,'迁徙的鸟 / Le peuple migrateur',9.1,'https://movie.douban.com/subject/1292281/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(83,'黑客帝国3：矩阵革命 / The Matrix Revolutions',8.5,'https://movie.douban.com/subject/1302467/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(84,'房间 / Room',8.8,'https://movie.douban.com/subject/25724855/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(85,'变脸 / Face/Off',8.4,'https://movie.douban.com/subject/1292659/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(86,'城市之光 / City Lights',9.2,'https://movie.douban.com/subject/1293908/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(87,'模仿游戏 / The Imitation Game',8.5,'https://movie.douban.com/subject/10463953/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(88,'E.T. 外星人 / E.T.: The Extra-Terrestrial',8.5,'https://movie.douban.com/subject/1294638/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(89,'美国丽人 / American Beauty',8.4,'https://movie.douban.com/subject/1292062/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(90,'发条橙 / A Clockwork Orange',8.4,'https://movie.douban.com/subject/1292233/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(91,'黄金三镖客 / Il buono, il brutto, il cattivo.',9.1,'https://movie.douban.com/subject/1401118/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(92,'燕尾蝶 / スワロウテイル',8.6,'https://movie.douban.com/subject/1307793/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(93,'英国病人 / The English Patient',8.4,'https://movie.douban.com/subject/1291853/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(94,'无耻混蛋 / Inglourious Basterds',8.4,'https://movie.douban.com/subject/1438652/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(95,'初恋这件小事 / สิ่งเล็กเล็กที่เรียกว่า...รัก',8.3,'https://movie.douban.com/subject/4739952/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(96,'叫我第一名 / Front of the Class',8.6,'https://movie.douban.com/subject/4798888/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(97,'非常嫌疑犯 / The Usual Suspects',8.6,'https://movie.douban.com/subject/1292214/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(98,'穆赫兰道 / Mulholland Dr.',8.3,'https://movie.douban.com/subject/1292217/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(99,'爱在午夜降临前 / Before Midnight',8.8,'https://movie.douban.com/subject/10808442/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(100,'勇士 / Warrior',8.9,'https://movie.douban.com/subject/3217169/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(101,'一个叫欧维的男人决定去死 / En man som heter Ove',8.7,'https://movie.douban.com/subject/26628357/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(102,'上帝也疯狂 / The Gods Must Be Crazy',8.6,'https://movie.douban.com/subject/1297478/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(103,'无敌破坏王 / Wreck-It Ralph',8.6,'https://movie.douban.com/subject/6534248/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(104,'疯狂的石头',8.2,'https://movie.douban.com/subject/1862151/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(105,'国王的演讲 / The King\'s Speech',8.3,'https://movie.douban.com/subject/4023638/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(106,'血钻 / Blood Diamond',8.5,'https://movie.douban.com/subject/1428175/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(107,'你的名字。 / 君の名は。',8.4,'https://movie.douban.com/subject/26683290/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(108,'蓝色大门 / 藍色大門',8.3,'https://movie.douban.com/subject/1308575/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(109,'无人知晓 / 誰も知らない',9,'https://movie.douban.com/subject/1292337/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(110,'枪火 / 鎗火',8.6,'https://movie.douban.com/subject/1300741/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(111,'步履不停 / 歩いても 歩いても',8.8,'https://movie.douban.com/subject/2222996/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(112,'大卫·戈尔的一生 / The Life of David Gale',8.6,'https://movie.douban.com/subject/1305725/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(113,'爱·回家 / 집으로...',9,'https://movie.douban.com/subject/1299361/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(114,'遗愿清单 / The Bucket List',8.5,'https://movie.douban.com/subject/1867345/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(115,'彗星来的那一夜 / Coherence',8.4,'https://movie.douban.com/subject/25807345/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(116,'千钧一发 / Gattaca',8.7,'https://movie.douban.com/subject/1300117/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(117,'我爱你 / 그대를 사랑합니다',9,'https://movie.douban.com/subject/5908478/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(118,'荒岛余生 / Cast Away',8.5,'https://movie.douban.com/subject/1298653/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(119,'血战钢锯岭 / Hacksaw Ridge',8.7,'https://movie.douban.com/subject/26325320/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(120,'麦兜故事 / 麥兜故事',8.5,'https://movie.douban.com/subject/1302476/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(121,'暖暖内含光 / Eternal Sunshine of the Spotless Mind',8.4,'https://movie.douban.com/subject/1308777/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(122,'曾经 / Once',8.3,'https://movie.douban.com/subject/2053515/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(123,'月球 / Moon',8.5,'https://movie.douban.com/subject/3073124/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(124,'蝴蝶 / Le Papillon',8.6,'https://movie.douban.com/subject/1292056/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(125,'巴黎淘气帮 / Le petit Nicolas',8.6,'https://movie.douban.com/subject/3157605/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(126,'肖申克的救赎 / The Shawshank Redemption',9.6,'https://movie.douban.com/subject/1292052/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(127,'霸王别姬',9.5,'https://movie.douban.com/subject/1291546/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(128,'这个杀手不太冷 / Léon',9.4,'https://movie.douban.com/subject/1295644/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(129,'阿甘正传 / Forrest Gump',9.4,'https://movie.douban.com/subject/1292720/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(130,'美丽人生 / La vita è bella',9.5,'https://movie.douban.com/subject/1292063/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(131,'千与千寻 / 千と千尋の神隠し',9.2,'https://movie.douban.com/subject/1291561/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(132,'泰坦尼克号 / Titanic',9.2,'https://movie.douban.com/subject/1292722/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(133,'辛德勒的名单 / Schindler\'s List',9.4,'https://movie.douban.com/subject/1295124/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(134,'盗梦空间 / Inception',9.3,'https://movie.douban.com/subject/3541415/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(135,'机器人总动员 / WALL·E',9.3,'https://movie.douban.com/subject/2131459/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(136,'海上钢琴师 / La leggenda del pianista sull\'oceano',9.2,'https://movie.douban.com/subject/1292001/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(137,'三傻大闹宝莱坞 / 3 Idiots',9.2,'https://movie.douban.com/subject/3793023/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(138,'忠犬八公的故事 / Hachi: A Dog\'s Tale',9.2,'https://movie.douban.com/subject/3011091/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(139,'放牛班的春天 / Les choristes',9.2,'https://movie.douban.com/subject/1291549/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(140,'大话西游之大圣娶亲 / 西遊記大結局之仙履奇緣',9.2,'https://movie.douban.com/subject/1292213/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(141,'教父 / The Godfather',9.2,'https://movie.douban.com/subject/1291841/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(142,'龙猫 / となりのトトロ',9.1,'https://movie.douban.com/subject/1291560/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(143,'楚门的世界 / The Truman Show',9.1,'https://movie.douban.com/subject/1292064/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(144,'乱世佳人 / Gone with the Wind',9.2,'https://movie.douban.com/subject/1300267/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(145,'熔炉 / 도가니',9.2,'https://movie.douban.com/subject/5912992/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(146,'触不可及 / Intouchables',9.1,'https://movie.douban.com/subject/6786002/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(147,'天堂电影院 / Nuovo Cinema Paradiso',9.1,'https://movie.douban.com/subject/1291828/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(148,'当幸福来敲门 / The Pursuit of Happyness',8.9,'https://movie.douban.com/subject/1849031/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(149,'星际穿越 / Interstellar',9.2,'https://movie.douban.com/subject/1889243/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(150,'无间道 / 無間道',9,'https://movie.douban.com/subject/1307914/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(151,'指环王2：双塔奇兵 / The Lord of the Rings: The Two Towers',9,'https://movie.douban.com/subject/1291572/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(152,'指环王1：魔戒再现 / The Lord of the Rings: The Fellowship of the Ring',8.9,'https://movie.douban.com/subject/1291571/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(153,'情书 / Love Letter',8.8,'https://movie.douban.com/subject/1292220/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(154,'饮食男女 / 飲食男女',9.1,'https://movie.douban.com/subject/1291818/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(155,'美国往事 / Once Upon a Time in America',9.1,'https://movie.douban.com/subject/1292262/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(156,'天使爱美丽 / Le fabuleux destin d\'Amélie Poulain',8.7,'https://movie.douban.com/subject/1292215/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(157,'狮子王 / The Lion King',8.9,'https://movie.douban.com/subject/1301753/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(158,'钢琴家 / The Pianist',9,'https://movie.douban.com/subject/1296736/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(159,'七宗罪 / Se7en',8.7,'https://movie.douban.com/subject/1292223/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(160,'被嫌弃的松子的一生 / 嫌われ松子の一生',8.9,'https://movie.douban.com/subject/1787291/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(161,'小鞋子 / بچههای آسمان',9.2,'https://movie.douban.com/subject/1303021/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(162,'致命魔术 / The Prestige',8.8,'https://movie.douban.com/subject/1780330/',NULL,NULL,NULL,NULL,'2018-02-10 19:09:59','2018-02-10 19:09:59'),(163,'素媛 / 소원',9.1,'https://movie.douban.com/subject/21937452/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(164,'勇敢的心 / Braveheart',8.8,'https://movie.douban.com/subject/1294639/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(165,'音乐之声 / The Sound of Music',8.9,'https://movie.douban.com/subject/1294408/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(166,'剪刀手爱德华 / Edward Scissorhands',8.7,'https://movie.douban.com/subject/1292370/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(167,'本杰明·巴顿奇事 / The Curious Case of Benjamin Button',8.7,'https://movie.douban.com/subject/1485260/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(168,'低俗小说 / Pulp Fiction',8.8,'https://movie.douban.com/subject/1291832/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(169,'西西里的美丽传说 / Malèna',8.7,'https://movie.douban.com/subject/1292402/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(170,'黑客帝国 / The Matrix',8.8,'https://movie.douban.com/subject/1291843/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(171,'沉默的羔羊 / The Silence of the Lambs',8.7,'https://movie.douban.com/subject/1293544/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(172,'拯救大兵瑞恩 / Saving Private Ryan',8.9,'https://movie.douban.com/subject/1292849/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(173,'入殓师 / おくりびと',8.8,'https://movie.douban.com/subject/2149806/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(174,'蝴蝶效应 / The Butterfly Effect',8.7,'https://movie.douban.com/subject/1292343/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(175,'玛丽和马克思 / Mary and Max',8.9,'https://movie.douban.com/subject/3072124/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(176,'猫鼠游戏 / Catch Me If You Can',8.7,'https://movie.douban.com/subject/1305487/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(177,'摩登时代 / Modern Times',9.2,'https://movie.douban.com/subject/1294371/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(178,'爱在黎明破晓前 / Before Sunrise',8.7,'https://movie.douban.com/subject/1296339/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(179,'阿凡达 / Avatar',8.6,'https://movie.douban.com/subject/1652587/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(180,'穿条纹睡衣的男孩 / The Boy in the Striped Pajamas',8.9,'https://movie.douban.com/subject/3008247/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(181,'风之谷 / 風の谷のナウシカ',8.8,'https://movie.douban.com/subject/1291585/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(182,'爱在日落黄昏时 / Before Sunset',8.7,'https://movie.douban.com/subject/1291990/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(183,'消失的爱人 / Gone Girl',8.7,'https://movie.douban.com/subject/21318488/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(184,'侧耳倾听 / 耳をすませば',8.8,'https://movie.douban.com/subject/1297052/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(185,'萤火虫之墓 / 火垂るの墓',8.7,'https://movie.douban.com/subject/1293318/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(186,'超脱 / Detachment',8.8,'https://movie.douban.com/subject/5322596/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(187,'倩女幽魂',8.6,'https://movie.douban.com/subject/1297447/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(188,'驯龙高手 / How to Train Your Dragon',8.7,'https://movie.douban.com/subject/2353023/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(189,'红辣椒 / パプリカ',8.9,'https://movie.douban.com/subject/1865703/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(190,'恐怖直播 / 더 테러 라이브',8.7,'https://movie.douban.com/subject/21360417/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(191,'菊次郎的夏天 / 菊次郎の夏',8.7,'https://movie.douban.com/subject/1293359/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(192,'幸福终点站 / The Terminal',8.6,'https://movie.douban.com/subject/1292274/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(193,'岁月神偷 / 歲月神偷',8.6,'https://movie.douban.com/subject/3792799/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(194,'七武士 / 七人の侍',9.2,'https://movie.douban.com/subject/1295399/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(195,'借东西的小人阿莉埃蒂 / 借りぐらしのアリエッティ',8.7,'https://movie.douban.com/subject/4202302/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(196,'神偷奶爸 / Despicable Me',8.5,'https://movie.douban.com/subject/3287562/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(197,'海洋 / Océans',9,'https://movie.douban.com/subject/3443389/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(198,'真爱至上 / Love Actually',8.5,'https://movie.douban.com/subject/1292401/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(199,'杀人回忆 / 살인의 추억',8.6,'https://movie.douban.com/subject/1300299/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(200,'电锯惊魂 / Saw',8.7,'https://movie.douban.com/subject/1417598/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(201,'萤火之森 / 蛍火の杜へ',8.7,'https://movie.douban.com/subject/5989818/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(202,'海边的曼彻斯特 / Manchester by the Sea',8.6,'https://movie.douban.com/subject/25980443/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(203,'哈利·波特与死亡圣器(下) / Harry Potter and the Deathly Hallows: Part 2',8.6,'https://movie.douban.com/subject/3011235/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(204,'玩具总动员3 / Toy Story 3',8.8,'https://movie.douban.com/subject/1858711/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(205,'花样年华 / 花樣年華',8.5,'https://movie.douban.com/subject/1291557/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(206,'荒蛮故事 / Relatos salvajes',8.8,'https://movie.douban.com/subject/24750126/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(207,'小森林 冬春篇 / リトル・フォレスト 冬・春',8.9,'https://movie.douban.com/subject/25814707/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(208,'我是山姆 / I Am Sam',8.8,'https://movie.douban.com/subject/1306861/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(209,'二十二',8.8,'https://movie.douban.com/subject/26430107/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(210,'人工智能 / Artificial Intelligence: AI',8.6,'https://movie.douban.com/subject/1302827/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(211,'时空恋旅人 / About Time',8.6,'https://movie.douban.com/subject/10577869/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(212,'超能陆战队 / Big Hero 6',8.6,'https://movie.douban.com/subject/11026735/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(213,'唐伯虎点秋香 / 唐伯虎點秋香',8.4,'https://movie.douban.com/subject/1306249/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(214,'浪潮 / Die Welle',8.7,'https://movie.douban.com/subject/2297265/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(215,'冰川时代 / Ice Age',8.4,'https://movie.douban.com/subject/1291578/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(216,'香水 / Perfume: The Story of a Murderer',8.4,'https://movie.douban.com/subject/1760622/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(217,'蝙蝠侠：黑暗骑士崛起 / The Dark Knight Rises',8.6,'https://movie.douban.com/subject/3395373/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(218,'朗读者 / The Reader',8.5,'https://movie.douban.com/subject/2213597/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(219,'心迷宫',8.6,'https://movie.douban.com/subject/25917973/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(220,'追随 / Following',8.9,'https://movie.douban.com/subject/1397546/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(221,'罗生门 / 羅生門',8.7,'https://movie.douban.com/subject/1291879/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(222,'撞车 / Crash',8.6,'https://movie.douban.com/subject/1388216/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(223,'一次别离 / جدایی نادر از سیمین',8.7,'https://movie.douban.com/subject/5964718/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(224,'可可西里',8.7,'https://movie.douban.com/subject/1308857/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(225,'未麻的部屋 / Perfect Blue',8.8,'https://movie.douban.com/subject/1395091/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(226,'让子弹飞',8.7,'https://movie.douban.com/subject/3742360/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(227,'春光乍泄 / 春光乍洩',8.8,'https://movie.douban.com/subject/1292679/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(228,'大闹天宫',9.2,'https://movie.douban.com/subject/1418019/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(229,'心灵捕手 / Good Will Hunting',8.8,'https://movie.douban.com/subject/1292656/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(230,'摔跤吧！爸爸 / Dangal',9.1,'https://movie.douban.com/subject/26387939/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(231,'看不见的客人 / Contratiempo',8.8,'https://movie.douban.com/subject/26580232/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(232,'幽灵公主 / もののけ姫',8.8,'https://movie.douban.com/subject/1297359/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(233,'阳光灿烂的日子',8.7,'https://movie.douban.com/subject/1291875/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(234,'第六感 / The Sixth Sense',8.8,'https://movie.douban.com/subject/1297630/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(235,'重庆森林 / 重慶森林',8.7,'https://movie.douban.com/subject/1291999/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(236,'末代皇帝 / The Last Emperor',8.9,'https://movie.douban.com/subject/1293172/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(237,'大鱼 / Big Fish',8.7,'https://movie.douban.com/subject/1291545/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(238,'禁闭岛 / Shutter Island',8.6,'https://movie.douban.com/subject/2334904/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(239,'射雕英雄传之东成西就 / 射鵰英雄傳之東成西就',8.7,'https://movie.douban.com/subject/1316510/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(240,'狩猎 / Jagten',9,'https://movie.douban.com/subject/6985810/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(241,'甜蜜蜜',8.8,'https://movie.douban.com/subject/1305164/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(242,'布达佩斯大饭店 / The Grand Budapest Hotel',8.8,'https://movie.douban.com/subject/11525673/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(243,'一一',8.9,'https://movie.douban.com/subject/1292434/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(244,'致命ID / Identity',8.6,'https://movie.douban.com/subject/1297192/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(245,'阳光姐妹淘 / 써니',8.8,'https://movie.douban.com/subject/4917726/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(246,'告白',8.7,'https://movie.douban.com/subject/4268598/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(247,'哈利·波特与魔法石 / Harry Potter and the Sorcerer\'s Stone',8.7,'https://movie.douban.com/subject/1295038/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(248,'上帝之城 / Cidade de Deus',8.9,'https://movie.douban.com/subject/1292208/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(249,'断背山 / Brokeback Mountain',8.6,'https://movie.douban.com/subject/1418834/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00'),(250,'加勒比海盗 / Pirates of the Caribbean: The Curse of the Black Pearl',8.6,'https://movie.douban.com/subject/1298070/',NULL,NULL,NULL,NULL,'2018-02-10 19:10:00','2018-02-10 19:10:00');
/*!40000 ALTER TABLE `Movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Privilege`
--

DROP TABLE IF EXISTS `Privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Privilege` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Privilege`
--

LOCK TABLES `Privilege` WRITE;
/*!40000 ALTER TABLE `Privilege` DISABLE KEYS */;
INSERT INTO `Privilege` VALUES (1,'create_user','2018-02-10 19:09:58','2018-02-10 19:09:58'),(2,'update_user','2018-02-10 19:09:58','2018-02-10 19:09:58'),(3,'delete_user','2018-02-10 19:09:58','2018-02-10 19:09:58');
/*!40000 ALTER TABLE `Privilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Role`
--

DROP TABLE IF EXISTS `Role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `desc` varchar(128) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_id_name` (`id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Role`
--

LOCK TABLES `Role` WRITE;
/*!40000 ALTER TABLE `Role` DISABLE KEYS */;
INSERT INTO `Role` VALUES (1,'admin',NULL,'2018-02-10 19:09:58','2018-02-10 19:09:58'),(2,'guest',NULL,'2018-02-10 19:09:58','2018-02-10 19:09:58');
/*!40000 ALTER TABLE `Role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RolePrivilege`
--

DROP TABLE IF EXISTS `RolePrivilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RolePrivilege` (
  `RoleId` bigint(20) NOT NULL,
  `PrivilegeId` bigint(20) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`RoleId`,`PrivilegeId`),
  UNIQUE KEY `RolePrivilege_PrivilegeId_RoleId_unique` (`RoleId`,`PrivilegeId`),
  KEY `PrivilegeId` (`PrivilegeId`),
  KEY `role_privilege__role_id__privilege_id` (`RoleId`,`PrivilegeId`),
  CONSTRAINT `RolePrivilege_ibfk_1` FOREIGN KEY (`RoleId`) REFERENCES `Role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `RolePrivilege_ibfk_2` FOREIGN KEY (`PrivilegeId`) REFERENCES `Privilege` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RolePrivilege`
--

LOCK TABLES `RolePrivilege` WRITE;
/*!40000 ALTER TABLE `RolePrivilege` DISABLE KEYS */;
INSERT INTO `RolePrivilege` VALUES (1,1,'2018-02-10 19:09:58','2018-02-10 19:09:58'),(1,2,'2018-02-10 19:09:58','2018-02-10 19:09:58'),(1,3,'2018-02-10 19:09:58','2018-02-10 19:09:58'),(2,1,'2018-02-10 19:09:58','2018-02-10 19:09:58'),(2,2,'2018-02-10 19:09:58','2018-02-10 19:09:58'),(2,3,'2018-02-10 19:09:58','2018-02-10 19:09:58');
/*!40000 ALTER TABLE `RolePrivilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SequelizeMeta`
--

DROP TABLE IF EXISTS `SequelizeMeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `SequelizeMeta_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SequelizeMeta`
--

LOCK TABLES `SequelizeMeta` WRITE;
/*!40000 ALTER TABLE `SequelizeMeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `SequelizeMeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'root@root.com','root','11111111111','jGl25bVBBBW96Qi9Te4V37Fnqchz/Eu4qB9vKrRIqRg=','2018-02-10 19:09:58','2018-02-10 19:09:58'),(2,'test@test.com','test','11111111112','n4bQgYhMfWWaL+qgxVrQFaO/TxsrC4Is0V1sFbDwCgg=','2018-02-10 19:09:58','2018-02-10 19:09:58');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserRole`
--

DROP TABLE IF EXISTS `UserRole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserRole` (
  `UserId` bigint(20) NOT NULL,
  `RoleId` bigint(20) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`UserId`,`RoleId`),
  UNIQUE KEY `UserRole_RoleId_UserId_unique` (`UserId`,`RoleId`),
  KEY `RoleId` (`RoleId`),
  KEY `user_role__user_id__role_id` (`UserId`,`RoleId`),
  CONSTRAINT `UserRole_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `User` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `UserRole_ibfk_2` FOREIGN KEY (`RoleId`) REFERENCES `Role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserRole`
--

LOCK TABLES `UserRole` WRITE;
/*!40000 ALTER TABLE `UserRole` DISABLE KEYS */;
INSERT INTO `UserRole` VALUES (1,1,'2018-02-10 19:09:58','2018-02-10 19:09:58'),(1,2,'2018-02-10 19:09:58','2018-02-10 19:09:58'),(2,1,'2018-02-10 19:09:58','2018-02-10 19:09:58'),(2,2,'2018-02-10 19:09:58','2018-02-10 19:09:58');
/*!40000 ALTER TABLE `UserRole` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-10 19:10:05
