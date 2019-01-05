/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50641
 Source Host           : 127.0.0.1:3306
 Source Schema         : ems

 Target Server Type    : MySQL
 Target Server Version : 50641
 File Encoding         : 65001

 Date: 06/01/2019 07:02:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ems_exam
-- ----------------------------
DROP TABLE IF EXISTS `ems_exam`;
CREATE TABLE `ems_exam` (
  `exam_sn` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `exam_id` char(20) NOT NULL,
  `exam_name` char(20) NOT NULL,
  `exam_date` char(10) DEFAULT NULL,
  `exam_type` int(1) NOT NULL,
  `exam_status` int(1) DEFAULT NULL,
  `create_date` timestamp(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  `is_delete` int(1) DEFAULT NULL,
  PRIMARY KEY (`exam_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for ems_score
-- ----------------------------
DROP TABLE IF EXISTS `ems_score`;
CREATE TABLE `ems_score` (
  `score_sn` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `score_value` int(11) DEFAULT NULL,
  `exam_sn` int(11) NOT NULL,
  `user_sn` int(11) NOT NULL,
  `create_date` timestamp(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  `is_delete` int(1) DEFAULT NULL,
  PRIMARY KEY (`score_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for ems_user
-- ----------------------------
DROP TABLE IF EXISTS `ems_user`;
CREATE TABLE `ems_user` (
  `user_sn` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` char(20) NOT NULL,
  `user_name` char(10) NOT NULL,
  `user_gender` int(1) DEFAULT '0' COMMENT '1 for male\n2 for female',
  `user_age` int(2) DEFAULT NULL,
  `user_birthday` char(10) DEFAULT NULL,
  `user_phone` char(20) DEFAULT NULL,
  `user_type` int(1) NOT NULL,
  `user_entry_date` char(10) DEFAULT NULL,
  `user_school_system` char(5) DEFAULT NULL,
  `user_faculty` char(20) DEFAULT NULL,
  `user_major` char(20) DEFAULT NULL,
  `user_status` int(1) DEFAULT '1' COMMENT '1 for normal\n2 for graduation\n3 for suspension',
  `create_date` timestamp(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  `is_delete` int(1) DEFAULT NULL,
  PRIMARY KEY (`user_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;
