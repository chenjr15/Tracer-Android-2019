/*
Navicat MySQL Data Transfer

Source Server         : .
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : trackerpj

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-03-22 11:13:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dev_config
-- ----------------------------
DROP TABLE IF EXISTS `dev_config`;
CREATE TABLE `dev_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deviceid` varchar(255) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `reportcycle` int(11) DEFAULT NULL,
  `locatemode` int(11) DEFAULT NULL,
  `shakeThreshold` float DEFAULT NULL,
  `maxTempThreshold` int(11) DEFAULT NULL,
  `minTempThreshold` int(11) DEFAULT NULL,
  `maxHumidityThreshold` int(11) DEFAULT NULL,
  `minHumidityThreshold` int(11) DEFAULT NULL,
  `sensorSampleCycle` int(11) DEFAULT NULL,
  `sensorReportCycle` int(11) DEFAULT NULL,
  `updateUser` varchar(50) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `effect` int(11) DEFAULT NULL,
  `isdel` int(11) DEFAULT NULL,
  `blank1` varchar(100) DEFAULT NULL,
  `blank2` varchar(100) DEFAULT NULL,
  `blank3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  CONSTRAINT `dev_config_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `sys_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dev_config
-- ----------------------------
INSERT INTO `dev_config` VALUES ('3', '035899020', '11', '10800', '0', '8', '40', '-40', '80', '50', '60', '120', 'admin', '2019-03-14 16:54:53', '1', '1', '0', null, null, null);
INSERT INTO `dev_config` VALUES ('4', '032219917', '11', '10800', '0', '8', '40', '-40', '80', '50', '60', '120', 'admin', '2019-03-14 16:55:05', '1', '1', '0', null, null, null);
INSERT INTO `dev_config` VALUES ('5', '031883241', '11', '86400', '0', '8', '40', '-40', '80', '50', '60', '720', null, null, '1', '0', '0', null, null, null);
INSERT INTO `dev_config` VALUES ('6', '031663350', '11', '86400', '0', '8', '40', '-40', '80', '50', '60', '720', null, null, '1', '0', '0', null, null, null);
INSERT INTO `dev_config` VALUES ('8', '032219930', '14', '86400', '0', '8', '40', '-40', '80', '50', '60', '720', null, null, '1', '0', '0', null, null, null);

-- ----------------------------
-- Table structure for dev_hi_data
-- ----------------------------
DROP TABLE IF EXISTS `dev_hi_data`;
CREATE TABLE `dev_hi_data` (
  `id` varchar(255) NOT NULL,
  `deviceid` varchar(10) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `datatime` datetime DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `mode` int(11) DEFAULT NULL,
  `latitude` varchar(10) DEFAULT NULL,
  `longitude` varchar(10) DEFAULT NULL,
  `satellite` int(11) DEFAULT NULL,
  `devSignal` int(11) DEFAULT NULL,
  `battery` int(11) DEFAULT NULL,
  `statuscode` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `alarmcode` varchar(20) DEFAULT NULL,
  `temperOut` int(11) DEFAULT NULL,
  `temperIn` int(11) DEFAULT NULL,
  `humidity` int(11) DEFAULT NULL,
  `onOff` int(11) DEFAULT NULL,
  `isdel` int(11) DEFAULT NULL,
  `blank1` varchar(100) DEFAULT NULL,
  `blank2` varchar(100) DEFAULT NULL,
  `blank3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  CONSTRAINT `dev_hi_data_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `sys_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dev_hi_data
-- ----------------------------
INSERT INTO `dev_hi_data` VALUES ('20190314110219224a52fc-c090-438d-a430-56c4676ccc04', '031663350', '11', '2018-10-11 13:37:33', '事件数据', '1', '22.964430', '113.903374', '4', null, null, '装盖;无效', '震动事件', '28', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903141102199f0d03dc-a9c4-471b-bf2d-b04ccf841536', '031663350', '11', '2018-10-11 12:49:40', '例行数据', '2', '22.921265', '113.998947', null, '21', '72', '装盖;无效', null, '24', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190314110219df09ea77-e484-406f-8127-fd718b70b588', '031663350', '11', '2018-10-11 13:19:44', '例行数据', '0', '0.000000', '0.000000', '13', null, '72', '装盖;无效', null, '28', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031411032500d78bc0-1c27-4266-9044-8afb74fa6e41', '031663350', '11', '2018-10-11 14:49:58', '例行数据', '1', '22.963797', '113.902596', '5', null, '71', '装盖;无效', null, '26', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031411032524825572-93c5-468b-a646-778ee95a26d5', '031663350', '11', '2018-10-11 15:20:02', '例行数据', '1', '22.963905', '113.902771', '5', null, '71', '装盖;无效', null, '26', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190314110325382da7a3-3650-4c54-a276-57742d7d5ff8', '031663350', '11', '2018-10-11 15:50:07', '例行数据', '1', '22.960245', '113.899918', '5', null, '71', '装盖;无效', null, '25', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903141103258b417f72-3ba2-457f-bf08-da15234a70d3', '031663350', '11', '2018-10-11 16:20:13', '例行数据', '1', '23.087336', '113.958519', '3', null, '71', '装盖;无效', null, '24', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190314110325b5daaeb8-ed06-493e-b038-57ea513248f4', '031663350', '11', '2018-10-11 14:19:54', '例行数据', '1', '22.964907', '113.903656', '5', null, '72', '装盖;无效', null, '28', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190314110325c616274a-7d0b-4445-8528-5be40368cbd5', '031663350', '11', '2018-10-11 13:49:48', '例行数据', '1', '22.964691', '113.903687', '6', null, '72', '装盖;无效', null, '29', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031411104616eeeb82-4758-42cd-9c38-f840f5285976', '031883241', '11', '2019-01-08 03:26:09', '温湿度数据', '1', '23.285269', '113.353165', '22', null, null, null, null, null, '15', '80', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031411104647e2d13a-0d93-4670-a759-46f805d6ad3e', '031883241', '11', '2019-01-08 03:23:09', '温湿度数据', null, null, null, null, null, null, null, null, null, '15', '80', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903141110468ccfffb9-f5c3-45d1-8a12-73d5a395b0b4', '031883241', '11', '2019-01-08 03:22:09', '温湿度数据', null, null, null, null, null, null, null, null, null, '15', '80', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190314111046f7237029-8d95-425d-acf9-0040de408480', '031883241', '11', '2019-01-08 03:25:09', '温湿度数据', null, null, null, null, null, null, null, null, null, '15', '80', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190314111046fe7470a3-0642-4de4-b678-5293a880373a', '031883241', '11', '2019-01-08 03:24:09', '温湿度数据', null, null, null, null, null, null, null, null, null, '15', '80', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903141511393e63d9de-8b3b-432f-b8d5-5ecb66afa1ab', '031663350', '11', '2018-10-11 17:50:28', '例行数据', '1', '23.087503', '113.978912', '5', null, '71', '装盖;无效', null, '23', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190314151139465efab6-a4f6-4eee-9ea1-68f0784cef0a', '031663350', '11', '2018-10-11 17:20:22', '例行数据', '1', '23.087404', '113.979118', '5', null, '71', '装盖;无效', null, '23', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903141511394e7a5f50-7854-4539-8783-c364e74d5db0', '031663350', '11', '2018-10-11 18:50:37', '例行数据', '1', '23.086975', '113.979279', '7', null, '71', '装盖;无效', null, '22', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903141511395ed66028-0bff-4bf3-9578-767af6eb5dd4', '031663350', '11', '2018-10-11 18:20:32', '例行数据', '1', '23.087368', '113.979210', '5', null, '71', '装盖;无效', null, '23', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190314151139962acad5-55d5-4ea6-9b6e-9c817983993c', '031663350', '11', '2018-10-11 20:20:51', '例行数据', '1', '22.859280', '114.087723', '4', null, '71', '装盖;无效', null, '22', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190314151139be847a8a-6295-4c10-ba75-6fad0b5345a6', '031663350', '11', '2018-10-11 16:50:17', '例行数据', '1', '23.087255', '113.979088', '3', null, '71', '装盖;无效', null, '23', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190314151139ec8a92d4-e253-41ec-bcf2-64c5c8603b12', '031663350', '11', '2018-10-11 19:50:46', '例行数据', '1', '22.942171', '114.062317', '5', null, '71', '装盖;无效', null, '22', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190314151139fe3f67c0-fa2b-4bbe-9212-f5b9b2bde5a6', '031663350', '11', '2018-10-11 19:20:40', '例行数据', '1', '23.061211', '114.007439', '6', null, '71', '装盖;无效', null, '22', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031416144053646f5d-7647-4ad3-a0b0-8365ace4fb65', '032219917', '11', '2019-03-09 20:11:06', '例行数据', '2', '24.915859', '118.607826', null, '28', '80', '装盖;无效', null, '16', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031416150002183fc5-26c7-4e81-9b3b-aebee7cee8fb', '032219917', '11', '2019-03-10 16:11:31', '例行数据', '2', '24.915859', '118.607826', null, '29', '80', '装盖;无效', null, '16', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031416150043913858-2f88-4a39-81eb-baa577e6d032', '032219917', '11', '2019-03-11 16:12:01', '例行数据', '2', '24.915859', '118.607826', null, '30', '80', '装盖;无效', null, '19', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031416150052953c2e-40e6-40b0-8276-7ec47253ffe9', '032219917', '11', '2019-03-10 12:11:26', '例行数据', '2', '24.915859', '118.607826', null, '28', '80', '装盖;无效', null, '16', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031416150052f04ad7-a816-4681-88c1-0ad2a9e95fcd', '032219917', '11', '2019-03-11 12:11:55', '例行数据', '2', '24.915859', '118.607826', null, '28', '80', '装盖;无效', null, '18', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190314161500596eda28-2d46-4320-9a2f-eb7856b75e6b', '032219917', '11', '2019-03-10 04:11:16', '例行数据', '2', '24.915859', '118.607826', null, '28', '80', '装盖;无效', null, '16', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190314161500739f52e0-d239-4616-85fa-6d4c405aab70', '032219917', '11', '2019-03-10 08:11:21', '例行数据', '2', '24.915859', '118.607826', null, '29', '80', '装盖;无效', null, '16', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031416150098796ec7-a482-4964-9ff9-b925f6e644a3', '032219917', '11', '2019-03-12 04:12:15', '例行数据', '0', '0.000000', '0.000000', '0', null, '80', '装盖;无效', null, '17', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190314161500abb9590e-dcfe-4876-af95-725cf4984661', '032219917', '11', '2019-03-11 00:11:40', '例行数据', '2', '24.915859', '118.607826', null, '29', '80', '装盖;无效', null, '16', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190314161500c22db70b-3a4e-4df6-b4dc-e67bc4b571b3', '032219917', '11', '2019-03-11 04:11:45', '例行数据', '2', '24.915859', '118.607826', null, '28', '80', '装盖;无效', null, '16', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190314161500c3adb4d5-da55-48cf-a273-b64ad4990247', '032219917', '11', '2019-03-12 08:12:20', '例行数据', '2', '24.915859', '118.607826', null, '26', '80', '装盖;无效', null, '17', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190314161500d07c1c37-671b-4105-a345-403413607b35', '032219917', '11', '2019-03-11 20:12:05', '例行数据', '2', '24.915859', '118.607826', null, '28', '80', '装盖;无效', null, '18', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190314161500d99d259d-a4b7-425c-8b29-051b873ca5c5', '032219917', '11', '2019-03-11 08:11:50', '例行数据', '2', '24.915859', '118.607826', null, '27', '80', '装盖;无效', null, '16', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190314161500ee499630-70c2-455d-894d-f667ac983955', '032219917', '11', '2019-03-12 00:12:11', '例行数据', '2', '24.915859', '118.607826', null, '27', '80', '装盖;无效', null, '18', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190314161500f26e6692-10af-4370-84d6-a2b804ac550a', '032219917', '11', '2019-03-10 00:11:11', '例行数据', '2', '24.915859', '118.607826', null, '28', '80', '装盖;无效', null, '16', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190314161500fe65d64a-e16e-48d7-80ef-1aee8ecab1c3', '032219917', '11', '2019-03-10 20:11:36', '例行数据', '2', '24.915859', '118.607826', null, '29', '80', '装盖;无效', null, '16', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031416150304e10e6b-0e45-4c4d-bc5d-f7a279b1bd7f', '032219917', '11', '2019-03-14 00:13:09', '例行数据', '2', '24.915859', '118.607826', null, '28', '80', '装盖;无效', null, '20', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190314161503087c598c-de5c-4f0e-9e64-34927ec3fc4b', '032219917', '11', '2019-03-13 20:13:04', '例行数据', '2', '24.915859', '118.607826', null, '28', '80', '装盖;无效', null, '20', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031416150324e9fe86-79c2-48b2-89c0-b26b88a9b6d6', '032219917', '11', '2019-03-13 12:12:54', '例行数据', '2', '24.915859', '118.607826', null, '27', '80', '装盖;无效', null, '20', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031416150329da0077-141f-46d3-a2bf-bc84f50cffab', '032219917', '11', '2019-03-12 20:12:35', '例行数据', '2', '24.915859', '118.607826', null, '27', '80', '装盖;无效', null, '19', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903141615033de4e79b-11c5-4c9d-8637-59523c6ba7a2', '032219917', '11', '2019-03-14 04:15:46', '例行数据', '2', '24.915859', '118.607826', null, '28', '80', '装盖;无效', null, '20', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903141615033e97a1a7-c5e1-40af-ba79-35bb6a237942', '032219917', '11', '2019-03-14 08:15:51', '例行数据', '2', '24.916813', '118.604553', null, '25', '80', '装盖;无效', null, '19', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190314161503513901b5-f9c7-4e64-abea-bb1890688bc4', '032219917', '11', '2019-03-14 12:15:56', '例行数据', '2', '24.915859', '118.607826', null, '28', '80', '装盖;无效', null, '21', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903141615036d480dc9-f9a4-4b1d-bef3-88f4fe17f31b', '032219917', '11', '2019-03-13 00:12:40', '例行数据', '2', '24.915859', '118.607826', null, '27', '80', '装盖;无效', null, '19', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903141615038843e31d-2598-4452-95d6-24e72aa2dd56', '032219917', '11', '2019-03-13 04:12:44', '例行数据', '2', '24.915859', '118.607826', null, '27', '80', '装盖;无效', null, '18', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190314161503b901d204-8373-4c02-9cf0-9476dd10c69a', '032219917', '11', '2019-03-14 16:15:01', '例行数据', '2', '24.915859', '118.607826', null, '28', '80', '装盖;无效', null, '21', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190314161503c5756b6e-53e7-49f2-9701-eb72dee8ec9a', '032219917', '11', '2019-03-13 08:12:49', '例行数据', '2', '24.915859', '118.607826', null, '26', '80', '装盖;无效', null, '18', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190314161503caa26793-abb1-4427-8114-5b944e78c31d', '032219917', '11', '2019-03-12 12:12:25', '例行数据', '2', '24.915859', '118.607826', null, '26', '80', '装盖;无效', null, '19', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190314161503d0d879c0-c0e8-4a62-98cf-5f814dfe897a', '032219917', '11', '2019-03-13 16:13:00', '例行数据', '2', '24.915859', '118.607826', null, '28', '80', '装盖;无效', null, '21', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190314161503ee6440ad-ffdb-4a98-9eeb-dce0fbd4da9b', '032219917', '11', '2019-03-12 16:12:30', '例行数据', '2', '24.915859', '118.607826', null, '28', '80', '装盖;无效', null, '21', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903141701103b1d7afe-c8e9-43b5-9735-58c09f236958', '035899020', '11', '2019-03-14 16:55:40', '温湿度数据', '2', '24.919430', '118.608749', null, '29', null, null, null, null, '21', '69', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190314171445d5eca351-cd0f-46e2-bc09-0cba25f6c5a8', '032219917', '11', '2019-03-14 17:12:42', '例行数据', '2', '24.915859', '118.607826', null, '29', '80', '装盖;无效', null, '21', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903141746018561c72e-f1f5-4930-bc91-156118b1ecd7', '032219917', '11', '2019-03-14 17:43:52', '事件数据', '2', '24.919430', '118.608749', null, '25', null, '拆盖;无效', '开箱/脱落', '21', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190315101115160f04ad-8eaf-4fcb-b7e4-3b1825e54b61', '035899020', '11', '2019-03-14 16:55:51', '温湿度数据', null, null, null, null, null, null, null, null, null, '21', '68', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031510111560433587-1421-46e3-9359-5f2206ab9524', '035899020', '11', '2019-03-14 17:55:51', '温湿度数据', '2', '24.919430', '118.608749', null, '29', null, null, null, null, '21', '68', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031510112411246e22-6366-4797-a68e-f3cc893dd439', '035899020', '11', '2019-03-15 04:09:08', '例行数据', '2', '24.919430', '118.608749', null, '28', '86', '装盖;无效', null, '20', '19', '67', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903151011242ad6f993-c930-4f6f-81e0-8ff96a4ec676', '035899020', '11', '2019-03-14 19:08:53', '例行数据', '2', '24.919430', '118.608749', null, '29', '86', '装盖;无效', null, '21', '21', '68', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031510112442bd588e-2245-4f35-a8ac-a2dace0720a1', '035899020', '11', '2019-03-15 01:09:03', '例行数据', '2', '24.919430', '118.608749', null, '28', '86', '装盖;无效', null, '20', '20', '68', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190315101124948521cc-e2aa-4b59-bc92-7eea49a29400', '035899020', '11', '2019-03-15 07:09:13', '例行数据', '2', '24.919430', '118.608749', null, '29', '86', '装盖;无效', null, '20', '19', '66', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190315101124b3fd52ca-7e95-48c5-bf1c-ff83a1188b47', '035899020', '11', '2019-03-15 10:09:14', '例行数据', '2', '24.919430', '118.608749', null, '29', '86', '装盖;无效', null, '20', '19', '67', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190315101124fa54156f-9af3-493f-a440-b0a071bf9ecd', '035899020', '11', '2019-03-14 22:08:58', '例行数据', '2', '24.919430', '118.608749', null, '29', '86', '装盖;无效', null, '20', '20', '68', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190315101131113ddf5b-a0a8-49a4-9508-e4037e029fb1', '035899020', '11', '2019-03-14 21:56:41', '温湿度数据', '2', '24.919430', '118.608749', null, '29', null, null, null, null, '20', '68', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031510113111b601db-f4e9-4f18-82b9-1fbc82dbf8c3', '035899020', '11', '2019-03-14 23:57:05', '温湿度数据', '2', '24.919430', '118.608749', null, '29', null, null, null, null, '20', '68', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903151011316912d92a-6289-419c-98d8-efdceb9c352f', '035899020', '11', '2019-03-14 22:56:53', '温湿度数据', '2', '24.919430', '118.608749', null, '29', null, null, null, null, '20', '68', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903151011318934ca27-8eda-4900-8704-5cebce5ecab5', '035899020', '11', '2019-03-14 18:56:15', '温湿度数据', null, null, null, null, null, null, null, null, null, '20', '68', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903151011319f543557-49ec-4cf8-b1e7-c5ea3cabf15f', '035899020', '11', '2019-03-14 19:56:15', '温湿度数据', '2', '24.919430', '118.608749', null, '29', null, null, null, null, '20', '68', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190315101131ba51a6c5-fc3a-4f1e-8edf-ef510fe75aee', '035899020', '11', '2019-03-14 22:57:05', '温湿度数据', null, null, null, null, null, null, null, null, null, '20', '68', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031510113915d8e0f8-f409-4f2b-903c-17ed89a6e51e', '035899020', '11', '2019-03-15 05:58:23', '温湿度数据', '2', '24.919430', '118.608749', null, '28', null, null, null, null, '19', '67', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903151011391695f843-3d53-4f8f-8280-c2593da26c4d', '035899020', '11', '2019-03-15 01:57:34', '温湿度数据', '2', '24.919430', '118.608749', null, '28', null, null, null, null, '20', '67', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903151011394de05d7a-b6d1-48cf-94eb-75711fcbf721', '035899020', '11', '2019-03-15 03:57:58', '温湿度数据', '2', '24.919430', '118.608749', null, '28', null, null, null, null, '19', '67', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190315101139835594e3-f2e2-4c2b-be65-286b6d0daa60', '035899020', '11', '2019-03-15 00:57:34', '温湿度数据', null, null, null, null, null, null, null, null, null, '19', '67', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190315101139b04e8ec6-41ae-4d44-ae19-27a7f8bc457f', '035899020', '11', '2019-03-15 04:58:11', '温湿度数据', '2', '24.919430', '118.608749', null, '28', null, null, null, null, '19', '67', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190315101139fa33e64e-ccb9-4d6b-bc78-77ab2bc5e6ac', '035899020', '11', '2019-03-15 04:58:23', '温湿度数据', null, null, null, null, null, null, null, null, null, '19', '67', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903151011464c380814-f0c8-4303-aaae-4d08104af63f', '035899020', '11', '2019-03-15 07:58:48', '温湿度数据', '2', '24.919430', '118.608749', null, '29', null, null, null, null, '19', '66', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903151011467a768df5-b325-4cfd-8b68-a6ac2020701c', '035899020', '11', '2019-03-15 06:58:48', '温湿度数据', null, null, null, null, null, null, null, null, null, '19', '67', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903151011469d56c04c-c8b6-470c-a426-37e7da529727', '035899020', '11', '2019-03-15 09:59:12', '温湿度数据', '2', '24.919430', '118.608749', null, '29', null, null, null, null, '19', '68', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903151104503afbdf96-b56f-4992-84b9-673315fe35c9', '035899020', '11', '2019-03-15 10:59:16', '温湿度数据', '2', '24.919430', '118.608749', null, '29', null, null, null, null, '20', '67', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190315111514d5cf1581-3297-4c11-85c6-6a0f729ea340', '032219917', '11', '2019-03-14 18:03:03', '事件数据', '2', '24.915859', '118.607826', null, '25', null, '装盖;无效', '装箱/安装', '21', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031511151713b88e86-95e3-4bf4-b27d-16e11dec067e', '032219917', '11', '2019-03-15 05:13:02', '例行数据', '2', '24.915718', '118.611336', null, '24', '80', '装盖;无效', null, '19', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903151115174a36b3e2-a248-402f-ad8e-964bfd59cbb4', '032219917', '11', '2019-03-15 11:13:12', '例行数据', '2', '24.919794', '118.611549', null, '26', '80', '拆盖;无效', null, '20', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903151115176bda4e13-61ae-4dff-818b-d3990a576353', '032219917', '11', '2019-03-14 20:12:47', '例行数据', '2', '24.915718', '118.611336', null, '25', '80', '装盖;无效', null, '20', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903151115177c97b8e3-0ee9-490b-83f0-7f2a4447968f', '032219917', '11', '2019-03-15 02:12:57', '例行数据', '2', '24.915718', '118.611336', null, '25', '80', '装盖;无效', null, '20', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903151115179febe348-30ad-4632-bf99-e393fb6dbfa2', '032219917', '11', '2019-03-14 23:12:52', '例行数据', '2', '24.915718', '118.611336', null, '24', '80', '装盖;无效', null, '20', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190315111517b4f5ca48-632c-4ddd-8d03-0532e2e59d77', '032219917', '11', '2019-03-15 07:03:46', '事件数据', '2', '24.915718', '118.611336', null, '24', null, '拆盖;无效', '开箱/脱落', '19', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190315111517e31bfd6f-e9bc-41bb-8966-72f87a4fae4a', '032219917', '11', '2019-03-15 08:13:07', '例行数据', '2', '24.915718', '118.611336', null, '24', '80', '拆盖;无效', null, '18', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903151305143026141d-20a2-41b4-9e0d-39532e284d88', '035899020', '11', '2019-03-15 11:59:28', '温湿度数据', '2', '24.919430', '118.608749', null, '29', null, null, null, null, '20', '66', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190315130514321dc3d4-d8c0-460a-a5d4-f86faeed2ed6', '035899020', '11', '2019-03-15 10:59:28', '温湿度数据', null, null, null, null, null, null, null, null, null, '20', '65', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031513095237eb6f1f-c063-43c1-97c1-2876284c87b8', '035899020', '11', '2019-03-15 13:09:10', '例行数据', '2', '24.919430', '118.608749', null, '29', '86', '装盖;无效', null, '21', '20', '65', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190315141513e12eceef-a34a-4926-95ce-c32536d9bf73', '032219917', '11', '2019-03-15 14:13:09', '例行数据', '2', '24.915859', '118.607826', null, '25', '80', '拆盖;无效', null, '20', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903151505390c83874b-90ef-49ac-8192-b6750fb7e265', '035899020', '11', '2019-03-15 12:59:52', '温湿度数据', null, null, null, null, null, null, null, null, null, '20', '64', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190315150539b3e0dd66-e8dc-4219-82c7-d3ec7f5d84f7', '035899020', '11', '2019-03-15 13:59:52', '温湿度数据', '2', '24.919430', '118.608749', null, '29', null, null, null, null, '20', '65', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191013434bd4cbe1-2e7e-46ef-b0d3-48b5a28002eb', '035899020', '11', '2019-03-15 16:09:15', '例行数据', '2', '24.919794', '118.611549', null, '26', '86', '装盖;无效', null, '21', '20', '58', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191013592759e86c-48e8-49ee-8c60-15abe36b3881', '035899020', '11', '2019-03-16 07:09:41', '例行数据', '2', '24.916813', '118.604553', null, '28', '86', '装盖;无效', null, '19', '19', '60', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191013594ec80701-6b41-432b-b850-f9314a6b8e85', '035899020', '11', '2019-03-16 10:09:45', '例行数据', '2', '24.919794', '118.611549', null, '30', '86', '装盖;无效', null, '20', '19', '59', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191013595fc39e3e-cdf9-4858-a04a-bb05a6bb66b0', '035899020', '11', '2019-03-16 04:09:35', '例行数据', '2', '24.916813', '118.604553', null, '28', '86', '装盖;无效', null, '20', '19', '60', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191013596addf2ef-4681-4f95-a312-f7056c7cdfed', '035899020', '11', '2019-03-15 19:09:20', '例行数据', '2', '24.916813', '118.604553', null, '28', '86', '装盖;无效', null, '20', '20', '55', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031910135992c402b7-9f48-48ea-b658-2d66e19f7cf7', '035899020', '11', '2019-03-16 13:10:08', '例行数据', '2', '24.915859', '118.607826', null, '28', '86', '装盖;无效', null, '20', '20', '58', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191013599779acb1-c60b-4799-b828-b9df65f7dc3c', '035899020', '11', '2019-03-16 01:09:30', '例行数据', '2', '24.916813', '118.604553', null, '28', '86', '装盖;无效', null, '20', '19', '59', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319101359ce3db1a2-b7c5-4b3a-b396-96653ba693a9', '035899020', '11', '2019-03-15 22:09:25', '例行数据', '0', '0.000000', '0.000000', '0', null, '86', '装盖;无效', null, '20', '20', '57', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319101359d13ef77d-15fb-444f-b3e3-f1e786e3cfd1', '035899020', '11', '2019-03-16 16:10:14', '例行数据', '2', '24.915859', '118.607826', null, '29', '86', '装盖;无效', null, '21', '20', '59', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319101359ff98870b-7f53-42c8-8a78-890280a63fb7', '035899020', '11', '2019-03-16 19:10:18', '例行数据', '2', '24.915859', '118.607826', null, '29', '86', '装盖;无效', null, '20', '20', '59', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191014001f61d961-a3f5-468e-92de-259b7d2f2096', '035899020', '11', '2019-03-17 04:10:33', '例行数据', '2', '24.915859', '118.607826', null, '29', '86', '装盖;无效', null, '20', '19', '61', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031910140023ea5877-a5f9-4397-b033-18baf62ec13d', '035899020', '11', '2019-03-17 01:10:28', '例行数据', '2', '24.915859', '118.607826', null, '29', '86', '装盖;无效', null, '20', '20', '60', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191014003a8acf2b-3a13-42a0-b6e3-786182f352de', '035899020', '11', '2019-03-17 13:10:48', '例行数据', '2', '24.915859', '118.607826', null, '30', '86', '装盖;无效', null, '20', '20', '63', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191014008ac0161c-4fa8-447a-b8f2-bc4c1f204e36', '035899020', '11', '2019-03-16 22:10:23', '例行数据', '2', '24.915859', '118.607826', null, '29', '86', '装盖;无效', null, '20', '20', '60', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319101400cf0f1efa-2555-444a-9b32-145ca1da5892', '035899020', '11', '2019-03-17 10:10:43', '例行数据', '2', '24.915859', '118.607826', null, '29', '86', '装盖;无效', null, '20', '19', '62', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319101400eeab8bc2-fdbc-475c-b875-b13ceca2a6e7', '035899020', '11', '2019-03-17 07:10:38', '例行数据', '2', '24.916813', '118.604553', null, '28', '86', '装盖;无效', null, '20', '19', '61', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319101408023e1533-9adf-4566-9422-c23734f9e43c', '035899020', '11', '2019-03-18 13:11:32', '例行数据', '2', '24.919794', '118.611549', null, '26', '85', '装盖;无效', null, '21', '21', '66', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191014082f11c129-6caa-40be-a207-f8c6c25aa272', '035899020', '11', '2019-03-18 19:11:41', '例行数据', '2', '24.915859', '118.607826', null, '29', '85', '装盖;无效', null, '22', '21', '67', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191014082fbfe1e8-db56-4b78-bc8b-a03d684c311c', '035899020', '11', '2019-03-18 07:11:21', '例行数据', '2', '24.915859', '118.607826', null, '30', '85', '装盖;无效', null, '20', '19', '64', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319101408314f7c71-afea-4219-b9bc-521668877ffa', '035899020', '11', '2019-03-19 10:12:19', '例行数据', '2', '24.916813', '118.604553', null, '28', '85', '装盖;无效', null, '22', '21', '71', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191014085ce03af0-b3eb-4a94-a5ef-907effde47c3', '035899020', '11', '2019-03-19 01:12:04', '例行数据', '2', '24.915859', '118.607826', null, '29', '85', '装盖;无效', null, '21', '20', '68', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191014086989c90f-fcde-45f5-ab50-ff33c8ca77fd', '035899020', '11', '2019-03-18 01:11:12', '例行数据', '2', '24.915859', '118.607826', null, '30', '86', '装盖;无效', null, '20', '19', '63', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191014087e603d7b-86f3-4f1b-91b3-38061c04b0ab', '035899020', '11', '2019-03-19 07:12:15', '例行数据', '2', '24.915859', '118.607826', null, '29', '85', '装盖;无效', null, '21', '20', '68', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031910140884b2265b-9ce1-4c81-99bc-17909125972a', '035899020', '11', '2019-03-18 04:11:17', '例行数据', '2', '24.915859', '118.607826', null, '30', '85', '装盖;无效', null, '20', '19', '63', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031910140897eb6e70-f516-4f5f-a32f-49936cbc8984', '035899020', '11', '2019-03-18 16:11:36', '例行数据', '2', '24.919794', '118.611549', null, '28', '85', '装盖;无效', null, '22', '22', '68', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191014089f259952-e21c-47f4-85c2-1e6964445210', '035899020', '11', '2019-03-17 22:11:07', '例行数据', '2', '24.915859', '118.607826', null, '30', '86', '装盖;无效', null, '20', '19', '63', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319101408b619e483-2dc6-4ea1-8a24-c64f44acb6a9', '035899020', '11', '2019-03-17 19:11:02', '例行数据', '2', '24.915859', '118.607826', null, '30', '86', '装盖;无效', null, '20', '19', '63', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319101408baa69fcc-7c33-43ae-8e2f-b47f4d3666bb', '035899020', '11', '2019-03-19 04:12:09', '例行数据', '2', '24.915859', '118.607826', null, '29', '85', '装盖;无效', null, '21', '20', '68', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319101408ca3f88a0-1e58-4cf5-8d28-26f96ef8453b', '035899020', '11', '2019-03-18 10:11:27', '例行数据', '0', '0.000000', '0.000000', '0', null, '85', '装盖;无效', null, '21', '20', '67', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319101408d19280f8-03dd-4a6e-b568-88ecf2154e0b', '035899020', '11', '2019-03-18 22:11:59', '例行数据', '2', '24.915859', '118.607826', null, '29', '85', '装盖;无效', null, '21', '21', '67', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319101408d579c14d-a185-4dfc-8613-42e7384c8c44', '035899020', '11', '2019-03-17 16:10:56', '例行数据', '2', '24.915859', '118.607826', null, '30', '86', '装盖;无效', null, '20', '20', '63', '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319101419c82955eb-f700-4e0c-b4f7-f88ec07c1e02', '035899020', '11', '2019-03-15 15:35:12', '温湿度数据', '2', '24.919430', '118.608749', null, '29', null, null, null, null, '20', '61', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031910142032367eb3-9704-4d4f-ab36-bac41b74f17f', '035899020', '11', '2019-03-15 18:45:51', '温湿度数据', '2', '24.919794', '118.611549', null, '26', null, null, null, null, '20', '54', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191014203644158a-f8dc-45e5-bc2e-616e12153124', '035899020', '11', '2019-03-15 16:55:29', '温湿度数据', '2', '24.919794', '118.611549', null, '26', null, null, null, null, '20', '56', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191014208460fd21-f17d-4824-97e9-0e1bd9e25396', '035899020', '11', '2019-03-15 19:46:03', '温湿度数据', '2', '24.916813', '118.604553', null, '28', null, null, null, null, '20', '55', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319101420e331e936-064f-49a9-bf5e-b7d54fa7ecdc', '035899020', '11', '2019-03-15 16:05:29', '温湿度数据', null, null, null, null, null, null, null, null, null, '20', '53', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319101420fcd99b31-ef52-4ba8-a41a-8bf9a285e203', '035899020', '11', '2019-03-15 15:15:12', '温湿度数据', null, null, null, null, null, null, null, null, null, '20', '58', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319101427020d6144-b53f-4f27-8331-1e421a2d1075', '035899020', '11', '2019-03-15 20:46:16', '温湿度数据', '2', '24.916813', '118.604553', null, '28', null, null, null, null, '20', '56', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191014276a7c86de-5b38-4eed-a46f-9612452cd21d', '035899020', '11', '2019-03-15 21:46:40', '温湿度数据', null, null, null, null, null, null, null, null, null, '19', '58', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191014277d381fd0-7b94-4dc2-964b-26ef578d40db', '035899020', '11', '2019-03-16 01:47:18', '温湿度数据', '2', '24.916813', '118.604553', null, '28', null, null, null, null, '19', '59', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031910142787c38898-1c4a-4896-a232-d4b55cd7f962', '035899020', '11', '2019-03-16 00:47:05', '温湿度数据', '2', '24.916800', '118.604553', null, '28', null, null, null, null, '19', '59', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319101427cfa3c214-3571-41a1-804d-f3f837a3023e', '035899020', '11', '2019-03-15 19:46:16', '温湿度数据', null, null, null, null, null, null, null, null, null, '20', '57', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319101427fdc5ba7b-deeb-4e1f-b971-d0d12e1e17d4', '035899020', '11', '2019-03-15 22:46:40', '温湿度数据', '2', '24.916800', '118.604553', null, '28', null, null, null, null, '20', '57', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191014347fe2262d-d6b4-4e8e-beca-d715b565d3ec', '035899020', '11', '2019-03-16 02:47:30', '温湿度数据', '2', '24.916813', '118.604553', null, '28', null, null, null, null, '19', '60', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191014354ed0feab-0d43-4b96-808f-83c15dc24265', '035899020', '11', '2019-03-16 06:48:19', '温湿度数据', '2', '24.916813', '118.604553', null, '28', null, null, null, null, '19', '60', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031910143573f6689f-540c-4512-8927-e60a2b9652fe', '035899020', '11', '2019-03-16 07:48:32', '温湿度数据', '2', '24.916813', '118.604553', null, '28', null, null, null, null, '19', '60', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191014358c014662-5b4a-447d-b2f3-c0c023fa8741', '035899020', '11', '2019-03-16 04:47:55', '温湿度数据', '2', '24.916813', '118.604553', null, '28', null, null, null, null, '19', '60', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191014359014ba2e-b136-4557-ae3a-619663bbfaef', '035899020', '11', '2019-03-16 01:47:30', '温湿度数据', null, null, null, null, null, null, null, null, null, '19', '60', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319101435fea1d2b3-ba2d-4ebe-a766-bcc2a85df09f', '035899020', '11', '2019-03-16 03:47:55', '温湿度数据', null, null, null, null, null, null, null, null, null, '19', '60', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031910144201bd4a51-7bb4-4c2d-bcdf-506d7db7e1f5', '035899020', '11', '2019-03-16 09:49:08', '温湿度数据', null, null, null, null, null, null, null, null, null, '20', '59', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191014422f9f157d-1f1d-4851-a395-78d459e34db2', '035899020', '11', '2019-03-16 12:49:33', '温湿度数据', '2', '24.919794', '118.611549', null, '30', null, null, null, null, '20', '58', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031910144245f94398-f930-4866-af51-5977eb4ac0ce', '035899020', '11', '2019-03-16 08:48:44', '温湿度数据', '2', '24.916813', '118.604553', null, '28', null, null, null, null, '19', '60', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319101442d1d0ad87-7d76-426d-8938-81879eca954f', '035899020', '11', '2019-03-16 10:49:08', '温湿度数据', '2', '24.919794', '118.611549', null, '30', null, null, null, null, '20', '59', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319101442ee01ef0a-ff1d-41de-ac00-d2b9cd2fe773', '035899020', '11', '2019-03-16 13:49:45', '温湿度数据', '2', '24.915859', '118.607826', null, '28', null, null, null, null, '20', '58', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319101442f298fefa-4556-494f-9eac-3e1296db49bd', '035899020', '11', '2019-03-16 07:48:44', '温湿度数据', null, null, null, null, null, null, null, null, null, '19', '59', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031910144926165ae3-40e8-4e38-b0b1-787ad1766729', '035899020', '11', '2019-03-16 14:49:58', '温湿度数据', '2', '24.915859', '118.607826', null, '28', null, null, null, null, '20', '58', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319101449529dd29b-3119-49ac-9ced-c9ca41e702f4', '035899020', '11', '2019-03-16 16:50:22', '温湿度数据', '2', '24.915859', '118.607826', null, '29', null, null, null, null, '20', '59', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319101449e4ded683-9ddc-40bf-b60f-068ae302a56a', '035899020', '11', '2019-03-16 13:49:58', '温湿度数据', null, null, null, null, null, null, null, null, null, '20', '59', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191014501925dfac-1112-4a44-9bfa-77cb4a6db411', '035899020', '11', '2019-03-16 18:50:46', '温湿度数据', '2', '24.915859', '118.607826', null, '29', null, null, null, null, '20', '59', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319101450c0e54ae9-5442-48d8-a3d7-d178fef27c49', '035899020', '11', '2019-03-16 19:50:58', '温湿度数据', '2', '24.915859', '118.607826', null, '29', null, null, null, null, '20', '59', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319101450ff1a5250-f844-4772-8e6d-65baa75be28a', '035899020', '11', '2019-03-16 15:50:22', '温湿度数据', null, null, null, null, null, null, null, null, null, '20', '59', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191014570817a579-a314-40a6-a0a1-cb9aaaed6fc4', '035899020', '11', '2019-03-16 22:51:34', '温湿度数据', '2', '24.915859', '118.607826', null, '29', null, null, null, null, '20', '60', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191014573c894cfb-69da-45c2-b1d8-b5dcbd588af8', '035899020', '11', '2019-03-16 21:51:34', '温湿度数据', null, null, null, null, null, null, null, null, null, '20', '60', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031910145764419161-113d-409d-b43c-889d7e2788b6', '035899020', '11', '2019-03-17 01:52:32', '温湿度数据', '2', '24.915859', '118.607826', null, '29', null, null, null, null, '20', '60', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191014578a1bd216-cbac-417c-9886-8116765a16b8', '035899020', '11', '2019-03-17 00:51:59', '温湿度数据', '2', '24.915859', '118.607826', null, '29', null, null, null, null, '20', '60', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319101457909eae4c-c47c-4a62-b197-07b22bcdfea2', '035899020', '11', '2019-03-16 19:51:10', '温湿度数据', null, null, null, null, null, null, null, null, null, '20', '60', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319101457c2fb90f7-b105-4c9f-ac29-0119a6c1f867', '035899020', '11', '2019-03-16 20:51:10', '温湿度数据', '2', '24.915859', '118.607826', null, '29', null, null, null, null, '20', '59', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319105850794caef1-008a-4e4b-b243-593ee17ec4af', '035899020', '11', '2019-03-16 22:51:34', '温湿度数据', '2', '24.915859', '118.607826', null, '29', null, null, null, null, '20', '60', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319105850a450871a-e973-4f87-9abd-d0d597fc0f17', '035899020', '11', '2019-03-16 20:51:10', '温湿度数据', '2', '24.915859', '118.607826', null, '29', null, null, null, null, '20', '59', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319105850a8a5f198-831a-4d8e-94ee-895745f0a937', '035899020', '11', '2019-03-16 19:51:10', '温湿度数据', null, null, null, null, null, null, null, null, null, '20', '60', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319105850f35c2a06-21ce-4130-8658-52ad0f354bfe', '035899020', '11', '2019-03-16 21:51:34', '温湿度数据', null, null, null, null, null, null, null, null, null, '20', '60', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031910585106517a5c-69e4-4040-97b8-f5f83ae1a8ee', '035899020', '11', '2019-03-17 01:52:32', '温湿度数据', '2', '24.915859', '118.607826', null, '29', null, null, null, null, '20', '60', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319105851f9e8c056-9bf8-49dc-a8c1-c0d1bdf040d6', '035899020', '11', '2019-03-17 00:51:59', '温湿度数据', '2', '24.915859', '118.607826', null, '29', null, null, null, null, '20', '60', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191059041cdbc002-68e9-4a82-868a-a54efafd42a6', '035899020', '11', '2019-03-17 00:51:59', '温湿度数据', '2', '24.915859', '118.607826', null, '29', null, null, null, null, '20', '60', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031910590448deacf6-2801-4c35-a394-284f7c210c77', '035899020', '11', '2019-03-16 19:51:10', '温湿度数据', null, null, null, null, null, null, null, null, null, '20', '60', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191059047de213a4-68fc-44e3-aced-f8fe904ac1ba', '035899020', '11', '2019-03-16 20:51:10', '温湿度数据', '2', '24.915859', '118.607826', null, '29', null, null, null, null, '20', '59', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031910590485f17898-aa30-4cfe-a32a-37ec88faef88', '035899020', '11', '2019-03-17 01:52:32', '温湿度数据', '2', '24.915859', '118.607826', null, '29', null, null, null, null, '20', '60', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031910590487b65893-075a-4f28-b8f3-31213bd5114f', '035899020', '11', '2019-03-16 22:51:34', '温湿度数据', '2', '24.915859', '118.607826', null, '29', null, null, null, null, '20', '60', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319105904f7c1a661-f43e-42b4-8015-ea2ede8373b8', '035899020', '11', '2019-03-16 21:51:34', '温湿度数据', null, null, null, null, null, null, null, null, null, '20', '60', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191059110113ae31-473d-4abc-a53d-3c37c4974de4', '035899020', '11', '2019-03-17 02:52:44', '温湿度数据', '2', '24.915859', '118.607826', null, '29', null, null, null, null, '20', '60', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319105911183dc37d-bdaf-48d1-b88d-1c543d8f6d4b', '035899020', '11', '2019-03-17 03:53:08', '温湿度数据', null, null, null, null, null, null, null, null, null, '19', '61', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319105911692e9afb-4e5b-47b2-a690-af94dba6aad3', '035899020', '11', '2019-03-17 06:53:33', '温湿度数据', '2', '24.915859', '118.607826', null, '29', null, null, null, null, '19', '61', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319105911da9858fb-f079-42d9-91de-5fc9137c82ae', '035899020', '11', '2019-03-17 07:53:45', '温湿度数据', '2', '24.916813', '118.604553', null, '28', null, null, null, null, '19', '61', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319105911e1eb14be-edd3-47dd-8d44-56f7243cdc0a', '035899020', '11', '2019-03-17 01:52:44', '温湿度数据', null, null, null, null, null, null, null, null, null, '19', '61', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319105911f1120128-f2b3-454d-b79a-e2736ca468d4', '035899020', '11', '2019-03-17 04:53:08', '温湿度数据', '2', '24.915859', '118.607826', null, '29', null, null, null, null, '19', '61', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191059240fc6077c-bd51-48b4-ae08-557078c190ef', '035899020', '11', '2019-03-17 01:52:44', '温湿度数据', null, null, null, null, null, null, null, null, null, '19', '61', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319105924264a4f69-3d32-431a-97fc-c8ada5d4209f', '035899020', '11', '2019-03-17 02:52:44', '温湿度数据', '2', '24.915859', '118.607826', null, '29', null, null, null, null, '20', '60', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319105924457822ba-f0bf-4954-bde2-44e158070548', '035899020', '11', '2019-03-17 07:53:45', '温湿度数据', '2', '24.916813', '118.604553', null, '28', null, null, null, null, '19', '61', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319105924731e9888-4f46-41a0-b0a3-9b6321c014b0', '035899020', '11', '2019-03-17 03:53:08', '温湿度数据', null, null, null, null, null, null, null, null, null, '19', '61', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319105924980bc13d-0d28-4222-b1ef-b41bfdcaf88e', '035899020', '11', '2019-03-17 04:53:08', '温湿度数据', '2', '24.915859', '118.607826', null, '29', null, null, null, null, '19', '61', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319105924da820786-299e-4dfc-806b-3772430f3fe4', '035899020', '11', '2019-03-17 06:53:33', '温湿度数据', '2', '24.915859', '118.607826', null, '29', null, null, null, null, '19', '61', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031910593220bfb85c-2fbe-4627-9ab6-3442236b223c', '035899020', '11', '2019-03-17 12:54:46', '温湿度数据', '2', '24.915859', '118.607826', null, '29', null, null, null, null, '20', '63', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191059324da10189-3d22-4e7a-ae07-963c25d2fe22', '035899020', '11', '2019-03-17 09:54:21', '温湿度数据', null, null, null, null, null, null, null, null, null, '20', '62', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031910593267032884-3728-44bc-8009-e9d71d011d9b', '035899020', '11', '2019-03-17 10:54:21', '温湿度数据', '2', '24.915859', '118.607826', null, '29', null, null, null, null, '19', '62', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191059326dda6b6a-966f-4a31-b148-c1dbdfa0d188', '035899020', '11', '2019-03-17 13:54:58', '温湿度数据', '2', '24.915859', '118.607826', null, '30', null, null, null, null, '20', '63', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191059329af13395-3da0-42ce-b954-636034b6244c', '035899020', '11', '2019-03-17 07:53:57', '温湿度数据', null, null, null, null, null, null, null, null, null, '19', '62', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319105932f8dd6bc3-a5ae-4f21-a9b1-71e65077f815', '035899020', '11', '2019-03-17 08:53:57', '温湿度数据', '2', '24.916813', '118.604553', null, '28', null, null, null, null, '19', '62', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191059430fbf06fd-5963-435f-88a6-16119c1fe04d', '035899020', '11', '2019-03-17 13:55:10', '温湿度数据', null, null, null, null, null, null, null, null, null, '20', '63', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031910594398631cc9-cb2e-4c70-b8b3-f54637116d05', '035899020', '11', '2019-03-17 14:55:10', '温湿度数据', '2', '24.915859', '118.607826', null, '30', null, null, null, null, '20', '63', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319105944132a2a6c-2d35-459f-b474-2f11ecb2b9b9', '035899020', '11', '2019-03-17 19:56:11', '温湿度数据', '2', '24.915859', '118.607826', null, '30', null, null, null, null, '19', '63', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319105944293a322a-114b-4be6-ae91-08d9c903a73e', '035899020', '11', '2019-03-17 15:55:34', '温湿度数据', null, null, null, null, null, null, null, null, null, '20', '63', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319105944d02a6c05-31a2-4f61-b433-a0917a8688f9', '035899020', '11', '2019-03-17 18:55:59', '温湿度数据', '2', '24.915859', '118.607826', null, '30', null, null, null, null, '19', '63', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319105944d8b1847f-a4e2-4b1c-9ba0-e5cf14f68b58', '035899020', '11', '2019-03-17 16:55:34', '温湿度数据', '2', '24.915859', '118.607826', null, '30', null, null, null, null, '20', '63', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031910595720c4e9f6-72ed-4403-87ac-42a1f0635ccb', '035899020', '11', '2019-03-17 18:55:59', '温湿度数据', '2', '24.915859', '118.607826', null, '30', null, null, null, null, '19', '63', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319105957432038bb-b9b0-4f1c-8c07-daeaf84cf184', '035899020', '11', '2019-03-17 15:55:34', '温湿度数据', null, null, null, null, null, null, null, null, null, '20', '63', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191059578b5e89f3-391d-49c9-a84d-78afe2d011eb', '035899020', '11', '2019-03-17 19:56:11', '温湿度数据', '2', '24.915859', '118.607826', null, '30', null, null, null, null, '19', '63', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319105957d7fd2058-b79b-40ee-9521-68d65d8c2234', '035899020', '11', '2019-03-17 13:55:10', '温湿度数据', null, null, null, null, null, null, null, null, null, '20', '63', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319105957ef74727d-222e-4c63-b21e-c00453a3af9f', '035899020', '11', '2019-03-17 14:55:10', '温湿度数据', '2', '24.915859', '118.607826', null, '30', null, null, null, null, '20', '63', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319105957f007403e-29e0-464f-9321-1a2609dc11ca', '035899020', '11', '2019-03-17 16:55:34', '温湿度数据', '2', '24.915859', '118.607826', null, '30', null, null, null, null, '20', '63', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191100080275697b-b834-4e74-a5bb-e1314f3bb6b8', '035899020', '11', '2019-03-17 21:56:47', '温湿度数据', null, null, null, null, null, null, null, null, null, '19', '63', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191100081d30a48d-acb8-4e4e-9672-6942450b2475', '035899020', '11', '2019-03-17 19:56:23', '温湿度数据', null, null, null, null, null, null, null, null, null, '19', '63', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319110008b1abc827-16a6-472f-abbe-8fc9022ba126', '035899020', '11', '2019-03-18 01:57:24', '温湿度数据', '2', '24.915859', '118.607826', null, '30', null, null, null, null, '19', '63', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319110008de466a63-4cfa-45b9-a1f8-90e6bd2f6ca1', '035899020', '11', '2019-03-18 00:57:11', '温湿度数据', '2', '24.915859', '118.607826', null, '30', null, null, null, null, '19', '63', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319110008e7a8a082-e985-48ff-be3e-218b13eff1cf', '035899020', '11', '2019-03-17 20:56:23', '温湿度数据', '2', '24.915859', '118.607826', null, '30', null, null, null, null, '19', '63', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319110008f138b3c2-24a6-4d25-85fb-5f537f1704eb', '035899020', '11', '2019-03-17 22:56:47', '温湿度数据', '2', '24.915859', '118.607826', null, '30', null, null, null, null, '19', '63', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191100220e3a310d-eb2d-48e0-a382-8bad44ca66b6', '035899020', '11', '2019-03-17 21:56:47', '温湿度数据', null, null, null, null, null, null, null, null, null, '19', '63', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191100221b8acdb6-330e-401f-b260-78ebdd25a001', '035899020', '11', '2019-03-18 00:57:11', '温湿度数据', '2', '24.915859', '118.607826', null, '30', null, null, null, null, '19', '63', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031911002257ae23de-5251-471f-9c68-11b949c1329f', '035899020', '11', '2019-03-17 19:56:23', '温湿度数据', null, null, null, null, null, null, null, null, null, '19', '63', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319110022b0945b22-e6cf-4f50-99fa-9df353db05eb', '035899020', '11', '2019-03-17 20:56:23', '温湿度数据', '2', '24.915859', '118.607826', null, '30', null, null, null, null, '19', '63', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319110022e179e88b-e4c4-48f0-acc4-0ab937d7a7f6', '035899020', '11', '2019-03-17 22:56:47', '温湿度数据', '2', '24.915859', '118.607826', null, '30', null, null, null, null, '19', '63', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319110022eb247335-443e-413c-ad0c-d6b04a462605', '035899020', '11', '2019-03-18 01:57:24', '温湿度数据', '2', '24.915859', '118.607826', null, '30', null, null, null, null, '19', '63', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031911003523bc7662-fc51-4179-a909-2cebf30bada3', '035899020', '11', '2019-03-17 19:56:23', '温湿度数据', null, null, null, null, null, null, null, null, null, '19', '63', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191100352af3b551-e7a1-422d-8dfa-787df5d2dc09', '035899020', '11', '2019-03-17 21:56:47', '温湿度数据', null, null, null, null, null, null, null, null, null, '19', '63', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191100357b1ed967-7358-4b28-8e40-cf1677ac8b14', '035899020', '11', '2019-03-18 00:57:11', '温湿度数据', '2', '24.915859', '118.607826', null, '30', null, null, null, null, '19', '63', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319110035b416caa9-9708-46e7-9fd9-93acce947d64', '035899020', '11', '2019-03-17 22:56:47', '温湿度数据', '2', '24.915859', '118.607826', null, '30', null, null, null, null, '19', '63', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319110035eb748c38-f577-4c30-95a8-df481b4c3661', '035899020', '11', '2019-03-17 20:56:23', '温湿度数据', '2', '24.915859', '118.607826', null, '30', null, null, null, null, '19', '63', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319110035f0d6832b-2504-475c-9fc8-12eda5dfba0b', '035899020', '11', '2019-03-18 01:57:24', '温湿度数据', '2', '24.915859', '118.607826', null, '30', null, null, null, null, '19', '63', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191100424a2116c8-ae4a-4d09-bca7-0530818065f3', '035899020', '11', '2019-03-18 06:58:24', '温湿度数据', '2', '24.915859', '118.607826', null, '30', null, null, null, null, '19', '64', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191100424d8ac5f2-5293-4516-8769-37d84c4bb2c1', '035899020', '11', '2019-03-18 04:57:59', '温湿度数据', '2', '24.915859', '118.607826', null, '30', null, null, null, null, '19', '63', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319110042a283d021-6579-4fff-87a2-080df4c97b01', '035899020', '11', '2019-03-18 02:57:36', '温湿度数据', '2', '24.915859', '118.607826', null, '30', null, null, null, null, '19', '63', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319110042d0dc2175-3cdb-46af-b2b7-a9d31c38b9ea', '035899020', '11', '2019-03-18 03:57:59', '温湿度数据', null, null, null, null, null, null, null, null, null, '19', '64', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319110042e724401d-9211-44aa-8779-37f8b4d25740', '035899020', '11', '2019-03-18 07:58:36', '温湿度数据', '2', '24.915859', '118.607826', null, '30', null, null, null, null, '19', '64', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319110042f7cbbd6d-79d2-4438-a662-161afc9c7f90', '035899020', '11', '2019-03-18 01:57:36', '温湿度数据', null, null, null, null, null, null, null, null, null, '19', '63', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191100504e8b9553-4069-4906-88d0-00e535dc392e', '035899020', '11', '2019-03-18 08:58:48', '温湿度数据', '2', '24.915859', '118.607826', null, '30', null, null, null, null, '19', '66', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191100504f91ab28-4d56-4abd-accb-02a372142635', '035899020', '11', '2019-03-18 10:59:12', '温湿度数据', '2', '24.915859', '118.607826', null, '30', null, null, null, null, '20', '67', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191100505d7f88ae-6822-411d-8a9a-8fb66eb56d28', '035899020', '11', '2019-03-18 12:59:37', '温湿度数据', '2', '24.915859', '118.607826', null, '30', null, null, null, null, '21', '66', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319110050b68ed78e-1ffa-43c9-8b4a-72519806df84', '035899020', '11', '2019-03-18 09:59:12', '温湿度数据', null, null, null, null, null, null, null, null, null, '21', '67', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319110050f28fc319-590e-4e58-aa14-4da36d939720', '035899020', '11', '2019-03-18 13:59:48', '温湿度数据', '2', '24.919794', '118.611549', null, '26', null, null, null, null, '21', '66', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319110050fa5d5aa7-c088-4678-8d64-fc77d6fd35c1', '035899020', '11', '2019-03-18 07:58:48', '温湿度数据', null, null, null, null, null, null, null, null, null, '20', '67', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319110057225435e4-2579-48b8-890b-525adca33f95', '035899020', '11', '2019-03-18 16:00:25', '温湿度数据', null, null, null, null, null, null, null, null, null, '22', '67', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191100576f135c1b-ee3b-485b-b594-14c57d7e65a5', '035899020', '11', '2019-03-18 17:00:25', '温湿度数据', '2', '24.919794', '118.611549', null, '28', null, null, null, null, '22', '68', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191100578506929f-67e4-4aea-bca4-f2cb55cdaae1', '035899020', '11', '2019-03-18 14:00:01', '温湿度数据', null, null, null, null, null, null, null, null, null, '21', '68', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191100579c60d945-494d-4a97-9399-ff493cb70d65', '035899020', '11', '2019-03-18 19:00:50', '温湿度数据', '2', '24.919794', '118.611549', null, '28', null, null, null, null, '21', '67', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319110057a4f27a29-761f-4a69-9358-1f165f879a46', '035899020', '11', '2019-03-18 15:00:01', '温湿度数据', '2', '24.919794', '118.611549', null, '26', null, null, null, null, '21', '67', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319110057fbcc099e-3392-4e84-ae04-85d91146c245', '035899020', '11', '2019-03-18 20:01:02', '温湿度数据', '2', '24.915859', '118.607826', null, '29', null, null, null, null, '21', '67', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191101052bc68d25-bb4b-460c-9383-dfb1840395fe', '035899020', '11', '2019-03-18 23:01:38', '温湿度数据', '2', '24.915859', '118.607826', null, '29', null, null, null, null, '21', '67', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191101053733e1dd-ce83-42dc-8e74-67ce0e4a3d68', '035899020', '11', '2019-03-18 20:01:14', '温湿度数据', null, null, null, null, null, null, null, null, null, '21', '67', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191101054136a399-5f59-404d-b45d-46d25e4c6759', '035899020', '11', '2019-03-19 02:02:15', '温湿度数据', '2', '24.915859', '118.607826', null, '29', null, null, null, null, '20', '68', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319110105a39a323f-85d7-4b5a-a6aa-949863db1e1a', '035899020', '11', '2019-03-18 21:01:14', '温湿度数据', '2', '24.915859', '118.607826', null, '29', null, null, null, null, '21', '67', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319110105b32207ab-2e87-4735-9168-0f7549226d01', '035899020', '11', '2019-03-19 01:02:02', '温湿度数据', '2', '24.915859', '118.607826', null, '29', null, null, null, null, '20', '68', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319110105e0b09bea-3cf7-4439-ac7b-17dbe36a9912', '035899020', '11', '2019-03-18 22:01:38', '温湿度数据', null, null, null, null, null, null, null, null, null, '21', '67', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031911011835661eb7-f758-4705-a2eb-3c2dd34f7697', '035899020', '11', '2019-03-18 20:01:14', '温湿度数据', null, null, null, null, null, null, null, null, null, '21', '67', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319110118391c07ed-7748-49fc-8396-5953267d4b15', '035899020', '11', '2019-03-18 23:01:38', '温湿度数据', '2', '24.915859', '118.607826', null, '29', null, null, null, null, '21', '67', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191101183c31f720-d5eb-450d-b71c-b08bdc5beb70', '035899020', '11', '2019-03-19 02:02:15', '温湿度数据', '2', '24.915859', '118.607826', null, '29', null, null, null, null, '20', '68', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319110118c2d3805f-2d85-4c49-b285-6d71f05ddfc4', '035899020', '11', '2019-03-18 22:01:38', '温湿度数据', null, null, null, null, null, null, null, null, null, '21', '67', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319110118f51bdb6b-317b-426c-bf84-4a9d07d99e17', '035899020', '11', '2019-03-19 01:02:02', '温湿度数据', '2', '24.915859', '118.607826', null, '29', null, null, null, null, '20', '68', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319110118f60c00ec-f709-44fc-955d-9f2c1762fbf5', '035899020', '11', '2019-03-18 21:01:14', '温湿度数据', '2', '24.915859', '118.607826', null, '29', null, null, null, null, '21', '67', null, '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319111708c71cc7aa-a581-49ed-89d2-51d547a24421', '032219917', '11', '2019-03-15 16:56:07', '事件数据', '2', '24.919430', '118.608749', null, '25', null, '装盖;无效', '装箱/安装', '20', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031911171314a5f845-1327-4a5a-a327-57017e6c7f30', '032219917', '11', '2019-03-16 23:14:05', '例行数据', '2', '24.915859', '118.607826', null, '25', '80', '装盖;无效', null, '20', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191117131af688a9-bc19-4611-9fee-b47d4b0a54c7', '032219917', '11', '2019-03-15 18:21:09', '事件数据', '2', '24.915859', '118.607826', null, '26', null, '装盖;无效', '装箱/安装', '20', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191117132dc6e7e4-5c2c-4545-855e-ee59cab4c078', '032219917', '11', '2019-03-15 17:13:14', '例行数据', '2', '24.915859', '118.607826', null, '24', '80', '装盖;无效', null, '21', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031911171330e9f789-076a-43bf-a696-777b3a3662a4', '032219917', '11', '2019-03-16 11:13:44', '例行数据', '2', '24.915859', '118.607826', null, '26', '80', '拆盖;无效', null, '20', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031911171339cedb5d-d556-43bc-8afc-68f1f15cd00c', '032219917', '11', '2019-03-16 07:28:51', '事件数据', '2', '24.915859', '118.607826', null, '26', null, '拆盖;无效', '开箱/脱落', '19', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191117134e202add-2c57-4864-b8ea-851a10b506ab', '032219917', '11', '2019-03-15 20:13:19', '例行数据', '2', '24.915859', '118.607826', null, '26', '80', '装盖;无效', null, '20', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319111713537eb222-fb99-42b8-b565-b08c71a7524b', '032219917', '11', '2019-03-15 17:20:13', '事件数据', '2', '24.916813', '118.604553', null, '26', null, '拆盖;无效', '开箱/脱落', '21', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191117135aae7e8e-1393-4d8f-ba43-c102361ba676', '032219917', '11', '2019-03-16 17:00:19', '事件数据', '2', '24.915859', '118.607826', null, '25', null, '装盖;无效', '装箱/安装', '20', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191117135ac78196-5d50-4d06-a9ca-37da8a9b14c1', '032219917', '11', '2019-03-16 20:14:00', '例行数据', '2', '24.915859', '118.607826', null, '25', '80', '装盖;无效', null, '20', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191117137edab6aa-a6b0-4282-9a7c-bca7a299eca7', '032219917', '11', '2019-03-16 08:13:39', '例行数据', '2', '24.915859', '118.607826', null, '26', '80', '拆盖;无效', null, '19', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191117139db00a3c-d2c5-4d68-9cc1-382f7e75b375', '032219917', '11', '2019-03-16 02:13:29', '例行数据', '2', '24.915859', '118.607826', null, '26', '80', '装盖;无效', null, '19', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319111713bc3b8492-5764-4f42-9b7e-2c063fd4c1cb', '032219917', '11', '2019-03-15 23:13:24', '例行数据', '2', '24.915859', '118.607826', null, '26', '80', '装盖;无效', null, '19', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319111713c422412a-2f10-48a7-85b5-81af75a63200', '032219917', '11', '2019-03-16 17:13:55', '例行数据', '2', '24.915859', '118.607826', null, '25', '80', '装盖;无效', null, '20', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319111713d3413cef-ee77-43af-b8a8-4078b76b4c9e', '032219917', '11', '2019-03-16 05:13:34', '例行数据', '2', '24.915859', '118.607826', null, '26', '80', '装盖;无效', null, '19', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319111713dc70b343-f088-49a9-9557-2f4b5f817ccb', '032219917', '11', '2019-03-16 14:13:50', '例行数据', '2', '24.916813', '118.604553', null, '25', '80', '拆盖;无效', null, '20', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031911171618c7b29a-15f4-480d-9786-13bd24472d0b', '032219917', '11', '2019-03-18 02:14:51', '例行数据', '2', '24.915859', '118.607826', null, '26', '79', '装盖;无效', null, '19', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191117163d60edb4-6586-4fdb-93d9-a1b76006951c', '032219917', '11', '2019-03-17 02:14:10', '例行数据', '2', '24.915859', '118.607826', null, '25', '80', '装盖;无效', null, '20', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191117164e521296-8d26-4a4d-8c20-bab35922bdf2', '032219917', '11', '2019-03-17 05:14:16', '例行数据', '2', '24.915859', '118.607826', null, '26', '80', '装盖;无效', null, '19', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031911171650f7c200-dad0-474b-a75f-a79ee29df07d', '032219917', '11', '2019-03-17 23:14:45', '例行数据', '2', '24.915859', '118.607826', null, '26', '79', '装盖;无效', null, '19', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191117165e84022e-ba96-4ffe-964b-f5602c39b321', '032219917', '11', '2019-03-17 20:14:40', '例行数据', '2', '24.915859', '118.607826', null, '26', '79', '装盖;无效', null, '20', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191117167e5e3506-6e1d-48ea-8652-6feae6b6c57b', '032219917', '11', '2019-03-17 11:14:28', '事件数据', '2', '24.915859', '118.607826', null, '25', null, '拆盖;无效', '开箱/脱落', '19', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031911171695974852-f2cb-439f-a2f2-1fede34bcd1b', '032219917', '11', '2019-03-17 08:00:41', '事件数据', '2', '24.915718', '118.611336', null, '25', null, '拆盖;无效', '开箱/脱落', '19', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319111716af87605e-fc13-49a8-9dc9-ab5eb0a6d168', '032219917', '11', '2019-03-17 11:14:26', '例行数据', '2', '24.915859', '118.607826', null, '25', '80', '装盖;无效', null, '19', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319111716c3a14825-e40c-4d57-8718-aa9e01ce2ca3', '032219917', '11', '2019-03-18 05:14:55', '例行数据', '2', '24.915859', '118.607826', null, '26', '79', '装盖;无效', null, '19', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319111716e2b7a5c0-db37-4730-b022-99419a3b2438', '032219917', '11', '2019-03-17 08:14:21', '例行数据', '2', '24.915859', '118.607826', null, '25', '80', '拆盖;无效', null, '20', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319111716f074ba5b-72a5-4217-9edc-9ee89ec92ff8', '032219917', '11', '2019-03-17 16:07:51', '事件数据', '2', '24.915859', '118.607826', null, '25', null, '装盖;无效', '装箱/安装', '20', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319111716f1cdf17d-73e0-473f-bd84-1ed37d176d90', '032219917', '11', '2019-03-17 17:14:36', '例行数据', '2', '24.915718', '118.611336', null, '25', '79', '装盖;无效', null, '20', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319111716f55d90f8-3ff9-4827-98ed-9c2f9f30ec98', '032219917', '11', '2019-03-17 08:14:23', '事件数据', '2', '24.915859', '118.607826', null, '25', null, '装盖;无效', '装箱/安装', '20', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319111716f6dafe16-d002-419e-a40f-bccfef943790', '032219917', '11', '2019-03-18 07:06:02', '事件数据', '2', '24.915859', '118.607826', null, '25', null, '拆盖;无效', '开箱/脱落', '19', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319111716fbf69d20-7996-4d8c-b414-fc0c992cd600', '032219917', '11', '2019-03-17 14:14:31', '例行数据', '2', '24.915859', '118.607826', null, '26', '79', '拆盖;无效', null, '20', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191117191ab228ff-1b2e-4f84-a2d6-177c3583689c', '032219917', '11', '2019-03-19 11:15:46', '例行数据', '2', '24.916813', '118.604553', null, '26', '79', '拆盖;无效', null, '22', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191117192ff3ae0b-2990-4a0d-81c5-843b94cb60bc', '032219917', '11', '2019-03-19 02:15:31', '例行数据', '2', '24.915859', '118.607826', null, '27', '79', '装盖;无效', null, '20', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191117193d6ae1aa-d27c-4df3-9478-7a6d24419ffd', '032219917', '11', '2019-03-18 23:15:26', '例行数据', '2', '24.915859', '118.607826', null, '27', '79', '装盖;无效', null, '21', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('201903191117193dc86a3b-b5ea-4c96-b6fc-3d782535fb12', '032219917', '11', '2019-03-18 08:15:01', '例行数据', '2', '24.915859', '118.607826', null, '26', '79', '拆盖;无效', null, '19', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319111719648c3ce6-5808-463e-8ca0-6a4e0b41c714', '032219917', '11', '2019-03-18 14:15:11', '例行数据', '2', '24.915859', '118.607826', null, '27', '79', '拆盖;无效', null, '21', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('2019031911171989cd909f-2c8b-46e4-a272-20c138dd82c4', '032219917', '11', '2019-03-18 07:14:38', '事件数据', '2', '24.915859', '118.607826', null, '26', null, '装盖;无效', '装箱/安装', '20', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319111719c28a1813-42c7-4077-8c89-3f58a7581a52', '032219917', '11', '2019-03-18 17:15:16', '例行数据', '2', '24.915859', '118.607826', null, '27', '79', '拆盖;无效', null, '22', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319111719c8ebc9f9-a445-46e4-b3eb-a3de641dc591', '032219917', '11', '2019-03-19 06:58:31', '事件数据', '2', '24.915859', '118.607826', null, '26', null, '拆盖;无效', '开箱/脱落', '20', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319111719d5ea755b-b539-4a8d-8775-83a7a7cedd0e', '032219917', '11', '2019-03-18 20:15:21', '例行数据', '2', '24.915859', '118.607826', null, '26', '79', '装盖;无效', null, '21', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319111719ea9a92a5-149c-4a34-8970-82326f55e87c', '032219917', '11', '2019-03-18 11:15:06', '例行数据', '2', '24.916813', '118.604553', null, '25', '79', '拆盖;无效', null, '21', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319111719f6f8228d-1fc7-4b53-bc08-ca0b8719d760', '032219917', '11', '2019-03-19 05:15:36', '例行数据', '2', '24.915859', '118.607826', null, '27', '79', '装盖;无效', null, '20', null, null, '2', '0', null, null, null);
INSERT INTO `dev_hi_data` VALUES ('20190319111719fcd24955-8950-416f-a6c8-24f0a995caa8', '032219917', '11', '2019-03-19 08:15:41', '例行数据', '2', '24.915718', '118.611336', null, '24', '79', '拆盖;无效', null, '20', null, null, '2', '0', null, null, null);

-- ----------------------------
-- Table structure for dev_info
-- ----------------------------
DROP TABLE IF EXISTS `dev_info`;
CREATE TABLE `dev_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serialNumber` varchar(100) DEFAULT NULL,
  `deviceid` varchar(10) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `containerNo` varchar(100) DEFAULT NULL,
  `registerTime` date DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `devSimNo` varchar(100) DEFAULT NULL,
  `devIccid` varchar(100) DEFAULT NULL,
  `createUser` varchar(50) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `updateUser` varchar(50) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `isdel` int(11) DEFAULT NULL,
  `blank1` varchar(100) DEFAULT NULL,
  `blank2` varchar(100) DEFAULT NULL,
  `blank3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_5` (`uid`),
  CONSTRAINT `FK_Reference_5` FOREIGN KEY (`uid`) REFERENCES `sys_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dev_info
-- ----------------------------
INSERT INTO `dev_info` VALUES ('3', '1711210435	', '035899020', '11', '1711210435', '2019-02-22', 'T13-2', '', '898602B5131650395525', 'admin', '2019-02-22 15:13:45', null, null, '有温湿度传感器', null, null, null, null);
INSERT INTO `dev_info` VALUES ('4', '1801060029', '032219917', '11', '1801060029', '2019-02-22', 'T12-1', '', '898602B5131650395604', 'admin', '2019-02-22 15:15:59', null, null, '没有温湿度传感器', null, null, null, null);
INSERT INTO `dev_info` VALUES ('5', '1711210441', '031883241', '11', '1711210441', '2019-02-22', 'T13-2', '', '898602B5131650395441', 'admin', '2019-02-22 15:17:49', null, null, '温湿度模拟设备', null, null, null, null);
INSERT INTO `dev_info` VALUES ('6', '1801063350', '031663350', '11', '1801063350', '2019-02-23', 'T12-1', '', '898602B5131650393350', 'admin', '2019-02-23 09:13:56', null, null, '模拟没有温度传感器设备', null, null, null, null);
INSERT INTO `dev_info` VALUES ('8', '1711210488', '032219930', '14', '1711210488', '2019-03-11', 'T12-1', '', '898602B5131650393330', 'gyy', '2019-03-11 16:33:08', null, null, '高圆圆添加', null, null, null, null);

-- ----------------------------
-- Table structure for dev_ru_data
-- ----------------------------
DROP TABLE IF EXISTS `dev_ru_data`;
CREATE TABLE `dev_ru_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deviceid` varchar(10) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `datatime` datetime DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `mode` int(11) DEFAULT NULL,
  `latitude` varchar(10) DEFAULT NULL,
  `longitude` varchar(10) DEFAULT NULL,
  `satellite` int(11) DEFAULT NULL,
  `devSignal` int(11) DEFAULT NULL,
  `battery` int(11) DEFAULT NULL,
  `statuscode` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `alarmcode` varchar(20) DEFAULT NULL,
  `temperOut` int(11) DEFAULT NULL,
  `temperIn` int(11) DEFAULT NULL,
  `humidity` int(11) DEFAULT NULL,
  `onOff` int(11) DEFAULT NULL,
  `isdel` int(11) DEFAULT NULL,
  `blank1` varchar(100) DEFAULT NULL,
  `blank2` varchar(100) DEFAULT NULL,
  `blank3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  CONSTRAINT `dev_ru_data_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `sys_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dev_ru_data
-- ----------------------------
INSERT INTO `dev_ru_data` VALUES ('1', '035899020', '11', '2019-03-19 10:12:19', '例行数据', '2', '24.916813', '118.604553', '0', '28', '85', '装盖;无效', '', '22', '21', '71', '2', '0', null, null, null);
INSERT INTO `dev_ru_data` VALUES ('2', '032219917', '11', '2019-03-19 11:15:46', '例行数据', '2', '24.916813', '118.604553', '0', '26', '79', '拆盖;无效', '', '22', null, null, '2', '0', null, null, null);
INSERT INTO `dev_ru_data` VALUES ('3', '031883241', '11', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null);
INSERT INTO `dev_ru_data` VALUES ('4', '031663350', '11', '2018-10-11 20:20:51', '例行数据', '1', '22.859280', '114.087723', '4', '0', '71', '装盖;无效', '', '22', null, null, '2', '0', null, null, null);
INSERT INTO `dev_ru_data` VALUES ('6', '032219930', '14', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null);

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `permNo` varchar(5) DEFAULT NULL,
  `isdel` int(11) DEFAULT NULL,
  `blank1` varchar(100) DEFAULT NULL,
  `blank2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('1', '用户管理', null, '01000', '0', null, null);
INSERT INTO `sys_permission` VALUES ('5', '实时位置', null, '02000', '0', null, null);
INSERT INTO `sys_permission` VALUES ('6', '设备信息管理', null, '03000', '0', null, null);
INSERT INTO `sys_permission` VALUES ('7', '设备配置', null, '04000', '0', null, null);
INSERT INTO `sys_permission` VALUES ('8', '设备数据展示', null, '05000', '0', null, null);
INSERT INTO `sys_permission` VALUES ('9', '管理所有设备', null, '06000', '0', null, null);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `roleNo` varchar(5) DEFAULT NULL,
  `isdel` int(11) DEFAULT NULL,
  `blank1` varchar(100) DEFAULT NULL,
  `blank2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '管理员', '0000', '0', null, null);
INSERT INTO `sys_role` VALUES ('2', '客户', '0001', '0', null, null);
INSERT INTO `sys_role` VALUES ('3', '测试角色', '0002', '0', null, null);

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_3` (`rid`),
  KEY `FK_Reference_4` (`pid`),
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`rid`) REFERENCES `sys_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Reference_4` FOREIGN KEY (`pid`) REFERENCES `sys_permission` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES ('1', '1', '1');
INSERT INTO `sys_role_permission` VALUES ('2', '1', '5');
INSERT INTO `sys_role_permission` VALUES ('3', '1', '6');
INSERT INTO `sys_role_permission` VALUES ('4', '1', '7');
INSERT INTO `sys_role_permission` VALUES ('5', '1', '8');
INSERT INTO `sys_role_permission` VALUES ('6', '2', '5');
INSERT INTO `sys_role_permission` VALUES ('7', '2', '6');
INSERT INTO `sys_role_permission` VALUES ('8', '2', '7');
INSERT INTO `sys_role_permission` VALUES ('9', '2', '8');
INSERT INTO `sys_role_permission` VALUES ('10', '1', '9');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(100) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `pswd` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `picurl` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `isdel` int(11) DEFAULT NULL,
  `blank1` varchar(100) DEFAULT NULL,
  `blank2` varchar(100) DEFAULT NULL,
  `blank3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('11', 'admin', '管理员', '1e441a089d21f9e8211c0db4fe8d5afe', '010-2392837', '18902938298', 'admin@qq.com', '20190312f5f51981-3c31-4788-a64e-cd903aff055e.png', '2019-02-16 08:57:05', '2019-03-19 11:51:18', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('12', 'zhm', '小明', '41f529390278ee741e04b8b3ccd22fa8', '', '18902938271', 'zhm@qq.com', '', '2019-02-16 10:51:36', '2019-02-18 15:18:07', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('14', 'gyy', '高圆圆', '280100875ee994d328593ccff0123429', '', '18976767987', 'gyy@qq.com', '', '2019-02-16 11:45:41', '2019-03-14 17:42:02', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('15', 'zyt', '赵又廷', 'dbac79d295dbcc423bc2d6219256c72e', '', '17865676786', 'zyt@qq.com', '', '2019-02-16 11:47:53', '2019-03-11 17:57:38', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('16', 'zdb', '赵大宝', '4b2f10180255df656ce07af5a257f514', '', '18902938261', 'zdb@qq.com', '20190218af95e953-adbf-4b9d-9fd0-0023cf0762dd.png', '2019-02-18 09:04:25', null, '0', null, null, null);
INSERT INTO `sys_user` VALUES ('22', 'test2', 'test2', 'a7d2df8199478818b130e0140dd50f04', '', '18902938261', 'test@qq.com', '', '2019-03-08 17:08:30', null, '0', null, null, null);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_1` (`uid`),
  KEY `FK_Reference_2` (`rid`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`uid`) REFERENCES `sys_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Reference_2` FOREIGN KEY (`rid`) REFERENCES `sys_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('2', '12', '2');
INSERT INTO `sys_user_role` VALUES ('4', '14', '2');
INSERT INTO `sys_user_role` VALUES ('11', '16', '2');
INSERT INTO `sys_user_role` VALUES ('19', '22', '2');
INSERT INTO `sys_user_role` VALUES ('20', '15', '3');
INSERT INTO `sys_user_role` VALUES ('22', '11', '1');
