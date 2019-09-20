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

 Date: 20/09/2019 15:38:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for visited
-- ----------------------------
DROP TABLE IF EXISTS `visited`;
CREATE TABLE `visited`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '访问者的id',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '访问者的用户名',
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '访问的时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of visited
-- ----------------------------
INSERT INTO `visited` VALUES (1, 'root', '2019-07-17 08:35:06');
INSERT INTO `visited` VALUES (2, 'root', '2019-07-17 10:25:00');
INSERT INTO `visited` VALUES (3, 'root', '2019-07-17 14:39:06');
INSERT INTO `visited` VALUES (4, 'root', '2019-09-15 16:36:27');
INSERT INTO `visited` VALUES (5, 'root', '2019-09-15 20:20:37');
INSERT INTO `visited` VALUES (6, 'root', '2019-09-16 20:41:53');

SET FOREIGN_KEY_CHECKS = 1;
