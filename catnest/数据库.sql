/*
SQLyog Enterprise v12.09 (64 bit)
MySQL - 5.7.32-log : Database - catnest
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`catnest` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `catnest`;

/*Table structure for table `c_comment` */

DROP TABLE IF EXISTS `c_comment`;

CREATE TABLE `c_comment` (
  `comment_id` int(10) NOT NULL AUTO_INCREMENT,
  `comment_phone` varchar(20) DEFAULT NULL COMMENT '评论者电话',
  `comment_content` varchar(200) DEFAULT NULL COMMENT '评论内容',
  `comment_createtime` datetime DEFAULT NULL COMMENT '评论时间',
  `comment_ps_id` int(10) DEFAULT NULL COMMENT '评论帖子id',
  `comment_source` int(10) DEFAULT NULL COMMENT '评论来源（0-post 2-sponsor 1-share）',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `c_comment` */

/*Table structure for table `c_enclosure` */

DROP TABLE IF EXISTS `c_enclosure`;

CREATE TABLE `c_enclosure` (
  `enclosure_id` int(10) NOT NULL AUTO_INCREMENT,
  `enclosure_type` int(10) DEFAULT NULL COMMENT '附件类型（1-图片2视频）',
  `enclosure_url` varchar(100) DEFAULT NULL COMMENT '附件地址',
  `enclosure_createtime` datetime DEFAULT NULL COMMENT '上传时间',
  `enclosure_number` varchar(100) DEFAULT NULL COMMENT '用户电话',
  `enclosure_small_url` varchar(100) DEFAULT NULL COMMENT '缩略图地址',
  `enclosure_wh` varchar(40) DEFAULT NULL COMMENT '图片尺寸',
  PRIMARY KEY (`enclosure_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `c_enclosure` */

/*Table structure for table `c_notice` */

DROP TABLE IF EXISTS `c_notice`;

CREATE TABLE `c_notice` (
  `notice_id` int(10) NOT NULL AUTO_INCREMENT,
  `notice_createtime` date DEFAULT NULL COMMENT '创建日期',
  `notice_content` varchar(100) DEFAULT NULL COMMENT '公告内容',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `c_notice` */

/*Table structure for table `c_post` */

DROP TABLE IF EXISTS `c_post`;

CREATE TABLE `c_post` (
  `post_id` int(10) NOT NULL AUTO_INCREMENT,
  `post_title` varchar(100) DEFAULT NULL COMMENT '启示标题',
  `post_phone` varchar(20) DEFAULT NULL COMMENT '发布用户电话',
  `post_content` varchar(400) DEFAULT NULL COMMENT '启示内容',
  `post_createtime` datetime DEFAULT NULL COMMENT '发布日期',
  `post_count` int(10) DEFAULT NULL COMMENT '浏览次数',
  `post_url` varchar(100) DEFAULT NULL COMMENT '启示图片',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

/*Data for the table `c_post` */

/*Table structure for table `c_report` */

DROP TABLE IF EXISTS `c_report`;

CREATE TABLE `c_report` (
  `report_id` int(10) NOT NULL AUTO_INCREMENT,
  `report_user` varchar(20) DEFAULT NULL,
  `report_content` varchar(100) DEFAULT NULL,
  `report_from` varchar(10) DEFAULT NULL,
  `report_fromId` int(10) DEFAULT NULL,
  `report_createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `c_report` */

/*Table structure for table `c_sentence` */

DROP TABLE IF EXISTS `c_sentence`;

CREATE TABLE `c_sentence` (
  `sentence_id` int(10) NOT NULL AUTO_INCREMENT,
  `sentence_c` varchar(300) DEFAULT NULL COMMENT '中文内容',
  `sentence_e` varchar(300) DEFAULT NULL COMMENT '英文内容',
  `sentence_z` varchar(20) DEFAULT NULL COMMENT '作者',
  PRIMARY KEY (`sentence_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `c_sentence` */

insert  into `c_sentence`(`sentence_id`,`sentence_c`,`sentence_e`,`sentence_z`) values (1,'没有人是一座孤岛，可以自全','No man is an island entire of itself','John Donne'),(2,'如果尖锐的批评完全消失，温和的批评将会变得刺耳','If sharp criticism disappears completely, moderate criticism will become harsh','Plato'),(3,'做一个圣人是偶然现象，做一个正直的人却是为人常轨','To be a saint is an accident, but to be an upright person is a normal way','Victor Hugo'),(4,'达则兼济天下，穷则独善其身','Preserve your dignity as a nobody; promote the social wellfare as a somebody.','孟子'),(5,'抹去我过去生命中的任何一分一秒都不会有现在的我','Erase any moment of my past life, there will be no present me','Ryunosuke Akutagawa'),(6,'我们登上并非我们选择的舞台，演出并非我们选择的剧本','We are not on the stage of our choice, the play of our choice','Epictetus'),(7,'一本书就像一把利斧，劈开我们冰封的内心','A book is like a sharp axe, splitting our frozen heart','Franz Kafka'),(8,'人类的赞歌是勇气的赞歌，人类的伟大是勇气的伟大','Hamon breathing comes from courage!Courage is a marvel of humanity!','Araki Hirohiko'),(9,'世上只有一种真正的英雄主义，那就是在认清生活的真相后仍然热爱生活','There is only one kind of real heroism in the world, that is, to love life after recognizing the truth of life','Romain Rolland'),(10,'死亡不是生命的终点，遗忘才是','Death is not the end of life, forgetting is the end of life.','Coco ');

/*Table structure for table `c_share` */

DROP TABLE IF EXISTS `c_share`;

CREATE TABLE `c_share` (
  `share_id` int(10) NOT NULL AUTO_INCREMENT,
  `share_phone` varchar(20) NOT NULL COMMENT '用户电话',
  `share_title` varchar(100) DEFAULT NULL COMMENT '分享标题',
  `share_content` varchar(400) DEFAULT NULL COMMENT '分享内容',
  `share_createtime` datetime DEFAULT NULL COMMENT '分享时间',
  `share_count` int(10) DEFAULT NULL COMMENT '浏览次数',
  `share_url` varchar(100) DEFAULT NULL COMMENT '分享图片',
  PRIMARY KEY (`share_id`,`share_phone`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `c_share` */

/*Table structure for table `c_sponsor` */

DROP TABLE IF EXISTS `c_sponsor`;

CREATE TABLE `c_sponsor` (
  `sponsor_id` int(10) NOT NULL AUTO_INCREMENT,
  `sponsor_phone` varchar(20) DEFAULT NULL COMMENT '用户电话',
  `sponsor_title` varchar(100) DEFAULT NULL COMMENT '标题',
  `sponsor_content` varchar(400) DEFAULT NULL COMMENT '申请内容',
  `sponsor_reason` varchar(400) DEFAULT NULL COMMENT '申请原因',
  `sponsor_status` int(10) DEFAULT NULL COMMENT '状态',
  `sponsor_createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `sponsor_picture` varchar(100) DEFAULT NULL COMMENT '首图',
  `sponsor_count` int(100) DEFAULT NULL COMMENT '浏览次数',
  PRIMARY KEY (`sponsor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `c_sponsor` */

/*Table structure for table `c_user` */

DROP TABLE IF EXISTS `c_user`;

CREATE TABLE `c_user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_nickname` varchar(40) NOT NULL COMMENT '昵称',
  `user_phone` varchar(20) DEFAULT NULL COMMENT '电话号码',
  `user_password` varchar(100) DEFAULT NULL COMMENT '密码',
  `user_qq` varchar(40) DEFAULT NULL COMMENT 'qq',
  `user_wechat` varchar(40) DEFAULT NULL COMMENT '微信',
  `user_createtime` datetime DEFAULT NULL,
  `user_count` int(10) DEFAULT NULL COMMENT '获赞次数',
  `user_url` varchar(100) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`user_id`,`user_nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `c_user` */

insert  into `c_user`(`user_id`,`user_nickname`,`user_phone`,`user_password`,`user_qq`,`user_wechat`,`user_createtime`,`user_count`,`user_url`) values (2,'kk','17628659542','827CCB0EEA8A706C4C34A16891F84E7B','2848351894','fukunmingtian2','2021-02-08 03:53:58',0,'/upload/2021/2/120210209195314530.jpg'),(6,'administrators','1111','827CCB0EEA8A706C4C34A16891F84E7B','2848351894','fukunmingtian2','2021-02-08 03:53:58',NULL,'/images/title/title1.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
