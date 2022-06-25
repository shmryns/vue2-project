/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.26 : Database - vue2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`vue2` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `vue2`;

/*Table structure for table `comments` */

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `add_time` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(220) COLLATE utf8_unicode_ci DEFAULT NULL,
  `artid` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isdel` varchar(1) COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `comments` */

insert  into `comments`(`id`,`user_name`,`add_time`,`content`,`artid`,`isdel`) values (5,'东郭之娅','2022-06-24 20:08:30','66','1','0'),(6,'伊瑶','2022-06-24 20:09:10','66','1','0'),(7,'钟离厚','2022-06-24 20:09:24','7766\n','1','0'),(8,'孟鹏','2022-06-24 20:11:41','7766\n','1','0'),(15,'冯江莺','2022-06-24 21:15:30',' 6666','1','0'),(16,'文达','2022-06-24 21:20:22','5555','1','0'),(17,'章言','2022-06-24 21:22:05','555','1','0'),(18,'安信','2022-06-24 21:22:36','6666666666','1','0'),(19,'尤和进','2022-06-24 21:23:08','6666666666','1','0'),(20,'金莉磊','2022-06-24 21:23:13','55','1','0'),(21,'荀瑞昌','2022-06-24 21:23:30','444','1','0'),(22,'权善子','2022-06-24 21:24:19','444','1','0'),(23,'廉之','2022-06-24 21:24:56','444','1','0'),(24,'邱莺磊','2022-06-24 21:27:22','555','1','0'),(25,'狄富黛','2022-06-24 21:28:19','55555','1','0'),(26,'湛奇媛','2022-06-24 21:29:35','55555555','1','0'),(27,'伏勤','2022-06-24 21:29:54','6','1','0'),(28,'祝哲庆','2022-06-24 21:29:57','8','1','0'),(29,'靳贞','2022-06-24 21:31:34','666','2','0'),(30,'况发','2022-06-24 21:31:42','55555','4','0'),(31,'水民','2022-06-24 21:33:36','11','11','0'),(32,'闻人学琦','2022-06-25 10:09:03','55','102','0'),(33,'郁才','2022-06-25 10:35:23','666','101','0'),(34,'端木勤叶','2022-06-25 11:17:31','555555','101','0'),(35,'高进婵','2022-06-25 14:41:37','符合法规和吧','1','0'),(36,'卫星国','2022-06-25 14:41:39','符合法规和吧','1','0'),(37,'文林','2022-06-25 14:41:47','符合法规和吧','1','0'),(38,'明浩中','2022-06-25 14:41:48','符合法规和吧','1','0'),(39,'简胜','2022-06-25 14:41:48','符合法规和吧','1','0'),(40,'廖有福','2022-06-25 14:41:48','符合法规和吧','1','0'),(41,'吴雁维','2022-06-25 14:41:48','符合法规和吧','1','0'),(42,'呼延江珍','2022-06-25 14:59:49','12','3','0'),(43,'齐黛','2022-06-25 16:14:59','121132','102','0'),(44,'戚嘉','2022-06-25 16:14:59','121132','102','0'),(45,'夏侯克和','2022-06-25 16:15:00','121132','102','0'),(46,'伊善成','2022-06-25 16:15:11','55135','1','0'),(47,'成和栋','2022-06-25 16:40:59','66666','666','0'),(48,'陆生','2022-06-25 16:42:06','454645','666','0');

/*Table structure for table `getgoods` */

DROP TABLE IF EXISTS `getgoods`;

CREATE TABLE `getgoods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `add_time` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zhaiyao` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `click` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sell_price` int(11) DEFAULT NULL,
  `market_price` int(11) DEFAULT NULL,
  `stock_quantity` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isdel` varchar(1) COLLATE utf8_unicode_ci DEFAULT '0',
  `thumb_id` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `goods_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '商品编号',
  `goods_id` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `getgoods` */

insert  into `getgoods`(`id`,`title`,`add_time`,`zhaiyao`,`click`,`img_url`,`sell_price`,`market_price`,`stock_quantity`,`isdel`,`thumb_id`,`goods_no`,`goods_id`) values (101,'iPhone13','2022-6-25 09:44:31','Apple iPhone 13 128G 午夜色 移动联通电信5G全网通手机','1','https://imgservice4.suning.cn/uimg1/b2c/image/DwsgIazYHIVnoAuAOakP6A.jpg_400w_400h_4e',5499,5999,'888','0','101','12313015493','101'),(102,'vivo iQOO 9 5G新品','2022-6-25 11:14:17','vivo iQOO 9 5G新品 KPL电竞专用手机 12+256G 传奇版 E5超视网膜屏+全新一代骁龙8+独显芯片Pro+全感操控系统3.0+120W超快闪充','1','https://imgservice4.suning.cn/uimg1/b2c/atmosphere/ruMpCzIFI1Foh4yCdu7D8Q.png_400w_400h_4e',3599,3999,'666','0','102','12354008982','102');

/*Table structure for table `getimages` */

DROP TABLE IF EXISTS `getimages`;

CREATE TABLE `getimages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `isdel` varchar(1) COLLATE utf8_unicode_ci DEFAULT '0',
  `click` varchar(3) COLLATE utf8_unicode_ci DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `getimages` */

insert  into `getimages`(`id`,`class_id`,`title`,`content`,`img_url`,`isdel`,`click`) values (1,1,'美女图片','这是一段描述欲言又止的文字','https://img0.baidu.com/it/u=962361882,2281204904&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500','0','1'),(2,1,'美女图片','这是一段描述欲言又止的文字','https://img2.baidu.com/it/u=987329816,3431076095&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=625','0','1'),(3,1,'美女图片','这是一段描述欲言又止的文字','https://img1.baidu.com/it/u=1316606735,4261558457&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=535','0','1'),(4,1,'美女图片','这是一段描述欲言又止的文字','https://img0.baidu.com/it/u=2211606183,1755142398&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=1083','0','1'),(5,1,'美女图片','这是一段描述欲言又止的文字','https://img0.baidu.com/it/u=4111381801,437521483&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=889','0','1'),(6,2,'宠物图片','这是一段描述欲言又止的文字','https://img0.baidu.com/it/u=1762208877,310417085&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500','0','1'),(7,2,'宠物图片','这是一段描述欲言又止的文字','https://img1.baidu.com/it/u=3108431628,3896484070&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=551','0','1'),(8,2,'宠物图片','这是一段描述欲言又止的文字','https://img0.baidu.com/it/u=4038511147,700926604&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=502','0','1'),(9,2,'宠物图片','这是一段描述欲言又止的文字','https://img2.baidu.com/it/u=1756439243,4223254132&fm=253&fmt=auto&app=120&f=JPEG?w=720&h=480','0','1'),(10,2,'宠物图片','这是一段描述欲言又止的文字','https://img2.baidu.com/it/u=3205103639,3802226753&fm=253&fmt=auto&app=120&f=JPEG?w=500&h=889','0','1'),(11,3,'家具图片','这是一段描述欲言又止的文字','https://img1.baidu.com/it/u=4071198263,1825104514&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500','0','1'),(12,3,'家具图片','这是一段描述欲言又止的文字','https://img2.baidu.com/it/u=1648243001,3634078341&fm=253&fmt=auto&app=138&f=JPEG?w=784&h=500','0','1'),(13,3,'家具图片','这是一段描述欲言又止的文字','https://img1.baidu.com/it/u=3799373357,436451086&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=329','0','1'),(14,3,'家具图片','这是一段描述欲言又止的文字','https://img0.baidu.com/it/u=3895397334,357843285&fm=253&fmt=auto&app=120&f=JPEG?w=500&h=500','0','1'),(15,3,'家具图片','这是一段描述欲言又止的文字','https://img2.baidu.com/it/u=3124086738,3508155351&fm=253&fmt=auto&app=138&f=JPEG?w=771&h=500','0','1'),(16,4,'运动图片','这是一段描述欲言又止的文字','https://img2.baidu.com/it/u=173656494,1601458465&fm=253&fmt=auto&app=138&f=JPEG?w=487&h=325','0','1'),(17,4,'运动图片','这是一段描述欲言又止的文字','https://img2.baidu.com/it/u=762451243,892533771&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500','0','1'),(18,4,'运动图片','这是一段描述欲言又止的文字','https://img2.baidu.com/it/u=2721519291,2134388795&fm=253&fmt=auto&app=138&f=JPEG?w=526&h=500','0','1'),(19,4,'运动图片','这是一段描述欲言又止的文字','https://img1.baidu.com/it/u=2344155759,2019365747&fm=253&fmt=auto&app=138&f=JPEG?w=800&h=500','0','1'),(20,4,'运动图片','这是一段描述欲言又止的文字','https://img1.baidu.com/it/u=3576907666,4275802480&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=945','0','1'),(21,5,'数码图片','这是一段描述欲言又止的文字','https://img2.baidu.com/it/u=3810389791,1656088470&fm=253&fmt=auto&app=138&f=JPEG?w=750&h=500','0','1'),(22,5,'数码图片','这是一段描述欲言又止的文字','https://img1.baidu.com/it/u=2510084014,1932314916&fm=253&fmt=auto&app=138&f=JPEG?w=680&h=452','0','1'),(23,5,'数码图片','这是一段描述欲言又止的文字','https://img2.baidu.com/it/u=374555908,2554136056&fm=253&fmt=auto&app=120&f=JPEG?w=640&h=480','0','1'),(24,5,'数码图片','这是一段描述欲言又止的文字','https://img1.baidu.com/it/u=3767755214,3050570905&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500','0','1'),(25,5,'数码图片','这是一段描述欲言又止的文字','https://img0.baidu.com/it/u=182449075,4251127339&fm=253&fmt=auto&app=138&f=JPEG?w=1000&h=500','0','1'),(26,6,'乐器图片','这是一段描述欲言又止的文字','https://img2.baidu.com/it/u=4266399414,1775410477&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500','0','1'),(27,6,'乐器图片','这是一段描述欲言又止的文字','https://img2.baidu.com/it/u=934947021,1924896494&fm=253&fmt=auto&app=138&f=JPEG?w=750&h=500','0','1'),(28,6,'乐器图片','这是一段描述欲言又止的文字','https://img2.baidu.com/it/u=2978343734,1825504373&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500','0','1'),(29,6,'乐器图片','这是一段描述欲言又止的文字','https://img0.baidu.com/it/u=2744605633,2681868469&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500','0','1'),(30,6,'乐器图片','这是一段描述欲言又止的文字','https://img1.baidu.com/it/u=896799710,4292616185&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500','0','1'),(31,7,'游戏图片','这是一段描述欲言又止的文字','https://img1.baidu.com/it/u=1405545107,1392800839&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=337','0','1'),(32,7,'游戏图片','这是一段描述欲言又止的文字','https://img0.baidu.com/it/u=1195491569,494372595&fm=253&fmt=auto&app=138&f=JPEG?w=640&h=360','0','1'),(33,7,'游戏图片','这是一段描述欲言又止的文字','https://img1.baidu.com/it/u=1355708096,1615969379&fm=253&fmt=auto&app=138&f=JPG?w=500&h=258','0','1'),(34,7,'游戏图片','这是一段描述欲言又止的文字','https://img2.baidu.com/it/u=1816812652,2118531292&fm=253&fmt=auto&app=120&f=JPEG?w=1060&h=500','0','1'),(35,7,'游戏图片','这是一段描述欲言又止的文字','https://img2.baidu.com/it/u=672302899,2753830548&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500','0','1');

/*Table structure for table `getimgcategory` */

DROP TABLE IF EXISTS `getimgcategory`;

CREATE TABLE `getimgcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `isdel` varchar(1) COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `getimgcategory` */

insert  into `getimgcategory`(`id`,`title`,`isdel`) values (1,'美女','0'),(2,'宠物','0'),(3,'家具','0'),(4,'运动','0'),(5,'数码','0'),(6,'乐器','0'),(7,'游戏','0');

/*Table structure for table `getlunbo` */

DROP TABLE IF EXISTS `getlunbo`;

CREATE TABLE `getlunbo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `isdel` varchar(1) COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `getlunbo` */

insert  into `getlunbo`(`id`,`img`,`isdel`) values (1,'https://p1.music.126.net/kMZRIzuhEBgwaNLFADgKGg==/109951167583044431.jpg?imageView&quality=89','0'),(2,'https://p1.music.126.net/z-j6DSXgEpGqSXtO8AnFLA==/109951167582742274.jpg?imageView&quality=89','0'),(3,'https://p1.music.126.net/8fN1K3j1mlGF6NuKcFodRw==/109951167583928120.jpg?imageView&quality=89','0'),(4,'https://p1.music.126.net/tSkwBSWaZPHmsdhx3vFIyg==/109951167583033511.jpg?imageView&quality=89','0'),(5,'http://p1.music.126.net/sURcnmb4oSBp99CH0lZZ4w==/109951167583977213.jpg?imageView&quality=89','0'),(6,'http://p1.music.126.net/cIu5Ta4gV4largN5u0XudQ==/109951167582734556.jpg?imageView&quality=89','0'),(7,'http://p1.music.126.net/u-kgjfKusZclcoBCGJpSVQ==/109951167582733776.jpg?imageView&quality=89','0'),(8,'http://p1.music.126.net/mYQJ1LfMG6YC3RUXJrfZqQ==/109951167583335132.jpg?imageView&quality=89','0'),(9,'http://p1.music.126.net/h71j3Uc4z9W9Ri3qBmaBIg==/109951167583037910.jpg?imageView&quality=89','0');

/*Table structure for table `getnews` */

DROP TABLE IF EXISTS `getnews`;

CREATE TABLE `getnews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `add_time` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zhaiyao` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `click` varchar(3) COLLATE utf8_unicode_ci DEFAULT '1',
  `img_url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `isdel` varchar(1) COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `getnews` */

insert  into `getnews`(`id`,`title`,`add_time`,`zhaiyao`,`click`,`img_url`,`content`,`isdel`) values (1,'长江干线省际游轮有序复航','2022-06-24 15:02:38','长江干线省际游轮有序复航','1','https://p2.img.cctvpic.com/photoworkspace/2022/06/24/2022062414513926689.jpg','据交通运输部长江航务管理局(简称长航局)消息，自18日长江“黄金6号”游轮重启重庆至宜昌航线以来，截至23日，长江干线已有6艘省际游轮复航，另有9艘省际旅游客船整装待发。','0'),(2,'约翰逊：把乌克兰非法移民遣送卢旺达仅存在“理论上的可能”','2022-06-24 15:03:56','约翰逊:\"...\"','1','https://p1.img.cctvpic.com/photoworkspace/2022/06/24/2022062414511836028.jpg','当地时间6月23日，正在卢旺达访问的英国首相约翰逊表示，如果乌克兰难民通过乘船横渡英吉利海峡等方式未经批准前来英国，将把他们送往卢旺达，但这种情况仅存在于“理论上”。','0'),(3,'河北：金山岭长城迎日出','2022-06-24 15:04:17','河北：金山岭长城迎日出','1','https://p2.img.cctvpic.com/photoworkspace/2022/06/24/2022062414472913923.jpg','2022年6月24日清晨，河北省承德市滦平县金山岭长城日出美景。','0'),(4,'总台庆祝香港回归祖国25周年主题歌曲《我们会更好》MV上线！','2022-06-24 15:05:22','庆祝香港回归祖国25周年','1','https://p5.img.cctvpic.com/photoworkspace/2022/06/24/2022062414400143939.jpg','今年是香港回归祖国25周年，为营造浓厚庆祝氛围，中央广播电视总台策划制作了庆祝香港回归祖国25周年主题歌曲《我们会更好》。歌曲生动展现回归以来香港在积极融入国家发展大局中所取得的巨大成就，充分展示粤港澳大湾区发展的美好未来','0'),(5,'中国科学家胡海岚获颁“世界杰出女科学家奖”','2022-06-24 15:07:14','中国科学家胡海岚','1','https://p4.img.cctvpic.com/photoworkspace/2022/06/24/2022062414460549083.jpg','2022年度“世界杰出女科学家奖”颁奖典礼23日在巴黎联合国教科文组织总部举行。中国浙江大学神经科学中心执行主任胡海岚与另外4名女科学家获颁本年度这一奖项。','0');

/*Table structure for table `getthumimages` */

DROP TABLE IF EXISTS `getthumimages`;

CREATE TABLE `getthumimages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isdel` varchar(1) COLLATE utf8_unicode_ci DEFAULT '0',
  `thumbs_id` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `getthumimages` */

insert  into `getthumimages`(`id`,`src`,`isdel`,`thumbs_id`) values (1,'https://img0.baidu.com/it/u=962361882,2281204904&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500','0','1'),(7,'https://img2.baidu.com/it/u=987329816,3431076095&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=625','0','2'),(8,'https://img1.baidu.com/it/u=1316606735,4261558457&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=535','0','3'),(9,'https://img0.baidu.com/it/u=2211606183,1755142398&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=1083','0','4'),(10,'https://img0.baidu.com/it/u=4111381801,437521483&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=889','0','5'),(11,'https://img0.baidu.com/it/u=1762208877,310417085&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500','0','6'),(12,'https://img1.baidu.com/it/u=3108431628,3896484070&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=551','0','7'),(13,'https://img0.baidu.com/it/u=4038511147,700926604&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=502','0','8'),(14,'https://img2.baidu.com/it/u=1756439243,4223254132&fm=253&fmt=auto&app=120&f=JPEG?w=720&h=480','0','9'),(15,'https://img2.baidu.com/it/u=3205103639,3802226753&fm=253&fmt=auto&app=120&f=JPEG?w=500&h=889','0','10'),(16,'https://img1.baidu.com/it/u=4071198263,1825104514&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500','0','11'),(17,'https://img2.baidu.com/it/u=1648243001,3634078341&fm=253&fmt=auto&app=138&f=JPEG?w=784&h=500','0','12'),(18,'https://img1.baidu.com/it/u=3799373357,436451086&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=329','0','13'),(19,'https://img0.baidu.com/it/u=3895397334,357843285&fm=253&fmt=auto&app=120&f=JPEG?w=500&h=500','0','14'),(20,'https://img2.baidu.com/it/u=3124086738,3508155351&fm=253&fmt=auto&app=138&f=JPEG?w=771&h=500','0','15'),(21,'https://img2.baidu.com/it/u=173656494,1601458465&fm=253&fmt=auto&app=138&f=JPEG?w=487&h=325','0','16'),(22,'https://img2.baidu.com/it/u=762451243,892533771&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500','0','17'),(23,'https://img2.baidu.com/it/u=2721519291,2134388795&fm=253&fmt=auto&app=138&f=JPEG?w=526&h=500','0','18'),(24,'https://img1.baidu.com/it/u=2344155759,2019365747&fm=253&fmt=auto&app=138&f=JPEG?w=800&h=500','0','19'),(25,'https://img1.baidu.com/it/u=3576907666,4275802480&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=945','0','20'),(26,'https://img2.baidu.com/it/u=3810389791,1656088470&fm=253&fmt=auto&app=138&f=JPEG?w=750&h=500','0','21'),(27,'https://img1.baidu.com/it/u=2510084014,1932314916&fm=253&fmt=auto&app=138&f=JPEG?w=680&h=452','0','22'),(28,'https://img2.baidu.com/it/u=374555908,2554136056&fm=253&fmt=auto&app=120&f=JPEG?w=640&h=480','0','23'),(29,'https://img1.baidu.com/it/u=3767755214,3050570905&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500','0','24'),(30,'https://img0.baidu.com/it/u=182449075,4251127339&fm=253&fmt=auto&app=138&f=JPEG?w=1000&h=500','0','25'),(31,'https://img2.baidu.com/it/u=4266399414,1775410477&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500','0','26'),(32,'https://img2.baidu.com/it/u=934947021,1924896494&fm=253&fmt=auto&app=138&f=JPEG?w=750&h=500','0','27'),(33,'https://img2.baidu.com/it/u=2978343734,1825504373&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500','0','28'),(34,'https://img0.baidu.com/it/u=2744605633,2681868469&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500','0','29'),(35,'https://img1.baidu.com/it/u=896799710,4292616185&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500','0','30'),(36,'https://img1.baidu.com/it/u=1405545107,1392800839&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=337','0','31'),(37,'https://img0.baidu.com/it/u=1195491569,494372595&fm=253&fmt=auto&app=138&f=JPEG?w=640&h=360','0','32'),(38,'https://img1.baidu.com/it/u=1355708096,1615969379&fm=253&fmt=auto&app=138&f=JPG?w=500&h=258','0','33'),(39,'https://img2.baidu.com/it/u=1816812652,2118531292&fm=253&fmt=auto&app=120&f=JPEG?w=1060&h=500','0','34'),(40,'https://imgservice.suning.cn/uimg1/b2c/image/DwsgIazYHIVnoAuAOakP6A.jpg_60w_60h_4e','0','101'),(41,'https://imgservice.suning.cn/uimg1/b2c/image/US2Pt-A2QKnWL005W8L1gw.jpg_60w_60h_4e','0','101'),(42,'	https://imgservice.suning.cn/uimg1/b2c/image/i5HTTsSyQgzK11ctZ0uBCA.jpg_60w_60h_4e','0','101'),(43,'https://imgservice.suning.cn/uimg1/b2c/atmosphere/ruMpCzIFI1Foh4yCdu7D8Q.png_60w_60h_4e','0','102'),(44,'https://imgservice.suning.cn/uimg1/b2c/image/fzqK08WCYws_WBgxTENLAw.jpg_60w_60h_4e','0','102'),(45,'https://imgservice.suning.cn/uimg1/b2c/image/DptOtP08mcn8mPAMnKnTvQ.jpg_60w_60h_4e','0','102');

/*Table structure for table `grids` */

DROP TABLE IF EXISTS `grids`;

CREATE TABLE `grids` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `src` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `isdel` varchar(1) COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `grids` */

insert  into `grids`(`id`,`to`,`title`,`src`,`isdel`) values (1,'/home/newslist','新闻资讯','http://119.91.147.73/home/gird/menu1.png','0'),(2,'/home/photolist','图片分享','http://119.91.147.73/home/gird/menu2.png','0'),(3,'/home/goodslist','商品购买','http://119.91.147.73/home/gird/menu3.png','0'),(4,'/home/filed','留言反馈','http://119.91.147.73/home/gird/menu4.png','0'),(5,'/home/videolist','视频区域','http://119.91.147.73/home/gird/menu5.png','0'),(6,'/home/contact','联系我们','http://119.91.147.73/home/gird/menu6.png','0');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
