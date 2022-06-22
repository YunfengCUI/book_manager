/*
 Navicat Premium Data Transfer

 Source Server         : 中软
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : testbook

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 22/06/2022 22:18:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `aid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET gbk COLLATE gbk_bin NOT NULL,
  `name` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `password` varchar(64) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT 1,
  `lend_num` int NULL DEFAULT NULL,
  `max_num` int NULL DEFAULT NULL,
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, '123', '12355678', '123', '12348', '1234558', 1, 0, 5);
INSERT INTO `admin` VALUES (2, '13', '13', '13', '13', '13', 2, 13, 13);
INSERT INTO `admin` VALUES (4, '456', '456', '456', '456', '456', 1, 30, 5);
INSERT INTO `admin` VALUES (5, '543', '5', '5', '5', '5', 1, 5, 5);

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `bid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(205) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `card` varchar(205) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `autho` varchar(205) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `num` int NOT NULL,
  `press` varchar(205) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`bid`) USING BTREE,
  UNIQUE INDEX `ISBN`(`card`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (4, '12', '12', '1', 1, '1', '3234');
INSERT INTO `book` VALUES (2, '5', '5', '5', 5, '5', '323');
INSERT INTO `book` VALUES (3, '6', '6', '4', 4, '4', '53');
INSERT INTO `book` VALUES (5, '9', '9', '9', 9, '9', '3234');

-- ----------------------------
-- Table structure for booktype
-- ----------------------------
DROP TABLE IF EXISTS `booktype`;
CREATE TABLE `booktype`  (
  `tid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of booktype
-- ----------------------------
INSERT INTO `booktype` VALUES (1, '3234');
INSERT INTO `booktype` VALUES (2, '53');
INSERT INTO `booktype` VALUES (4, '6');

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history`  (
  `hid` int NOT NULL AUTO_INCREMENT,
  `aid` int NULL DEFAULT NULL,
  `bid` int NULL DEFAULT NULL,
  `card` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bookname` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `adminname` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `begintime` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `endtime` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`hid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of history
-- ----------------------------
INSERT INTO `history` VALUES (1, 1, 2, '5', '5', '123', '123', '2009-2-10', '2019-3-10', 0);
INSERT INTO `history` VALUES (2, 1, 3, '6', '6', '123', '123', '2018-2-10', '2019-2-10', 0);
INSERT INTO `history` VALUES (3, 1, 2, '5', '5', '123', '1235567', '1019-2-11', '2019-2-11', 0);
INSERT INTO `history` VALUES (4, 4, 3, '6', '6', '456', '456', '1118-2-11', '2018-2-12', 0);
INSERT INTO `history` VALUES (5, 1, 4, '1', '1', '123', '1235567', '2022-2-12', '2022-2-16', 0);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `stu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `pno` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('张三', 'name1111', NULL);
INSERT INTO `student` VALUES ('张思', 'name3', NULL);

SET FOREIGN_KEY_CHECKS = 1;
