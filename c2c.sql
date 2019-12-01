/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 80017
Source Host           : localhost:3306
Source Database       : c2c

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2019-12-01 17:28:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admininformation
-- ----------------------------
DROP TABLE IF EXISTS `admininformation`;
CREATE TABLE `admininformation` (
  `id` int(11) NOT NULL,
  `ano` char(12) NOT NULL,
  `password` char(24) NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admininformation
-- ----------------------------

-- ----------------------------
-- Table structure for adminoperation
-- ----------------------------
DROP TABLE IF EXISTS `adminoperation`;
CREATE TABLE `adminoperation` (
  `id` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
  `modified` datetime DEFAULT NULL,
  `operation` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adminoperation
-- ----------------------------

-- ----------------------------
-- Table structure for allkinds
-- ----------------------------
DROP TABLE IF EXISTS `allkinds`;
CREATE TABLE `allkinds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of allkinds
-- ----------------------------
INSERT INTO `allkinds` VALUES ('1', '数码科技', '2017-05-14 13:28:20');
INSERT INTO `allkinds` VALUES ('2', '影音家电', '2017-05-14 13:28:23');
INSERT INTO `allkinds` VALUES ('3', '鞋服配饰', '2017-05-14 13:28:26');
INSERT INTO `allkinds` VALUES ('4', '运动代步', '2017-05-14 13:28:28');
INSERT INTO `allkinds` VALUES ('5', '书籍文具', '2017-05-14 13:28:31');
INSERT INTO `allkinds` VALUES ('6', '其他', '2017-05-14 13:28:41');

-- ----------------------------
-- Table structure for boughtshop
-- ----------------------------
DROP TABLE IF EXISTS `boughtshop`;
CREATE TABLE `boughtshop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime DEFAULT NULL,
  `state` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of boughtshop
-- ----------------------------

-- ----------------------------
-- Table structure for classification
-- ----------------------------
DROP TABLE IF EXISTS `classification`;
CREATE TABLE `classification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `modified` datetime DEFAULT NULL,
  `aid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classification
-- ----------------------------
INSERT INTO `classification` VALUES ('1', '手机', null, '1');
INSERT INTO `classification` VALUES ('2', '相机', null, '1');
INSERT INTO `classification` VALUES ('3', '电脑', null, '1');
INSERT INTO `classification` VALUES ('4', '家电', null, '2');
INSERT INTO `classification` VALUES ('5', '影音', null, '2');
INSERT INTO `classification` VALUES ('6', '女装', null, '3');
INSERT INTO `classification` VALUES ('7', '男装', null, '3');
INSERT INTO `classification` VALUES ('8', '女鞋', null, '3');
INSERT INTO `classification` VALUES ('9', '男鞋', null, '3');
INSERT INTO `classification` VALUES ('10', '箱包', null, '3');
INSERT INTO `classification` VALUES ('11', '手表', null, '3');
INSERT INTO `classification` VALUES ('12', '器材', null, '4');
INSERT INTO `classification` VALUES ('13', '代步', null, '4');
INSERT INTO `classification` VALUES ('14', '修养', null, '5');
INSERT INTO `classification` VALUES ('15', '专业', null, '5');
INSERT INTO `classification` VALUES ('16', '文具', null, '5');
INSERT INTO `classification` VALUES ('17', '其他', null, '6');

-- ----------------------------
-- Table structure for goodscar
-- ----------------------------
DROP TABLE IF EXISTS `goodscar`;
CREATE TABLE `goodscar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime DEFAULT NULL,
  `sid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `display` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodscar
-- ----------------------------
INSERT INTO `goodscar` VALUES ('1', '2017-05-22 21:57:31', '2', '7', '2', '1');
INSERT INTO `goodscar` VALUES ('2', '2017-05-23 11:45:09', '92', '7', '1', '1');
INSERT INTO `goodscar` VALUES ('3', '2017-05-26 14:23:29', '1095', '7', '1', '1');
INSERT INTO `goodscar` VALUES ('4', '2018-09-09 15:35:13', '1097', '9', '1', '1');
INSERT INTO `goodscar` VALUES ('5', '2019-12-01 04:18:18', '1', '1', '1', '1');
INSERT INTO `goodscar` VALUES ('6', '2019-12-01 08:02:07', '2', '1', '1', '1');

-- ----------------------------
-- Table structure for goodsoforderform
-- ----------------------------
DROP TABLE IF EXISTS `goodsoforderform`;
CREATE TABLE `goodsoforderform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ofid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `modified` datetime DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `display` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodsoforderform
-- ----------------------------

-- ----------------------------
-- Table structure for orderform
-- ----------------------------
DROP TABLE IF EXISTS `orderform`;
CREATE TABLE `orderform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime DEFAULT NULL,
  `display` int(11) NOT NULL DEFAULT '1',
  `uid` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `context` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderform
-- ----------------------------

-- ----------------------------
-- Table structure for shopcar
-- ----------------------------
DROP TABLE IF EXISTS `shopcar`;
CREATE TABLE `shopcar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime DEFAULT NULL,
  `display` int(11) NOT NULL DEFAULT '1',
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopcar
-- ----------------------------

-- ----------------------------
-- Table structure for shopcontext
-- ----------------------------
DROP TABLE IF EXISTS `shopcontext`;
CREATE TABLE `shopcontext` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime DEFAULT NULL,
  `sid` int(11) NOT NULL,
  `context` varchar(255) NOT NULL,
  `display` int(11) NOT NULL DEFAULT '1',
  `uid` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopcontext
-- ----------------------------
INSERT INTO `shopcontext` VALUES ('1', '2017-05-11 16:09:35', '92', '今天是个哈日子', '1', '1');
INSERT INTO `shopcontext` VALUES ('2', '2017-05-21 16:38:44', '92', 'test', '1', '1');
INSERT INTO `shopcontext` VALUES ('3', '2017-05-21 19:29:25', '92', '好的东西就要积累', '1', '7');
INSERT INTO `shopcontext` VALUES ('4', '2017-05-21 19:30:12', '92', '好的东西就要积累', '1', '7');
INSERT INTO `shopcontext` VALUES ('5', '2017-05-21 19:33:48', '92', '好的东西', '1', '7');
INSERT INTO `shopcontext` VALUES ('6', '2017-05-21 19:47:02', '5', '111111', '1', '7');
INSERT INTO `shopcontext` VALUES ('7', '2017-05-21 19:47:50', '5', '1111', '1', '7');
INSERT INTO `shopcontext` VALUES ('8', '2017-05-21 19:48:49', '5', '就看见看看', '1', '7');
INSERT INTO `shopcontext` VALUES ('9', '2017-05-21 19:50:41', '92', '嘻嘻', '1', '7');
INSERT INTO `shopcontext` VALUES ('10', '2017-05-22 22:07:14', '88', '1111', '1', '7');
INSERT INTO `shopcontext` VALUES ('11', '2017-05-23 22:19:19', '69', '11111', '1', '7');
INSERT INTO `shopcontext` VALUES ('12', '2017-05-26 13:54:13', '1096', '11111', '1', '7');
INSERT INTO `shopcontext` VALUES ('13', '2018-09-09 15:52:52', '1095', 'test', '1', '9');
INSERT INTO `shopcontext` VALUES ('14', '2018-09-09 15:54:07', '1095', 'test44', '1', '9');
INSERT INTO `shopcontext` VALUES ('15', '2019-12-01 04:16:42', '4', '这个商品真好', '1', '1');
INSERT INTO `shopcontext` VALUES ('16', '2019-12-01 08:01:53', '2', '我来了一本，真是太好了！', '1', '1');

-- ----------------------------
-- Table structure for shopinformation
-- ----------------------------
DROP TABLE IF EXISTS `shopinformation`;
CREATE TABLE `shopinformation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `level` int(11) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `sort` int(11) NOT NULL,
  `display` int(11) NOT NULL DEFAULT '1',
  `quantity` int(11) NOT NULL,
  `transaction` int(11) NOT NULL DEFAULT '1',
  `sales` int(11) DEFAULT '0',
  `uid` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `thumbnails` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_uid` (`uid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1098 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopinformation
-- ----------------------------
INSERT INTO `shopinformation` VALUES ('1', '2019-11-30 19:20:50', 'c语言', '4', '99新，价格让你心动', '12.00', '86', '1', '3', '0', '1', '1', 'image/eW5NE6CM121494763475191.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('2', '2017-05-12 16:45:36', '算法导论', '9', '长时间没有用了，欢迎打扰', '70.00', '86', '1', '1', '1', '2', '1', 'image/eW5NE6CM121494763475192.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('3', '2017-05-14 15:31:26', '二手自行车', '3', '长期闲置，价格从优', '100.00', '70', '1', '3', '1', '0', '4', 'image/eW5NE6CM121494763475194.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('4', '2017-05-14 15:33:27', '乒乓球拍', '5', '欢迎咨询，价格优惠', '21.00', '67', '1', '3', '1', '0', '4', 'image/eW5NE6CM121494763475195.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('5', '2017-05-14 15:34:33', '苹果6S', '5', '长期闲置', '1999.00', '1', '1', '3', '1', '0', '4', 'image/eW5NE6CM121494763475196.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('6', '2017-05-14 15:35:19', '衣服', '5', '买来没穿过，欢迎咨询', '68.00', '36', '1', '3', '1', '0', '4', 'image/eW5NE6CM121494763475197.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('7', '2017-05-14 15:36:09', '军服', '7', '专为军事爱好者设计', '199.00', '42', '1', '3', '1', '0', '4', 'image/eW5NE6CM121494763475198.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('8', '2017-05-14 15:36:38', '休闲鞋', '7', '码太小了，40码', '100.00', '46', '1', '3', '1', '0', '4', 'image/eW5NE6CM121494763475199.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('9', '2017-05-14 15:37:08', '运动鞋', '7', '9成新，喜欢的可以向我咨询', '88.00', '49', '1', '3', '1', '0', '4', 'image/eW5NE6CM1214947634751910.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('10', '2017-05-14 15:37:31', '板鞋', '7', '红色板鞋，买来没穿过', '119.00', '6', '1', '3', '1', '0', '4', 'image/eW5NE6CM1214947634751911.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('11', '2017-05-14 15:37:51', '篮球', '7', '买了打过几次，几乎全新', '128.00', '65', '1', '3', '1', '0', '4', 'image/eW5NE6CM1214947634751912.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('12', '2017-05-14 15:38:19', '羽毛球拍', '7', '全新，喜欢的可以联系我', '78.00', '63', '1', '3', '1', '0', '4', 'image/eW5NE6CM1214947634751913.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('13', '2017-05-14 15:38:42', '网球拍', '7', '喜欢的可以加我微信1663486238', '100.00', '64', '1', '34', '1', '0', '4', 'image/eW5NE6CM1214947634751914.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('14', '2017-05-14 15:39:06', '键盘', '7', '买了新的，旧的不用了，完好', '66.00', '21', '1', '34', '1', '0', '4', 'image/eW5NE6CM1214947634751915.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('15', '2017-05-14 15:39:30', '鼠标', '5', '全新的，没用过', '100.00', '17', '1', '4', '1', '0', '4', 'image/eW5NE6CM1214947634751916.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('16', '2017-05-14 15:39:49', '牛仔裤', '5', '买来size不合适，喜欢的可以联系我', '88.00', '41', '1', '4', '1', '0', '4', 'image/eW5NE6CM1214947634751917.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('17', '2017-05-14 15:40:10', '书包', '8', '全新的，现在用不着了', '98.00', '57', '1', '4', '1', '0', '4', 'image/eW5NE6CM1214947634751918.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('18', '2017-05-14 15:40:37', '钢笔', '8', '好友送的，我用不着', '188.00', '91', '1', '4', '1', '0', '4', 'image/eW5NE6CM1214947634751919.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES ('19', '2017-05-14 15:41:02', '连衣裙', '8', '买来很少穿，喜欢的可以出手', '186.00', '38', '1', '4', '1', '0', '4', 'image/eW5NE6CM1214947634751920.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');

-- ----------------------------
-- Table structure for shoppicture
-- ----------------------------
DROP TABLE IF EXISTS `shoppicture`;
CREATE TABLE `shoppicture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime DEFAULT NULL,
  `sid` int(11) NOT NULL,
  `picture` varchar(200) NOT NULL,
  `display` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoppicture
-- ----------------------------
INSERT INTO `shoppicture` VALUES ('1', null, '1', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('2', null, '2', '/image/01.jpg', '1');
INSERT INTO `shoppicture` VALUES ('3', null, '3', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('4', null, '4', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('5', null, '5', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('6', null, '6', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('7', null, '7', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('8', null, '8', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('9', null, '9', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('10', null, '10', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('11', null, '11', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('12', null, '12', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('13', null, '13', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('14', null, '14', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('15', null, '15', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('16', null, '16', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('17', null, '17', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('18', null, '18', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('19', null, '19', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('20', null, '20', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('21', null, '21', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('22', null, '22', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('23', null, '23', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('24', null, '24', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('25', null, '25', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('26', null, '26', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('27', null, '27', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('28', null, '28', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('29', null, '29', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('30', null, '30', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('31', null, '31', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('32', null, '32', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('33', null, '33', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('34', null, '34', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('35', null, '35', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('36', null, '36', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('37', null, '37', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('38', null, '38', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('39', null, '39', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('40', null, '40', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('41', null, '41', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('42', null, '42', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('43', null, '43', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('44', null, '44', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('45', null, '45', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('46', null, '46', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('47', null, '47', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('48', null, '48', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('49', null, '49', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('50', null, '50', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('51', null, '51', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('52', null, '52', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('53', null, '53', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('54', null, '54', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('55', null, '55', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('56', null, '56', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('57', null, '57', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('58', null, '58', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('59', null, '59', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('60', null, '60', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('61', null, '61', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('62', null, '62', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('63', null, '63', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('64', null, '64', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('65', null, '65', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('66', null, '66', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('67', null, '67', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('68', null, '68', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('69', null, '69', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('70', null, '70', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('71', null, '71', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('72', null, '72', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('73', null, '73', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('74', null, '74', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('75', null, '75', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('76', null, '76', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('77', null, '77', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('78', null, '78', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('79', null, '79', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('80', null, '80', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('81', null, '81', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('82', null, '82', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('83', null, '83', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('84', null, '84', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('85', '2017-05-14 20:04:48', '87', 'image/eW5NE6CM121494763475193.jpg', '1');
INSERT INTO `shoppicture` VALUES ('86', '2017-05-14 20:07:50', '88', 'image/02.jpg', '1');
INSERT INTO `shoppicture` VALUES ('87', '2017-05-14 20:14:14', '89', 'imagehtEZLneu1d1494764039225.jpg', '1');
INSERT INTO `shoppicture` VALUES ('88', '2017-05-14 20:15:30', '90', 'imageOAkysrUmZs1494764129394.jpg', '1');

-- ----------------------------
-- Table structure for specifickinds
-- ----------------------------
DROP TABLE IF EXISTS `specifickinds`;
CREATE TABLE `specifickinds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `modified` datetime DEFAULT NULL,
  `cid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of specifickinds
-- ----------------------------
INSERT INTO `specifickinds` VALUES ('1', '苹果', null, '1');
INSERT INTO `specifickinds` VALUES ('2', '三星', null, '1');
INSERT INTO `specifickinds` VALUES ('3', '小米', null, '1');
INSERT INTO `specifickinds` VALUES ('4', '华为', null, '1');
INSERT INTO `specifickinds` VALUES ('5', '中兴', null, '1');
INSERT INTO `specifickinds` VALUES ('6', '联想', null, '1');
INSERT INTO `specifickinds` VALUES ('7', '魅族', null, '1');
INSERT INTO `specifickinds` VALUES ('8', '其他', null, '1');
INSERT INTO `specifickinds` VALUES ('9', '耳机', null, '1');
INSERT INTO `specifickinds` VALUES ('10', '普通相机', null, '2');
INSERT INTO `specifickinds` VALUES ('11', '单反', null, '2');
INSERT INTO `specifickinds` VALUES ('12', '其他', null, '2');
INSERT INTO `specifickinds` VALUES ('13', '笔记本', null, '3');
INSERT INTO `specifickinds` VALUES ('14', '平板电脑', null, '3');
INSERT INTO `specifickinds` VALUES ('15', '台式机', null, '3');
INSERT INTO `specifickinds` VALUES ('16', '显示器', null, '3');
INSERT INTO `specifickinds` VALUES ('17', '鼠标', null, '3');
INSERT INTO `specifickinds` VALUES ('18', '硬盘', null, '3');
INSERT INTO `specifickinds` VALUES ('19', 'U盘', null, '3');
INSERT INTO `specifickinds` VALUES ('20', '移动硬盘', null, '3');
INSERT INTO `specifickinds` VALUES ('21', '其他', null, '3');
INSERT INTO `specifickinds` VALUES ('22', '洗衣机', null, '4');
INSERT INTO `specifickinds` VALUES ('23', '饮水机', null, '4');
INSERT INTO `specifickinds` VALUES ('24', '吹风机', null, '4');
INSERT INTO `specifickinds` VALUES ('25', '剃须刀', null, '4');
INSERT INTO `specifickinds` VALUES ('26', '风扇', null, '4');
INSERT INTO `specifickinds` VALUES ('27', '煮蛋器', null, '4');
INSERT INTO `specifickinds` VALUES ('28', '电磁炉', null, '4');
INSERT INTO `specifickinds` VALUES ('29', '电饭煲', null, '4');
INSERT INTO `specifickinds` VALUES ('30', '其他', null, '4');
INSERT INTO `specifickinds` VALUES ('31', '耳机', null, '5');
INSERT INTO `specifickinds` VALUES ('32', '音响', null, '5');
INSERT INTO `specifickinds` VALUES ('33', '功放', null, '5');
INSERT INTO `specifickinds` VALUES ('34', '低音炮', null, '5');
INSERT INTO `specifickinds` VALUES ('35', '麦克风', null, '5');
INSERT INTO `specifickinds` VALUES ('36', '上衣', null, '6');
INSERT INTO `specifickinds` VALUES ('37', '裤子', null, '6');
INSERT INTO `specifickinds` VALUES ('38', '裙子', null, '6');
INSERT INTO `specifickinds` VALUES ('39', '其他', null, '6');
INSERT INTO `specifickinds` VALUES ('40', '上衣', null, '7');
INSERT INTO `specifickinds` VALUES ('41', '裤子', null, '7');
INSERT INTO `specifickinds` VALUES ('42', '其他', null, '7');
INSERT INTO `specifickinds` VALUES ('43', '运动鞋', null, '8');
INSERT INTO `specifickinds` VALUES ('44', '皮鞋', null, '8');
INSERT INTO `specifickinds` VALUES ('45', '帆布鞋', null, '8');
INSERT INTO `specifickinds` VALUES ('46', '球鞋', null, '8');
INSERT INTO `specifickinds` VALUES ('47', '板鞋', null, '8');
INSERT INTO `specifickinds` VALUES ('48', '其他', null, '8');
INSERT INTO `specifickinds` VALUES ('49', '运动鞋', null, '9');
INSERT INTO `specifickinds` VALUES ('50', '皮鞋', '2017-05-10 21:53:20', '9');
INSERT INTO `specifickinds` VALUES ('51', '帆布鞋', '2017-05-10 21:53:23', '9');
INSERT INTO `specifickinds` VALUES ('52', '球鞋', '2017-05-10 21:53:26', '9');
INSERT INTO `specifickinds` VALUES ('53', '板鞋', '2017-05-10 21:53:28', '9');
INSERT INTO `specifickinds` VALUES ('54', '其他', '2017-05-10 21:53:30', '9');
INSERT INTO `specifickinds` VALUES ('55', '背包', null, '10');
INSERT INTO `specifickinds` VALUES ('56', '旅行箱', null, '10');
INSERT INTO `specifickinds` VALUES ('57', '其他', null, '10');
INSERT INTO `specifickinds` VALUES ('58', '机械表', null, '11');
INSERT INTO `specifickinds` VALUES ('59', '石英表', null, '11');
INSERT INTO `specifickinds` VALUES ('60', '电子表', null, '11');
INSERT INTO `specifickinds` VALUES ('61', '其他', null, '11');
INSERT INTO `specifickinds` VALUES ('62', '足球', null, '12');
INSERT INTO `specifickinds` VALUES ('63', '羽毛球拍', null, '12');
INSERT INTO `specifickinds` VALUES ('64', '网球拍', null, '12');
INSERT INTO `specifickinds` VALUES ('65', '篮球', null, '12');
INSERT INTO `specifickinds` VALUES ('66', '滑轮', null, '12');
INSERT INTO `specifickinds` VALUES ('67', '乒乓球拍', null, '12');
INSERT INTO `specifickinds` VALUES ('68', '滑板', null, '12');
INSERT INTO `specifickinds` VALUES ('69', '其他', null, '12');
INSERT INTO `specifickinds` VALUES ('70', '自行车', null, '13');
INSERT INTO `specifickinds` VALUES ('71', '电动车', null, '13');
INSERT INTO `specifickinds` VALUES ('72', '其他', null, '13');
INSERT INTO `specifickinds` VALUES ('73', '文学', null, '14');
INSERT INTO `specifickinds` VALUES ('74', '漫画', null, '14');
INSERT INTO `specifickinds` VALUES ('75', '小说', null, '14');
INSERT INTO `specifickinds` VALUES ('76', '其他', null, '14');
INSERT INTO `specifickinds` VALUES ('77', '生物', null, '15');
INSERT INTO `specifickinds` VALUES ('78', '化学', null, '15');
INSERT INTO `specifickinds` VALUES ('79', '物理', null, '15');
INSERT INTO `specifickinds` VALUES ('80', '语文', null, '15');
INSERT INTO `specifickinds` VALUES ('81', '外语', null, '15');
INSERT INTO `specifickinds` VALUES ('82', '数学', null, '15');
INSERT INTO `specifickinds` VALUES ('83', '政治', null, '15');
INSERT INTO `specifickinds` VALUES ('84', '历史', null, '15');
INSERT INTO `specifickinds` VALUES ('85', '地理', null, '15');
INSERT INTO `specifickinds` VALUES ('86', '计算机', null, '15');
INSERT INTO `specifickinds` VALUES ('87', '机械', null, '15');
INSERT INTO `specifickinds` VALUES ('88', '土木', null, '15');
INSERT INTO `specifickinds` VALUES ('89', '艺术', null, '15');
INSERT INTO `specifickinds` VALUES ('90', '其他', null, '15');
INSERT INTO `specifickinds` VALUES ('91', '笔', null, '16');
INSERT INTO `specifickinds` VALUES ('92', '其他', null, '16');
INSERT INTO `specifickinds` VALUES ('93', '其他', null, '5');
INSERT INTO `specifickinds` VALUES ('94', '其他', null, '17');

-- ----------------------------
-- Table structure for usercollection
-- ----------------------------
DROP TABLE IF EXISTS `usercollection`;
CREATE TABLE `usercollection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `display` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usercollection
-- ----------------------------

-- ----------------------------
-- Table structure for userinformation
-- ----------------------------
DROP TABLE IF EXISTS `userinformation`;
CREATE TABLE `userinformation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `phone` char(11) NOT NULL,
  `realname` varchar(50) DEFAULT NULL,
  `clazz` varchar(50) DEFAULT NULL,
  `sno` char(12) DEFAULT NULL,
  `dormitory` varchar(50) DEFAULT NULL,
  `gender` char(2) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_id` (`id`) USING BTREE,
  KEY `selectByPhone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinformation
-- ----------------------------
INSERT INTO `userinformation` VALUES ('1', '2017-05-14 13:56:04', 'wsk', '18832028970', null, null, null, null, null, '2017-05-14 13:56:04', null);
INSERT INTO `userinformation` VALUES ('2', '2017-05-14 14:00:13', '111', '1234', null, null, null, null, null, '2017-05-14 14:00:14', null);
INSERT INTO `userinformation` VALUES ('3', '2017-05-14 14:55:28', '111', '122', null, null, null, null, null, '2017-05-14 14:55:28', null);
INSERT INTO `userinformation` VALUES ('4', '2017-05-14 15:00:11', '爱我的人1', '124', null, null, null, null, null, '2017-05-14 15:00:11', null);
INSERT INTO `userinformation` VALUES ('5', '2017-05-14 15:00:45', '爱我的人2', '125', null, null, null, null, null, '2017-05-14 15:00:45', null);
INSERT INTO `userinformation` VALUES ('6', '2017-05-14 15:01:13', '爱我的人3', '126', null, null, null, null, null, '2017-05-14 15:01:13', null);
INSERT INTO `userinformation` VALUES ('7', '2017-05-19 14:43:01', 'wsk1103', '127', '吴树楷', '信计142', '3', '9407', '男', '2017-05-20 15:14:14', '');
INSERT INTO `userinformation` VALUES ('8', '2017-05-20 22:31:08', 'wsk1103', '128', null, null, null, null, null, '2017-05-20 22:31:03', null);
INSERT INTO `userinformation` VALUES ('9', '2018-09-09 15:34:18', 'test', '129', null, null, null, null, null, '2018-09-09 15:34:17', null);

-- ----------------------------
-- Table structure for userpassword
-- ----------------------------
DROP TABLE IF EXISTS `userpassword`;
CREATE TABLE `userpassword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime DEFAULT NULL,
  `password` varchar(24) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userpassword
-- ----------------------------
INSERT INTO `userpassword` VALUES ('1', '2017-05-14 13:56:05', 'qq12345', '1');
INSERT INTO `userpassword` VALUES ('2', '2017-05-20 22:00:49', 'xMpCOKC5I4INzFCab3WEmw==', '2');
INSERT INTO `userpassword` VALUES ('3', '2017-05-14 14:55:29', 'xEvruXPhT+U5Z24OkVWxIQ==', '3');
INSERT INTO `userpassword` VALUES ('4', '2017-05-14 15:00:11', 'xEvruXPhT+U5Z24OkVWxIQ==', '4');
INSERT INTO `userpassword` VALUES ('5', '2017-05-14 15:00:45', 'xEvruXPhT+U5Z24OkVWxIQ==', '5');
INSERT INTO `userpassword` VALUES ('6', '2017-05-14 15:01:13', 'QXS66gM33hU5x/b2PrUHRA==', '6');
INSERT INTO `userpassword` VALUES ('7', '2017-05-26 13:33:49', 'QXS66gM33hU5x/b2PrUHRA==', '7');
INSERT INTO `userpassword` VALUES ('8', '2017-05-20 22:31:17', 'xMpCOKC5I4INzFCab3WEmw==', '8');
INSERT INTO `userpassword` VALUES ('9', '2018-09-09 15:34:23', 'wgrU12/pd1mqJ6DJm/9nEA==', '9');

-- ----------------------------
-- Table structure for userrelease
-- ----------------------------
DROP TABLE IF EXISTS `userrelease`;
CREATE TABLE `userrelease` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime DEFAULT NULL,
  `display` int(11) NOT NULL DEFAULT '1',
  `uid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1006 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userrelease
-- ----------------------------
INSERT INTO `userrelease` VALUES ('1', '2017-05-20 15:55:37', '1', '7', '91');
INSERT INTO `userrelease` VALUES ('2', '2017-05-20 19:07:34', '1', '7', '92');
INSERT INTO `userrelease` VALUES ('3', '2017-05-25 16:08:37', '1', '61', '95');
INSERT INTO `userrelease` VALUES ('4', '2017-05-25 16:08:40', '1', '50', '96');
INSERT INTO `userrelease` VALUES ('5', '2017-05-25 16:08:40', '1', '18', '97');
INSERT INTO `userrelease` VALUES ('6', '2017-05-25 16:08:40', '1', '29', '98');
INSERT INTO `userrelease` VALUES ('7', '2017-05-25 16:08:40', '1', '38', '99');
INSERT INTO `userrelease` VALUES ('8', '2017-05-25 16:08:40', '1', '44', '100');
INSERT INTO `userrelease` VALUES ('9', '2017-05-25 16:08:40', '1', '14', '101');
INSERT INTO `userrelease` VALUES ('10', '2017-05-25 16:08:40', '1', '52', '102');
INSERT INTO `userrelease` VALUES ('11', '2017-05-25 16:08:40', '1', '37', '103');
INSERT INTO `userrelease` VALUES ('12', '2017-05-25 16:08:40', '1', '43', '104');
INSERT INTO `userrelease` VALUES ('13', '2017-05-25 16:08:40', '1', '52', '105');
INSERT INTO `userrelease` VALUES ('14', '2017-05-25 16:08:40', '1', '61', '106');
INSERT INTO `userrelease` VALUES ('15', '2017-05-25 16:08:40', '1', '31', '107');
INSERT INTO `userrelease` VALUES ('16', '2017-05-25 16:08:40', '1', '51', '108');
INSERT INTO `userrelease` VALUES ('17', '2017-05-25 16:08:40', '1', '63', '109');
INSERT INTO `userrelease` VALUES ('18', '2017-05-25 16:08:41', '1', '29', '110');
INSERT INTO `userrelease` VALUES ('19', '2017-05-25 16:08:41', '1', '37', '111');
INSERT INTO `userrelease` VALUES ('20', '2017-05-25 16:08:41', '1', '16', '112');
INSERT INTO `userrelease` VALUES ('21', '2017-05-25 16:08:41', '1', '38', '113');
INSERT INTO `userrelease` VALUES ('22', '2017-05-25 16:08:41', '1', '65', '114');
INSERT INTO `userrelease` VALUES ('23', '2017-05-25 16:08:41', '1', '15', '115');
INSERT INTO `userrelease` VALUES ('24', '2017-05-25 16:08:41', '1', '61', '116');
INSERT INTO `userrelease` VALUES ('25', '2017-05-25 16:08:41', '1', '54', '117');
INSERT INTO `userrelease` VALUES ('26', '2017-05-25 16:08:41', '1', '73', '118');
INSERT INTO `userrelease` VALUES ('27', '2017-05-25 16:08:41', '1', '74', '119');
INSERT INTO `userrelease` VALUES ('28', '2017-05-25 16:08:41', '1', '46', '120');
INSERT INTO `userrelease` VALUES ('29', '2017-05-25 16:08:41', '1', '98', '121');
INSERT INTO `userrelease` VALUES ('30', '2017-05-25 16:08:41', '1', '50', '122');
INSERT INTO `userrelease` VALUES ('31', '2017-05-25 16:08:41', '1', '92', '123');
INSERT INTO `userrelease` VALUES ('32', '2017-05-25 16:08:41', '1', '60', '124');
INSERT INTO `userrelease` VALUES ('33', '2017-05-25 16:08:41', '1', '21', '125');
INSERT INTO `userrelease` VALUES ('34', '2017-05-25 16:08:41', '1', '79', '126');
INSERT INTO `userrelease` VALUES ('35', '2017-05-25 16:08:41', '1', '71', '127');
INSERT INTO `userrelease` VALUES ('36', '2017-05-25 16:08:41', '1', '90', '128');
INSERT INTO `userrelease` VALUES ('37', '2017-05-25 16:08:41', '1', '64', '129');
INSERT INTO `userrelease` VALUES ('38', '2017-05-25 16:08:41', '1', '89', '130');
INSERT INTO `userrelease` VALUES ('39', '2017-05-25 16:08:41', '1', '55', '131');
INSERT INTO `userrelease` VALUES ('40', '2017-05-25 16:08:41', '1', '29', '132');
INSERT INTO `userrelease` VALUES ('41', '2017-05-25 16:08:41', '1', '34', '133');
INSERT INTO `userrelease` VALUES ('42', '2017-05-25 16:08:41', '1', '92', '134');
INSERT INTO `userrelease` VALUES ('43', '2017-05-25 16:08:41', '1', '32', '135');
INSERT INTO `userrelease` VALUES ('44', '2017-05-25 16:08:41', '1', '89', '136');
INSERT INTO `userrelease` VALUES ('45', '2017-05-25 16:08:41', '1', '65', '137');
INSERT INTO `userrelease` VALUES ('46', '2017-05-25 16:08:41', '1', '91', '138');
INSERT INTO `userrelease` VALUES ('47', '2017-05-25 16:08:41', '1', '40', '139');
INSERT INTO `userrelease` VALUES ('48', '2017-05-25 16:08:41', '1', '55', '140');
INSERT INTO `userrelease` VALUES ('49', '2017-05-25 16:08:41', '1', '6', '141');
INSERT INTO `userrelease` VALUES ('50', '2017-05-25 16:08:41', '1', '88', '142');
INSERT INTO `userrelease` VALUES ('51', '2017-05-25 16:08:41', '1', '45', '143');
INSERT INTO `userrelease` VALUES ('52', '2017-05-25 16:08:41', '1', '11', '144');
INSERT INTO `userrelease` VALUES ('53', '2017-05-25 16:08:41', '1', '32', '145');
INSERT INTO `userrelease` VALUES ('54', '2017-05-25 16:08:41', '1', '61', '146');
INSERT INTO `userrelease` VALUES ('55', '2017-05-25 16:08:41', '1', '44', '147');
INSERT INTO `userrelease` VALUES ('56', '2017-05-25 16:08:41', '1', '86', '148');
INSERT INTO `userrelease` VALUES ('57', '2017-05-25 16:08:41', '1', '30', '149');
INSERT INTO `userrelease` VALUES ('58', '2017-05-25 16:08:41', '1', '84', '150');
INSERT INTO `userrelease` VALUES ('59', '2017-05-25 16:08:41', '1', '90', '151');
INSERT INTO `userrelease` VALUES ('60', '2017-05-25 16:08:41', '1', '73', '152');
INSERT INTO `userrelease` VALUES ('61', '2017-05-25 16:08:41', '1', '16', '153');
INSERT INTO `userrelease` VALUES ('62', '2017-05-25 16:08:41', '1', '61', '154');
INSERT INTO `userrelease` VALUES ('63', '2017-05-25 16:08:41', '1', '21', '155');
INSERT INTO `userrelease` VALUES ('64', '2017-05-25 16:08:41', '1', '92', '156');
INSERT INTO `userrelease` VALUES ('65', '2017-05-25 16:08:41', '1', '44', '157');
INSERT INTO `userrelease` VALUES ('66', '2017-05-25 16:08:41', '1', '11', '158');
INSERT INTO `userrelease` VALUES ('67', '2017-05-25 16:08:41', '1', '76', '159');
INSERT INTO `userrelease` VALUES ('68', '2017-05-25 16:08:41', '1', '31', '160');
INSERT INTO `userrelease` VALUES ('69', '2017-05-25 16:08:41', '1', '18', '161');
INSERT INTO `userrelease` VALUES ('70', '2017-05-25 16:08:41', '1', '9', '162');
INSERT INTO `userrelease` VALUES ('71', '2017-05-25 16:08:41', '1', '42', '163');
INSERT INTO `userrelease` VALUES ('72', '2017-05-25 16:08:41', '1', '92', '164');
INSERT INTO `userrelease` VALUES ('73', '2017-05-25 16:08:41', '1', '5', '165');
INSERT INTO `userrelease` VALUES ('74', '2017-05-25 16:08:41', '1', '57', '166');
INSERT INTO `userrelease` VALUES ('75', '2017-05-25 16:08:41', '1', '81', '167');
INSERT INTO `userrelease` VALUES ('76', '2017-05-25 16:08:41', '1', '39', '168');
INSERT INTO `userrelease` VALUES ('77', '2017-05-25 16:08:41', '1', '57', '169');
INSERT INTO `userrelease` VALUES ('78', '2017-05-25 16:08:41', '1', '16', '170');
INSERT INTO `userrelease` VALUES ('79', '2017-05-25 16:08:41', '1', '95', '171');
INSERT INTO `userrelease` VALUES ('80', '2017-05-25 16:08:41', '1', '95', '172');
INSERT INTO `userrelease` VALUES ('81', '2017-05-25 16:08:41', '1', '68', '173');
INSERT INTO `userrelease` VALUES ('82', '2017-05-25 16:08:41', '1', '56', '174');
INSERT INTO `userrelease` VALUES ('83', '2017-05-25 16:08:41', '1', '82', '175');
INSERT INTO `userrelease` VALUES ('84', '2017-05-25 16:08:41', '1', '44', '176');
INSERT INTO `userrelease` VALUES ('85', '2017-05-25 16:08:41', '1', '81', '177');
INSERT INTO `userrelease` VALUES ('86', '2017-05-25 16:08:41', '1', '32', '178');
INSERT INTO `userrelease` VALUES ('87', '2017-05-25 16:08:41', '1', '90', '179');
INSERT INTO `userrelease` VALUES ('88', '2017-05-25 16:08:41', '1', '22', '180');
INSERT INTO `userrelease` VALUES ('89', '2017-05-25 16:08:41', '1', '84', '181');
INSERT INTO `userrelease` VALUES ('90', '2017-05-25 16:08:41', '1', '71', '182');
INSERT INTO `userrelease` VALUES ('91', '2017-05-25 16:08:41', '1', '36', '183');
INSERT INTO `userrelease` VALUES ('92', '2017-05-25 16:08:41', '1', '80', '184');
INSERT INTO `userrelease` VALUES ('93', '2017-05-25 16:08:41', '1', '86', '185');
INSERT INTO `userrelease` VALUES ('94', '2017-05-25 16:08:41', '1', '35', '186');
INSERT INTO `userrelease` VALUES ('95', '2017-05-25 16:08:41', '1', '13', '187');
INSERT INTO `userrelease` VALUES ('96', '2017-05-25 16:08:41', '1', '4', '188');
INSERT INTO `userrelease` VALUES ('97', '2017-05-25 16:08:41', '1', '68', '189');
INSERT INTO `userrelease` VALUES ('98', '2017-05-25 16:08:41', '1', '30', '190');
INSERT INTO `userrelease` VALUES ('99', '2017-05-25 16:08:41', '1', '80', '191');
INSERT INTO `userrelease` VALUES ('100', '2017-05-25 16:08:41', '1', '16', '192');
INSERT INTO `userrelease` VALUES ('101', '2017-05-25 16:08:41', '1', '52', '193');
INSERT INTO `userrelease` VALUES ('102', '2017-05-25 16:08:41', '1', '53', '194');
INSERT INTO `userrelease` VALUES ('103', '2017-05-25 16:08:41', '1', '61', '195');
INSERT INTO `userrelease` VALUES ('104', '2017-05-25 16:08:41', '1', '85', '196');
INSERT INTO `userrelease` VALUES ('105', '2017-05-25 16:08:41', '1', '89', '197');
INSERT INTO `userrelease` VALUES ('106', '2017-05-25 16:08:41', '1', '21', '198');
INSERT INTO `userrelease` VALUES ('107', '2017-05-25 16:08:41', '1', '57', '199');
INSERT INTO `userrelease` VALUES ('108', '2017-05-25 16:08:41', '1', '4', '200');
INSERT INTO `userrelease` VALUES ('109', '2017-05-25 16:08:41', '1', '37', '201');
INSERT INTO `userrelease` VALUES ('110', '2017-05-25 16:08:41', '1', '36', '202');
INSERT INTO `userrelease` VALUES ('111', '2017-05-25 16:08:41', '1', '47', '203');
INSERT INTO `userrelease` VALUES ('112', '2017-05-25 16:08:41', '1', '89', '204');
INSERT INTO `userrelease` VALUES ('113', '2017-05-25 16:08:41', '1', '96', '205');
INSERT INTO `userrelease` VALUES ('114', '2017-05-25 16:08:41', '1', '17', '206');
INSERT INTO `userrelease` VALUES ('115', '2017-05-25 16:08:41', '1', '57', '207');
INSERT INTO `userrelease` VALUES ('116', '2017-05-25 16:08:41', '1', '4', '208');
INSERT INTO `userrelease` VALUES ('117', '2017-05-25 16:08:41', '1', '100', '209');
INSERT INTO `userrelease` VALUES ('118', '2017-05-25 16:08:41', '1', '97', '210');
INSERT INTO `userrelease` VALUES ('119', '2017-05-25 16:08:41', '1', '56', '211');
INSERT INTO `userrelease` VALUES ('120', '2017-05-25 16:08:41', '1', '55', '212');
INSERT INTO `userrelease` VALUES ('121', '2017-05-25 16:08:41', '1', '51', '213');
INSERT INTO `userrelease` VALUES ('122', '2017-05-25 16:08:41', '1', '29', '214');
INSERT INTO `userrelease` VALUES ('123', '2017-05-25 16:08:41', '1', '61', '215');
INSERT INTO `userrelease` VALUES ('124', '2017-05-25 16:08:41', '1', '78', '216');
INSERT INTO `userrelease` VALUES ('125', '2017-05-25 16:08:41', '1', '26', '217');
INSERT INTO `userrelease` VALUES ('126', '2017-05-25 16:08:41', '1', '77', '218');
INSERT INTO `userrelease` VALUES ('127', '2017-05-25 16:08:41', '1', '89', '219');
INSERT INTO `userrelease` VALUES ('128', '2017-05-25 16:08:41', '1', '91', '220');
INSERT INTO `userrelease` VALUES ('129', '2017-05-25 16:08:41', '1', '80', '221');
INSERT INTO `userrelease` VALUES ('130', '2017-05-25 16:08:41', '1', '31', '222');
INSERT INTO `userrelease` VALUES ('131', '2017-05-25 16:08:41', '1', '8', '223');
INSERT INTO `userrelease` VALUES ('132', '2017-05-25 16:08:41', '1', '41', '224');
INSERT INTO `userrelease` VALUES ('133', '2017-05-25 16:08:41', '1', '51', '225');
INSERT INTO `userrelease` VALUES ('134', '2017-05-25 16:08:41', '1', '74', '226');
INSERT INTO `userrelease` VALUES ('135', '2017-05-25 16:08:41', '1', '39', '227');
INSERT INTO `userrelease` VALUES ('136', '2017-05-25 16:08:41', '1', '80', '228');
INSERT INTO `userrelease` VALUES ('137', '2017-05-25 16:08:41', '1', '59', '229');
INSERT INTO `userrelease` VALUES ('138', '2017-05-25 16:08:41', '1', '90', '230');
INSERT INTO `userrelease` VALUES ('139', '2017-05-25 16:08:42', '1', '47', '231');
INSERT INTO `userrelease` VALUES ('140', '2017-05-25 16:08:42', '1', '64', '232');
INSERT INTO `userrelease` VALUES ('141', '2017-05-25 16:08:42', '1', '24', '233');
INSERT INTO `userrelease` VALUES ('142', '2017-05-25 16:08:42', '1', '19', '234');
INSERT INTO `userrelease` VALUES ('143', '2017-05-25 16:08:42', '1', '42', '235');
INSERT INTO `userrelease` VALUES ('144', '2017-05-25 16:08:42', '1', '87', '236');
INSERT INTO `userrelease` VALUES ('145', '2017-05-25 16:08:42', '1', '51', '237');
INSERT INTO `userrelease` VALUES ('146', '2017-05-25 16:08:42', '1', '74', '238');
INSERT INTO `userrelease` VALUES ('147', '2017-05-25 16:08:42', '1', '53', '239');
INSERT INTO `userrelease` VALUES ('148', '2017-05-25 16:08:42', '1', '90', '240');
INSERT INTO `userrelease` VALUES ('149', '2017-05-25 16:08:42', '1', '93', '241');
INSERT INTO `userrelease` VALUES ('150', '2017-05-25 16:08:42', '1', '68', '242');
INSERT INTO `userrelease` VALUES ('151', '2017-05-25 16:08:42', '1', '68', '243');
INSERT INTO `userrelease` VALUES ('152', '2017-05-25 16:08:42', '1', '32', '244');
INSERT INTO `userrelease` VALUES ('153', '2017-05-25 16:08:42', '1', '60', '245');
INSERT INTO `userrelease` VALUES ('154', '2017-05-25 16:08:42', '1', '91', '246');
INSERT INTO `userrelease` VALUES ('155', '2017-05-25 16:08:42', '1', '11', '247');
INSERT INTO `userrelease` VALUES ('156', '2017-05-25 16:08:42', '1', '61', '248');
INSERT INTO `userrelease` VALUES ('157', '2017-05-25 16:08:42', '1', '35', '249');
INSERT INTO `userrelease` VALUES ('158', '2017-05-25 16:08:42', '1', '41', '250');
INSERT INTO `userrelease` VALUES ('159', '2017-05-25 16:08:42', '1', '17', '251');
INSERT INTO `userrelease` VALUES ('160', '2017-05-25 16:08:42', '1', '8', '252');
INSERT INTO `userrelease` VALUES ('161', '2017-05-25 16:08:42', '1', '97', '253');
INSERT INTO `userrelease` VALUES ('162', '2017-05-25 16:08:42', '1', '39', '254');
INSERT INTO `userrelease` VALUES ('163', '2017-05-25 16:08:42', '1', '47', '255');
INSERT INTO `userrelease` VALUES ('164', '2017-05-25 16:08:42', '1', '79', '256');
INSERT INTO `userrelease` VALUES ('165', '2017-05-25 16:08:42', '1', '93', '257');
INSERT INTO `userrelease` VALUES ('166', '2017-05-25 16:08:42', '1', '15', '258');
INSERT INTO `userrelease` VALUES ('167', '2017-05-25 16:08:42', '1', '3', '259');
INSERT INTO `userrelease` VALUES ('168', '2017-05-25 16:08:42', '1', '94', '260');
INSERT INTO `userrelease` VALUES ('169', '2017-05-25 16:08:42', '1', '62', '261');
INSERT INTO `userrelease` VALUES ('170', '2017-05-25 16:08:42', '1', '96', '262');
INSERT INTO `userrelease` VALUES ('171', '2017-05-25 16:08:42', '1', '16', '263');
INSERT INTO `userrelease` VALUES ('172', '2017-05-25 16:08:42', '1', '20', '264');
INSERT INTO `userrelease` VALUES ('173', '2017-05-25 16:08:42', '1', '78', '265');
INSERT INTO `userrelease` VALUES ('174', '2017-05-25 16:08:42', '1', '22', '266');
INSERT INTO `userrelease` VALUES ('175', '2017-05-25 16:08:42', '1', '59', '267');
INSERT INTO `userrelease` VALUES ('176', '2017-05-25 16:08:42', '1', '87', '268');
INSERT INTO `userrelease` VALUES ('177', '2017-05-25 16:08:42', '1', '49', '269');
INSERT INTO `userrelease` VALUES ('178', '2017-05-25 16:08:42', '1', '12', '270');
INSERT INTO `userrelease` VALUES ('179', '2017-05-25 16:08:42', '1', '18', '271');
INSERT INTO `userrelease` VALUES ('180', '2017-05-25 16:08:42', '1', '55', '272');
INSERT INTO `userrelease` VALUES ('181', '2017-05-25 16:08:42', '1', '24', '273');
INSERT INTO `userrelease` VALUES ('182', '2017-05-25 16:08:42', '1', '42', '274');
INSERT INTO `userrelease` VALUES ('183', '2017-05-25 16:08:42', '1', '76', '275');
INSERT INTO `userrelease` VALUES ('184', '2017-05-25 16:08:42', '1', '48', '276');
INSERT INTO `userrelease` VALUES ('185', '2017-05-25 16:08:42', '1', '23', '277');
INSERT INTO `userrelease` VALUES ('186', '2017-05-25 16:08:42', '1', '42', '278');
INSERT INTO `userrelease` VALUES ('187', '2017-05-25 16:08:42', '1', '1', '279');
INSERT INTO `userrelease` VALUES ('188', '2017-05-25 16:08:42', '1', '29', '280');
INSERT INTO `userrelease` VALUES ('189', '2017-05-25 16:08:42', '1', '60', '281');
INSERT INTO `userrelease` VALUES ('190', '2017-05-25 16:08:42', '1', '2', '282');
INSERT INTO `userrelease` VALUES ('191', '2017-05-25 16:08:42', '1', '53', '283');
INSERT INTO `userrelease` VALUES ('192', '2017-05-25 16:08:42', '1', '85', '284');
INSERT INTO `userrelease` VALUES ('193', '2017-05-25 16:08:42', '1', '83', '285');
INSERT INTO `userrelease` VALUES ('194', '2017-05-25 16:08:42', '1', '10', '286');
INSERT INTO `userrelease` VALUES ('195', '2017-05-25 16:08:42', '1', '86', '287');
INSERT INTO `userrelease` VALUES ('196', '2017-05-25 16:08:42', '1', '98', '288');
INSERT INTO `userrelease` VALUES ('197', '2017-05-25 16:08:42', '1', '36', '289');
INSERT INTO `userrelease` VALUES ('198', '2017-05-25 16:08:42', '1', '32', '290');
INSERT INTO `userrelease` VALUES ('199', '2017-05-25 16:08:42', '1', '54', '291');
INSERT INTO `userrelease` VALUES ('200', '2017-05-25 16:08:42', '1', '9', '292');
INSERT INTO `userrelease` VALUES ('201', '2017-05-25 16:08:42', '1', '64', '293');
INSERT INTO `userrelease` VALUES ('202', '2017-05-25 16:08:42', '1', '49', '294');
INSERT INTO `userrelease` VALUES ('203', '2017-05-25 16:08:42', '1', '6', '295');
INSERT INTO `userrelease` VALUES ('204', '2017-05-25 16:08:42', '1', '76', '296');
INSERT INTO `userrelease` VALUES ('205', '2017-05-25 16:08:42', '1', '7', '297');
INSERT INTO `userrelease` VALUES ('206', '2017-05-25 16:08:42', '1', '8', '298');
INSERT INTO `userrelease` VALUES ('207', '2017-05-25 16:08:42', '1', '1', '299');
INSERT INTO `userrelease` VALUES ('208', '2017-05-25 16:08:42', '1', '32', '300');
INSERT INTO `userrelease` VALUES ('209', '2017-05-25 16:08:42', '1', '45', '301');
INSERT INTO `userrelease` VALUES ('210', '2017-05-25 16:08:42', '1', '79', '302');
INSERT INTO `userrelease` VALUES ('211', '2017-05-25 16:08:42', '1', '33', '303');
INSERT INTO `userrelease` VALUES ('212', '2017-05-25 16:08:42', '1', '18', '304');
INSERT INTO `userrelease` VALUES ('213', '2017-05-25 16:08:42', '1', '21', '305');
INSERT INTO `userrelease` VALUES ('214', '2017-05-25 16:08:42', '1', '14', '306');
INSERT INTO `userrelease` VALUES ('215', '2017-05-25 16:08:42', '1', '37', '307');
INSERT INTO `userrelease` VALUES ('216', '2017-05-25 16:08:42', '1', '37', '308');
INSERT INTO `userrelease` VALUES ('217', '2017-05-25 16:08:42', '1', '95', '309');
INSERT INTO `userrelease` VALUES ('218', '2017-05-25 16:08:42', '1', '40', '310');
INSERT INTO `userrelease` VALUES ('219', '2017-05-25 16:08:42', '1', '8', '311');
INSERT INTO `userrelease` VALUES ('220', '2017-05-25 16:08:42', '1', '39', '312');
INSERT INTO `userrelease` VALUES ('221', '2017-05-25 16:08:42', '1', '16', '313');
INSERT INTO `userrelease` VALUES ('222', '2017-05-25 16:08:42', '1', '28', '314');
INSERT INTO `userrelease` VALUES ('223', '2017-05-25 16:08:42', '1', '53', '315');
INSERT INTO `userrelease` VALUES ('224', '2017-05-25 16:08:42', '1', '17', '316');
INSERT INTO `userrelease` VALUES ('225', '2017-05-25 16:08:42', '1', '89', '317');
INSERT INTO `userrelease` VALUES ('226', '2017-05-25 16:08:42', '1', '92', '318');
INSERT INTO `userrelease` VALUES ('227', '2017-05-25 16:08:42', '1', '92', '319');
INSERT INTO `userrelease` VALUES ('228', '2017-05-25 16:08:42', '1', '81', '320');
INSERT INTO `userrelease` VALUES ('229', '2017-05-25 16:08:42', '1', '26', '321');
INSERT INTO `userrelease` VALUES ('230', '2017-05-25 16:08:42', '1', '57', '322');
INSERT INTO `userrelease` VALUES ('231', '2017-05-25 16:08:42', '1', '85', '323');
INSERT INTO `userrelease` VALUES ('232', '2017-05-25 16:08:42', '1', '6', '324');
INSERT INTO `userrelease` VALUES ('233', '2017-05-25 16:08:42', '1', '34', '325');
INSERT INTO `userrelease` VALUES ('234', '2017-05-25 16:08:42', '1', '63', '326');
INSERT INTO `userrelease` VALUES ('235', '2017-05-25 16:08:42', '1', '76', '327');
INSERT INTO `userrelease` VALUES ('236', '2017-05-25 16:08:42', '1', '31', '328');
INSERT INTO `userrelease` VALUES ('237', '2017-05-25 16:08:42', '1', '43', '329');
INSERT INTO `userrelease` VALUES ('238', '2017-05-25 16:08:42', '1', '30', '330');
INSERT INTO `userrelease` VALUES ('239', '2017-05-25 16:08:42', '1', '65', '331');
INSERT INTO `userrelease` VALUES ('240', '2017-05-25 16:08:42', '1', '13', '332');
INSERT INTO `userrelease` VALUES ('241', '2017-05-25 16:08:42', '1', '92', '333');
INSERT INTO `userrelease` VALUES ('242', '2017-05-25 16:08:42', '1', '19', '334');
INSERT INTO `userrelease` VALUES ('243', '2017-05-25 16:08:42', '1', '66', '335');
INSERT INTO `userrelease` VALUES ('244', '2017-05-25 16:08:42', '1', '8', '336');
INSERT INTO `userrelease` VALUES ('245', '2017-05-25 16:08:42', '1', '68', '337');
INSERT INTO `userrelease` VALUES ('246', '2017-05-25 16:08:42', '1', '64', '338');
INSERT INTO `userrelease` VALUES ('247', '2017-05-25 16:08:42', '1', '76', '339');
INSERT INTO `userrelease` VALUES ('248', '2017-05-25 16:08:42', '1', '98', '340');
INSERT INTO `userrelease` VALUES ('249', '2017-05-25 16:08:42', '1', '10', '341');
INSERT INTO `userrelease` VALUES ('250', '2017-05-25 16:08:42', '1', '89', '342');
INSERT INTO `userrelease` VALUES ('251', '2017-05-25 16:08:42', '1', '3', '343');
INSERT INTO `userrelease` VALUES ('252', '2017-05-25 16:08:42', '1', '62', '344');
INSERT INTO `userrelease` VALUES ('253', '2017-05-25 16:08:42', '1', '40', '345');
INSERT INTO `userrelease` VALUES ('254', '2017-05-25 16:08:42', '1', '43', '346');
INSERT INTO `userrelease` VALUES ('255', '2017-05-25 16:08:42', '1', '61', '347');
INSERT INTO `userrelease` VALUES ('256', '2017-05-25 16:08:42', '1', '51', '348');
INSERT INTO `userrelease` VALUES ('257', '2017-05-25 16:08:43', '1', '12', '349');
INSERT INTO `userrelease` VALUES ('258', '2017-05-25 16:08:43', '1', '20', '350');
INSERT INTO `userrelease` VALUES ('259', '2017-05-25 16:08:43', '1', '46', '351');
INSERT INTO `userrelease` VALUES ('260', '2017-05-25 16:08:43', '1', '29', '352');
INSERT INTO `userrelease` VALUES ('261', '2017-05-25 16:08:43', '1', '93', '353');
INSERT INTO `userrelease` VALUES ('262', '2017-05-25 16:08:43', '1', '83', '354');
INSERT INTO `userrelease` VALUES ('263', '2017-05-25 16:08:43', '1', '86', '355');
INSERT INTO `userrelease` VALUES ('264', '2017-05-25 16:08:43', '1', '90', '356');
INSERT INTO `userrelease` VALUES ('265', '2017-05-25 16:08:43', '1', '51', '357');
INSERT INTO `userrelease` VALUES ('266', '2017-05-25 16:08:43', '1', '27', '358');
INSERT INTO `userrelease` VALUES ('267', '2017-05-25 16:08:43', '1', '60', '359');
INSERT INTO `userrelease` VALUES ('268', '2017-05-25 16:08:43', '1', '42', '360');
INSERT INTO `userrelease` VALUES ('269', '2017-05-25 16:08:43', '1', '62', '361');
INSERT INTO `userrelease` VALUES ('270', '2017-05-25 16:08:43', '1', '2', '362');
INSERT INTO `userrelease` VALUES ('271', '2017-05-25 16:08:43', '1', '44', '363');
INSERT INTO `userrelease` VALUES ('272', '2017-05-25 16:08:43', '1', '20', '364');
INSERT INTO `userrelease` VALUES ('273', '2017-05-25 16:08:43', '1', '26', '365');
INSERT INTO `userrelease` VALUES ('274', '2017-05-25 16:08:43', '1', '83', '366');
INSERT INTO `userrelease` VALUES ('275', '2017-05-25 16:08:43', '1', '91', '367');
INSERT INTO `userrelease` VALUES ('276', '2017-05-25 16:08:43', '1', '1', '368');
INSERT INTO `userrelease` VALUES ('277', '2017-05-25 16:08:43', '1', '38', '369');
INSERT INTO `userrelease` VALUES ('278', '2017-05-25 16:08:43', '1', '100', '370');
INSERT INTO `userrelease` VALUES ('279', '2017-05-25 16:08:43', '1', '15', '371');
INSERT INTO `userrelease` VALUES ('280', '2017-05-25 16:08:43', '1', '67', '372');
INSERT INTO `userrelease` VALUES ('281', '2017-05-25 16:08:43', '1', '25', '373');
INSERT INTO `userrelease` VALUES ('282', '2017-05-25 16:08:43', '1', '31', '374');
INSERT INTO `userrelease` VALUES ('283', '2017-05-25 16:08:43', '1', '54', '375');
INSERT INTO `userrelease` VALUES ('284', '2017-05-25 16:08:43', '1', '47', '376');
INSERT INTO `userrelease` VALUES ('285', '2017-05-25 16:08:43', '1', '49', '377');
INSERT INTO `userrelease` VALUES ('286', '2017-05-25 16:08:43', '1', '24', '378');
INSERT INTO `userrelease` VALUES ('287', '2017-05-25 16:08:43', '1', '13', '379');
INSERT INTO `userrelease` VALUES ('288', '2017-05-25 16:08:43', '1', '65', '380');
INSERT INTO `userrelease` VALUES ('289', '2017-05-25 16:08:43', '1', '15', '381');
INSERT INTO `userrelease` VALUES ('290', '2017-05-25 16:08:43', '1', '84', '382');
INSERT INTO `userrelease` VALUES ('291', '2017-05-25 16:08:43', '1', '3', '383');
INSERT INTO `userrelease` VALUES ('292', '2017-05-25 16:08:43', '1', '33', '384');
INSERT INTO `userrelease` VALUES ('293', '2017-05-25 16:08:43', '1', '100', '385');
INSERT INTO `userrelease` VALUES ('294', '2017-05-25 16:08:43', '1', '85', '386');
INSERT INTO `userrelease` VALUES ('295', '2017-05-25 16:08:43', '1', '2', '387');
INSERT INTO `userrelease` VALUES ('296', '2017-05-25 16:08:43', '1', '39', '388');
INSERT INTO `userrelease` VALUES ('297', '2017-05-25 16:08:43', '1', '60', '389');
INSERT INTO `userrelease` VALUES ('298', '2017-05-25 16:08:43', '1', '81', '390');
INSERT INTO `userrelease` VALUES ('299', '2017-05-25 16:08:43', '1', '50', '391');
INSERT INTO `userrelease` VALUES ('300', '2017-05-25 16:08:43', '1', '80', '392');
INSERT INTO `userrelease` VALUES ('301', '2017-05-25 16:08:43', '1', '77', '393');
INSERT INTO `userrelease` VALUES ('302', '2017-05-25 16:08:43', '1', '18', '394');
INSERT INTO `userrelease` VALUES ('303', '2017-05-25 16:08:43', '1', '28', '395');
INSERT INTO `userrelease` VALUES ('304', '2017-05-25 16:08:43', '1', '40', '396');
INSERT INTO `userrelease` VALUES ('305', '2017-05-25 16:08:43', '1', '66', '397');
INSERT INTO `userrelease` VALUES ('306', '2017-05-25 16:08:43', '1', '20', '398');
INSERT INTO `userrelease` VALUES ('307', '2017-05-25 16:08:43', '1', '79', '399');
INSERT INTO `userrelease` VALUES ('308', '2017-05-25 16:08:43', '1', '76', '400');
INSERT INTO `userrelease` VALUES ('309', '2017-05-25 16:08:43', '1', '37', '401');
INSERT INTO `userrelease` VALUES ('310', '2017-05-25 16:08:43', '1', '47', '402');
INSERT INTO `userrelease` VALUES ('311', '2017-05-25 16:08:43', '1', '3', '403');
INSERT INTO `userrelease` VALUES ('312', '2017-05-25 16:08:43', '1', '20', '404');
INSERT INTO `userrelease` VALUES ('313', '2017-05-25 16:08:43', '1', '99', '405');
INSERT INTO `userrelease` VALUES ('314', '2017-05-25 16:08:43', '1', '8', '406');
INSERT INTO `userrelease` VALUES ('315', '2017-05-25 16:08:43', '1', '10', '407');
INSERT INTO `userrelease` VALUES ('316', '2017-05-25 16:08:43', '1', '82', '408');
INSERT INTO `userrelease` VALUES ('317', '2017-05-25 16:08:43', '1', '32', '409');
INSERT INTO `userrelease` VALUES ('318', '2017-05-25 16:08:43', '1', '82', '410');
INSERT INTO `userrelease` VALUES ('319', '2017-05-25 16:08:43', '1', '16', '411');
INSERT INTO `userrelease` VALUES ('320', '2017-05-25 16:08:43', '1', '18', '412');
INSERT INTO `userrelease` VALUES ('321', '2017-05-25 16:08:43', '1', '3', '413');
INSERT INTO `userrelease` VALUES ('322', '2017-05-25 16:08:43', '1', '98', '414');
INSERT INTO `userrelease` VALUES ('323', '2017-05-25 16:08:43', '1', '19', '415');
INSERT INTO `userrelease` VALUES ('324', '2017-05-25 16:08:43', '1', '14', '416');
INSERT INTO `userrelease` VALUES ('325', '2017-05-25 16:08:43', '1', '4', '417');
INSERT INTO `userrelease` VALUES ('326', '2017-05-25 16:08:43', '1', '71', '418');
INSERT INTO `userrelease` VALUES ('327', '2017-05-25 16:08:43', '1', '61', '419');
INSERT INTO `userrelease` VALUES ('328', '2017-05-25 16:08:43', '1', '38', '420');
INSERT INTO `userrelease` VALUES ('329', '2017-05-25 16:08:43', '1', '1', '421');
INSERT INTO `userrelease` VALUES ('330', '2017-05-25 16:08:43', '1', '53', '422');
INSERT INTO `userrelease` VALUES ('331', '2017-05-25 16:08:43', '1', '82', '423');
INSERT INTO `userrelease` VALUES ('332', '2017-05-25 16:08:43', '1', '86', '424');
INSERT INTO `userrelease` VALUES ('333', '2017-05-25 16:08:43', '1', '14', '425');
INSERT INTO `userrelease` VALUES ('334', '2017-05-25 16:08:43', '1', '90', '426');
INSERT INTO `userrelease` VALUES ('335', '2017-05-25 16:08:43', '1', '10', '427');
INSERT INTO `userrelease` VALUES ('336', '2017-05-25 16:08:43', '1', '97', '428');
INSERT INTO `userrelease` VALUES ('337', '2017-05-25 16:08:43', '1', '69', '429');
INSERT INTO `userrelease` VALUES ('338', '2017-05-25 16:08:43', '1', '18', '430');
INSERT INTO `userrelease` VALUES ('339', '2017-05-25 16:08:43', '1', '63', '431');
INSERT INTO `userrelease` VALUES ('340', '2017-05-25 16:08:43', '1', '25', '432');
INSERT INTO `userrelease` VALUES ('341', '2017-05-25 16:08:43', '1', '99', '433');
INSERT INTO `userrelease` VALUES ('342', '2017-05-25 16:08:43', '1', '60', '434');
INSERT INTO `userrelease` VALUES ('343', '2017-05-25 16:08:43', '1', '56', '435');
INSERT INTO `userrelease` VALUES ('344', '2017-05-25 16:08:43', '1', '49', '436');
INSERT INTO `userrelease` VALUES ('345', '2017-05-25 16:08:43', '1', '90', '437');
INSERT INTO `userrelease` VALUES ('346', '2017-05-25 16:08:43', '1', '13', '438');
INSERT INTO `userrelease` VALUES ('347', '2017-05-25 16:08:43', '1', '42', '439');
INSERT INTO `userrelease` VALUES ('348', '2017-05-25 16:08:43', '1', '58', '440');
INSERT INTO `userrelease` VALUES ('349', '2017-05-25 16:08:43', '1', '35', '441');
INSERT INTO `userrelease` VALUES ('350', '2017-05-25 16:08:43', '1', '34', '442');
INSERT INTO `userrelease` VALUES ('351', '2017-05-25 16:08:43', '1', '52', '443');
INSERT INTO `userrelease` VALUES ('352', '2017-05-25 16:08:43', '1', '90', '444');
INSERT INTO `userrelease` VALUES ('353', '2017-05-25 16:08:43', '1', '84', '445');
INSERT INTO `userrelease` VALUES ('354', '2017-05-25 16:08:43', '1', '27', '446');
INSERT INTO `userrelease` VALUES ('355', '2017-05-25 16:08:43', '1', '3', '447');
INSERT INTO `userrelease` VALUES ('356', '2017-05-25 16:08:43', '1', '79', '448');
INSERT INTO `userrelease` VALUES ('357', '2017-05-25 16:08:43', '1', '71', '449');
INSERT INTO `userrelease` VALUES ('358', '2017-05-25 16:08:43', '1', '26', '450');
INSERT INTO `userrelease` VALUES ('359', '2017-05-25 16:08:43', '1', '71', '451');
INSERT INTO `userrelease` VALUES ('360', '2017-05-25 16:08:43', '1', '88', '452');
INSERT INTO `userrelease` VALUES ('361', '2017-05-25 16:08:43', '1', '13', '453');
INSERT INTO `userrelease` VALUES ('362', '2017-05-25 16:08:43', '1', '26', '454');
INSERT INTO `userrelease` VALUES ('363', '2017-05-25 16:08:43', '1', '85', '455');
INSERT INTO `userrelease` VALUES ('364', '2017-05-25 16:08:43', '1', '47', '456');
INSERT INTO `userrelease` VALUES ('365', '2017-05-25 16:08:43', '1', '27', '457');
INSERT INTO `userrelease` VALUES ('366', '2017-05-25 16:08:43', '1', '4', '458');
INSERT INTO `userrelease` VALUES ('367', '2017-05-25 16:08:43', '1', '22', '459');
INSERT INTO `userrelease` VALUES ('368', '2017-05-25 16:08:43', '1', '62', '460');
INSERT INTO `userrelease` VALUES ('369', '2017-05-25 16:08:43', '1', '87', '461');
INSERT INTO `userrelease` VALUES ('370', '2017-05-25 16:08:43', '1', '5', '462');
INSERT INTO `userrelease` VALUES ('371', '2017-05-25 16:08:43', '1', '1', '463');
INSERT INTO `userrelease` VALUES ('372', '2017-05-25 16:08:43', '1', '73', '464');
INSERT INTO `userrelease` VALUES ('373', '2017-05-25 16:08:43', '1', '11', '465');
INSERT INTO `userrelease` VALUES ('374', '2017-05-25 16:08:43', '1', '63', '466');
INSERT INTO `userrelease` VALUES ('375', '2017-05-25 16:08:43', '1', '81', '467');
INSERT INTO `userrelease` VALUES ('376', '2017-05-25 16:08:43', '1', '38', '468');
INSERT INTO `userrelease` VALUES ('377', '2017-05-25 16:08:43', '1', '18', '469');
INSERT INTO `userrelease` VALUES ('378', '2017-05-25 16:08:43', '1', '66', '470');
INSERT INTO `userrelease` VALUES ('379', '2017-05-25 16:08:43', '1', '39', '471');
INSERT INTO `userrelease` VALUES ('380', '2017-05-25 16:08:43', '1', '87', '472');
INSERT INTO `userrelease` VALUES ('381', '2017-05-25 16:08:43', '1', '4', '473');
INSERT INTO `userrelease` VALUES ('382', '2017-05-25 16:08:43', '1', '62', '474');
INSERT INTO `userrelease` VALUES ('383', '2017-05-25 16:08:43', '1', '11', '475');
INSERT INTO `userrelease` VALUES ('384', '2017-05-25 16:08:43', '1', '20', '476');
INSERT INTO `userrelease` VALUES ('385', '2017-05-25 16:08:43', '1', '30', '477');
INSERT INTO `userrelease` VALUES ('386', '2017-05-25 16:08:43', '1', '98', '478');
INSERT INTO `userrelease` VALUES ('387', '2017-05-25 16:08:43', '1', '70', '479');
INSERT INTO `userrelease` VALUES ('388', '2017-05-25 16:08:43', '1', '9', '480');
INSERT INTO `userrelease` VALUES ('389', '2017-05-25 16:08:43', '1', '82', '481');
INSERT INTO `userrelease` VALUES ('390', '2017-05-25 16:08:43', '1', '61', '482');
INSERT INTO `userrelease` VALUES ('391', '2017-05-25 16:08:43', '1', '87', '483');
INSERT INTO `userrelease` VALUES ('392', '2017-05-25 16:08:43', '1', '43', '484');
INSERT INTO `userrelease` VALUES ('393', '2017-05-25 16:08:43', '1', '57', '485');
INSERT INTO `userrelease` VALUES ('394', '2017-05-25 16:08:43', '1', '58', '486');
INSERT INTO `userrelease` VALUES ('395', '2017-05-25 16:08:43', '1', '55', '487');
INSERT INTO `userrelease` VALUES ('396', '2017-05-25 16:08:43', '1', '84', '488');
INSERT INTO `userrelease` VALUES ('397', '2017-05-25 16:08:43', '1', '67', '489');
INSERT INTO `userrelease` VALUES ('398', '2017-05-25 16:08:43', '1', '22', '490');
INSERT INTO `userrelease` VALUES ('399', '2017-05-25 16:08:43', '1', '64', '491');
INSERT INTO `userrelease` VALUES ('400', '2017-05-25 16:08:43', '1', '85', '492');
INSERT INTO `userrelease` VALUES ('401', '2017-05-25 16:08:43', '1', '11', '493');
INSERT INTO `userrelease` VALUES ('402', '2017-05-25 16:08:43', '1', '57', '494');
INSERT INTO `userrelease` VALUES ('403', '2017-05-25 16:08:44', '1', '60', '495');
INSERT INTO `userrelease` VALUES ('404', '2017-05-25 16:08:44', '1', '100', '496');
INSERT INTO `userrelease` VALUES ('405', '2017-05-25 16:08:44', '1', '65', '497');
INSERT INTO `userrelease` VALUES ('406', '2017-05-25 16:08:44', '1', '48', '498');
INSERT INTO `userrelease` VALUES ('407', '2017-05-25 16:08:44', '1', '88', '499');
INSERT INTO `userrelease` VALUES ('408', '2017-05-25 16:08:44', '1', '67', '500');
INSERT INTO `userrelease` VALUES ('409', '2017-05-25 16:08:44', '1', '57', '501');
INSERT INTO `userrelease` VALUES ('410', '2017-05-25 16:08:44', '1', '67', '502');
INSERT INTO `userrelease` VALUES ('411', '2017-05-25 16:08:44', '1', '100', '503');
INSERT INTO `userrelease` VALUES ('412', '2017-05-25 16:08:44', '1', '18', '504');
INSERT INTO `userrelease` VALUES ('413', '2017-05-25 16:08:44', '1', '94', '505');
INSERT INTO `userrelease` VALUES ('414', '2017-05-25 16:08:44', '1', '16', '506');
INSERT INTO `userrelease` VALUES ('415', '2017-05-25 16:08:44', '1', '79', '507');
INSERT INTO `userrelease` VALUES ('416', '2017-05-25 16:08:44', '1', '18', '508');
INSERT INTO `userrelease` VALUES ('417', '2017-05-25 16:08:44', '1', '52', '509');
INSERT INTO `userrelease` VALUES ('418', '2017-05-25 16:08:44', '1', '69', '510');
INSERT INTO `userrelease` VALUES ('419', '2017-05-25 16:08:44', '1', '56', '511');
INSERT INTO `userrelease` VALUES ('420', '2017-05-25 16:08:44', '1', '51', '512');
INSERT INTO `userrelease` VALUES ('421', '2017-05-25 16:08:44', '1', '54', '513');
INSERT INTO `userrelease` VALUES ('422', '2017-05-25 16:08:44', '1', '20', '514');
INSERT INTO `userrelease` VALUES ('423', '2017-05-25 16:08:44', '1', '79', '515');
INSERT INTO `userrelease` VALUES ('424', '2017-05-25 16:08:44', '1', '89', '516');
INSERT INTO `userrelease` VALUES ('425', '2017-05-25 16:08:44', '1', '25', '517');
INSERT INTO `userrelease` VALUES ('426', '2017-05-25 16:08:44', '1', '67', '518');
INSERT INTO `userrelease` VALUES ('427', '2017-05-25 16:08:44', '1', '70', '519');
INSERT INTO `userrelease` VALUES ('428', '2017-05-25 16:08:44', '1', '56', '520');
INSERT INTO `userrelease` VALUES ('429', '2017-05-25 16:08:44', '1', '22', '521');
INSERT INTO `userrelease` VALUES ('430', '2017-05-25 16:08:44', '1', '75', '522');
INSERT INTO `userrelease` VALUES ('431', '2017-05-25 16:08:44', '1', '88', '523');
INSERT INTO `userrelease` VALUES ('432', '2017-05-25 16:08:44', '1', '93', '524');
INSERT INTO `userrelease` VALUES ('433', '2017-05-25 16:08:44', '1', '54', '525');
INSERT INTO `userrelease` VALUES ('434', '2017-05-25 16:08:44', '1', '29', '526');
INSERT INTO `userrelease` VALUES ('435', '2017-05-25 16:08:44', '1', '81', '527');
INSERT INTO `userrelease` VALUES ('436', '2017-05-25 16:08:44', '1', '25', '528');
INSERT INTO `userrelease` VALUES ('437', '2017-05-25 16:08:44', '1', '85', '529');
INSERT INTO `userrelease` VALUES ('438', '2017-05-25 16:08:44', '1', '48', '530');
INSERT INTO `userrelease` VALUES ('439', '2017-05-25 16:08:44', '1', '64', '531');
INSERT INTO `userrelease` VALUES ('440', '2017-05-25 16:08:44', '1', '36', '532');
INSERT INTO `userrelease` VALUES ('441', '2017-05-25 16:08:44', '1', '89', '533');
INSERT INTO `userrelease` VALUES ('442', '2017-05-25 16:08:44', '1', '83', '534');
INSERT INTO `userrelease` VALUES ('443', '2017-05-25 16:08:44', '1', '85', '535');
INSERT INTO `userrelease` VALUES ('444', '2017-05-25 16:08:44', '1', '7', '536');
INSERT INTO `userrelease` VALUES ('445', '2017-05-25 16:08:44', '1', '49', '537');
INSERT INTO `userrelease` VALUES ('446', '2017-05-25 16:08:44', '1', '44', '538');
INSERT INTO `userrelease` VALUES ('447', '2017-05-25 16:08:44', '1', '62', '539');
INSERT INTO `userrelease` VALUES ('448', '2017-05-25 16:08:44', '1', '11', '540');
INSERT INTO `userrelease` VALUES ('449', '2017-05-25 16:08:44', '1', '98', '541');
INSERT INTO `userrelease` VALUES ('450', '2017-05-25 16:08:44', '1', '82', '542');
INSERT INTO `userrelease` VALUES ('451', '2017-05-25 16:08:44', '1', '46', '543');
INSERT INTO `userrelease` VALUES ('452', '2017-05-25 16:08:44', '1', '6', '544');
INSERT INTO `userrelease` VALUES ('453', '2017-05-25 16:08:44', '1', '74', '545');
INSERT INTO `userrelease` VALUES ('454', '2017-05-25 16:08:44', '1', '59', '546');
INSERT INTO `userrelease` VALUES ('455', '2017-05-25 16:08:44', '1', '90', '547');
INSERT INTO `userrelease` VALUES ('456', '2017-05-25 16:08:44', '1', '36', '548');
INSERT INTO `userrelease` VALUES ('457', '2017-05-25 16:08:44', '1', '68', '549');
INSERT INTO `userrelease` VALUES ('458', '2017-05-25 16:08:44', '1', '53', '550');
INSERT INTO `userrelease` VALUES ('459', '2017-05-25 16:08:44', '1', '49', '551');
INSERT INTO `userrelease` VALUES ('460', '2017-05-25 16:08:44', '1', '76', '552');
INSERT INTO `userrelease` VALUES ('461', '2017-05-25 16:08:44', '1', '100', '553');
INSERT INTO `userrelease` VALUES ('462', '2017-05-25 16:08:44', '1', '71', '554');
INSERT INTO `userrelease` VALUES ('463', '2017-05-25 16:08:44', '1', '77', '555');
INSERT INTO `userrelease` VALUES ('464', '2017-05-25 16:08:44', '1', '26', '556');
INSERT INTO `userrelease` VALUES ('465', '2017-05-25 16:08:44', '1', '32', '557');
INSERT INTO `userrelease` VALUES ('466', '2017-05-25 16:08:44', '1', '30', '558');
INSERT INTO `userrelease` VALUES ('467', '2017-05-25 16:08:44', '1', '39', '559');
INSERT INTO `userrelease` VALUES ('468', '2017-05-25 16:08:44', '1', '48', '560');
INSERT INTO `userrelease` VALUES ('469', '2017-05-25 16:08:44', '1', '72', '561');
INSERT INTO `userrelease` VALUES ('470', '2017-05-25 16:08:44', '1', '78', '562');
INSERT INTO `userrelease` VALUES ('471', '2017-05-25 16:08:44', '1', '92', '563');
INSERT INTO `userrelease` VALUES ('472', '2017-05-25 16:08:44', '1', '49', '564');
INSERT INTO `userrelease` VALUES ('473', '2017-05-25 16:08:44', '1', '38', '565');
INSERT INTO `userrelease` VALUES ('474', '2017-05-25 16:08:44', '1', '99', '566');
INSERT INTO `userrelease` VALUES ('475', '2017-05-25 16:08:44', '1', '55', '567');
INSERT INTO `userrelease` VALUES ('476', '2017-05-25 16:08:44', '1', '33', '568');
INSERT INTO `userrelease` VALUES ('477', '2017-05-25 16:08:44', '1', '58', '569');
INSERT INTO `userrelease` VALUES ('478', '2017-05-25 16:08:44', '1', '12', '570');
INSERT INTO `userrelease` VALUES ('479', '2017-05-25 16:08:44', '1', '41', '571');
INSERT INTO `userrelease` VALUES ('480', '2017-05-25 16:08:44', '1', '39', '572');
INSERT INTO `userrelease` VALUES ('481', '2017-05-25 16:08:44', '1', '22', '573');
INSERT INTO `userrelease` VALUES ('482', '2017-05-25 16:08:44', '1', '26', '574');
INSERT INTO `userrelease` VALUES ('483', '2017-05-25 16:08:44', '1', '20', '575');
INSERT INTO `userrelease` VALUES ('484', '2017-05-25 16:08:44', '1', '5', '576');
INSERT INTO `userrelease` VALUES ('485', '2017-05-25 16:08:44', '1', '50', '577');
INSERT INTO `userrelease` VALUES ('486', '2017-05-25 16:08:44', '1', '51', '578');
INSERT INTO `userrelease` VALUES ('487', '2017-05-25 16:08:44', '1', '83', '579');
INSERT INTO `userrelease` VALUES ('488', '2017-05-25 16:08:44', '1', '58', '580');
INSERT INTO `userrelease` VALUES ('489', '2017-05-25 16:08:44', '1', '47', '581');
INSERT INTO `userrelease` VALUES ('490', '2017-05-25 16:08:44', '1', '98', '582');
INSERT INTO `userrelease` VALUES ('491', '2017-05-25 16:08:44', '1', '41', '583');
INSERT INTO `userrelease` VALUES ('492', '2017-05-25 16:08:44', '1', '99', '584');
INSERT INTO `userrelease` VALUES ('493', '2017-05-25 16:08:44', '1', '70', '585');
INSERT INTO `userrelease` VALUES ('494', '2017-05-25 16:08:44', '1', '47', '586');
INSERT INTO `userrelease` VALUES ('495', '2017-05-25 16:08:44', '1', '85', '587');
INSERT INTO `userrelease` VALUES ('496', '2017-05-25 16:08:44', '1', '88', '588');
INSERT INTO `userrelease` VALUES ('497', '2017-05-25 16:08:44', '1', '4', '589');
INSERT INTO `userrelease` VALUES ('498', '2017-05-25 16:08:44', '1', '64', '590');
INSERT INTO `userrelease` VALUES ('499', '2017-05-25 16:08:44', '1', '15', '591');
INSERT INTO `userrelease` VALUES ('500', '2017-05-25 16:08:44', '1', '59', '592');
INSERT INTO `userrelease` VALUES ('501', '2017-05-25 16:08:44', '1', '88', '593');
INSERT INTO `userrelease` VALUES ('502', '2017-05-25 16:08:44', '1', '43', '594');
INSERT INTO `userrelease` VALUES ('503', '2017-05-25 16:08:44', '1', '50', '595');
INSERT INTO `userrelease` VALUES ('504', '2017-05-25 16:08:44', '1', '70', '596');
INSERT INTO `userrelease` VALUES ('505', '2017-05-25 16:08:44', '1', '70', '597');
INSERT INTO `userrelease` VALUES ('506', '2017-05-25 16:08:44', '1', '19', '598');
INSERT INTO `userrelease` VALUES ('507', '2017-05-25 16:08:44', '1', '70', '599');
INSERT INTO `userrelease` VALUES ('508', '2017-05-25 16:08:44', '1', '89', '600');
INSERT INTO `userrelease` VALUES ('509', '2017-05-25 16:08:44', '1', '59', '601');
INSERT INTO `userrelease` VALUES ('510', '2017-05-25 16:08:44', '1', '26', '602');
INSERT INTO `userrelease` VALUES ('511', '2017-05-25 16:08:44', '1', '76', '603');
INSERT INTO `userrelease` VALUES ('512', '2017-05-25 16:08:44', '1', '26', '604');
INSERT INTO `userrelease` VALUES ('513', '2017-05-25 16:08:44', '1', '90', '605');
INSERT INTO `userrelease` VALUES ('514', '2017-05-25 16:08:44', '1', '93', '606');
INSERT INTO `userrelease` VALUES ('515', '2017-05-25 16:08:44', '1', '36', '607');
INSERT INTO `userrelease` VALUES ('516', '2017-05-25 16:08:44', '1', '33', '608');
INSERT INTO `userrelease` VALUES ('517', '2017-05-25 16:08:44', '1', '6', '609');
INSERT INTO `userrelease` VALUES ('518', '2017-05-25 16:08:44', '1', '75', '610');
INSERT INTO `userrelease` VALUES ('519', '2017-05-25 16:08:44', '1', '88', '611');
INSERT INTO `userrelease` VALUES ('520', '2017-05-25 16:08:44', '1', '86', '612');
INSERT INTO `userrelease` VALUES ('521', '2017-05-25 16:08:44', '1', '66', '613');
INSERT INTO `userrelease` VALUES ('522', '2017-05-25 16:08:44', '1', '72', '614');
INSERT INTO `userrelease` VALUES ('523', '2017-05-25 16:08:44', '1', '64', '615');
INSERT INTO `userrelease` VALUES ('524', '2017-05-25 16:08:44', '1', '2', '616');
INSERT INTO `userrelease` VALUES ('525', '2017-05-25 16:08:44', '1', '6', '617');
INSERT INTO `userrelease` VALUES ('526', '2017-05-25 16:08:44', '1', '58', '618');
INSERT INTO `userrelease` VALUES ('527', '2017-05-25 16:08:44', '1', '82', '619');
INSERT INTO `userrelease` VALUES ('528', '2017-05-25 16:08:44', '1', '75', '620');
INSERT INTO `userrelease` VALUES ('529', '2017-05-25 16:08:44', '1', '79', '621');
INSERT INTO `userrelease` VALUES ('530', '2017-05-25 16:08:44', '1', '31', '622');
INSERT INTO `userrelease` VALUES ('531', '2017-05-25 16:08:44', '1', '76', '623');
INSERT INTO `userrelease` VALUES ('532', '2017-05-25 16:08:44', '1', '75', '624');
INSERT INTO `userrelease` VALUES ('533', '2017-05-25 16:08:44', '1', '87', '625');
INSERT INTO `userrelease` VALUES ('534', '2017-05-25 16:08:44', '1', '21', '626');
INSERT INTO `userrelease` VALUES ('535', '2017-05-25 16:08:44', '1', '64', '627');
INSERT INTO `userrelease` VALUES ('536', '2017-05-25 16:08:44', '1', '91', '628');
INSERT INTO `userrelease` VALUES ('537', '2017-05-25 16:08:44', '1', '71', '629');
INSERT INTO `userrelease` VALUES ('538', '2017-05-25 16:08:44', '1', '75', '630');
INSERT INTO `userrelease` VALUES ('539', '2017-05-25 16:08:44', '1', '88', '631');
INSERT INTO `userrelease` VALUES ('540', '2017-05-25 16:08:44', '1', '30', '632');
INSERT INTO `userrelease` VALUES ('541', '2017-05-25 16:08:44', '1', '90', '633');
INSERT INTO `userrelease` VALUES ('542', '2017-05-25 16:08:44', '1', '65', '634');
INSERT INTO `userrelease` VALUES ('543', '2017-05-25 16:08:44', '1', '51', '635');
INSERT INTO `userrelease` VALUES ('544', '2017-05-25 16:08:44', '1', '88', '636');
INSERT INTO `userrelease` VALUES ('545', '2017-05-25 16:08:44', '1', '91', '637');
INSERT INTO `userrelease` VALUES ('546', '2017-05-25 16:08:44', '1', '75', '638');
INSERT INTO `userrelease` VALUES ('547', '2017-05-25 16:08:44', '1', '17', '639');
INSERT INTO `userrelease` VALUES ('548', '2017-05-25 16:08:45', '1', '62', '640');
INSERT INTO `userrelease` VALUES ('549', '2017-05-25 16:08:45', '1', '22', '641');
INSERT INTO `userrelease` VALUES ('550', '2017-05-25 16:08:45', '1', '95', '642');
INSERT INTO `userrelease` VALUES ('551', '2017-05-25 16:08:45', '1', '79', '643');
INSERT INTO `userrelease` VALUES ('552', '2017-05-25 16:08:45', '1', '71', '644');
INSERT INTO `userrelease` VALUES ('553', '2017-05-25 16:08:45', '1', '88', '645');
INSERT INTO `userrelease` VALUES ('554', '2017-05-25 16:08:45', '1', '77', '646');
INSERT INTO `userrelease` VALUES ('555', '2017-05-25 16:08:45', '1', '69', '647');
INSERT INTO `userrelease` VALUES ('556', '2017-05-25 16:08:45', '1', '65', '648');
INSERT INTO `userrelease` VALUES ('557', '2017-05-25 16:08:45', '1', '50', '649');
INSERT INTO `userrelease` VALUES ('558', '2017-05-25 16:08:45', '1', '96', '650');
INSERT INTO `userrelease` VALUES ('559', '2017-05-25 16:08:45', '1', '78', '651');
INSERT INTO `userrelease` VALUES ('560', '2017-05-25 16:08:45', '1', '19', '652');
INSERT INTO `userrelease` VALUES ('561', '2017-05-25 16:08:45', '1', '33', '653');
INSERT INTO `userrelease` VALUES ('562', '2017-05-25 16:08:45', '1', '34', '654');
INSERT INTO `userrelease` VALUES ('563', '2017-05-25 16:08:45', '1', '10', '655');
INSERT INTO `userrelease` VALUES ('564', '2017-05-25 16:08:45', '1', '87', '656');
INSERT INTO `userrelease` VALUES ('565', '2017-05-25 16:08:45', '1', '8', '657');
INSERT INTO `userrelease` VALUES ('566', '2017-05-25 16:08:45', '1', '50', '658');
INSERT INTO `userrelease` VALUES ('567', '2017-05-25 16:08:45', '1', '27', '659');
INSERT INTO `userrelease` VALUES ('568', '2017-05-25 16:08:45', '1', '32', '660');
INSERT INTO `userrelease` VALUES ('569', '2017-05-25 16:08:45', '1', '77', '661');
INSERT INTO `userrelease` VALUES ('570', '2017-05-25 16:08:45', '1', '27', '662');
INSERT INTO `userrelease` VALUES ('571', '2017-05-25 16:08:45', '1', '15', '663');
INSERT INTO `userrelease` VALUES ('572', '2017-05-25 16:08:45', '1', '25', '664');
INSERT INTO `userrelease` VALUES ('573', '2017-05-25 16:08:45', '1', '74', '665');
INSERT INTO `userrelease` VALUES ('574', '2017-05-25 16:08:45', '1', '29', '666');
INSERT INTO `userrelease` VALUES ('575', '2017-05-25 16:08:45', '1', '94', '667');
INSERT INTO `userrelease` VALUES ('576', '2017-05-25 16:08:45', '1', '81', '668');
INSERT INTO `userrelease` VALUES ('577', '2017-05-25 16:08:45', '1', '24', '669');
INSERT INTO `userrelease` VALUES ('578', '2017-05-25 16:08:45', '1', '67', '670');
INSERT INTO `userrelease` VALUES ('579', '2017-05-25 16:08:45', '1', '8', '671');
INSERT INTO `userrelease` VALUES ('580', '2017-05-25 16:08:45', '1', '47', '672');
INSERT INTO `userrelease` VALUES ('581', '2017-05-25 16:08:45', '1', '95', '673');
INSERT INTO `userrelease` VALUES ('582', '2017-05-25 16:08:45', '1', '60', '674');
INSERT INTO `userrelease` VALUES ('583', '2017-05-25 16:08:45', '1', '49', '675');
INSERT INTO `userrelease` VALUES ('584', '2017-05-25 16:08:45', '1', '87', '676');
INSERT INTO `userrelease` VALUES ('585', '2017-05-25 16:08:45', '1', '86', '677');
INSERT INTO `userrelease` VALUES ('586', '2017-05-25 16:08:45', '1', '70', '678');
INSERT INTO `userrelease` VALUES ('587', '2017-05-25 16:08:45', '1', '97', '679');
INSERT INTO `userrelease` VALUES ('588', '2017-05-25 16:08:45', '1', '27', '680');
INSERT INTO `userrelease` VALUES ('589', '2017-05-25 16:08:45', '1', '61', '681');
INSERT INTO `userrelease` VALUES ('590', '2017-05-25 16:08:45', '1', '26', '682');
INSERT INTO `userrelease` VALUES ('591', '2017-05-25 16:08:45', '1', '71', '683');
INSERT INTO `userrelease` VALUES ('592', '2017-05-25 16:08:45', '1', '72', '684');
INSERT INTO `userrelease` VALUES ('593', '2017-05-25 16:08:45', '1', '85', '685');
INSERT INTO `userrelease` VALUES ('594', '2017-05-25 16:08:45', '1', '2', '686');
INSERT INTO `userrelease` VALUES ('595', '2017-05-25 16:08:45', '1', '14', '687');
INSERT INTO `userrelease` VALUES ('596', '2017-05-25 16:08:45', '1', '96', '688');
INSERT INTO `userrelease` VALUES ('597', '2017-05-25 16:08:45', '1', '3', '689');
INSERT INTO `userrelease` VALUES ('598', '2017-05-25 16:08:45', '1', '13', '690');
INSERT INTO `userrelease` VALUES ('599', '2017-05-25 16:08:45', '1', '20', '691');
INSERT INTO `userrelease` VALUES ('600', '2017-05-25 16:08:45', '1', '33', '692');
INSERT INTO `userrelease` VALUES ('601', '2017-05-25 16:08:45', '1', '14', '693');
INSERT INTO `userrelease` VALUES ('602', '2017-05-25 16:08:45', '1', '30', '694');
INSERT INTO `userrelease` VALUES ('603', '2017-05-25 16:08:45', '1', '7', '695');
INSERT INTO `userrelease` VALUES ('604', '2017-05-25 16:08:45', '1', '13', '696');
INSERT INTO `userrelease` VALUES ('605', '2017-05-25 16:08:45', '1', '11', '697');
INSERT INTO `userrelease` VALUES ('606', '2017-05-25 16:08:45', '1', '3', '698');
INSERT INTO `userrelease` VALUES ('607', '2017-05-25 16:08:45', '1', '49', '699');
INSERT INTO `userrelease` VALUES ('608', '2017-05-25 16:08:45', '1', '33', '700');
INSERT INTO `userrelease` VALUES ('609', '2017-05-25 16:08:45', '1', '82', '701');
INSERT INTO `userrelease` VALUES ('610', '2017-05-25 16:08:45', '1', '58', '702');
INSERT INTO `userrelease` VALUES ('611', '2017-05-25 16:08:45', '1', '63', '703');
INSERT INTO `userrelease` VALUES ('612', '2017-05-25 16:08:45', '1', '60', '704');
INSERT INTO `userrelease` VALUES ('613', '2017-05-25 16:08:45', '1', '52', '705');
INSERT INTO `userrelease` VALUES ('614', '2017-05-25 16:08:45', '1', '89', '706');
INSERT INTO `userrelease` VALUES ('615', '2017-05-25 16:08:45', '1', '82', '707');
INSERT INTO `userrelease` VALUES ('616', '2017-05-25 16:08:45', '1', '36', '708');
INSERT INTO `userrelease` VALUES ('617', '2017-05-25 16:08:45', '1', '36', '709');
INSERT INTO `userrelease` VALUES ('618', '2017-05-25 16:08:45', '1', '94', '710');
INSERT INTO `userrelease` VALUES ('619', '2017-05-25 16:08:45', '1', '92', '711');
INSERT INTO `userrelease` VALUES ('620', '2017-05-25 16:08:45', '1', '84', '712');
INSERT INTO `userrelease` VALUES ('621', '2017-05-25 16:08:45', '1', '87', '713');
INSERT INTO `userrelease` VALUES ('622', '2017-05-25 16:08:45', '1', '99', '714');
INSERT INTO `userrelease` VALUES ('623', '2017-05-25 16:08:45', '1', '14', '715');
INSERT INTO `userrelease` VALUES ('624', '2017-05-25 16:08:45', '1', '38', '716');
INSERT INTO `userrelease` VALUES ('625', '2017-05-25 16:08:45', '1', '72', '717');
INSERT INTO `userrelease` VALUES ('626', '2017-05-25 16:08:45', '1', '23', '718');
INSERT INTO `userrelease` VALUES ('627', '2017-05-25 16:08:45', '1', '55', '719');
INSERT INTO `userrelease` VALUES ('628', '2017-05-25 16:08:45', '1', '85', '720');
INSERT INTO `userrelease` VALUES ('629', '2017-05-25 16:08:45', '1', '72', '721');
INSERT INTO `userrelease` VALUES ('630', '2017-05-25 16:08:45', '1', '51', '722');
INSERT INTO `userrelease` VALUES ('631', '2017-05-25 16:08:45', '1', '69', '723');
INSERT INTO `userrelease` VALUES ('632', '2017-05-25 16:08:45', '1', '90', '724');
INSERT INTO `userrelease` VALUES ('633', '2017-05-25 16:08:45', '1', '55', '725');
INSERT INTO `userrelease` VALUES ('634', '2017-05-25 16:08:45', '1', '1', '726');
INSERT INTO `userrelease` VALUES ('635', '2017-05-25 16:08:45', '1', '15', '727');
INSERT INTO `userrelease` VALUES ('636', '2017-05-25 16:08:45', '1', '7', '728');
INSERT INTO `userrelease` VALUES ('637', '2017-05-25 16:08:45', '1', '41', '729');
INSERT INTO `userrelease` VALUES ('638', '2017-05-25 16:08:45', '1', '78', '730');
INSERT INTO `userrelease` VALUES ('639', '2017-05-25 16:08:45', '1', '51', '731');
INSERT INTO `userrelease` VALUES ('640', '2017-05-25 16:08:45', '1', '12', '732');
INSERT INTO `userrelease` VALUES ('641', '2017-05-25 16:08:45', '1', '29', '733');
INSERT INTO `userrelease` VALUES ('642', '2017-05-25 16:08:45', '1', '84', '734');
INSERT INTO `userrelease` VALUES ('643', '2017-05-25 16:08:45', '1', '41', '735');
INSERT INTO `userrelease` VALUES ('644', '2017-05-25 16:08:45', '1', '86', '736');
INSERT INTO `userrelease` VALUES ('645', '2017-05-25 16:08:45', '1', '80', '737');
INSERT INTO `userrelease` VALUES ('646', '2017-05-25 16:08:45', '1', '90', '738');
INSERT INTO `userrelease` VALUES ('647', '2017-05-25 16:08:45', '1', '50', '739');
INSERT INTO `userrelease` VALUES ('648', '2017-05-25 16:08:45', '1', '80', '740');
INSERT INTO `userrelease` VALUES ('649', '2017-05-25 16:08:45', '1', '25', '741');
INSERT INTO `userrelease` VALUES ('650', '2017-05-25 16:08:45', '1', '36', '742');
INSERT INTO `userrelease` VALUES ('651', '2017-05-25 16:08:45', '1', '12', '743');
INSERT INTO `userrelease` VALUES ('652', '2017-05-25 16:08:45', '1', '45', '744');
INSERT INTO `userrelease` VALUES ('653', '2017-05-25 16:08:45', '1', '80', '745');
INSERT INTO `userrelease` VALUES ('654', '2017-05-25 16:08:45', '1', '43', '746');
INSERT INTO `userrelease` VALUES ('655', '2017-05-25 16:08:45', '1', '19', '747');
INSERT INTO `userrelease` VALUES ('656', '2017-05-25 16:08:45', '1', '65', '748');
INSERT INTO `userrelease` VALUES ('657', '2017-05-25 16:08:45', '1', '21', '749');
INSERT INTO `userrelease` VALUES ('658', '2017-05-25 16:08:45', '1', '69', '750');
INSERT INTO `userrelease` VALUES ('659', '2017-05-25 16:08:45', '1', '66', '751');
INSERT INTO `userrelease` VALUES ('660', '2017-05-25 16:08:45', '1', '71', '752');
INSERT INTO `userrelease` VALUES ('661', '2017-05-25 16:08:45', '1', '56', '753');
INSERT INTO `userrelease` VALUES ('662', '2017-05-25 16:08:45', '1', '35', '754');
INSERT INTO `userrelease` VALUES ('663', '2017-05-25 16:08:45', '1', '35', '755');
INSERT INTO `userrelease` VALUES ('664', '2017-05-25 16:08:45', '1', '44', '756');
INSERT INTO `userrelease` VALUES ('665', '2017-05-25 16:08:45', '1', '11', '757');
INSERT INTO `userrelease` VALUES ('666', '2017-05-25 16:08:45', '1', '84', '758');
INSERT INTO `userrelease` VALUES ('667', '2017-05-25 16:08:45', '1', '43', '759');
INSERT INTO `userrelease` VALUES ('668', '2017-05-25 16:08:45', '1', '2', '760');
INSERT INTO `userrelease` VALUES ('669', '2017-05-25 16:08:45', '1', '80', '761');
INSERT INTO `userrelease` VALUES ('670', '2017-05-25 16:08:45', '1', '42', '762');
INSERT INTO `userrelease` VALUES ('671', '2017-05-25 16:08:45', '1', '90', '763');
INSERT INTO `userrelease` VALUES ('672', '2017-05-25 16:08:45', '1', '30', '764');
INSERT INTO `userrelease` VALUES ('673', '2017-05-25 16:08:45', '1', '4', '765');
INSERT INTO `userrelease` VALUES ('674', '2017-05-25 16:08:45', '1', '57', '766');
INSERT INTO `userrelease` VALUES ('675', '2017-05-25 16:08:45', '1', '27', '767');
INSERT INTO `userrelease` VALUES ('676', '2017-05-25 16:08:45', '1', '81', '768');
INSERT INTO `userrelease` VALUES ('677', '2017-05-25 16:08:45', '1', '81', '769');
INSERT INTO `userrelease` VALUES ('678', '2017-05-25 16:08:45', '1', '7', '770');
INSERT INTO `userrelease` VALUES ('679', '2017-05-25 16:08:45', '1', '73', '771');
INSERT INTO `userrelease` VALUES ('680', '2017-05-25 16:08:45', '1', '50', '772');
INSERT INTO `userrelease` VALUES ('681', '2017-05-25 16:08:45', '1', '66', '773');
INSERT INTO `userrelease` VALUES ('682', '2017-05-25 16:08:45', '1', '35', '774');
INSERT INTO `userrelease` VALUES ('683', '2017-05-25 16:08:45', '1', '27', '775');
INSERT INTO `userrelease` VALUES ('684', '2017-05-25 16:08:45', '1', '86', '776');
INSERT INTO `userrelease` VALUES ('685', '2017-05-25 16:08:45', '1', '28', '777');
INSERT INTO `userrelease` VALUES ('686', '2017-05-25 16:08:45', '1', '30', '778');
INSERT INTO `userrelease` VALUES ('687', '2017-05-25 16:08:45', '1', '90', '779');
INSERT INTO `userrelease` VALUES ('688', '2017-05-25 16:08:45', '1', '65', '780');
INSERT INTO `userrelease` VALUES ('689', '2017-05-25 16:08:45', '1', '38', '781');
INSERT INTO `userrelease` VALUES ('690', '2017-05-25 16:08:45', '1', '60', '782');
INSERT INTO `userrelease` VALUES ('691', '2017-05-25 16:08:45', '1', '66', '783');
INSERT INTO `userrelease` VALUES ('692', '2017-05-25 16:08:45', '1', '89', '784');
INSERT INTO `userrelease` VALUES ('693', '2017-05-25 16:08:45', '1', '53', '785');
INSERT INTO `userrelease` VALUES ('694', '2017-05-25 16:08:45', '1', '25', '786');
INSERT INTO `userrelease` VALUES ('695', '2017-05-25 16:08:45', '1', '82', '787');
INSERT INTO `userrelease` VALUES ('696', '2017-05-25 16:08:46', '1', '37', '788');
INSERT INTO `userrelease` VALUES ('697', '2017-05-25 16:08:46', '1', '28', '789');
INSERT INTO `userrelease` VALUES ('698', '2017-05-25 16:08:46', '1', '67', '790');
INSERT INTO `userrelease` VALUES ('699', '2017-05-25 16:08:46', '1', '48', '791');
INSERT INTO `userrelease` VALUES ('700', '2017-05-25 16:08:46', '1', '75', '792');
INSERT INTO `userrelease` VALUES ('701', '2017-05-25 16:08:46', '1', '25', '793');
INSERT INTO `userrelease` VALUES ('702', '2017-05-25 16:08:46', '1', '20', '794');
INSERT INTO `userrelease` VALUES ('703', '2017-05-25 16:08:46', '1', '84', '795');
INSERT INTO `userrelease` VALUES ('704', '2017-05-25 16:08:46', '1', '87', '796');
INSERT INTO `userrelease` VALUES ('705', '2017-05-25 16:08:46', '1', '32', '797');
INSERT INTO `userrelease` VALUES ('706', '2017-05-25 16:08:46', '1', '8', '798');
INSERT INTO `userrelease` VALUES ('707', '2017-05-25 16:08:46', '1', '24', '799');
INSERT INTO `userrelease` VALUES ('708', '2017-05-25 16:08:46', '1', '64', '800');
INSERT INTO `userrelease` VALUES ('709', '2017-05-25 16:08:46', '1', '62', '801');
INSERT INTO `userrelease` VALUES ('710', '2017-05-25 16:08:46', '1', '45', '802');
INSERT INTO `userrelease` VALUES ('711', '2017-05-25 16:08:46', '1', '99', '803');
INSERT INTO `userrelease` VALUES ('712', '2017-05-25 16:08:46', '1', '30', '804');
INSERT INTO `userrelease` VALUES ('713', '2017-05-25 16:08:46', '1', '78', '805');
INSERT INTO `userrelease` VALUES ('714', '2017-05-25 16:08:46', '1', '72', '806');
INSERT INTO `userrelease` VALUES ('715', '2017-05-25 16:08:46', '1', '65', '807');
INSERT INTO `userrelease` VALUES ('716', '2017-05-25 16:08:46', '1', '46', '808');
INSERT INTO `userrelease` VALUES ('717', '2017-05-25 16:08:46', '1', '28', '809');
INSERT INTO `userrelease` VALUES ('718', '2017-05-25 16:08:46', '1', '61', '810');
INSERT INTO `userrelease` VALUES ('719', '2017-05-25 16:08:46', '1', '63', '811');
INSERT INTO `userrelease` VALUES ('720', '2017-05-25 16:08:46', '1', '50', '812');
INSERT INTO `userrelease` VALUES ('721', '2017-05-25 16:08:46', '1', '76', '813');
INSERT INTO `userrelease` VALUES ('722', '2017-05-25 16:08:46', '1', '55', '814');
INSERT INTO `userrelease` VALUES ('723', '2017-05-25 16:08:46', '1', '79', '815');
INSERT INTO `userrelease` VALUES ('724', '2017-05-25 16:08:46', '1', '65', '816');
INSERT INTO `userrelease` VALUES ('725', '2017-05-25 16:08:46', '1', '65', '817');
INSERT INTO `userrelease` VALUES ('726', '2017-05-25 16:08:46', '1', '33', '818');
INSERT INTO `userrelease` VALUES ('727', '2017-05-25 16:08:46', '1', '69', '819');
INSERT INTO `userrelease` VALUES ('728', '2017-05-25 16:08:46', '1', '86', '820');
INSERT INTO `userrelease` VALUES ('729', '2017-05-25 16:08:46', '1', '63', '821');
INSERT INTO `userrelease` VALUES ('730', '2017-05-25 16:08:46', '1', '69', '822');
INSERT INTO `userrelease` VALUES ('731', '2017-05-25 16:08:46', '1', '93', '823');
INSERT INTO `userrelease` VALUES ('732', '2017-05-25 16:08:46', '1', '13', '824');
INSERT INTO `userrelease` VALUES ('733', '2017-05-25 16:08:46', '1', '58', '825');
INSERT INTO `userrelease` VALUES ('734', '2017-05-25 16:08:46', '1', '94', '826');
INSERT INTO `userrelease` VALUES ('735', '2017-05-25 16:08:46', '1', '91', '827');
INSERT INTO `userrelease` VALUES ('736', '2017-05-25 16:08:46', '1', '92', '828');
INSERT INTO `userrelease` VALUES ('737', '2017-05-25 16:08:46', '1', '61', '829');
INSERT INTO `userrelease` VALUES ('738', '2017-05-25 16:08:46', '1', '18', '830');
INSERT INTO `userrelease` VALUES ('739', '2017-05-25 16:08:46', '1', '13', '831');
INSERT INTO `userrelease` VALUES ('740', '2017-05-25 16:08:46', '1', '24', '832');
INSERT INTO `userrelease` VALUES ('741', '2017-05-25 16:08:46', '1', '4', '833');
INSERT INTO `userrelease` VALUES ('742', '2017-05-25 16:08:46', '1', '91', '834');
INSERT INTO `userrelease` VALUES ('743', '2017-05-25 16:08:46', '1', '48', '835');
INSERT INTO `userrelease` VALUES ('744', '2017-05-25 16:08:46', '1', '32', '836');
INSERT INTO `userrelease` VALUES ('745', '2017-05-25 16:08:46', '1', '55', '837');
INSERT INTO `userrelease` VALUES ('746', '2017-05-25 16:08:46', '1', '15', '838');
INSERT INTO `userrelease` VALUES ('747', '2017-05-25 16:08:46', '1', '28', '839');
INSERT INTO `userrelease` VALUES ('748', '2017-05-25 16:08:46', '1', '66', '840');
INSERT INTO `userrelease` VALUES ('749', '2017-05-25 16:08:46', '1', '83', '841');
INSERT INTO `userrelease` VALUES ('750', '2017-05-25 16:08:46', '1', '82', '842');
INSERT INTO `userrelease` VALUES ('751', '2017-05-25 16:08:46', '1', '50', '843');
INSERT INTO `userrelease` VALUES ('752', '2017-05-25 16:08:46', '1', '21', '844');
INSERT INTO `userrelease` VALUES ('753', '2017-05-25 16:08:46', '1', '38', '845');
INSERT INTO `userrelease` VALUES ('754', '2017-05-25 16:08:46', '1', '39', '846');
INSERT INTO `userrelease` VALUES ('755', '2017-05-25 16:08:46', '1', '18', '847');
INSERT INTO `userrelease` VALUES ('756', '2017-05-25 16:08:46', '1', '55', '848');
INSERT INTO `userrelease` VALUES ('757', '2017-05-25 16:08:46', '1', '19', '849');
INSERT INTO `userrelease` VALUES ('758', '2017-05-25 16:08:46', '1', '8', '850');
INSERT INTO `userrelease` VALUES ('759', '2017-05-25 16:08:46', '1', '34', '851');
INSERT INTO `userrelease` VALUES ('760', '2017-05-25 16:08:46', '1', '87', '852');
INSERT INTO `userrelease` VALUES ('761', '2017-05-25 16:08:46', '1', '92', '853');
INSERT INTO `userrelease` VALUES ('762', '2017-05-25 16:08:46', '1', '55', '854');
INSERT INTO `userrelease` VALUES ('763', '2017-05-25 16:08:46', '1', '6', '855');
INSERT INTO `userrelease` VALUES ('764', '2017-05-25 16:08:46', '1', '53', '856');
INSERT INTO `userrelease` VALUES ('765', '2017-05-25 16:08:46', '1', '49', '857');
INSERT INTO `userrelease` VALUES ('766', '2017-05-25 16:08:46', '1', '30', '858');
INSERT INTO `userrelease` VALUES ('767', '2017-05-25 16:08:46', '1', '69', '859');
INSERT INTO `userrelease` VALUES ('768', '2017-05-25 16:08:46', '1', '83', '860');
INSERT INTO `userrelease` VALUES ('769', '2017-05-25 16:08:46', '1', '50', '861');
INSERT INTO `userrelease` VALUES ('770', '2017-05-25 16:08:46', '1', '7', '862');
INSERT INTO `userrelease` VALUES ('771', '2017-05-25 16:08:46', '1', '81', '863');
INSERT INTO `userrelease` VALUES ('772', '2017-05-25 16:08:46', '1', '40', '864');
INSERT INTO `userrelease` VALUES ('773', '2017-05-25 16:08:46', '1', '49', '865');
INSERT INTO `userrelease` VALUES ('774', '2017-05-25 16:08:46', '1', '97', '866');
INSERT INTO `userrelease` VALUES ('775', '2017-05-25 16:08:46', '1', '24', '867');
INSERT INTO `userrelease` VALUES ('776', '2017-05-25 16:08:46', '1', '47', '868');
INSERT INTO `userrelease` VALUES ('777', '2017-05-25 16:08:46', '1', '26', '869');
INSERT INTO `userrelease` VALUES ('778', '2017-05-25 16:08:46', '1', '31', '870');
INSERT INTO `userrelease` VALUES ('779', '2017-05-25 16:08:46', '1', '67', '871');
INSERT INTO `userrelease` VALUES ('780', '2017-05-25 16:08:46', '1', '93', '872');
INSERT INTO `userrelease` VALUES ('781', '2017-05-25 16:08:46', '1', '84', '873');
INSERT INTO `userrelease` VALUES ('782', '2017-05-25 16:08:46', '1', '84', '874');
INSERT INTO `userrelease` VALUES ('783', '2017-05-25 16:08:46', '1', '51', '875');
INSERT INTO `userrelease` VALUES ('784', '2017-05-25 16:08:46', '1', '24', '876');
INSERT INTO `userrelease` VALUES ('785', '2017-05-25 16:08:46', '1', '98', '877');
INSERT INTO `userrelease` VALUES ('786', '2017-05-25 16:08:46', '1', '28', '878');
INSERT INTO `userrelease` VALUES ('787', '2017-05-25 16:08:46', '1', '66', '879');
INSERT INTO `userrelease` VALUES ('788', '2017-05-25 16:08:46', '1', '100', '880');
INSERT INTO `userrelease` VALUES ('789', '2017-05-25 16:08:46', '1', '63', '881');
INSERT INTO `userrelease` VALUES ('790', '2017-05-25 16:08:46', '1', '36', '882');
INSERT INTO `userrelease` VALUES ('791', '2017-05-25 16:08:46', '1', '84', '883');
INSERT INTO `userrelease` VALUES ('792', '2017-05-25 16:08:46', '1', '69', '884');
INSERT INTO `userrelease` VALUES ('793', '2017-05-25 16:08:46', '1', '6', '885');
INSERT INTO `userrelease` VALUES ('794', '2017-05-25 16:08:46', '1', '29', '886');
INSERT INTO `userrelease` VALUES ('795', '2017-05-25 16:08:46', '1', '84', '887');
INSERT INTO `userrelease` VALUES ('796', '2017-05-25 16:08:46', '1', '23', '888');
INSERT INTO `userrelease` VALUES ('797', '2017-05-25 16:08:46', '1', '53', '889');
INSERT INTO `userrelease` VALUES ('798', '2017-05-25 16:08:46', '1', '52', '890');
INSERT INTO `userrelease` VALUES ('799', '2017-05-25 16:08:46', '1', '91', '891');
INSERT INTO `userrelease` VALUES ('800', '2017-05-25 16:08:46', '1', '17', '892');
INSERT INTO `userrelease` VALUES ('801', '2017-05-25 16:08:46', '1', '37', '893');
INSERT INTO `userrelease` VALUES ('802', '2017-05-25 16:08:46', '1', '3', '894');
INSERT INTO `userrelease` VALUES ('803', '2017-05-25 16:08:46', '1', '64', '895');
INSERT INTO `userrelease` VALUES ('804', '2017-05-25 16:08:46', '1', '93', '896');
INSERT INTO `userrelease` VALUES ('805', '2017-05-25 16:08:46', '1', '31', '897');
INSERT INTO `userrelease` VALUES ('806', '2017-05-25 16:08:46', '1', '11', '898');
INSERT INTO `userrelease` VALUES ('807', '2017-05-25 16:08:46', '1', '90', '899');
INSERT INTO `userrelease` VALUES ('808', '2017-05-25 16:08:46', '1', '21', '900');
INSERT INTO `userrelease` VALUES ('809', '2017-05-25 16:08:46', '1', '94', '901');
INSERT INTO `userrelease` VALUES ('810', '2017-05-25 16:08:46', '1', '74', '902');
INSERT INTO `userrelease` VALUES ('811', '2017-05-25 16:08:46', '1', '71', '903');
INSERT INTO `userrelease` VALUES ('812', '2017-05-25 16:08:46', '1', '68', '904');
INSERT INTO `userrelease` VALUES ('813', '2017-05-25 16:08:47', '1', '73', '905');
INSERT INTO `userrelease` VALUES ('814', '2017-05-25 16:08:47', '1', '96', '906');
INSERT INTO `userrelease` VALUES ('815', '2017-05-25 16:08:47', '1', '66', '907');
INSERT INTO `userrelease` VALUES ('816', '2017-05-25 16:08:47', '1', '100', '908');
INSERT INTO `userrelease` VALUES ('817', '2017-05-25 16:08:47', '1', '97', '909');
INSERT INTO `userrelease` VALUES ('818', '2017-05-25 16:08:47', '1', '74', '910');
INSERT INTO `userrelease` VALUES ('819', '2017-05-25 16:08:47', '1', '24', '911');
INSERT INTO `userrelease` VALUES ('820', '2017-05-25 16:08:47', '1', '23', '912');
INSERT INTO `userrelease` VALUES ('821', '2017-05-25 16:08:47', '1', '73', '913');
INSERT INTO `userrelease` VALUES ('822', '2017-05-25 16:08:47', '1', '80', '914');
INSERT INTO `userrelease` VALUES ('823', '2017-05-25 16:08:47', '1', '90', '915');
INSERT INTO `userrelease` VALUES ('824', '2017-05-25 16:08:47', '1', '18', '916');
INSERT INTO `userrelease` VALUES ('825', '2017-05-25 16:08:47', '1', '30', '917');
INSERT INTO `userrelease` VALUES ('826', '2017-05-25 16:08:47', '1', '55', '918');
INSERT INTO `userrelease` VALUES ('827', '2017-05-25 16:08:47', '1', '47', '919');
INSERT INTO `userrelease` VALUES ('828', '2017-05-25 16:08:47', '1', '74', '920');
INSERT INTO `userrelease` VALUES ('829', '2017-05-25 16:08:47', '1', '34', '921');
INSERT INTO `userrelease` VALUES ('830', '2017-05-25 16:08:47', '1', '6', '922');
INSERT INTO `userrelease` VALUES ('831', '2017-05-25 16:08:47', '1', '54', '923');
INSERT INTO `userrelease` VALUES ('832', '2017-05-25 16:08:47', '1', '66', '924');
INSERT INTO `userrelease` VALUES ('833', '2017-05-25 16:08:47', '1', '7', '925');
INSERT INTO `userrelease` VALUES ('834', '2017-05-25 16:08:47', '1', '22', '926');
INSERT INTO `userrelease` VALUES ('835', '2017-05-25 16:08:47', '1', '31', '927');
INSERT INTO `userrelease` VALUES ('836', '2017-05-25 16:08:47', '1', '22', '928');
INSERT INTO `userrelease` VALUES ('837', '2017-05-25 16:08:47', '1', '80', '929');
INSERT INTO `userrelease` VALUES ('838', '2017-05-25 16:08:47', '1', '26', '930');
INSERT INTO `userrelease` VALUES ('839', '2017-05-25 16:08:47', '1', '20', '931');
INSERT INTO `userrelease` VALUES ('840', '2017-05-25 16:08:47', '1', '9', '932');
INSERT INTO `userrelease` VALUES ('841', '2017-05-25 16:08:47', '1', '49', '933');
INSERT INTO `userrelease` VALUES ('842', '2017-05-25 16:08:47', '1', '70', '934');
INSERT INTO `userrelease` VALUES ('843', '2017-05-25 16:08:47', '1', '30', '935');
INSERT INTO `userrelease` VALUES ('844', '2017-05-25 16:08:47', '1', '2', '936');
INSERT INTO `userrelease` VALUES ('845', '2017-05-25 16:08:47', '1', '86', '937');
INSERT INTO `userrelease` VALUES ('846', '2017-05-25 16:08:47', '1', '4', '938');
INSERT INTO `userrelease` VALUES ('847', '2017-05-25 16:08:47', '1', '38', '939');
INSERT INTO `userrelease` VALUES ('848', '2017-05-25 16:08:47', '1', '41', '940');
INSERT INTO `userrelease` VALUES ('849', '2017-05-25 16:08:47', '1', '87', '941');
INSERT INTO `userrelease` VALUES ('850', '2017-05-25 16:08:47', '1', '1', '942');
INSERT INTO `userrelease` VALUES ('851', '2017-05-25 16:08:47', '1', '3', '943');
INSERT INTO `userrelease` VALUES ('852', '2017-05-25 16:08:47', '1', '49', '944');
INSERT INTO `userrelease` VALUES ('853', '2017-05-25 16:08:47', '1', '9', '945');
INSERT INTO `userrelease` VALUES ('854', '2017-05-25 16:08:47', '1', '1', '946');
INSERT INTO `userrelease` VALUES ('855', '2017-05-25 16:08:47', '1', '46', '947');
INSERT INTO `userrelease` VALUES ('856', '2017-05-25 16:08:47', '1', '84', '948');
INSERT INTO `userrelease` VALUES ('857', '2017-05-25 16:08:47', '1', '59', '949');
INSERT INTO `userrelease` VALUES ('858', '2017-05-25 16:08:47', '1', '65', '950');
INSERT INTO `userrelease` VALUES ('859', '2017-05-25 16:08:47', '1', '50', '951');
INSERT INTO `userrelease` VALUES ('860', '2017-05-25 16:08:47', '1', '30', '952');
INSERT INTO `userrelease` VALUES ('861', '2017-05-25 16:08:47', '1', '8', '953');
INSERT INTO `userrelease` VALUES ('862', '2017-05-25 16:08:47', '1', '62', '954');
INSERT INTO `userrelease` VALUES ('863', '2017-05-25 16:08:47', '1', '28', '955');
INSERT INTO `userrelease` VALUES ('864', '2017-05-25 16:08:47', '1', '79', '956');
INSERT INTO `userrelease` VALUES ('865', '2017-05-25 16:08:47', '1', '39', '957');
INSERT INTO `userrelease` VALUES ('866', '2017-05-25 16:08:47', '1', '87', '958');
INSERT INTO `userrelease` VALUES ('867', '2017-05-25 16:08:47', '1', '58', '959');
INSERT INTO `userrelease` VALUES ('868', '2017-05-25 16:08:47', '1', '68', '960');
INSERT INTO `userrelease` VALUES ('869', '2017-05-25 16:08:47', '1', '42', '961');
INSERT INTO `userrelease` VALUES ('870', '2017-05-25 16:08:47', '1', '25', '962');
INSERT INTO `userrelease` VALUES ('871', '2017-05-25 16:08:47', '1', '48', '963');
INSERT INTO `userrelease` VALUES ('872', '2017-05-25 16:08:47', '1', '27', '964');
INSERT INTO `userrelease` VALUES ('873', '2017-05-25 16:08:47', '1', '88', '965');
INSERT INTO `userrelease` VALUES ('874', '2017-05-25 16:08:47', '1', '88', '966');
INSERT INTO `userrelease` VALUES ('875', '2017-05-25 16:08:47', '1', '40', '967');
INSERT INTO `userrelease` VALUES ('876', '2017-05-25 16:08:47', '1', '84', '968');
INSERT INTO `userrelease` VALUES ('877', '2017-05-25 16:08:47', '1', '61', '969');
INSERT INTO `userrelease` VALUES ('878', '2017-05-25 16:08:47', '1', '91', '970');
INSERT INTO `userrelease` VALUES ('879', '2017-05-25 16:08:47', '1', '29', '971');
INSERT INTO `userrelease` VALUES ('880', '2017-05-25 16:08:47', '1', '28', '972');
INSERT INTO `userrelease` VALUES ('881', '2017-05-25 16:08:47', '1', '75', '973');
INSERT INTO `userrelease` VALUES ('882', '2017-05-25 16:08:47', '1', '60', '974');
INSERT INTO `userrelease` VALUES ('883', '2017-05-25 16:08:47', '1', '43', '975');
INSERT INTO `userrelease` VALUES ('884', '2017-05-25 16:08:47', '1', '14', '976');
INSERT INTO `userrelease` VALUES ('885', '2017-05-25 16:08:47', '1', '75', '977');
INSERT INTO `userrelease` VALUES ('886', '2017-05-25 16:08:47', '1', '93', '978');
INSERT INTO `userrelease` VALUES ('887', '2017-05-25 16:08:47', '1', '54', '979');
INSERT INTO `userrelease` VALUES ('888', '2017-05-25 16:08:47', '1', '33', '980');
INSERT INTO `userrelease` VALUES ('889', '2017-05-25 16:08:47', '1', '55', '981');
INSERT INTO `userrelease` VALUES ('890', '2017-05-25 16:08:47', '1', '26', '982');
INSERT INTO `userrelease` VALUES ('891', '2017-05-25 16:08:47', '1', '37', '983');
INSERT INTO `userrelease` VALUES ('892', '2017-05-25 16:08:47', '1', '84', '984');
INSERT INTO `userrelease` VALUES ('893', '2017-05-25 16:08:47', '1', '3', '985');
INSERT INTO `userrelease` VALUES ('894', '2017-05-25 16:08:47', '1', '99', '986');
INSERT INTO `userrelease` VALUES ('895', '2017-05-25 16:08:47', '1', '69', '987');
INSERT INTO `userrelease` VALUES ('896', '2017-05-25 16:08:47', '1', '46', '988');
INSERT INTO `userrelease` VALUES ('897', '2017-05-25 16:08:47', '1', '54', '989');
INSERT INTO `userrelease` VALUES ('898', '2017-05-25 16:08:47', '1', '59', '990');
INSERT INTO `userrelease` VALUES ('899', '2017-05-25 16:08:47', '1', '43', '991');
INSERT INTO `userrelease` VALUES ('900', '2017-05-25 16:08:47', '1', '82', '992');
INSERT INTO `userrelease` VALUES ('901', '2017-05-25 16:08:47', '1', '96', '993');
INSERT INTO `userrelease` VALUES ('902', '2017-05-25 16:08:47', '1', '89', '994');
INSERT INTO `userrelease` VALUES ('903', '2017-05-25 16:08:47', '1', '63', '995');
INSERT INTO `userrelease` VALUES ('904', '2017-05-25 16:08:47', '1', '55', '996');
INSERT INTO `userrelease` VALUES ('905', '2017-05-25 16:08:47', '1', '91', '997');
INSERT INTO `userrelease` VALUES ('906', '2017-05-25 16:08:47', '1', '64', '998');
INSERT INTO `userrelease` VALUES ('907', '2017-05-25 16:08:47', '1', '96', '999');
INSERT INTO `userrelease` VALUES ('908', '2017-05-25 16:08:47', '1', '45', '1000');
INSERT INTO `userrelease` VALUES ('909', '2017-05-25 16:08:47', '1', '15', '1001');
INSERT INTO `userrelease` VALUES ('910', '2017-05-25 16:08:47', '1', '45', '1002');
INSERT INTO `userrelease` VALUES ('911', '2017-05-25 16:08:47', '1', '25', '1003');
INSERT INTO `userrelease` VALUES ('912', '2017-05-25 16:08:47', '1', '95', '1004');
INSERT INTO `userrelease` VALUES ('913', '2017-05-25 16:08:47', '1', '69', '1005');
INSERT INTO `userrelease` VALUES ('914', '2017-05-25 16:08:47', '1', '100', '1006');
INSERT INTO `userrelease` VALUES ('915', '2017-05-25 16:08:47', '1', '21', '1007');
INSERT INTO `userrelease` VALUES ('916', '2017-05-25 16:08:47', '1', '61', '1008');
INSERT INTO `userrelease` VALUES ('917', '2017-05-25 16:08:47', '1', '56', '1009');
INSERT INTO `userrelease` VALUES ('918', '2017-05-25 16:08:47', '1', '43', '1010');
INSERT INTO `userrelease` VALUES ('919', '2017-05-25 16:08:47', '1', '7', '1011');
INSERT INTO `userrelease` VALUES ('920', '2017-05-25 16:08:47', '1', '39', '1012');
INSERT INTO `userrelease` VALUES ('921', '2017-05-25 16:08:47', '1', '87', '1013');
INSERT INTO `userrelease` VALUES ('922', '2017-05-25 16:08:47', '1', '59', '1014');
INSERT INTO `userrelease` VALUES ('923', '2017-05-25 16:08:47', '1', '64', '1015');
INSERT INTO `userrelease` VALUES ('924', '2017-05-25 16:08:47', '1', '32', '1016');
INSERT INTO `userrelease` VALUES ('925', '2017-05-25 16:08:47', '1', '36', '1017');
INSERT INTO `userrelease` VALUES ('926', '2017-05-25 16:08:47', '1', '34', '1018');
INSERT INTO `userrelease` VALUES ('927', '2017-05-25 16:08:47', '1', '67', '1019');
INSERT INTO `userrelease` VALUES ('928', '2017-05-25 16:08:47', '1', '36', '1020');
INSERT INTO `userrelease` VALUES ('929', '2017-05-25 16:08:47', '1', '47', '1021');
INSERT INTO `userrelease` VALUES ('930', '2017-05-25 16:08:47', '1', '86', '1022');
INSERT INTO `userrelease` VALUES ('931', '2017-05-25 16:08:47', '1', '36', '1023');
INSERT INTO `userrelease` VALUES ('932', '2017-05-25 16:08:47', '1', '5', '1024');
INSERT INTO `userrelease` VALUES ('933', '2017-05-25 16:08:47', '1', '98', '1025');
INSERT INTO `userrelease` VALUES ('934', '2017-05-25 16:08:47', '1', '52', '1026');
INSERT INTO `userrelease` VALUES ('935', '2017-05-25 16:08:47', '1', '85', '1027');
INSERT INTO `userrelease` VALUES ('936', '2017-05-25 16:08:47', '1', '53', '1028');
INSERT INTO `userrelease` VALUES ('937', '2017-05-25 16:08:47', '1', '1', '1029');
INSERT INTO `userrelease` VALUES ('938', '2017-05-25 16:08:47', '1', '89', '1030');
INSERT INTO `userrelease` VALUES ('939', '2017-05-25 16:08:47', '1', '26', '1031');
INSERT INTO `userrelease` VALUES ('940', '2017-05-25 16:08:47', '1', '50', '1032');
INSERT INTO `userrelease` VALUES ('941', '2017-05-25 16:08:48', '1', '9', '1033');
INSERT INTO `userrelease` VALUES ('942', '2017-05-25 16:08:48', '1', '71', '1034');
INSERT INTO `userrelease` VALUES ('943', '2017-05-25 16:08:48', '1', '47', '1035');
INSERT INTO `userrelease` VALUES ('944', '2017-05-25 16:08:48', '1', '3', '1036');
INSERT INTO `userrelease` VALUES ('945', '2017-05-25 16:08:48', '1', '79', '1037');
INSERT INTO `userrelease` VALUES ('946', '2017-05-25 16:08:48', '1', '37', '1038');
INSERT INTO `userrelease` VALUES ('947', '2017-05-25 16:08:48', '1', '76', '1039');
INSERT INTO `userrelease` VALUES ('948', '2017-05-25 16:08:48', '1', '11', '1040');
INSERT INTO `userrelease` VALUES ('949', '2017-05-25 16:08:48', '1', '47', '1041');
INSERT INTO `userrelease` VALUES ('950', '2017-05-25 16:08:48', '1', '95', '1042');
INSERT INTO `userrelease` VALUES ('951', '2017-05-25 16:08:48', '1', '29', '1043');
INSERT INTO `userrelease` VALUES ('952', '2017-05-25 16:08:48', '1', '24', '1044');
INSERT INTO `userrelease` VALUES ('953', '2017-05-25 16:08:48', '1', '26', '1045');
INSERT INTO `userrelease` VALUES ('954', '2017-05-25 16:08:48', '1', '16', '1046');
INSERT INTO `userrelease` VALUES ('955', '2017-05-25 16:08:48', '1', '36', '1047');
INSERT INTO `userrelease` VALUES ('956', '2017-05-25 16:08:48', '1', '89', '1048');
INSERT INTO `userrelease` VALUES ('957', '2017-05-25 16:08:48', '1', '10', '1049');
INSERT INTO `userrelease` VALUES ('958', '2017-05-25 16:08:48', '1', '26', '1050');
INSERT INTO `userrelease` VALUES ('959', '2017-05-25 16:08:48', '1', '41', '1051');
INSERT INTO `userrelease` VALUES ('960', '2017-05-25 16:08:48', '1', '82', '1052');
INSERT INTO `userrelease` VALUES ('961', '2017-05-25 16:08:48', '1', '56', '1053');
INSERT INTO `userrelease` VALUES ('962', '2017-05-25 16:08:48', '1', '84', '1054');
INSERT INTO `userrelease` VALUES ('963', '2017-05-25 16:08:48', '1', '81', '1055');
INSERT INTO `userrelease` VALUES ('964', '2017-05-25 16:08:48', '1', '24', '1056');
INSERT INTO `userrelease` VALUES ('965', '2017-05-25 16:08:48', '1', '81', '1057');
INSERT INTO `userrelease` VALUES ('966', '2017-05-25 16:08:48', '1', '88', '1058');
INSERT INTO `userrelease` VALUES ('967', '2017-05-25 16:08:48', '1', '39', '1059');
INSERT INTO `userrelease` VALUES ('968', '2017-05-25 16:08:48', '1', '21', '1060');
INSERT INTO `userrelease` VALUES ('969', '2017-05-25 16:08:48', '1', '87', '1061');
INSERT INTO `userrelease` VALUES ('970', '2017-05-25 16:08:48', '1', '29', '1062');
INSERT INTO `userrelease` VALUES ('971', '2017-05-25 16:08:48', '1', '15', '1063');
INSERT INTO `userrelease` VALUES ('972', '2017-05-25 16:08:48', '1', '22', '1064');
INSERT INTO `userrelease` VALUES ('973', '2017-05-25 16:08:48', '1', '22', '1065');
INSERT INTO `userrelease` VALUES ('974', '2017-05-25 16:08:48', '1', '80', '1066');
INSERT INTO `userrelease` VALUES ('975', '2017-05-25 16:08:48', '1', '24', '1067');
INSERT INTO `userrelease` VALUES ('976', '2017-05-25 16:08:48', '1', '61', '1068');
INSERT INTO `userrelease` VALUES ('977', '2017-05-25 16:08:48', '1', '15', '1069');
INSERT INTO `userrelease` VALUES ('978', '2017-05-25 16:08:48', '1', '42', '1070');
INSERT INTO `userrelease` VALUES ('979', '2017-05-25 16:08:48', '1', '89', '1071');
INSERT INTO `userrelease` VALUES ('980', '2017-05-25 16:08:48', '1', '71', '1072');
INSERT INTO `userrelease` VALUES ('981', '2017-05-25 16:08:48', '1', '76', '1073');
INSERT INTO `userrelease` VALUES ('982', '2017-05-25 16:08:48', '1', '14', '1074');
INSERT INTO `userrelease` VALUES ('983', '2017-05-25 16:08:48', '1', '4', '1075');
INSERT INTO `userrelease` VALUES ('984', '2017-05-25 16:08:48', '1', '22', '1076');
INSERT INTO `userrelease` VALUES ('985', '2017-05-25 16:08:48', '1', '70', '1077');
INSERT INTO `userrelease` VALUES ('986', '2017-05-25 16:08:48', '1', '53', '1078');
INSERT INTO `userrelease` VALUES ('987', '2017-05-25 16:08:48', '1', '45', '1079');
INSERT INTO `userrelease` VALUES ('988', '2017-05-25 16:08:48', '1', '20', '1080');
INSERT INTO `userrelease` VALUES ('989', '2017-05-25 16:08:48', '1', '20', '1081');
INSERT INTO `userrelease` VALUES ('990', '2017-05-25 16:08:48', '1', '95', '1082');
INSERT INTO `userrelease` VALUES ('991', '2017-05-25 16:08:48', '1', '51', '1083');
INSERT INTO `userrelease` VALUES ('992', '2017-05-25 16:08:48', '1', '42', '1084');
INSERT INTO `userrelease` VALUES ('993', '2017-05-25 16:08:48', '1', '30', '1085');
INSERT INTO `userrelease` VALUES ('994', '2017-05-25 16:08:48', '1', '85', '1086');
INSERT INTO `userrelease` VALUES ('995', '2017-05-25 16:08:48', '1', '37', '1087');
INSERT INTO `userrelease` VALUES ('996', '2017-05-25 16:08:48', '1', '80', '1088');
INSERT INTO `userrelease` VALUES ('997', '2017-05-25 16:08:48', '1', '59', '1089');
INSERT INTO `userrelease` VALUES ('998', '2017-05-25 16:08:48', '1', '17', '1090');
INSERT INTO `userrelease` VALUES ('999', '2017-05-25 16:08:48', '1', '75', '1091');
INSERT INTO `userrelease` VALUES ('1000', '2017-05-25 16:08:48', '1', '75', '1092');
INSERT INTO `userrelease` VALUES ('1001', '2017-05-25 16:08:48', '1', '68', '1093');
INSERT INTO `userrelease` VALUES ('1002', '2017-05-25 16:17:15', '1', '7', '1094');
INSERT INTO `userrelease` VALUES ('1003', '2017-05-25 16:18:14', '1', '7', '1095');
INSERT INTO `userrelease` VALUES ('1004', '2017-05-25 16:24:46', '1', '7', '1096');
INSERT INTO `userrelease` VALUES ('1005', '2017-06-02 10:00:59', '1', '7', '1097');

-- ----------------------------
-- Table structure for userstate
-- ----------------------------
DROP TABLE IF EXISTS `userstate`;
CREATE TABLE `userstate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `credit` int(11) NOT NULL DEFAULT '80',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `modified` datetime DEFAULT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userstate
-- ----------------------------

-- ----------------------------
-- Table structure for userwant
-- ----------------------------
DROP TABLE IF EXISTS `userwant`;
CREATE TABLE `userwant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime DEFAULT NULL,
  `display` int(11) NOT NULL DEFAULT '1',
  `name` varchar(50) NOT NULL,
  `sort` int(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userwant
-- ----------------------------
INSERT INTO `userwant` VALUES ('1', '2017-05-21 21:03:38', '1', '龙年限定', '1', '1', '1.00', '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', '7');
INSERT INTO `userwant` VALUES ('2', '2017-05-21 21:03:38', '1', '龙年限定d', '2', '1', '1.00', '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', '7');
INSERT INTO `userwant` VALUES ('3', '2017-05-21 21:03:38', '1', '龙年限定c', '5', '1', '1.00', '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', '2');
INSERT INTO `userwant` VALUES ('4', '2017-05-21 21:03:38', '1', '龙年限定c', '79', '1', '1.00', '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', '3');
INSERT INTO `userwant` VALUES ('5', '2017-05-21 21:03:38', '1', '龙年限定c', '1', '1', '1.00', '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', '1');
INSERT INTO `userwant` VALUES ('6', '2017-05-21 21:03:38', '1', '龙年限定x', '50', '1', '1.00', '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', '7');
INSERT INTO `userwant` VALUES ('7', '2017-05-21 21:03:38', '1', '龙年限定c', '1', '1', '1.00', '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', '7');
INSERT INTO `userwant` VALUES ('8', '2017-05-21 21:03:38', '1', '龙年限定g', '44', '1', '1.00', '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', '4');
INSERT INTO `userwant` VALUES ('9', '2017-05-21 21:03:38', '1', '龙年限定 d', '33', '1', '1.00', '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', '7');
INSERT INTO `userwant` VALUES ('10', '2017-05-21 21:03:38', '1', '龙年限定b', '78', '1', '1.00', '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', '5');
INSERT INTO `userwant` VALUES ('11', '2017-05-21 21:03:38', '1', '龙年限定g', '36', '1', '1.00', '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', '6');
INSERT INTO `userwant` VALUES ('12', '2017-05-21 21:03:38', '1', '龙年限定j', '66', '1', '1.00', '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', '7');

-- ----------------------------
-- Table structure for wantcontext
-- ----------------------------
DROP TABLE IF EXISTS `wantcontext`;
CREATE TABLE `wantcontext` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime DEFAULT NULL,
  `uwid` int(11) NOT NULL,
  `context` varchar(255) NOT NULL,
  `display` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wantcontext
-- ----------------------------
