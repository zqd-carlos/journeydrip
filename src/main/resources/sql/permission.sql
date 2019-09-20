/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50515
 Source Host           : localhost:3306
 Source Schema         : journeydrip

 Target Server Type    : MySQL
 Target Server Version : 50515
 File Encoding         : 65001

 Date: 20/09/2019 15:38:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `roleid` int(11) NULL DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (1, '/sanalyze', 1, '查看站长统计的权利');
INSERT INTO `permission` VALUES (2, '/readall', 2, '查看普通网站');

SET FOREIGN_KEY_CHECKS = 1;
