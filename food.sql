/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : food

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 24/05/2019 19:45:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_admin
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin`  (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名字',
  `a_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  PRIMARY KEY (`a_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
INSERT INTO `tb_admin` VALUES (1, 'admin', 'admin');
INSERT INTO `tb_admin` VALUES (27, 'XING', 'XING');

-- ----------------------------
-- Table structure for tb_admin_qq
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin_qq`;
CREATE TABLE `tb_admin_qq`  (
  `a_id` int(11) NOT NULL COMMENT 'admin表id',
  `openID` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qq表'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_admin_qq
-- ----------------------------
INSERT INTO `tb_admin_qq` VALUES (1, 'F26161FD557A749FB0FA6DC2FA693B0F');

-- ----------------------------
-- Table structure for tb_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin_role`;
CREATE TABLE `tb_admin_role`  (
  `adminid` int(11) NOT NULL COMMENT '用户id',
  `roleid` int(11) DEFAULT NULL COMMENT '角色id'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_admin_role
-- ----------------------------
INSERT INTO `tb_admin_role` VALUES (1, 1);
INSERT INTO `tb_admin_role` VALUES (2, 2);
INSERT INTO `tb_admin_role` VALUES (3, 1);
INSERT INTO `tb_admin_role` VALUES (4, 2);
INSERT INTO `tb_admin_role` VALUES (5, 1);
INSERT INTO `tb_admin_role` VALUES (24, 2);
INSERT INTO `tb_admin_role` VALUES (25, 2);
INSERT INTO `tb_admin_role` VALUES (26, 1);
INSERT INTO `tb_admin_role` VALUES (27, 2);

-- ----------------------------
-- Table structure for tb_consume
-- ----------------------------
DROP TABLE IF EXISTS `tb_consume`;
CREATE TABLE `tb_consume`  (
  `c_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '消费id',
  `o_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作人员',
  `c_date` date NOT NULL COMMENT '吃饭日期',
  `c_money` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消费金额',
  `c_cookbook` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜谱',
  `c_review` int(255) NOT NULL COMMENT '是否评论0否，1是',
  PRIMARY KEY (`c_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 80 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_consume
-- ----------------------------
INSERT INTO `tb_consume` VALUES (66, 'admin', '2019-05-01', '248', '顾客菜单：G-D-蒜苔腊肠炒饭骨-JJ-', 0);
INSERT INTO `tb_consume` VALUES (67, 'admin', '2019-05-01', '375', '美味酱脊骨,D,G,', 0);
INSERT INTO `tb_consume` VALUES (68, 'admin', '2019-04-30', '375', '美味酱脊骨,D,G,', 0);
INSERT INTO `tb_consume` VALUES (69, 'admin', '2019-04-30', '134', '蒜苔腊肠炒饭骨,', 0);
INSERT INTO `tb_consume` VALUES (70, 'admin', '2019-04-17', '211', '美味酱脊骨,G,', 0);
INSERT INTO `tb_consume` VALUES (71, 'admin', '2019-04-20', '182', '美味酱脊骨,AA,', 0);
INSERT INTO `tb_consume` VALUES (72, 'admin', '2019-04-23', '307', 'Q,A,', 0);
INSERT INTO `tb_consume` VALUES (73, 'admin', '2019-04-25', '160', 'AA,S,A,', 0);
INSERT INTO `tb_consume` VALUES (74, 'admin', '2019-05-02', '157', 'W,Q,', 0);
INSERT INTO `tb_consume` VALUES (75, 'admin', '2019-05-01', '352', '美味酱脊骨,蒜苔腊肠炒饭骨,', 0);
INSERT INTO `tb_consume` VALUES (76, 'admin', '2019-05-08', '161', '美味酱脊骨,D,', 0);
INSERT INTO `tb_consume` VALUES (77, 'XING', '2019-05-11', '216', '美味酱脊骨,剁椒鱼头,', 0);
INSERT INTO `tb_consume` VALUES (78, 'XING', '2019-05-11', '362', '美味酱脊骨（中）,毛血旺（中）,鱼香肉丝（大）,宫爆鸡丁（大）,宫爆鸡丁（中）,', 0);
INSERT INTO `tb_consume` VALUES (79, 'admin', '2019-05-13', '350', '烧鸭（中）,干煸牛肉丝（大）,鱼香肉丝（中）,毛血旺（大）,', 0);

-- ----------------------------
-- Table structure for tb_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu`;
CREATE TABLE `tb_menu`  (
  `m_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜品id',
  `m_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜品名称',
  `m_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜品价格',
  `m_remork` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜品介绍',
  `m_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜系名称',
  `m_images` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片名称',
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_menu
-- ----------------------------
INSERT INTO `tb_menu` VALUES (1, '美味酱脊骨（中）', '88', '中份', '苏菜', 'EST-1');
INSERT INTO `tb_menu` VALUES (2, '蒜苔腊肠炒饭骨（大）', '65', '大份', '浙菜', 'EST-1');
INSERT INTO `tb_menu` VALUES (7, '鱼香肉丝（中）', '34', '中份', '川菜', 'EST-3');
INSERT INTO `tb_menu` VALUES (8, '鱼香肉丝（大）', '54', '大份', '川菜', 'EST-4');
INSERT INTO `tb_menu` VALUES (9, '宫爆鸡丁（大）', '73', '大份', '闽菜', 'EST-4');
INSERT INTO `tb_menu` VALUES (10, '毛血旺（中）', '43', '中份', '徽菜', 'EST-3');
INSERT INTO `tb_menu` VALUES (12, '宫爆鸡丁（中）', '65', '中份', '闽菜', 'EST-4');
INSERT INTO `tb_menu` VALUES (15, '毛血旺（大）', '43', '大份', '徽菜', 'EST-9');
INSERT INTO `tb_menu` VALUES (16, '干煸牛肉丝（大）', '55', '大份', '鲁菜', 'EST-10');
INSERT INTO `tb_menu` VALUES (17, '干煸牛肉丝（中）', '56', '中份', '鲁菜', 'EST-10');
INSERT INTO `tb_menu` VALUES (18, '剁椒鱼头（中）', '29', '中份', '湘菜', 'EST-11');
INSERT INTO `tb_menu` VALUES (19, '东坡肘子（中）', '19', '中份', '粤菜', 'EST-12');
INSERT INTO `tb_menu` VALUES (22, '烧鸭（中）', '19', '中份', '苏菜', 'EST-13');

-- ----------------------------
-- Table structure for tb_menu_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu_type`;
CREATE TABLE `tb_menu_type`  (
  `mt_id` int(11) NOT NULL AUTO_INCREMENT,
  `mt_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜系名称',
  `mt_constitute` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜系组成',
  `mt_feature` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜系特色',
  `mt_technology` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜系工艺',
  `mt_retain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '保留字段',
  `mt_retain_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '保留字段',
  PRIMARY KEY (`mt_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_menu_type
-- ----------------------------
INSERT INTO `tb_menu_type` VALUES (1, '苏菜', '由苏州、扬州、南京、镇江四大菜为代表而构成的 ', '擅长于炖、焖、烧、煨、炒。烹调时用料严谨，注重配色，讲究造型，四季有别', '其特点是浓中带淡，鲜香酥烂，原汁原汤浓而不腻，口味平和，咸中\n带甜。苏州菜口味偏甜，\n配色和谐；扬州菜清淡适口，主料突出，刀工精细，醇厚入味；南京、镇江菜口味和醇，玲珑细巧，尤以鸭制的菜肴负有盛名。', NULL, NULL);
INSERT INTO `tb_menu_type` VALUES (2, '浙菜', '以杭州、宁波、绍兴、温州等地的菜肴为代表发展而成的', '制作精细，变化较多。烹调技法擅长于炒、炸、烩、溜、蒸、烧', '清、香、脆、嫩、爽、鲜', NULL, NULL);
INSERT INTO `tb_menu_type` VALUES (3, '湘菜', '以湘江流域、洞庭湖区和湘西山区的菜肴为代表发展而成', '擅长腊、熏、煨、蒸、炖、炸、炒', '用料广泛，油重色浓，多以辣椒、熏腊为原料，口味注重香鲜、酸辣、\n软嫩', NULL, NULL);
INSERT INTO `tb_menu_type` VALUES (4, '徽菜', '以沿江、沿淮、徽洲三地区的地方菜为代表构成', '擅长于烧、焖、炖', '选料朴实，讲究火功，重油重色 ，味道醇厚，保持原汁原味', NULL, NULL);
INSERT INTO `tb_menu_type` VALUES (5, '鲁菜', '由济南和胶东两地的地方菜演化而成的', '擅长爆、烧、炸、炒', '清香、鲜嫩、味纯而著名，十分讲究清汤和奶汤的调制，清汤色清而鲜，奶汤色白而醇', NULL, NULL);
INSERT INTO `tb_menu_type` VALUES (6, '川菜', '以四川成都、重庆两地的菜肴为代表.重视选料，讲究规格，分色配菜主次分明，鲜艳协调', '擅长烘焙、烘焙、烘干、蒸制。川菜以其浓郁的汁液而具有浓郁的综合风味。在咸、甜、麻、辣、酸的基础上，与各种香料相互配合，形成各种复杂的风味。\r\n口味，如家味、咸味、鱼味、荔枝味等', '酸、甜、麻、辣香、油重、味浓，注重调味，离不开三椒（即辣椒、胡椒、花椒）和鲜姜，以辣、酸、麻脍炙人口，川菜具有独特的风味，素有“一菜百菜百菜”的美誉。', NULL, NULL);
INSERT INTO `tb_menu_type` VALUES (7, '粤菜', '广州菜、潮州菜和东江菜就是代表。', '擅长煎、炸、烩、炖、煸等,菜肴色彩浓重,滑而不腻。尤以烹制蛇、狸、猫、狗、猴、鼠等野生动物而负盛名', NULL, NULL, NULL);
INSERT INTO `tb_menu_type` VALUES (8, '闽菜', '以福州、泉州、厦门等地的菜肴为代表发展起来的', '擅长于炒、溜、煎、煨，尤以“糟”最具特色 ', '多以海鲜为原料烹制各式菜肴，别具风味. 色调美观，滋味清鲜而著称', NULL, NULL);

-- ----------------------------
-- Table structure for tb_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order`  (
  `o_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '预定订单号',
  `o_table` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '餐桌号',
  `o_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作人员',
  `o_person` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '预计消费金额',
  `o_describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注详细',
  `o_date` date NOT NULL COMMENT '预定时间',
  `o_tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户电话',
  `o_state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态',
  PRIMARY KEY (`o_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_order
-- ----------------------------
INSERT INTO `tb_order` VALUES (20, 'E4', 'admin', '375', '美味酱脊骨,D,G,', '2019-04-30', '12345', '1');
INSERT INTO `tb_order` VALUES (21, 'B3', 'admin', '134', '蒜苔腊肠炒饭骨,', '2019-04-30', '7898', '1');
INSERT INTO `tb_order` VALUES (22, 'A4', 'admin', '183', '蒜苔腊肠炒饭骨,G,AA,', '2019-04-17', '456', '1');
INSERT INTO `tb_order` VALUES (23, 'C2', 'admin', '252', '美味酱脊骨,蒜苔腊肠炒饭骨,', '2019-04-20', '456', '1');
INSERT INTO `tb_order` VALUES (24, 'A2', 'admin', '161', '美味酱脊骨,D,', '2019-04-23', '456789', '1');
INSERT INTO `tb_order` VALUES (25, 'B4', 'admin', '160', 'AA,S,A,', '2019-04-25', '456', '1');
INSERT INTO `tb_order` VALUES (26, 'E2', 'admin', '352', '美味酱脊骨,蒜苔腊肠炒饭骨,', '2019-05-01', '456', '1');
INSERT INTO `tb_order` VALUES (27, 'B2', 'admin', '191', '美味酱脊骨,D,', '2019-05-22', '456', '0');
INSERT INTO `tb_order` VALUES (28, 'A4', 'admin', '158', '蒜苔腊肠炒饭骨,G,', '2019-05-02', '456789', '0');
INSERT INTO `tb_order` VALUES (29, 'A5', 'admin', '157', 'W,Q,', '2019-05-02', '123', '1');
INSERT INTO `tb_order` VALUES (30, 'A3', 'admin', '161', '美味酱脊骨,D,', '2019-05-08', '4646', '1');
INSERT INTO `tb_order` VALUES (31, 'C4', 'XING', '216', '美味酱脊骨,剁椒鱼头,', '2019-05-11', '1223456', '1');
INSERT INTO `tb_order` VALUES (32, 'C罗', 'XING', '362', '美味酱脊骨（中）,毛血旺（中）,鱼香肉丝（大）,宫爆鸡丁（大）,宫爆鸡丁（中）,', '2019-05-11', '123', '1');
INSERT INTO `tb_order` VALUES (33, 'E3', 'admin', '350', '烧鸭（中）,干煸牛肉丝（大）,鱼香肉丝（中）,毛血旺（大）,', '2019-05-13', '123456', '1');

-- ----------------------------
-- Table structure for tb_permission
-- ----------------------------
DROP TABLE IF EXISTS `tb_permission`;
CREATE TABLE `tb_permission`  (
  `id` int(11) NOT NULL COMMENT '权限表id',
  `permissionName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '权限名称',
  `permissionLable` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '权限操作',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_permission
-- ----------------------------
INSERT INTO `tb_permission` VALUES (1, '查看', 'view');
INSERT INTO `tb_permission` VALUES (2, '新增', 'add');
INSERT INTO `tb_permission` VALUES (3, '修改', 'edit');
INSERT INTO `tb_permission` VALUES (4, '删除', 'del');

-- ----------------------------
-- Table structure for tb_qq
-- ----------------------------
DROP TABLE IF EXISTS `tb_qq`;
CREATE TABLE `tb_qq`  (
  `q_id` int(11) NOT NULL AUTO_INCREMENT,
  `openID` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'QQ呢称',
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别',
  `year` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '出生年',
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `figureurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '头像30*30',
  `figureurl_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `figureurl_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `figureurl_qq_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `figureurl_qq_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`q_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_qq
-- ----------------------------
INSERT INTO `tb_qq` VALUES (4, 'F26161FD557A749FB0FA6DC2FA693B0F', '村上春树', '男', '1996', '维也纳', 'http://qzapp.qlogo.cn/qzapp/101495416/F26161FD557A749FB0FA6DC2FA693B0F/30', 'http://qzapp.qlogo.cn/qzapp/101495416/F26161FD557A749FB0FA6DC2FA693B0F/50', 'http://qzapp.qlogo.cn/qzapp/101495416/F26161FD557A749FB0FA6DC2FA693B0F/100', 'http://thirdqq.qlogo.cn/g?b=oidb&k=Z4cA0IaxgJAAt1CzV1gSeg&s=40', 'http://thirdqq.qlogo.cn/g?b=oidb&k=Z4cA0IaxgJAAt1CzV1gSeg&s=100');

-- ----------------------------
-- Table structure for tb_review
-- ----------------------------
DROP TABLE IF EXISTS `tb_review`;
CREATE TABLE `tb_review`  (
  `r_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `c_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消费id',
  `o_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '点菜详细',
  `r_date` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '评论时间',
  `r_comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论',
  `r_rating` int(5) NOT NULL DEFAULT 1 COMMENT '评论等级',
  PRIMARY KEY (`r_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_review
-- ----------------------------
INSERT INTO `tb_review` VALUES (21, '6', '台湾卤肉', '2019-05-01 11:03:56', '1999', 5);
INSERT INTO `tb_review` VALUES (22, '76', '美味酱脊骨,D,', '2019-05-05 16:18:25', '很不错', 4);
INSERT INTO `tb_review` VALUES (23, '77', '美味酱脊骨,剁椒鱼头,', '2019-05-11 14:30:55', '好吃下次继续来吃', 4);
INSERT INTO `tb_review` VALUES (24, '69', '蒜苔腊肠炒饭骨,', '2019-05-13 16:10:55', '2', 5);

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role`  (
  `id` int(11) NOT NULL COMMENT '角色id',
  `roleName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES (1, '管理员');
INSERT INTO `tb_role` VALUES (2, '员工');

-- ----------------------------
-- Table structure for tb_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `tb_role_permission`;
CREATE TABLE `tb_role_permission`  (
  `roleid` int(11) NOT NULL COMMENT '角色id',
  `permissionid` int(11) DEFAULT NULL COMMENT '权限id'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_role_permission
-- ----------------------------
INSERT INTO `tb_role_permission` VALUES (1, 1);
INSERT INTO `tb_role_permission` VALUES (2, 1);
INSERT INTO `tb_role_permission` VALUES (2, 4);
INSERT INTO `tb_role_permission` VALUES (2, 2);

-- ----------------------------
-- Table structure for tb_table_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_table_type`;
CREATE TABLE `tb_table_type`  (
  `t_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '餐桌类型id',
  `t_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '包厢类型',
  `t_mark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '包厢号',
  `t_number` int(11) NOT NULL COMMENT '餐桌座位数量',
  `t_retain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '包厢价格',
  `t_particular` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '包厢介绍',
  `t_repast` int(255) NOT NULL COMMENT '包厢是否有人就餐：0为是，1为否',
  `t_retain_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '保留字段',
  PRIMARY KEY (`t_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_table_type
-- ----------------------------
INSERT INTO `tb_table_type` VALUES (1, '小包厢', 'A1', 2, '39', '无独立卫生间，有空调', 0, NULL);
INSERT INTO `tb_table_type` VALUES (2, '小包厢', 'A2', 2, '39', '无独立卫生间，有空调', 1, NULL);
INSERT INTO `tb_table_type` VALUES (3, '小包厢', 'A3', 2, '39', '无独立卫生间，有空调', 1, NULL);
INSERT INTO `tb_table_type` VALUES (4, '小包厢', 'A4', 2, '39', '无独立卫生间，有空调', 0, NULL);
INSERT INTO `tb_table_type` VALUES (5, '中包厢', 'B1', 4, '69', '无独立卫生间，有空调', 0, NULL);
INSERT INTO `tb_table_type` VALUES (6, '中包厢', 'B2', 4, '69', '无独立卫生间，有空调', 0, NULL);
INSERT INTO `tb_table_type` VALUES (7, '中包厢', 'B3', 4, '69', '无独立卫生间，有空调', 1, NULL);
INSERT INTO `tb_table_type` VALUES (8, '中包厢', 'B4', 4, '69', '无独立卫生间，有空调', 1, NULL);
INSERT INTO `tb_table_type` VALUES (9, '大包厢', 'C1', 8, '99', '无独立卫生间，有空调', 0, NULL);
INSERT INTO `tb_table_type` VALUES (10, '大包厢', 'C2', 8, '99', '无独立卫生间，有空调', 1, NULL);
INSERT INTO `tb_table_type` VALUES (11, '大包厢', 'C3', 8, '99', '无独立卫生间，有空调', 1, NULL);
INSERT INTO `tb_table_type` VALUES (12, '大包厢', 'C4', 8, '99', '无独立卫生间，有空调', 1, NULL);
INSERT INTO `tb_table_type` VALUES (13, '豪华房', 'D1', 16, '129', '有独立卫生间，有空调', 0, NULL);
INSERT INTO `tb_table_type` VALUES (14, '豪华房', 'D2', 16, '129', '有独立卫生间，有空调', 1, NULL);
INSERT INTO `tb_table_type` VALUES (15, '豪华房', 'D3', 16, '129', '有独立卫生间，有空调', 1, NULL);
INSERT INTO `tb_table_type` VALUES (16, '豪华房', 'D4', 16, '129', '有独立卫生间，有空调', 1, NULL);
INSERT INTO `tb_table_type` VALUES (17, '总统房', 'E1', 30, '199', '有独立卫生间，有空调', 0, NULL);
INSERT INTO `tb_table_type` VALUES (18, '总统房', 'E2', 30, '199', '有独立卫生间，有空调', 1, NULL);
INSERT INTO `tb_table_type` VALUES (19, '总统房', 'E3', 30, '199', '有独立卫生间，有空调', 1, NULL);
INSERT INTO `tb_table_type` VALUES (20, '总统房', 'E4', 30, '199', '有独立卫生间，有空调', 1, NULL);
INSERT INTO `tb_table_type` VALUES (21, '小包厢', 'A5', 3, '49', '有空调,有热水器', 1, NULL);
INSERT INTO `tb_table_type` VALUES (22, '大包厢', 'C罗', 5, '39', '有空调,有热水器,无独立厕所', 1, NULL);

SET FOREIGN_KEY_CHECKS = 1;
