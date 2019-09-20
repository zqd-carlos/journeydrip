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

 Date: 20/09/2019 15:37:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for game
-- ----------------------------
DROP TABLE IF EXISTS `game`;
CREATE TABLE `game`  (
  `gameid` int(11) NOT NULL AUTO_INCREMENT COMMENT '游戏的id',
  `gamename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '游戏名',
  `imgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '游戏的封面图片',
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '该游戏的描述',
  `detailurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '具体的网站的地址，其中要包括游戏的下载地址',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '游戏的类型',
  PRIMARY KEY (`gameid`) USING BTREE,
  UNIQUE INDEX `gamename`(`gamename`) USING BTREE COMMENT '唯一游戏名'
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of game
-- ----------------------------
INSERT INTO `game` VALUES (1, '《黑暗之魂》', 'heianzhihun.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (2, '《剑侠情缘网络版三》', 'jianwangsan.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (3, '《求生之路2》', 'qiushengzhilu.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (4, '《僵尸部队三部曲》', 'jiangshibuduisanbuqu.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (5, '《地下城与勇士》', 'dixiachengyuyongshi.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (6, '《只狼：影逝二度》', 'zhilangyinshierdu.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (7, '《刺客信条：奥德赛》', 'cikexintiaoaodesai.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (8, '《歧路旅人》', 'qilulvren.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (9, '《怪物猎人：世界》', 'guaiwulierenshijie.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (10, '《仙剑奇侠传6》', 'xianjian6.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (11, '《300英雄》', '300tyingxiong.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (12, '《龙之谷》', 'longzhigu.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (13, '《天涯明月刀》', 'tianyamingyuedao.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (14, '《战争机器5》', 'zhanzhengjiqi.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (15, '《元素战争》', 'yuansuzhanzheng.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (16, '《使命召唤15》', 'shimingzhaohuan.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (17, '《荒野大镖客2》', 'huangyedabiaoke2.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (18, '《王国之心3》', 'wangguozhixin3.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (19, '《死或生6》', 'sihuosheng.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (20, '《博德之门3》', 'bodezhimen3.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (21, '《骑马与砍杀2》', 'qimayuzhansha.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (22, '《鬼泣5》', 'guiqi5.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (23, '《上古卷轴5：天际》', 'shanggujuanzhoutianji.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (24, '《尼尔：机械纪元》', 'nierjixiejiyuan.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (25, '《巫师3：狂猎》', 'wushi3.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (26, '《文明6》', 'wenming6.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (27, '《看门狗》', 'kanmengou.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (28, '《模拟人生4》', 'monirensheng.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (29, '《合金装备5：幻痛》', 'hejinzhuangbei5huantong.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (30, '《神界：原罪2》', 'shenjieyaunzui2.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (31, '《血源诅咒》', 'xueyuanzuzhou.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (32, '《火炬之光2》', 'huojuzhiguang.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (33, '《亿万僵尸》', 'yiwanxiangshi.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (34, '《最终幻想7》', 'zuizhonghuanxiang7.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (35, '《星之梦》', 'xingzhimeng.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (36, '《纪元1800》', 'jiyuan1800.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (37, '《绝地求生》', 'juediqiusheng.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (38, '《英雄联盟》', 'yingxionglianmeng.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (39, '《战地2》', 'zhandi2.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (40, '《地铁：逃离》', 'ditietaoli.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (41, '《侠盗猎车5》', 'gta5.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (42, '《火焰纹章：风花雪月》', 'huoyanwenzhang.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (43, '《控制》', 'kongzhi.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (44, '《月圆之夜》', 'yueyuanzhiye.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (45, '《血气方刚》', 'xueqifanggang.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (46, '《地狱守卫》', 'diyushouwei.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (47, '《生活危机7》', 'shenghuoweiji.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (48, '《底特律：变人》', 'ditelvbianren.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (49, '《堡垒之夜》', 'baoleizhiye.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (50, '《太吾绘卷》', 'taiwuhuijuan.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (51, '《剑灵》', 'jianling.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (52, '《梦幻西游》', 'menghuanxiyou.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (53, '《失落的方舟》', 'shiluodefangzhou.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (54, '《无畏》', 'wuwei.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (55, '《逆水寒》', 'nishuohan.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (56, '《CS：GO》', 'csgo.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (57, '《穿越火线》', 'chuanyuehuoxian.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (58, '《魔兽世界》', 'moshoushijie.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (59, '《黑色沙漠》', 'heiseshamo.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (60, '《幻想全明星》', 'huanxiangquanmingxing.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (61, '《热血征程》', 'rexuezhengcheng.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (62, '《流放之路》', 'liufangzhilu.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (63, '《少女前线》', 'shaonvqianxian.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (64, '《龙族幻想》', 'longzuhuanxiang.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (65, '《明日方舟》', 'mingrifangzhou.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (66, '《我的世界》', 'wodeshijie.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (67, '《崩坏3》', 'benghuan3.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (68, '《QQ飞车》', 'qqfeiche.jpg', '', NULL, NULL);
INSERT INTO `game` VALUES (69, '《三国杀》', 'sanguosha.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (70, '《万象物语》', 'wanxiangwuyu.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (71, '《命运冠位指定》', 'mingyunguanweizhiding.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (72, '《二之国：亡灵国度》', 'erzhiguiwanglingguodu.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (73, '《妖精剑士F》', 'yaojingjianshi.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (74, '《伊苏8：达娜的安魂曲》', 'yisu8.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (75, '《塞尔达传说：荒野之息》', 'saierdachuanshuohuangyezhixi.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (76, '《勇者斗恶龙11》', 'yongzhedouelong.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (77, '《闪之轨迹2》', 'shanzhiguiji2.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (78, '《东京迷城ex+》', 'dongjingmichengex.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (79, '《女神异闻录5》', 'nvshenyiwenlu5.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (80, '《异度之刃2》', 'yiduzhireng2.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (81, '《最终幻想15》', 'zuizhonghuanxiang.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (82, '《英雄传说：闪之轨迹》', 'yingxiongchuanshuoshanzhiguiji.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (83, '《薄暮传说》', 'bomuchuanshuo.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (84, '《热情传说》', 'reqingchuasnhuo.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (85, '《狂战传说》', 'kuangzhanchuanshuo.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (86, '《菲利斯工作室》', 'feilisigongzuoshi.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (87, '《东京新世录作战深渊》', 'dongjingxinshiluzuozhanshenyuan.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (88, '《双重起源》', 'shuangchongqiyuan.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (89, '《武魂2》', 'wuhun2.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (90, '《冒险岛2》', 'maoxiandao.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (91, '《DOTA2》', 'dota2.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (92, '《心动咖啡馆》', 'xindongkafeiguan.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (93, '《贪婪之秋》', 'tanlanzhiqiu.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (94, '《黑暗核心》', 'heianhexin.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (95, '《龙崖》', 'longya.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (96, '《神秘山谷》', 'shenmishangu.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (97, '《圣女战旗》', 'shengnvzhanqi.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (98, '《德鲁伊之石：梅希尔森铃的秘密》', 'deluyizhishimeixiersenlingdemimi.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (99, '《众神：解放》', 'zhongshenjiefang.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (100, '《阿尔法星球》', 'aerfaxingqiu.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (101, '《刃之异邦人》', 'rengzhiyibangren.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (102, '《血城》', 'xuecheng.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (103, '《传颂之物：两个白皇》', 'chuansongzhiwulianggebaihuang.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (104, '《刀剑神域：虚空断章》', 'daojianshenyuxukongduanzhang.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (105, '《陨落之光》', 'yunluozhiguang.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (106, '《风之旅人》', 'fengzhilvren.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (107, '《智慧之海ABZU》', 'zhihuizhihai.jpg', NULL, NULL, NULL);
INSERT INTO `game` VALUES (108, '《进击的巨人》', 'jinjidejuren.jpg', NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
