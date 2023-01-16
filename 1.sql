/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.15 : Database - hotelmanage
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hotelmanage` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `hotelmanage`;

/*Table structure for table `client` */

DROP TABLE IF EXISTS `client`;

CREATE TABLE `client` (
  `clientName` varchar(20) NOT NULL COMMENT '姓名',
  `clientID` varchar(20) NOT NULL COMMENT '身份证号码',
  `clientSex` varchar(5) NOT NULL COMMENT '性别',
  `clientPhone` varchar(20) DEFAULT NULL COMMENT '电话号码',
  `isVip` tinyint(1) DEFAULT NULL COMMENT '是否为VIP',
  PRIMARY KEY (`clientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `client` */

insert  into `client`(`clientName`,`clientID`,`clientSex`,`clientPhone`,`isVip`) values ('jim','123','男','1234',1),('tom','1234','男','1234567890',1),('rose','12345','女','3424234',1),('jack','12345678','男','1334342',2),('leo','123456789','男','1234567',1),('王五','213','男','1234',1),('张三','400103199908073211','男','13323456789',1),('李四','400103199908073222','女','13323452345',2);

/*Table structure for table `clientbookin` */

DROP TABLE IF EXISTS `clientbookin`;

CREATE TABLE `clientbookin` (
  `clientName` varchar(20) NOT NULL,
  `clientID` varchar(20) NOT NULL,
  `roomID` varchar(5) NOT NULL,
  `bookInDate` date NOT NULL,
  `checkDate` date DEFAULT NULL,
  `totalMoney` double DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`clientName`,`clientID`,`roomID`,`bookInDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `clientbookin` */

insert  into `clientbookin`(`clientName`,`clientID`,`roomID`,`bookInDate`,`checkDate`,`totalMoney`,`remark`) values ('jack','1234','2223','2022-07-05','2022-07-16',199,'good!'),('jim','123','123','2022-07-19','2022-07-20',499,'good'),('leo','123456789','1001','2022-07-06',NULL,234234,'23423'),('rose','12345','234','2022-07-06','2022-07-07',99,'good'),('tom','123456','133','2022-07-01','2022-07-02',140,'good'),('tom','123456','155','2022-07-02','2022-07-04',150,'good'),('tom','123456','202','2022-07-15','2022-07-15',288,'god!'),('tom','123456','301','2022-07-06','2022-07-07',388,'very good!'),('tom','123456','333','2022-07-14','2022-07-15',255,'goood1'),('tom','123456','334','2022-07-16','2022-07-17',355,'fine!'),('tom','123456','345','2022-07-17','2022-07-18',555,'fine!'),('张三','400103199908073211','1003','2022-07-08',NULL,1000,'展示订房'),('张三','400103199908073211','1003','2022-07-11','2022-07-18',100,''),('李四','400103199908073222','1002','2022-07-05','2022-07-19',100,'展示订房');

/*Table structure for table `room` */

DROP TABLE IF EXISTS `room`;

CREATE TABLE `room` (
  `roomID` varchar(5) NOT NULL,
  `roomTypeName` varchar(10) NOT NULL,
  `roomPosition` varchar(5) NOT NULL,
  `bedNum` int(11) DEFAULT NULL,
  `peopleNum` int(11) DEFAULT NULL,
  `factPeopleNum` int(11) DEFAULT NULL,
  PRIMARY KEY (`roomID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `room` */

insert  into `room`(`roomID`,`roomTypeName`,`roomPosition`,`bedNum`,`peopleNum`,`factPeopleNum`) values ('1002','双人间','2',2,2,2),('1003','单人间','1',1,1,1),('1004','三人间','1',3,3,1),('1005','','1',5,5,1),('2001','单人间','2',1,1,1),('2002','双人间','2',2,2,0);

/*Table structure for table `roomtype` */

DROP TABLE IF EXISTS `roomtype`;

CREATE TABLE `roomtype` (
  `roomTypeName` varchar(20) NOT NULL,
  `area` int(11) DEFAULT NULL,
  `bedNum` int(11) DEFAULT NULL,
  `peopleNum` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `television` bit(1) DEFAULT NULL,
  `phone` bit(1) DEFAULT NULL,
  `airCondition` bit(1) DEFAULT NULL,
  `toilet` bit(1) DEFAULT NULL,
  PRIMARY KEY (`roomTypeName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `roomtype` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(30) NOT NULL,
  `userPwd` varchar(30) NOT NULL,
  `userEmail` varchar(30) DEFAULT NULL,
  `userPhone` varchar(30) DEFAULT NULL,
  `userInformation` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

/*Data for the table `user` */

insert  into `user`(`userID`,`userName`,`userPwd`,`userEmail`,`userPhone`,`userInformation`) values (1,'admin','12345','12345678','12345678','root'),(2,'local','123456','12345678','123456','123456'),(4,'admin2','12345678','112','110','测试编辑'),(5,'admin3','123456','123456','123456','123456'),(6,'admin4','123456','123456','123456','123456'),(7,'aaa111','12345','lmhlmh@163.com','19823456789','测试添加功能'),(8,'SAdmin','12345','yzw1@163.com','18996221011','test'),(9,'lululu','123456','lmhlmh@163.com','18996221011','无');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
