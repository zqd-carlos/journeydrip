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

 Date: 20/09/2019 15:37:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dongman
-- ----------------------------
DROP TABLE IF EXISTS `dongman`;
CREATE TABLE `dongman`  (
  `dmid` int(11) NOT NULL AUTO_INCREMENT COMMENT '动漫的标识id',
  `dmname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '动漫的名字',
  `imgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '动漫的图片的url地址，图片标准190*225',
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '动漫的描述信息',
  `viewurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '动漫的观看地址',
  `detailurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '动漫的细节地址，即点开的详情地址',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '动漫的类型',
  PRIMARY KEY (`dmid`) USING BTREE,
  UNIQUE INDEX `dmname`(`dmname`) USING BTREE COMMENT '给动漫名添加唯一索引'
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dongman
-- ----------------------------
INSERT INTO `dongman` VALUES (1, '《海贼王》', 'haizeiwang.jpg', '路飞成为海贼王的故事', '1', '1', '热血');
INSERT INTO `dongman` VALUES (2, '《火影忍者》', 'huoyingrenzhe.jpg', '鸣人成为火影的故事', NULL, NULL, '热血');
INSERT INTO `dongman` VALUES (3, '《死神》', 'sishen.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (4, '《妖精的尾巴》', 'yaojingdeweiba.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (5, '《银魂》', 'yinhun.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (6, '《月刊少女野崎君》', 'yuekanshaonvyeqijun.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (7, '《罪恶王冠》', 'zuiewangguan.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (8, '《我的青春恋爱物语果然有问题》', 'wodeqingchunnianaiwuyuguoranyouwenti.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (9, '《问题儿童都来自于异世界》', 'wentiertongdoulaiziyishijie.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (10, '《机巧少女不会受伤》', 'jiqiaoshaonvbuhuishoushang.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (11, '《死亡笔记》', 'siwangbiji.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (12, '《笨女孩》', 'bennvhai.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (13, '《新世纪福音战士》', 'xinshijifuyinzhanshi.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (14, '《白色相簿》', 'baisexiangbu.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (15, '《Clannad》', 'clannad.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (16, '《fate stay night》', 'fatestaynight.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (17, '《fate zero》', 'fatezero.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (18, '《盾之勇者成名录》', 'dunzhiyongzhechengminglu.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (19, '《死亡游行》', 'siwangyouxing.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (20, '《来自风平浪静的明天》', 'laizifengpinglangjingdemingtian.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (21, '《花开伊吕波》', 'huakaiyilvbo.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (22, '《death angel》', 'deathangel.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (23, '《魔法少女小圆》', 'mofashaonvxiaoyuan.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (24, '《命运石之门》', 'mingyunshizhimen.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (25, '《纯洁的玛利亚》', 'chunjiedemoliya.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (26, '《刀剑神域》', 'daojianshenyu.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (27, '《加速世界》', 'jiasushijie.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (28, '《约会大作战》', 'yuehuidazuizhan.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (29, '《熊巫女》', 'xiongwunv.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (30, '《为美好的世界献上祝福》', 'weimeihaodeshijiexianshangzhufu.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (31, '《青春纪行》', 'qingchunjixing.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (32, '《青春猪头少年不会遇见的兔女郎学姐》', 'qingchunzhutoushaonianbuhuiyujiandetunvlangxuejie.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (33, '《五等分的花嫁》', 'wudengfendehuajia.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (34, '《如果有妹妹就好了》', 'ruguoyoumeimeijiuhaole.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (35, '《风之圣痕》', 'fengzhishengheng.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (36, '《埃罗芒老师》', 'ailuomanglaoshi.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (37, '《我的妹妹不可能这么可爱》', 'wodemeimeibukenengzhemekeai.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (38, '《to love出包王女》', 'tolove.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (39, '《漆黑的子弹》', 'qiheidezidan.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (40, '《overload》', 'overload.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (41, '《化物语》', 'huawuyu.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (42, '《伤物语》', 'shangwuyu.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (43, '《伪物语》', 'weiwuyu.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (44, '《历物语》', 'liwuyu.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (45, '《银仙》', 'yinxian.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (46, '《虫师》', 'chongshi.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (47, '《精灵宝可梦》', 'qinglingbaokemeng.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (48, '《进击的巨人》', 'jinjidejuren.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (49, '《浪客剑心》', 'langkejianxin.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (50, '《黑之契约者》', 'heizhiqiyuezhe.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (51, '《贤者之孙》', 'xianzhezhisun.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (52, '《钢之炼金术师》', 'gangzhilianjinshushi.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (53, '《圣剑使的禁忌咏唱》', 'shengjianshidejinjiyongchang.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (54, '《快要坏掉的八音盒》', 'kuaiyaohuaidiaodebayinhe.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (55, '《轻音少女》', 'qingyinshaonv.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (56, '《龙之界点》', 'longzhijiedian.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (57, '《从零开始的异世界生活》', 'conglingkaishideyishijishenghuo.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (58, '《天降之物》', 'tianjiangzhiwu.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (59, '《中二病也要谈恋爱》', 'zhongerbingyeyaotanlianai.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (60, '《龙之谷之破晓奇兵》', 'longzhigu.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (61, '《幻想万华镜》', 'huanxiangwuhuajing.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (62, '《梦想夏乡》', 'mengxiangxiaxiang.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (63, '《another》', 'another.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (64, '《迷家》', 'mijia.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (65, '《可塑性记忆》', 'kesuxingjiyi.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (66, '《某科学的超电磁炮》', 'moukexuedechaodiancipao.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (67, '《魔法禁书目录》', 'mofajinshumulu.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (68, '《斩赤红之瞳》', 'zhanchihongzhitong.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (69, '《打工吧魔王大人》', 'dagongbamowangdaren.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (70, '《魔王与勇者》', 'mowangyuyongzhe.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (71, '《时钟机关之星》', 'shizhongjiguanzhixing.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (72, '《来自深渊》', 'laizishenyuan.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (73, '《JOJO的奇妙冒险》', 'jojo.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (74, '《全职高手》', 'quanzhigaoshou.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (75, '《全职法师》', 'quanzhifashi.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (76, '《黑色四叶草》', 'heisesiyecao.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (77, '《镇魂街》', 'zhenhunjie.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (78, '《刺客伍六七》', 'cikewuliuqi.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (79, '《多罗罗》', 'duoluoluo.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (80, '《野良神》', 'yeliangshen.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (81, '《干物妹!小埋》', 'ganwumei.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (82, '《男子高中生的日常》', 'nanzigaozhongshengderichang.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (83, '《在盛夏等待》', 'zaishengxiadengdai.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (84, '《love live！》', 'lovelive.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (85, '《约定的梦幻岛》', 'yuedingdemenghuandao.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (86, '《落第骑士的英雄谭》', 'luodiqishideyingxiongtan.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (87, '《境界上的地平线》', 'jingjieshangdedipingxian.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (88, '《境界的彼方》', 'jingjiedebifang.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (89, '《学战都市Asterisk》', 'xuezhandushi.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (90, '《我女友与青梅竹马的惨烈修罗场》', 'wonvyouyuqingmeizhumadecanliexiuluochang.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (91, '《欢迎来到实力至上主义的教室》', 'huanyinglaidaoshilizhishangzhuyidejiaoshi.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (92, '《珈百璃的堕落》', 'jiabailideduoluo.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (93, '《文豪野犬》', 'wenhuayequan.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (94, '《我们无法一起学习》', 'womenwufayiqixuexi.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (95, '《终结的炽天使》', 'zhongjiedechitianshi.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (96, '《碧蓝之海》', 'bilanzhihai.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (97, '《辉夜大小姐想让我告白》', 'huiyedaxiaojiexiangrangwogaobai.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (98, '《日常系的异能战斗》', 'richangxideyinengzhandou.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (99, '《小林家的龙女仆》', 'xiaolingjiadelongnvpu.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (100, '《紫罗兰的永恒花园》', 'ziluolandeyonghenghuayuan.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (101, '《少女终末旅行》', 'shaonvzhongmolvxing.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (102, '《无头骑士异闻录》', 'wutouqishiyiwenlu.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (103, '《水果篮子》', 'shuiguolanzi.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (104, '《破刃之剑》', 'porengzhijian.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `dongman` VALUES (105, '《刀使的巫女》', 'daoshidewunv.jpg', NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
