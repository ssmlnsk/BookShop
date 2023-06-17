CREATE DATABASE  IF NOT EXISTS `bookshop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bookshop`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: bookshop
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
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author` (
  `Код автора` int NOT NULL AUTO_INCREMENT,
  `Фамилия` varchar(45) DEFAULT NULL,
  `Имя` varchar(45) DEFAULT NULL,
  `Отчество` varchar(45) DEFAULT NULL,
  `Дата рождения` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Код автора`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'Кэнтаро','Миура','','11-07-1966'),(2,'Атанасян','Левон','Сергеевич','08-12-1921'),(3,'Кинг','Стивен','','21-09-1947'),(4,'Пушкин','Александр','Сергеевич','26-05-1799'),(5,'Полярный','Александр','','18-09-1994'),(6,'Толстой','Лев','Николаевич','09-09-1828');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `Код книги` int NOT NULL AUTO_INCREMENT,
  `Наименование книги` varchar(45) DEFAULT NULL,
  `Год издания` int DEFAULT NULL,
  `Количество страниц` int DEFAULT NULL,
  `Жанр` int DEFAULT NULL,
  `Автор` int DEFAULT NULL,
  `Издательство` int DEFAULT NULL,
  `Стоимость` float DEFAULT NULL,
  `Количество на складе` int DEFAULT NULL,
  PRIMARY KEY (`Код книги`),
  KEY `books_FK` (`Жанр`),
  KEY `books_FK_1` (`Автор`),
  KEY `books_FK_2` (`Издательство`),
  CONSTRAINT `author` FOREIGN KEY (`Автор`) REFERENCES `author` (`Код автора`),
  CONSTRAINT `genre` FOREIGN KEY (`Жанр`) REFERENCES `genre` (`Код жанра`),
  CONSTRAINT `ph` FOREIGN KEY (`Издательство`) REFERENCES `publishing_house` (`Код издательства`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (4,'Мятная сказка',2018,208,5,5,3,599,0),(12,'Берсерк. Том 1',1989,458,8,1,8,1200,100),(13,'Оно',1986,1138,7,3,3,1000,100);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `Код клиента` int NOT NULL AUTO_INCREMENT,
  `Фамилия` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Имя` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Отчество` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Дата рождения` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `e-mail` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`Код клиента`)
) ENGINE=InnoDB AUTO_INCREMENT=45462615 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (45462526,'Фролов','Андрей','Иванович','2001-07-13','gohufreilagrau-3818@yopmail.com'),(45462527,'Николаев','Даниил','Всеволодович','2001-02-09','xawugosune-1385@yopmail.com'),(45462528,'Снегирев','Макар','Иванович','1998-05-20','satrahuddusei-4458@yopmail.com'),(45462529,'Иванов','Иван','Ильич','1998-09-30','boippaxeufrepra-7093@yopmail.com'),(45462530,'Филиппова','Анна','Глебовна','1976-05-30','zapramaxesu-7741@yopmail.com'),(45462531,'Иванов','Михаил','Владимирович','1985-11-03','rouzecroummegre-3899@yopmail.com'),(45462532,'Власов','Дмитрий','Александрович','1998-08-16','ziyeuddocrabri-4748@yopmail.com'),(45462533,'Серова','Екатерина','Львовна','1984-10-23','ketameissoinnei-1951@yopmail.com'),(45462534,'Борисова','Ирина','Ивановна','1976-10-13','yipraubaponou-5849@yopmail.com'),(45462535,'Зайцев','Никита','Артёмович','1999-10-13','crapedocouca-3572@yopmail.com'),(45462536,'Медведев','Святослав','Евгеньевич','1985-07-12','ceigoixakaunni-9227@yopmail.com'),(45462537,'Коротков','Кирилл','Алексеевич','1976-05-25','yeimmeiwauzomo-7054@yopmail.com'),(45462538,'Калашникова','Арина','Максимовна','1999-08-12','poleifenevi-1560@yopmail.com'),(45462539,'Минина','Таисия','Кирилловна','1985-10-12','kauprezofautei-6607@yopmail.com'),(45462540,'Наумов','Серафим','Романович','1999-04-14','quaffaullelourei-1667@yopmail.com'),(45462541,'Воробьева','Василиса','Евгеньевна','1999-01-12','jsteele@rojas-robinson.net'),(45462542,'Калинин','Александр','Андреевич','1999-01-06','vhopkins@lewis-mullen.com'),(45462543,'Кузнецова','Милана','Владиславовна','1999-01-23','nlewis@yahoo.com'),(45462544,'Фирсов','Егор','Романович','1993-09-01','garciadavid@mckinney-mcbride.com'),(45462545,'Зимина','Агния','Александровна','1998-09-02','cbradley@castro.com'),(45462546,'Титов','Андрей','Глебович','1985-10-22','cuevascatherine@carlson.biz'),(45462547,'Орлов','Николай','Егорович','1985-07-26','thomasmoore@wilson-singh.net'),(45462548,'Кузнецова','Аиша','Михайловна','1998-10-03','jessica84@hotmail.com'),(45462549,'Куликов','Никита','Георгиевич','1999-04-22','jessicapark@hotmail.com'),(45462550,'Карпова','София','Егоровна','1993-09-30','ginaritter@schneider-buchanan.com'),(45462551,'Смирнова','Дарья','Макаровна','1976-03-21','stephen99@yahoo.com'),(45462552,'Абрамова','Александра','Мироновна','1999-03-25','lopezlisa@hotmail.com'),(45462553,'Наумов','Руслан','Михайлович','1999-10-10','lori17@hotmail.com'),(45462554,'Бочаров','Никита','Матвеевич','1997-06-28','campbellkevin@gardner.com'),(45462555,'Соловьев','Давид','Ильич','1984-03-05','morganhoward@clark.com'),(45462556,'Васильева','Валерия','Дмитриевна','1999-09-29','carsontamara@gmail.com'),(45462557,'Макарова','Василиса','Андреевна','1999-04-07','kevinpatel@gmail.com'),(45462558,'Алексеев','Матвей','Викторович','1998-08-01','sethbishop@yahoo.com'),(45462559,'Никитина','Полина','Александровна','1976-09-18','drollins@schultz-soto.net'),(45462560,'Окулова','Олеся','Алексеевна','1999-04-02','pblack@copeland-winters.org'),(45462561,'Захарова','Полина','Яновна','1976-04-20','johnathon.oberbrunner@yahoo.com'),(45462562,'Зайцев','Владимир','Давидович','1998-01-25','bradly29@gmail.com'),(45462563,'Иванов','Виталий','Даниилович','1976-08-10','stark.cristina@hilpert.biz'),(45462564,'Захаров','Матвей','Романович','1993-07-11','bruen.eleanore@yahoo.com'),(45462565,'Иванов','Степан','Степанович','1998-09-18','percival.halvorson@yahoo.com'),(45462566,'Ткачева','Милана','Тимуровна','1998-05-23','javonte71@kuhlman.biz'),(45462567,'Семенов','Даниил','Иванович','1976-01-03','vconnelly@kautzer.com'),(45462568,'Виноградов','Вячеслав','Дмитриевич','1976-07-11','anabelle07@schultz.info'),(45462569,'Соболева','Николь','Фёдоровна','1976-05-01','nitzsche.katlynn@yahoo.com'),(45462570,'Тихонова','Анна','Львовна','1985-03-22','corine16@von.com'),(45462571,'Кузнецова','Ульяна','Савельевна','1999-06-02','otha.wisozk@lubowitz.org'),(45462572,'Смирнова','Анна','Германовна','1997-07-17','may.kirlin@hotmail.com'),(45462573,'Черепанова','Анна','Давидовна','1985-11-05','bryana.kautzer@yahoo.com'),(45462574,'Григорьев','Максим','Кириллович','1999-05-25','deborah.christiansen@quigley.biz'),(45462575,'Голубев','Даниэль','Александрович','1999-06-13','connelly.makayla@yahoo.com'),(45462576,'Миронов','Юрий','Денисович','1985-01-25','tatum.collins@fay.org'),(45462577,'Терехов','Михаил','Андреевич','1976-07-05','itzel73@anderson.com'),(45462578,'Орлова','Алиса','Михайловна','1997-02-23','arjun39@hotmail.com'),(45462579,'Кулаков','Константин','Даниилович','1993-06-19','ohara.rebeka@yahoo.com'),(45462580,'Кудрявцев','Максим','Романович','1998-05-09','danika58@rath.com'),(45462581,'Соболева','Кира','Фёдоровна','1998-03-13','janae.bogan@gmail.com'),(45462582,'Коновалов','Арсений','Максимович','1985-02-17','vern91@yahoo.com'),(45462583,'Гусев','Михаил','Дмитриевич','1999-11-22','mariana.leannon@larkin.net'),(45462584,'Суханова','Варвара','Матвеевна','1993-09-12','vmoore@gmail.com'),(45462585,'Орлова','Ясмина','Васильевна','1984-06-23','damon.mcclure@mills.com'),(45462586,'Васильева','Ксения','Константиновна','1999-07-31','grady.reilly@block.com'),(45462587,'Борисова','Тамара','Данииловна','1993-05-28','boyd.koss@yahoo.com'),(45462588,'Дмитриев','Мирон','Ильич','1985-04-12','obartell@franecki.info'),(45462589,'Лебедева','Анна','Александровна','1985-03-29','reina75@ferry.net'),(45462590,'Пономарев','Артём','Маркович','1984-06-01','karson28@hotmail.com'),(45462591,'Борисова','Елена','Михайловна','1976-05-22','damaris61@okon.com'),(45462592,'Моисеев','Камиль','Максимович','1999-06-16','carroll.jerod@hotmail.com'),(45462593,'Герасимова','Дарья','Константиновна','1984-10-12','ron.treutel@quitzon.com'),(45462594,'Михайлова','Мария','Марковна','1976-12-01','olen79@yahoo.com'),(45462595,'Коршунов','Кирилл','Максимович','1985-05-21','pacocha.robbie@yahoo.com'),(45462614,'tewt','wtwet','ewtw','01.01.2000','tewt');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `Код сотрудника` int NOT NULL AUTO_INCREMENT,
  `Фамилия` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Имя` varchar(100) DEFAULT NULL,
  `Отчество` varchar(100) DEFAULT NULL,
  `Должность` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Логин` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Пароль` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Последний вход` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Тип входа` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Фото` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`Код сотрудника`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (101,'Иванов','Иван','Иванович','Продавец','Ivanov@namecomp.ru','2L6KZG','03.03.2023 23:39:56','Успешно','Иванов.jpeg'),(102,'Петров','Петр','Петрович','Продавец','petrov@namecomp.ru','uzWC67','03.03.2023 23:39:56','Успешно','Петров.jpeg'),(103,'Федоров','Федор','Федорович','Администратор','fedorov@namecomp.ru','8ntwUp','12.06.2023 23:47:02','Успешно','Федоров.jpeg'),(104,'Миронов','Вениамин','Куприянович','Старший смены','mironov@namecomp.ru','YOyhfR','10.06.2023 19:44:32','Успешно','Миронов.jpeg'),(105,'Ширяев','Ермолай','Вениаминович','Старший смены','shiryev@namecomp.ru','RSbvHv','03.03.2023 23:39:56','Неуспешно','Ширяев.jpeg'),(106,'Игнатов','Кассиан','Васильевич','Старший смены','ignatov@namecomp.ru','rwVDh9','03.03.2023 23:39:56','Успешно','Игнатов.jpg'),(107,'Хохлов','Владимир','Мэлсович','Продавец','hohlov@namecomp.ru','LdNyos','03.03.2023 23:39:56','Успешно','Хохлов.jpeg'),(108,'Стрелков','Мстислав','Георгьевич','Продавец','strelkov@namecomp.ru','gynQMT','03.03.2023 23:39:56','Успешно','Стрелков.jpeg'),(109,'Беляева','Лилия','Наумовна','Продавец','belyeva@namecomp.ru','AtnDjr','03.03.2023 23:39:56','Успешно','Беляева.jpeg'),(110,'Смирнова','Ульяна','Гордеевна','Продавец','smirnova@namecomp.ru','JlFRCZ','03.03.2023 23:39:56','Успешно','Смирнова.jpeg'),(111,'test','test','test','Администратор','1','1','17.06.2023 15:09:34','Успешно','Смирнова.jpeg'),(112,'test2','test2','test2','Продавец','2','2','17.06.2023 15:12:23','Успешно','Беляева.jpeg');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `Код жанра` int NOT NULL AUTO_INCREMENT,
  `Жанр` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Код жанра`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Классика'),(2,'Фантастика'),(3,'Детектив'),(4,'Учебная литература'),(5,'Сказка'),(6,'Фэнтези'),(7,'Роман'),(8,'Манга'),(9,'Мемуары'),(10,'Религия'),(11,'Психология'),(12,'Философия'),(13,'Детская литература'),(14,'Комиксы'),(15,'Проза'),(16,'Поэзия'),(17,'Драматургия'),(18,'Художественная литература'),(19,'Экономия'),(20,'Право'),(21,'Справочник'),(22,'Медицина');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `history` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Дата входа` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Дата выхода` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Блокировка` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Логин сотрудника` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `history_FK` (`Логин сотрудника`),
  CONSTRAINT `history_FK` FOREIGN KEY (`Логин сотрудника`) REFERENCES `employee` (`Код сотрудника`)
) ENGINE=InnoDB AUTO_INCREMENT=817 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (453,'10.06.2023 18:33:06',NULL,'Успешно',103),(454,NULL,'10.06.2023 18:35:48','Неуспешно',103),(455,'10.06.2023 18:39:13',NULL,'Успешно',102),(456,NULL,'10.06.2023 18:39:22','Неуспешно',102),(631,'11.06.2023 15:16:47',NULL,'Успешно',103),(632,NULL,'11.06.2023 15:16:51','Неуспешно',103),(674,'11.06.2023 15:32:20',NULL,'Успешно',103),(675,'11.06.2023 15:32:29',NULL,'Успешно',103),(676,NULL,'11.06.2023 15:32:30','Неуспешно',103),(677,'11.06.2023 15:32:57',NULL,'Успешно',103),(678,'11.06.2023 15:33:08',NULL,'Успешно',103),(679,NULL,'11.06.2023 15:33:10','Неуспешно',103),(680,'11.06.2023 15:33:51',NULL,'Успешно',103),(681,NULL,'11.06.2023 15:33:58','Неуспешно',103),(682,'11.06.2023 15:34:12',NULL,'Успешно',103),(683,'11.06.2023 15:34:36',NULL,'Успешно',103),(684,NULL,'11.06.2023 15:34:37','Неуспешно',103),(685,'11.06.2023 15:34:39',NULL,'Успешно',103),(686,'11.06.2023 15:38:48',NULL,'Успешно',103),(687,NULL,'11.06.2023 15:38:49','Неуспешно',103),(688,'11.06.2023 15:38:51',NULL,'Успешно',103),(689,'11.06.2023 15:39:28',NULL,'Успешно',103),(690,NULL,'11.06.2023 15:39:29','Неуспешно',103),(797,'12.06.2023 23:25:41',NULL,'Успешно',111),(798,'12.06.2023 23:33:10',NULL,'Успешно',111),(799,NULL,'12.06.2023 23:33:23','Неуспешно',111),(800,'12.06.2023 23:33:28',NULL,'Успешно',111),(801,NULL,'12.06.2023 23:46:53','Неуспешно',111),(802,'12.06.2023 23:47:02',NULL,'Успешно',103),(803,NULL,'12.06.2023 23:50:01','Неуспешно',103),(804,'12.06.2023 23:50:04',NULL,'Успешно',112),(805,NULL,'13.06.2023 00:45:22','Неуспешно',112),(806,'16.06.2023 19:31:56',NULL,'Успешно',111),(807,NULL,'16.06.2023 19:32:30','Неуспешно',111),(808,'16.06.2023 19:36:42',NULL,'Успешно',111),(809,NULL,'16.06.2023 19:36:54','Неуспешно',111),(810,'16.06.2023 19:41:18',NULL,'Успешно',111),(811,NULL,'16.06.2023 19:41:38','Неуспешно',111),(812,'16.06.2023 19:42:09',NULL,'Успешно',111),(813,NULL,'16.06.2023 19:43:07','Неуспешно',111),(814,'17.06.2023 15:09:34',NULL,'Успешно',111),(815,NULL,'17.06.2023 15:12:22','Неуспешно',111),(816,'17.06.2023 15:12:23',NULL,'Успешно',112);
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provider`
--

DROP TABLE IF EXISTS `provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provider` (
  `Код поставщика` int NOT NULL AUTO_INCREMENT,
  `Наименование компании` varchar(100) NOT NULL,
  `Юридический адрес` varchar(100) NOT NULL,
  `Номер телефона` varchar(100) NOT NULL,
  PRIMARY KEY (`Код поставщика`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider`
--

LOCK TABLES `provider` WRITE;
/*!40000 ALTER TABLE `provider` DISABLE KEYS */;
INSERT INTO `provider` VALUES (1,'Творческая пристань','142408, область МОСКОВСКАЯ, НОГИНСК, ул. МОСКОВСКАЯ, 9, 30',''),(4,'Арт принт','125009, г. МОСКВА, СТРАСТНОЙ бульвар, д. 4/3, стр. 1',''),(5,'Книжный клуб 36,6','Москва. ул. Бакунинская, д. 71, стр. 10','+7(495)926-45-44');
/*!40000 ALTER TABLE `provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provider_order`
--

DROP TABLE IF EXISTS `provider_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provider_order` (
  `Код поставки` int NOT NULL AUTO_INCREMENT,
  `Поставщик` int NOT NULL,
  `Дата создания` date NOT NULL,
  `Книга` int NOT NULL,
  `Количество` int NOT NULL,
  `Стоимость` float NOT NULL,
  PRIMARY KEY (`Код поставки`),
  KEY `book_idx` (`Книга`),
  KEY `provider_idx` (`Поставщик`),
  CONSTRAINT `book` FOREIGN KEY (`Книга`) REFERENCES `book` (`Код книги`),
  CONSTRAINT `provider` FOREIGN KEY (`Поставщик`) REFERENCES `provider` (`Код поставщика`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider_order`
--

LOCK TABLES `provider_order` WRITE;
/*!40000 ALTER TABLE `provider_order` DISABLE KEYS */;
INSERT INTO `provider_order` VALUES (17,1,'2023-06-12',12,100,120000),(18,1,'2023-06-12',13,140,140000),(19,4,'2023-06-12',4,50,29950),(20,4,'2023-06-17',12,100,120000);
/*!40000 ALTER TABLE `provider_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishing_house`
--

DROP TABLE IF EXISTS `publishing_house`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publishing_house` (
  `Код издательства` int NOT NULL AUTO_INCREMENT,
  `Название издательства` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Код издательства`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishing_house`
--

LOCK TABLES `publishing_house` WRITE;
/*!40000 ALTER TABLE `publishing_house` DISABLE KEYS */;
INSERT INTO `publishing_house` VALUES (1,'Bubble'),(2,'Эксмо'),(3,'ACT'),(4,'Просвещение'),(5,'Дрофа'),(6,'Питер'),(7,'Росмэн'),(8,'Square Enix'),(9,'Перо'),(10,'Фламинго');
/*!40000 ALTER TABLE `publishing_house` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Код заказа` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Дата создания` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Время заказа` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Клиент` int DEFAULT NULL,
  `Книга` int DEFAULT NULL,
  `Сотрудник` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `requests_FK` (`Книга`),
  KEY `requests_FK_1` (`Клиент`),
  KEY `requests_FK_2` (`Сотрудник`),
  CONSTRAINT `requests_FK` FOREIGN KEY (`Книга`) REFERENCES `book` (`Код книги`),
  CONSTRAINT `requests_FK_1` FOREIGN KEY (`Клиент`) REFERENCES `client` (`Код клиента`),
  CONSTRAINT `requests_FK_2` FOREIGN KEY (`Сотрудник`) REFERENCES `employee` (`Код сотрудника`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
INSERT INTO `request` VALUES (24,'35256230/2023.02.28','2023.02.28','21:51',45462526,4,101),(25,'35256230/2023.02.28','2023.02.28','21:51',45462526,4,101),(26,'35256230/2023.02.28','2023.02.28','21:51',45462526,4,101),(27,'35256230/2023.02.28','2023.02.28','21:51',45462526,4,101),(28,'44464363/2023.03.01','2023.03.01','10:13',45462526,4,101),(29,'44464363/2023.03.01','2023.03.01','10:13',45462526,4,101),(30,'44464363/2023.03.01','2023.03.01','10:13',45462526,4,101),(31,'44464363/2023.03.01','2023.03.01','10:13',45462526,13,101),(32,'0/2023.03.01','2023.03.01','10:15',45462526,4,101),(33,'0/2023.03.01','2023.03.01','10:15',45462526,4,101),(36,'0/2023.03.01','2023.03.01','10:19',45462526,12,101),(37,'0/2023.03.01','2023.03.01','10:19',45462526,13,101),(41,'45462526/2023.03.04','2023.03.04','10:19',45462526,13,101),(42,'45462526/2023.03.07','2023.03.07','12:49',45462526,4,102),(44,'45462526/2023.06.11','2023.06.11','18:28',45462526,13,111),(45,'45462526/2023.06.16','2023.06.16','19:32',45462526,4,111),(46,'45462526/2023.06.16','2023.06.16','19:32',45462526,13,111),(47,'45462526/2023.06.16','2023.06.16','19:32',45462526,13,111),(48,'45462526/2023.06.16','2023.06.16','19:32',45462526,12,111),(49,'45462526/2023.06.17','2023.06.17','15:09',45462526,4,111),(50,'45462526/2023.06.17','2023.06.17','15:09',45462526,4,111),(51,'45462526/2023.06.17','2023.06.17','15:09',45462526,4,111),(52,'45462526/2023.06.17','2023.06.17','15:09',45462526,4,111);
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-17 20:53:07
