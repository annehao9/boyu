/*
 Navicat MySQL Data Transfer

 Source Server         : 999
 Source Server Type    : MySQL
 Source Server Version : 100128
 Source Host           : localhost:3306
 Source Schema         : minsu

 Target Server Type    : MySQL
 Target Server Version : 100128
 File Encoding         : 65001

 Date: 20/04/2021 09:01:41
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for minsu_comm
-- ----------------------------
DROP TABLE IF EXISTS `minsu_comm`;
CREATE TABLE `minsu_comm`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `roomid` int NULL DEFAULT NULL COMMENT '??ID',
  `uid` int NULL DEFAULT NULL COMMENT '??ID',
  `commtext` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `roomId`(`roomid`) USING BTREE,
  INDEX `uId`(`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = '????-??' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of minsu_comm
-- ----------------------------
INSERT INTO `minsu_comm` VALUES (1, 1, 1, '环境很好', '下次还来');

-- ----------------------------
-- Table structure for minsu_landlady
-- ----------------------------
DROP TABLE IF EXISTS `minsu_landlady`;
CREATE TABLE `minsu_landlady`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????',
  `introduce` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????',
  `vatar` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = '????-????' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of minsu_landlady
-- ----------------------------
INSERT INTO `minsu_landlady` VALUES (1, '张兰', '女，热情，有爱心', '00adca5a0d93daa80121985c9ef05f.jpg');
INSERT INTO `minsu_landlady` VALUES (2, '刘冰', '男，有责任心', '00adca5a0d93daa80121985c9ef05f.jpg');
INSERT INTO `minsu_landlady` VALUES (3, '李建', '男，歌手', '00adca5a0d93daa80121985c9ef05f.jpg');

-- ----------------------------
-- Table structure for minsu_orders
-- ----------------------------
DROP TABLE IF EXISTS `minsu_orders`;
CREATE TABLE `minsu_orders`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `roomid` int NULL DEFAULT NULL COMMENT '??ID',
  `uid` int NULL DEFAULT NULL COMMENT '??ID',
  `orderstate` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????',
  `price` int NULL DEFAULT NULL COMMENT '??',
  `ordertime` date NULL DEFAULT NULL COMMENT '????',
  `intime` timestamp NULL DEFAULT NULL COMMENT '????',
  `outtime` timestamp NULL DEFAULT NULL COMMENT '????',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??',
  `residentsid` int NULL DEFAULT NULL COMMENT '???ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `roomId`(`roomid`) USING BTREE,
  INDEX `uId`(`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = '????-??' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of minsu_orders
-- ----------------------------
INSERT INTO `minsu_orders` VALUES (1, 1, 1, '1', 188, '2021-04-20', '2021-04-21 00:00:00', '2021-04-22 00:00:00', '提前开空调', 1);
INSERT INTO `minsu_orders` VALUES (2, 2, 2, '1', 268, '2021-04-20', '2021-04-21 00:00:00', '2021-04-22 00:00:00', '提前开空调', 2);
INSERT INTO `minsu_orders` VALUES (3, 3, 3, '1', 264, '2021-04-20', '2021-04-21 00:00:00', '2021-04-22 00:00:00', '提前开空调', 3);

-- ----------------------------
-- Table structure for minsu_residents
-- ----------------------------
DROP TABLE IF EXISTS `minsu_residents`;
CREATE TABLE `minsu_residents`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????',
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = '????-???' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of minsu_residents
-- ----------------------------
INSERT INTO `minsu_residents` VALUES (1, '刘六', '19568956869');
INSERT INTO `minsu_residents` VALUES (2, '王五', '15869598597');
INSERT INTO `minsu_residents` VALUES (3, '李四', '15295689568');

-- ----------------------------
-- Table structure for minsu_roominfo
-- ----------------------------
DROP TABLE IF EXISTS `minsu_roominfo`;
CREATE TABLE `minsu_roominfo`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `roomtitle` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????',
  `ratednum` int NULL DEFAULT NULL COMMENT '????',
  `bednum` int NULL DEFAULT NULL COMMENT '??',
  `roomdescription` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??',
  `roominfo_status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??',
  `landladyid` int NULL DEFAULT NULL COMMENT '??id',
  `price` int NULL DEFAULT NULL COMMENT '??',
  `city` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pic` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 141 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = '????-????' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of minsu_roominfo
-- ----------------------------
INSERT INTO `minsu_roominfo` VALUES (1, 'B北欧风', 4, 4, '也可 B北欧风,地铁直达春熙路太古里', 'WiFi,电梯，独立卫浴，热水淋浴，空调，电视，洗衣机', '1', 1, 188, '北京', '201707152046453057_700_467.jpg');
INSERT INTO `minsu_roominfo` VALUES (2, '黑白简约', 4, 4, '想要低价高品质绕行～近太古里地铁北欧黑白简约', 'WiFi,电梯，独立卫浴，热水淋浴，空调，电视，洗衣机', '1', 3, 268, '北京', '201806011804337450_700_467.jpg');
INSERT INTO `minsu_roominfo` VALUES (3, '青禾芷间', 3, 3, '百草路地铁站/保利新天地/宜家床配乳胶床垫/', 'WiFi,电梯，独立卫浴，热水淋浴，空调，电视，洗衣机', '1', 2, 264, '北京', '201904211845386321_700_467.jpg');
INSERT INTO `minsu_roominfo` VALUES (4, '海洋公园', 5, 5, '微微|莫兰迪 春熙路太古里商圈/宽窄巷子/非常安静/装修精美/大慈寺对面/看川剧变脸/步行到春熙路几分钟/', 'WiFi,电梯，独立卫浴，热水淋浴，空调，电视，洗衣机', '0', 1, 198, '北京', '201905241445192206_700_467.jpg');
INSERT INTO `minsu_roominfo` VALUES (5, '船舍茶椐', 6, 6, '【欧式•简约】华西医院/武侯祠锦里/舒适两居', 'WiFi,电梯，独立卫浴，热水淋浴，空调，电视，洗衣机', '0', 2, 338, '北京', '201911132245139443_700_467.jpg');
INSERT INTO `minsu_roominfo` VALUES (6, '龙河月色', 4, 4, '天府广场|成都市人民公园&一居室', 'WiFi,电梯，独立卫浴，热水淋浴，空调，电视，洗衣机', '0', 3, 168, '北京', '201912301533441827_700_467.jpg');
INSERT INTO `minsu_roominfo` VALUES (7, '悦庭楠舍', 3, 3, '万家湾地铁4号线中坝站直达宽窄巷子/春熙路', 'WiFi,电梯，独立卫浴，热水淋浴，空调，电视，洗衣机', '0', 1, 268, '北京', '202005060208243447_700_467.jpg');
INSERT INTO `minsu_roominfo` VALUES (8, '未见山', 2, 2, '青禾芷间-云素-《优质》珠江合生汇／新光天地', 'WiFi,电梯，独立卫浴，热水淋浴，空调，电视，洗衣机', '0', 2, 178, '北京', '202006050128356674_700_467.jpg');
INSERT INTO `minsu_roominfo` VALUES (9, '西塘留白', 5, 5, '青禾芷间一云夕一《优质》珠江合生汇／新光天地', 'WiFi,电梯，独立卫浴，热水淋浴，空调，电视，洗衣机', '0', 3, 238, '北京', '202007272239273505_700_467.jpg');
INSERT INTO `minsu_roominfo` VALUES (10, '朴宿·喜度', 5, 5, '精致地铁口200米全落地窗观景', 'WiFi,电梯，独立卫浴，热水淋浴，空调，电视，洗衣机', '0', 1, 165, '北京', '202008070951184943_700_467.jpg');
INSERT INTO `minsu_roominfo` VALUES (11, '说时依旧', 3, 3, '红星南延线+温馨现代豪华一居室', 'WiFi,电梯，独立卫浴，热水淋浴，空调，电视，洗衣机', '0', 1, 238, '北京', '202008251113321766_700_467.jpg');
INSERT INTO `minsu_roominfo` VALUES (12, '翠域木竹坞', 4, 4, 'LOFT别致ins观景套房', 'WiFi,电梯，独立卫浴，热水淋浴，空调，电视，洗衣机', '0', 2, 228, '北京', '202011220015193678_700_467.jpg');
INSERT INTO `minsu_roominfo` VALUES (13, '遥远的山', 3, 3, '【橙途】川师大/行政学院/大运会/时尚二居室', 'WiFi,电梯，独立卫浴，热水淋浴，空调，电视，洗衣机', '0', 3, 258, '杭州', '202012072129491360_700_467.jpg');
INSERT INTO `minsu_roominfo` VALUES (14, '隐居繁华', 3, 3, '地铁3号线钟楼站高端智能科技民宿', 'WiFi,电梯，独立卫浴，热水淋浴，空调，电视，洗衣机', '0', 2, 198, '杭州', '202012291547589275_700_467.jpg');
INSERT INTO `minsu_roominfo` VALUES (15, '二更呆住', 2, 2, '地铁口/北欧小清新一居室/近机场/川大/民大', 'WiFi,电梯，独立卫浴，热水淋浴，空调，电视，洗衣机', '0', 2, 310, '杭州', '202012291547589275_700_468.jpg');
INSERT INTO `minsu_roominfo` VALUES (16, '有  客', 5, 5, '日式榻榻米华熙528华西附二院三圣乡洪河站', 'WiFi,电梯，独立卫浴，热水淋浴，空调，电视，洗衣机', '0', 2, 239, '杭州', '202012291547589275_700_469.jpg');
INSERT INTO `minsu_roominfo` VALUES (17, '朱里俱舍', 5, 5, '【陶姐公寓】舒适双人间C', 'WiFi,电梯，独立卫浴，热水淋浴，空调，电视，洗衣机', '0', 1, 168, '杭州', '202012291547589275_700_470.jpg');
INSERT INTO `minsu_roominfo` VALUES (18, '四十英尺', 3, 3, '［Enjoy］火车东站/太古里/春熙路', 'WiFi,电梯，独立卫浴，热水淋浴，空调，电视，洗衣机', '0', 2, 269, '杭州', '202012291547589275_700_471.jpg');
INSERT INTO `minsu_roominfo` VALUES (19, '拾  光', 4, 4, '华西医院/武侯祠锦里/成办医院/寄存行李', 'WiFi,电梯，独立卫浴，热水淋浴，空调，电视，洗衣机', '0', 3, 278, '杭州', '202012291547589275_700_472.jpg');
INSERT INTO `minsu_roominfo` VALUES (20, '青朴书院', 3, 3, '予樂· Geometry步行至太古里', 'WiFi,电梯，独立卫浴，热水淋浴，空调，电视，洗衣机', '0', 2, 199, '杭州', '202012291547589275_700_473.jpg');
INSERT INTO `minsu_roominfo` VALUES (21, '喜林苑', 3, 3, '海洋公园政务中心一号线华阳站阳光温馨两居室', 'WiFi,电梯，独立卫浴，热水淋浴，空调，电视，洗衣机', '0', 2, 268, '杭州', '202012291547589275_700_474.jpg');
INSERT INTO `minsu_roominfo` VALUES (22, '凡  尘', 2, 2, '宽窄巷子旁 双地铁春熙路太古里雅致套二', 'WiFi,电梯，独立卫浴，热水淋浴，空调，电视，洗衣机', '0', 1, 328, '杭州', '202012291547589275_700_475.jpg');
INSERT INTO `minsu_roominfo` VALUES (23, '空气花园', 5, 5, '落地窗大床/近地铁/太古里/可做饭', '落地窗大床/近地铁/太古里/可做饭', '0', 2, 138, '杭州', '202012291547589275_700_476.jpg');
INSERT INTO `minsu_roominfo` VALUES (24, '云  七', 5, 5, '华阳五号线／环球／软件园／极地海洋／两居', '华阳五号线／环球／软件园／极地海洋／两居', '0', 3, 228, '杭州', '202012291547589275_700_477.jpg');
INSERT INTO `minsu_roominfo` VALUES (25, '无  舍', 3, 3, '宽窄巷子旁 双地铁春熙路太古里雅致套二', '宽窄巷子旁 双地铁春熙路太古里雅致套二', '0', 2, 234, '杭州', '202012291547589275_700_478.jpg');
INSERT INTO `minsu_roominfo` VALUES (26, '远sofar', 2, 2, '落地窗大床/近地铁/太古里/可做饭', '落地窗大床/近地铁/太古里/可做饭', '0', 1, 334, '杭州', '202012291547589275_700_479.jpg');
INSERT INTO `minsu_roominfo` VALUES (27, '水  色', 5, 5, '一次性马桶垫/一次性洗脸巾/直达春熙路太古里/成实外', '一次性马桶垫/一次性洗脸巾/直达春熙路太古里/成实外', '0', 2, 123, '杭州', '202012291547589275_700_480.jpg');
INSERT INTO `minsu_roominfo` VALUES (113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '');

-- ----------------------------
-- Table structure for minsu_user
-- ----------------------------
DROP TABLE IF EXISTS `minsu_user`;
CREATE TABLE `minsu_user`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????????????',
  `user_password` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????????',
  `user_vatar` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = '??-??' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of minsu_user
-- ----------------------------
INSERT INTO `minsu_user` VALUES (1, 'zhangsan', '123456', '00adca5a0d93daa80121985c9ef05f.jpg');
INSERT INTO `minsu_user` VALUES (2, 'lili', '123456', '00adca5a0d93daa80121985c9ef05f.jpg');
INSERT INTO `minsu_user` VALUES (3, '李四', '123456', '00adca5a0d93daa80121985c9ef05f.jpg');

SET FOREIGN_KEY_CHECKS = 1;
