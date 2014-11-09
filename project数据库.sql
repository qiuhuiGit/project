/*
SQLyog Ultimate v11.25 (64 bit)
MySQL - 5.1.73-community : Database - login
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`login` /*!40100 DEFAULT CHARACTER SET gbk */;

USE `login`;

/*Table structure for table `equipment` */

DROP TABLE IF EXISTS `equipment`;

CREATE TABLE `equipment` (
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `number` int(255) NOT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `equipment` */

insert  into `equipment`(`type`,`name`,`model`,`picture`,`size`,`date`,`price`,`number`) values ('电脑','华硕','1.1','image/asus.jpg','大型','2011.11.11','4999元',6),('电脑','惠普','1.2','image/hp.jpg','大型','2014.3.4','4000元',6),('电脑','戴尔','1.3','image/dell.jpg','大型','2014.5.12','3999元',9),('家具','桌子','2.1','image/table.jpg','中型','2010.7.8','200元',1),('家具','椅子','2.2','image/chair.jpg','中型','2010.7.8','200元',10),('仪器','计算器','3.1','image/calculator.jpg','小型','2012.12.23','60元',100),('仪器','显微镜','3.2','image/microscope.jpg','小型','2011.11.18','1000元',10);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `user` */

insert  into `user`(`username`,`password`,`sex`,`country`,`email`) values ('qiuhui','qiuhui','男','china','123@qq.com'),('admin','admin','男','china','123@qq.com'),('qh','qh','男','china','1234@qq.com'),('we','we','男','e','e'),('111','111','男','111','111'),('123','123','男','china','1234@qq.com'),('1120310414','999999999','男','china','123'),('1234','1234','男','china','1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
