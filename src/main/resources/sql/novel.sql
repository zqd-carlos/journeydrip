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

 Date: 20/09/2019 15:37:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for novel
-- ----------------------------
DROP TABLE IF EXISTS `novel`;
CREATE TABLE `novel`  (
  `novelid` int(11) NOT NULL AUTO_INCREMENT COMMENT '小说的id',
  `novelname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '小说的名字',
  `imgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '小说的封面地址',
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '小说的描述',
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '有关小说的细节',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '小说的类型',
  PRIMARY KEY (`novelid`) USING BTREE,
  UNIQUE INDEX `novelname`(`novelname`) USING BTREE COMMENT '给小说名添加唯一索引'
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of novel
-- ----------------------------
INSERT INTO `novel` VALUES (1, '《异界之养蜂人》', 'yijiezhiyangfengren.jpg', NULL, NULL, '玄幻');
INSERT INTO `novel` VALUES (2, '《圣墟》', 'shengxu.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (3, '《修正连天群》', 'xiuzhengliantianqun.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (4, '《牧神记》', 'mushenjiyijiezhiyangfengren.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (5, '《天道图书馆》', 'tiandaotushuguanyijiezhiyangfengren.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (6, '《汉乡》', 'hanxiangyijiezhiyangfengren.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (7, '《飞剑问道》', 'feixianwendaoyijiezhiyangfengren.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (8, '《我的1979》', 'wode1979yijiezhiyangfengren.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (9, '《大王饶命》', 'dawangraomingyijiezhiyangfengren.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (10, '《一念永恒》', 'yinianyonghengyijiezhiyangfengren.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (11, '《凡人修仙之仙界篇》', 'fanrenxiuxianzhixianjiepian.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (12, '《带着仓库到大明》', 'daizhecangkudaodaming.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (13, '《奶爸的文艺人生》', 'naibadewenyirensheng.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (14, '《超神机械师》', 'chaoshenjixieshi.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (15, '《全职法师》', 'quanzhifashi.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (16, '《道君》', 'daojun.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (17, '《美食供应商》', 'meishigongyingshang.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (18, '《重生完美时代》', 'chongshengwanmeishidai.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (19, '《我是至尊》', 'woshizhizun.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (20, '《神话版三国》', 'shenhuabansanguo.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (21, '《儒道至圣》', 'rudaozhisheng.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (22, '《放开那个女巫》', 'fangkainagenvwu.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (23, '《帝霸》', 'diba.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (24, '《武炼巅峰》', 'wuliandianfeng.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (25, '《我要做门阀》', 'woyaozuomenmin.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (26, '《间谍的战争》', 'jiandiedezhanzheng.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (27, '《重燃》', 'chongran.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (28, '《寒门崛起》', 'hanmenjueqi.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (29, '《女帝家的小白脸》', 'nvdijiadexiaobailian.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (30, '《轮回乐园》', 'lunhuileyuan.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (31, '《动力之王》', 'donglizhiwang.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (32, '《一品道门》', 'yipindaomen.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (33, '《赘婿》', 'zuixu.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (34, '《名侦探世界里的巫师》', 'mingzhentanshijielidewushi.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (35, '《秦吏》', 'qinli.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (36, '《异常生物见闻录》', 'yichangshengwujianwenlu.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (37, '《特拉福买家俱乐部》', 'telafumaijiajulebu.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (38, '《宠物天王》', 'chongwutianwang.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (39, '《苍穹之上》', 'cangqiongzhishang.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (40, '《还看今朝》', 'haikanjinzhao.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (41, '《斗战狂潮》', 'douzhankuangchao.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (42, '《天行战记》', 'tianxingzhanji.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (43, '《造化之王》', 'zaohuazhiwang.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (44, '《奶爸的异界餐厅》', 'naibadeyijiecanting.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (45, '《大道朝天》', 'dadaochaotian.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (46, '《深夜书屋》', 'shenyeshuwu.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (47, '《超品巫师》', 'jipinwushi.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (48, '《湾区之王》', 'wanquzhiwang.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (49, '《暗黑破坏神之毁灭》', 'anheipohuaishenzhihuimie.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (50, '《大道争锋》', 'dadaozhengfeng', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (51, '《纣临》', 'zhaolin.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (52, '《我是仙凡》', 'woshixianfan.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (53, '《无限先知》', 'wuxianxianzhi.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (54, '《凡人修仙传》', 'fanrenxiuxianzhuan.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (55, '《寒门状元》', 'hanmenzhuangyuan.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (56, '《重生之最强剑神》', 'chongshengzhizuiqiangjianshen.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (57, '《落地一把98K》', 'luodiyiba98k.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (58, '《大明文魁》', 'damingwenkui.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (59, '《漫威世界的术士》', 'manweishijiedeshushi.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (60, '《这个修士很危险》', 'zhegexiushihenweixian.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (61, '《大数据修仙》', 'dashujuxiuxian.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (62, '《替天行道》', 'titianxingdao.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (63, '《国产英雄》', 'guochanyingxiong.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (64, '《太初》', 'taichu.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (65, '《我在明朝当国公》', 'wozaimingchaodangguogong.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (66, '《狂探》', 'kuangtan.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (67, '《至尊剑皇》', 'zhizunjianhuang.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (68, '《超维术士》', 'chaoweishushi.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (69, '《我的身体有bug》', 'wodeshentiyoubug.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (70, '《未来天王》', 'weilaitianwang.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (71, '《休闲乡村直播间》', 'xiuxianxiangcunzhibojian.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (72, '《诸界末日在线》', 'zhujiemorizaixian.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (73, '《万古神帝》', 'wangushendi.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (74, '《诅咒之龙》', 'zuzhouzhilong.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (75, '《萌神信徒》', 'mengshenxintu.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (76, '《我只想当一个安静的学霸》', 'wozhixiangdangyigeanjingdexueba.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (77, '《美食猎人》', 'meishilieren.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (78, '《万道剑尊》', 'wandaojianzun.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (79, '《进化之眼》', 'jinhuazhiyan.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (80, '《修真四万年》', 'xiuzhensiwangnian.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (81, '《大魏宫廷》', 'daweigongting.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (82, '《反叛的大魔王》', 'fanpandedamowang.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (83, '《我的小人国》', 'wodexiaorenguo.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (84, '《最强医圣》', 'zuiqiangyisheng.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (85, '《宠物小精灵之庭树》', 'chongwuxiaojinglingzhitingshu.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (86, '《从仙侠世界归来》', 'congxianxiashijieguilai.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (87, '《我修的可能是假仙》', 'woxiudekenengshijiaxian.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (88, '《环城术士》', 'huanchengshushi.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (89, '《神级农场》', 'shenjinongchang.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (90, '《勒胡马》', 'lehuma.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (91, '《逆流纯真年代》', 'niliuchunzhenniandai.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (92, '《不灭龙帝》', 'bumielongdi.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (93, '《真武世界》', 'zhenwushijie.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (94, '《伏天氏》', 'futianshi.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (95, '《异世界的美食家》', 'yishijiedemeishijia.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (96, '《厉害了我的原始人》', 'lihailewodeyuanshiren.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (97, '《宋末之乱臣贼子》', 'songmozhiluanchengzeizi.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (98, '《燃钢之魂》', 'rangangzhihun.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (99, '《山沟皇帝》', 'shangouhuangdi.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (100, '《科技图书馆》', 'kejitushuguan.jpg', NULL, NULL, NULL);
INSERT INTO `novel` VALUES (101, '《娱乐之唯一传说》', 'yulezhiweiyichuanshuo.jpg', NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
