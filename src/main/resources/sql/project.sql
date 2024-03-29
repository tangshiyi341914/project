/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : project

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 16/08/2021 15:56:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`  (
  `cpnId` int(11) NOT NULL AUTO_INCREMENT,
  `cpnName` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `legalPerson` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `regstArea` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `regstCapital` int(11) NOT NULL,
  `cpnEmail` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `introduction` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`cpnId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES (1, '内蒙古满世煤炭集团罐子沟煤炭有限责任公司', '焦存福', '内蒙古自治区鄂尔多斯市准格尔旗龙口镇', 17000, 'weah201@126.com', '内蒙古满世煤炭集团罐子沟煤炭有限责任公司成立于2009年01月21日，注册地位于内蒙古自治区鄂尔多斯市准格尔旗龙口镇，法定代表人为焦存福。经营范围包括许可经营项目：煤炭生产、销售。 一般经营项目：无内蒙古满世煤炭集团罐子沟煤炭有限责任公司对外投资1家公司。');
INSERT INTO `company` VALUES (2, '中煤黑龙江煤炭化工（集团）有限公司', '王树斌', '哈尔滨市南岗区大顺街７号', 325972, '80560519999@qq.com', '是集煤炭、化工、煤制油、页岩油、城市燃气生产、销售、输送于一体的国有大型煤炭化工企业，是中国中煤能源集团公司发展煤化工产业的基地和平台，其前身是哈尔滨煤炭化工有限公司，2006年9月，经国务院国资委正式批准无偿划转中国中煤能源集团公司，于2007年3月14日注册，为中国中煤能源集团公司控股的二级子公司。现有职工11936人，注册资本17.3亿元，资产总额33亿元。具有建设煤化工基地的煤炭资源、水资源、人才资源等诸多优势。');
INSERT INTO `company` VALUES (3, '山西煤炭进出口集团煤炭物流有限公司', '张伯平', '甘肃省武威市凉州区武南镇二马路11号', 21000, 'mzy82127@hotmail.com', '山西煤炭进出口集团武威铁路煤炭物流有限公司成立于2011年11月18日，主要经营范围为铁路投资、建设、运营及管理等。  ');
INSERT INTO `company` VALUES (4, 'string', 'string', 'string', 0, 'string', 'string');
INSERT INTO `company` VALUES (5, '1', '1', '1', 1, '123@qq.com', '无');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '员工编号',
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `gender` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `birthday` date NULL DEFAULT NULL COMMENT '出生日期',
  `idCard` char(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `nativePlace` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '籍贯',
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话号码',
  `address` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1941 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (1, '江南一点雨', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (2, '陈静', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (3, '赵琳浩', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (4, '鹿存亮', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (5, '姚森', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (6, '云星', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (7, '贾旭明', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (8, '张黎明', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (9, '薛磊', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (10, '张洁', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (11, '江南一点雨2', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (12, '陈静2', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (13, '赵琳浩2', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (14, '鹿存亮2', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (15, '姚森2', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (16, '云星2', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (17, '贾旭明2', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (18, '王一亭', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (19, '薛磊2', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (20, '张洁2', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (21, '江南一点雨3', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (22, '陈静3', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (24, '鹿存亮3', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (25, '姚森3', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (26, '云星3', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (27, '贾旭明3', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (28, '张黎明3', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (29, '薛磊3', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (31, '江南一点雨4', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (32, '陈静4', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (33, '赵琳浩4', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (34, '鹿存亮4', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (35, '姚森4', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (36, '云星4', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (37, '贾旭明4', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (38, '张黎明2', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (39, '薛磊4', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (40, '张洁4', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (41, '江南一点雨5', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (42, '陈静5', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (43, '赵琳浩5', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (44, '鹿存亮5', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (45, '姚森5', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (46, '云星5', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (47, '贾旭明5', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (48, '张黎明5', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (49, '薛磊5', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (50, '张洁5', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (51, '江南一点雨6', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (52, '陈静6', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (53, '赵琳浩6', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (54, '鹿存亮6', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (55, '姚森6', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (56, '云星6', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1351, '江南一点雨', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1352, '陈静', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1353, '赵琳浩', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1354, '鹿存亮', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1355, '姚森', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1357, '贾旭明', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1358, '张黎明', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1359, '薛磊', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1360, '张洁', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (1361, '江南一点雨2', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1362, '陈静2', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1363, '赵琳浩2', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1364, '鹿存亮2', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1365, '姚森2', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1366, '云星2', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1367, '贾旭明2', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1368, '王一亭', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1369, '薛磊2', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1370, '张洁2', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (1371, '江南一点雨3', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1372, '陈静3', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1373, '鹿存亮3', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1374, '姚森3', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1375, '云星3', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1376, '贾旭明3', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1377, '张黎明3', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1378, '薛磊3', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1379, '江南一点雨4', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1380, '陈静4', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1381, '赵琳浩4', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1382, '鹿存亮4', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1383, '姚森4', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1384, '云星4', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1385, '贾旭明4', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1411, '谢工', '女', '1970-01-01', '618177197001011234', '江苏', '584991843@qq.com', '18558887788', '北京');
INSERT INTO `employee` VALUES (1412, '林昭亮', '男', '1990-01-01', '610122199809091234', '广东', '584991843@qq.com', '16767776654', '广东深圳');
INSERT INTO `employee` VALUES (1413, '11', '男', '2018-01-01', '610122201801011234', '1', '584991843@qq.com', '111', '1');
INSERT INTO `employee` VALUES (1414, '1', '男', '2018-01-01', '610188199809091234', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1415, '1', '男', '2018-01-01', '610122199909090000', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1416, '1', '男', '2018-01-01', '610122199909090000', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1417, '1', '男', '2018-01-01', '610122199909099999', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1418, '1', '男', '2018-01-01', '610122199909099999', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1419, '林伯渠', '男', '2018-01-01', '610122199909099999', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1420, '1', '男', '2018-01-01', '610122199909091234', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1421, '江南一点雨', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1422, '陈静', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1423, '赵琳浩', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1424, '鹿存亮', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1425, '姚森', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1426, '云星', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1427, '贾旭明', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1428, '张黎明', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1429, '薛磊', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1430, '张洁', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (1431, '江南一点雨2', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1432, '陈静2', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1433, '赵琳浩2', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1434, '鹿存亮2', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1435, '姚森2', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1436, '云星2', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1437, '贾旭明2', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1438, '王一亭', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1439, '薛磊2', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1440, '张洁2', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (1441, '江南一点雨3', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1442, '陈静3', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1443, '鹿存亮3', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1444, '姚森3', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1445, '云星3', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1446, '贾旭明3', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1447, '张黎明3', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1448, '薛磊3', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1449, '江南一点雨4', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1450, '陈静4', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1451, '赵琳浩4', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1452, '鹿存亮4', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1453, '姚森4', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1454, '云星4', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1455, '贾旭明4', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1456, '张黎明2', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1457, '薛磊4', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1458, '张洁4', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (1459, '江南一点雨5', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1460, '陈静5', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1461, '赵琳浩5', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1462, '鹿存亮5', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1463, '姚森5', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1464, '云星5', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1465, '贾旭明5', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1466, '张黎明5', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1467, '薛磊5', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1468, '张洁5', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (1469, '江南一点雨6', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1470, '陈静6', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1471, '赵琳浩6', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1472, '鹿存亮6', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1473, '姚森6', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1474, '云星6', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1475, '江南一点雨', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1476, '陈静', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1477, '赵琳浩', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1478, '鹿存亮', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1479, '姚森', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1480, '贾旭明', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1481, '张黎明', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1482, '薛磊', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1483, '张洁', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (1484, '江南一点雨2', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1485, '陈静2', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1486, '赵琳浩2', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1487, '鹿存亮2', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1488, '姚森2', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1489, '云星2', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1490, '贾旭明2', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1491, '王一亭', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1492, '薛磊2', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1493, '张洁2', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (1494, '江南一点雨3', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1495, '陈静3', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1496, '鹿存亮3', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1497, '姚森3', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1498, '云星3', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1499, '贾旭明3', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1500, '张黎明3', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1501, '薛磊3', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1502, '江南一点雨4', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1503, '陈静4', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1504, '赵琳浩4', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1505, '鹿存亮4', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1506, '姚森4', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1507, '云星4', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1508, '贾旭明4', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1509, '谢工', '女', '1970-01-01', '618177197001011234', '江苏', '584991843@qq.com', '18558887788', '北京');
INSERT INTO `employee` VALUES (1510, '林昭亮', '男', '1990-01-01', '610122199809091234', '广东', '584991843@qq.com', '16767776654', '广东深圳');
INSERT INTO `employee` VALUES (1511, '11', '男', '2018-01-01', '610122201801011234', '1', '584991843@qq.com', '111', '1');
INSERT INTO `employee` VALUES (1512, '1', '男', '2018-01-01', '610188199809091234', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1513, '1', '男', '2018-01-01', '610122199909090000', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1514, '1', '男', '2018-01-01', '610122199909090000', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1515, '1', '男', '2018-01-01', '610122199909099999', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1516, '1', '男', '2018-01-01', '610122199909099999', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1517, '林伯渠', '男', '2018-01-01', '610122199909099999', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1518, '1', '男', '2018-01-01', '610122199909091234', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1519, 'javaboy', '男', '1989-12-31', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1520, 'javaboy', '男', '1989-12-31', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1521, 'javaboy', '男', '1989-12-31', '610122199001011256', '', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1522, 'javaboy', '男', '1989-12-31', '610122199001011256', '陕西', 'laowan@123.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1523, 'javaboy', '男', '1989-12-31', '610122199001011256', '陕西', 'laowan@123.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1526, 'javaboy', '男', '1989-12-31', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1527, 'javaboy', '男', '1989-12-31', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1528, 'javaboy666', '男', '2019-11-10', '610122199911111111', '广东', '123@qq.com', '12345678901', '广东深圳');
INSERT INTO `employee` VALUES (1529, 'javaboy666', '男', '2019-11-10', '610122199911111111', '广东', '123@qq.com', '12345678901', '广东深圳');
INSERT INTO `employee` VALUES (1530, '江南一点雨', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1531, '陈静', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1532, '赵琳浩', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1533, '鹿存亮', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1534, '姚森', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1535, '云星', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1536, '贾旭明', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1537, '张黎明', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1538, '薛磊', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1539, '张洁', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (1540, '江南一点雨2', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1541, '陈静2', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1542, '赵琳浩2', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1543, '鹿存亮2', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1544, '姚森2', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1545, '云星2', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1546, '贾旭明2', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1547, '王一亭', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1548, '薛磊2', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1549, '张洁2', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (1550, '江南一点雨3', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1551, '陈静3', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1552, '鹿存亮3', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1553, '姚森3', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1554, '云星3', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1555, '贾旭明3', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1556, '张黎明3', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1557, '薛磊3', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1558, '江南一点雨4', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1559, '陈静4', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1560, '赵琳浩4', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1561, '鹿存亮4', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1562, '姚森4', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1563, '云星4', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1564, '贾旭明4', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1565, '张黎明2', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1566, '薛磊4', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1567, '张洁4', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (1568, '江南一点雨5', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1569, '陈静5', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1570, '赵琳浩5', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1571, '鹿存亮5', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1572, '姚森5', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1573, '云星5', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1574, '贾旭明5', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1575, '张黎明5', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1576, '薛磊5', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1577, '张洁5', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (1578, '江南一点雨6', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1579, '陈静6', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1580, '赵琳浩6', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1581, '鹿存亮6', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1582, '姚森6', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1583, '云星6', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1584, '江南一点雨', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1585, '陈静', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1586, '赵琳浩', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1587, '鹿存亮', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1588, '姚森', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1589, '贾旭明', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1590, '张黎明', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1591, '薛磊', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1592, '张洁', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (1593, '江南一点雨2', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1594, '陈静2', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1595, '赵琳浩2', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1596, '鹿存亮2', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1597, '姚森2', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1598, '云星2', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1599, '贾旭明2', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1600, '王一亭', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1601, '薛磊2', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1602, '张洁2', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (1603, '江南一点雨3', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1604, '陈静3', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1605, '鹿存亮3', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1606, '姚森3', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1607, '云星3', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1608, '贾旭明3', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1609, '张黎明3', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1610, '薛磊3', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1611, '江南一点雨4', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1612, '陈静4', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1613, '赵琳浩4', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1614, '鹿存亮4', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1615, '姚森4', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1616, '云星4', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1617, '贾旭明4', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1618, '谢工', '女', '1970-01-01', '618177197001011234', '江苏', '584991843@qq.com', '18558887788', '北京');
INSERT INTO `employee` VALUES (1619, '林昭亮', '男', '1990-01-01', '610122199809091234', '广东', '584991843@qq.com', '16767776654', '广东深圳');
INSERT INTO `employee` VALUES (1620, '11', '男', '2018-01-01', '610122201801011234', '1', '584991843@qq.com', '111', '1');
INSERT INTO `employee` VALUES (1621, '1', '男', '2018-01-01', '610188199809091234', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1622, '1', '男', '2018-01-01', '610122199909090000', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1623, '1', '男', '2018-01-01', '610122199909090000', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1624, '1', '男', '2018-01-01', '610122199909099999', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1625, '1', '男', '2018-01-01', '610122199909099999', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1626, '林伯渠', '男', '2018-01-01', '610122199909099999', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1627, '1', '男', '2018-01-01', '610122199909091234', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1628, '江南一点雨', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1629, '陈静', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1630, '赵琳浩', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1631, '鹿存亮', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1632, '姚森', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1633, '云星', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1634, '贾旭明', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1635, '张黎明', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1636, '薛磊', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1637, '张洁', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (1638, '江南一点雨2', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1639, '陈静2', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1640, '赵琳浩2', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1641, '鹿存亮2', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1642, '姚森2', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1643, '云星2', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1644, '贾旭明2', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1645, '王一亭', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1646, '薛磊2', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1647, '张洁2', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (1648, '江南一点雨3', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1649, '陈静3', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1650, '鹿存亮3', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1651, '姚森3', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1652, '云星3', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1653, '贾旭明3', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1654, '张黎明3', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1655, '薛磊3', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1656, '江南一点雨4', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1657, '陈静4', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1658, '赵琳浩4', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1659, '鹿存亮4', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1660, '姚森4', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1661, '云星4', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1662, '贾旭明4', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1663, '张黎明2', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1664, '薛磊4', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1665, '张洁4', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (1666, '江南一点雨5', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1667, '陈静5', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1668, '赵琳浩5', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1669, '鹿存亮5', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1670, '姚森5', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1671, '云星5', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1672, '贾旭明5', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1673, '张黎明5', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1674, '薛磊5', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1675, '张洁5', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (1676, '江南一点雨6', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1677, '陈静6', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1678, '赵琳浩6', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1679, '鹿存亮6', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1680, '姚森6', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1681, '云星6', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1682, '江南一点雨', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1683, '陈静', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1684, '赵琳浩', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1685, '鹿存亮', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1686, '姚森', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1687, '贾旭明', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1688, '张黎明', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1689, '薛磊', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1690, '张洁', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (1691, '江南一点雨2', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1692, '陈静2', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1693, '赵琳浩2', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1694, '鹿存亮2', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1695, '姚森2', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1696, '云星2', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1697, '贾旭明2', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1698, '王一亭', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1699, '薛磊2', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1700, '张洁2', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (1701, '江南一点雨3', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1702, '陈静3', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1703, '鹿存亮3', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1704, '姚森3', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1705, '云星3', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1706, '贾旭明3', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1707, '张黎明3', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1708, '薛磊3', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1709, '江南一点雨4', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1710, '陈静4', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1711, '赵琳浩4', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1712, '鹿存亮4', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1713, '姚森4', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1714, '云星4', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1715, '贾旭明4', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1716, '谢工', '女', '1970-01-01', '618177197001011234', '江苏', '584991843@qq.com', '18558887788', '北京');
INSERT INTO `employee` VALUES (1717, '林昭亮', '男', '1990-01-01', '610122199809091234', '广东', '584991843@qq.com', '16767776654', '广东深圳');
INSERT INTO `employee` VALUES (1718, '11', '男', '2018-01-01', '610122201801011234', '1', '584991843@qq.com', '111', '1');
INSERT INTO `employee` VALUES (1719, '1', '男', '2018-01-01', '610188199809091234', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1720, '1', '男', '2018-01-01', '610122199909090000', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1721, '1', '男', '2018-01-01', '610122199909090000', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1722, '1', '男', '2018-01-01', '610122199909099999', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1723, '1', '男', '2018-01-01', '610122199909099999', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1724, '林伯渠', '男', '2018-01-01', '610122199909099999', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1725, '1', '男', '2018-01-01', '610122199909091234', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1726, 'javaboy', '男', '1989-12-31', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1727, 'javaboy', '男', '1989-12-31', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1728, 'javaboy', '男', '1989-12-31', '610122199001011256', '', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1729, 'javaboy', '男', '1989-12-31', '610122199001011256', '陕西', 'laowan@123.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1730, 'javaboy', '男', '1989-12-31', '610122199001011256', '陕西', 'laowan@123.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1731, 'javaboy', '男', '1989-12-31', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1732, 'javaboy', '男', '1989-12-31', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1733, 'javaboy666', '男', '2019-11-10', '610122199911111111', '广东', '123@qq.com', '12345678901', '广东深圳');
INSERT INTO `employee` VALUES (1734, 'javaboy666', '男', '2019-11-10', '610122199911111111', '广东', '123@qq.com', '12345678901', '广东深圳');
INSERT INTO `employee` VALUES (1735, '江南一点雨', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1736, '陈静', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1737, '赵琳浩', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1738, '鹿存亮', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1739, '姚森', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1740, '云星', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1741, '贾旭明', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1742, '张黎明', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1743, '薛磊', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1744, '张洁', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (1745, '江南一点雨2', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1746, '陈静2', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1747, '赵琳浩2', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1748, '鹿存亮2', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1749, '姚森2', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1750, '云星2', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1751, '贾旭明2', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1752, '王一亭', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1753, '薛磊2', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1754, '张洁2', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (1755, '江南一点雨3', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1756, '陈静3', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1757, '鹿存亮3', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1758, '姚森3', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1759, '云星3', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1760, '贾旭明3', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1761, '张黎明3', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1762, '薛磊3', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1763, '江南一点雨4', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1764, '陈静4', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1765, '赵琳浩4', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1766, '鹿存亮4', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1767, '姚森4', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1768, '云星4', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1769, '贾旭明4', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1770, '张黎明2', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1771, '薛磊4', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1772, '张洁4', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (1773, '江南一点雨5', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1774, '陈静5', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1775, '赵琳浩5', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1776, '鹿存亮5', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1777, '姚森5', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1778, '云星5', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1779, '贾旭明5', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1780, '张黎明5', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1781, '薛磊5', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1782, '张洁5', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (1783, '江南一点雨6', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1784, '陈静6', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1785, '赵琳浩6', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1786, '鹿存亮6', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1787, '姚森6', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1788, '云星6', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1789, '江南一点雨', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1790, '陈静', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1791, '赵琳浩', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1792, '鹿存亮', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1793, '姚森', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1794, '贾旭明', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1795, '张黎明', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1796, '薛磊', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1797, '张洁', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (1798, '江南一点雨2', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1799, '陈静2', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1800, '赵琳浩2', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1801, '鹿存亮2', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1802, '姚森2', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1803, '云星2', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1804, '贾旭明2', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1805, '王一亭', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1806, '薛磊2', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1807, '张洁2', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (1808, '江南一点雨3', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1809, '陈静3', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1810, '鹿存亮3', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1811, '姚森3', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1812, '云星3', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1813, '贾旭明3', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1814, '张黎明3', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1815, '薛磊3', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1816, '江南一点雨4', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1817, '陈静4', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1818, '赵琳浩4', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1819, '鹿存亮4', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1820, '姚森4', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1821, '云星4', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1822, '贾旭明4', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1823, '谢工', '女', '1970-01-01', '618177197001011234', '江苏', '584991843@qq.com', '18558887788', '北京');
INSERT INTO `employee` VALUES (1824, '林昭亮', '男', '1990-01-01', '610122199809091234', '广东', '584991843@qq.com', '16767776654', '广东深圳');
INSERT INTO `employee` VALUES (1825, '11', '男', '2018-01-01', '610122201801011234', '1', '584991843@qq.com', '111', '1');
INSERT INTO `employee` VALUES (1826, '1', '男', '2018-01-01', '610188199809091234', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1827, '1', '男', '2018-01-01', '610122199909090000', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1828, '1', '男', '2018-01-01', '610122199909090000', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1829, '1', '男', '2018-01-01', '610122199909099999', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1830, '1', '男', '2018-01-01', '610122199909099999', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1831, '林伯渠', '男', '2018-01-01', '610122199909099999', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1832, '1', '男', '2018-01-01', '610122199909091234', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1833, '江南一点雨', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1834, '陈静', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1835, '赵琳浩', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1836, '鹿存亮', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1837, '姚森', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1838, '云星', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1839, '贾旭明', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1840, '张黎明', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1841, '薛磊', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1842, '张洁', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (1843, '江南一点雨2', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1844, '陈静2', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1845, '赵琳浩2', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1846, '鹿存亮2', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1847, '姚森2', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1848, '云星2', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1849, '贾旭明2', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1850, '王一亭', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1851, '薛磊2', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1852, '张洁2', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (1853, '江南一点雨3', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1854, '陈静3', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1855, '鹿存亮3', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1856, '姚森3', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1857, '云星3', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1858, '贾旭明3', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1859, '张黎明3', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1860, '薛磊3', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1861, '江南一点雨4', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1862, '陈静4', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1863, '赵琳浩4', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1864, '鹿存亮4', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1865, '姚森4', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1866, '云星4', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1867, '贾旭明4', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1868, '张黎明2', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1869, '薛磊4', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1870, '张洁4', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (1871, '江南一点雨5', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1872, '陈静5', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1873, '赵琳浩5', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1874, '鹿存亮5', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1875, '姚森5', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1876, '云星5', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1877, '贾旭明5', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1878, '张黎明5', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1879, '薛磊5', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1880, '张洁5', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (1881, '江南一点雨6', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1882, '陈静6', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1883, '赵琳浩6', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1884, '鹿存亮6', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1885, '姚森6', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1886, '云星6', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1887, '江南一点雨', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1888, '陈静', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1889, '赵琳浩', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1890, '鹿存亮', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1891, '姚森', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1892, '贾旭明', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1893, '张黎明', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1894, '薛磊', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1895, '张洁', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (1896, '江南一点雨2', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1897, '陈静2', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1898, '赵琳浩2', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1899, '鹿存亮2', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1900, '姚森2', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1901, '云星2', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1902, '贾旭明2', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1903, '王一亭', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1904, '薛磊2', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1905, '张洁2', '女', '1990-10-09', '420177199010093652', '海南', 'zhangjie@qq.com', '13695557742', '海口市美兰区');
INSERT INTO `employee` VALUES (1906, '江南一点雨3', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1907, '陈静3', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1908, '鹿存亮3', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1909, '姚森3', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1910, '云星3', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1911, '贾旭明3', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1912, '张黎明3', '男', '1991-02-01', '610144199102014569', '广东', 'zhangliming@qq.com', '18979994478', '广东珠海');
INSERT INTO `employee` VALUES (1913, '薛磊3', '男', '1992-07-01', '610144199207017895', '陕西西安', 'xuelei@qq.com', '15648887741', '西安市雁塔区');
INSERT INTO `employee` VALUES (1914, '江南一点雨4', '男', '1990-01-01', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1915, '陈静4', '女', '1989-02-01', '421288198902011234', '海南', 'chenjing@qq.com', '18795556693', '海南省海口市美兰区');
INSERT INTO `employee` VALUES (1916, '赵琳浩4', '男', '1993-03-04', '610122199303041456', '陕西', 'zhao@qq.com', '15698887795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1917, '鹿存亮4', '男', '1990-01-03', '610122199001031456', '陕西', 'zhao@qq.com', '15612347795', '陕西省西安市莲湖区');
INSERT INTO `employee` VALUES (1918, '姚森4', '男', '1991-02-05', '610122199102058952', '河南', 'yaosen@qq.com', '14785559936', '河南洛阳人民大道58号');
INSERT INTO `employee` VALUES (1919, '云星4', '女', '1993-01-05', '610122199301054789', '陕西西安', 'yunxing@qq.com', '15644442252', '陕西西安新城区');
INSERT INTO `employee` VALUES (1920, '贾旭明4', '男', '1993-11-11', '610122199311111234', '广东广州', 'jiaxuming@qq.com', '15644441234', '广东省广州市天河区冼村路');
INSERT INTO `employee` VALUES (1921, '谢工', '女', '1970-01-01', '618177197001011234', '江苏', '584991843@qq.com', '18558887788', '北京');
INSERT INTO `employee` VALUES (1922, '林昭亮', '男', '1990-01-01', '610122199809091234', '广东', '584991843@qq.com', '16767776654', '广东深圳');
INSERT INTO `employee` VALUES (1923, '11', '男', '2018-01-01', '610122201801011234', '1', '584991843@qq.com', '111', '1');
INSERT INTO `employee` VALUES (1924, '1', '男', '2018-01-01', '610188199809091234', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1925, '1', '男', '2018-01-01', '610122199909090000', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1926, '1', '男', '2018-01-01', '610122199909090000', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1927, '1', '男', '2018-01-01', '610122199909099999', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1928, '1', '男', '2018-01-01', '610122199909099999', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1929, '林伯渠', '男', '2018-01-01', '610122199909099999', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1930, '1', '男', '2018-01-01', '610122199909091234', '1', '584991843@qq.com', '1', '1');
INSERT INTO `employee` VALUES (1931, 'javaboy', '男', '1989-12-31', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1932, 'javaboy', '男', '1989-12-31', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1933, 'javaboy', '男', '1989-12-31', '610122199001011256', '', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1934, 'javaboy', '男', '1989-12-31', '610122199001011256', '陕西', 'laowan@123.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1935, 'javaboy', '男', '1989-12-31', '610122199001011256', '陕西', 'laowan@123.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1936, 'javaboy', '男', '1989-12-31', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1937, 'javaboy', '男', '1989-12-31', '610122199001011256', '陕西', 'laowang@qq.com', '18565558897', '深圳市南山区');
INSERT INTO `employee` VALUES (1938, 'javaboy666', '男', '2019-11-10', '610122199911111111', '广东', '123@qq.com', '12345678901', '广东深圳');
INSERT INTO `employee` VALUES (1939, 'javaboy666', '男', '2019-11-10', '610122199911111111', '广东', '123@qq.com', '12345678901', '广东深圳');
INSERT INTO `employee` VALUES (1940, 'javaboy', '男', '2017-11-01', '610144199905059999', '广东', '584991843@qq.com', '18564447789', '广东深圳');
INSERT INTO `employee` VALUES (1941, 'javaboy', '男', '2019-11-24', '610144199905056666', '广东', '584991843@qq.com', '18566667777', '广东深圳');

-- ----------------------------
-- Table structure for list
-- ----------------------------
DROP TABLE IF EXISTS `list`;
CREATE TABLE `list`  (
  `identity` int(11) NULL DEFAULT NULL COMMENT '挂牌者身份',
  `cpnName` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '挂牌单位',
  `no` int(11) NOT NULL COMMENT '单据编号',
  `proposer` int(11) NULL DEFAULT NULL COMMENT '申请人',
  `signer` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '签发人',
  `startTime` datetime NULL DEFAULT NULL COMMENT '申请日期',
  `shipStartTime` datetime NULL DEFAULT NULL COMMENT '交货时间-起始',
  `shipEndTime` datetime NULL DEFAULT NULL COMMENT '交货时间-结束',
  `coalType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '煤种',
  `amount` double NULL DEFAULT NULL COMMENT '采购数量',
  `transportation` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '运输方式',
  `deliveryPlace` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '交货地点',
  `clearing` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '结算方式',
  `acceptance` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '验收方式',
  `payment` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '结算付款方式',
  `isPayDeposit` int(11) NULL DEFAULT NULL COMMENT '是否要求缴纳保证金',
  `price` double NULL DEFAULT NULL COMMENT '保证金单价',
  `qnetar` double NULL DEFAULT NULL COMMENT '收到基低位发热量Qnetar（KCal/kg）',
  `start` double NULL DEFAULT NULL COMMENT '收到基全硫Start',
  `m` double NULL DEFAULT NULL COMMENT '全水分M',
  `rba` double NULL DEFAULT NULL COMMENT '收到基灰分',
  `lrbvc` double NULL DEFAULT NULL COMMENT '收到基挥发分最低',
  `hrbvc` double NULL DEFAULT NULL COMMENT '收到基挥发最高',
  `mad` double NULL DEFAULT NULL COMMENT '空干基水分Mad',
  `stad` double NULL DEFAULT NULL COMMENT '空干基全硫Stad',
  `ladbv` double NULL DEFAULT NULL COMMENT '空干基挥发分最低',
  `hadbv` double NULL DEFAULT NULL COMMENT '空干基挥发分最高',
  `qgrd` double NULL DEFAULT NULL COMMENT '干基高位发热量qgrd',
  `std` double NULL DEFAULT NULL COMMENT '干基全硫Std',
  `ldwgbv` double NULL DEFAULT NULL COMMENT '干燥无灰色基挥发分最低',
  `hdwgbv` double NULL DEFAULT NULL COMMENT '干燥无灰基挥发分最高',
  `granularity` double NULL DEFAULT NULL COMMENT '粒度（mm）',
  `ST` double NULL DEFAULT NULL COMMENT '灰熔点ST（°C）',
  `HG` double NULL DEFAULT NULL COMMENT '哈氏可磨系数（HG）',
  `comment` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of list
-- ----------------------------
INSERT INTO `list` VALUES (0, 'string', 0, 0, 'string', '2021-08-14 08:34:59', '2021-08-14 08:34:59', '2021-08-14 08:34:59', 'string', 0, 'string', 'string', 'string', 'string', 'string', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'string', 0);
INSERT INTO `list` VALUES (0, '日翔化工公司', 1, 1, '日翔化工公司', '2021-08-05 09:58:41', '2021-08-15 17:36:08', '2021-08-15 17:36:08', '动力煤', 100, '海运', '江西', '现结', '现金', '现金', 1, 50000, 2500, 0.2, 20, 0.4, 0.1, 0.3, 0.3, 23, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 3);
INSERT INTO `list` VALUES (1, '中天供应链公司', 11, 1, '中天供应链公司', '2021-08-05 09:58:41', '2021-08-14 09:31:11', '2021-08-14 09:31:11', '新型煤', 100, '海运', '江西', '现结', '现金', '现金', 1, 26700, 6600, 0.2, 10, 0.4, 0.1, 0.3, 0.3, 35, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 3);
INSERT INTO `list` VALUES (1, '舒雅工程公司', 13, 1, '舒雅工程公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '动力煤', 100, '海运', '贵州', '现结', '现金', '现金', 1, 40000, 3400, 0.2, 3, 0.4, 0.1, 0.3, 0.3, 10, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (0, '舒雅工程公司', 14, 1, '舒雅工程公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '水煤浆', 100, '海运', '贵州', '现结', '现金', '现金', 1, 50000, 3300, 0.2, 11, 0.4, 0.1, 0.3, 0.3, 10, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (0, '舒雅工程公司', 18, 1, '舒雅工程公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '水煤浆', 100, '海运', '陕西', '现结', '现金', '现金', 1, 55000, 2000, 0.2, 14, 0.4, 0.1, 0.3, 0.3, 10, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (0, '舒雅工程公司', 21, 1, '舒雅工程公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '动力煤', 100, '海运', '江西', '现结', '现金', '现金', 1, 35000, 4500, 0.2, 15, 0.4, 0.1, 0.3, 0.3, 40, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (1, '永盛化工公司', 23, 1, '永盛化工公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '新型煤', 100, '海运', '江西', '现结', '现金', '现金', 1, 35000, 1200, 0.2, 15, 0.4, 0.1, 0.3, 0.3, 37, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (1, '永盛化工公司', 24, 1, '永盛化工公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '新型煤', 100, '海运', '四川', '现结', '现金', '现金', 1, 35000, 2000, 0.2, 17, 0.4, 0.1, 0.3, 0.3, 16, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (0, '瑞美时工程公司', 34, 1, '瑞美时工程公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '煤泥', 100, '海运', '四川', '现结', '现金', '现金', 1, 62100, 1700, 0.2, 20, 0.4, 0.1, 0.3, 0.3, 5, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (1, '瑞美时工程公司', 35, 1, '瑞美时工程公司', '2021-08-05 09:58:41', '2021-08-14 09:33:06', '2021-08-14 09:33:06', '水煤浆', 100, '海运', '海南', '现结', '现金', '现金', 1, 80000, 3100, 0.2, 30, 0.4, 0.1, 0.3, 0.3, 4, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 3);
INSERT INTO `list` VALUES (1, '永盛化工公司', 45, 1, '永盛化工公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '新型煤', 100, '海运', '海南', '现结', '现金', '现金', 1, 80000, 3600, 0.2, 35, 0.4, 0.1, 0.3, 0.3, 3, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (1, '永盛化工公司', 56, 1, '永盛化工公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '无烟煤', 100, '海运', '江西', '现结', '现金', '现金', 1, 50000, 3300, 0.2, 27, 0.4, 0.1, 0.3, 0.3, 11, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (0, '桂华供应链公司', 67, 1, '桂华供应链公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '无烟煤', 100, '海运', '江西', '现结', '现金', '现金', 1, 44000, 2000, 0.2, 10, 0.4, 0.1, 0.3, 0.3, 10, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (1, '桂华供应链公司', 68, 1, '桂华供应链公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '新型煤', 100, '海运', '安徽', '现结', '现金', '现金', 1, 50000, 4500, 0.2, 10, 0.4, 0.1, 0.3, 0.3, 4, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (1, '永盛化工公司', 69, 1, '永盛化工公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '无烟煤', 100, '海运', '江西', '现结', '现金', '现金', 1, 50000, 1200, 0.2, 10, 0.4, 0.1, 0.3, 0.3, 3, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (1, '永盛化工公司', 87, 1, '永盛化工公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '炼焦媒', 100, '海运', '内蒙古自治区', '现结', '现金', '现金', 1, 50000, 2000, 0.2, 10, 0.4, 0.1, 0.3, 0.3, 11, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (0, '中天供应链公司', 89, 1, '中天供应链公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '炼焦媒', 100, '海运', '内蒙古自治区', '现结', '现金', '现金', 1, 50000, 1700, 0.2, 16, 0.4, 0.1, 0.3, 0.3, 5, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (1, '天昊化工公司', 90, 1, '天昊化工公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '煤泥', 100, '海运', '内蒙古自治区', '现结', '现金', '现金', 1, 66000, 8000, 0.2, 16, 0.4, 0.1, 0.3, 0.3, 14, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (1, '天昊化工公司', 91, 1, '天昊化工公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '新型煤', 100, '海运', '江西', '现结', '现金', '现金', 1, 66000, 7000, 0.2, 16, 0.4, 0.1, 0.3, 0.3, 4, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (0, '天昊化工公司', 92, 1, '天昊化工公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '低质煤', 100, '海运', '江西', '现结', '现金', '现金', 1, 50000, 4400, 0.2, 9, 0.4, 0.1, 0.3, 0.3, 3, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (1, '永盛化工公司', 100, 1, '永盛化工公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '新型煤', 100, '海运', '广东', '现结', '现金', '现金', 1, 50000, 1500, 0.2, 5, 0.4, 0.1, 0.3, 0.3, 30, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (1, '永盛化工公司', 112, 1, '永盛化工公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '新型煤', 100, '海运', '贵州', '现结', '现金', '现金', 1, 26700, 3500, 0.2, 4, 0.4, 0.1, 0.3, 0.3, 27, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (1, '欧利供应链公司', 117, 1, '欧利供应链公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '水煤浆', 100, '海运', '贵州', '现结', '现金', '现金', 1, 40000, 6600, 0.2, 10, 0.4, 0.1, 0.3, 0.3, 35, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (1, '永盛化工公司', 137, 1, '永盛化工公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '水煤浆', 100, '海运', '贵州', '现结', '现金', '现金', 1, 50000, 3400, 0.2, 3, 0.4, 0.1, 0.3, 0.3, 10, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (1, '瑞美时工程公司', 342, 1, '瑞美时工程公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '新型煤', 100, '海运', '江西', '现结', '现金', '现金', 1, 50000, 2700, 0.2, 23, 0.4, 0.1, 0.3, 0.3, 10, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (1, '房贷首付', 434, NULL, '爱的色放', '2021-08-14 09:20:04', '2021-08-14 09:20:04', '2021-08-14 09:20:04', '新型煤', 10000, '铁路运输', '阿道夫', '单次', '线上', '现金结算', 0, 100, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 5, 0, 10, 10, 10, 10, 10, '', 2);
INSERT INTO `list` VALUES (0, '这是555的订单', 435, 666, '我很厉害的', '2021-08-14 10:16:23', '2021-08-14 10:20:18', '2021-08-14 10:20:18', '新型煤', 10000, '铁路运输', '当然是四川', '单次', '线上', '现金结算', 0, 100, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 5, 0, 10, 10, 10, 10, 10, '仅仅是一个测试，别紧张', 3);
INSERT INTO `list` VALUES (1, '合盛元化工公司', 568, 1, '合盛元化工公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '无烟煤', 100, '海运', '江西', '现结', '现金', '现金', 1, 44000, 3300, 0.2, 27, 0.4, 0.1, 0.3, 0.3, 11, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (1, '永盛化工公司', 687, 1, '永盛化工公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '炼焦媒', 100, '海运', '江西', '现结', '现金', '现金', 1, 50000, 4500, 0.2, 10, 0.4, 0.1, 0.3, 0.3, 4, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (1, '永盛化工公司', 973, 1, '永盛化工公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '新型煤', 100, '海运', '江西', '现结', '现金', '现金', 1, 38000, 3900, 0.2, 9, 0.4, 0.1, 0.3, 0.3, 11, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (1, '欧利供应链公司', 1007, 1, '欧利供应链公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '新型煤', 100, '海运', '江西', '现结', '现金', '现金', 1, 40000, 1500, 0.2, 5, 0.4, 0.1, 0.3, 0.3, 30, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (1, '永盛化工公司', 1127, 1, '永盛化工公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '新型煤', 100, '海运', '贵州', '现结', '现金', '现金', 1, 40000, 3500, 0.2, 4, 0.4, 0.1, 0.3, 0.3, 27, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (0, '永盛化工公司', 1477, 1, '永盛化工公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '水煤浆', 100, '海运', '江西', '现结', '现金', '现金', 1, 55000, 3300, 0.2, 11, 0.4, 0.1, 0.3, 0.3, 10, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (0, '合盛元化工公司', 1867, 1, '合盛元化工公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '新型煤', 100, '海运', '陕西', '现结', '现金', '现金', 1, 50000, 2000, 0.2, 14, 0.4, 0.1, 0.3, 0.3, 10, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (0, '合盛元化工公司', 2176, 1, '合盛元化工公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '动力煤', 100, '海运', '江西', '现结', '现金', '现金', 1, 35000, 4500, 0.2, 15, 0.4, 0.1, 0.3, 0.3, 40, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (1, '合盛元化工公司', 2356, 1, '合盛元化工公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '新型煤', 100, '海运', '四川', '现结', '现金', '现金', 1, 35000, 1200, 0.2, 15, 0.4, 0.1, 0.3, 0.3, 37, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (1, '鸿铭工程公司', 2456, 1, '鸿铭工程公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '煤泥', 100, '海运', '四川', '现结', '现金', '现金', 1, 62100, 2000, 0.2, 17, 0.4, 0.1, 0.3, 0.3, 16, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (0, '鸿铭工程公司', 3446, 1, '鸿铭工程公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '水煤浆', 100, '海运', '江西', '现结', '现金', '现金', 1, 50000, 1700, 0.2, 20, 0.4, 0.1, 0.3, 0.3, 5, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (1, '合盛元化工公司', 3579, 1, '合盛元化工公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '新型煤', 100, '海运', '海南', '现结', '现金', '现金', 1, 80000, 3100, 0.2, 30, 0.4, 0.1, 0.3, 0.3, 4, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (1, '合盛元化工公司', 4589, 1, '合盛元化工公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '无烟煤', 100, '海运', '江西', '现结', '现金', '现金', 1, 50000, 3600, 0.2, 35, 0.4, 0.1, 0.3, 0.3, 3, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (0, '合盛元化工公司', 6778, 1, '合盛元化工公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '新型煤', 100, '海运', '安徽', '现结', '现金', '现金', 1, 50000, 2000, 0.2, 10, 0.4, 0.1, 0.3, 0.3, 10, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (1, '永盛化工公司', 6945, 1, '永盛化工公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '无烟煤', 100, '海运', '江西', '现结', '现金', '现金', 1, 50000, 1200, 0.2, 10, 0.4, 0.1, 0.3, 0.3, 3, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (1, '永盛化工公司', 8745, 1, '永盛化工公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '炼焦媒', 100, '海运', '内蒙古自治区', '现结', '现金', '现金', 1, 50000, 2000, 0.2, 10, 0.4, 0.1, 0.3, 0.3, 11, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (0, '贝世工程公司', 8945, 1, '贝世工程公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '炼焦媒', 100, '海运', '内蒙古自治区', '现结', '现金', '现金', 1, 66000, 1700, 0.2, 16, 0.4, 0.1, 0.3, 0.3, 5, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (1, '贝世工程公司', 9045, 1, '贝世工程公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '炼焦媒', 100, '海运', '内蒙古自治区', '现结', '现金', '现金', 1, 66000, 8000, 0.2, 16, 0.4, 0.1, 0.3, 0.3, 14, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (1, '贝世工程公司', 9145, 1, '贝世工程公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '新型煤', 100, '海运', '江西', '现结', '现金', '现金', 1, 66000, 7000, 0.2, 16, 0.4, 0.1, 0.3, 0.3, 4, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (0, '永盛化工公司', 9234, 1, '永盛化工公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '低质煤', 100, '海运', '长春', '现结', '现金', '现金', 1, 50000, 4400, 0.2, 9, 0.4, 0.1, 0.3, 0.3, 3, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (0, '坤鑫供应链公司', 9711, 1, '坤鑫供应链公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '动力煤', 100, '海运', '长春', '现结', '现金', '现金', 1, 38000, 2500, 0.2, 20, 0.4, 0.1, 0.3, 0.3, 23, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (1, '欧利供应链公司', 9712, 1, '欧利供应链公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '新型煤', 100, '海运', '长春', '现结', '现金', '现金', 1, 38000, 3900, 0.2, 9, 0.4, 0.1, 0.3, 0.3, 11, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (1, '鸿铭工程公司', 34276, 1, '鸿铭工程公司', '2021-08-05 09:58:41', '2021-08-12 09:58:48', '2021-08-17 09:59:26', '水煤浆', 100, '海运', '江西', '现结', '现金', '现金', 1, 50000, 2700, 0.2, 23, 0.4, 0.1, 0.3, 0.3, 10, 0.05, 0.34, 0.3, 0.6, 0.3, 0.39, 300, 900, 450, '量大急求！', 2);
INSERT INTO `list` VALUES (0, 'string', 4534340, 0, 'string', '2021-08-14 08:34:59', '2021-08-14 08:34:59', '2021-08-14 08:34:59', 'string', 0, 'string', 'string', 'string', 'string', 'string', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'string', 2);

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `path` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `component` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `iconCls` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `keepAlive` tinyint(1) NULL DEFAULT NULL,
  `requireAuth` tinyint(1) NULL DEFAULT NULL,
  `parentId` int(11) NULL DEFAULT NULL,
  `enabled` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `parentId`(`parentId`) USING BTREE,
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parentId`) REFERENCES `menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, '/', NULL, NULL, '所有', NULL, NULL, NULL, NULL, 1);
INSERT INTO `menu` VALUES (2, '/', '/home', 'Home', '权限管理', 'el-icon-view', NULL, 1, NULL, 1);
INSERT INTO `menu` VALUES (7, '/user/basic/**', '/user/basic', 'UserBasic', '用户资料', NULL, NULL, 1, 2, 1);
INSERT INTO `menu` VALUES (8, '/user/rolemenu/**', '/user/rolemenu', 'UserRM', '菜单管理', NULL, NULL, 1, 2, 1);
INSERT INTO `menu` VALUES (29, '/user/userrole/**', '/user/userrole/', 'UserUR', '角色分配', NULL, NULL, 1, 2, 1);

-- ----------------------------
-- Table structure for menu_role
-- ----------------------------
DROP TABLE IF EXISTS `menu_role`;
CREATE TABLE `menu_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NULL DEFAULT NULL,
  `rid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `mid`(`mid`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE,
  CONSTRAINT `menu_role_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `menu_role_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 283 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of menu_role
-- ----------------------------
INSERT INTO `menu_role` VALUES (161, 7, 1);
INSERT INTO `menu_role` VALUES (162, 2, 1);
INSERT INTO `menu_role` VALUES (164, 8, 1);
INSERT INTO `menu_role` VALUES (165, 29, 1);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nameZh` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '角色名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'ROLE_admin', '系统管理员');
INSERT INTO `role` VALUES (2, 'ROLE_user', '普通用户');

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `startTime` datetime NOT NULL,
  `endTime` datetime NOT NULL,
  `buyerId` int(11) NOT NULL,
  `sellerId` int(11) NULL DEFAULT NULL,
  `listId` int(11) NOT NULL,
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES (1, '2021-07-28 18:03:18', '2021-08-17 18:03:21', 1, 2, 1);
INSERT INTO `t_order` VALUES (2, '2021-07-28 18:03:18', '2021-08-17 18:03:21', 1, 2, 100);
INSERT INTO `t_order` VALUES (3, '2021-07-28 18:03:18', '2021-08-17 18:03:21', 1, 2, 11);
INSERT INTO `t_order` VALUES (4, '2021-08-14 08:50:08', '2021-08-14 08:50:08', 1, 1, 1);
INSERT INTO `t_order` VALUES (5, '2021-08-14 09:31:11', '2021-08-14 09:31:11', 1, 1, 11);
INSERT INTO `t_order` VALUES (6, '2021-08-14 09:33:03', '2021-08-14 09:33:03', 1, 1, 35);
INSERT INTO `t_order` VALUES (7, '2021-08-14 09:33:04', '2021-08-14 09:33:04', 1, 1, 35);
INSERT INTO `t_order` VALUES (8, '2021-08-14 09:33:05', '2021-08-14 09:33:05', 1, 1, 35);
INSERT INTO `t_order` VALUES (9, '2021-08-14 09:33:06', '2021-08-14 09:33:06', 1, 1, 35);
INSERT INTO `t_order` VALUES (10, '2021-08-14 10:20:18', '2021-08-14 10:20:18', 666, 666, 435);
INSERT INTO `t_order` VALUES (11, '2021-08-15 17:36:08', '2021-08-15 17:36:08', 1, 1, 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'hrID',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `address` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系地址',
  `enabled` tinyint(1) NULL DEFAULT 1,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `birthday` date NULL DEFAULT NULL COMMENT '生日',
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `cpnName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (3, '系统管理员', '18568887789', '深圳南山', 1, 'admin', '$2a$10$mikc7xigEHlW0iAzvHYg7eMVH4vLBRcniD3RNFFLcXUDPZvHUXvWC', 'laowang@qq.com', '1990-01-01', '男', '想你');
INSERT INTO `user` VALUES (5, '李白', '18568123489', '海口美兰', 1, 'libai', '$2a$10$oE39aG10kB/rFu2vQeCJTu/V/v4n6DRR0f8WyXRiAYvBpmadoOBE.', 'chenjing@qq.com', '1989-02-01', '男', NULL);
INSERT INTO `user` VALUES (10, '韩愈', '18568123666', '广州番禺', 1, 'hanyu', '$2a$10$oE39aG10kB/rFu2vQeCJTu/V/v4n6DRR0f8WyXRiAYvBpmadoOBE.', 'zhao@qq.com', '1993-03-04', '男', NULL);
INSERT INTO `user` VALUES (11, '柳宗元', '18568123377', '广州天河', 1, 'liuzongyuan', '$2a$10$oE39aG10kB/rFu2vQeCJTu/V/v4n6DRR0f8WyXRiAYvBpmadoOBE.', 'yaosen@qq.com', '1990-01-03', '男', NULL);
INSERT INTO `user` VALUES (12, '曾巩', '18568128888', '广州越秀', 1, 'zenggong', '$2a$10$oE39aG10kB/rFu2vQeCJTu/V/v4n6DRR0f8WyXRiAYvBpmadoOBE.', 'yunxing@qq.com', '1991-02-05', '男', NULL);
INSERT INTO `user` VALUES (18, 'string', 'string', 'string', 1, '1', '$2a$10$mikc7xigEHlW0iAzvHYg7eMVH4vLBRcniD3RNFFLcXUDPZvHUXvWC', 'string', '2021-08-12', 'string', 'string');
INSERT INTO `user` VALUES (19, '123', 'string', 'string', 1, 'string', '$2a$10$.h/Yh8EDguoyOVqmX.kCC.hi1b8WMdzlxpiNBhz.ErC5NNmattsBm', 'string', '2021-08-12', 'string', 'string');
INSERT INTO `user` VALUES (20, '123', 'string', 'string', 1, '111', '$2a$10$5mMDEyoawm7FUZMFXf5Lgu/vgzt9/ie.QLcxkjeglEeEN35yE/Xoy', 'string', '2021-08-12', 'string', 'string');
INSERT INTO `user` VALUES (21, NULL, NULL, '9', 1, '999', '$2a$10$XjYmncGInRdRslsqvlF5BejjmtGRStyCyFjOl1IN.E7xoCw9o1BU6', '9', '2021-08-15', '男', '');
INSERT INTO `user` VALUES (22, NULL, NULL, '88', 1, '888', '$2a$10$V6527DHpl0w.ae6/uy6jTupJx51sxsWFxN2AoKTS2rVW4s6kAdV4W', '888', '2021-08-16', '男', '');
INSERT INTO `user` VALUES (23, 'zhou', '182', '四川成都', 1, '666', '$2a$10$L.Lj21MrtjlEIk7r0.FQmeLKbF.BdveipJpVdtcJxfaUaHGgCiFWy', '169', '2021-06-07', '男', '电子科技大学');
INSERT INTO `user` VALUES (24, '国服韩信', '18284597212', '1312', 1, '555', '$2a$10$qChgZeHwAeU/3UCbE.Va7OVo0LYqbxvRbIhCC3X8XoJ8I4U9f/WES', '12938712321', '2021-08-09', '男', '电子科技大学');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT NULL,
  `rid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE,
  INDEX `hr_role_ibfk_1`(`uid`) USING BTREE,
  CONSTRAINT `user_role_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `user_role_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, 3, 1);
INSERT INTO `user_role` VALUES (2, 5, 2);
INSERT INTO `user_role` VALUES (75, 10, 2);
INSERT INTO `user_role` VALUES (76, 11, 2);
INSERT INTO `user_role` VALUES (77, 12, 2);
INSERT INTO `user_role` VALUES (82, 18, 2);
INSERT INTO `user_role` VALUES (83, 19, 2);
INSERT INTO `user_role` VALUES (84, 20, 2);
INSERT INTO `user_role` VALUES (85, 21, 2);
INSERT INTO `user_role` VALUES (86, 22, 2);
INSERT INTO `user_role` VALUES (87, 23, 2);
INSERT INTO `user_role` VALUES (88, 24, 2);

-- ----------------------------
-- Procedure structure for addDep
-- ----------------------------
DROP PROCEDURE IF EXISTS `addDep`;
delimiter ;;
CREATE PROCEDURE `addDep`(in depName varchar(32),in parentId int,in enabled boolean,out result int,out result2 int)
begin
  declare did int;
  declare pDepPath varchar(64);
  insert into department set name=depName,parentId=parentId,enabled=enabled;
  select row_count() into result;
  select last_insert_id() into did;
  set result2=did;
  select depPath into pDepPath from department where id=parentId;
  update department set depPath=concat(pDepPath,'.',did) where id=did;
  update department set isParent=true where id=parentId;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for deleteDep
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteDep`;
delimiter ;;
CREATE PROCEDURE `deleteDep`(in did int,out result int)
begin
  declare ecount int;
  declare pid int;
  declare pcount int;
  declare a int;
  select count(*) into a from department where id=did and isParent=false;
  if a=0 then set result=-2;
  else
  select count(*) into ecount from employee where departmentId=did;
  if ecount>0 then set result=-1;
  else
  select parentId into pid from department where id=did;
  delete from department where id=did and isParent=false;
  select row_count() into result;
  select count(*) into pcount from department where parentId=pid;
  if pcount=0 then update department set isParent=false where id=pid;
  end if;
  end if;
  end if;
end
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
