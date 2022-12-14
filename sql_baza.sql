-- MariaDB dump 10.19  Distrib 10.4.22-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	10.4.22-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments_Author` varchar(255) DEFAULT NULL,
  `comments_Body` text DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'Jennifer E. Seymore','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tincidunt orci ultrices magna semper rutrum. Maecenas vestibulum euismod accumsan. Mauris nec dui at lectus iaculis rhoncus. ',1),(2,'Raquel R. Tran','Curabitur et viverra neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec eu augue eget augue tempor malesuada eget a nulla.',1),(3,'Cecil H. Gilbert','Aliquam mollis a tellus non sagittis. Curabitur ac est erat. Nullam vitae diam non lacus consequat ornare sed at mauris. In sodales nisl eget augue euismod placerat. ',1),(4,'Cecil H. Gilbert','Aliquam mollis a tellus non sagittis. Curabitur ac est erat. Nullam vitae diam non lacus consequat ornare sed at mauris. In sodales nisl eget augue euismod placerat. ',1),(5,'Kristie W. Henry','Some Random Comment.',4),(6,'Timothy B. Williams',' Nulla nisi dui, varius id lectus non, dictum sagittis ex. Suspendisse libero magna, aliquam et tellus vestibulum, sagittis porttitor massa. Praesent elementum dui pulvinar metus dignissim interdum. Cras viverra sapien vitae velit feugiat molestie. Vestibulum rhoncus euismod nunc eget luctus. Nam pellentesque sem quis tincidunt laoreet. ',4),(7,'Paul T. Joe','Cras arcu urna, rutrum vitae maximus non, molestie non ex. Aenean laoreet malesuada tellus ut consequat. Etiam aliquam faucibus ligula at venenatis.',3),(8,'David C. Shubert','Vivamus non erat at sapien bibendum condimentum non nec nibh. Duis sed sem neque. Ut commodo dolor eu est dignissim consequat. Sed pharetra ante sem, vitae cursus justo volutpat non. Ut sed tortor eget neque sagittis blandit. Donec blandit nisi in pellentesque tristique. ',2),(9,'Jeanne M. Hargett','Maecenas suscipit vel lectus eget sodales. Mauris hendrerit sagittis ex vel tempor. In molestie urna non pellentesque facilisis. Proin tempor elit eget odio varius, non fermentum velit ultricies. Mauris rutrum enim non massa sodales ullamcorper. Vestibulum sit amet arcu a lorem dignissim pharetra ac non est. Suspendisse potenti. ',2);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(60) NOT NULL,
  `Body` text NOT NULL,
  `Author` varchar(255) NOT NULL,
  `Created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Title` (`Title`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'My First Post','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut id nibh enim. Suspendisse potenti. Nunc consequat sed risus vel aliquet. Proin porttitor purus orci, non euismod lorem malesuada vel. Nulla at orci et mi viverra sollicitudin. In hac habitasse platea dictumst. Curabitur non nisl risus. Curabitur ut congue nibh. Suspendisse scelerisque nulla id arcu elementum, at facilisis arcu vulputate. Quisque tempus accumsan nibh, nec viverra mi commodo ut.\r\n\r\nPhasellus vitae tortor ut nisi sodales placerat. Etiam vulputate enim massa, sed mattis tortor tincidunt at. Nulla tincidunt ipsum in elementum volutpat. Fusce porttitor tortor rutrum, euismod lectus id, viverra nunc. Nulla posuere, ex ut mollis vulputate, leo ex ultricies nulla, eget euismod sem leo nec urna. Phasellus vitae feugiat justo. Vestibulum viverra enim sit amet tortor iaculis condimentum. Donec eget felis nunc. Maecenas finibus ultrices lectus at commodo. Nunc ornare quam erat, et convallis risus viverra eu.\r\n\r\nQuisque convallis elementum dui ac feugiat. Donec ac luctus sem. Cras pulvinar, velit at blandit porttitor, eros felis lacinia nunc, non pharetra nisl dui nec justo. Aliquam a turpis sapien. Nam sollicitudin sit amet neque a interdum. Nullam a lorem sed lacus malesuada porta a quis augue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris elementum pellentesque elit, vel pulvinar velit maximus quis.\r\n\r\nNulla porta mauris nulla, sit amet accumsan ex pharetra non. Curabitur porta ligula in neque fringilla, sed commodo ipsum scelerisque. Fusce volutpat pellentesque tellus quis hendrerit. Etiam ornare pellentesque varius. Vivamus tempus placerat egestas. Sed tempus neque a vehicula euismod. Fusce aliquam mauris quis risus facilisis, sit amet dapibus justo ornare. Pellentesque porttitor orci eu justo efficitur, ut maximus nulla gravida. Cras malesuada, purus et mollis hendrerit, urna elit dictum ex, in ultrices purus nisi sit amet libero. Nam sit amet imperdiet turpis. Curabitur a malesuada augue. In et congue diam. Morbi interdum lobortis arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\r\n\r\nVestibulum pretium lacus sit amet laoreet lacinia. Maecenas sem erat, accumsan vel aliquet id, fringilla sit amet metus. Phasellus ornare ligula nec odio pharetra, sed condimentum ipsum feugiat. Nunc congue turpis ac nulla lacinia porta eget a est. Fusce sed pretium diam. Phasellus quis facilisis metus. Donec porta bibendum porta. Etiam at libero a nunc tempus varius et non dolor. Etiam scelerisque volutpat neque vitae maximus. Duis quis mi at est semper malesuada et sit amet nisl. Sed facilisis a tortor sit amet gravida. Vivamus mollis commodo congue. Aenean sagittis in ex in fringilla. ','John Doe','2022-12-15 12:05:06'),(2,'My Second Post','Duis eu mi sit amet sapien vestibulum finibus eu vel lorem. Donec odio justo, ultricies sed urna et, consequat convallis elit. Morbi malesuada lacus consequat nisi porta euismod. Pellentesque ac metus ut enim ultrices malesuada nec eu libero. Aliquam erat volutpat. Suspendisse faucibus ullamcorper elit, at cursus odio euismod ut. Cras faucibus velit quis rhoncus tempor. Integer ante odio, tincidunt a gravida ut, dapibus nec ante. Proin elementum vel ex nec accumsan. Nulla mauris enim, bibendum nec tempor vel, placerat non massa. Mauris ac accumsan justo, eget pulvinar turpis. Sed egestas dolor molestie, interdum diam sed, aliquam ante. Quisque vestibulum hendrerit turpis nec facilisis.\r\n\r\nPellentesque posuere dapibus urna tincidunt rutrum. Aenean porta, augue eu luctus tempor, lacus nunc commodo sapien, accumsan tristique quam justo ut risus. Aenean a ullamcorper ipsum. Nam volutpat mattis est, vel sodales orci vestibulum in. Praesent tellus arcu, laoreet egestas hendrerit ut, hendrerit et orci. Sed turpis tellus, tristique vitae aliquet eu, convallis at ex. Suspendisse potenti. Morbi eros dui, commodo a tempus eget, tempus vel massa. Duis velit libero, lobortis quis nisl et, tristique placerat libero. Sed neque dolor, molestie vel scelerisque vel, sagittis in nulla. Nulla consequat mollis eros ut molestie. Sed eu elementum lacus. Phasellus molestie accumsan diam, euismod vulputate nisi bibendum a.\r\n\r\nMauris at ante purus. Maecenas in ante eget velit mollis lacinia ac eu velit. Integer vulputate, neque ut blandit scelerisque, velit ante consectetur neque, id vestibulum massa turpis ut metus. Fusce at facilisis diam. Quisque eu mauris id turpis suscipit bibendum. Nullam fermentum nunc vel ultricies ullamcorper. Donec eleifend euismod tristique. Proin porta velit justo, vel posuere eros dignissim sit amet. Cras vehicula ac leo eu varius. Maecenas dui ante, euismod non condimentum eget, scelerisque id justo. Donec ac porta leo. Aliquam viverra a enim vitae pellentesque.\r\n\r\nInteger commodo lacus pellentesque mi tristique, quis vestibulum dui egestas. Sed lectus lorem, maximus egestas neque non, accumsan dapibus metus. Maecenas mollis ullamcorper dignissim. Integer bibendum leo vitae justo fermentum, convallis congue erat blandit. Aliquam auctor ligula ac tortor pharetra tempus. Sed sed lobortis lacus, in venenatis lectus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut vel ornare mi. Vestibulum ut nunc purus. Sed tincidunt aliquet eros non posuere. ','Steve Jobs','2022-12-15 12:05:51'),(3,'My Third Post','Maecenas fringilla euismod felis, vitae auctor nulla laoreet eget. Phasellus hendrerit elit ac risus blandit, tempor varius arcu dapibus. Fusce ex enim, tempus ac efficitur sed, venenatis in leo. Integer in arcu nec nisl bibendum placerat. Praesent id eros ligula. Aenean euismod commodo tellus ac pharetra. Nam ex metus, gravida in congue sed, ultricies et ligula. Morbi vel finibus leo. Quisque orci diam, sollicitudin non vestibulum eget, fermentum in orci. Donec at tristique tortor, vitae ullamcorper sapien. Donec lectus augue, aliquam vitae feugiat non, ornare at nibh. Nulla quis nunc volutpat sapien mollis egestas sit amet vitae est.\r\n\r\nNulla vitae commodo augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse rutrum, diam ut feugiat volutpat, metus leo dapibus urna, non vestibulum eros libero vitae massa. Curabitur congue purus non risus tempor, a malesuada dolor sagittis. Integer euismod rhoncus metus, ac tincidunt sem. Morbi mauris tortor, tempus vitae arcu vel, eleifend rutrum diam. Morbi et congue leo, in porttitor leo. Donec sapien eros, ullamcorper porttitor purus ac, auctor bibendum augue.\r\n\r\nPellentesque rhoncus odio vel luctus molestie. In vitae placerat orci. Vestibulum enim arcu, ultrices finibus pellentesque ut, placerat vel justo. Duis erat nisi, pellentesque porta scelerisque a, dictum vel enim. Cras dictum nulla leo, et fringilla ex fringilla ut. Suspendisse molestie accumsan sapien, a hendrerit arcu porta non. Aenean gravida dolor dignissim, facilisis dui sit amet, posuere nulla. Etiam est risus, finibus sodales nisl eu, mattis efficitur augue. Quisque justo odio, laoreet ac efficitur quis, volutpat eu ipsum. Nam ut erat commodo ex lacinia facilisis in nec massa. Etiam et molestie est.\r\n\r\nDonec commodo sem vitae dapibus ornare. Pellentesque eget ipsum risus. Mauris nec vulputate nunc, ut lobortis ex. Donec vitae varius urna. Sed justo ligula, rutrum eu enim eu, tempor ultricies odio. Praesent efficitur, ipsum et vestibulum tempor, dolor lectus pellentesque ligula, id vestibulum nibh nisl nec justo. Fusce velit mauris, tincidunt vel ipsum vel, gravida pharetra est. Sed varius gravida magna vel tempor. Nullam elementum a risus eget sodales. Curabitur sodales mauris orci, tempus rhoncus urna consectetur et. Suspendisse in interdum enim. Aenean aliquet nisl nec eleifend congue.\r\n\r\nNulla ut bibendum justo. Duis laoreet, magna quis dapibus imperdiet, ligula est ultrices leo, eu feugiat risus quam vitae augue. Maecenas et neque at arcu dignissim ultrices. Etiam felis nibh, luctus eu condimentum vel, auctor et nisi. Praesent arcu leo, pulvinar et elit sed, pulvinar fermentum nibh. Donec mollis justo non turpis tempus ullamcorper. Cras ut vehicula nibh. Suspendisse ut magna vel turpis interdum finibus quis at mi. Suspendisse at porttitor velit. Vestibulum libero velit, scelerisque eu ex in, tempor condimentum mi. ','Elon Musk','2022-12-15 12:07:07'),(4,'My Last Post',' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tincidunt orci ultrices magna semper rutrum. Maecenas vestibulum euismod accumsan. Mauris nec dui at lectus iaculis rhoncus. Curabitur et viverra neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec eu augue eget augue tempor malesuada eget a nulla. Aliquam mollis a tellus non sagittis. Curabitur ac est erat. Nullam vitae diam non lacus consequat ornare sed at mauris. In sodales nisl eget augue euismod placerat. Nulla nisi dui, varius id lectus non, dictum sagittis ex. Suspendisse libero magna, aliquam et tellus vestibulum, sagittis porttitor massa. Praesent elementum dui pulvinar metus dignissim interdum. Cras viverra sapien vitae velit feugiat molestie. Vestibulum rhoncus euismod nunc eget luctus. Nam pellentesque sem quis tincidunt laoreet.\r\n\r\nCras arcu urna, rutrum vitae maximus non, molestie non ex. Aenean laoreet malesuada tellus ut consequat. Etiam aliquam faucibus ligula at venenatis. Vivamus lacinia augue non augue dapibus dignissim eu et diam. Quisque gravida eleifend tellus, vitae pharetra libero commodo id. Integer tincidunt erat nulla, eget tincidunt sem vehicula eu. Phasellus at luctus libero. Mauris fringilla justo vel tellus sagittis, eget faucibus ante blandit. Aenean id volutpat ipsum. Aliquam accumsan, diam maximus dignissim eleifend, ex elit sagittis est, sit amet sollicitudin orci mi tristique erat. In lorem libero, fermentum eget tortor et, posuere rhoncus felis. Fusce vel pretium libero. Vivamus eu felis egestas, accumsan metus et, pharetra sem. Sed erat augue, vehicula et ornare ut, finibus sodales ligula. In a enim placerat, hendrerit risus at, suscipit ex.\r\n\r\nVivamus non erat at sapien bibendum condimentum non nec nibh. Duis sed sem neque. Ut commodo dolor eu est dignissim consequat. Sed pharetra ante sem, vitae cursus justo volutpat non. Ut sed tortor eget neque sagittis blandit. Donec blandit nisi in pellentesque tristique. Duis aliquet ornare tortor sed feugiat. Aliquam auctor enim nunc, ut dapibus lectus varius in. Ut condimentum faucibus nisl, et dapibus quam vehicula vel. Pellentesque auctor, est vel accumsan dapibus, tellus odio commodo diam, ac auctor velit ipsum et lorem. Curabitur scelerisque convallis nulla, vel dignissim enim tristique vel.\r\n\r\nMaecenas suscipit vel lectus eget sodales. Mauris hendrerit sagittis ex vel tempor. In molestie urna non pellentesque facilisis. Proin tempor elit eget odio varius, non fermentum velit ultricies. Mauris rutrum enim non massa sodales ullamcorper. Vestibulum sit amet arcu a lorem dignissim pharetra ac non est. Suspendisse potenti. ','Freddie Mercury','2022-12-15 15:52:32');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-16  0:02:31
