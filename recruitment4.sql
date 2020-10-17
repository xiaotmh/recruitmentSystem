/*
 Navicat Premium Data Transfer

 Source Server         : 1
 Source Server Type    : MySQL
 Source Server Version : 50645
 Source Host           : localhost:3306
 Source Schema         : recruitment4

 Target Server Type    : MySQL
 Target Server Version : 50645
 File Encoding         : 65001

 Date: 16/04/2020 22:43:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `aid` int(11) NULL DEFAULT NULL,
  `apwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (123456, '123456');

-- ----------------------------
-- Table structure for enterpriseuser
-- ----------------------------
DROP TABLE IF EXISTS `enterpriseuser`;
CREATE TABLE `enterpriseuser`  (
  `bid` int(11) NULL DEFAULT NULL,
  `bpwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of enterpriseuser
-- ----------------------------
INSERT INTO `enterpriseuser` VALUES (1, '1');
INSERT INTO `enterpriseuser` VALUES (2, '1');
INSERT INTO `enterpriseuser` VALUES (3, '1');
INSERT INTO `enterpriseuser` VALUES (4, '1');
INSERT INTO `enterpriseuser` VALUES (5, '1');
INSERT INTO `enterpriseuser` VALUES (6, '1');
INSERT INTO `enterpriseuser` VALUES (7, '1');
INSERT INTO `enterpriseuser` VALUES (8, '1');
INSERT INTO `enterpriseuser` VALUES (9, '1');

-- ----------------------------
-- Table structure for etuserdetail
-- ----------------------------
DROP TABLE IF EXISTS `etuserdetail`;
CREATE TABLE `etuserdetail`  (
  `bid` int(11) NULL DEFAULT NULL,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `information` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contact` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of etuserdetail
-- ----------------------------
INSERT INTO `etuserdetail` VALUES (1, '2177游戏', '江西南昌', '2852165618', 'http://www.2217.com/', '2217游戏是深受全网玩家喜爱的网页游戏平台', 'https://www.baidu.com/link?url=fW3fgbbKsxnH2mCwbrsSvUxfMkuWhLa2Vx47Fki_dsFW-xV4AjbGVIJq9S26gqbBJp1hi97oawJ4QYcGpu9Dd8N40OisQz_GyySISH7Djoq7zi-7WSpZ11fjsIiPbXO_&wd=&eqid=92b7a3c800112212000000035e986cba');
INSERT INTO `etuserdetail` VALUES (2, '傲蓝软件', '广州市', '4009904905', 'http://www.aolan.net/', '广州市蓝格软件科技有限公司是高新技术企业，拥有“傲蓝”品牌', 'https://www.baidu.com/link?url=QxrA9g7ckZ5ab-Cy3ePGDKuMFaQt09JYS8-7vBBVf2Xx7fcG6YcFmqcvcw0zQzWwlRL9gddpCY64HvyGOSL3eq&wd=&eqid=92b7a3c800112212000000035e986cba');
INSERT INTO `etuserdetail` VALUES (3, 'CSDN', '北京市', '4006600108', 'https://www.csdn.net/', '中国开发者社区CSDN创立于1999年，致力于成为IT技术人交流和成长的家园', 'https://www.baidu.com/link?url=I7YtYfB-tBA6qRONF7O98LZaY0IEJ2SaLkDPGaujLMqS8S57mnZlOZhNGu1qhhZmEImr2W1sm6FB1bkNLYMgSa&wd=&eqid=92b7a3c800112212000000035e986cba');
INSERT INTO `etuserdetail` VALUES (4, '廊坊福佳斯', '廊坊市', '13931657979', 'https://www.baidu.com', '廊坊福佳斯', 'https://admin.qidian.qq.com/template/blue/mp/menu/qr-code-jump.html?linkType=0&env=ol&kfuin=2852106528&kfext=2852106528&fid=21&key=89de3f22d94c6425bd10fd117c774306&cate=1&type=16&ftype=1&roleKey=roleQQ&roleValue=0&roleName=&roleData=3007262985&src_type=web&version=1&roleUin=3007262985&_type=wpa&qidian=true');
INSERT INTO `etuserdetail` VALUES (5, '亿泰粮油', '安阳市', '13346653688', 'https://www.micorsoft.com', '亿泰粮油河南安阳滑县老店镇第三营村', 'https://admin.qidian.qq.com/template/blue/mp/menu/qr-code-jump.html?linkType=0&env=ol&kfuin=2852103252&kfext=2852103252&fid=18&key=88682411dd641dd789c5757607252971&cate=1&type=16&ftype=1&roleKey=roleQQ&roleValue=0&roleName=&roleData=3007262383&src_type=web&version=1&roleUin=3007262383&_type=wpa&qidian=true');
INSERT INTO `etuserdetail` VALUES (6, '晨伟五金工具', '东莞市1', '13332694165', 'https://www.huawei.com', '广东东莞市长安镇沙头东大五街6号201室', 'https://admin.qidian.qq.com/template/blue/mp/menu/qr-code-jump.html?linkType=0');
INSERT INTO `etuserdetail` VALUES (7, 'MobTech', '上海市', '4006852216', 'http://www.mob.com/', 'MobTech（原Mob移动开发者服务平台）成立于2012年，是全球领先的第三方移动开发者和数据服务平台', 'https://admin.qidian.qq.com/template/blue/mp/menu/qr-code-jump.html?linkType=0&env=ol&kfuin=2852157264&fid=55&key=85b30c477ba911c3f568287a77958353&cate=1&type=16&ftype=1&_type=wpa&qidian=true');
INSERT INTO `etuserdetail` VALUES (8, '情报魔方', '杭州市', '400-680-7858', 'http://kanda-data.com/', '看达（杭州）数据科技有限公司成立于2018年，总部位于杭州，在北京、上海、深圳、新疆均设有全资子公司或办事处。', 'https://admin.qidian.qq.com/template/blue/mp/menu/qr-code-jump.html?linkType=0&env=ol&kfuin=2852168905&fid=223&key=97065a0347227aa34145cd7853c52dff&cate=1&type=16&ftype=1&_type=wpa&qidian=true');
INSERT INTO `etuserdetail` VALUES (9, '爱普生中国', '北京市', '400-810-9977', 'http://www.epson.com.cn/', '爱普生（中国）有限公司成立于1998年，总部设在北京，负责统括爱普生在中国的投资和业务拓展', 'https://admin.qidian.qq.com/template/blue/mp/menu/qr-code-jump.html?linkType=0&env=ol&kfuin=2852166525&fid=85&key=4057b10ed13087b4206a4e044fc11dff&cate=1&type=16&ftype=1&_type=wpa&qidian=true');

-- ----------------------------
-- Table structure for recruitmentmessage
-- ----------------------------
DROP TABLE IF EXISTS `recruitmentmessage`;
CREATE TABLE `recruitmentmessage`  (
  `rmid` int(11) NULL DEFAULT NULL,
  `enid` int(255) NULL DEFAULT NULL,
  `enname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wtype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `work` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `minmoney` int(255) NULL DEFAULT NULL,
  `maxmoney` int(255) NULL DEFAULT NULL,
  `workcity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `experience` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `education` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `moremessage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `workaddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of recruitmentmessage
-- ----------------------------
INSERT INTO `recruitmentmessage` VALUES (20001, 1, '2177游戏', '移动互联网', '全职', 5, 8, '北京', '年底双薪', '本科', '1年经验', '江西南昌');
INSERT INTO `recruitmentmessage` VALUES (20002, 2, '傲蓝软件', '电子商务', '全职', 2, 6, '上海', '专项奖金', '专科', '2年经验', '广州市');
INSERT INTO `recruitmentmessage` VALUES (20003, 3, 'CSDN', '社交', '全职', 5, 5, '广州', '股票期权', '本科', '3年经验', '北京市');
INSERT INTO `recruitmentmessage` VALUES (20004, 4, '廊坊福佳斯', '企业服务', '全职', 5, 9, '深圳', '绩效奖金', '硕士研究生', '4年经验', '河北省廊坊市');
INSERT INTO `recruitmentmessage` VALUES (20005, 5, '亿泰粮油', 'O2O', '全职', 10, 6, '成都', '年终分红', '本科', '无经验要求', '河南省安阳市');
INSERT INTO `recruitmentmessage` VALUES (20006, 6, '晨伟五金工具', '教育', '全职', 15, 9, '杭州', '带薪年假', '博士研究生', '1年经验', '广东省东莞市');
INSERT INTO `recruitmentmessage` VALUES (20007, 7, 'MobTech', '移动互联网', '全职', 2, 8, '北京', '交通补贴', '本科', '1.5年经验', '上海市');
INSERT INTO `recruitmentmessage` VALUES (20008, 8, '情报魔方', '电子商务', '全职', 2, 6, '上海', '通讯津贴', '专科', '2年经验', '浙江省杭州市');
INSERT INTO `recruitmentmessage` VALUES (20009, 9, '爱普生中国', '社交', '全职', 5, 5, '广州', '午餐补助', '本科', '3年经验', '北京市海淀区');

-- ----------------------------
-- Table structure for resume
-- ----------------------------
DROP TABLE IF EXISTS `resume`;
CREATE TABLE `resume`  (
  `uid` int(11) NULL DEFAULT NULL,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `advantage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wantmoney` int(255) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `enid` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for resumereply
-- ----------------------------
DROP TABLE IF EXISTS `resumereply`;
CREATE TABLE `resumereply`  (
  `enid` int(11) NULL DEFAULT NULL,
  `enname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` int(11) NULL DEFAULT NULL,
  `upwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (101, '1');
INSERT INTO `user` VALUES (102, '1');
INSERT INTO `user` VALUES (103, '1');

-- ----------------------------
-- Table structure for usercollection
-- ----------------------------
DROP TABLE IF EXISTS `usercollection`;
CREATE TABLE `usercollection`  (
  `uid` int(11) NULL DEFAULT NULL,
  `rmid` int(11) NULL DEFAULT NULL,
  `enid` int(11) NULL DEFAULT NULL,
  `enname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `money` int(11) NULL DEFAULT NULL,
  `treatment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `workadress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `moremessage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for userdetail
-- ----------------------------
DROP TABLE IF EXISTS `userdetail`;
CREATE TABLE `userdetail`  (
  `uid` int(11) NULL DEFAULT NULL,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `major` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `edubackground` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of userdetail
-- ----------------------------
INSERT INTO `userdetail` VALUES (101, '张三', '18', '男', '123@qq.com', '12345678', '12345', '计算机', '15计科', '本科');
INSERT INTO `userdetail` VALUES (102, '李四', '20', '女', '321@126.com', '87654321', '123456', '临床医学', '16临床', '专科');
INSERT INTO `userdetail` VALUES (103, '王五', '22', '女', '456@163.com', '11111111', '1234567', '电气工程', '17电气', '研究生');

SET FOREIGN_KEY_CHECKS = 1;
