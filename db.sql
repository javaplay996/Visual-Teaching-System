/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmti1mh
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmti1mh` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmti1mh`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmti1mh/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmti1mh/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmti1mh/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshizhanghao` varchar(200) NOT NULL COMMENT '教师账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshizhanghao` (`jiaoshizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`jiaoshizhanghao`,`mima`,`jiaoshixingming`,`touxiang`,`xingbie`,`lianxidianhua`,`youxiang`) values (21,'2021-05-12 11:20:19','教师1','123456','教师姓名1','http://localhost:8080/ssmti1mh/upload/jiaoshi_touxiang1.jpg','男','13823888881','773890001@qq.com');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshizhanghao`,`mima`,`jiaoshixingming`,`touxiang`,`xingbie`,`lianxidianhua`,`youxiang`) values (22,'2021-05-12 11:20:19','教师2','123456','教师姓名2','http://localhost:8080/ssmti1mh/upload/jiaoshi_touxiang2.jpg','男','13823888882','773890002@qq.com');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshizhanghao`,`mima`,`jiaoshixingming`,`touxiang`,`xingbie`,`lianxidianhua`,`youxiang`) values (23,'2021-05-12 11:20:19','教师3','123456','教师姓名3','http://localhost:8080/ssmti1mh/upload/jiaoshi_touxiang3.jpg','男','13823888883','773890003@qq.com');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshizhanghao`,`mima`,`jiaoshixingming`,`touxiang`,`xingbie`,`lianxidianhua`,`youxiang`) values (24,'2021-05-12 11:20:19','教师4','123456','教师姓名4','http://localhost:8080/ssmti1mh/upload/jiaoshi_touxiang4.jpg','男','13823888884','773890004@qq.com');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshizhanghao`,`mima`,`jiaoshixingming`,`touxiang`,`xingbie`,`lianxidianhua`,`youxiang`) values (25,'2021-05-12 11:20:19','教师5','123456','教师姓名5','http://localhost:8080/ssmti1mh/upload/jiaoshi_touxiang5.jpg','男','13823888885','773890005@qq.com');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshizhanghao`,`mima`,`jiaoshixingming`,`touxiang`,`xingbie`,`lianxidianhua`,`youxiang`) values (26,'2021-05-12 11:20:19','教师6','123456','教师姓名6','http://localhost:8080/ssmti1mh/upload/jiaoshi_touxiang6.jpg','男','13823888886','773890006@qq.com');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,21,'教师1','jiaoshi','教师','6euegshmv52r63kmknnxd1djzfqawt95','2021-05-12 11:25:26','2021-05-12 12:29:00');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,11,'学生1','xuesheng','学生','zv4cm0oz62dvbya6hr8h75szayng12li','2021-05-12 11:26:37','2021-05-12 12:30:17');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1,'abo','users','管理员','pqimxk9b50o5df2rkuome87vvywz7omb','2021-05-12 11:30:55','2021-05-12 12:30:56');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-12 11:20:19');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshenghao` varchar(200) NOT NULL COMMENT '学生号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xueshenghao` (`xueshenghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xueshenghao`,`mima`,`xueshengxingming`,`touxiang`,`xingbie`,`shoujihaoma`,`youxiang`) values (11,'2021-05-12 11:20:19','学生1','123456','学生姓名1','http://localhost:8080/ssmti1mh/upload/xuesheng_touxiang1.jpg','女','13823888881','773890001@qq.com');
insert  into `xuesheng`(`id`,`addtime`,`xueshenghao`,`mima`,`xueshengxingming`,`touxiang`,`xingbie`,`shoujihaoma`,`youxiang`) values (12,'2021-05-12 11:20:19','学生2','123456','学生姓名2','http://localhost:8080/ssmti1mh/upload/xuesheng_touxiang2.jpg','男','13823888882','773890002@qq.com');
insert  into `xuesheng`(`id`,`addtime`,`xueshenghao`,`mima`,`xueshengxingming`,`touxiang`,`xingbie`,`shoujihaoma`,`youxiang`) values (13,'2021-05-12 11:20:19','学生3','123456','学生姓名3','http://localhost:8080/ssmti1mh/upload/xuesheng_touxiang3.jpg','男','13823888883','773890003@qq.com');
insert  into `xuesheng`(`id`,`addtime`,`xueshenghao`,`mima`,`xueshengxingming`,`touxiang`,`xingbie`,`shoujihaoma`,`youxiang`) values (14,'2021-05-12 11:20:19','学生4','123456','学生姓名4','http://localhost:8080/ssmti1mh/upload/xuesheng_touxiang4.jpg','男','13823888884','773890004@qq.com');
insert  into `xuesheng`(`id`,`addtime`,`xueshenghao`,`mima`,`xueshengxingming`,`touxiang`,`xingbie`,`shoujihaoma`,`youxiang`) values (15,'2021-05-12 11:20:19','学生5','123456','学生姓名5','http://localhost:8080/ssmti1mh/upload/xuesheng_touxiang5.jpg','男','13823888885','773890005@qq.com');
insert  into `xuesheng`(`id`,`addtime`,`xueshenghao`,`mima`,`xueshengxingming`,`touxiang`,`xingbie`,`shoujihaoma`,`youxiang`) values (16,'2021-05-12 11:20:19','学生6','123456','学生姓名6','http://localhost:8080/ssmti1mh/upload/xuesheng_touxiang6.jpg','男','13823888886','773890006@qq.com');

/*Table structure for table `xueshengxuanti` */

DROP TABLE IF EXISTS `xueshengxuanti`;

CREATE TABLE `xueshengxuanti` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `zuoyeliucheng` longtext COMMENT '作业流程',
  `xuantishijian` datetime DEFAULT NULL COMMENT '选题时间',
  `jiaoshizhanghao` varchar(200) DEFAULT NULL COMMENT '教师账号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xueshenghao` varchar(200) DEFAULT NULL COMMENT '学生号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620790030723 DEFAULT CHARSET=utf8 COMMENT='学生选题';

/*Data for the table `xueshengxuanti` */

insert  into `xueshengxuanti`(`id`,`addtime`,`biaoti`,`zuoyeliucheng`,`xuantishijian`,`jiaoshizhanghao`,`jiaoshixingming`,`xueshenghao`,`xueshengxingming`) values (41,'2021-05-12 11:20:19','标题1','作业流程1','2021-05-12 11:20:19','教师账号1','教师姓名1','学生号1','学生姓名1');
insert  into `xueshengxuanti`(`id`,`addtime`,`biaoti`,`zuoyeliucheng`,`xuantishijian`,`jiaoshizhanghao`,`jiaoshixingming`,`xueshenghao`,`xueshengxingming`) values (42,'2021-05-12 11:20:19','标题2','作业流程2','2021-05-12 11:20:19','教师账号2','教师姓名2','学生号2','学生姓名2');
insert  into `xueshengxuanti`(`id`,`addtime`,`biaoti`,`zuoyeliucheng`,`xuantishijian`,`jiaoshizhanghao`,`jiaoshixingming`,`xueshenghao`,`xueshengxingming`) values (43,'2021-05-12 11:20:19','标题3','作业流程3','2021-05-12 11:20:19','教师账号3','教师姓名3','学生号3','学生姓名3');
insert  into `xueshengxuanti`(`id`,`addtime`,`biaoti`,`zuoyeliucheng`,`xuantishijian`,`jiaoshizhanghao`,`jiaoshixingming`,`xueshenghao`,`xueshengxingming`) values (44,'2021-05-12 11:20:19','标题4','作业流程4','2021-05-12 11:20:19','教师账号4','教师姓名4','学生号4','学生姓名4');
insert  into `xueshengxuanti`(`id`,`addtime`,`biaoti`,`zuoyeliucheng`,`xuantishijian`,`jiaoshizhanghao`,`jiaoshixingming`,`xueshenghao`,`xueshengxingming`) values (45,'2021-05-12 11:20:19','标题5','作业流程5','2021-05-12 11:20:19','教师账号5','教师姓名5','学生号5','学生姓名5');
insert  into `xueshengxuanti`(`id`,`addtime`,`biaoti`,`zuoyeliucheng`,`xuantishijian`,`jiaoshizhanghao`,`jiaoshixingming`,`xueshenghao`,`xueshengxingming`) values (46,'2021-05-12 11:20:19','标题6','作业流程6','2021-05-12 11:20:19','教师账号6','教师姓名6','学生号6','学生姓名6');
insert  into `xueshengxuanti`(`id`,`addtime`,`biaoti`,`zuoyeliucheng`,`xuantishijian`,`jiaoshizhanghao`,`jiaoshixingming`,`xueshenghao`,`xueshengxingming`) values (1620790030722,'2021-05-12 11:27:09','基于vue的程序设计课程可视化教学系统','<p>学生</p><p>学生登录系统，从若干个选题中选择想要完成的程序设计 按照程序设计流程步骤完成作业，每一步完成后提交相关信息或者运行相关程序</p><p>教师</p><p>教师登录系统，可以提供若干个选题供学生选择 针对每个选题，老师按照程序设计流程步骤为学生布置程序设计作业</p>','2021-05-12 11:26:53','教师1','教师姓名1','学生1','学生姓名1');

/*Table structure for table `zuoyetijiao` */

DROP TABLE IF EXISTS `zuoyetijiao`;

CREATE TABLE `zuoyetijiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `wanchengbuzhou` varchar(200) DEFAULT NULL COMMENT '完成步骤',
  `zuoyeshipin` varchar(200) DEFAULT NULL COMMENT '作业视频',
  `tijiaoshijian` datetime DEFAULT NULL COMMENT '提交时间',
  `jiaoshizhanghao` varchar(200) DEFAULT NULL COMMENT '教师账号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xueshenghao` varchar(200) DEFAULT NULL COMMENT '学生号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620790113947 DEFAULT CHARSET=utf8 COMMENT='作业提交';

/*Data for the table `zuoyetijiao` */

insert  into `zuoyetijiao`(`id`,`addtime`,`biaoti`,`wanchengbuzhou`,`zuoyeshipin`,`tijiaoshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`xueshenghao`,`xueshengxingming`,`sfsh`,`shhf`) values (51,'2021-05-12 11:20:19','标题1','完成步骤1','','2021-05-12 11:20:19','教师账号1','教师姓名1','学生号1','学生姓名1','是','');
insert  into `zuoyetijiao`(`id`,`addtime`,`biaoti`,`wanchengbuzhou`,`zuoyeshipin`,`tijiaoshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`xueshenghao`,`xueshengxingming`,`sfsh`,`shhf`) values (52,'2021-05-12 11:20:19','标题2','完成步骤2','','2021-05-12 11:20:19','教师账号2','教师姓名2','学生号2','学生姓名2','是','');
insert  into `zuoyetijiao`(`id`,`addtime`,`biaoti`,`wanchengbuzhou`,`zuoyeshipin`,`tijiaoshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`xueshenghao`,`xueshengxingming`,`sfsh`,`shhf`) values (53,'2021-05-12 11:20:19','标题3','完成步骤3','','2021-05-12 11:20:19','教师账号3','教师姓名3','学生号3','学生姓名3','是','');
insert  into `zuoyetijiao`(`id`,`addtime`,`biaoti`,`wanchengbuzhou`,`zuoyeshipin`,`tijiaoshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`xueshenghao`,`xueshengxingming`,`sfsh`,`shhf`) values (54,'2021-05-12 11:20:19','标题4','完成步骤4','','2021-05-12 11:20:19','教师账号4','教师姓名4','学生号4','学生姓名4','是','');
insert  into `zuoyetijiao`(`id`,`addtime`,`biaoti`,`wanchengbuzhou`,`zuoyeshipin`,`tijiaoshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`xueshenghao`,`xueshengxingming`,`sfsh`,`shhf`) values (55,'2021-05-12 11:20:19','标题5','完成步骤5','','2021-05-12 11:20:19','教师账号5','教师姓名5','学生号5','学生姓名5','是','');
insert  into `zuoyetijiao`(`id`,`addtime`,`biaoti`,`wanchengbuzhou`,`zuoyeshipin`,`tijiaoshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`xueshenghao`,`xueshengxingming`,`sfsh`,`shhf`) values (56,'2021-05-12 11:20:19','标题6','完成步骤6','','2021-05-12 11:20:19','教师账号6','教师姓名6','学生号6','学生姓名6','是','');
insert  into `zuoyetijiao`(`id`,`addtime`,`biaoti`,`wanchengbuzhou`,`zuoyeshipin`,`tijiaoshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`xueshenghao`,`xueshengxingming`,`sfsh`,`shhf`) values (1620790113946,'2021-05-12 11:28:33','基于vue的程序设计课程可视化教学系统','步骤1','http://localhost:8080/ssmti1mh/upload/1620790106970.mp4','2021-05-12 11:27:53','教师1','教师姓名1','学生1','学生姓名1','是','这里回复教师意见');

/*Table structure for table `zuoyexinxi` */

DROP TABLE IF EXISTS `zuoyexinxi`;

CREATE TABLE `zuoyexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `zuoyeliucheng` longtext COMMENT '作业流程',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `jiaoshizhanghao` varchar(200) DEFAULT NULL COMMENT '教师账号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620789978053 DEFAULT CHARSET=utf8 COMMENT='作业信息';

/*Data for the table `zuoyexinxi` */

insert  into `zuoyexinxi`(`id`,`addtime`,`biaoti`,`zuoyeliucheng`,`faburiqi`,`jiaoshizhanghao`,`jiaoshixingming`) values (31,'2021-05-12 11:20:19','标题1','作业流程1','2021-05-12','教师账号1','教师姓名1');
insert  into `zuoyexinxi`(`id`,`addtime`,`biaoti`,`zuoyeliucheng`,`faburiqi`,`jiaoshizhanghao`,`jiaoshixingming`) values (32,'2021-05-12 11:20:19','标题2','作业流程2','2021-05-12','教师账号2','教师姓名2');
insert  into `zuoyexinxi`(`id`,`addtime`,`biaoti`,`zuoyeliucheng`,`faburiqi`,`jiaoshizhanghao`,`jiaoshixingming`) values (33,'2021-05-12 11:20:19','标题3','作业流程3','2021-05-12','教师账号3','教师姓名3');
insert  into `zuoyexinxi`(`id`,`addtime`,`biaoti`,`zuoyeliucheng`,`faburiqi`,`jiaoshizhanghao`,`jiaoshixingming`) values (34,'2021-05-12 11:20:19','标题4','作业流程4','2021-05-12','教师账号4','教师姓名4');
insert  into `zuoyexinxi`(`id`,`addtime`,`biaoti`,`zuoyeliucheng`,`faburiqi`,`jiaoshizhanghao`,`jiaoshixingming`) values (35,'2021-05-12 11:20:19','标题5','作业流程5','2021-05-12','教师账号5','教师姓名5');
insert  into `zuoyexinxi`(`id`,`addtime`,`biaoti`,`zuoyeliucheng`,`faburiqi`,`jiaoshizhanghao`,`jiaoshixingming`) values (36,'2021-05-12 11:20:19','标题6','作业流程6','2021-05-12','教师账号6','教师姓名6');
insert  into `zuoyexinxi`(`id`,`addtime`,`biaoti`,`zuoyeliucheng`,`faburiqi`,`jiaoshizhanghao`,`jiaoshixingming`) values (1620789978052,'2021-05-12 11:26:17','基于vue的程序设计课程可视化教学系统','<p>学生</p><p>学生登录系统，从若干个选题中选择想要完成的程序设计 按照程序设计流程步骤完成作业，每一步完成后提交相关信息或者运行相关程序</p><p>教师</p><p>教师登录系统，可以提供若干个选题供学生选择 针对每个选题，老师按照程序设计流程步骤为学生布置程序设计作业</p>','2021-05-12','教师1','教师姓名1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
