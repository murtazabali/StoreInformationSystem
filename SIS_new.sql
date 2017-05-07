/*
SQLyog Ultimate v12.09 (32 bit)
MySQL - 5.0.67-community-nt : Database - sis
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sis` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `sis`;

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL auto_increment,
  `orderdate` datetime default NULL,
  PRIMARY KEY  (`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `orders` */

/*Table structure for table `orderdetail` */

DROP TABLE IF EXISTS `orderdetail`;

CREATE TABLE `orderdetail` (
  `odid` int(11) NOT NULL auto_increment,
  `orderid` int(11) default NULL,
  `productid` int(11) default NULL,
  `qty` int(11) default NULL,
  PRIMARY KEY  (`odid`),
  KEY `orderid` (`orderid`),
  KEY `productid` (`productid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `orderdetail` */

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `productid` int(11) NOT NULL,
  `description` varchar(300) default NULL,
  `price` int(11) default NULL,
  PRIMARY KEY  (`productid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `products` */

insert  into `products`(`productid`,`description`,`price`) values (1,'3-M Bumper Saver Laminates 2pcs',58),(2,'3-M Laminates Large 1pcs',40),(3,'3-M Laminates Small',31),(4,'3-M Metalic Scourer Card 1pcs',35),(5,'3-M Nail Saver Laminates 1pcs',45),(6,'3-M Nail Saver Sponge V/P 2pcs',85),(7,'3-M Pads Large 1pcs',31),(8,'3-M Sponge Wipe Large 3pcs',154),(9,'3-M Sponge Wipe Large 5pcs',240),(10,'3-M Stainless Steel Spiral Card 2pcs',67),(11,'3-M Stainless Steel Spiral Card Jumbo Pack 1pcs',65),(12,'7CF Brown Leather & Tyre Car Wax 450ml',135),(13,'7CF Furniture Polish 550ml',149),(14,'A-Ghani Rooh-e-Kewra 300ml',39),(15,'A-Ghani Rose Water 350ml',39),(16,'Abbott Mospel Regular 45ml',112),(17,'Absorbent Cotton Wool 200gm',80),(18,'Absorbent Cotton Wool 400gm',135),(19,'ACI Bleach 1900ml',255),(20,'ACI Color Bleach 1900ml',265),(21,'Adidas Ice Dive Body Spray 150ml',159),(22,'Aiteti Car Air Freshener Assorted 8ml AC Grill',195),(23,'Al Marai Cream Cheese Spread Blue Jar 140gm',160),(24,'Al Marai Cream Cheese Spread Blue Jar 240gm',205),(25,'Al Marai Cream Cheese Spread Blue Jar 500gm',485),(26,'Al Marai Cream Cheese Spread Golden Jar 240gm',205),(27,'Al Marai Cream Cheese Spread Golden Jar 500gm',479),(28,'Al Marai Long Life Full Fat Liquid Milk 1ltr',175),(29,'Al Marai Long Life Low Fat Liquid Milk 1ltr',175),(30,'Alpen No Added Sugar Museli Cereal 560gm',485),(31,'Alpen Original Cereal 625gm',445),(32,'Alpen Swiss Style Original Museli Cereal 375gm',310),(33,'Alshifa Acacia Honey Jar 250gm',535),(34,'Alshifa Acacia Honey Jar 500gm',1056),(35,'Alshifa Black Forest Honey Jar 1kg',1970),(36,'Alshifa Black Forest Honey Jar 250gm',535),(37,'Alshifa Black Forest Honey Jar 500gm',1056),(38,'Alshifa Honey 125gm',196),(39,'Alshifa Honey 1kg',1325),(40,'Alshifa Honey 250gm',374),(41,'Alshifa Honey 500gm',633),(42,'Alshifa Honey 750gm',892),(43,'Alshifa Lime Tree Honey Jar 500gm',1056),(44,'Alshifa Orange Honey Jar 500gm',1056),(45,'American Garden Apple Cider Vinegar 473ml',140),(46,'American Garden Apple Cider Vinegar 946ml 32.oz',235),(47,'American Garden Chocolate Topping Syrup 680gm',310),(48,'American Garden Chunky Peanut Butter 340gm',310),(49,'American Garden Chunky Peanut Butter 510gm',435),(50,'American Garden Creamy Caesar Dressing 267ml',260),(51,'American Garden Creamy Peanut Butter 340gm',310),(52,'American Garden Creamy Peanut Butter 510gm',435),(53,'American Garden French Dressing 267ml',260),(54,'American Garden French Dressing 473ml',460),(55,'American Garden Grape Vinegar 473ml 16.0Z',145),(56,'American Garden Hickory BBQ Sauce Bottle 510gm',310),(57,'American Garden Honey BBQ Sauce Bottle 510gm',310),(58,'American Garden Hot Sauce Bottle 177ml',99),(59,'American Garden Hot Sauce Bottle 354ml',195),(60,'American Garden Hot Sauce Bottle 472ml',199),(61,'American Garden Hot Sauce Bottle 88ml',55),(62,'American Garden Italian Dressing 267ml',260),(63,'American Garden Italian Light Dressing 267ml',260),(64,'American Garden Lemon Juice 946ml',340),(65,'American Garden Original BBQ Sauce Bottle 510gm',310),(66,'American Garden Pancake Syrup 24.oz/709ml',445),(67,'American Garden Pizza Sauce Jar 397gm',255),(68,'American Garden Ranch Dressing 267ml',260),(69,'American Garden Ranch Light Dressing 473ml',460),(70,'American Garden Soy Sauce Bottle 295ml',199),(71,'American Garden Steak Sauce Bottle 284gm',210),(72,'American Garden Strawberry Topping Syrup 624gm',310),(73,'American Garden Thousand Island Light Dressing 267ml',260),(74,'American Garden Thousand Island Regular Dressing 267ml',260),(75,'American Garden White Vinegar 473ml',145),(76,'American Garden White Vinegar 946ml 32.oz',245),(77,'American Garden Worcestershire Sauce Bottle 295ml',185),(78,'APIIL Disposable Food Container F1 400ml 6pcs',40),(79,'APIIL Disposable Food Container F2 600ml 6pcs',60),(80,'APIIL Disposable Plate Medium 6pcs',45),(81,'APIIL Disposable Plate Small 6pcs',35),(82,'AR Black Garbage Bags 20x30',40),(83,'AR Black Garbage Bags 24x36',40),(84,'AR Black Garbage Bags 30x50',52),(85,'Ariel Original Washing Powder Pouch 1kg',215),(86,'Ariel Original Washing Powder Pouch 2kg',425),(87,'Ariel Original Washing Powder Pouch 3kg',624),(88,'Ariel Original Washing Powder Pouch 500gm',123),(89,'Ariel Washing Powder Box 3kg',999),(90,'Ashrafi Fine Aata 5kg',220),(91,'Ashrafi Fine Aata Bag 10kg',435),(92,'Astonish Kitchen Cleaner 750ml',175),(93,'Astonish Window & Glass Cleaner 750ml',175),(94,'Ausman Marshmallow Assorted Pouch 138gm',80),(95,'Bake Parlor Achari Macaroni Box 250gm',46),(96,'Bake Parlor Afghani Aash Macaroni Box',45),(97,'Bake Parlor Balti Macaroni Box 250gm',43),(98,'Bake Parlor BBQ Macaroni Box 250gm',45),(99,'Bake Parlor BBQ Sauce 300ml',82),(100,'Bake Parlor Biryani Macaroni Box',45),(101,'Bake Parlor Cajun Spaghetti Box 250gm',45),(102,'Bake Parlor Chat Macaroni Box',45),(103,'Bake Parlor Chicken Chilli Macaroni Box 250gm',45),(104,'Bake Parlor Chicken Chowmein Macaroni Box 250gm',45),(105,'Bake Parlor Chicken Lasagne Macaroni Box 250gm',72),(106,'Bake Parlor Chicken Manchorian Macaroni Box 250gm',43),(107,'Bake Parlor Chilli Garlic Sauce 300ml',72),(108,'Bake Parlor Chilli Sauce 300ml',68),(109,'Bake Parlor Chilli Sauce 750ml',115),(110,'Bake Parlor Elbow Macaroni Pouch 400gm',68),(111,'Bake Parlor Fajita Spaghetti Box 250gm',43),(112,'Bake Parlor Fancy Spaghetti Pouch 500gm',87),(113,'Bake Parlor Fusilli Macaroni Pouch 400gm',62),(114,'Bake Parlor Jalfrezi Macaroni Box 250gm',45),(115,'Bake Parlor Long Macaroni Box 450gm',84),(116,'Bake Parlor Longer Macaroni Pouch 400gm',68),(117,'Bake Parlor Meat Ball Spaghetti 250gm',45),(118,'Bake Parlor Pasta Cut Roasted Vermicelli 265gm',24),(119,'Bake Parlor Penne Macaroni Pouch 400gm',68),(120,'Bake Parlor Samosa Macaroni Box',45),(121,'Bake Parlor Seven Spice Macaroni 250gm',48),(122,'Bake Parlor Shashlik Macaroni Box 250gm',45),(123,'Bake Parlor Shell Macaroni Pouch 400gm',68),(124,'Bake Parlor Short Cut Macaroni Pouch 400gm',68),(125,'Bake Parlor Small Elbow Macaroni Box 400gm',60),(126,'Bake Parlor Soya Chilli Vinegar Sauce Trio Pack 120ml 3pcs',79),(127,'Bake Parlor Soya Sauce 300ml',64),(128,'Bake Parlor Soya Sauce Bottle 750ml',105),(129,'Bake Parlor Tikka Macaroni 250gm',43),(130,'Barkat Cooking Oil Bottle 3ltr',440),(131,'Barkat Cooking Oil Bottle 5ltr',730),(132,'Barkat Cooking Oil Pouch 1ltr',133),(133,'Baygon Flying & Crawling Insect Killer Spray 400ml',299),(134,'Baygon Flying & Crawling Insect Killer Spray 600ml',385),(135,'Baygon Powder Insect Killer 100gm',82),(136,'Best Food French Dressing Pouch 800ml',265),(137,'Best Food Thousand Island Dressing Pouch 800ml',315),(138,'Betty Crocker Butter Milk Pancake Mix 1.04kg',365),(139,'Betty Crocker Dark Chocolate Fudge Brownie Mix 563gm',235),(140,'Betty Crocker Double Chocolate Chunk Cookies Mix 496gm',295),(141,'Betty Crocker Fudge Brownie Mix Box 519gm',235),(142,'Betty Crocker Fudge Brownie Mix Pouch 290gm',160),(143,'Betty Crocker Original Pancake Mix 1.04kg',365),(144,'Betty Crocker S/M Butter Dark Cake Mix',195),(145,'Betty Crocker S/M Butter Pecan Cake Mix',195),(146,'Betty Crocker S/M Butter Racipe Yellow Cake Mix',195),(147,'Betty Crocker S/M Butter Recipe Chocolate Cake Mix',195),(148,'Betty Crocker S/M Carrot Cake Mix Box',215),(149,'Betty Crocker S/M Cherry Chip Cake Mix',195),(150,'Betty Crocker S/M Chocolate Fudge Cake Mix',195),(151,'Betty Crocker S/M Dark Chocolate Cake Mix',195),(152,'Betty Crocker S/M Devil Food Cake Mix',195),(153,'Betty Crocker S/M French Vanilla Cake Mix',195),(154,'Betty Crocker S/M Germon Chocolate Cake Mix',195),(155,'Betty Crocker S/M Golden Vanilla Cake Mix',195),(156,'Betty Crocker S/M Lemon Cake Mix',195),(157,'Betty Crocker S/M Milk Chocolate Cake Mix',195),(158,'Betty Crocker S/M Rainbow Chip Cake Mix',195),(159,'Betty Crocker S/M Red Valvet Cake Mix',195),(160,'Betty Crocker S/M Strawberry Cake Mix',195),(161,'Betty Crocker S/M Triple Chocolate Fudge Cake Mix',195),(162,'Betty Crocker S/M Vanilla Cake Mix Box 432gm',195),(163,'Betty Crocker S/M White Cake Mix',195),(164,'Betty Crocker S/M Yellow Cake Mix 432gm',195),(165,'Bisconni Chocolate Chip Cookies H/R',14),(166,'Bisconni Chocolate Chip Cookies T/P',105),(167,'Bisconni Chocolatto Biscuit H/R Rs.20',18),(168,'Bisconni Cocomo Biscuit Box 18pcs',164),(169,'Bisconni Cocomo Biscuit T/P Box 24pcs',105),(170,'Bonus Active Washing Powder 1kg',115),(171,'Bonus Active Washing Powder 2kg',225),(172,'Bonus Active Washing Powder 400gm',52),(173,'Bonus Tri Star Washing Powder 1kg',85),(174,'Bonus Tri Star Washing Powder 2kg',149),(175,'Bonus Tri Star Washing Powder 500gm',47),(176,'Bounty Chocolate 285gm 5pcs',350),(177,'Bounty Chocolate Bar 57gm',62),(178,'Bounty Miniatures Chocolate Pouch 150gm',299),(179,'Britannia 50-50 Tasty Biscuit 71gm',62),(180,'Britannia Bour Bons Chocolate Cream Biscuit 97gm',65),(181,'Britannia Dates Roll Cookies Pouch 90gm',70),(182,'Britannia Digestive High Fibre Biscuit 225gm',130),(183,'Britannia Digestive High Fibre Biscuit 400gm',215),(184,'Britannia Digestive Sugar Free Biscuit 200gm',145),(185,'Britannia Digestive Sugar Free Biscuit 350gm',235),(186,'Britannia Fig Roll Cookies Pouch 90gm',70),(187,'Britannia Good Day Butter Cookies 90gm',62),(188,'Britannia Good Day Cashew Cookies 90gm',62),(189,'Britannia Good Day Choco Nut Cookies 100gm',67),(190,'Britannia Good Day Pista & Almond Cookies 90gm',48),(191,'Britannia Little Hearts Biscuit Pouch 75gm',45),(192,'Britannia Marie Gold Biscuit 176gm',89),(193,'Britannia Milk Biscuit 90gm',62),(194,'Britannia Nice Time Biscuit 100gm',62),(195,'Britannia Vita Marie Gold Biscuit 140gm',94),(196,'Brite Antibacterial Washing Powder 1kg',235),(197,'Brite Antibacterial Washing Powder 500gm',118),(198,'Brite Machine Wash Washing Powder 1kg',269),(199,'Brite Machine Wash Washing Powder 500gm',138),(200,'Brite Maximum Power Washing Powder 1kg',235),(201,'Brite Maximum Power Washing Powder 2kg',419),(202,'Brite Maximum Power Washing Powder 500gm',115),(203,'Brooke Bond Supreme Tea Box 190gm',124),(204,'Brooke Bond Supreme Tea Jar 450gm',315),(205,'Brooke Bond Supreme Tea Pouch 950gm',580),(206,'C Zar Roach Killing Gel 5gm',80),(207,'Cadburry Perk Chocolate 21.8Gm',18),(208,'Cadbury Cocoa Powder 250gm',399),(209,'Cadbury Cocoa Powder Jar 125gm',265),(210,'Cadbury Dairy Milk Bubbly Milk Chocolate Bar 20gm',28),(211,'Cadbury Dairy Milk Bubbly Milk Chocolate Bar 40gm',55),(212,'Cadbury Dairy Milk Bubbly Milk Chocolate Bar 87gm',135),(213,'Cadbury Dairy Milk Chocolate 22gm',19),(214,'Cadbury Dairy Milk Chocolate 38gm',43),(215,'Cadbury Dairy Milk Chocolate 47gm',52),(216,'Cadbury Dairy Milk Chocolate 8.5gm',10),(217,'Cadbury Dairy Milk Chocolate 90gm',120),(218,'Cadbury Dairy Milk Crackle Chocolate Bar 24gm',28),(219,'Cadbury Dairy Milk Fruit & Nut Chocolate 47gm',52),(220,'Cadbury Dairy Milk M/C Cookie Gummy Crunch Chocolate Bar 38gm',55),(221,'Cadbury Dairy Milk M/C Jelly Poppng Candy Chocolate Bar 160gm',235),(222,'Cadbury Dairy Milk M/C Jelly Poppng Candy Chocolate Bar 38gm',55),(223,'Cadbury Dairy Milk Miniature Chocolate Pouch 176gm',275),(224,'Cadbury Dairy Milk New Chocolate 37gm',46),(225,'Cadbury Flake Chocolate 32gm',80),(226,'Cadbury Flake Chocolate Bar 18gm',54),(227,'Cadbury Flake Chocolate Pouch 128gm 3+1',260),(228,'Cadbury Fruit & Nut New Chocolate 40gm',52),(229,'Cadbury Mini Finger Milk Chocolate Pouch 110gm',220),(230,'Cadbury Perk Chocolate 16gm',10),(231,'Cadbury Perk Chocolate 7.2gm',5),(232,'Canderel Healthy Sweetener Jar 125gm',295),(233,'Canderel Healthy Sweetener Pouch 100gm',210),(234,'Canderel Sweetener 100pcs',90),(235,'Canderel Sweetener 200pcs',160),(236,'Canderel Sweetener Jar 40gm',140),(237,'Canderel Sweetener Sachet 50pcs',140),(238,'Candyland Cola Large Candy 250gm',43),(239,'Candyland Cola Small Candy 158gm 35pcs',31),(240,'Candyland Eclairs Toffee 322gm 40pcs',71),(241,'Candyland Fanty Large Candy 250gm',43),(242,'Candyland Fizzy Jelly O Jelly Box 24pcs',108),(243,'Candyland Imlee Candy 158gm 35pcs',30),(244,'Candyland Jello Mello Jelly Box',109),(245,'Candyland Puffs Colour Marshmallow Pouch 200gm',44),(246,'Candyland Puffs Marshmallow Pouch 200gm',44),(247,'Candyland Puffs Rainbow Marshmallow Pouch 200gm',44),(248,'Canolive Premium Canola Cooking Oil Bottle 3ltr',580),(249,'Canolive Premium Canola Cooking Oil Bottle 5ltr',960),(250,'Canolive Premium Canola Cooking Oil Pouch 1ltr',184),(251,'Chaseup Baisan 1kg',155),(252,'Chaseup Bowl Original Toilet Cleaner 500ml',99),(253,'Chaseup Chana Daal 1kg',190),(254,'Chaseup Chana Daal 500gm',95),(255,'Chaseup China Grass Packet',20),(256,'Chaseup Classic Phenyl 450ml',99),(257,'Chaseup Concentrated Phenyl 450ml',99),(258,'Chaseup Crown Popcorn Pouch 200gm',35),(259,'Chaseup Flexible Disposable Straw 6mm 100pcs',48),(260,'Chaseup Freshing MPC 1ltr',159),(261,'Chaseup Freshing MPC 500ml',105),(262,'Chaseup Irani Zafran Essence Box',70),(263,'Chaseup Jumbo Kitchen Towel Tissue 1pcs',69),(264,'Chaseup Jumbo Toilet Roll Tissue 1pcs',27),(265,'Chaseup Lemon MPC 1ltr',159),(266,'Chaseup Lemon MPC 500ml',105),(267,'Chaseup Long Grain Rice 1kg',149),(268,'Chaseup Long Grain Rice 5kg',725),(269,'Chaseup Maida 1kg',57),(270,'Chaseup Mash Daal 1kg',210),(271,'Chaseup Masoor Daal 1kg',150),(272,'Chaseup Masoor Whole Daal 1kg',145),(273,'Chaseup Masoor Whole Daal 500gm',73),(274,'Chaseup Moong Chilka Daal 1kg',130),(275,'Chaseup Moong Chilka Daal 500gm',65),(276,'Chaseup Moong Daal 1kg',145),(277,'Chaseup Moong Daal 500gm',73),(278,'Chaseup Mop Refill',135),(279,'Chaseup Perfumed Green Phenyl 450ml',99),(280,'Chaseup Pine Floral MPC 1ltr',159),(281,'Chaseup Pine Floral MPC 500ml',105),(282,'Chaseup Plain Mop Large',225),(283,'Chaseup Plain Toilet Brush 1pcs',33),(284,'Chaseup Plain Toilet Pump 1pcs',33),(285,'Chaseup Pop up Tissue 150pcs',59),(286,'Chaseup Popcorn 200gm PK',25),(287,'Chaseup Red Lobia Beans 1kg',110),(288,'Chaseup Sela Rice 1kg',99),(289,'Chaseup Single Dust Pan Large',65),(290,'Chaseup Special Broom',99),(291,'Chaseup Steel Rope Towing Cable 3.5mtr',420),(292,'Chaseup Sujee 500g',25),(293,'Chaseup Super Basmati Rice 1kg',80),(294,'Chaseup Super Basmati Rice 5kg',375),(295,'Chaseup Super Kernal Rice 1Kg',99),(296,'Chaseup Super Kernal Rice 5Kg',475),(297,'Chaseup Super Soft Tissue 100pcs',59),(298,'Chaseup Toilet Brush Box Set',99),(299,'Chaseup White Kabli Chana 1kg',190),(300,'Chaseup White Lobia Beans 1kg',105),(301,'Chaseup White Phenyl Bottle 3ltr',95),(302,'Chaseup Zarda Food Color Assorted',9),(303,'Chashnik Granulated Brown Sugar Pouch 500gm',70),(304,'Chefs Choice Basil Leaves 23gm',85),(305,'Chefs Choice Cinnamon Powder Spices 70gm',75),(306,'Chefs Choice Cream Of Tarter 100gm',85),(307,'Chefs Choice Cream Tarter Powder Spices 100gm',50),(308,'Chefs Choice Italian Seasoning Pizza Spices 35gm',85),(309,'Chefs Choice Lemon Powder Spices 70gm',75),(310,'Chefs Choice Meat Tenderizer Bottle 150gm',110),(311,'Chefs Choice Mix Leaves 30gm',85),(312,'Chefs Choice Oregano Leaves 25gm',85),(313,'Chefs Choice Paprika Powder Spices 65gm',85),(314,'Chefs Choice Rosemary Leaves 25gm',85),(315,'Chefs Choice Thyme Leaves 30gm',85),(316,'Chefs Pride American Broast Masala 200gm',65),(317,'Chefs Pride Deggi Biryani Masala 50gm',39),(318,'Chefs Pride Deggi Delhi Qorma Masala 50gm',39),(319,'Chefs Pride Maal Pura Sweet Masala 200gm',60),(320,'Chefs Pride Tandoori Chicken Masala 50gm',39),(321,'Chefs Pride Tempura Flour Masala 200gm',65),(322,'Coke Diet Soft Drink Can 250ml PK',34),(323,'Coke Diet Soft Drink Pet Bottle 1.5ltr',67),(324,'Coke Diet Soft Drink Pet Bottle 500ml',38),(325,'Coke Fanta Orange Soft Drink Can 250ml PK',30),(326,'Coke Fanta Soft Drink Can 330ml PK',43),(327,'Coke Fanta Soft Drink Pet Bottle 1.5ltr',65),(328,'Coke Fanta Soft Drink Pet Bottle 2.25ltr',98),(329,'Coke Fanta Soft Drink Pet Bottle 500ml',36),(330,'Coke Regular Soft Drink Can 250ml PK',30),(331,'Coke Regular Soft Drink Can 330ml PK',43),(332,'Coke Soft Drink Pet Bottle 1.5ltr',65),(333,'Coke Soft Drink Pet Bottle 2.25ltr',82),(334,'Coke Soft Drink Pet Bottle 500ml',36),(335,'Coke Sprite Diet Soft Drink NR Bottle 250ml',28),(336,'Coke Sprite Soft Drink Can 250ml PK',30),(337,'Coke Sprite Soft Drink Can 330ml PK',43),(338,'Coke Sprite Soft Drink Pet Bottle 1.5ltr',65),(339,'Coke Sprite Soft Drink Pet Bottle 2.25ltr',98),(340,'Coke Sprite Soft Drink Pet Bottle 500ml',36),(341,'Coke Zero Soft Drink Can 330ml UK',75),(342,'Comfort Kiss Of Flower Fabric Softner 650ml',86),(343,'Comfort Lily Fresh Fabric Conditioner Bottle 200ml',115),(344,'Comfort Lily Fresh Fabric Conditioner Bottle 400ml',212),(345,'Comfort Morning Fresh Fabric Conditioner Bottle 200ml',115),(346,'Comfort Morning Fresh Fabric Conditioner Bottle 400ml',212),(347,'Comfort Romantic Blossom Fabric Softner 650ml',79),(348,'Comfort Sense of Pleasure Fabric Softner 650ml',86),(349,'Crispo Balti Macaroni 250gm',36),(350,'Crispo BBQ Macaroni 250gm',36),(351,'Crispo Curl Macaroni 400gm',52),(352,'Crispo Curry Khausa Spaghetti Box 250gm',45),(353,'Crispo Elbow Macaroni Pouch 400gm',52),(354,'Crispo Elbow Macaroni wheat Box 400gm',70),(355,'Crispo Extra 10% Spaghetti 460gm',60),(356,'Crispo Fajita Spaghetti 250gm',36),(357,'Crispo Flavour French Vermicelli 450gm',35),(358,'Crispo Flavour Vermicelli 200gm',19),(359,'Crispo Flavour Vermicelli 400gm',38),(360,'Crispo Gabola Spaghetti 450gm',60),(361,'Crispo Green Chicken Macaroni 250gm',36),(362,'Crispo Jalapeno Macaroni Box 250gm',49),(363,'Crispo Jalfrezi Spaghetti Box 250gm',45),(364,'Crispo Longer Macaroni 400gm',52),(365,'Crispo Macaroni Box 400gm',52),(366,'Crispo Riggi Macaroni 400gm',52),(367,'Crispo Ring Macaroni 400gm',52),(368,'Crispo Seven Spices Macaroni 250gm',36),(369,'Crispo Shell Macaroni 400gm',52),(370,'Crispo Spaghetti 500gm',70),(371,'Crispo Spaghetti Box 900gm',112),(372,'Crispo Spaghetti Box Promo 460gm 2pcs',115),(373,'Crispo Twist Macaroni 400gm',52),(374,'Crispo Whole Wheat Spaghetti 500gm',79),(375,'Crown Chunky Peanut Butter 340gm',250),(376,'Crown Chunky Peanut Butter 510gm',350),(377,'Crown Creamy Peanut Butter 340gm',250),(378,'Crown Creamy Peanut Butter 510gm',350),(379,'Daily Fresh Popcorn Tin 284gm',88),(380,'Dairy King Powder Milk Pouch 400gm',235),(381,'Dairy King Powder Milk Pouch 910gm',520),(382,'Dalda Banaspati Ghee Pouch 1kg',159),(383,'Dalda Banaspati Ghee Tin 2.5kg',430),(384,'Dalda Banaspati Ghee Tin 5kg',850),(385,'Dalda Canola Cooking Oil Bottle 3ltr',525),(386,'Dalda Canola Cooking Oil Bottle 4.5ltr',780),(387,'Dalda Canola Cooking Oil Can 10ltr',1630),(388,'Dalda Canola Cooking Oil Jerry Can 16ltr',2649),(389,'Dalda Canola Cooking Oil Pouch 1ltr',160),(390,'Dalda Cooking Oil Bottle 3ltr',520),(391,'Dalda Cooking Oil Bottle 4.5ltr',775),(392,'Dalda Cooking Oil Can 10ltr',1680),(393,'Dalda Cooking Oil Pouch 1ltr',160),(394,'Dalda Cooking Oil Tin 2.5ltr',430),(395,'Dalda Cooking Oil Tin 5ltr',850),(396,'Dashi Chicken Recipe Powder 100gm',50),(397,'Dashi Chicken Recipe Powder 18gm',9),(398,'Dashi Chicken Recipe Powder Jar 1kg',345),(399,'Dashi Fish Bites Crackers Box 200gm',75),(400,'Dashi Prawns Crackers Box 200gm',75),(401,'Day Fresh Chocolate Flavored Milk 250ml',32),(402,'Day Fresh Full Cream Liquid Milk Tetra Pack 1ltr',105),(403,'Day Fresh Full Cream Liquid Milk Tetra Pack 235ml',28),(404,'Day Fresh Ice Cream Soda Flavored Milk 250ml',32),(405,'Day Fresh Long Life Full Fat Liquid Milk Bottle 250ml',28),(406,'Day Fresh Strawberry Flavored Milk 250ml',32),(407,'Day Fresh Zafrani Pista Flavored Milk 250ml',32),(408,'Delmonte Fruit Cocktail 3.6kg',640),(409,'Delmonte Fruit Cocktail Tin 836gm',205),(410,'Delmonte Pineapple Slice Tin 3062gm',730),(411,'Delmonte Pineapple Slice Tin 432gm',132),(412,'Delmonte Pineapple Slice Tin 560gm',160),(413,'Delmonte Pineapple Slice Tin 836gm',230),(414,'Delmonte Tidbits Pineapple Tin 439gm',120),(415,'Delmonte Tidbits Pineapple Tin 567gm',149),(416,'Delmonte Whole Kernel Corn Tin 420gm',115),(417,'Desert Luck Chocolate Chip Assorted Topping Jar',72),(418,'Dettol Antiseptic Liquids 1ltr',375),(419,'Dettol Aqua MPC 1ltr',315),(420,'Dettol Aqua MPC 500ml',180),(421,'Dettol Citrus MPC 1ltr',315),(422,'Dettol Citrus MPC 500ml',180),(423,'Dettol Floral MPC 1ltr',315),(424,'Dettol Floral MPC 500ml',180),(425,'Dettol Lavender MPC 1ltr',315),(426,'Dettol Lavender MPC 500Ml',180),(427,'Dettol Pine MPC 1ltr',315),(428,'Dettol Pine MPC 500ml',172),(429,'DG Multi Purpose Foam Car Cleaner 650ml',160),(430,'DG Tyre Foam Car Cleaner 650ml',160),(431,'Diamond Aluminium Foil 25 Sq.ft',165),(432,'Diamond Cling Wrap 100ft',229),(433,'Diamond Heavy Duty Aluminium Foil 37.5 Sq.ft',219),(434,'Domex Explosion Lemon Toilet Cleaner 500ml',135),(435,'Domex Explosion Lemon Toilet Cleaner 750ml',195),(436,'Domex Original Toilet Cleaner 500ml',135),(437,'Domex Original Toilet Cleaner 750ml',195),(438,'Domex Pine Blast Toilet Cleaner 500ml',135),(439,'Domex Pink Power Toilet Cleaner 500ml',135),(440,'Energizer 9Volt Cell',240),(441,'Energizer Advance E2 Cell AA BP2',140),(442,'Energizer Advance E2 Cell AAA BP2',154),(443,'Energizer Cell AA BP2',110),(444,'Energizer Cell AA BP4',210),(445,'Energizer Cell AAA BP2',110),(446,'Energizer Cell AAA BP4',210),(447,'Enfagrow A +3 Baby Milk Powder Tin 400gm',910),(448,'Enfagrow A +3 Baby Milk Powder Tin 800gm',1765),(449,'Enfagrow A +4 Baby Milk Powder Tin 400gm',910),(450,'Enfagrow A +4 Baby Milk Powder Tin 800gm',1740),(451,'Enfalac A + Premeture Baby Milk Powder Tin 400gm',1210),(452,'EnfaMama A+ Choco Mom Milk Tin 400gm',975),(453,'EnfaMama A+ Vanilla Mom Milk Tin 400gm',975),(454,'Enfamil A + AR Baby Milk Powder Tin 400gm',1210),(455,'Enfamil A +1 Baby Milk Powder Tin 400gm',1035),(456,'Enfamil A +1 Baby Milk Powder Tin 800gm',1995),(457,'Enfamil A +2 Baby Milk Powder Tin 400gm',1035),(458,'Enfamil A +2 Baby Milk Powder Tin 800gm',2075),(459,'Enfamil Olac Baby Milk Powder Tin 400gm',1210),(460,'English Baking Powder 100gm',35),(461,'English Baking Powder 50gm',27),(462,'English Brown Sugar 300gm',71),(463,'English Cocoa Powder 100gm',65),(464,'English Cocoa Powder 50gm',35),(465,'English Corn Flour 300gm',55),(466,'English Gelatin Baking Powder 50gm',55),(467,'English Icing Sugar Box 300gm',65),(468,'English Oregano Spices 25gm',38),(469,'English Thyme Powder Spices 25ml',38),(470,'English White Pepper Spices 50gm',95),(471,'Ensure Chocolate Food Supplement Tin 400gm',925),(472,'Ensure Chocolate Food Supplement Tin 850g',2220),(473,'Ensure Nutrivigor Vanilla Milk Food Supplement 400gm',1160),(474,'Ensure Strawberry Food Supplement Tin 400gm',925),(475,'Ensure Vanilla Food Supplement Tin 400gm',925),(476,'Ensure Vanilla Food Supplement Tin 850g',2220),(477,'Ensure Vanilla Plus Nutrition Food Supplement 250ml',250),(478,'Erko Pink & White Marshmallow Pouch 150gm',100),(479,'Euro Cake Fruit Pre Slice Pound Cake Box 220gm',165),(480,'Euro Cake Jumbo Twin Vanilla Cake 70gm',34),(481,'Euro Cake Luxury Swiss Roll Chocolate Cake 240gm',88),(482,'Euro Cake Pound Cappuccino Cake Box 323gm',199),(483,'Euro Cake Pound Chocolate Flavour Cake 325gm',199),(484,'Euro Cake Pound Marble Flavour Cake 325gm',199),(485,'Euro Cake Pound Strawberry Flavour Cake 325gm',199),(486,'Euro Cake Pound Vanilla Flavour Cake 325gm',199),(487,'Euro Cake Pre Slice Pound Chocolate Cake Box 220gm',165),(488,'Euro Cake Twin Mini Chocolate Cup Cake 38gm',14),(489,'Euro Cake Twin Mini Chocolate Swiss Roll',14),(490,'Euro Cake Twin Mini Strawberry Swiss Roll',14),(491,'Euro Cake Vanilla Pre Slice Pound Cake Box 220gm',165),(492,'EVA Canola Cooking Oil Bottle 3ltr',525),(493,'EVA Canola Cooking Oil Bottle 5ltr',865),(494,'EVA Canola Cooking Oil Jerry Can 10ltr',1760),(495,'EVA Canola Cooking Oil Pouch 1ltr',163),(496,'EVA Cooking Oil Bottle 3ltr',525),(497,'EVA Cooking Oil Bottle 5ltr',865),(498,'Eva Cooking Oil Jerry Can 10ltr',1960),(499,'EVA Cooking Oil Pouch 1ltr',163),(500,'Eveready Cell AA BP4 Card',72),(501,'Eveready Cell AAA BP4 Card',72),(502,'Express Power Detergent Bar 200gm',28),(503,'Express Power Ultra Clean Washing Powder Poly Bag 1kg',142),(504,'Express Power Washing Powder Poly Bag 1.5kg',209),(505,'Express Power Washing Powder Poly Bag 1kg',139),(506,'Express Power Washing Powder Poly Bag 400gm',59),(507,'Fauji Barley Porridge Cereal 175gm',80),(508,'Fauji Barley Porridge Cereal 250gm',110),(509,'Fauji Bran Flakes Cereal 300gm',275),(510,'Fauji Choco Corn Flakes 250gm',225),(511,'Fauji Chocolate Pops Cereal 150gm',137),(512,'Fauji Chocolate Pops Cereal 175gm',120),(513,'Fauji Chocolate Pops Cereal 250gm',235),(514,'Fauji Chocolate Pops Cereal 90gm',67),(515,'Fauji Chocolate Rice Crunchies Cereal 300gm',156),(516,'Fauji Chocolate Rings Cereal 250gm',230),(517,'Fauji Chocolate Star Cereal 250gm',245),(518,'Fauji Corn Flakes 150gm',95),(519,'Fauji Corn Flakes 250gm',185),(520,'Fauji Corn Flakes 500gm',310),(521,'Fauji Frootooz Cereal 150gm',165),(522,'Fauji Frootooz Cereal 250gm',265),(523,'Fauji Frosted Flakes 250gm',220),(524,'Fauji Honey Corn Flakes 250gm',220),(525,'Fauji Honey Pops Cereal 150gm',128),(526,'Fauji Honey Pops Cereal 250gm',219),(527,'Fauji Rice Flakes 250gm',189),(528,'Fauji Wheat Flakes 250gm',189),(529,'Fauji Wheat Porridge Cereal 175gm',65),(530,'Fauji Wheat Porridge Cereal 250gm',90),(531,'Feeder Colour Jelly Fruit Beans 28gm',20),(532,'Figaro Pitted Black Olives 160gm',180),(533,'Figaro Pitted Black Olives 454gm',320),(534,'Figaro Pitted Black Olives 70gm',125),(535,'Figaro Pitted Green Olives 454gm',320),(536,'Figaro Pitted Green Olives 70gm',125),(537,'Figaro Plain Black Olives 200gm',180),(538,'Figaro Plain Black Olives 575gm',340),(539,'Figaro Plain Black Olives 85gm',120),(540,'Figaro Plain Green Olives 200gm',180),(541,'Figaro Plain Green Olives 575gm',340),(542,'Figaro Plain Green Olives 85gm',125),(543,'Figaro Sliced Black Olives 130gm',140),(544,'Figaro Sliced Black Olives 230gm',196),(545,'Figaro Sliced Black Olives 480gm',320),(546,'Figaro Sliced Black Olives Tin 3kg',735),(547,'Figaro Sliced Green Olives 180gm',180),(548,'Figaro Sliced Green Olives 480gm',320),(549,'Figaro Sliced Green Olives Tin 3kg',735),(550,'Figaro Stuffed Green Olives 200gm',180),(551,'Figaro Stuffed Green Olives 575gm',340),(552,'Figaro Stuffed Green Olives 85gm',125),(553,'Finis All Purpose Amber Insect Killer 425ml',129),(554,'Finis Daily Mop 2.75ltr',135),(555,'Finis Daily Mop 425ml',175),(556,'Fix Furniture Polish 550ml',140),(557,'Fix Leather & Tyre Brown Car Wax 450ml',125),(558,'Formula 1 Car Wash & Wax 473ml',330),(559,'Formula 1 Carnauba Car Wax Tin 230gm',369),(560,'Foxs Berries Candy Pouch 125gm',65),(561,'Foxs Berries Candy Pouch 90gm',62),(562,'Foxs Crystal Clear Candy Pouch 375gm',190),(563,'Foxs Exotic Mint Candy Pouch 125gm',69),(564,'Foxs Fruit Candy Pouch 125gm',65),(565,'Foxs Fruit Candy Pouch 90gm',62),(566,'Foxs Mint Candy Pouch 90gm',62),(567,'Foxs Spring Tea Candy pouch 90gm',62),(568,'Foxs Spring Tea Crystal Clear Candy 125gm',69),(569,'Frenchs Classic Yellow Mustard Paste Jar 170gm',165),(570,'Frenchs Classic Yellow Mustard Paste Jar 255gm',210),(571,'Frenchs Classic Yellow Mustard Paste Pump 226gm',210),(572,'Frenchs Worcestershire Sauce 295ml',220),(573,'Fresh Mate Arabic Dukkah Raita Masala Jar 75gm',89),(574,'Fresh Mate Chatpata Raita Masala Jar 85gm',89),(575,'Fresh Mate Chicken Haleem RTE 300gm',199),(576,'Fresh Mate Chicken Karahi RTE 275gm',289),(577,'Fresh Mate Chicken Nehari RTE 275gm',259),(578,'Fresh Mate Chicken Shami Kabab RTE 186gm',219),(579,'Fresh Mate Dahi Baray Masala 80gm',79),(580,'Fresh Mate Fruit Chat Masala Bottle 100gm',79),(581,'Fresh Mate Mutton Qorma RTE 275gm',399),(582,'Fresh Mate Podina Raita Masala Jar 80gm',89),(583,'Fresh Mate Shahi Qorma RTE 275gm',279),(584,'Fresh Mate Zeera Raita Masala Jar 75gm',89),(585,'Fresh n Free Peppermint Candy Pouch 100gm',85),(586,'Fresh n Free Root Mint Candy Bag 100gm',83),(587,'Frey Bakhour Ul Bahrain Air Freshener 300ml',120),(588,'Frey Cool Summer Air Freshener 300ml',120),(589,'Frey Jasmine Air Freshener 300ml',120),(590,'Frey Lavender Air Freshener 300ml',120),(591,'Frey Rose Air Freshener 300ml',120),(592,'Frey Sandalwood Air Freshener 300ml',120),(593,'Frey Sweet Home Air Freshener 300ml',120),(594,'Fruit-tella Fruit Fantasy Candy 412.5gm',249),(595,'Fruit-tella Fruit Fantasy Candy Bag 105gm',69),(596,'Fruit-tella Orange Chewy Toffee 36gm',29),(597,'Fruit-tella Strawberry Chewy Toffee 36gm',29),(598,'Fruitien Apple Nectar Juice Tetra Pack 1ltr',116),(599,'Fruitien Guava Nectar Juice Tetra Pack 1ltr',116),(600,'Fruitien Guava Nectar Juice Tetra Pack 200ml',26),(601,'Fruitien Mango Chaunsa Nectar Juice Tetra Pack 1ltr',116),(602,'Fruitien Mango Chaunsa Nectar Juice Tetra Pack 200ml',26),(603,'Fruitien Orange 100% Juice Tetra Pack 1ltr',147),(604,'Fruitien Peach Nectar Juice Tetra Pack 1ltr',116),(605,'Fruitien Peach Nectar Juice Tetra Pack 200ml',26),(606,'Fruitien Pineapple Nectar Juice Tetra Pack 1ltr',116),(607,'Fruitien Pineapple Nectar Juice Tetra Pack 200ml',26),(608,'Fruitien Pomegranate Nectar Juice Tetra Pack 1ltr',147),(609,'Fruitien Pomegranate Nectar Juice Tetra Pack 200ml',26),(610,'Fruitien Red Grape Nectar Juice Tetra Pack 1ltr',116),(611,'Fruitien Red Grape Nectar Juice Tetra Pack 200ml',26),(612,'Glint Regular Glass & Surface Cleaner 500ml',155),(613,'Glucerna Nutrition Food Supplement 250ml',250),(614,'Glucerna SR Vanilla Food Supplement Tin 400gm',1159),(615,'Green World After Rain Freshness Air Freshener 300ml',120),(616,'Green World Anti Tabacco Air Freshener 300ml',120),(617,'Green World Apple & Cinnamon Air Freshener 300ml',120),(618,'Green World Bakhour Air Freshener 300ml',120),(619,'Green World Citrus Festival Air Freshener 300ml',120),(620,'Green World Delicate Lily Air Freshener 300ml',120),(621,'Green World Lavender & Chamomile Air Freshener 300m',120),(622,'Green World Mountain Lake Air Freshener 300ml',120),(623,'Green World Strawberry & Blueberry Air Freshener 300ml',120),(624,'Green World Tutti Frutti Air Freshener 300m',120),(625,'Guard supreme 5kg',620),(626,'Guard Supreme Rice 1kg',125),(627,'Guard Ultimate Basmati Rice 1kg',165),(628,'Guard Ultimate Basmati Rice 5kg',799),(629,'H.P Original Sauce 255gm',160),(630,'Habib Banaspati Ghee Tin 2.5kg',405),(631,'Habib Banaspati Ghee Tin 5kg',800),(632,'Habib Cooking Oil Tin 2.5ltr',445),(633,'Habib Cooking Oil Tin 5ltr',845),(634,'Habib Super Cooking Oil Bottle 3ltr',520),(635,'Habib Super Cooking Oil Bottle 5ltr',840),(636,'Hanson Garlic Paste Bottle 300gm',125),(637,'Hanson Ginger Garlic Paste Bottle 300gm',125),(638,'Hanson Ginger Paste Bottle 300gm',125),(639,'Hanson Green Chilli Paste Bottle 300gm',115),(640,'Hanson Papaya Paste Bottle 300gm',99),(641,'Hanson Red Chilli Paste Bottle',115),(642,'Hanson Tamarind Paste Bottle 300gm',115),(643,'Happy Home Banana Custard Powder 300gm',59),(644,'Happy Home Bounty Pudding Mix 78gm',36),(645,'Happy Home Caramel Pudding Mix 78gm',36),(646,'Happy Home China Grass Assorted 80gm',30),(647,'Happy Home Chocolate Caramel Dessert Mix 78gm',36),(648,'Happy Home Chocolate Flavour Dessert Mix 120gm',45),(649,'Happy Home Crystal Banana Jelly Mix 80gm',36),(650,'Happy Home Crystal Black Currant Jelly Mix 80gm',36),(651,'Happy Home Crystal Blue Berry Jelly Mix 80gm',36),(652,'Happy Home Crystal Mango Jelly Mix 80gm',36),(653,'Happy Home Crystal Orange Jelly Mix 80gm',36),(654,'Happy Home Crystal Pineapple Jelly Mix 80gm',36),(655,'Happy Home Crystal Raspberry Jelly Mix 80gm',36),(656,'Happy Home Crystal Strawberry Jelly Mix 80gm Ind',36),(657,'Happy Home Doodh Dulari 220gm',59),(658,'Happy Home Egg Pudding Mix 78gm',36),(659,'Happy Home Firni Mix 180gm',55),(660,'Happy Home Jelly Falooda Mix 225gm',59),(661,'Happy Home Jolly Banana Jelly Mix 55gm',20),(662,'Happy Home Jolly Mango Jelly Mix 55gm',20),(663,'Happy Home Kulfa Mix 160gm',55),(664,'Happy Home Kulfa Pudding Mix 78gm',37),(665,'Happy Home Kulfi Falooda Mix 225gm',60),(666,'Happy Home Mango Pudding Mix 78gm',36),(667,'Happy Home Pineapple Lab e Shereen 150gm',55),(668,'Happy Home Pista Pudding Mix 50gm',36),(669,'Happy Home Rasmalai Mix 75gm',72),(670,'Happy Home Sheer Khurma Mix 160gm',55),(671,'Happy Home Strawberry Custard Powder 300gm',59),(672,'Happy Home Vanilla Custard Powder 300gm',59),(673,'Happy Home Vanilla Lab e Shereen 150gm',55),(674,'Harpic Power Active Fresh Pine Toilet Cleaner 750ml',175),(675,'Harpic Power Plus Fresh Toilet Cleaner 1ltr 2pcs PK',399),(676,'Harpic Power Plus Fresh Toilet Cleaner 1ltr Pk',203),(677,'Harpic Power Plus Fresh Toilet Cleaner 500ml PK',124),(678,'Harpic Power Plus Fresh Toilet Cleaner 500ml PK',124),(679,'Harpic Power Plus Orange Toilet Cleaner 1ltr 2pcs PK',399),(680,'Harpic Power Plus Orange Toilet Cleaner 1ltr PK',203),(681,'Harpic Power Plus Orange Toilet Cleaner 500ml PK',124),(682,'Harpic Power Plus Orange Toilet Cleaner 500ml PK',124),(683,'Harpic Power Plus Orange Toilet Cleaner 750ml PK',178),(684,'Harpic Power Plus Original Toilet Cleaner 1ltr PK',203),(685,'Harpic Power Plus Original Toilet Cleaner 1ltr PK',203),(686,'Harpic Power Plus Original Toilet Cleaner 250ml PK',55),(687,'Harpic Power Plus Original Toilet Cleaner 500ml PK',124),(688,'Harpic Power Plus Rose Toilet Cleaner 500ml PK',124),(689,'Hashmi Ispaghol Husk Box 50gm',79),(690,'Hashmi Ispaghol Husk Jar 140gm',215),(691,'Hashmi Ispaghol Jar 85gm',135),(692,'Heinz Baked Beans 415gm',69),(693,'Hersheys Caramel Topping Syrup 623gm',345),(694,'Hersheys Chocolate Topping Syrup 1.36kg',599),(695,'Hersheys Chocolate Topping Syrup 680gm',285),(696,'Hersheys Strawberry Topping Syrup 623gm',290),(697,'Hilal Aamrus Candy Box 342gm',65),(698,'Hilal Aamrus Candy Pouch 123gm 35pcs',33),(699,'Hilal Amrood Candy Box 325gm',65),(700,'Hilal Amrood Chat Candy Pouch 123gm',33),(701,'Hilal Amrood Jelly',109),(702,'Hilal Berry Bite Jelly Box 432gm',108),(703,'Hilal Chocolate Cake Cup',9),(704,'Hilal Choran Chatni Candy Pouch 198gm 55pcs',51),(705,'Hilal Ding Dong Jumbo Bubble Gum Box 287gm',65),(706,'Hilal Ding Dong Strawberry Bubble Gum Jumbo Box 176.4gm',66),(707,'Hilal Egg Jelly',110),(708,'Hilal Energic Candy Box 287gm 70pcs',65),(709,'Hilal Energic Candy Pouch 168gm',33),(710,'Hilal Fish Jelly',109),(711,'Hilal Fresh Up Big Bite Refreshing Strawberry Gum Box',65),(712,'Hilal Fresh Up Refreshing Ice Mint Gum Box',66),(713,'Hilal Fresh Up Refreshing Peppermint Gum Box',65),(714,'Hilal Fresh Up Refreshing Spearmint Gum Box',66),(715,'Hilal Fruit Cup Cake',9),(716,'Hilal Fruit Jelly Box',109),(717,'Hilal Fruities Strawberry Jelly Box Large',110),(718,'Hilal Hajmola Imlee Candy Box 325gm',65),(719,'Hilal Hajmola Imlee Candy Pouch',33),(720,'Hilal Jumbo Chocolate Cream Cake 28gm',9),(721,'Hilal Khopra Candy Box 388gm',68),(722,'Hilal Khopra Candy Pouch 192.5gm 55pcs',51),(723,'Hilal Milk Fills Caramel Filled Candy Pouch 35pcs',33),(724,'Hilal Minta Candy Pouch 35pcs',33),(725,'Hilal Peach Jelly',110),(726,'Hilal Pizza Jelly',109),(727,'Hilal Plain Cup Cake',9),(728,'Hilal Strawberry Cake Box 24pcs',109),(729,'Hilal Strawberry Cake Cup',9),(730,'Hilal Super Sour Candy Pouch 220gm',33),(731,'Hosen Cream Styled Corn Tin 425gm',120),(732,'Hosen Sweet Corn Tin 400gm',115),(733,'Hub Pak Green Fine Salt 800gm',22),(734,'Hub Pak Regular Blue Salt 800gm',19),(735,'Italia Sweet Corn 400gm',65),(736,'Italia Whole Mushroom Tin 400gm',84),(737,'Italiano Baking Powder 100gm',35),(738,'Italiano Baking Soda Box 100gm',25),(739,'Italiano Brown Sugar 300gm',60),(740,'Italiano Cocoa Powder 100gm',72),(741,'Italiano Cocoa Powder 200gm',132),(742,'Italiano Cocoa Powder 50gm',38),(743,'Italiano Dark Cooking Chocolate 200gm',135),(744,'Italiano Dark Cooking Chocolate 500gm',285),(745,'Italiano Icing Sugar 300gm',60),(746,'Italiano Instant Yeast Box 22gm',40),(747,'Italiano Marble Cake Mix Box 569gm',149),(748,'Italiano Milk Chocolate Cake Mix 435gm',149),(749,'Italiano Milk Cooking Chocolate 200gm',135),(750,'Italiano Milk Cooking Chocolate 500gm',285);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
