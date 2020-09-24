/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 5.7.29-log : Database - springcrud
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springcrud` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `springcrud`;

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(250) DEFAULT NULL,
  `lastName` varchar(250) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Address` varchar(250) DEFAULT NULL,
  `City` varchar(250) DEFAULT NULL,
  `State` varchar(250) DEFAULT NULL,
  `Zip` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

/*Data for the table `employee` */

insert  into `employee`(`id`,`firstName`,`lastName`,`Email`,`Address`,`City`,`State`,`Zip`) values 
(3,'Priya','Sharma','priyasharma@gmail.com','Diva','Thane','Patna','400656'),
(4,'Pawan','Sharma','pawan@gmail.com','Kopri','hanq','Uttar Pradesh','400603'),
(7,'adad','asd','adad','ada','dasdad','Uttar Pradesh','ada'),
(8,'Suraj','Vishwakarma','surajvishwakarma338@gmail.com','Thane East','Jaunpur','Jaunpur','400603'),
(9,'Suraj','Vishwakarma','surajvishwakarma338@gmail.com','Thane East','Jaunpur','Bihar','400603'),
(23,'asdasd','asdas','asdasd','asdasdsad','asdasd','Uttar Pradesh','asd'),
(24,'adasd','asda','dasd','asdasd','asdasd','Uttar Pradesh','dasda'),
(25,'asda','sdasd','dasd','asdas','dasdasd','Uttar Pradesh','asdasd'),
(26,'asda','qweqw','asdas','dasdas','dasdas','Jharkhand','asdasdasd'),
(27,'asdas','asd','asd','dasdasd','asd','Patna','asdasd'),
(28,'e12312','3123','12','qweqwe','123123','Bihar','1231231'),
(29,'qwe12312','312312','321eqweqw','eqwe13','12312312','Jharkhand','1312312'),
(30,'13213','123123','1231','23123','123123','Jharkhand','123123123'),
(31,'Suraj','Vishwakarma','technologydynamite@gmail.com','Thane East Mumbai','Thane','Uttar Pradesh','400603');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
