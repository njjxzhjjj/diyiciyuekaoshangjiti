/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50528
 Source Host           : localhost:3306
 Source Schema         : yuekao1

 Target Server Type    : MySQL
 Target Server Version : 50528
 File Encoding         : 65001

 Date: 08/08/2021 10:34:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_business
-- ----------------------------
DROP TABLE IF EXISTS `t_business`;
CREATE TABLE `t_business`  (
  `bId` int(11) NOT NULL AUTO_INCREMENT,
  `bNum` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bType` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bMark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`bId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_business
-- ----------------------------
INSERT INTO `t_business` VALUES (12, '22', '信用卡', '办理卡');
INSERT INTO `t_business` VALUES (13, '13', '信用卡', '办理');
INSERT INTO `t_business` VALUES (14, '14', '信用卡', '办卡');
INSERT INTO `t_business` VALUES (19, '22', '信用卡', '办理');

-- ----------------------------
-- Table structure for t_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_detail`;
CREATE TABLE `t_detail`  (
  `bdId` int(11) NOT NULL,
  `bId` int(11) DEFAULT NULL,
  `bdName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bdPerson` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`bdId`) USING BTREE,
  INDEX `bId`(`bId`) USING BTREE,
  CONSTRAINT `bId` FOREIGN KEY (`bId`) REFERENCES `t_business` (`bId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_detail
-- ----------------------------
INSERT INTO `t_detail` VALUES (1, 12, '办理卡', '小王');
INSERT INTO `t_detail` VALUES (2, 13, '农行', '小李');
INSERT INTO `t_detail` VALUES (3, 14, '信用卡', '小宁');
INSERT INTO `t_detail` VALUES (4, 19, '金燕卡', '小黑');

SET FOREIGN_KEY_CHECKS = 1;
