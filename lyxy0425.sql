/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : 127.0.0.1:3306
Source Database       : lyxy

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-04-25 18:20:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `alipay_config`
-- ----------------------------
DROP TABLE IF EXISTS `alipay_config`;
CREATE TABLE `alipay_config` (
  `id` int(1) NOT NULL,
  `email` varchar(255) DEFAULT NULL COMMENT '收款账号邮箱',
  `key` varchar(255) DEFAULT NULL COMMENT '加密key，开通支付宝账户后给予',
  `partner` varchar(255) DEFAULT NULL COMMENT '合作者ID，支付宝有该配置，开通易宝账户后给予',
  `seller_id` varchar(255) DEFAULT NULL COMMENT '收款支付宝账号，以2088开头由16位纯数字组成的字符串，一般情况下收款账号就是签约账号',
  `sign_type` varchar(255) DEFAULT NULL COMMENT '签名方式',
  `input_charset` varchar(255) DEFAULT NULL COMMENT '字符编码格式 目前支持utf-8',
  `service` varchar(255) DEFAULT NULL COMMENT '产品类型，无需修改',
  `payment_type` varchar(255) DEFAULT NULL COMMENT '支付类型 ，无需修改',
  `cacert` varchar(255) DEFAULT NULL COMMENT '本地证书路径',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付宝配置';

-- ----------------------------
-- Records of alipay_config
-- ----------------------------
INSERT INTO `alipay_config` VALUES ('1', 'wuchengyx@126.com', 'g59z9x8i7vdt5i0y7qkg5encrz0bu2af', '2088002972721064', '2088002972721064', 'strtoupper(\'MD5\')', 'strtolower(\'utf-8\')', 'create_direct_pay_by_user', '1', '/static/index/alipay/cacert.pem');

-- ----------------------------
-- Table structure for `bang`
-- ----------------------------
DROP TABLE IF EXISTS `bang`;
CREATE TABLE `bang` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bang
-- ----------------------------
INSERT INTO `bang` VALUES ('0000000001', '课程购买介绍', '&lt;p style=&quot;margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:11pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:Tahoma&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;1.1&lt;font face=&quot;宋体&quot;&gt;、课程是否可以试听&lt;/font&gt;&lt;font face=&quot;inherit&quot;&gt;?&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:11pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:Tahoma&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;可以试听&lt;/font&gt;,&lt;font face=&quot;宋体&quot;&gt;在课程章节目录中标记有&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;quot;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;试看&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;quot;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;的标签的课程为可以免费观看的课程视频。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:11pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:Tahoma&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;1.2&lt;font face=&quot;宋体&quot;&gt;、如何选择最适合自己的课程？&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:11pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:Tahoma&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;乐育学院的课程大致分为&lt;/font&gt;&amp;ldquo;&lt;font face=&quot;宋体&quot;&gt;初级&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;rdquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;、&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;ldquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;中级&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;rdquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;和&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;ldquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;高级&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;rdquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;三类。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;初级课程：一般适用于学科知识零基础或者基础薄弱的学员。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;中级课程：适用于掌握了一定的基础学科知识，但是想要进一步提升进阶的学员。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;高级课程：适用于计算机基础知识掌握扎实，对自身专业能力有更高要求的学员。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;点击每个课程详情页面中都详细介绍了这门课程的先修要求，若不具备先修要求，可以选择推荐的先修课程进行学习。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', '2019-03-07 10:16:33');
INSERT INTO `bang` VALUES ('0000000002', '优惠券介绍', '&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;2.1&lt;font face=&quot;宋体&quot;&gt;、什么是优惠券&lt;/font&gt;&lt;font face=&quot;inherit&quot;&gt;?&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;优惠券可以在购买课程时使用，抵扣一定金额。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;2.2&lt;font face=&quot;宋体&quot;&gt;、如何使用优惠券&lt;/font&gt;&lt;font face=&quot;inherit&quot;&gt;?&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;优惠券可根据优惠券类型（通用券、打折券、满减券）和满减金额进行对应的购买折扣。当进入确认订单页时，系统会自动匹配当前订单可以使用的优惠券，学员可选择取消或选择其它优惠券，当无可用优惠券时，页面会有相应说明。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;2.3&lt;font face=&quot;宋体&quot;&gt;、已使用的优惠券可以取回再次用吗&lt;/font&gt;&lt;font face=&quot;inherit&quot;&gt;?&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;在使用优惠券后的订单默认已使用优惠券，无论支付支付成功，优惠券都无法退回重复使用。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;注：所以在使用优惠券购买课程时，学员一定要确保下单时的准确性，保证能有效使用优惠券&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;2.4&lt;font face=&quot;宋体&quot;&gt;、我有优惠券，为什么购买的时候没显示&lt;/font&gt;&lt;font face=&quot;inherit&quot;&gt;?&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;①&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&amp;nbsp;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;由于满减券或打折券需订单达到一定金额，才能使用。若由于订单金额未达到使用优惠券的金额门槛，系统将不显示优惠券。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;②&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&amp;nbsp;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;课程优惠券是绑定了相应的课程。若优惠券是属于绑定相应课程下的，不属于当前购买的课程，则也不能使用。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', '2019-03-07 10:17:08');
INSERT INTO `bang` VALUES ('0000000003', '乐育学位', '&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;3&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;.1&lt;font face=&quot;宋体&quot;&gt;、什么是&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;乐育学位&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;课程&lt;/font&gt;?&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;乐育学院乐育学院学位课程是业内首创&lt;/font&gt;&amp;ldquo;&lt;font face=&quot;宋体&quot;&gt;在线一对一&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;VIP&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;辅导&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;rdquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;的全新教学模式的课程，通过为零基础的学员制定学习计划，提供系统性课程、一对一辅导、审阅代码、闯关式学习、答疑、推荐就业等服务，有效保障学员通过学习乐育学院学位的课程后具备独立完成项目与企业所需的技术水准。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;3&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;.2&lt;font face=&quot;宋体&quot;&gt;、乐育学院专业课程提供哪些服务？都能帮助我啥？&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;乐育学院在乐育学院学位课程中提供&lt;/font&gt;1&lt;font face=&quot;宋体&quot;&gt;对&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;1&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;资深导师辅导、闯关式学习、&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;大牛&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;讲师亲自授课、多个互联网企业实战开发项目、完成课程后发放乐育学院学位证书，可享受推荐就业服务。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;3&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;.3&lt;font face=&quot;宋体&quot;&gt;、学习中遇到问题怎么办&lt;/font&gt;&lt;font face=&quot;inherit&quot;&gt;?&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;在报名乐育学院学位课程之后会分配&lt;/font&gt;1V1&lt;font face=&quot;宋体&quot;&gt;导师进行跟进辅导，同时会获取到导师联系方式，遇到问题时可随时联系导师。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;3&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;.4&lt;font face=&quot;宋体&quot;&gt;、学完乐育学院专业课程之后会提供证书吗&lt;/font&gt;&lt;font face=&quot;inherit&quot;&gt;?&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;会，只要闯关完成乐育学院学位所有课程的学员就会颁发技能认证证书。获得该证书后与乐育学院的合作企业则会优先提供就业机会。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', '2019-03-07 10:17:29');
INSERT INTO `bang` VALUES ('0000000004', ' 导师介绍', '&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;4&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;.1&lt;font face=&quot;宋体&quot;&gt;、什么是导师&lt;/font&gt;&lt;font face=&quot;inherit&quot;&gt;?&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;导师是乐育学院创新式教学方式，对报名乐育学院学位课程的学生进行单独的一对一辅导、批改作业、定期考核。我们会对导师的资格进行严格的考核，他们都是拥有多年一线工作经验的大牛，同时我们也制定了对导师的一系列规范要求。确保能辅导好学生的学习。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;4&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;.2&lt;font face=&quot;宋体&quot;&gt;、导师职责是什么？&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;导师会陪伴并监督每位学员的学习，&lt;/font&gt; &lt;font face=&quot;宋体&quot;&gt;主要职责如下：&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;问题解答：学生在学习过程中遇到任何问题，都可以通过线上提问系统直接向自己的导师进行提问，导师都会在第一时间进行解答。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;作业批改：导师会在乐育学院学位学员提交作业后第一时间进行作业批改并点评，学员则需要完成每阶段的作业且在通过考核后才能进行下一阶段的学习。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;定期跟进：导师会定期跟进学员的学习状况，帮助学员制定学习计划，监督和辅导学员顺利完成学业。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;4&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;3&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;、导师有辅导期限么&lt;/font&gt;?&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;有。导师的辅导期为乐育学院学位课程的学习周期。在学习周期内导师会及时回复学员的问题，作业批改以及跟进学习进度。在正常学习周期完成后，导师则没有辅导义务，只有导师有时间，亦会为你解答。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;4&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;4&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;、可以要求换导师么&lt;/font&gt;?&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;可以。如果您在学习过程中遇到和导师之间发生沟通不畅或其他不能自行解决问题的情况下，乐育学院会帮助协调沟通。若协调沟通后学员依然坚持更换导师，乐育学院会按照学员要求更换新导师。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', '2019-03-07 10:17:56');
INSERT INTO `bang` VALUES ('0000000005', '学位作业介绍', '&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;5&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;.1&lt;font face=&quot;宋体&quot;&gt;、什么是作业&lt;/font&gt;&lt;font face=&quot;inherit&quot;&gt;?&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;为了让学员能更好的掌握并熟练运用所学到的知识，乐育学院针对乐育学院学位课程的每个模块中的每个章节布置了作业，&lt;/font&gt; &lt;font face=&quot;宋体&quot;&gt;学员需要完成相应的作业并提交予导师的批改。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;5&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;.2&lt;font face=&quot;宋体&quot;&gt;、在哪里获取作业？&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;对于报名乐育学院学位课程之后，用户可以在《学习中心》的模块列表中查看课堂作业&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;5&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;.3&lt;font face=&quot;宋体&quot;&gt;、作业如何提交&lt;/font&gt;&lt;font face=&quot;inherit&quot;&gt;?&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;在作业详情页中将作业打包成&lt;/font&gt;.zip&lt;font face=&quot;宋体&quot;&gt;的格式提交即可&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;5&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;.4&lt;font face=&quot;宋体&quot;&gt;、对于作业成绩有奖励或惩罚么&lt;/font&gt;&lt;font face=&quot;inherit&quot;&gt;?&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;乐育学院推出的特色乐育学院学位课程，每一位学生每报名课程都会获得一笔初始奖学金。在学员学习过程中，如果成绩达到奖学金标准，就会给予奖励，给予奖励的奖学金。用户可以进行提现到微信。如果作业未达到奖学金奖励标准。那么分配给该作业的奖学金将会被扣除。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;5&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;.5&lt;font face=&quot;宋体&quot;&gt;、交作业不及时会惩罚么&lt;/font&gt;&lt;font face=&quot;inherit&quot;&gt;?&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;会。若没有及时交作业，则会影响到奖学金最终的结算数量。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', '2019-03-07 10:18:31');
INSERT INTO `bang` VALUES ('0000000006', '版权提示', '&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;版权声明&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:22.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;1&lt;font face=&quot;宋体&quot;&gt;、本站所有课程内容及付费服务都归属于乐育学院学习平台，拥有独家版权和最终解释权。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;2&lt;font face=&quot;宋体&quot;&gt;、如发现任何有损乐育学院及广大用户合法权益的行为（包括但不仅限于未授权使用乐育学院&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;Logo&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;及设计内容；非法录制课程视频；非法上传课程到其他平台；非法在除官方平台外的平台进行交易等）乐育学院将永久冻结账户，并积极对不法分子进行法律和经济上的追究和诉讼，严惩不贷。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;3&lt;font face=&quot;宋体&quot;&gt;、希望广大用户积极配合，主动完善个人信息，遵守【用户付费协议】内容，共同维护乐育学院良好学习环境。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', '2019-03-07 10:18:57');
INSERT INTO `bang` VALUES ('0000000007', '专题课程', '&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;尊敬的乐育学院用户&lt;/font&gt;:&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;欢迎您使用乐育学院在线学习服务。为保证您的学习服务权益得到保障，在开始付费购买程序之前，请您认真阅读以下条款。在您点击支付并开始学习过程时，就意味着您完全同意并接受以下服务条款。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;1&lt;font face=&quot;宋体&quot;&gt;、本服务基本形式及要求&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;（&lt;/font&gt;1&lt;font face=&quot;宋体&quot;&gt;）本学习培训采用录播课程视频教学进行在线学习。乐育学院向您提供相关课程视频 &lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;+ &lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;作业 &lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;+ &lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;课件。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;（&lt;/font&gt;2&lt;font face=&quot;宋体&quot;&gt;）特别提醒 &lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;: &lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;学习是一个需要坚持的过程。为确保学习效果，每门课程都有有效期时间，您必须在有效期时间内自助学习完录播视频培训内容，若超过有效期，则无法观看视频继续学习，需进行续费进行继续学习。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;2&lt;font face=&quot;宋体&quot;&gt;、学习权限&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;（&lt;/font&gt;1&lt;font face=&quot;宋体&quot;&gt;）一旦您用认可支付方式购买了乐育学院专题课程服务，即视为您认可该项服务标明之价格；您购买成功后，即能即时观看视频进行学习。如果您是通过贷款形式支付费用，那么您需按照贷款时的贷款协议按时还款；您和贷款提供方之间的所有服务内容，与乐育学院无关。您应切实评估自己的还款能力，不得以无法向第三方还款为由解除本协议。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;（&lt;/font&gt;2&lt;font face=&quot;宋体&quot;&gt;）学习时间权限 &lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;: &lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;每门专题课程都有标注学习有效期，即自购买之日起录播课程可在有效期限内免费在线观看。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;3&lt;font face=&quot;宋体&quot;&gt;、学员的权利限制&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;对于您购买的收费视频课程，您只可以私人观看，不得与他人共享账号，不得用于商业、盈利等用途。乐育学院为您提供的课程内容（包括且不限于视频、教材、大纲、问答服务、学习环境、软件、代码、图片等）及学习资料仅供您本人在乐育学院平台学习使用，您同意不会采用收费或免费的方式全部或部分地在任何公开场合展示；同时承诺不采取以下任何一种行为：&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(a) &lt;font face=&quot;宋体&quot;&gt;用非法的方式或为了非法的目的使用已购买的课程及服务。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(b) &lt;font face=&quot;宋体&quot;&gt;将您的乐育学院账户有偿或无偿提供给任何第三人，并允许他通过您的账户观看或使用非他付费购买的收费课程及服务。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(c) &lt;font face=&quot;宋体&quot;&gt;将收费视频复制、销售、出租或授权给任何第三方，或主动对乐育学院用于保护其收费课程的任何安全措施技术进行攻克、反向操作、更改、破坏或其他篡改，或协助他人进行上述行为。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(d) &lt;font face=&quot;宋体&quot;&gt;通过非乐育学院认可的方式获得收费许可课程，或者删除收费课程上的任何所有权声明或标签。对于违反上述约定的，乐育学院有权单方终止本合同，不退还您已缴纳学费并保留就相应损失向您提出赔偿的权利。本条款长期有效，不因协议终止而终止。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;4&lt;font face=&quot;宋体&quot;&gt;、风险、责任及隐私&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;（&lt;/font&gt;1&lt;font face=&quot;宋体&quot;&gt;）隐私权 &lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;: &lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;乐育学院尊重您的隐私权，在任何情况下，我们都不会将您的个人和订单信息出售或泄露给任何第三方（国家司法机关调取等国家相关法律要求企业承担的义务除外）。我们强烈提醒：一定不要将您的个人密码告知他人或与他人共享注册帐户，由此导致的任何个人资料泄露，乐育学院不承担任何责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;（&lt;/font&gt;2&lt;font face=&quot;宋体&quot;&gt;）用户账户风险 &lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;: &lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;乐育学院有大量的在线业务，您的账户及密码是极其重要的服务依据，您应自行负责妥善且正确地保管、使用、维护其在乐育学院申请取得的账户及账户密码，并对其账户密码采取必要和有效的保密措施。非乐育学院原因致使您账户密码泄漏以及因您保管、使用、维护不当造成损失的，乐育学院无须承担与此有关的任何责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;（&lt;/font&gt;3&lt;font face=&quot;宋体&quot;&gt;）在线服务风险 &lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;: &lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;对于因服务器死机、网络故障、数据库故障、软件升级、服务器维修、调整、升级等问题，或其他不可抗拒的事由，包括但不限于政府行为、自然灾害等造成的服务中断和对您个人数据及资料造成的损失，乐育学院不承担由此对您造成的任何损失或退还任何已缴纳的收费服务费用；但乐育学院尽可能事先进行通告，尽快做好修复工作。您购买的在线培训课程使用期限中包含解决故障、服务器维修、调整、升级等所需用的合理时间，对上述情况所需用的时间乐育学院会做好告知工作，但不予赔偿，并保留解释权。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;（&lt;/font&gt;4&lt;font face=&quot;宋体&quot;&gt;）乐育学院对任何直接、间接、偶然、特殊及继起的损害不负责任，不予赔偿。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;（&lt;/font&gt;5&lt;font face=&quot;宋体&quot;&gt;）用户监督及争议解决：乐育学院希望通过不懈努力，为用户提供最佳服务，乐育学院在给用户提供服务的全过程中接受用户的监督。如果客户与乐育学院之间发生任何争议，可依据当时双方所认定的协议及相关法律进行解决。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;5&lt;font face=&quot;宋体&quot;&gt;、知识产权&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;乐育学院培训课程资料的所有权利、权益和知识产权永久属于乐育学院&lt;/font&gt;,&lt;font face=&quot;宋体&quot;&gt;学员同意不得在任何时候将该课程资料用作任何商业用途。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;6&lt;font face=&quot;宋体&quot;&gt;、变更及免责条款&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;（&lt;/font&gt;1&lt;font face=&quot;宋体&quot;&gt;）鉴于网络服务和&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;IT&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;技术的特殊性，乐育学院根据互联网的发展和中华人民共和国有关法律、法规的变化，以及&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;IT&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;技术的发展情况，对收费学习服务的观看服务周期、购买价格等课程内容及本协议部分条款保留随时变更的权利。内容和协议的变更会在不需单独通知每个学员；但已支付学员的服务约定以支付时的服务条款为准。如遇到被迫中断或终止部分或全部的网络服务，乐育学院应及时通知您并办理相应的退还相应款项业务，但无需承担除此之外的任何其他责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;（&lt;/font&gt;2&lt;font face=&quot;宋体&quot;&gt;）如发生不可抗力致使本合同无法履行的，本合同自动终止。双方互不承担责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;（&lt;/font&gt;3&lt;font face=&quot;宋体&quot;&gt;）本协议为线上协议，您在线阅读并点击&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;ldquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;同意并接受该协议&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;rdquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;按钮，点击后视为自愿接受本协议；接受本协议之后，即表示您已充分理解本协议的各项约定，并与乐育学院就本协议达成一致，会按照本协议的约定完成本培训，协议中的所有条款具有法律效力。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;（&lt;/font&gt;4&lt;font face=&quot;宋体&quot;&gt;）因本合同产生纠纷的，应协商解决；协商不成的，应向北京市人民法院提起诉讼解决。&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;nbsp;&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', '2019-03-07 10:30:13');
INSERT INTO `bang` VALUES ('0000000008', '乐育学位课程', '&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;尊敬的乐育学院用户&lt;/font&gt;:&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;欢迎您使用乐育学院在线学习服务。为保证您的学习服务权益得到保障，在开始付费购买程序之前，请您认真阅读以下条款。在您点击支付并开始学习过程时，就意味着您完全同意并接受以下服务条款。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;1&lt;font face=&quot;宋体&quot;&gt;、本服务基本形式及要求&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(1) &lt;font face=&quot;宋体&quot;&gt;本学习培训采用&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;①&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;录播课程&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;②&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;作业考核&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;③&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;视频阶段性考核方式进行在线学习服务。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(2) &lt;font face=&quot;宋体&quot;&gt;为保证学习效果，乐育学院向您提供符合企业用人需求或考试认证要求的内容培养体系及相关课程，承诺配备技术讲师、班主任、导师为您提供教学和学习服务&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;(&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;服务知识点仅限于为学员所报名课程的相关内容，超出课程范围以外的内容视讲师的繁忙程度而定，乐育学院不提供承诺&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;)&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(3) &lt;font face=&quot;宋体&quot;&gt;乐育学院承诺在您学习期间，按照学员相关管理规定对您进行严格管理，并根据规定对您的表现进行评定考核，您同意接受考核。对于遵守并通过相关培训项目制作及考核的毕业学员，乐育学院学位课程的学员将颁发乐育学院乐育学院学位证书，并进入乐育学院雇主人才库，同时针对有需要的同学进行就业推荐服务。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(4) &lt;font face=&quot;宋体&quot;&gt;特别提醒 &lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;: &lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;学习是一个需要坚持的过程。为确保学习效果，您必须在规定时间内自助学习完录播视频培训内容，并按时提交作业，进行阶段视频考核；为保证学习效果，乐育学院乐育学院专业采用闯关式教学，整个乐育学院专业学习分为多个学习阶段，上一阶段学习考核成绩未通过，无法观看下一阶段的录播课程。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;2&lt;font face=&quot;宋体&quot;&gt;、学习权限及退款&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(1) &lt;font face=&quot;宋体&quot;&gt;一旦您用认可支付方式购买了乐育学院乐育学院学位课程服务，即视为您认可该项服务标明之价格；您购买成功后，该项服务即时生效。如果您是通过贷款形式支付费用，那么您需按照贷款时的贷款协议按时还款；您和贷款提供方之间的所有服务内容，与乐育学院无关。您应切实评估自己的还款能力，不得以无法向第三方还款为由解除本协议。 &lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;(2) &lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;学习时间权限：除特别标注外，本学习服务的有效期为&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;2&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;年，即自购买之日起录播课程可在有效期限内免费在线观看，但其他服务&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;(&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;包括但不限于导师&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;1&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;对&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;1&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;答疑服务、作业审批、审阅代码等&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;)&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;仅限在指定的学习有效期内提供，逾期则不提供除观看录播课程权限的其他服务。 &lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;(3) &lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;乐育学院为您提供完备的试学和退款服务，具体规则如下：&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;nbsp;(a) &lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;付款后的&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;7&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;个自然日&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;(&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;含&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;)&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;内支持无理由退款&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;(&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;课程购买时全款&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;mdash;500&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;元人民币&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;)&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;。但在付款和退款交易过程产生的支付给第三方的手续费应由您自行承担&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;(&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;例如信用卡&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;POS&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;机刷卡的交易手续费为乙方实际支付费用的&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;3%)&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;。如学员此前为贷款，退费时需自行承担贷款利息费，贷款利息费为贷款本金的&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;10%&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;。退款后本合同自行终止。&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;nbsp;(b) &lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;以下情况不接受退款：超过上述&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;7&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;个自然日&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;(&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;含&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;)&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;内的退款约定时间不予退款；特价产品&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;(&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;包括且不限于&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;ldquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;双&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;11&amp;rdquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;、&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;ldquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;周年庆&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;rdquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;等特殊节假日活动的特价产品&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;)&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;不享受退款服务；任何形式的定金不予退还。&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;nbsp;(c) &lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;本协议所涉及的&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;ldquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;退费&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;rdquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;，以实际最终收到的学费为准，不包任何优惠活动所抵消的学习费用，如各种代金券、优惠券的费用。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;3&lt;font face=&quot;宋体&quot;&gt;、学员的权利限制&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(1) &lt;font face=&quot;宋体&quot;&gt;对于您购买的收费视频课程，您只可以私人观看，不得与他人共享账号，不得用于商业、盈利等用途。乐育学院为您提供的课程内容&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;(&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;包括且不限于视频、教材、大纲、问答服务、学习环境、软件、代码、图片等&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;)&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;及学习资料仅供您本人在乐育学院平台学习使用，您同意不会采用收费或免费的方式全部或部分地在任何公开场合展示；同时承诺不采取以下任何一种行为：&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(a) &lt;font face=&quot;宋体&quot;&gt;用非法的方式或为了非法的目的使用已购买的课程及服务。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(b) &lt;font face=&quot;宋体&quot;&gt;将您的乐育学院账户有偿或无偿提供给任何第三人，并允许他通过您的账户观看或使用非他付费购买的收费课程及服务。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(c) &lt;font face=&quot;宋体&quot;&gt;将收费视频复制、销售、出租或授权给任何第三方，或主动对乐育学院用于保护其收费课程的任何安全措施技术进行攻克、反向操作、更改、破坏或其他篡改，或协助他人进行上述行为。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(d) &lt;font face=&quot;宋体&quot;&gt;通过非乐育学院认可的方式获得收费许可课程，或者删除收费课程上的任何所有权声明或标签。对于违反上述约定的，乐育学院有权单方终止本合同，不退还您已缴纳学费并保留就相应损失向您提出赔偿的权利。本条款长期有效，不因协议终止而终止。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;4&lt;font face=&quot;宋体&quot;&gt;、风险、责任及隐私&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(1) &lt;font face=&quot;宋体&quot;&gt;隐私权 &lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;: &lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;乐育学院尊重您的隐私权，在任何情况下，我们都不会将您的个人和订单信息出售或泄露给任何第三方&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;(&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;国家司法机关调取等国家相关法律要求企业承担的义务除外&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;)&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;。我们强烈提醒：一定不要将您的个人密码告知他人或与他人共享注册帐户，由此导致的任何个人资料泄露，乐育学院不承担任何责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(2) &lt;font face=&quot;宋体&quot;&gt;用户账户风险 &lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;: &lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;乐育学院有大量的在线业务，您的账户及密码是极其重要的服务依据，您应自行负责妥善且正确地保管、使用、维护其在乐育学院申请取得的账户及账户密码，并对其账户密码采取必要和有效的保密措施。非乐育学院原因致使您账户密码泄漏以及因您保管、使用、维护不当造成损失的，乐育学院无须承担与此有关的任何责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(3) &lt;font face=&quot;宋体&quot;&gt;在线服务风险 &lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;: &lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;对于因服务器死机、网络故障、数据库故障、软件升级、服务器维修、调整、升级等问题，或其他不可抗拒的事由，包括但不限于政府行为、自然灾害等造成的服务中断和对您个人数据及资料造成的损失，乐育学院不承担由此对您造成的任何损失或退还任何已缴纳的收费服务费用；但乐育学院尽可能事先进行通告，尽快做好修复工作。您购买的在线培训课程使用期限中包含解决故障、服务器维修、调整、升级等所需用的合理时间，对上述情况所需用的时间乐育学院会做好告知工作，但不予赔偿，并保留解释权。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(4) &lt;font face=&quot;宋体&quot;&gt;乐育学院对任何直接、间接、偶然、特殊及继起的损害不负责任，不予赔偿。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(5) &lt;font face=&quot;宋体&quot;&gt;用户监督及争议解决：乐育学院希望通过不懈努力，为用户提供最佳服务，乐育学院在给用户提供服务的全过程中接受用户的监督。如果客户与乐育学院之间发生任何争议，可依据当时双方所认定的协议及相关法律进行解决。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;5&lt;font face=&quot;宋体&quot;&gt;、知识产权&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;乐育学院培训课程资料的所有权利、权益和知识产权永久属于乐育学院&lt;/font&gt;,&lt;font face=&quot;宋体&quot;&gt;学员同意不得在任何时候将该课程资料用作任何商业用途。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;6&lt;font face=&quot;宋体&quot;&gt;、变更及免责条款&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p style=&quot;margin-bottom:10pt&quot;&gt;&lt;span style=&quot;font-size:11pt&quot;&gt;&lt;span style=&quot;font-family:Tahoma&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(1) &lt;font face=&quot;微软雅黑&quot;&gt;鉴于网络服务和&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;IT&lt;/font&gt;&lt;font face=&quot;微软雅黑&quot;&gt;技术的特殊性，乐育学院根据互联网的发展和中华人民共和国有关法律、法规的变化，以及&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;IT&lt;/font&gt;&lt;font face=&quot;微软雅黑&quot;&gt;技术的发展情况，对收费学习服务的观看服务周期、购买价格等课程内容及本协议部分条款保留随时变更的权利。内容和协议的变更会在不需单独通知每个学员；但已支付学员的服务约定以支付时的服务条款为准。如遇到被迫中断或终止部分或全部的网络服务，乐育学院应及时通知您并办理相应的退还相应款项业务，但无需承担除此之外的任何其他责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(2) &lt;font face=&quot;微软雅黑&quot;&gt;如发生不可抗力致使本合同无法履行的，本合同自动终止。双方互不承担责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(3) &lt;font face=&quot;微软雅黑&quot;&gt;本协议为线上协议，您在线阅读并点击&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;ldquo;&lt;/font&gt;&lt;font face=&quot;微软雅黑&quot;&gt;同意并接受该协议&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;rdquo;&lt;/font&gt;&lt;font face=&quot;微软雅黑&quot;&gt;按钮，点击后视为自愿接受本协议；接受本协议之后，即表示您已充分理解本协议的各项约定，并与乐育学院就本协议达成一致，会按照本协议的约定完成本培训，协议中的所有条款具有法律效力。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(4) &lt;font face=&quot;微软雅黑&quot;&gt;因本合同产生纠纷的，应协商解决；协商不成的，应向北京市人民法院提起诉讼解决。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', '2019-03-07 10:30:26');
INSERT INTO `bang` VALUES ('0000000009', '乐育学院服务使用协议', '&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;第一条【重要提示】&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;乐育学院是主要依靠网络技术，通过乐育学院平台向您提供在线学习与移动学习服务。请您在注册和使用乐育学院学习平台前务必审慎阅读、充分理解各条款内容，特别是免除或者限制责任的条款、法律适用和争议解决条款。如您对协议有任何疑问，请立即停止注册或使用乐育学院官网或者乐育学院出品的其他产品。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;第二条【协议的变更】&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;1&lt;font face=&quot;宋体&quot;&gt;．北京乐育学院教育科技有限公司有权利对本协议进行修改，协议修改后，乐育学院将在相关页面公布修改的内容，修改后的协议一经公布即有效的代替原协议。如果您不同意本协议的修改，请立即停止访问或使用乐育学院提供的产品或取消已经获得的服务；如果您选择在本协议修改后继续访问或使用乐育学院，则视为完全接受并愿意遵守修改或者变更后的本协议。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;2&lt;font face=&quot;宋体&quot;&gt;．无论您停止使用或继续使用乐育学院，您都承诺不因本协议修改或变更给您造成的损失或不便而向北京乐育学院教育科技有限公司及关联方乐育学院要求赔偿或补偿。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;3&lt;font face=&quot;宋体&quot;&gt;．您与乐育学院公司签署的本协议所列明的条款，并不能完全涵盖您与乐育学院公司所有的权利和义务。因此，乐育学院公司已公布或将来可能公布的其他声明、规则等均视为本协议之补充协议，为本协议不可分割的组成部分，与本协议具有同等法律效力。如果您不同意前述声明、规则等，请立即停止访问或使用乐育学院提供的产品或取消已经获得的服务；如果您选择在前述声明或规则等公布后继续访问或使用乐育学院，则视为完全接受并愿意遵守公布后的声明、规则等内容。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;第三条【服务的内容与方式】&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;1&lt;font face=&quot;宋体&quot;&gt;．乐育学院主要是一家网络服务提供者，可针对不同用户为其提供内容服务，包括但不限于课程视频、学习内容、源代码、资料及相应服务；由于互联网的高速发展，乐育学院公司将在未来向用户提供更多的服务，除非另有明确规定外，未来提供的新服务也适用于本协议。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;2&lt;font face=&quot;宋体&quot;&gt;．除免费服务外，乐育学院可能提供部分收费服务。您可以通过付费方式购买收费服务，具体方式为：通过在线支付或其他乐育学院提供的付费途径支付一定数额的人民币，从而获得收费服务使用权限。对于收费服务，乐育学院会在您使用之前给予明确的提示，只有根据提示确认其同意按照前述支付方式支付费用并完成了支付行为，才能使用该等收费服务。支付行为的完成以银行或第三方支付平台生成&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;ldquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;支付已完成&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;rdquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;的确认通知为准。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;3&lt;font face=&quot;宋体&quot;&gt;．您应了解乐育学院作为平台，不保证其提供的服务一定满足用户的全部需求。乐育学院保留随时修改、中断或终止服务且无需通知用户的权利。乐育学院更改、更新或提高其服务无需对用户或任意第三方承担任何责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;第四条【注册账号与使用】&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;1&lt;font face=&quot;宋体&quot;&gt;．您确认，在您开始注册乐育学院账户前，您应当具备中华人民共和国法律规定的与您行为相适应的民事行为能力。若您不具备前述与您行为相适应的民事行为能力，则您及您的监护人应依照法律规定承担因此而导致的一切后果。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;2&lt;font face=&quot;宋体&quot;&gt;．您有权选择是否成为乐育学院的注册用户。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;1&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）您选择注册账号成为乐育学院的用户时，应按照乐育学院的提示及要求填写或提供资料、信息，并确保资料、信息的真实性、正确性及完整性。如果您的资料、信息发生变化，应及时更改。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;2&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）当您一旦注册成功，即成为乐育学院的注册用户。成为乐育学院的注册用户后，您可依照乐育学院的要求修改您的账号密码，但不可修改账号。用户名和昵称的命名及使用应遵守相关法律法规并符合网络道德。用户名和昵称中不能含有任何侮辱、诽谤、淫秽或暴力等侵害他人合法权益或违反公序良俗的词语。如您违反前述规定，乐育学院有权随时限制或拒绝您使用该账号，甚至注销该账号。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;3&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）用户注册成功时，您将创建一个账号和密码。您应采取合理措施维护账号和密码的安全，您应了解，在账号和密码匹配时，乐育学院无法对非法或未经您授权使用您帐号及密码的行为作出甄别，因此，乐育学院对任何使用您账号和密码登录系统后所发生的所有活动和事不承担任何责任。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;4&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）乐育学院的注册账号只为注册用户本人所专有并仅限由其本人自己使用。&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;3&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;．用户的账号或密码遗失，可以通过注册信息进行重置密码，以手机号码注册的用户可以凭借手机号码找回原密码。用户若发现账号遭到未授权的使用或发生其他任何其他安全问题时，应立即有效告知乐育学院。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;第五条【用户的权利与义务】&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;1&lt;font face=&quot;宋体&quot;&gt;．用户有权在注册后获得其个人的乐育学院账号。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;2&lt;font face=&quot;宋体&quot;&gt;．用户有权在注册并登录后，根据乐育学院的规定，参与乐育学院的线上或线下活动并取得乐育学院给予的优惠或者奖励等。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;3&lt;font face=&quot;宋体&quot;&gt;．用户承诺并保证遵守《中华人民共和国著作权法》、《中华人民共和国商标法》、《中华人民共和国反不正当竞争法》、《中华人民共和国侵权责任法》、《中华人民共和国广告法》、《中华人民共和国计算机信息系统安全保护条例》、《计算机软件保护条例》及《信息网络传播权保护条例》等有关法律、法规、规章的规定。在任何情况下，乐育学院合理的认为用户有可能违反或已经违反上述法律、法规、规章的规定，有权不经事先通知终止向该用户提供服务。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;4&lt;font face=&quot;宋体&quot;&gt;．用户应当善意使用乐育学院且保证：（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;1&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）不会伪造标题或以其他方式操控识别资料，使人误认为该内容为乐育学院所传送的。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;2&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）不会将有关干扰、破坏或限制任何计算机软件、硬件或通讯设备功能的软件病毒或其他计算机代码、档案和程序之资料，加以上传、张贴、发送电子邮件或以其他方式传送。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;3&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）不会以技术方式攻击或破坏或改变乐育学院的部分或全部、或干扰其运行；以非法方式获取或使用乐育学院的任何软件、代码或其他技术或商业信息；不会对乐育学院运行的任何程序进行反向工程、反向编译、反向汇编或改写。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;4&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）不会未经许可使用乐育学院的网站名称、公司名称、商标、商业标识、网页版式或内容、或其他由乐育学院享有知识产权或权利的信息或资料。&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;5&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;．注册用户仅对其在乐育学院上享有的服务及内容有使用权，并不对该内容拥有相关知识产权。未经乐育学院或其他有权第三方的许可，用户不得对包括视频、学习软件、学习资料、音频内容等在内的任何内容进行翻录、复制、发行、破解、信息网络传播或其他违反知识产权相关法律、法规的行为，否则所导致的一切民事、行政或刑事责任，由用户自行承担。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;6&lt;font face=&quot;宋体&quot;&gt;．未经乐育学院书面许可、另行签署协议或另行指定可供用户使用的特定商业服务外，用户不得通过乐育学院发布有关任意第三方的广告宣传内容。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;7&lt;font face=&quot;宋体&quot;&gt;．用户就其所上传的内容承担全部法律责任。因用户违反法律规定或本协议规定造成违约或侵犯第三方合法权益的，由用户自行解决。如果给乐育学院造成损失，乐育学院有权向用户追偿其因此所遭受的全部损失，包括其直接损失、间接损失、预期利益损失及因维权而产生的包括但不限于律师费、诉讼费、鉴定费、取证费、差旅费、误工费等损失。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;第六条【用户个人信息保护】&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;用户注册并获得乐育学院提供的服务时，乐育学院可能需要搜集能识别用户身份的个人信息以便可以在必要时联系用户，或为用户提供更好的使用体验。&lt;/font&gt;&amp;ldquo;&lt;font face=&quot;宋体&quot;&gt;个人信息&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;rdquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;包括但不限于用户的姓名、性别、年龄、出生日期、联系电话、身份证号、地址、受教育情况、公司情况、所属行业、兴趣爱好、手机软硬件信息、手机识别码等。乐育学院承诺，未经用户同意，不会以非法方式披露应予保密的用户个人信息。但是下列情形除外：依照法律或司法、行政机关的强制性命令对第三方披露用户个人信息且无需事先向用户发出通知。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;1&lt;font face=&quot;宋体&quot;&gt;．用户在下列情况下授权乐育学院利用用户的个人信息：&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;（&lt;/font&gt;1&lt;font face=&quot;宋体&quot;&gt;）在紧急情况下，为维护用户及公众的权益。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;2&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）为维护乐育学院的著作权、商标权、专利权及其他任何合法权利或权益。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;3&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）在进行促销或抽奖时，乐育学院可能会与赞助商共享用户的个人信息，在这些情况下乐育学院会在发送用户信息之前进行提示，并且用户可以通过明确表示不参与活动而终止传送。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;4&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）为获取第三方数据而将用户信息与第三方数据匹配。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;5&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）将用户数据用于统计，以便向未来的合作伙伴、广告商及其他第三方以及为了其他合法目的而描述乐育学院的服务。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;第七条【知识产权】&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;1&lt;font face=&quot;宋体&quot;&gt;．北京乐育学院教育科技有限公司对网站、&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;app/M&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;页服务及本网站、&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;app&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;所使用的软件所包含的受知识产权法或其他法律保护的资料享有相应的权利，本网站、&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;app/M&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;页的整体内容版权（包括但不仅限于设计图样以及其他图样、产品及服务名称）归北京乐育学院教育科技有限公司所有，任何人不得使用、复制或用作其他用途。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;2&lt;font face=&quot;宋体&quot;&gt;．经由本网站传送的文字、图片、音频、视频及其他内容，受到著作权法、商标法、专利法或其他法律的保护；除该文字、图片、音频、视频及其他内容的上传用户所享有的著作权，未经北京乐育学院教育科技有限公司书面授权许可，不得自行或许可第三方不得进行修改、出租、售卖或衍生其他作品。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;3&lt;font face=&quot;宋体&quot;&gt;．乐育学院对其专有内容、原创内容和其他通过授权取得的独占或者独家内容享有知识产权。未经乐育学院书面许可，任何单位和个人不得私自转载、传播和提供收听服务或者有其他侵犯乐育学院知识产权的行为。否则，将承担法律责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;4&lt;font face=&quot;宋体&quot;&gt;．除非乐育学院收到相反通知，乐育学院将用户视为其在乐育学院上传或发布的内容的版权所有人。用户点击同意本协议，即表明该用户将在乐育学院上发表的全部内容（包括但不仅限于留言、评论和笔记），授予乐育学院全球范围的、免费的、不可撤销的、非独家使用许可，乐育学院有权将该内容用于乐育学院各种形态的产品和服务上，包括但不限于乐育学院已经发表的应用或其他互联网产品。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;5&lt;font face=&quot;宋体&quot;&gt;．用户在乐育学院上传或发表的内容，应保证其为著作权人或已取得合法授权，并且该内容不会侵犯任何第三方的合法权益。如果第三方提出关于著作权的异议，乐育学院有权根据实际情况删除相关的内容，且有权追究用户的法律责任。给乐育学院或任何第三方造成损失的，用户应负责全额赔偿。同时用户许可北京乐育学院教育科技有限公司有权利就任何主体侵权而单独提起诉讼，并获得赔偿。本协议已经构成《著作权法》（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;2010&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;年修订版）第二十五条所规定的书面协议，其效力及于用户在乐育学院发布的任何受著作权法保护的内容，无论该内容形成于本协议签订前还是本协议签订后。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;第八条【乐育学院的商业活动】&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;用户理解并接受，乐育学院为维护其运营，可以进行下述商业活动：&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;1&lt;font face=&quot;宋体&quot;&gt;．通过电子邮件、客户端、网页或其他合法方式向用户发送推广信息或其他相关商业信息。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;2&lt;font face=&quot;宋体&quot;&gt;．通过增值服务系统或其他方式向用户发送相关服务信息或其他信息，其他信息包括但不限于通知信息、宣传信息、广告信息等。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;第九条【免责说明】&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;1&lt;font face=&quot;宋体&quot;&gt;．乐育学院作为网络服务提供者，不担保网站平台上的信息及服务能充分满足用户的需求。因法律、政策、技术、经济、管理的原因，除非您和乐育学院另有约定，乐育学院不会因以下情形出现而对您承担责任：&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;（&lt;/font&gt;1&lt;font face=&quot;宋体&quot;&gt;）乐育学院无法使用或中断使用或无法完全适合用户的使用要求。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;2&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）乐育学院受到干扰，无法及时、安全、可靠运行，或出现任何错误。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;3&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）经由乐育学院取得的任何产品、服务（含收费服务）或其他材料不符合您的期望。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;4&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）用户资料遭到未经授权的使用或修改。&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;2&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;．乐育学院不对您在本协议项下服务中相关数据的删除或储存失败负责。乐育学院可以根据实际情况自行决定用户在本服务中数据的最长储存期限，并在服务器上为其分配数据最大存储空间等。如您停止使用乐育学院（账户沉睡&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;3&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;个月及以上或用户自行注销个人账户），或乐育学院所提供的服务终止或中止，乐育学院可以从服务器上永久地删除用户的数据。乐育学院没有义务向用户返还任何数据。用户在接受乐育学院服务的过程中，可能遇到错误、侮辱、诽谤、不作为、淫秽、色情或亵渎事件，乐育学院不承担法律责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;3&lt;font face=&quot;宋体&quot;&gt;．当用户所享有的服务中显示其他第三方网站或内容时，由于乐育学院无法控制及审核该网站或内容，因此并不对该网站或内容真实性、有效性、合法性等效力承担责任。对于用户任何因使用或信赖该网站或内容所导致的任何直接或间接损失，乐育学院均不承担任何责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;4&lt;font face=&quot;宋体&quot;&gt;．由于用户将个人注册账号信息告知他人或与他人共享注册帐号的，由此导致的任何风险或损失，乐育学院不对此负任何责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;5&lt;font face=&quot;宋体&quot;&gt;．任何由于黑客攻击、计算机病毒侵入或发作、政府管制、硬件故障、不可抗力等非乐育学院故意或严重过失而造成的用户个人资料泄露、丢失、被盗用、被篡改或服务暂定或终止的，对注册用户所造成的风险或损失，乐育学院均免责。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;6&lt;font face=&quot;宋体&quot;&gt;．若因线路及非乐育学院控制范围外的或其它不可抗力而导致暂停服务暂定或终止，所造成的一切风险与损失，乐育学院不负任何责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;7&lt;font face=&quot;宋体&quot;&gt;．乐育学院有权根据用户的实际需求进行服务调整的权利，并有权根据实际情况调整本网站内容的售价，由此造成的一切不便与损失，乐育学院均免责。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;第十条【第三方链接】&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;为方便您使用，乐育学院可能会提供第三方国际互联网网站或资源链接，除非另有声明，乐育学院无法对第三方网站服务进行控制，因此由于下载、传播、使用或依赖上述网站或资源产生的损失或损害，用户自行承担全部责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;第十一条【服务终止】&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;1&lt;font face=&quot;宋体&quot;&gt;．本协议或本协议项下乐育学院所提供的服务（含收费服务）可在下述情形下部分或全部中止或终止：&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;（&lt;/font&gt;1&lt;font face=&quot;宋体&quot;&gt;）因法律规定，或乐育学院服从行政命令或司法判令的要求。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;2&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）用户违反本协议。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;3&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）乐育学院认为应予终止的其他情形。&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;2&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;．在一般情形下，乐育学院会提前按照用户提供的联系方式以电子邮件或短信或其他电子方式通知用户，服务将中止或终止。用户应了解并同意，在紧急情况或特殊下，乐育学院可不经通知即中止或终止服务。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;3&lt;font face=&quot;宋体&quot;&gt;．在本协议或本协议项下乐育学院提供的服务（含收费服务）中止或终止时，乐育学院有权：&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;（&lt;/font&gt;1&lt;font face=&quot;宋体&quot;&gt;）拒绝用户登录乐育学院。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;2&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）删除用户信息。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;3&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）删除用户购买的内容。&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;4&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;．用户同意，不因本协议或本协议项下乐育学院所提供的服务中止或终止，而要求北京乐育学院教育科技有限公司（及关联方）或乐育学院向您作出赔偿或补偿或承担任何其他责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;第十二条&lt;/font&gt; &lt;font face=&quot;宋体&quot;&gt;【侵权投诉】&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;1&lt;font face=&quot;宋体&quot;&gt;．根据《中华人民共和国侵权责任法》的规定，任何第三方认为，用户利用乐育学院侵害其民事权益或实施侵权行为的，被侵权人有权书面通知乐育学院采取删除、屏蔽、断开链接等必要措施。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;2&lt;font face=&quot;宋体&quot;&gt;．侵权投诉必须包含下述信息：被侵权人的有效权利证明材料，或被侵权作品的原始链接及其他证明材料；侵权信息或作品在乐育学院上的具体名称及链接；侵权投诉人的联络方式，以便乐育学院及时与您取得联系，包括电子邮件地址、电话号码或手机号码等；投诉内容须纳入以下声明：&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;ldquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;本人本着诚信原则，有证据认为该对象侵害本人的合法权益。本人承诺全部投诉信息真实、准确，自愿承担一切后果。&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;rdquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;；本人亲笔签字并注明日期，如代理他人投诉的，必须出具授权人签字的授权书。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;第十三条【法律责任】&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;1&lt;font face=&quot;宋体&quot;&gt;．用户就所上传的内容承担全部法律责任；无论前述责任是因侵犯第三方权利所引起的、或因用户违反与第三方或本协议引起的、或因用户违反法律引起的；前述责任包括对乐育学院或第三方所承担的民事责任、或行政机关要求承担的行政责任或刑事责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;2&lt;font face=&quot;宋体&quot;&gt;．如因用户违反法律规定或本协议规定给乐育学院造成损失，用户应当充分赔偿乐育学院所遭受的损失、包括其直接损失、间接损失、预期利益损失等一切损失。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;3&lt;font face=&quot;宋体&quot;&gt;．用户承诺，如因第三方向用户主张权利而导致用户承担责任，或用户承担行政责任或刑事责任的，用户不以此为理由追究乐育学院的责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;4&lt;font face=&quot;宋体&quot;&gt;．如用户应向乐育学院承担责任，前述责任不因本协议或本协议项下的服务被终止而免除。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;第十四条【法律适用、管辖和其他】&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;1&lt;font face=&quot;宋体&quot;&gt;．本协议的生效、履行、解释及争议的解决均适用中华人民共和国法律。用户因使用乐育学院而产生或与之相关的一切争议、权利主张或其他事项，均适用中华人民共和国法律。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;2&lt;font face=&quot;宋体&quot;&gt;．用户与乐育学院发生的一切争议，应友好协商，如协商不成的，任何乙方均可向乐育学院所在地人民法院提起诉讼，乐育学院所在地即北京市昌平区。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;3&lt;font face=&quot;宋体&quot;&gt;．乐育学院可能不时发布针对用户的相关协议，并可能将该相关协议作为对本协议的补充或修改而将其内容作为本协议的一部分。请用户及时关注并阅读相关协议。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;4&lt;font face=&quot;宋体&quot;&gt;．本协议任意一条被视为废止、无效或不可执行，该条款应视为可分的且不影响本协议其他条款的法律效力。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;5&lt;font face=&quot;宋体&quot;&gt;．上述条款的解释权在法律允许的范围内归乐育学院所有。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;【审慎提醒】&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;如您点击&lt;/font&gt;&amp;ldquo;&lt;font face=&quot;宋体&quot;&gt;同意&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;rdquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;，则本协议将立即生效，并构成用户和北京乐育学院教育科技有限公司及其经营的相关网站、&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;App&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;之间有约束力的法律文件。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;请您再次确认您已全部阅读并充分理解上述协议。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-bottom:10pt&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n', '2019-03-07 10:23:33');

-- ----------------------------
-- Table structure for `camp_chapter`
-- ----------------------------
DROP TABLE IF EXISTS `camp_chapter`;
CREATE TABLE `camp_chapter` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `camp_id` int(11) DEFAULT NULL COMMENT '课程id',
  `status` tinyint(1) DEFAULT '1' COMMENT '0禁用 1启用',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0正常 1删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='七天课程章节表';

-- ----------------------------
-- Records of camp_chapter
-- ----------------------------
INSERT INTO `camp_chapter` VALUES ('1', '前端实训课第1章', '1', '1', '0');

-- ----------------------------
-- Table structure for `camp_content`
-- ----------------------------
DROP TABLE IF EXISTS `camp_content`;
CREATE TABLE `camp_content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '内容标题',
  `chapter_id` int(11) DEFAULT NULL COMMENT '所属课程',
  `video_url` varchar(255) DEFAULT NULL COMMENT '视频保存地址',
  `status` tinyint(1) DEFAULT '1' COMMENT '0禁用 1启用',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0正常 1删除',
  `is_free` tinyint(1) DEFAULT '0' COMMENT '是否免费0否 1是',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='七天课程-内容表(章节内容)';

-- ----------------------------
-- Records of camp_content
-- ----------------------------
INSERT INTO `camp_content` VALUES ('1', '本次课程介绍', '1', '/static/upload/6ef8a7b8160cac45/3a709d28cb4d86f4.mp4', '1', '0', '1');
INSERT INTO `camp_content` VALUES ('2', '前端是每个企业都需要的语言？', '1', '', '1', '0', '1');
INSERT INTO `camp_content` VALUES ('3', '前端能干什么？', '1', '', '1', '0', '1');
INSERT INTO `camp_content` VALUES ('4', '前端和其他语言相比有什么特点？', '1', '/static/upload/6ef8a7b8160cac45/3a709d28cb4d86f4.mp4', '1', '0', '0');
INSERT INTO `camp_content` VALUES ('5', '前端和其他语言相比有什么特点？', '1', '', '1', '0', '0');
INSERT INTO `camp_content` VALUES ('6', '前端发展的薪资有多高？', '1', '', '1', '0', '0');

-- ----------------------------
-- Table structure for `chapter_content`
-- ----------------------------
DROP TABLE IF EXISTS `chapter_content`;
CREATE TABLE `chapter_content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '内容标题',
  `chapter_id` int(11) DEFAULT NULL COMMENT '所属课程',
  `video_url` varchar(255) DEFAULT NULL COMMENT '视频保存地址',
  `status` tinyint(1) DEFAULT '1' COMMENT '0禁用 1启用',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0正常 1删除',
  `is_free` tinyint(1) DEFAULT '0' COMMENT '是否免费试看0否 1是',
  `class_time` int(11) DEFAULT NULL COMMENT '课时',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='免费课程-内容表(章节内容)';

-- ----------------------------
-- Records of chapter_content
-- ----------------------------
INSERT INTO `chapter_content` VALUES ('1', 'PHP学习第1课', '1', '/static/upload/6ef8a7b8160cac45/3a709d28cb4d86f4.mp4', '1', '0', '1', '8');
INSERT INTO `chapter_content` VALUES ('2', 'PHP学习第2课', '1', '/static/upload/60fc24bbbfea0dd2/eb0e56ae47d914af.MP4', '1', '0', '1', '8');
INSERT INTO `chapter_content` VALUES ('3', 'PHP学习第3课', '2', '', '1', '0', '0', '15');
INSERT INTO `chapter_content` VALUES ('4', 'Python学习第1课', '3', '/static/upload/6ef8a7b8160cac45/3a709d28cb4d86f4.mp4', '1', '0', '1', '12');
INSERT INTO `chapter_content` VALUES ('5', '3344', '5', '/static/upload/6ef8a7b8160cac45/3a709d28cb4d86f4.mp4', '1', '0', '0', '5');
INSERT INTO `chapter_content` VALUES ('6', 'web开发前景', '6', '/static/upload/6ef8a7b8160cac45/3a709d28cb4d86f4.mp4', '1', '0', '0', '6');
INSERT INTO `chapter_content` VALUES ('7', 'jiaba ', '6', '/static/upload/61023c78fe2ffe30/58cf27c21aec4262.avi', '1', '0', '0', null);
INSERT INTO `chapter_content` VALUES ('8', 'js第一天课程', '7', '', '1', '0', '0', null);
INSERT INTO `chapter_content` VALUES ('9', 'node.JS', '8', '/static/upload/6ef8a7b8160cac45/3a709d28cb4d86f4.mp4', '1', '0', '0', null);
INSERT INTO `chapter_content` VALUES ('10', 'ffdfdf', '9', '/static/upload/6ef8a7b8160cac45/3a709d28cb4d86f4.mp4', '1', '0', '0', null);
INSERT INTO `chapter_content` VALUES ('11', '撒旦', '10', '/static/upload/6ef8a7b8160cac45/3a709d28cb4d86f4.mp4', '1', '0', '0', null);
INSERT INTO `chapter_content` VALUES ('12', '的撒旦的', '11', '/static/upload/6ef8a7b8160cac45/3a709d28cb4d86f4.mp4', '1', '0', '0', null);
INSERT INTO `chapter_content` VALUES ('13', 'dsadsad', '12', '/static/upload/6ef8a7b8160cac45/3a709d28cb4d86f4.mp4', '1', '0', '0', null);
INSERT INTO `chapter_content` VALUES ('14', 'huhuhu', '13', '/static/upload/6ef8a7b8160cac45/3a709d28cb4d86f4.mp4', '1', '0', '0', null);
INSERT INTO `chapter_content` VALUES ('15', 'z', '14', '/static/upload/6ef8a7b8160cac45/3a709d28cb4d86f4.mp4', '1', '0', '1', null);
INSERT INTO `chapter_content` VALUES ('16', 'wqe', '16', '/static/upload/6ef8a7b8160cac45/3a709d28cb4d86f4.mp4', '1', '0', '1', null);
INSERT INTO `chapter_content` VALUES ('17', 'zzz', '17', '/static/upload/6ef8a7b8160cac45/3a709d28cb4d86f4.mp4', '1', '0', '1', null);
INSERT INTO `chapter_content` VALUES ('18', '第一节', '15', '/static/upload/498bcf2680149880/b16581be8e707910.mp4', '1', '0', '1', null);
INSERT INTO `chapter_content` VALUES ('19', '飞翔的荷兰人', '16', '/static/upload/ba20dab1d78a245a/76d8cd069c66388c.mp4', '1', '0', '1', null);

-- ----------------------------
-- Table structure for `course_chapter`
-- ----------------------------
DROP TABLE IF EXISTS `course_chapter`;
CREATE TABLE `course_chapter` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL COMMENT '课程id',
  `status` tinyint(1) DEFAULT '1' COMMENT '0禁用 1启用',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0正常 1删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='免费课程章节表';

-- ----------------------------
-- Records of course_chapter
-- ----------------------------
INSERT INTO `course_chapter` VALUES ('1', 'PHP学习章节1', '1', '1', '0');
INSERT INTO `course_chapter` VALUES ('2', 'PHP学习章节2', '1', '1', '0');
INSERT INTO `course_chapter` VALUES ('3', 'Python学习章节1', '2', '1', '0');
INSERT INTO `course_chapter` VALUES ('4', 'PHP学习章节3', '1', '1', '0');
INSERT INTO `course_chapter` VALUES ('5', '100天课程+20个项目实战，前端全栈课程带你冲击月薪20K', '3', '1', '0');
INSERT INTO `course_chapter` VALUES ('6', '互联网的前景', '4', '1', '0');
INSERT INTO `course_chapter` VALUES ('7', 'web前端学习', '1', '1', '0');
INSERT INTO `course_chapter` VALUES ('8', 'node.JS', '2', '1', '0');
INSERT INTO `course_chapter` VALUES ('9', 'fdf', '6', '1', '0');
INSERT INTO `course_chapter` VALUES ('10', '倒萨倒萨', '7', '1', '0');
INSERT INTO `course_chapter` VALUES ('11', '的撒旦', '8', '1', '0');
INSERT INTO `course_chapter` VALUES ('12', 'ds dffff', '9', '1', '0');
INSERT INTO `course_chapter` VALUES ('13', '112', '13', '1', '0');
INSERT INTO `course_chapter` VALUES ('14', 'zzz', '14', '1', '1');
INSERT INTO `course_chapter` VALUES ('15', 'zzz', '14', '1', '0');
INSERT INTO `course_chapter` VALUES ('16', 'Z1', '14', '1', '0');
INSERT INTO `course_chapter` VALUES ('17', 'zz', '16', '1', '0');

-- ----------------------------
-- Table structure for `course_comment`
-- ----------------------------
DROP TABLE IF EXISTS `course_comment`;
CREATE TABLE `course_comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `score` varchar(50) DEFAULT NULL COMMENT '评分',
  `impress` varchar(255) DEFAULT NULL COMMENT '评价',
  `content` text COMMENT '评论',
  `status` tinyint(1) DEFAULT '1' COMMENT '0j 1q',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0zc  1sc',
  `course_type` tinyint(1) DEFAULT NULL COMMENT '1免费课程2学位课程3七天课程4公开课',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='课程评价表';

-- ----------------------------
-- Records of course_comment
-- ----------------------------
INSERT INTO `course_comment` VALUES ('1', '1', '1', '5-5-5', '讲解清晰,内容实用,老司机', '111', '1', '0', '1', '2018-12-04 13:16:32');
INSERT INTO `course_comment` VALUES ('2', '2', '1', '3-3-4', '讲解清晰,老司机', '112233', '1', '0', '1', '2018-12-05 17:16:41');
INSERT INTO `course_comment` VALUES ('3', '1', '1', '5-5-5', '讲解清晰,老司机', '111', '1', '0', '1', '2018-12-05 18:16:41');
INSERT INTO `course_comment` VALUES ('4', '1', '1', '5-5-5', '讲解清晰,内容实用,老司机', '感觉干IT赚的多，在逛知乎时候看见了个帖子说Python工资高好上手，作为小白看见帖子最下面的个分享资源的公众号，添加了要了个盗版的老男孩的Python的周末班的视频，看了第一节就被Alex的鸡汤洗脑了，我也想开特斯拉，因为怕自己不适合学这些东西，所以看到了第九周的课程，感觉能听懂也有些兴趣，但是下不了决心辞职脱产学，然后逛了下Alex的博客园，看了他几篇博客，瞬间打了鸡血，时间最重要啊，下班学Python的那点时间我要1年能转行成功就算是很快的了，还是果断辞职把，线下班在沙河上课实在路程太远，要至少2个半小时的路程，最后果断选择了路飞学城。', '1', '0', '2', '2018-12-08 16:16:57');
INSERT INTO `course_comment` VALUES ('5', '1', '1', '5-5-5', '讲解清晰,内容实用,通俗易懂,老司机', '感觉干IT赚的多，在逛知乎时候看见了个帖子说Python工资高好上手，作为小白看见帖子最下面的个分享资源的公众号，添加了要了个盗版的老男孩的Python的周末班的视频，看了第一节就被Alex的鸡汤洗脑了，我也想开特斯拉，因为怕自己不适合学这些东西，所以看到了第九周的课程，感觉能听懂也有些兴趣，但是下不了决心辞职脱产学，然后逛了下Alex的博客园，看了他几篇博客，瞬间打了鸡血，时间最重要啊，下班学Python的那点时间我要1年能转行成功就算是很快的了，还是果断辞职把，线下班在沙河上课实在路程太远，要至少2个半小时的路程，最后果断选择了路飞学城。', '1', '0', '2', '2018-12-12 12:17:06');
INSERT INTO `course_comment` VALUES ('6', '1', '8', '5-5-5', '讲解清晰,老司机', '很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错', '1', '0', '1', '2018-12-20 15:46:16');
INSERT INTO `course_comment` VALUES ('7', '2', '8', '5-5-5', '讲解清晰,内容实用,老司机', '很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错', '1', '0', '1', '2018-12-20 15:46:56');

-- ----------------------------
-- Table structure for `course_homework`
-- ----------------------------
DROP TABLE IF EXISTS `course_homework`;
CREATE TABLE `course_homework` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '作业标题',
  `question_id` int(11) DEFAULT NULL COMMENT '作业问题id',
  `member_id` int(11) DEFAULT NULL COMMENT '学员id',
  `member_name` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL COMMENT '作业内容',
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='课堂作业表(学生回答问题)';

-- ----------------------------
-- Records of course_homework
-- ----------------------------

-- ----------------------------
-- Table structure for `course_question`
-- ----------------------------
DROP TABLE IF EXISTS `course_question`;
CREATE TABLE `course_question` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) DEFAULT NULL COMMENT '老师id',
  `teacher_name` varchar(255) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL COMMENT '课程id',
  `course_name` varchar(255) DEFAULT NULL,
  `content` text,
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='课程问题表(老师布置)';

-- ----------------------------
-- Records of course_question
-- ----------------------------

-- ----------------------------
-- Table structure for `course_type`
-- ----------------------------
DROP TABLE IF EXISTS `course_type`;
CREATE TABLE `course_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '0禁用 1启用',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0正常1删除',
  `create_at` datetime DEFAULT NULL,
  `is_index` tinyint(1) DEFAULT '0' COMMENT '手机端是否首页展示，0否，1是',
  `imgurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='课程分类表';

-- ----------------------------
-- Records of course_type
-- ----------------------------
INSERT INTO `course_type` VALUES ('1', 'PHP', '1', '1', '2018-10-24 14:07:08', '0', null);
INSERT INTO `course_type` VALUES ('2', 'Python', '1', '1', null, '0', null);
INSERT INTO `course_type` VALUES ('3', 'java', '1', '1', null, '0', null);
INSERT INTO `course_type` VALUES ('4', '全栈前端', '1', '0', null, '1', '/static/upload/80a20295efe9100a/51e93fce2efd77b1.jpg');
INSERT INTO `course_type` VALUES ('5', 'javascript', '1', '0', null, '1', '/static/upload/ab5fc97ccf67f790/87408ee2fb440d1f.jpg');

-- ----------------------------
-- Table structure for `degree_chapter`
-- ----------------------------
DROP TABLE IF EXISTS `degree_chapter`;
CREATE TABLE `degree_chapter` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL COMMENT '课程id',
  `status` tinyint(1) DEFAULT '1' COMMENT '0禁用 1启用',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0正常 1删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='学位课程章节表';

-- ----------------------------
-- Records of degree_chapter
-- ----------------------------
INSERT INTO `degree_chapter` VALUES ('1', '章节1', '1', '1', '0');
INSERT INTO `degree_chapter` VALUES ('2', '章节2', '1', '1', '0');
INSERT INTO `degree_chapter` VALUES ('3', '前端课程', '2', '1', '0');
INSERT INTO `degree_chapter` VALUES ('4', 'zz', '4', '1', '0');

-- ----------------------------
-- Table structure for `degree_content`
-- ----------------------------
DROP TABLE IF EXISTS `degree_content`;
CREATE TABLE `degree_content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '内容标题',
  `chapter_id` int(11) DEFAULT NULL COMMENT '所属课程',
  `video_url` varchar(255) DEFAULT NULL COMMENT '视频保存地址',
  `status` tinyint(1) DEFAULT '1' COMMENT '0禁用 1启用',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0正常 1删除',
  `is_free` tinyint(1) DEFAULT '0' COMMENT '是否免费0否 1是',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='学位课程-内容表(章节内容)';

-- ----------------------------
-- Records of degree_content
-- ----------------------------
INSERT INTO `degree_content` VALUES ('1', '课程1', '1', '/static/upload/6ef8a7b8160cac45/3a709d28cb4d86f4.mp4', '1', '0', '1');
INSERT INTO `degree_content` VALUES ('2', '积极', '3', 'http://lyxy.td3131.com/static/upload/61023c78fe2ffe30/58cf27c21aec4262.avi', '1', '0', '0');
INSERT INTO `degree_content` VALUES ('3', 'zq', '4', '/static/upload/6ef8a7b8160cac45/3a709d28cb4d86f4.mp4', '1', '0', '1');
INSERT INTO `degree_content` VALUES ('4', '1212121', '1', '/static/upload/6ef8a7b8160cac45/3a709d28cb4d86f4.mp4', '1', '0', '0');

-- ----------------------------
-- Table structure for `degree_module`
-- ----------------------------
DROP TABLE IF EXISTS `degree_module`;
CREATE TABLE `degree_module` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `degree_id` int(11) DEFAULT NULL,
  `learn_day` varchar(11) DEFAULT NULL COMMENT '学习周期',
  `content` text COMMENT '学习目标-简介',
  `status` tinyint(1) DEFAULT '1',
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='学位课程-模块';

-- ----------------------------
-- Records of degree_module
-- ----------------------------
INSERT INTO `degree_module` VALUES ('1', '模块一', '1', '8天', '&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 440px; height: auto; display: flex;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Medium; list-style: none; color: rgb(1, 180, 228); line-height: 34px;&quot;&gt;学习目标：&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Regular; list-style: none; flex: 1 1 0%; color: rgb(74, 74, 74); display: inline-block; line-height: 34px;&quot;&gt;1、&lt;span style=&quot;font-family: PingFangSC-Regular; list-style: none; flex: 1 1 0%; color: rgb(74, 74, 74); display: inline-block; line-height: 34px; font-size: 16px;&quot;&gt;掌握Linux操作系统的基础知识&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 440px; height: auto; display: flex;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Medium; list-style: none; color: rgb(1, 180, 228); line-height: 34px;&quot;&gt;学习目标：&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Regular; list-style: none; flex: 1 1 0%; color: rgb(74, 74, 74); display: inline-block; line-height: 34px;&quot;&gt;2、掌握Python基础知识，基础语法、数据类型、流程控制、Python文件处理，字符编码&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 440px; height: auto; display: flex;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Medium; list-style: none; color: rgb(1, 180, 228); line-height: 34px;&quot;&gt;学习目标：&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Regular; list-style: none; flex: 1 1 0%; color: rgb(74, 74, 74); display: inline-block; line-height: 34px;&quot;&gt;3、熟练掌握列表、元组、字典、集合、字符串的各种常用操作&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 440px; height: auto; display: flex;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Medium; list-style: none; color: rgb(86, 203, 196); line-height: 34px;&quot;&gt;项目实战：&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Regular; list-style: none; flex: 1 1 0%; color: rgb(74, 74, 74); display: inline-block; line-height: 34px;&quot;&gt;1、用户登录认证程序开发&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 440px; height: auto; display: flex;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Medium; list-style: none; color: rgb(86, 203, 196); line-height: 34px;&quot;&gt;项目实战：&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Regular; list-style: none; flex: 1 1 0%; color: rgb(74, 74, 74); display: inline-block; line-height: 34px;&quot;&gt;2、三级菜单程序开发&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 440px; height: auto; display: flex;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Medium; list-style: none; color: rgb(86, 203, 196); line-height: 34px;&quot;&gt;项目实战：&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Regular; list-style: none; flex: 1 1 0%; color: rgb(74, 74, 74); display: inline-block; line-height: 34px;&quot;&gt;3、购物车程序开发&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 440px; height: auto; display: flex;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Medium; list-style: none; color: rgb(192, 149, 79); line-height: 34px;&quot;&gt;学习成果：&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Regular; list-style: none; flex: 1 1 0%; color: rgb(74, 74, 74); display: inline-block; line-height: 34px;&quot;&gt;1、熟练掌握Python基础知识&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 440px; height: auto; display: flex;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Medium; list-style: none; color: rgb(250, 98, 64); line-height: 34px;&quot;&gt;市场价值：&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Regular; list-style: none; flex: 1 1 0%; color: rgb(74, 74, 74); display: inline-block; line-height: 34px;&quot;&gt;1、具备编程思维，能使用Python语言进行小程序开发&lt;/span&gt;&lt;/p&gt;', '1', '0');
INSERT INTO `degree_module` VALUES ('2', '模块二', '1', '10天', '&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 440px; height: auto; display: flex;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Medium; list-style: none; color: rgb(1, 180, 228); line-height: 34px;&quot;&gt;学习目标：&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Regular; list-style: none; flex: 1 1 0%; color: rgb(74, 74, 74); display: inline-block; line-height: 34px;&quot;&gt;1、掌握Python中函数的各种使用技巧和注意事项&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 440px; height: auto; display: flex;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Medium; list-style: none; color: rgb(1, 180, 228); line-height: 34px;&quot;&gt;学习目标：&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Regular; list-style: none; flex: 1 1 0%; color: rgb(74, 74, 74); display: inline-block; line-height: 34px;&quot;&gt;2、掌握Python标准库提供的常用模块的使用&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 440px; height: auto; display: flex;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Medium; list-style: none; color: rgb(1, 180, 228); line-height: 34px;&quot;&gt;学习目标：&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Regular; list-style: none; flex: 1 1 0%; color: rgb(74, 74, 74); display: inline-block; line-height: 34px;&quot;&gt;3、掌握Python程序软件开发目录结构规范&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 440px; height: auto; display: flex;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Medium; list-style: none; color: rgb(86, 203, 196); line-height: 34px;&quot;&gt;项目实战：&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Regular; list-style: none; flex: 1 1 0%; color: rgb(74, 74, 74); display: inline-block; line-height: 34px;&quot;&gt;1、通过标准库re模块开发计算器程序&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 440px; height: auto; display: flex;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Medium; list-style: none; color: rgb(86, 203, 196); line-height: 34px;&quot;&gt;项目实战：&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Regular; list-style: none; flex: 1 1 0%; color: rgb(74, 74, 74); display: inline-block; line-height: 34px;&quot;&gt;2、结合当前模块所有知识点开发ATM(自动取款机)程序&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 440px; height: auto; display: flex;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Medium; list-style: none; color: rgb(86, 203, 196); line-height: 34px;&quot;&gt;项目实战：&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Regular; list-style: none; flex: 1 1 0%; color: rgb(74, 74, 74); display: inline-block; line-height: 34px;&quot;&gt;3、员工信息表程序开发&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 440px; height: auto; display: flex;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Medium; list-style: none; color: rgb(192, 149, 79); line-height: 34px;&quot;&gt;学习成果：&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Regular; list-style: none; flex: 1 1 0%; color: rgb(74, 74, 74); display: inline-block; line-height: 34px;&quot;&gt;1、掌握Python函数编程、生成器、装饰器等知识&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 440px; height: auto; display: flex;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Medium; list-style: none; color: rgb(192, 149, 79); line-height: 34px;&quot;&gt;学习成果：&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Regular; list-style: none; flex: 1 1 0%; color: rgb(74, 74, 74); display: inline-block; line-height: 34px;&quot;&gt;2、掌握Python标准库中常用模块的各种高级用法&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 440px; height: auto; display: flex;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Medium; list-style: none; color: rgb(250, 98, 64); line-height: 34px;&quot;&gt;市场价值：&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Regular; list-style: none; flex: 1 1 0%; color: rgb(74, 74, 74); display: inline-block; line-height: 34px;&quot;&gt;1、具备Python编程思维，能够熟练使用Python进行各种数据分析和处理&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 440px; height: auto; display: flex;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Medium; list-style: none; color: rgb(250, 98, 64); line-height: 34px;&quot;&gt;市场价值：&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Regular; list-style: none; flex: 1 1 0%; color: rgb(74, 74, 74); display: inline-block; line-height: 34px;&quot;&gt;2、可独立开发上千行代码的小项目&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1', '0');
INSERT INTO `degree_module` VALUES ('3', '模块三', '1', '10天', '&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 440px; height: auto; display: flex;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Medium; list-style: none; color: rgb(1, 180, 228); line-height: 34px;&quot;&gt;学习目标：&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Regular; list-style: none; flex: 1 1 0%; color: rgb(74, 74, 74); display: inline-block; line-height: 34px;&quot;&gt;1、掌握Python面向对象编程开发思想和相关知识&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 440px; height: auto; display: flex;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Medium; list-style: none; color: rgb(1, 180, 228); line-height: 34px;&quot;&gt;学习目标：&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Regular; list-style: none; flex: 1 1 0%; color: rgb(74, 74, 74); display: inline-block; line-height: 34px;&quot;&gt;2、掌握Python网络编程，熟练使用socket进行网络编程&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 440px; height: auto; display: flex;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Medium; list-style: none; color: rgb(1, 180, 228); line-height: 34px;&quot;&gt;学习目标：&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Regular; list-style: none; flex: 1 1 0%; color: rgb(74, 74, 74); display: inline-block; line-height: 34px;&quot;&gt;3、深入研究socket原理，socketserver源码分析&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 440px; height: auto; display: flex;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Medium; list-style: none; color: rgb(86, 203, 196); line-height: 34px;&quot;&gt;项目实战：&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Regular; list-style: none; flex: 1 1 0%; color: rgb(74, 74, 74); display: inline-block; line-height: 34px;&quot;&gt;1、选课系统开发&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 440px; height: auto; display: flex;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Medium; list-style: none; color: rgb(86, 203, 196); line-height: 34px;&quot;&gt;项目实战：&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Regular; list-style: none; flex: 1 1 0%; color: rgb(74, 74, 74); display: inline-block; line-height: 34px;&quot;&gt;2、基于C/S架构开发支持多用户在线的FTP服务器，实现上传下载、权限管理&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 440px; height: auto; display: flex;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Medium; list-style: none; color: rgb(192, 149, 79); line-height: 34px;&quot;&gt;学习成果：&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Regular; list-style: none; flex: 1 1 0%; color: rgb(74, 74, 74); display: inline-block; line-height: 34px;&quot;&gt;1、深入理解socket网络编程&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 440px; height: auto; display: flex;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Medium; list-style: none; color: rgb(192, 149, 79); line-height: 34px;&quot;&gt;学习成果：&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Regular; list-style: none; flex: 1 1 0%; color: rgb(74, 74, 74); display: inline-block; line-height: 34px;&quot;&gt;2、掌深入理解socketserver，能够熟练使用socketserver进行多客户端并发的服务器软件开发&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 440px; height: auto; display: flex;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Medium; list-style: none; color: rgb(250, 98, 64); line-height: 34px;&quot;&gt;市场价值：&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Regular; list-style: none; flex: 1 1 0%; color: rgb(74, 74, 74); display: inline-block; line-height: 34px;&quot;&gt;1、具备Python面向对象编程思维，能够熟练使用面向对象思想开发大型程序&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 440px; height: auto; display: flex;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Medium; list-style: none; color: rgb(250, 98, 64); line-height: 34px;&quot;&gt;市场价值：&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Regular; list-style: none; flex: 1 1 0%; color: rgb(74, 74, 74); display: inline-block; line-height: 34px;&quot;&gt;2、具备使用socket进行网络编程的能力，可开发高并发的游戏软件等&lt;/span&gt;&lt;/p&gt;', '1', '0');
INSERT INTO `degree_module` VALUES ('4', 'zz', '2', '2', '&lt;p&gt;张容铭&lt;br/&gt;&lt;/p&gt;', '1', '0');

-- ----------------------------
-- Table structure for `degree_package`
-- ----------------------------
DROP TABLE IF EXISTS `degree_package`;
CREATE TABLE `degree_package` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `degree_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '0j 1q',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0z 1s',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学位课程-价格套餐';

-- ----------------------------
-- Records of degree_package
-- ----------------------------
INSERT INTO `degree_package` VALUES ('1', '1', 'SVIP套餐', '0.01', '在线实时答疑 /每周跟进三次 /一线城市12K起 /张老师亲自简历指导和模拟面试', '1', '0');
INSERT INTO `degree_package` VALUES ('2', '1', 'VIP套餐', '5980', '1V1答疑服务/课件+源码 / 闯关式学习/ 推荐就业 /一线城市10K起', '1', '0');
INSERT INTO `degree_package` VALUES ('3', '1', 'SSVIP套餐', '39980', '在线实时答疑 /每天跟进一次 /张老师全程指导/保就业', '1', '0');

-- ----------------------------
-- Table structure for `degree_project`
-- ----------------------------
DROP TABLE IF EXISTS `degree_project`;
CREATE TABLE `degree_project` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `degree_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '0j 1q',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0z 1s',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='学位课程-实战项目';

-- ----------------------------
-- Records of degree_project
-- ----------------------------
INSERT INTO `degree_project` VALUES ('1', '1', '论坛——抽屉新热榜', 'http://lyxy.fuyaot.com/static/upload/0f566d3142735f79/d490b717414e2ee9.png', '基于Django框架开发“抽屉新热榜”，实现论坛版块管理、发贴、多级评论楼、富文本编辑器、新贴提醒、文件上传等功能。做完此项目，你可以自己开发一个博客系统，把自己的技术文章等放上去供人阅读。', '1', '0');
INSERT INTO `degree_project` VALUES ('2', '1', 'crm客户关系软件开发', 'http://lyxy.fuyaot.com/static/upload/b59776bf10aef252/e5f84b262a00f178.png', '你将根据某教育企业实际需求，为项目中不同角色开发单独的页面，不同角色间不能互相访问彼此的功能。可创建客户、客户管理、跟踪客户纪录、在线办理报名手续、查看销售报表等功能。做完此项目后，企业中的各种内容管理、流程管理软件的开发都难不倒你啦。', '1', '0');

-- ----------------------------
-- Table structure for `index_banner`
-- ----------------------------
DROP TABLE IF EXISTS `index_banner`;
CREATE TABLE `index_banner` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `web_url` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '0禁用 1启用',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0正常1删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='网站banner图表';

-- ----------------------------
-- Records of index_banner
-- ----------------------------
INSERT INTO `index_banner` VALUES ('1', '001', '/static/upload/150e607bf7522888/8972b25fc8fb6dbc.png', 'https://ke.qq.com/course/270226?tuin=c1e347cf', '1', '0');
INSERT INTO `index_banner` VALUES ('2', '002', '/static/upload/442affda0244a556/f526c1eb05ad6638.png', 'https://ke.qq.com/course/270226?tuin=c1e347cf', '1', '0');
INSERT INTO `index_banner` VALUES ('3', '003', '/static/upload/9978a19aaa6c6f4b/a9852e7685cae9d7.png', 'https://ke.qq.com/course/270226?tuin=c1e347cf', '1', '0');
INSERT INTO `index_banner` VALUES ('4', '004', '/static/upload/4da68ab16ebdafc7/a7119bba7103a4a6.png', 'https://ke.qq.com/course/270226?tuin=c1e347cf', '1', '0');
INSERT INTO `index_banner` VALUES ('5', '005', '/static/upload/6d93bfd1fb15ff61/2b6637ce25210b9a.png', 'https://www.baidu.com', '1', '0');
INSERT INTO `index_banner` VALUES ('6', '123123', '/static/upload/a55e086ac3704992/64b964bd3f238e10.jpg', '', '1', '1');

-- ----------------------------
-- Table structure for `index_camp`
-- ----------------------------
DROP TABLE IF EXISTS `index_camp`;
CREATE TABLE `index_camp` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '课程名称题标',
  `type_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `class_code` varchar(255) DEFAULT NULL,
  `content` text,
  `price` double(11,2) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '1启用0 禁用',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0正常 1删除',
  `imgurl` varchar(255) DEFAULT NULL,
  `enroll` int(11) DEFAULT NULL,
  `member_num` int(11) DEFAULT NULL,
  `arrange1` varchar(255) DEFAULT NULL COMMENT '课程安排',
  `arrange2` varchar(255) DEFAULT NULL COMMENT '课程安排（图片）',
  `homework` varchar(255) DEFAULT NULL,
  `homework1` varchar(255) DEFAULT NULL COMMENT '作业对比',
  `homework2` varchar(255) DEFAULT NULL COMMENT '作业对比',
  `analysis` varchar(255) DEFAULT NULL COMMENT '分析--回答',
  `worry` varchar(255) DEFAULT NULL COMMENT '分析--问题',
  `start_date` varchar(11) DEFAULT NULL COMMENT '开课时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='七天训练营';

-- ----------------------------
-- Records of index_camp
-- ----------------------------
INSERT INTO `index_camp` VALUES ('1', '前端7天高效入门编程实训班', '从0到1，跟大牛导师构建你的前端课程体系', '4', '10001', 'cssjs001', '&lt;p style=&quot;line-height: 2em;&quot;&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;&lt;strong&gt;1.大牛导师亲自带队&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 2em;&quot;&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;&lt;strong&gt;2.掌握系统前端编程学习方法&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 2em;&quot;&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;&lt;strong&gt;3.完成第一个前端实战项目&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;', '0.01', '1', '0', '/static/upload/74770db2bb32e513/250b3175a1804bef.png', '100', '150', '&lt;p&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;在7天内将会得到专业系统的课程安排，全程高手引路、帮你快速从0基础学习入门前端开发。&lt;/span&gt;&lt;/p&gt;', '/static/upload/7594f4e7a0916df0/e278e99e6d114a52.png', '&lt;p style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;在7天的学习过程中，你将需提交两次实战作业，导师将逐行进行批改，提供针对性的建议，帮助你提高代码输出的完成度和专业度&lt;/span&gt;&lt;/p&gt;', '/static/upload/8e790eb4db168219/7be27933e7e4590e.jpg', '/static/upload/33b756390c358a01/1f6722d3214d0a3e.jpg', '&lt;p&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;1.从乐育学院毕业的学员中，有最低高中学历拿到32K的学员，也有零基础转行拿到10k的学员，这个岗位目前只有有技术，你就一定可以月薪过万，在这里只要努力就有希望，总好过每天做重复的生活，一眼就能看到自己40岁的人生。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;2.前端是每个公司需要的', '前端发展前景怎么样？该怎么学？我适合做前端吗？', '2018-12-02');

-- ----------------------------
-- Table structure for `index_company`
-- ----------------------------
DROP TABLE IF EXISTS `index_company`;
CREATE TABLE `index_company` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='合作企业表';

-- ----------------------------
-- Records of index_company
-- ----------------------------
INSERT INTO `index_company` VALUES ('1', '艺术留学培训机构', 'https://www.baidu.com', '', '111', '1', '0');
INSERT INTO `index_company` VALUES ('2', '码农网', 'https://www.baidu.com', '', '11', '1', '0');
INSERT INTO `index_company` VALUES ('3', '大数据视频教程', 'https://www.baidu.com', '', '11', '1', '0');
INSERT INTO `index_company` VALUES ('4', '心理学考研', 'https://www.baidu.com', '', '11', '1', '0');
INSERT INTO `index_company` VALUES ('5', '江西自考网', 'https://www.baidu.com', '', '11', '1', '0');

-- ----------------------------
-- Table structure for `index_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `index_coupon`;
CREATE TABLE `index_coupon` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL COMMENT '优惠价格',
  `validity` int(11) DEFAULT NULL COMMENT '有效期',
  `course_type` tinyint(1) DEFAULT '0' COMMENT '指定课程类型0所有，1免费课，2学位课，3七天课',
  `code` varchar(255) DEFAULT NULL COMMENT '优惠券编号',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) DEFAULT '1' COMMENT '1启用0禁用',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0正常 1删除',
  `condition` int(11) DEFAULT NULL COMMENT '使用条件',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='优惠券表';

-- ----------------------------
-- Records of index_coupon
-- ----------------------------
INSERT INTO `index_coupon` VALUES ('1', '新人优惠券', '5', '7', '1', 'ceshi001', '2019-01-10 11:33:53', '1', '0', '0');
INSERT INTO `index_coupon` VALUES ('2', '限时优惠', '10', '6', '2', '001', '2019-02-19 15:07:05', '1', '0', null);
INSERT INTO `index_coupon` VALUES ('3', 'dwqdad', '0', '0', '0', '009', '2019-02-25 16:59:56', '1', '0', null);
INSERT INTO `index_coupon` VALUES ('4', '测试', '1', '1', '1', '10086', '2019-02-28 15:23:49', '1', '0', null);

-- ----------------------------
-- Table structure for `index_course`
-- ----------------------------
DROP TABLE IF EXISTS `index_course`;
CREATE TABLE `index_course` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '课程名',
  `type_id` int(11) DEFAULT NULL COMMENT '课程类型',
  `class_code` varchar(255) DEFAULT NULL COMMENT '课程编号',
  `content` varchar(255) DEFAULT NULL COMMENT '简介',
  `teacher_id` int(11) DEFAULT NULL,
  `level` tinyint(1) DEFAULT '1' COMMENT '1初级2中级3高级',
  `price` double(11,2) DEFAULT NULL COMMENT '价格',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态(1:启用,0:禁用)',
  `is_free` tinyint(1) DEFAULT '0' COMMENT '0收费,1免费',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '删除状态(1:删除,0:未删)',
  `imgurl` varchar(255) DEFAULT NULL COMMENT '课程主图',
  `wave` varchar(255) DEFAULT NULL COMMENT '课件保存地址',
  `detail` text,
  `stu_num` int(11) DEFAULT NULL COMMENT '学习人数',
  `class_time` float(11,1) DEFAULT NULL COMMENT '课程时长(小时)',
  `is_hot` tinyint(1) DEFAULT '0' COMMENT '课程热门，0不热门，1热门',
  `old_price` double(11,2) DEFAULT NULL COMMENT '原价',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='课程表';

-- ----------------------------
-- Records of index_course
-- ----------------------------
INSERT INTO `index_course` VALUES ('1', 'PHP学习', '4', 'php001', 'PHP学PHP学习PHP学习', '10002', '1', '1.00', '1', '0', '0', '/static/upload/912863b9a655fe3c/d5a64d6ca6490bc7.png', '/static/upload/76cdb2bad9582d23/c1f6f4d868218d6c.zip', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20181206/1544078067397617.jpeg&quot; title=&quot;1544078067397617.jpeg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20181206/1544078067736454.jpeg&quot; title=&quot;1544078067736454.jpeg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20181206/1544078068338419.png&quot; title=&quot;1544078068338419.png&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1548', '26.0', '0', null);
INSERT INTO `index_course` VALUES ('2', 'Python学习', '5', '0002', '123', '10005', '1', '0.01', '1', '0', '0', '/static/upload/d946f26449569490/e0716bca0f5dd219.png', '', '', '258', '31.0', '0', null);
INSERT INTO `index_course` VALUES ('3', 'go语言', '5', '12345', '哈U盾还素大叔', '10004', '1', '0.00', '1', '0', '0', '/static/upload/bdcfcb15301e5539/252388b17d511339.jpg', '', '', '366', '26.5', '0', null);
INSERT INTO `index_course` VALUES ('4', 'html基础入门视频', '4', '1001', '此课程主要帮助学生入门学习', '10005', '1', '0.01', '1', '0', '0', 'http://lyxy.td3131.com/static/upload/a160e089aef99236/aac9cc48ebc5ff3c.jpg', '/static/upload/db6f47824115e819/044c22904a736dfd.zip', '&lt;p&gt;帮助学生入门学习&lt;/p&gt;', '258', '18.5', '0', null);
INSERT INTO `index_course` VALUES ('5', '测试007', '4', '01', '测试', '10002', '1', '0.00', '1', '0', '0', '/static/upload/b2bcb6ef7ae575a1/3ad0ae776121aa92.jpg', '', '&lt;p&gt;&lt;video class=&quot;edui-upload-video  vjs-default-skin video-js&quot; controls=&quot;&quot; preload=&quot;none&quot; width=&quot;420&quot; height=&quot;280&quot; src=&quot;/ueditor/php/upload/video/20181220/1545288221752442.mp4&quot; data-setup=&quot;{}&quot;&gt;&lt;/video&gt;&lt;/p&gt;', '100', '120.0', '1', null);
INSERT INTO `index_course` VALUES ('6', '哦哦哦', '4', '001', '哈U盾还素大叔', '10005', '1', '0.01', '1', '0', '0', '/static/upload/b1d5ca957dbcef7d/37bbc864cc4a05c4.jpg', '/static/upload/d3c60925e2fcd4cc/e6fc0d8a9212cc96.zip', '&lt;p&gt;fsdfdsfdsf&amp;nbsp;&lt;/p&gt;', '23', '34.0', '1', null);
INSERT INTO `index_course` VALUES ('7', '萨达萨达', '4', '005', '放到沙发的', '10002', '1', '0.01', '1', '0', '0', '/static/upload/b1d5ca957dbcef7d/37bbc864cc4a05c4.jpg', '', '&lt;p&gt;佛挡杀佛&lt;/p&gt;', '0', '0.0', '0', null);
INSERT INTO `index_course` VALUES ('8', '积极', '4', '990', '莪问啊发呆', '10002', '1', '0.01', '1', '0', '0', '', '/static/upload/20ebbdf562f2a768/ac1d8c34c371d36c.zip', '&lt;p&gt;1啊倒萨倒萨的的按时撒旦&lt;/p&gt;', '11', '1.0', '0', null);
INSERT INTO `index_course` VALUES ('9', 'dasdsa12345', '4', '00001', 'fewf w w', '10003', '1', '0.02', '1', '0', '0', '', '', '&lt;p&gt;fewfwfew&lt;/p&gt;', '1', '1.0', '0', null);
INSERT INTO `index_course` VALUES ('10', '122', '4', '2222', '2e2e2', '10002', '1', '0.01', '1', '0', '0', '', '', '&lt;p&gt;eeee&lt;/p&gt;', '12', '22.0', '0', null);
INSERT INTO `index_course` VALUES ('11', '123567', '4', '111', '打撒大撒的', '10002', '1', '0.01', '1', '0', '0', '/static/upload/0e02633accdad2a9/20684d699b71d688.jpg', '/static/upload/d3c60925e2fcd4cc/e6fc0d8a9212cc96.zip', '&lt;p&gt;21212121&lt;/p&gt;', '12', '12121.0', '1', null);
INSERT INTO `index_course` VALUES ('12', 'vue实战', '4', '009', 'vue从入门到精通', '10003', '1', '5.01', '1', '0', '0', '/static/upload/0e02633accdad2a9/20684d699b71d688.jpg', '', '&lt;p&gt;vue从入门到精通&lt;/p&gt;', '12', '12.0', '0', null);
INSERT INTO `index_course` VALUES ('17', 'JavaScriptcc', '5', '0077', '1111', '10005', '1', '0.10', '1', '0', '0', '/static/upload/980bed9afe474f78/4cd702e6df52b51c.jpg', '', '&lt;p&gt;&lt;video class=&quot;edui-upload-video  vjs-default-skin video-js&quot; controls=&quot;&quot; preload=&quot;none&quot; width=&quot;420&quot; height=&quot;280&quot; src=&quot;/ueditor/php/upload/video/20190220/1550633466667828.mp4&quot; data-setup=&quot;{}&quot;&gt;&lt;/video&gt;&lt;/p&gt;', '333', '333.0', '0', '1.00');
INSERT INTO `index_course` VALUES ('13', 'node入门', '4', '009', 'fdsfdsfsdsfds', '10002', '1', '0.01', '1', '0', '0', '/static/upload/7594f4e7a0916df0/e278e99e6d114a52.png', '', '&lt;p&gt;fdsssssssssssssssssssssss&lt;/p&gt;', '220', '1.0', '1', '10.00');
INSERT INTO `index_course` VALUES ('14', 'JavaScript111', '4', '111', '1111', '10005', '1', '0.00', '1', '0', '0', '/static/upload/980bed9afe474f78/4cd702e6df52b51c.jpg', '', '', '10', '200.0', '0', '0.00');
INSERT INTO `index_course` VALUES ('15', '测试购买', '5', '001', '112', '10005', '1', '0.00', '1', '0', '0', '/static/upload/8e34a47f89d78914/181e11409803aab0.jpg', '', '&lt;p&gt;&lt;video class=&quot;edui-upload-video  vjs-default-skin video-js&quot; controls=&quot;&quot; preload=&quot;none&quot; width=&quot;420&quot; height=&quot;280&quot; src=&quot;/ueditor/php/upload/video/20190219/1550560492167669.mp4&quot; data-setup=&quot;{}&quot;&gt;&lt;/video&gt;&lt;/p&gt;', '10', '112.0', '0', '0.00');
INSERT INTO `index_course` VALUES ('16', '测试跳转', '4', '0011', '1122', '10002', '1', '0.01', '1', '0', '0', '', '', '&lt;p&gt;&lt;video class=&quot;edui-upload-video  vjs-default-skin video-js&quot; controls=&quot;&quot; preload=&quot;none&quot; width=&quot;420&quot; height=&quot;280&quot; src=&quot;/ueditor/php/upload/video/20190219/1550560756882248.mp4&quot; data-setup=&quot;{}&quot;&gt;&lt;/video&gt;&lt;/p&gt;', '20', '112.0', '1', '1.00');

-- ----------------------------
-- Table structure for `index_degree`
-- ----------------------------
DROP TABLE IF EXISTS `index_degree`;
CREATE TABLE `index_degree` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `class_code` varchar(255) DEFAULT NULL,
  `content` text COMMENT '简介',
  `teacher_id` int(11) DEFAULT NULL,
  `member_num` int(11) DEFAULT NULL COMMENT '学员数量',
  `web_url` varchar(255) DEFAULT NULL COMMENT '咨询跳转链接',
  `imgurl` varchar(255) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL COMMENT '目标薪资',
  `position` varchar(255) DEFAULT NULL COMMENT '目标职位',
  `status` tinyint(1) DEFAULT '1' COMMENT '1qy 0jy',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0zc 1sc',
  `sort` int(11) DEFAULT NULL,
  `service` text COMMENT '特色服务',
  `pack_detail` text COMMENT '套餐详情图',
  `environment1` varchar(255) DEFAULT NULL,
  `environment2` varchar(255) DEFAULT NULL,
  `environment3` varchar(255) DEFAULT NULL,
  `environment4` varchar(255) DEFAULT NULL,
  `str1_title` varchar(255) DEFAULT NULL,
  `str1_icon` varchar(255) DEFAULT NULL,
  `str1_cont` varchar(255) DEFAULT NULL,
  `str2_title` varchar(255) DEFAULT NULL,
  `str2_icon` varchar(255) DEFAULT NULL,
  `str2_cont` varchar(255) DEFAULT NULL,
  `str3_title` varchar(255) DEFAULT NULL,
  `str3_icon` varchar(255) DEFAULT NULL,
  `str3_cont` varchar(255) DEFAULT NULL,
  `str4_title` varchar(255) DEFAULT NULL,
  `str4_icon` varchar(255) DEFAULT NULL,
  `str4_cont` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='学位课程';

-- ----------------------------
-- Records of index_degree
-- ----------------------------
INSERT INTO `index_degree` VALUES ('1', '前端全栈开发 ', '4', 'lyxy001', '&lt;p class=&quot;p1&quot; style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 22px; font-family: PingFangSC-Regular; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-size: 24px; color: rgb(74, 74, 74); white-space: normal;&quot;&gt;前端全栈开发工程师&lt;/p&gt;&lt;p class=&quot;p1&quot; style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 22px; font-family: PingFangSC-Regular; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-size: 24px; color: rgb(74, 74, 74); white-space: normal;&quot;&gt;&lt;span style=&quot;background-color: rgb(255, 255, 255); color: rgb(26, 29, 36); text-align: justify; text-indent: 2em; font-size: 18px;&quot;&gt;去年，我国手机用户超过13亿，智能手机用户超过6亿。就算其中只有一半人上网，那也是3亿多人。这么多人，每天都有几十分钟或者几个小时，要使用手机上网。全体中国人一年消费的网页和App的数量，是一个天文数字。&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;p1&quot; style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 22px; font-family: PingFangSC-Regular; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-size: 24px; color: rgb(74, 74, 74); white-space: normal;&quot;&gt;&lt;span style=&quot;background-color: rgb(255, 255, 255); color: rgb(26, 29, 36); font-size: 18.375px; text-align: justify; text-indent: 2em;&quot;&gt;鸡蛋是母鸡生出来的，网页从哪里来？归根结底，所有页面都需要工程师做出来。那么多互联网公司，每家公司都需要前端工程师。而全国的前端工程师，目前可能总共有几十万人，对比那么大的内容消费量，肯定是远远不够的（想一想吧，全国的母鸡有23亿只）。这样一想，工程师抢手就不奇怪了。&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;p1&quot; style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 22px; font-family: PingFangSC-Regular; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-size: 24px; color: rgb(74, 74, 74); white-space: normal;&quot;&gt;&lt;span style=&quot;background-color: rgb(255, 255, 255); color: rgb(26, 29, 36); font-size: 18.375px; text-align: justify; text-indent: 2em;&quot;&gt;还有一个很重要的原因，学校不教前端开发，可能会有一些相关课程，但不会系统地教，所有前端工程师都是靠自学的。这也导致了供给偏少。因此要么去培训要么自学！&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;p3&quot; style=&quot;box-sizing: border-box; padding: 0px; margin-top: 30px; margin-bottom: 40px; font-family: PingFangSC-Light; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(74, 74, 74); line-height: 28px; white-space: normal;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;在这门课程里，你将得到专业导师的逐行代码审阅帮你快速从0基础学习前端编程。27周后，你将掌握html,css,js,node，前端框架等技能，并独立完成数个大型企业实战项目。成为市场上炙手可热的P前端全栈开发工程师。&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;p1&quot; style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 22px; font-family: PingFangSC-Regular; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-size: 24px; color: rgb(74, 74, 74); white-space: normal;&quot;&gt;培养目标&lt;/p&gt;&lt;p class=&quot;target-p1&quot; style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: PingFangSC-Light; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 480px; font-size: 16px; color: rgb(74, 74, 74); letter-spacing: 0.44px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px 19px 0px 0px; font-family: PingFangSC-Medium; list-style: none; display: inline-block; font-size: 18px; letter-spacing: 0px;&quot;&gt;基本信息&amp;nbsp; &amp;nbsp;前端全栈&lt;/span&gt;（10个阶段，共24章节）&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: PingFangSC-Light; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-size: 16px; color: rgb(74, 74, 74); letter-spacing: 0.44px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px 19px 0px 0px; font-family: PingFangSC-Medium; list-style: none; display: inline-block; font-size: 18px; letter-spacing: 0px;&quot;&gt;学习时间&lt;/span&gt;2-4个小时／天（大约6个月）&lt;/p&gt;&lt;p class=&quot;target-p1&quot; style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: PingFangSC-Light; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 480px; font-size: 16px; color: rgb(74, 74, 74); letter-spacing: 0.44px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px 19px 0px 0px; font-family: PingFangSC-Medium; list-style: none; display: inline-block; font-size: 18px; letter-spacing: 0px;&quot;&gt;难&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;度&lt;/span&gt;中级（5万行代码加持）&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: PingFangSC-Light; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-size: 16px; color: rgb(74, 74, 74); letter-spacing: 0.44px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px 19px 0px 0px; font-family: PingFangSC-Medium; list-style: none; display: inline-block; font-size: 18px; letter-spacing: 0px;&quot;&gt;目&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;标&lt;/span&gt;炼成中高级前端全栈开发工程师&lt;/p&gt;&lt;p class=&quot;target-p1&quot; style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: PingFangSC-Regular; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 480px; font-size: 16px; color: rgb(74, 74, 74); letter-spacing: 0.44px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px 19px 0px 0px; font-family: PingFangSC-Medium; list-style: none; display: inline-block; font-size: 18px; letter-spacing: 0px;&quot;&gt;入学条件&lt;/span&gt;掌握计算机日常使用 具备专科或以上学历&lt;/p&gt;&lt;p class=&quot;p1&quot; style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 22px; font-family: PingFangSC-Regular; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-size: 24px; color: rgb(74, 74, 74); white-space: normal;&quot;&gt;学完后达到的能力&lt;/p&gt;&lt;ul style=&quot;list-style-type: none;&quot; class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;&lt;img src=&quot;/static/index/static/img/icon10.svg&quot; alt=&quot;&quot;/&gt;1、熟练掌握WEB标准，熟悉W3C代码规范&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;&lt;img src=&quot;/static/index/static/img/icon10.svg&quot; alt=&quot;&quot;/&gt;2、熟练掌握前端HTML/CSS/JS/Jquery/h5等知识，熟练掌握angular、vue、react框架&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;&lt;img src=&quot;/static/index/static/img/icon10.svg&quot; alt=&quot;&quot;/&gt;3、熟练掌握js面向对象编程，可开发基于各种业务场景下的前端工具&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/static/index/static/img/icon10.svg&quot; alt=&quot;&quot;/&gt;4、独立开发完成实战项目团购网 、资源分类网站、后台管理系统等项目&lt;br/&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', null, '100', 'https://ke.qq.com/course/270226?tuin=c1e347cf', '/static/upload/c278704709c39e73/fa2903bdc88559be.png', '10k', '前端全栈开发工程师', '1', '0', null, '&lt;p class=&quot;service-p1&quot; style=&quot;color: #4A90E2&quot;&gt;&lt;img src=&quot;/static/index/static/img/icon11.svg&quot; alt=&quot;&quot;/&gt;在线高清视频+闯关式学习&lt;/p&gt;&lt;p class=&quot;service-p2&quot;&gt;总计三十二阶段，二十个实战项目，涵盖教你零基础快速上手编程、WEB开发、以及数个大型企业项目实战。&lt;/p&gt;&lt;p class=&quot;service-p1&quot; style=&quot;color: #FFAA48&quot;&gt;&lt;img src=&quot;/static/index/static/img/icon14.svg&quot; alt=&quot;&quot;/&gt;5个月专业导师全程1对1跟踪辅导学习&lt;/p&gt;&lt;p class=&quot;service-p2&quot;&gt;报名后，我们将为你分配专属1对1导师，他将全程伴你学习，为你制定学习计划、技术答疑、作业代码审阅、1v1视频考核等服务，高手全程引路，使你学习路上不再孤独。&lt;/p&gt;&lt;p class=&quot;service-p1&quot; style=&quot;color: #FA6240&quot;&gt;&lt;img src=&quot;/static/index/static/img/icon12.svg&quot; alt=&quot;&quot;/&gt;作业代码逐行批改，个性点评&lt;/p&gt;&lt;p class=&quot;service-p2&quot;&gt;每次作业提交后，导师会在24小时内对你的作业代码进行详细审阅和批改，并给出详细的改进方案，同时每个重要的作业都会配备详细的作业讲解视频供你对比参考。&lt;/p&gt;&lt;p class=&quot;service-p1&quot; style=&quot;color: #14CDBB&quot;&gt;&lt;img src=&quot;/static/index/static/img/icon15.svg&quot; alt=&quot;&quot;/&gt;内推就业机会，薪资8-15k起&lt;/p&gt;&lt;p class=&quot;service-p2&quot;&gt;我们与其他互联网企业的HR部门建立了人才推荐关系，每个从本课程成功闯关毕业的同学，都将优先得到名企内推就业机会。&lt;/p&gt;&lt;p class=&quot;service-p1&quot; style=&quot;color: #7E24D3&quot;&gt;&lt;img src=&quot;/static/index/static/img/icon16.svg&quot; alt=&quot;&quot;/&gt;&lt;span style=&quot;color: rgb(255, 88, 132);&quot;&gt;科学方法：学、练、改、管、测&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;service-p2&quot;&gt;想高效学好一门技能，不只是看视频、看书就能搞定的，我们根据科学的学习方法”输入——》输出——》纠正”理论提炼出学、练、改、管、测5个维度，每个维度上下大功夫打磨产品，助你轻松快速学好本课程。&lt;/p&gt;', '/static/upload/ab0b6fd3a35a3fdc/ca7ee34921a0fb7d.png', '/static/upload/887565fb575bb7e8/e06eb7d1eda46e61.jpg', '/static/upload/dbf6c4a80357a81e/d529f2fa57c1e777.jpg', '/static/upload/bdcfcb15301e5539/252388b17d511339.jpg', '/static/upload/b1d5ca957dbcef7d/37bbc864cc4a05c4.jpg', '互动课堂', '/static/upload/8bec4f88b7b442be/ff47f3dde7a60445.png', '专业名师、实时互动、直播录播、讲练结合', '1v1辅导', '/static/upload/28e3d2da3bf725f3/cd5f3e4e80bdad57.png', '专业导师、学习小组、班主任督学', '真实企业面试题', '/static/upload/c7abd9e1e45966e7/94711bdf329613b2.png', '章节精练、紧扣考点、智能练习、个性推荐', '推荐就业', '/static/upload/8caaf2d1952e6829/0b4b16dfe4a6846c.png', '名企定制、职业顾问、 起薪10K+');
INSERT INTO `index_degree` VALUES ('2', '前端架构 · 高级 ', '4', 'lyxy002', '&lt;p class=&quot;p1&quot; style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 22px; font-size: 24px; color: rgb(74, 74, 74); font-family: PingFangSC-Regular; white-space: normal;&quot;&gt;&lt;strong style=&quot;color: rgb(34, 34, 34); font-family: Arial, Verdana, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;专家讲师介绍&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;color: rgb(34, 34, 34); font-family: Arial, Verdana, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;本课程由&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;strong&gt;原百度视频高级前端工程师,《javascript设计模式》作者张容铭&lt;/strong&gt;&lt;/span&gt;讲授，授课风格言简意赅、通俗易懂，深入浅出，知识含金量大，深受大家喜爱。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;&lt;span style=&quot;color: rgb(68, 68, 68); font-family: tahoma, arial, 宋体, sans-serif;&quot;&gt;本次课程知识点&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;color: rgb(34, 34, 34); font-family: Arial, Verdana, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;span style=&quot;color: rgb(68, 68, 68); font-family: tahoma, arial, 宋体, sans-serif;&quot;&gt;react，路由，Bootstrap，Less，ES5编程，ES6编程，webpack，flux，reflux，redux，axios，nodejs，Koa，mongodb，ReactNative&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;p2&quot; style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(74, 74, 74); line-height: 28px; font-family: PingFangSC-Light; white-space: normal;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p class=&quot;p1&quot; style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 22px; font-size: 24px; color: rgb(74, 74, 74); font-family: PingFangSC-Regular; white-space: normal;&quot;&gt;培养目标&lt;/p&gt;&lt;p class=&quot;target-p1&quot; style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; width: 480px; font-size: 16px; color: rgb(74, 74, 74); letter-spacing: 0.44px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px 19px 0px 0px; display: inline-block; font-size: 18px; letter-spacing: 0px; font-family: PingFangSC-Medium;&quot;&gt;基本信息&lt;/span&gt;Python全栈开发高级（4大阶段，共15章节）&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; font-size: 16px; color: rgb(74, 74, 74); letter-spacing: 0.44px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px 19px 0px 0px; display: inline-block; font-size: 18px; letter-spacing: 0px; font-family: PingFangSC-Medium;&quot;&gt;学习时间&lt;/span&gt;2-4小时/天	（大约5~6个月）&lt;/p&gt;&lt;p class=&quot;target-p1&quot; style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; width: 480px; font-size: 16px; color: rgb(74, 74, 74); letter-spacing: 0.44px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px 19px 0px 0px; display: inline-block; font-size: 18px; letter-spacing: 0px; font-family: PingFangSC-Medium;&quot;&gt;难&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;度&lt;/span&gt;高级&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; font-size: 16px; color: rgb(74, 74, 74); letter-spacing: 0.44px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px 19px 0px 0px; display: inline-block; font-size: 18px; letter-spacing: 0px; font-family: PingFangSC-Medium;&quot;&gt;目&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;标&lt;/span&gt;开启数据分析、人工智能、大数据开发之门&lt;/p&gt;&lt;p class=&quot;target-p1&quot; style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; width: 480px; font-size: 16px; color: rgb(74, 74, 74); letter-spacing: 0.44px; font-family: PingFangSC-Regular;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px 19px 0px 0px; display: inline-block; font-size: 18px; letter-spacing: 0px; font-family: PingFangSC-Medium;&quot;&gt;入学条件&lt;/span&gt;掌握Python全栈开发（中级）课程技能&lt;/p&gt;&lt;p class=&quot;p1&quot; style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 22px; font-size: 24px; color: rgb(74, 74, 74); font-family: PingFangSC-Regular; white-space: normal;&quot;&gt;学完后达到的能力&lt;/p&gt;&lt;ul style=&quot;box-sizing: border-box; padding: 0px; color: rgb(51, 51, 51); font-family: PingFangSC-Light; font-size: 14px; white-space: normal;&quot; class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;1. 掌握使用Python进行数据分析的技术&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;2. 熟悉机器学习、图像识别算法技术原理，掌握OpenCV、TensorFlow等组件的应用&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;3. 熟悉无人驾驶入门技术原理及实现&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;4. 具备开发各种复杂的自动化工作、监控、CMDB、主机管理系统等的能力。&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;5. 掌握GO语言开发&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;', null, '100', 'https://www.baidu.com', '/static/upload/cd334d6874c38175/c905aa7b7164ca4e.jpg', '16k', '前端高级架构工程师', '1', '0', null, '', '', '', '', '', '', '互动课堂', '', '专业名师、实时互动、直播录播、讲练结合', '1v1辅导', '', '专业导师、学习小组、班主任督学、奖学金激励', '智能题库', '', '章节精练、紧扣考点、智能练习、个性推荐', '推荐就业', '', '名企定制、职业顾问、 起薪10K+');

-- ----------------------------
-- Table structure for `index_job`
-- ----------------------------
DROP TABLE IF EXISTS `index_job`;
CREATE TABLE `index_job` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `one_title` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '第一屏标题',
  `one_content` text CHARACTER SET utf8 NOT NULL COMMENT '第一屏内容',
  `two_title` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '第二屏标题',
  `two_content` text CHARACTER SET utf8 NOT NULL COMMENT '第二屏内容',
  `price` decimal(10,2) unsigned NOT NULL COMMENT '早鸟价',
  `old_price` decimal(10,2) unsigned NOT NULL COMMENT '原价',
  `img1` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '线下教学实拍图1',
  `img2` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '实拍图2',
  `img3` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '实拍图3',
  `img4` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '实拍图4',
  `human` int(10) unsigned NOT NULL COMMENT '限制人数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of index_job
-- ----------------------------
INSERT INTO `index_job` VALUES ('0000000001', '轻课是什么？', '&lt;p style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Consolas, &amp;quot;Lucida Console&amp;quot;, &amp;quot;Courier New&amp;quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;;font-family:微软雅黑;font-size:15px&quot;&gt;&lt;span style=&quot;font-family:微软雅黑&quot;&gt;轻课是线下视频录播是乐育学院&lt;/span&gt;&amp;amp;&lt;span style=&quot;font-family:微软雅黑&quot;&gt;爱创课堂打造的线下面授网络课程， 同线下面授的此课程学员无须来线下学习，&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;;font-family:微软雅黑;font-size:15px&quot;&gt;&lt;span style=&quot;font-family:微软雅黑&quot;&gt;&amp;nbsp; &amp;nbsp; 通过我们 发放上课视频即可。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;', '全栈前端开发实战同步课程', '&lt;p&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Consolas, &amp;quot;Lucida Console&amp;quot;, &amp;quot;Courier New&amp;quot;, monospace; white-space: pre-wrap; background-color: rgb(255, 255, 255); font-size: 14px;&quot;&gt;&amp;nbsp;0基础开始学习前端编程，6个月后，你将掌握Html、Css、Js、vue、react等技能，并独立完成数个大型企业实战项目。成为市场上炙手可热的全栈前端开发工程师。&lt;/span&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Consolas, &amp;quot;Lucida Console&amp;quot;, &amp;quot;Courier New&amp;quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);&quot;&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;/p&gt;', '4490.00', '5980.00', 'http://lyxy.me/static/upload/140f9df7950dd3c8/14a02ad8ec8c1104.png', 'http://lyxy.me/static/upload/5aefba4dc1800baf/4da1217c38707d9c.png', 'http://lyxy.me/static/upload/3a2613867cbacda8/444b226db7c6c7e3.png', 'http://lyxy.me/static/upload/ddd84507e5698eeb/d6961fdcadad8f7d.png', '50');

-- ----------------------------
-- Table structure for `index_material`
-- ----------------------------
DROP TABLE IF EXISTS `index_material`;
CREATE TABLE `index_material` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `page` int(255) DEFAULT NULL,
  `type_id` int(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '0j 1q',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0z 1s',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='教材表';

-- ----------------------------
-- Records of index_material
-- ----------------------------
INSERT INTO `index_material` VALUES ('1', 'javascript设计模式', '《JavaScript设计模式》共分六篇四十章，首先讨论了几种函数的编写方式，体会JavaScript在编程中的灵活性；', '/static/upload/e90d219248b8b8f9/8a8c70dee2b60d2a.jpg', '356', '5', '1', '0', null);
INSERT INTO `index_material` VALUES ('2', '前程程序员面试秘籍', '本书内容取材于爱创课堂往期学员的面试总结，分析了应聘程序员（含网络、测试等）职位的常见考点。', '/static/upload/437c757ca31c0f3b/f0ec714253acc50a.jpg', '267', '4', '1', '0', null);

-- ----------------------------
-- Table structure for `index_msg`
-- ----------------------------
DROP TABLE IF EXISTS `index_msg`;
CREATE TABLE `index_msg` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tel` varchar(255) DEFAULT NULL,
  `msg` text,
  `create_time` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0z 1s',
  `status` tinyint(1) DEFAULT '1' COMMENT '0j 1q',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='客户留言表';

-- ----------------------------
-- Records of index_msg
-- ----------------------------
INSERT INTO `index_msg` VALUES ('1', '15397309656', '11', '1541150747', '0', '1');

-- ----------------------------
-- Table structure for `index_open`
-- ----------------------------
DROP TABLE IF EXISTS `index_open`;
CREATE TABLE `index_open` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL COMMENT '课程主图',
  `class_code` varchar(255) DEFAULT NULL COMMENT '课程代码',
  `class_time` varchar(50) DEFAULT NULL COMMENT '课程时长',
  `apply` varchar(255) DEFAULT NULL COMMENT '适用人群',
  `appointment` int(11) DEFAULT NULL COMMENT '预约人数',
  `content` text,
  `open_time` varchar(255) DEFAULT NULL COMMENT '开课时间',
  `important` tinyint(1) DEFAULT '0' COMMENT '1必看 0一般',
  `is_finish` tinyint(1) DEFAULT '0' COMMENT '0未开始，1已结束',
  `url` varchar(255) DEFAULT NULL COMMENT '外链地址',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0正常1删除',
  `status` tinyint(1) DEFAULT '1' COMMENT '1启用 0禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='公开课表';

-- ----------------------------
-- Records of index_open
-- ----------------------------
INSERT INTO `index_open` VALUES ('1', '爱创课堂 张容铭 vue2.0前端开发教程', '4', '10005', '/static/upload/59f4e1342bfdf0f7/8a2594a7914733d7.jpg', 'open001', '2h', '零基础', '200', 'Vue.js作为前端三大框架之一，我们本套课程将讲解vue各种指令、过渡动画、组件以及路由等内容，课程会伴随着实例进行深入浅出的讲解以提高我们的工作效率', '2018-11-30 14:30:00', '1', '0', 'https://ke.qq.com/course/267117', '0', '1');
INSERT INTO `index_open` VALUES ('2', 'web前端开发零基础Javascript【爱创课堂】', '5', '10003', '/static/upload/0549d9c348061895/07b87ec1822df35b.jpg', 'js001', '2h', '零基础', '200', '本课程，主要讲解JavaScript入门语法、For应用、属性操作、数据类型、函数传参、 作用域、运算符、定时器、字符串、Json数组等内容，通过理论知识点与案例讲解的方 式讲述原生JavaScript。', '2018-12-07 00:00:00', '1', '3', 'https://ke.qq.com/course/317229', '0', '1');
INSERT INTO `index_open` VALUES ('3', 'HTML+CSS前端基础开发视频教程【爱创课堂】', '4', '10003', '/static/upload/0912b4948fe19002/21cea82be8dcfd74.jpg', 'css002', '2h', '零基础', '200', '本教程从零基础入门系统地讲解了HTML+CSS的基础理论和实际运用技术，通过大量实例对CSS进行深入浅出的分析。', '2018-12-08 00:00:00', '1', '3', 'https://ke.qq.com/course/270226?tuin=c1e347cf', '0', '1');
INSERT INTO `index_open` VALUES ('4', '321321321', '4', '10002', '/static/upload/7594f4e7a0916df0/e278e99e6d114a52.png', '001', '11', '11', '111', '11111111111111', '2019-02-19 15:41:52', '0', '3', 'http://lyxy.fuyaot.com/index/open/index.html', '0', '1');

-- ----------------------------
-- Table structure for `member_charge`
-- ----------------------------
DROP TABLE IF EXISTS `member_charge`;
CREATE TABLE `member_charge` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_code` varchar(255) DEFAULT NULL COMMENT '流水号',
  `trade_code` varchar(255) DEFAULT NULL COMMENT '交易号/银行卡号',
  `amount` double(255,2) DEFAULT NULL COMMENT '充值金额',
  `title` varchar(255) DEFAULT NULL COMMENT '充值商品名',
  `conten` varchar(255) DEFAULT NULL COMMENT '订单描述',
  `pay_type` tinyint(1) DEFAULT NULL COMMENT '支付类型,1支付宝即时到帐，2支付宝扫码支付，3微信扫码支付',
  `member_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '充值完成状态0未完成 1已完成',
  `bank` varchar(255) DEFAULT NULL COMMENT '支付方式',
  `is_delete` tinyint(1) DEFAULT NULL COMMENT '是否删除',
  `create_time` int(11) DEFAULT NULL,
  `finish_time` int(11) DEFAULT NULL COMMENT '支付完成时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='充值金额表';

-- ----------------------------
-- Records of member_charge
-- ----------------------------

-- ----------------------------
-- Table structure for `member_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `member_coupon`;
CREATE TABLE `member_coupon` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `is_used` tinyint(1) DEFAULT '0' COMMENT '0可用1使用2过期',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0正常1删除',
  `status` tinyint(1) DEFAULT '1' COMMENT '1启用0禁用',
  `use_at` datetime DEFAULT NULL COMMENT '使用时间',
  `course_id` int(11) DEFAULT NULL,
  `course_type` tinyint(1) DEFAULT NULL COMMENT '课程类型0所有，1免费课，2学位课，3七天课',
  `order_id` int(11) DEFAULT NULL COMMENT '订单ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='学员拥有优惠券表';

-- ----------------------------
-- Records of member_coupon
-- ----------------------------
INSERT INTO `member_coupon` VALUES ('1', '1', '1', '1', '2019-01-10 10:59:33', '0', '1', '2019-01-11 11:40:04', '1', '2', '144');
INSERT INTO `member_coupon` VALUES ('2', '10', '4', '0', '2019-02-28 15:23:14', '0', '1', '2019-02-28 15:23:31', '1', '1', '172');
INSERT INTO `member_coupon` VALUES ('3', '6', '1', '0', '2019-02-28 16:46:55', '0', '1', null, null, null, null);
INSERT INTO `member_coupon` VALUES ('4', '6', '4', '1', '2019-02-28 16:47:14', '0', '1', '2019-02-28 16:47:42', '1', '1', '185');

-- ----------------------------
-- Table structure for `member_course`
-- ----------------------------
DROP TABLE IF EXISTS `member_course`;
CREATE TABLE `member_course` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_code` varchar(255) DEFAULT NULL,
  `alipay_code` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `course_type` tinyint(1) DEFAULT NULL COMMENT '1免费课程2学位课程3七天课程4公开课',
  `package_id` int(11) DEFAULT NULL,
  `create_at` int(255) DEFAULT NULL,
  `cost` double(11,2) DEFAULT NULL COMMENT '花费金额',
  `pay_type` tinyint(1) DEFAULT NULL COMMENT '1支付宝,2微信',
  `is_finish` tinyint(1) DEFAULT '0' COMMENT '0未支付,1已支付,2超时取消',
  `finish_at` varchar(255) DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL COMMENT '使用的优惠券',
  `validity` int(255) DEFAULT NULL COMMENT '有效期',
  `status` tinyint(1) DEFAULT '1' COMMENT '1启用 0禁用',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0正常 1删除',
  `is_comment` tinyint(1) DEFAULT '0' COMMENT '1已评论,0未评论',
  PRIMARY KEY (`id`),
  KEY `order_code` (`order_code`)
) ENGINE=MyISAM AUTO_INCREMENT=192 DEFAULT CHARSET=utf8 COMMENT='学院购买课程表';

-- ----------------------------
-- Records of member_course
-- ----------------------------
INSERT INTO `member_course` VALUES ('113', '201812101752564708', null, '乐育学院购买课程', '7', '4', '1', null, '1544435576', '0.00', '0', '1', '', null, null, '1', '0', '1');
INSERT INTO `member_course` VALUES ('107', '201812041817277980', null, '乐育学院购买课程', '1', '1', '1', null, '1543918647', '0.00', '0', '1', '', null, null, '1', '0', '1');
INSERT INTO `member_course` VALUES ('108', '2018122122001480830585673282', null, '乐育学院购买课程', '1', '2', '1', null, '1543918688', '0.01', '0', '1', '', null, null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('109', '201812051704214230', null, '乐育学院购买课程', '7', '1', '1', null, '1544000661', '0.00', '0', '1', '', null, null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('110', '2018121922001400500592510047', null, '乐育学院购买课程', '7', '2', '1', null, '1544001670', '0.01', '0', '1', '', null, null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('112', '201812061520305957', null, '乐育学院购买课程', '1', '1', '2', '2', '1544080830', '5980.00', '0', '1', '', null, null, '1', '0', '1');
INSERT INTO `member_course` VALUES ('114', '201812111807395374', null, '乐育学院购买课程', '5', '4', '1', null, '1544522859', '0.00', '0', '1', '', null, null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('128', '201812211750456186', null, '乐育学院购买课程', '1', '3', '1', null, '1545385845', '0.00', '0', '1', '', null, null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('117', '201812191824295866', null, '乐育学院购买课程', '7', '3', '1', null, '1545215069', '0.00', '0', '1', '', null, null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('118', '2018122022001407470520341367', null, '乐育学院购买课程', '9', '2', '1', null, '1545287802', '0.01', '0', '1', '', null, null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('119', '201812201439382661', null, '乐育学院购买课程', '9', '3', '1', null, '1545287978', '0.00', '0', '1', '', null, null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('120', '2018122022001462040509433720', null, '乐育学院购买课程', '8', '1', '1', null, '1545288214', '1.00', '0', '1', '', null, null, '1', '0', '1');
INSERT INTO `member_course` VALUES ('121', '201812201444329798', null, '乐育学院购买课程', '9', '5', '1', null, '1545288272', '0.00', '0', '1', '', null, null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('122', '2018122022001407470517996628', null, '乐育学院购买课程', '9', '1', '1', null, '1545288371', '1.00', '0', '1', '', null, null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('123', '2018122022001462040507131572', null, '乐育学院购买课程', '8', '2', '1', null, '1545291735', '0.01', '0', '1', '', null, null, '1', '0', '1');
INSERT INTO `member_course` VALUES ('124', '2018122022001400500502907798', null, '乐育学院购买课程', '7', '6', '1', null, '1545293521', '0.01', '0', '1', '', null, null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('125', '2018122122001400500509118357', null, '乐育学院购买课程', '7', '7', '1', null, '1545382638', '0.01', '0', '1', '', null, null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('157', '2019021922001400501028481805', null, '乐育学院购买课程', '6', '13', '1', null, '1550558687', '0.01', '0', '1', '1550558857', '0', null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('158', '201902191447055503', null, '乐育学院购买课程', '9', '14', '1', null, '1550558825', '0.00', '0', '1', '1550558825', '0', null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('130', '2018122422001478830501154358', null, '乐育学院购买课程', '7', '8', '1', null, '1545637057', '0.01', '0', '1', '2018-12-24 16:45:27', null, null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('136', '201812241645063192', '2018122422001480830501155777', '乐育学院购买课程', '1', '7', '1', null, '1545641106', '0.01', '0', '1', '2018-12-24 16:45:27', null, null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('137', '201812241834069663', '2018122422001478830502207545', '乐育学院购买课程', '7', '9', '1', null, '1545647646', '0.02', '0', '1', '2018-12-24 18:34:31', null, null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('138', '201812250947577101', '2018122522001478830507104112', '乐育学院购买课程', '6', '9', '1', null, '1545702477', '0.02', '0', '1', '2018-12-25 09:48:33', null, null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('156', '201901301140386074', null, '乐育学院购买课程', '6', '4', '1', null, '1548819638', '0.01', '0', '0', null, '0', null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('140', '201812250954038563', '2018122522001478830504362521', '乐育学院购买课程', '6', '2', '1', null, '1545702843', '0.01', '0', '1', '2018-12-25 09:56:54', null, null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('159', '201902191501393625', null, '乐育学院购买课程', '6', '7', '1', null, '1550559699', '0.01', '0', '0', null, '0', null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('160', '201902191515196466', null, '乐育学院购买课程', '9', '15', '1', null, '1550560519', '0.00', '0', '1', '1550560519', '0', null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('161', '2019021922001400501028410450', null, '乐育学院购买课程', '6', '1', '3', null, '1550560528', '0.01', '0', '1', '1550560555', '0', null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('162', '2019021922001407471032702179', null, '乐育学院购买课程', '9', '1', '3', null, '1550560597', '0.01', '0', '1', '1550560621', '0', null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('163', '2019021922001407471032270137', null, '乐育学院购买课程', '9', '16', '1', null, '1550560803', '0.01', '0', '1', '1550560819', '0', null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('164', '201902191610237987', null, '乐育学院购买课程', '6', '1', '2', null, '1550563823', '0.01', '0', '0', null, '0', null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('165', '2019022022001407471032173984', null, '乐育学院购买课程', null, '1', '2', null, '1550632733', '0.01', '0', '1', '1550632763', '0', null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('166', '2019022022001407471032921006', null, '乐育学院购买课程', null, '17', '1', null, '1550633937', '0.10', '0', '1', '1550633955', '0', null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('167', '2019022022001407471032407806', null, '乐育学院购买课程', '9', '17', '1', null, '1550634191', '0.10', '0', '1', '1550634212', '0', null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('168', '2019022522001400501029797926', null, '乐育学院购买课程', '6', '17', '1', null, '1551084392', '0.10', '0', '1', '1551084427', '0', null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('169', '2019022522001407471035841133', null, '乐育学院购买课程', '9', '10', '1', null, '1551084509', '0.01', '0', '1', '1551084531', '0', null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('170', '2019022822001478831020533194', null, '乐育学院购买课程', '6', '16', '1', null, '1551335578', '0.01', '0', '1', '1551335596', '0', null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('171', '2019022822001495241018583050', null, '乐育学院购买课程', '10', '13', '1', null, '1551337523', '0.01', '0', '1', '1551340673', '0', null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('172', '201902281523316211', null, '乐育学院购买课程', '10', '1', '1', null, '1551338611', '-9.00', '0', '0', null, '2', null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('173', '2019022822001495241018570878', null, '乐育学院购买课程', '10', '6', '1', null, '1551338719', '0.01', '0', '1', '1551338769', '0', null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('174', '2019022822001495241018458874', null, '乐育学院购买课程', '10', '2', '1', null, '1551338978', '0.01', '0', '1', '1551338989', '0', null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('175', '2019022822001495241018354729', null, '乐育学院购买课程', '10', '4', '1', null, '1551340329', '0.01', '0', '1', '1551340363', '0', null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('176', '2019022822001495241018583048', null, '乐育学院购买课程', '10', '11', '1', null, '1551340496', '0.01', '0', '1', '1551340510', '0', null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('177', '2019022822001495241018584046', null, '乐育学院购买课程', '10', '16', '1', null, '1551340794', '0.01', '0', '1', '1551340806', '0', null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('178', '2019022822001495241018584049', null, '乐育学院购买课程', '10', '17', '1', null, '1551341272', '0.10', '0', '1', '1551341282', '0', null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('179', '2019022822001495241018639747', null, '乐育学院购买课程', '10', '10', '1', null, '1551341600', '0.01', '0', '1', '1551341613', '0', null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('180', '2019022822001495241018400941', null, '乐育学院购买课程', '11', '6', '1', null, '1551342217', '0.01', '0', '1', '1551342230', '0', null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('181', '2019022822001495241018593940', null, '乐育学院购买课程', '11', '4', '1', null, '1551342316', '0.01', '0', '1', '1551342325', '0', null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('182', '201902281639258311', null, '乐育学院购买课程', '6', '14', '1', null, '1551343165', '0.00', '0', '1', '1551343165', '0', null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('183', '2019022822001400501030287173', null, '乐育学院购买课程', '6', '10', '1', null, '1551343196', '0.01', '0', '1', '1551343216', '0', null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('184', '201902281642413949', null, '乐育学院购买课程', '6', '3', '1', null, '1551343361', '0.00', '0', '1', '1551343361', '0', null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('185', '201902281647428714', null, '乐育学院购买课程', '6', '1', '1', null, '1551343662', '0.00', '0', '1', '1551343662', '4', null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('186', '201904181742306217', null, '乐育学院购买课程', null, '6', '1', null, '1555580550', '0.01', '0', '0', null, '0', null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('187', '201904181752569291', null, '乐育学院购买课程', null, '6', '1', '0', '1555581176', '0.01', '0', '0', null, '0', null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('188', '201904190923212605', null, '乐育学院购买课程', '12', '1', '1', '0', '1555637001', '1.00', '0', '0', null, '0', null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('189', '2019041922001494871030074391', null, '乐育学院购买课程', '12', '6', '1', '0', '1555637027', '0.01', '0', '1', '1555637138', '0', null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('190', '2019041922001487951042001443', null, '乐育学院购买课程', '12', '8', '1', '0', '1555637745', '0.01', '0', '1', '1555637837', '0', null, '1', '0', '0');
INSERT INTO `member_course` VALUES ('191', '2019042322001487951043020846', null, '乐育学院购买课程', '12', '1', '2', '1', '1555999285', '0.01', '0', '1', '1555999323', '0', null, '1', '0', '0');

-- ----------------------------
-- Table structure for `member_info`
-- ----------------------------
DROP TABLE IF EXISTS `member_info`;
CREATE TABLE `member_info` (
  `id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `real_name` varchar(255) NOT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `account` double(255,2) DEFAULT '0.00',
  `imgurl` varchar(255) DEFAULT NULL,
  `trade` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `last_login_ip` varchar(255) DEFAULT NULL,
  `last_login_time` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '0禁用 1启用',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0正常 1删除',
  `video_url` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `before` varchar(50) DEFAULT NULL COMMENT '转行前工作',
  `work_place` varchar(50) DEFAULT NULL COMMENT '工作地点',
  `salary` varchar(50) DEFAULT NULL COMMENT '薪水',
  `position` varchar(50) DEFAULT NULL COMMENT '岗位',
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tel` (`tel`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='客户信息表';

-- ----------------------------
-- Records of member_info
-- ----------------------------
INSERT INTO `member_info` VALUES ('00000000001', 'ly321', '张同学', '15397309656', '610e47aa09754108f7c158f59a349aa3', '10000.01', '/static/upload/b5cd67bdc8ab5070/6e64edcce496f2f4.jpg', null, '湖北省', '武汉市', '1539854770', '122.241.156.192', '1550902961', '1', '0', '/static/upload/fc44b54edde1489d/c6ac7f5b99a39fdd.mp4', null, '应届毕业生', '深圳', '0-&gt;10000', '平安集团', '独学而无友，则孤陋而寡闻', '一个真实的自我，比任何外在的评价和光环更为可贵。当突破了外界的束缚后，随之而来的，是一种快乐而豁达的生活。');
INSERT INTO `member_info` VALUES ('00000000005', 'ly123', '李同学', '13125171109', '610e47aa09754108f7c158f59a349aa3', '0.00', '/static/upload/01c5d496e5779c08/25266f1771c1fc7e.jpg', null, '北京市', '北京市市辖区', '1542081997', '127.0.0.1', '1544522852', '1', '0', '', null, '人事专员', '北京', '6000-&gt;12000', '每日优鲜', '余生太短,一定要去 做有趣的事', null);
INSERT INTO `member_info` VALUES ('00000000006', '大王', '张同学', '18612643772', '03ea7ef7b488b6beafdc3d0c8029b8ca', '0.00', '/static/upload/665cca8460cd9d30/bef0935fbb0c705b.jpg', null, '北京市', '北京市市辖区', '1542771127', '127.0.0.1', '1555986347', '1', '0', '', null, '销售员', '郑州', '3000-&gt;8000', '河南优兰达生物科技有限公司', '精彩的人生一定是忙碌的', null);
INSERT INTO `member_info` VALUES ('00000000007', '乐育', '乐育', '17701201636', 'f2d21b817650d826a2d25e96b813bd9a', '0.00', 'http://lyxy.fuyaot.com/static/upload/630b0466416fd92d/dea9dd7204b28040.png', null, '北京市', '北京市市辖区', '1543820565', '219.143.131.27', '1547006697', '1', '0', '', null, null, null, null, null, '犹豫不决，才是对生命最大的耗费', '生活就是知道自己的价值，做自己能做到的与自己所应做到的。只要不至我于死地的，只能使我更坚强。');
INSERT INTO `member_info` VALUES ('00000000008', '发多少啊啊', '', '18811477900', '93785b784ab48093daebffe9a8f448f0', '0.00', '/static/index/static/frontend/default.png', null, '北京市', '北京市市辖区', '1544689679', '115.171.62.122', '1545288191', '1', '0', null, null, null, null, null, null, null, null);
INSERT INTO `member_info` VALUES ('00000000009', 'admin', '', '17701209221', 'b262fa7e75aa9e3a50b334ea10abfbff', '0.00', '/static/index/static/frontend/default.png', null, '北京市', '北京市市辖区', '1544690961', '115.171.60.88', '1551343439', '1', '0', null, null, null, null, null, null, null, null);
INSERT INTO `member_info` VALUES ('00000000011', '测试', '', '18256027172', '2420a24ff9e71c49f0e29e838f72ac12', '100.00', '/static/index/static/frontend/default.png', null, '北京市', '北京市市辖区', '1550830578', '27.18.29.223', '1551342206', '1', '0', null, null, null, null, null, null, null, null);
INSERT INTO `member_info` VALUES ('00000000012', '飞翔的荷兰人', '', '18672536007', '7ab1a2136c21726d19a5c53295eee1d4', '0.00', '/static/index/static/frontend/default.png', null, '北京市', '北京市市辖区', '1555636754', '127.0.0.1', '1556186552', '1', '0', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `member_login`
-- ----------------------------
DROP TABLE IF EXISTS `member_login`;
CREATE TABLE `member_login` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `login_time` int(11) DEFAULT NULL,
  `login_ip` varchar(255) DEFAULT NULL,
  `login_adress` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='学员登录记录表';

-- ----------------------------
-- Records of member_login
-- ----------------------------

-- ----------------------------
-- Table structure for `member_tidings`
-- ----------------------------
DROP TABLE IF EXISTS `member_tidings`;
CREATE TABLE `member_tidings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `stu_name` varchar(255) DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL COMMENT '0女 1男',
  `company` varchar(255) DEFAULT NULL,
  `wages` varchar(255) DEFAULT NULL COMMENT '就业工资',
  `education` varchar(255) DEFAULT NULL COMMENT '学历',
  `welfare` varchar(255) DEFAULT NULL COMMENT '福利待遇',
  `imgurl` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '1启用0禁用',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0正常1删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `de_id` int(10) unsigned DEFAULT NULL COMMENT '关联学位课程表 id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='就业喜报表';

-- ----------------------------
-- Records of member_tidings
-- ----------------------------
INSERT INTO `member_tidings` VALUES ('1', null, '白白白', '1', '北京浩桦**有限公司', '12000', '专科', '五险一金', '/static/upload/58dd5b9e12b136a9/c0cd7c3db2fc882c.jpg', '1', '0', '2019-04-23 11:16:47', '1');
INSERT INTO `member_tidings` VALUES ('2', null, '关关关', '1', '时趣**有限公司', '14000，14薪', '本科', '五险一金', '/static/upload/43a64c22b1310f76/3c1ecb08af8c1261.jpg', '1', '0', '2019-04-23 18:42:55', '2');

-- ----------------------------
-- Table structure for `problem`
-- ----------------------------
DROP TABLE IF EXISTS `problem`;
CREATE TABLE `problem` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '删除状态(1:删除,0:未删)',
  `course_type` tinyint(1) DEFAULT NULL COMMENT '1免费课程2学位课程3七天课程4公开课',
  `course_id` int(11) DEFAULT NULL,
  `degree_id` int(10) unsigned NOT NULL COMMENT '关联学位课程id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='问题列表';

-- ----------------------------
-- Records of problem
-- ----------------------------
INSERT INTO `problem` VALUES ('1', '我是零基础小白，能够学习乐育学院学位课程吗？', '可以，无论你对全栈开发有着浓厚的兴趣的小白，想成为一个优秀的全栈工程师，还是你已经是前端或者后端开发者，打算夯实基础，拓展知识 ，增加涨薪机会，这门课程都非常适合你的，我们的课程内容深入浅出，课程涵盖个难度等级，能适应所有不同程度的需求。', '2019-04-23 11:42:42', '1', '0', '2', null, '1');
INSERT INTO `problem` VALUES ('2', '学完此课程后能达到什么水平？', '课程中会涉及几个小项目，其中一个比较重要的作业是实现ATM信用卡程序，代码量在500行左右，你学完此课程，至少可以写个500行的不太复杂的程序', '2019-04-23 11:42:52', '1', '0', '1', '1', '2');
INSERT INTO `problem` VALUES ('3', '学习过程中碰到疑问怎么办？', '报名后，会提示你加入我们的学习群，学习过程中遇到的问题可以在群里与小伙伴讨论，或询问导师帮助。', '2018-12-12 16:37:17', '1', '0', '1', '2', '0');

-- ----------------------------
-- Table structure for `system_auth`
-- ----------------------------
DROP TABLE IF EXISTS `system_auth`;
CREATE TABLE `system_auth` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL COMMENT '权限名称',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态(1:禁用,2:启用)',
  `sort` smallint(6) unsigned DEFAULT '0' COMMENT '排序权重',
  `desc` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `create_by` bigint(11) unsigned DEFAULT '0' COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_system_auth_title` (`title`) USING BTREE,
  KEY `index_system_auth_status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统权限表';

-- ----------------------------
-- Records of system_auth
-- ----------------------------
INSERT INTO `system_auth` VALUES ('1', '管理员1', '1', '0', '123123', '0', '2018-10-22 13:54:55');

-- ----------------------------
-- Table structure for `system_auth_node`
-- ----------------------------
DROP TABLE IF EXISTS `system_auth_node`;
CREATE TABLE `system_auth_node` (
  `auth` bigint(20) unsigned DEFAULT NULL COMMENT '角色ID',
  `node` varchar(200) DEFAULT NULL COMMENT '节点路径',
  KEY `index_system_auth_auth` (`auth`) USING BTREE,
  KEY `index_system_auth_node` (`node`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色与节点关系表';

-- ----------------------------
-- Records of system_auth_node
-- ----------------------------
INSERT INTO `system_auth_node` VALUES ('1', 'web');
INSERT INTO `system_auth_node` VALUES ('1', 'web/banner');
INSERT INTO `system_auth_node` VALUES ('1', 'web/banner/index');
INSERT INTO `system_auth_node` VALUES ('1', 'web/banner/add');
INSERT INTO `system_auth_node` VALUES ('1', 'web/banner/edit');
INSERT INTO `system_auth_node` VALUES ('1', 'web/banner/del');
INSERT INTO `system_auth_node` VALUES ('1', 'web/banner/forbid');
INSERT INTO `system_auth_node` VALUES ('1', 'web/banner/resume');
INSERT INTO `system_auth_node` VALUES ('1', 'web/course');
INSERT INTO `system_auth_node` VALUES ('1', 'web/course/index');
INSERT INTO `system_auth_node` VALUES ('1', 'web/course/add');
INSERT INTO `system_auth_node` VALUES ('1', 'web/course/edit');
INSERT INTO `system_auth_node` VALUES ('1', 'web/course/del');
INSERT INTO `system_auth_node` VALUES ('1', 'web/course/forbid');
INSERT INTO `system_auth_node` VALUES ('1', 'web/course/resume');
INSERT INTO `system_auth_node` VALUES ('1', 'web/member');
INSERT INTO `system_auth_node` VALUES ('1', 'web/member/index');
INSERT INTO `system_auth_node` VALUES ('1', 'web/member/auth');
INSERT INTO `system_auth_node` VALUES ('1', 'web/member/add');
INSERT INTO `system_auth_node` VALUES ('1', 'web/member/edit');
INSERT INTO `system_auth_node` VALUES ('1', 'web/member/pass');
INSERT INTO `system_auth_node` VALUES ('1', 'web/member/del');
INSERT INTO `system_auth_node` VALUES ('1', 'web/member/forbid');
INSERT INTO `system_auth_node` VALUES ('1', 'web/member/resume');

-- ----------------------------
-- Table structure for `system_config`
-- ----------------------------
DROP TABLE IF EXISTS `system_config`;
CREATE TABLE `system_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '配置编码',
  `value` varchar(500) DEFAULT NULL COMMENT '配置值',
  PRIMARY KEY (`id`),
  KEY `index_system_config_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统参数配置';

-- ----------------------------
-- Records of system_config
-- ----------------------------
INSERT INTO `system_config` VALUES ('148', 'site_name', '乐育学院');
INSERT INTO `system_config` VALUES ('149', 'site_copy', '乐育学院 © 2014~2018');
INSERT INTO `system_config` VALUES ('150', 'seo_keywords', 'html、js教程、js基础入门、深入浅出的js面向对象、ajax课程、node.js课程、angular课程、设计模式、vue课程、react课程、canvas游戏课程、炫酷css3特效课程等等，希望帮助更多的0基础学员，让更多的学员走上前端学习的道路！在线课程,在线教育,乐育,乐育学院');
INSERT INTO `system_config` VALUES ('151', 'seo_description', '乐育学院采用线上视频及直播方式授课，授课模式新颖，杜绝枯燥，为在校大学生、应届毕业生、社会就业者提高性价比全栈前端课程。目前爱创课堂学员遍布在百度、阿里、腾讯、京东、网易、搜狐、美团、滴滴、聚美、搜狗等企业就业，学员就业薪资已达行业新高！');
INSERT INTO `system_config` VALUES ('164', 'storage_type', 'local');
INSERT INTO `system_config` VALUES ('165', 'storage_qiniu_is_https', '1');
INSERT INTO `system_config` VALUES ('166', 'storage_qiniu_bucket', 'static');
INSERT INTO `system_config` VALUES ('167', 'storage_qiniu_domain', 'static.ctolog.com');
INSERT INTO `system_config` VALUES ('168', 'storage_qiniu_access_key', 'admin');
INSERT INTO `system_config` VALUES ('169', 'storage_qiniu_secret_key', 'admin');
INSERT INTO `system_config` VALUES ('170', 'storage_qiniu_region', '华东');
INSERT INTO `system_config` VALUES ('173', 'app_name', '乐育学院');
INSERT INTO `system_config` VALUES ('174', 'app_version', 'lyxy');
INSERT INTO `system_config` VALUES ('176', 'browser_icon', 'http://lyxy.td3131.com/static/upload/2d92167dc313cb74/1b5a6e724e9306e0.png');
INSERT INTO `system_config` VALUES ('184', 'wechat_appid', 'wx60a43dd8161666d4');
INSERT INTO `system_config` VALUES ('185', 'wechat_appsecret', '062938ddcfe0d69786e4e3d9dcbb08aa');
INSERT INTO `system_config` VALUES ('186', 'wechat_token', 'mytoken');
INSERT INTO `system_config` VALUES ('187', 'wechat_encodingaeskey', 'KHyoWLoS7oLZYkB4PokMTfA5sm6Hrqc9Tzgn9iXc0YH');
INSERT INTO `system_config` VALUES ('188', 'wechat_mch_id', '1332187001');
INSERT INTO `system_config` VALUES ('189', 'wechat_partnerkey', 'A82DC5BD1F3359081049C568D8502BC5');
INSERT INTO `system_config` VALUES ('194', 'wechat_cert_key', '');
INSERT INTO `system_config` VALUES ('196', 'wechat_cert_cert', '');
INSERT INTO `system_config` VALUES ('197', 'tongji_baidu_key', 'aa2f9869e9b578122e4692de2bd9f80f');
INSERT INTO `system_config` VALUES ('198', 'tongji_cnzz_key', '1261854404');
INSERT INTO `system_config` VALUES ('199', 'storage_oss_bucket', 'video-cktwl');
INSERT INTO `system_config` VALUES ('200', 'storage_oss_keyid', 'admin');
INSERT INTO `system_config` VALUES ('201', 'storage_oss_secret', 'admin');
INSERT INTO `system_config` VALUES ('202', 'storage_oss_domain', 'video-cktwl.oss-cn-shanghai.aliyuncs.com');
INSERT INTO `system_config` VALUES ('203', 'storage_oss_is_https', '1');
INSERT INTO `system_config` VALUES ('204', 'storage_local_exts', 'png,jpg,rar,doc,jpeg,zip,mp4');

-- ----------------------------
-- Table structure for `system_log`
-- ----------------------------
DROP TABLE IF EXISTS `system_log`;
CREATE TABLE `system_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ip` char(15) NOT NULL DEFAULT '' COMMENT '操作者IP地址',
  `node` char(200) NOT NULL DEFAULT '' COMMENT '当前操作节点',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '操作人用户名',
  `action` varchar(200) NOT NULL DEFAULT '' COMMENT '操作行为',
  `content` text NOT NULL COMMENT '操作内容描述',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8 COMMENT='系统操作日志表';

-- ----------------------------
-- Records of system_log
-- ----------------------------
INSERT INTO `system_log` VALUES ('1', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-22 09:11:00');
INSERT INTO `system_log` VALUES ('2', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-10-22 09:27:26');
INSERT INTO `system_log` VALUES ('3', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-22 10:43:20');
INSERT INTO `system_log` VALUES ('4', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-10-23 09:12:48');
INSERT INTO `system_log` VALUES ('5', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-23 09:13:09');
INSERT INTO `system_log` VALUES ('6', '127.0.0.1', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2018-10-23 09:13:36');
INSERT INTO `system_log` VALUES ('7', '127.0.0.1', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2018-10-23 09:35:56');
INSERT INTO `system_log` VALUES ('8', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-24 09:15:45');
INSERT INTO `system_log` VALUES ('9', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-10-24 09:16:47');
INSERT INTO `system_log` VALUES ('10', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-24 09:17:18');
INSERT INTO `system_log` VALUES ('11', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-10-24 09:18:50');
INSERT INTO `system_log` VALUES ('12', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-24 09:19:14');
INSERT INTO `system_log` VALUES ('13', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-10-24 10:24:08');
INSERT INTO `system_log` VALUES ('14', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-24 10:25:10');
INSERT INTO `system_log` VALUES ('15', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-10-24 10:33:11');
INSERT INTO `system_log` VALUES ('16', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-24 10:36:21');
INSERT INTO `system_log` VALUES ('17', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-10-24 10:46:16');
INSERT INTO `system_log` VALUES ('18', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-24 10:46:21');
INSERT INTO `system_log` VALUES ('19', '127.0.0.1', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2018-10-24 14:20:30');
INSERT INTO `system_log` VALUES ('20', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-25 09:21:01');
INSERT INTO `system_log` VALUES ('21', '127.0.0.1', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2018-10-25 10:12:04');
INSERT INTO `system_log` VALUES ('22', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-27 16:30:45');
INSERT INTO `system_log` VALUES ('23', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-10-29 09:39:14');
INSERT INTO `system_log` VALUES ('24', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-29 09:39:41');
INSERT INTO `system_log` VALUES ('25', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-29 09:40:42');
INSERT INTO `system_log` VALUES ('26', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-31 15:15:48');
INSERT INTO `system_log` VALUES ('27', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-01 13:17:41');
INSERT INTO `system_log` VALUES ('28', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-11-01 13:40:01');
INSERT INTO `system_log` VALUES ('29', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-01 13:40:06');
INSERT INTO `system_log` VALUES ('30', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-02 17:26:27');
INSERT INTO `system_log` VALUES ('31', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-03 09:30:15');
INSERT INTO `system_log` VALUES ('32', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-05 12:00:17');
INSERT INTO `system_log` VALUES ('33', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-05 13:57:05');
INSERT INTO `system_log` VALUES ('34', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-05 14:02:28');
INSERT INTO `system_log` VALUES ('35', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-05 14:52:31');
INSERT INTO `system_log` VALUES ('36', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-07 09:03:19');
INSERT INTO `system_log` VALUES ('37', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-07 09:07:40');
INSERT INTO `system_log` VALUES ('38', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-07 09:08:51');
INSERT INTO `system_log` VALUES ('39', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-11-07 15:52:27');
INSERT INTO `system_log` VALUES ('40', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-07 15:52:34');
INSERT INTO `system_log` VALUES ('41', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-08 09:34:18');
INSERT INTO `system_log` VALUES ('42', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-11-08 11:55:06');
INSERT INTO `system_log` VALUES ('43', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-08 11:55:11');
INSERT INTO `system_log` VALUES ('44', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-09 10:01:48');
INSERT INTO `system_log` VALUES ('45', '27.18.180.225', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-09 18:26:35');
INSERT INTO `system_log` VALUES ('46', '27.17.243.131', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-13 10:12:16');
INSERT INTO `system_log` VALUES ('47', '219.143.129.37', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-13 11:06:21');
INSERT INTO `system_log` VALUES ('48', '115.171.62.98', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-13 19:24:14');
INSERT INTO `system_log` VALUES ('49', '27.17.243.131', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-17 12:10:45');
INSERT INTO `system_log` VALUES ('50', '219.143.130.198', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-21 10:09:22');
INSERT INTO `system_log` VALUES ('51', '27.18.181.98', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-21 10:54:10');
INSERT INTO `system_log` VALUES ('52', '27.18.181.98', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-21 10:58:18');
INSERT INTO `system_log` VALUES ('53', '27.18.181.98', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-21 11:05:32');
INSERT INTO `system_log` VALUES ('54', '219.143.130.198', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-21 11:20:49');
INSERT INTO `system_log` VALUES ('55', '115.171.62.90', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-22 15:14:42');
INSERT INTO `system_log` VALUES ('56', '27.18.181.98', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-22 16:24:44');
INSERT INTO `system_log` VALUES ('57', '27.18.181.98', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-23 13:21:14');
INSERT INTO `system_log` VALUES ('58', '27.18.181.98', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-24 13:27:12');
INSERT INTO `system_log` VALUES ('59', '27.17.123.191', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-01 09:10:40');
INSERT INTO `system_log` VALUES ('60', '219.143.130.87', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-03 15:10:38');
INSERT INTO `system_log` VALUES ('61', '27.17.123.191', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-03 16:56:51');
INSERT INTO `system_log` VALUES ('62', '27.17.123.191', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-04 17:48:30');
INSERT INTO `system_log` VALUES ('63', '27.17.123.191', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-05 09:10:55');
INSERT INTO `system_log` VALUES ('64', '27.17.123.191', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-05 17:29:58');
INSERT INTO `system_log` VALUES ('65', '27.17.123.191', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-06 11:52:22');
INSERT INTO `system_log` VALUES ('66', '115.171.61.131', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-07 16:51:07');
INSERT INTO `system_log` VALUES ('67', '27.17.123.191', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-08 09:15:59');
INSERT INTO `system_log` VALUES ('68', '27.17.123.191', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-08 15:39:26');
INSERT INTO `system_log` VALUES ('69', '219.143.128.45', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-10 17:37:20');
INSERT INTO `system_log` VALUES ('70', '115.171.63.224', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-11 09:53:30');
INSERT INTO `system_log` VALUES ('71', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-11 18:04:19');
INSERT INTO `system_log` VALUES ('72', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-12 09:39:33');
INSERT INTO `system_log` VALUES ('73', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-12 13:25:28');
INSERT INTO `system_log` VALUES ('74', '219.143.129.194', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-12 18:23:32');
INSERT INTO `system_log` VALUES ('75', '115.171.60.229', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-13 16:28:26');
INSERT INTO `system_log` VALUES ('76', '115.171.60.229', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-13 16:46:18');
INSERT INTO `system_log` VALUES ('77', '27.18.180.31', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-18 19:09:07');
INSERT INTO `system_log` VALUES ('78', '219.143.130.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-19 11:45:54');
INSERT INTO `system_log` VALUES ('79', '27.18.180.31', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-19 13:43:20');
INSERT INTO `system_log` VALUES ('80', '27.18.180.31', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2018-12-19 13:53:32');
INSERT INTO `system_log` VALUES ('81', '219.143.130.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-19 17:21:29');
INSERT INTO `system_log` VALUES ('82', '219.143.130.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-19 17:24:19');
INSERT INTO `system_log` VALUES ('83', '219.143.130.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-19 18:11:44');
INSERT INTO `system_log` VALUES ('84', '27.18.181.112', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-20 09:42:32');
INSERT INTO `system_log` VALUES ('85', '115.171.62.122', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-20 14:11:36');
INSERT INTO `system_log` VALUES ('86', '115.171.62.122', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-20 14:14:02');
INSERT INTO `system_log` VALUES ('87', '115.171.62.122', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-20 16:07:06');
INSERT INTO `system_log` VALUES ('88', '27.18.181.112', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-21 11:36:12');
INSERT INTO `system_log` VALUES ('89', '115.171.61.225', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-21 16:55:21');
INSERT INTO `system_log` VALUES ('90', '115.171.61.225', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-21 17:01:30');
INSERT INTO `system_log` VALUES ('91', '27.18.181.112', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-21 17:53:40');
INSERT INTO `system_log` VALUES ('92', '219.143.129.21', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-24 15:34:40');
INSERT INTO `system_log` VALUES ('93', '219.143.130.111', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-25 14:56:00');
INSERT INTO `system_log` VALUES ('94', '27.18.181.112', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-25 15:02:18');
INSERT INTO `system_log` VALUES ('95', '219.143.130.111', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-25 19:22:57');
INSERT INTO `system_log` VALUES ('96', '219.143.130.111', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-12-25 19:23:09');
INSERT INTO `system_log` VALUES ('97', '219.143.130.111', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-25 19:24:09');
INSERT INTO `system_log` VALUES ('98', '27.18.181.112', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-28 17:23:42');
INSERT INTO `system_log` VALUES ('99', '27.18.30.68', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-02 09:11:30');
INSERT INTO `system_log` VALUES ('100', '27.18.30.68', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-01-02 09:11:47');
INSERT INTO `system_log` VALUES ('101', '27.18.30.68', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2019-01-02 09:24:10');
INSERT INTO `system_log` VALUES ('102', '27.18.30.68', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2019-01-02 09:32:44');
INSERT INTO `system_log` VALUES ('103', '219.143.128.102', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-03 15:50:20');
INSERT INTO `system_log` VALUES ('104', '27.18.30.68', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-03 16:01:55');
INSERT INTO `system_log` VALUES ('105', '219.143.131.98', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-04 10:43:18');
INSERT INTO `system_log` VALUES ('106', '27.18.30.68', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-04 14:52:24');
INSERT INTO `system_log` VALUES ('107', '27.18.30.68', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-04 14:53:02');
INSERT INTO `system_log` VALUES ('108', '27.18.30.68', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-08 15:39:02');
INSERT INTO `system_log` VALUES ('109', '27.17.122.89', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-09 10:47:08');
INSERT INTO `system_log` VALUES ('110', '219.143.131.27', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-09 12:06:35');
INSERT INTO `system_log` VALUES ('111', '27.17.122.89', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-10 14:05:20');
INSERT INTO `system_log` VALUES ('112', '27.17.122.89', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-11 11:41:02');
INSERT INTO `system_log` VALUES ('113', '219.143.130.212', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-23 16:35:00');
INSERT INTO `system_log` VALUES ('114', '219.143.130.212', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-24 14:46:29');
INSERT INTO `system_log` VALUES ('115', '27.18.148.50', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-29 15:39:10');
INSERT INTO `system_log` VALUES ('116', '219.143.130.212', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-30 11:17:02');
INSERT INTO `system_log` VALUES ('117', '219.143.130.212', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-31 11:34:03');
INSERT INTO `system_log` VALUES ('118', '115.171.61.67', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-19 14:29:53');
INSERT INTO `system_log` VALUES ('119', '115.171.61.67', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-19 14:36:21');
INSERT INTO `system_log` VALUES ('120', '219.143.131.51', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-20 11:26:20');
INSERT INTO `system_log` VALUES ('121', '27.18.28.168', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-22 17:21:39');
INSERT INTO `system_log` VALUES ('122', '115.171.62.216', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-25 16:54:08');
INSERT INTO `system_log` VALUES ('123', '115.171.62.216', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-25 17:18:18');
INSERT INTO `system_log` VALUES ('124', '27.18.29.223', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-28 15:07:18');
INSERT INTO `system_log` VALUES ('125', '115.171.60.88', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-28 16:45:43');
INSERT INTO `system_log` VALUES ('126', '27.17.122.190', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-06 14:55:39');
INSERT INTO `system_log` VALUES ('127', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-18 16:08:49');
INSERT INTO `system_log` VALUES ('128', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-23 09:15:30');
INSERT INTO `system_log` VALUES ('129', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-23 09:33:35');
INSERT INTO `system_log` VALUES ('130', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-24 11:42:02');

-- ----------------------------
-- Table structure for `system_menu`
-- ----------------------------
DROP TABLE IF EXISTS `system_menu`;
CREATE TABLE `system_menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '名称',
  `node` varchar(200) NOT NULL DEFAULT '' COMMENT '节点代码',
  `icon` varchar(100) NOT NULL DEFAULT '' COMMENT '菜单图标',
  `url` varchar(400) NOT NULL DEFAULT '' COMMENT '链接',
  `params` varchar(500) DEFAULT '' COMMENT '链接参数',
  `target` varchar(20) NOT NULL DEFAULT '_self' COMMENT '链接打开方式',
  `sort` int(11) unsigned DEFAULT '0' COMMENT '菜单排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `create_by` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `index_system_menu_node` (`node`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COMMENT='系统菜单表';

-- ----------------------------
-- Records of system_menu
-- ----------------------------
INSERT INTO `system_menu` VALUES ('2', '0', '系统管理', '', '', '#', '', '_self', '2000', '1', '0', '2015-11-16 19:15:38');
INSERT INTO `system_menu` VALUES ('4', '2', '系统配置', '', '', '#', '', '_self', '100', '1', '0', '2016-03-14 18:12:55');
INSERT INTO `system_menu` VALUES ('5', '4', '网站参数', '', 'fa fa-apple', 'admin/config/index', '', '_self', '20', '1', '0', '2016-05-06 14:36:49');
INSERT INTO `system_menu` VALUES ('6', '4', '文件存储', '', 'fa fa-save', 'admin/config/file', '', '_self', '30', '1', '0', '2016-05-06 14:39:43');
INSERT INTO `system_menu` VALUES ('9', '20', '操作日志', '', 'glyphicon glyphicon-console', 'admin/log/index', '', '_self', '50', '1', '0', '2017-03-24 15:49:31');
INSERT INTO `system_menu` VALUES ('19', '20', '权限管理', '', 'fa fa-user-secret', 'admin/auth/index', '', '_self', '10', '1', '0', '2015-11-17 13:18:12');
INSERT INTO `system_menu` VALUES ('20', '2', '系统权限', '', '', '#', '', '_self', '3000', '1', '0', '2016-03-14 18:11:41');
INSERT INTO `system_menu` VALUES ('21', '20', '系统菜单', '', 'glyphicon glyphicon-menu-hamburger', 'admin/menu/index', '', '_self', '30', '1', '0', '2015-11-16 19:16:16');
INSERT INTO `system_menu` VALUES ('22', '20', '节点管理', '', 'fa fa-ellipsis-v', 'admin/node/index', '', '_self', '20', '1', '0', '2015-11-16 19:16:16');
INSERT INTO `system_menu` VALUES ('29', '20', '系统用户', '', 'fa fa-users', 'admin/user/index', '', '_self', '40', '1', '0', '2016-10-31 14:31:40');
INSERT INTO `system_menu` VALUES ('94', '0', '后台首页', '', '', 'admin/index/main', '', '_self', '1000', '1', '0', '2017-08-08 11:28:43');
INSERT INTO `system_menu` VALUES ('95', '0', '前台管理', '', '', '#', '', '_self', '4000', '1', '0', '2018-10-22 14:11:06');
INSERT INTO `system_menu` VALUES ('96', '95', '网站管理', '', '', '#', '', '_self', '200', '1', '0', '2018-10-22 14:14:10');
INSERT INTO `system_menu` VALUES ('97', '95', '客户管理', '', '', '#', '', '_self', '300', '1', '0', '2018-10-22 14:14:35');
INSERT INTO `system_menu` VALUES ('98', '96', '轮播图管理', '', 'fa fa-image', '/web/banner/index', '', '_self', '0', '1', '0', '2018-10-22 14:15:01');
INSERT INTO `system_menu` VALUES ('99', '97', '学员管理', '', 'fa fa-street-view', 'web/member/index', '', '_self', '0', '1', '0', '2018-10-23 10:32:21');
INSERT INTO `system_menu` VALUES ('100', '102', '免费课程管理', '', 'fa fa-film', 'web/course/index', '', '_self', '0', '1', '0', '2018-10-23 14:29:13');
INSERT INTO `system_menu` VALUES ('102', '95', '课程管理', '', '', '#', '', '_self', '100', '1', '0', '2018-10-24 15:53:01');
INSERT INTO `system_menu` VALUES ('105', '96', '合作企业', '', 'fa fa-globe', 'web/company/index', '', '_self', '0', '1', '0', '2018-10-25 15:21:40');
INSERT INTO `system_menu` VALUES ('106', '102', '课程类型管理', '', 'fa fa-cubes', 'web/ctype/index', '', '_self', '0', '1', '0', '2018-11-01 13:49:42');
INSERT INTO `system_menu` VALUES ('107', '97', '留言管理', '', 'fa fa-commenting-o', 'web/msg/index', '', '_self', '0', '1', '0', '2018-11-02 17:46:20');
INSERT INTO `system_menu` VALUES ('108', '102', '教材管理', '', 'fa fa-book', 'web/material/index', '', '_self', '0', '1', '0', '2018-11-03 14:20:09');
INSERT INTO `system_menu` VALUES ('109', '102', '学位课程', '', 'fa fa-mortar-board', 'web/degree/index', '', '_self', '0', '1', '0', '2018-11-07 15:53:59');
INSERT INTO `system_menu` VALUES ('110', '102', '七天课程', '', 'fa fa-dashboard', 'web/camp/index', '', '_self', '0', '1', '0', '2018-11-21 10:55:57');
INSERT INTO `system_menu` VALUES ('111', '102', '公开课程', '', 'fa fa-cloud', 'web/open/index', '', '_self', '0', '1', '0', '2018-11-24 13:28:32');
INSERT INTO `system_menu` VALUES ('112', '96', '问题管理', '', 'fa fa-question-circle', 'web/problem/index', '', '_self', '0', '1', '0', '2018-11-24 13:29:06');
INSERT INTO `system_menu` VALUES ('113', '97', '就业喜报', '', 'fa fa-envelope-square', 'web/tidings/index', '', '_self', '0', '1', '0', '2018-11-24 13:29:36');
INSERT INTO `system_menu` VALUES ('114', '95', '订单管理', '', '', '#', '', '_self', '0', '1', '0', '2019-01-04 14:54:26');
INSERT INTO `system_menu` VALUES ('115', '114', '订单管理', '', 'fa fa-building', 'web/order/index', '', '_self', '0', '1', '0', '2019-01-04 14:55:29');
INSERT INTO `system_menu` VALUES ('116', '97', '优惠券管理', '', 'fa fa-credit-card-alt', 'web/mcoupon/index', '', '_self', '0', '1', '0', '2019-01-09 14:50:20');
INSERT INTO `system_menu` VALUES ('117', '102', '轻课', '', '', 'web/job/index', '', '_self', '0', '1', '0', '2019-04-25 16:05:53');
INSERT INTO `system_menu` VALUES ('118', '96', '帮助中心', '', 'fa fa-product-hunt', 'web/bang/index', '', '_self', '0', '1', '0', '2019-04-25 16:07:34');

-- ----------------------------
-- Table structure for `system_node`
-- ----------------------------
DROP TABLE IF EXISTS `system_node`;
CREATE TABLE `system_node` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `node` varchar(100) DEFAULT NULL COMMENT '节点代码',
  `title` varchar(500) DEFAULT NULL COMMENT '节点标题',
  `is_menu` tinyint(1) unsigned DEFAULT '0' COMMENT '是否可设置为菜单',
  `is_auth` tinyint(1) unsigned DEFAULT '1' COMMENT '是否启动RBAC权限控制',
  `is_login` tinyint(1) unsigned DEFAULT '1' COMMENT '是否启动登录控制',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `index_system_node_node` (`node`)
) ENGINE=InnoDB AUTO_INCREMENT=375 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统节点表';

-- ----------------------------
-- Records of system_node
-- ----------------------------
INSERT INTO `system_node` VALUES ('126', 'admin/index/info', null, '0', '1', '1', '2018-10-24 10:00:11');
INSERT INTO `system_node` VALUES ('127', 'admin/index/pass', null, '0', '1', '1', '2018-10-24 09:59:32');
INSERT INTO `system_node` VALUES ('128', 'admin/index/index', null, '0', '1', '1', '2018-10-24 09:59:19');
INSERT INTO `system_node` VALUES ('129', 'admin/index/main', '', '0', '1', '1', '2018-10-24 09:52:19');
INSERT INTO `system_node` VALUES ('130', 'admin/index', '后台首页', '0', '1', '1', '2018-10-24 09:51:44');
INSERT INTO `system_node` VALUES ('131', 'admin/auth/index', '权限列表', '1', '1', '1', '2017-08-23 15:45:42');
INSERT INTO `system_node` VALUES ('132', 'admin', '后台管理', '0', '1', '1', '2017-08-23 15:45:44');
INSERT INTO `system_node` VALUES ('133', 'admin/auth/apply', '节点授权', '0', '1', '1', '2017-08-23 16:05:18');
INSERT INTO `system_node` VALUES ('134', 'admin/auth/add', '添加授权', '0', '1', '1', '2017-08-23 16:05:19');
INSERT INTO `system_node` VALUES ('135', 'admin/auth/edit', '编辑权限', '0', '1', '1', '2017-08-23 16:05:19');
INSERT INTO `system_node` VALUES ('136', 'admin/auth/forbid', '禁用权限', '0', '1', '1', '2017-08-23 16:05:20');
INSERT INTO `system_node` VALUES ('137', 'admin/auth/resume', '启用权限', '0', '1', '1', '2017-08-23 16:05:20');
INSERT INTO `system_node` VALUES ('138', 'admin/auth/del', '删除权限', '0', '1', '1', '2017-08-23 16:05:21');
INSERT INTO `system_node` VALUES ('139', 'admin/config/index', '参数配置', '1', '1', '1', '2017-08-23 16:05:22');
INSERT INTO `system_node` VALUES ('140', 'admin/config/file', '文件配置', '1', '1', '1', '2017-08-23 16:05:22');
INSERT INTO `system_node` VALUES ('141', 'admin/log/index', '日志列表', '1', '1', '1', '2017-08-23 16:05:23');
INSERT INTO `system_node` VALUES ('142', 'admin/log/del', '删除日志', '0', '1', '1', '2017-08-23 16:05:24');
INSERT INTO `system_node` VALUES ('143', 'admin/menu/index', '菜单列表', '1', '1', '1', '2017-08-23 16:05:25');
INSERT INTO `system_node` VALUES ('144', 'admin/menu/add', '添加菜单', '0', '1', '1', '2017-08-23 16:05:25');
INSERT INTO `system_node` VALUES ('145', 'admin/menu/edit', '编辑菜单', '0', '1', '1', '2017-08-23 16:05:26');
INSERT INTO `system_node` VALUES ('146', 'admin/menu/del', '删除菜单', '0', '1', '1', '2017-08-23 16:05:26');
INSERT INTO `system_node` VALUES ('147', 'admin/menu/forbid', '禁用菜单', '0', '1', '1', '2017-08-23 16:05:27');
INSERT INTO `system_node` VALUES ('148', 'admin/menu/resume', '启用菜单', '0', '1', '1', '2017-08-23 16:05:28');
INSERT INTO `system_node` VALUES ('149', 'admin/node/index', '节点列表', '1', '1', '1', '2017-08-23 16:05:29');
INSERT INTO `system_node` VALUES ('150', 'admin/node/save', '节点更新', '0', '1', '1', '2017-08-23 16:05:30');
INSERT INTO `system_node` VALUES ('151', 'admin/user/index', '用户管理', '1', '1', '1', '2017-08-23 16:05:31');
INSERT INTO `system_node` VALUES ('152', 'admin/user/auth', '用户授权', '0', '1', '1', '2017-08-23 16:05:32');
INSERT INTO `system_node` VALUES ('153', 'admin/user/add', '添加用户', '0', '1', '1', '2017-08-23 16:05:33');
INSERT INTO `system_node` VALUES ('154', 'admin/user/edit', '编辑用户', '0', '1', '1', '2017-08-23 16:05:33');
INSERT INTO `system_node` VALUES ('155', 'admin/user/pass', '用户密码', '0', '1', '1', '2017-08-23 16:05:34');
INSERT INTO `system_node` VALUES ('156', 'admin/user/del', '删除用户', '0', '1', '1', '2017-08-23 16:05:34');
INSERT INTO `system_node` VALUES ('157', 'admin/user/forbid', '禁用用户', '0', '1', '1', '2017-08-23 16:05:34');
INSERT INTO `system_node` VALUES ('158', 'admin/user/resume', '启用用户', '0', '1', '1', '2017-08-23 16:05:35');
INSERT INTO `system_node` VALUES ('159', 'demo/plugs/file', '文件上传', '1', '0', '1', '2017-08-23 16:05:36');
INSERT INTO `system_node` VALUES ('160', 'demo/plugs/region', '区域选择', '1', '0', '1', '2017-08-23 16:05:36');
INSERT INTO `system_node` VALUES ('161', 'demo/plugs/editor', '富文本器', '1', '0', '1', '2017-08-23 16:05:37');
INSERT INTO `system_node` VALUES ('162', 'wechat/config/index', '微信参数', '1', '1', '1', '2017-08-23 16:05:37');
INSERT INTO `system_node` VALUES ('163', 'wechat/config/pay', '微信支付', '0', '1', '1', '2017-08-23 16:05:38');
INSERT INTO `system_node` VALUES ('164', 'wechat/fans/index', '粉丝列表', '1', '1', '1', '2017-08-23 16:05:39');
INSERT INTO `system_node` VALUES ('165', 'wechat/fans/back', '粉丝黑名单', '1', '1', '1', '2017-08-23 16:05:39');
INSERT INTO `system_node` VALUES ('166', 'wechat/fans/backadd', '移入黑名单', '0', '1', '1', '2017-08-23 16:05:40');
INSERT INTO `system_node` VALUES ('167', 'wechat/fans/tagset', '设置标签', '0', '1', '1', '2017-08-23 16:05:41');
INSERT INTO `system_node` VALUES ('168', 'wechat/fans/backdel', '移出黑名单', '0', '1', '1', '2017-08-23 16:05:41');
INSERT INTO `system_node` VALUES ('169', 'wechat/fans/tagadd', '添加标签', '0', '1', '1', '2017-08-23 16:05:41');
INSERT INTO `system_node` VALUES ('170', 'wechat/fans/tagdel', '删除标签', '0', '1', '1', '2017-08-23 16:05:42');
INSERT INTO `system_node` VALUES ('171', 'wechat/fans/sync', '同步粉丝', '0', '1', '1', '2017-08-23 16:05:43');
INSERT INTO `system_node` VALUES ('172', 'wechat/keys/index', '关键字列表', '1', '1', '1', '2017-08-23 16:05:44');
INSERT INTO `system_node` VALUES ('173', 'wechat/keys/add', '添加关键字', '0', '1', '1', '2017-08-23 16:05:44');
INSERT INTO `system_node` VALUES ('174', 'wechat/keys/edit', '编辑关键字', '0', '1', '1', '2017-08-23 16:05:45');
INSERT INTO `system_node` VALUES ('175', 'wechat/keys/del', '删除关键字', '0', '1', '1', '2017-08-23 16:05:45');
INSERT INTO `system_node` VALUES ('176', 'wechat/keys/forbid', '禁用关键字', '0', '1', '1', '2017-08-23 16:05:46');
INSERT INTO `system_node` VALUES ('177', 'wechat/keys/resume', '启用关键字', '0', '1', '1', '2017-08-23 16:05:46');
INSERT INTO `system_node` VALUES ('178', 'wechat/keys/subscribe', '关注默认回复', '0', '1', '1', '2017-08-23 16:05:48');
INSERT INTO `system_node` VALUES ('179', 'wechat/keys/defaults', '默认响应回复', '0', '1', '1', '2017-08-23 16:05:49');
INSERT INTO `system_node` VALUES ('180', 'wechat/menu/index', '微信菜单', '1', '1', '1', '2017-08-23 16:05:51');
INSERT INTO `system_node` VALUES ('181', 'wechat/menu/edit', '发布微信菜单', '0', '1', '1', '2017-08-23 16:05:51');
INSERT INTO `system_node` VALUES ('182', 'wechat/menu/cancel', '取消微信菜单', '0', '1', '1', '2017-08-23 16:05:52');
INSERT INTO `system_node` VALUES ('183', 'wechat/news/index', '微信图文列表', '1', '1', '1', '2017-08-23 16:05:52');
INSERT INTO `system_node` VALUES ('184', 'wechat/news/select', '微信图文选择', '0', '1', '1', '2017-08-23 16:05:53');
INSERT INTO `system_node` VALUES ('185', 'wechat/news/image', '微信图片选择', '0', '1', '1', '2017-08-23 16:05:53');
INSERT INTO `system_node` VALUES ('186', 'wechat/news/add', '添加图文', '0', '1', '1', '2017-08-23 16:05:54');
INSERT INTO `system_node` VALUES ('187', 'wechat/news/edit', '编辑图文', '0', '1', '1', '2017-08-23 16:05:56');
INSERT INTO `system_node` VALUES ('188', 'wechat/news/del', '删除图文', '0', '1', '1', '2017-08-23 16:05:56');
INSERT INTO `system_node` VALUES ('189', 'wechat/news/push', '推送图文', '0', '1', '1', '2017-08-23 16:05:56');
INSERT INTO `system_node` VALUES ('190', 'wechat/tags/index', '微信标签列表', '1', '1', '1', '2017-08-23 16:05:58');
INSERT INTO `system_node` VALUES ('191', 'wechat/tags/add', '添加微信标签', '0', '1', '1', '2017-08-23 16:05:58');
INSERT INTO `system_node` VALUES ('192', 'wechat/tags/edit', '编辑微信标签', '0', '1', '1', '2017-08-23 16:05:58');
INSERT INTO `system_node` VALUES ('193', 'wechat/tags/sync', '同步微信标签', '0', '1', '1', '2017-08-23 16:05:59');
INSERT INTO `system_node` VALUES ('194', 'admin/auth', '权限管理', '0', '1', '1', '2017-08-23 16:06:58');
INSERT INTO `system_node` VALUES ('195', 'admin/config', '系统配置', '0', '1', '1', '2017-08-23 16:07:34');
INSERT INTO `system_node` VALUES ('196', 'admin/log', '系统日志', '0', '1', '1', '2017-08-23 16:07:46');
INSERT INTO `system_node` VALUES ('197', 'admin/menu', '系统菜单', '0', '1', '1', '2017-08-23 16:08:02');
INSERT INTO `system_node` VALUES ('198', 'admin/node', '系统节点', '0', '1', '1', '2017-08-23 16:08:44');
INSERT INTO `system_node` VALUES ('199', 'admin/user', '导师管理', '0', '1', '1', '2017-08-23 16:09:43');
INSERT INTO `system_node` VALUES ('200', 'demo', '插件案例', '0', '1', '1', '2017-08-23 16:10:43');
INSERT INTO `system_node` VALUES ('201', 'demo/plugs', '插件案例', '0', '1', '1', '2017-08-23 16:10:51');
INSERT INTO `system_node` VALUES ('202', 'wechat', '微信管理', '0', '1', '1', '2017-08-23 16:11:13');
INSERT INTO `system_node` VALUES ('203', 'wechat/config', '微信配置', '0', '1', '1', '2017-08-23 16:11:19');
INSERT INTO `system_node` VALUES ('204', 'wechat/fans', '粉丝管理', '0', '1', '1', '2017-08-23 16:11:36');
INSERT INTO `system_node` VALUES ('205', 'wechat/keys', '关键字管理', '0', '1', '1', '2017-08-23 16:13:00');
INSERT INTO `system_node` VALUES ('206', 'wechat/menu', '微信菜单管理', '0', '1', '1', '2017-08-23 16:14:11');
INSERT INTO `system_node` VALUES ('207', 'wechat/news', '微信图文管理', '0', '1', '1', '2017-08-23 16:14:40');
INSERT INTO `system_node` VALUES ('208', 'wechat/tags', '微信标签管理', '0', '1', '1', '2017-08-23 16:15:25');
INSERT INTO `system_node` VALUES ('209', 'web/banner/index', null, '1', '1', '1', '2018-10-22 15:09:33');
INSERT INTO `system_node` VALUES ('210', 'web/banner', '', '0', '1', '1', '2018-10-22 15:09:52');
INSERT INTO `system_node` VALUES ('211', 'web', '前台管理', '0', '1', '1', '2018-10-22 15:09:56');
INSERT INTO `system_node` VALUES ('212', 'member', '前台会员中心', '0', '1', '1', '2018-10-22 15:10:10');
INSERT INTO `system_node` VALUES ('213', 'web/banner/add', null, '0', '1', '1', '2018-10-23 10:27:46');
INSERT INTO `system_node` VALUES ('214', 'web/banner/edit', null, '0', '1', '1', '2018-10-23 10:27:56');
INSERT INTO `system_node` VALUES ('215', 'web/banner/del', null, '0', '1', '1', '2018-10-23 10:27:58');
INSERT INTO `system_node` VALUES ('216', 'web/banner/forbid', null, '0', '1', '1', '2018-10-23 10:27:58');
INSERT INTO `system_node` VALUES ('217', 'web/banner/resume', null, '0', '1', '1', '2018-10-23 10:27:59');
INSERT INTO `system_node` VALUES ('218', 'web/member/index', null, '1', '1', '1', '2018-10-23 11:07:21');
INSERT INTO `system_node` VALUES ('219', 'web/member/auth', null, '0', '1', '1', '2018-10-23 11:07:22');
INSERT INTO `system_node` VALUES ('220', 'web/member/add', null, '0', '1', '1', '2018-10-23 11:07:22');
INSERT INTO `system_node` VALUES ('221', 'web/member/edit', null, '0', '1', '1', '2018-10-23 11:07:23');
INSERT INTO `system_node` VALUES ('222', 'web/member/pass', null, '0', '1', '1', '2018-10-23 11:07:24');
INSERT INTO `system_node` VALUES ('223', 'web/member/del', null, '0', '1', '1', '2018-10-23 11:07:25');
INSERT INTO `system_node` VALUES ('224', 'web/member/forbid', null, '0', '1', '1', '2018-10-23 11:07:25');
INSERT INTO `system_node` VALUES ('225', 'web/member/resume', null, '0', '1', '1', '2018-10-23 11:07:26');
INSERT INTO `system_node` VALUES ('227', 'web/course/index', null, '1', '1', '1', '2018-10-24 13:54:08');
INSERT INTO `system_node` VALUES ('228', 'web/course/add', null, '0', '1', '1', '2018-10-24 13:54:09');
INSERT INTO `system_node` VALUES ('229', 'web/course/edit', null, '0', '1', '1', '2018-10-24 13:54:09');
INSERT INTO `system_node` VALUES ('230', 'web/course/del', null, '0', '1', '1', '2018-10-24 13:54:10');
INSERT INTO `system_node` VALUES ('231', 'web/course/forbid', null, '0', '1', '1', '2018-10-24 13:54:11');
INSERT INTO `system_node` VALUES ('232', 'web/course/resume', null, '0', '1', '1', '2018-10-24 13:54:11');
INSERT INTO `system_node` VALUES ('233', 'web/c_type/index', null, '1', '1', '1', '2018-10-24 13:54:19');
INSERT INTO `system_node` VALUES ('234', 'web/c_type/add', null, '0', '1', '1', '2018-10-24 13:54:20');
INSERT INTO `system_node` VALUES ('235', 'web/c_type/edit', null, '0', '1', '1', '2018-10-24 13:54:21');
INSERT INTO `system_node` VALUES ('236', 'web/c_type/del', null, '0', '1', '1', '2018-10-24 13:54:21');
INSERT INTO `system_node` VALUES ('237', 'web/c_type/forbid', null, '0', '1', '1', '2018-10-24 13:54:21');
INSERT INTO `system_node` VALUES ('238', 'web/c_type/resume', null, '0', '1', '1', '2018-10-24 13:54:22');
INSERT INTO `system_node` VALUES ('239', 'web/ctype/index', null, '1', '1', '1', '2018-10-24 13:57:23');
INSERT INTO `system_node` VALUES ('240', 'web/ctype/add', null, '0', '1', '1', '2018-10-24 13:57:24');
INSERT INTO `system_node` VALUES ('241', 'web/ctype/edit', null, '0', '1', '1', '2018-10-24 13:57:25');
INSERT INTO `system_node` VALUES ('242', 'web/ctype/del', null, '0', '1', '1', '2018-10-24 13:57:25');
INSERT INTO `system_node` VALUES ('243', 'web/ctype/forbid', null, '0', '1', '1', '2018-10-24 13:57:26');
INSERT INTO `system_node` VALUES ('244', 'web/ctype/resume', null, '0', '1', '1', '2018-10-24 13:57:26');
INSERT INTO `system_node` VALUES ('245', 'web/chapter/index', null, '1', '1', '1', '2018-10-24 17:19:47');
INSERT INTO `system_node` VALUES ('246', 'web/chapter/add', null, '0', '1', '1', '2018-10-24 17:19:47');
INSERT INTO `system_node` VALUES ('247', 'web/chapter/edit', null, '0', '1', '1', '2018-10-24 17:19:48');
INSERT INTO `system_node` VALUES ('248', 'web/chapter/del', null, '0', '1', '1', '2018-10-24 17:19:49');
INSERT INTO `system_node` VALUES ('249', 'web/chapter/forbid', null, '0', '1', '1', '2018-10-24 17:19:50');
INSERT INTO `system_node` VALUES ('250', 'web/chapter/resume', null, '0', '1', '1', '2018-10-24 17:19:50');
INSERT INTO `system_node` VALUES ('251', 'web/content/index', null, '0', '1', '1', '2018-10-25 10:12:53');
INSERT INTO `system_node` VALUES ('252', 'web/content/add', null, '0', '1', '1', '2018-10-25 10:12:53');
INSERT INTO `system_node` VALUES ('253', 'web/content/edit', null, '0', '1', '1', '2018-10-25 10:12:54');
INSERT INTO `system_node` VALUES ('254', 'web/content/del', null, '0', '1', '1', '2018-10-25 10:12:55');
INSERT INTO `system_node` VALUES ('255', 'web/content/forbid', null, '0', '1', '1', '2018-10-25 10:12:56');
INSERT INTO `system_node` VALUES ('256', 'web/content/resume', null, '0', '1', '1', '2018-10-25 10:12:57');
INSERT INTO `system_node` VALUES ('257', 'web/content/download', null, '0', '1', '1', '2018-10-25 10:12:57');
INSERT INTO `system_node` VALUES ('258', 'web/company/index', null, '1', '1', '1', '2018-10-25 15:20:05');
INSERT INTO `system_node` VALUES ('259', 'web/company/edit', null, '0', '1', '1', '2018-10-25 15:20:06');
INSERT INTO `system_node` VALUES ('260', 'web/company/add', null, '0', '1', '1', '2018-10-25 15:20:08');
INSERT INTO `system_node` VALUES ('261', 'web/company/del', null, '0', '1', '1', '2018-10-25 15:20:11');
INSERT INTO `system_node` VALUES ('262', 'web/company/forbid', null, '0', '1', '1', '2018-10-25 15:20:13');
INSERT INTO `system_node` VALUES ('263', 'web/company/resume', null, '0', '1', '1', '2018-10-25 15:20:13');
INSERT INTO `system_node` VALUES ('264', 'web/course/download', null, '0', '1', '1', '2018-11-01 13:39:07');
INSERT INTO `system_node` VALUES ('265', 'alipay/alipay/pay', null, '0', '0', '0', '2018-11-02 17:45:06');
INSERT INTO `system_node` VALUES ('266', 'alipay/alipay/order', null, '0', '0', '0', '2018-11-02 17:45:07');
INSERT INTO `system_node` VALUES ('267', 'alipay/alipay/alipay_jump', null, '0', '0', '0', '2018-11-02 17:45:07');
INSERT INTO `system_node` VALUES ('268', 'alipay/alipay/notify_url', null, '0', '0', '0', '2018-11-02 17:45:08');
INSERT INTO `system_node` VALUES ('269', 'alipay/alipay/return_url', null, '0', '0', '0', '2018-11-02 17:45:09');
INSERT INTO `system_node` VALUES ('270', 'web/msg/index', null, '1', '1', '1', '2018-11-02 17:45:28');
INSERT INTO `system_node` VALUES ('271', 'web/msg/detail', null, '0', '1', '1', '2018-11-02 17:45:30');
INSERT INTO `system_node` VALUES ('272', 'web/msg/del', null, '0', '1', '1', '2018-11-02 17:45:30');
INSERT INTO `system_node` VALUES ('273', 'web/msg/forbid', null, '0', '1', '1', '2018-11-02 17:45:31');
INSERT INTO `system_node` VALUES ('274', 'web/msg/resume', null, '0', '1', '1', '2018-11-02 17:45:32');
INSERT INTO `system_node` VALUES ('275', 'web/material/index', null, '1', '1', '1', '2018-11-03 14:18:55');
INSERT INTO `system_node` VALUES ('276', 'web/material/detail', null, '0', '1', '1', '2018-11-03 14:18:57');
INSERT INTO `system_node` VALUES ('277', 'web/material/del', null, '0', '1', '1', '2018-11-03 14:18:57');
INSERT INTO `system_node` VALUES ('278', 'web/material/forbid', null, '0', '1', '1', '2018-11-03 14:18:58');
INSERT INTO `system_node` VALUES ('279', 'web/material/resume', null, '0', '1', '1', '2018-11-03 14:18:58');
INSERT INTO `system_node` VALUES ('280', 'web/material/add', null, '0', '1', '1', '2018-11-03 14:40:31');
INSERT INTO `system_node` VALUES ('281', 'web/degree/index', null, '1', '1', '1', '2018-11-07 15:44:45');
INSERT INTO `system_node` VALUES ('282', 'web/degree/add', null, '0', '1', '1', '2018-11-07 15:44:45');
INSERT INTO `system_node` VALUES ('283', 'web/degree/edit', null, '0', '1', '1', '2018-11-07 15:44:45');
INSERT INTO `system_node` VALUES ('284', 'web/degree/del', null, '0', '1', '1', '2018-11-07 15:44:46');
INSERT INTO `system_node` VALUES ('285', 'web/degree/resume', null, '0', '1', '1', '2018-11-07 15:44:46');
INSERT INTO `system_node` VALUES ('286', 'web/degree/forbid', null, '0', '1', '1', '2018-11-07 15:44:46');
INSERT INTO `system_node` VALUES ('287', 'web/degree/download', null, '0', '1', '1', '2018-11-07 15:44:47');
INSERT INTO `system_node` VALUES ('288', 'web/camp/index', null, '1', '1', '1', '2018-11-21 10:54:37');
INSERT INTO `system_node` VALUES ('289', 'web/camp/add', null, '0', '1', '1', '2018-11-21 10:54:37');
INSERT INTO `system_node` VALUES ('290', 'web/camp/edit', null, '0', '1', '1', '2018-11-21 10:54:38');
INSERT INTO `system_node` VALUES ('291', 'web/camp/del', null, '0', '1', '1', '2018-11-21 10:54:38');
INSERT INTO `system_node` VALUES ('292', 'web/camp/forbid', null, '0', '1', '1', '2018-11-21 10:54:38');
INSERT INTO `system_node` VALUES ('293', 'web/camp/resume', null, '0', '1', '1', '2018-11-21 10:54:39');
INSERT INTO `system_node` VALUES ('294', 'web/cchapter/index', null, '0', '1', '1', '2018-11-21 10:54:42');
INSERT INTO `system_node` VALUES ('295', 'web/cchapter/add', null, '0', '1', '1', '2018-11-21 10:54:42');
INSERT INTO `system_node` VALUES ('296', 'web/cchapter/edit', null, '0', '1', '1', '2018-11-21 10:54:43');
INSERT INTO `system_node` VALUES ('297', 'web/cchapter/del', null, '0', '1', '1', '2018-11-21 10:54:43');
INSERT INTO `system_node` VALUES ('298', 'web/cchapter/forbid', null, '0', '1', '1', '2018-11-21 10:54:44');
INSERT INTO `system_node` VALUES ('299', 'web/cchapter/resume', null, '0', '1', '1', '2018-11-21 10:54:44');
INSERT INTO `system_node` VALUES ('300', 'web/ccontent/index', null, '0', '1', '1', '2018-11-21 10:54:46');
INSERT INTO `system_node` VALUES ('301', 'web/ccontent/add', null, '0', '1', '1', '2018-11-21 10:54:46');
INSERT INTO `system_node` VALUES ('302', 'web/ccontent/edit', null, '0', '1', '1', '2018-11-21 10:54:47');
INSERT INTO `system_node` VALUES ('303', 'web/ccontent/del', null, '0', '1', '1', '2018-11-21 10:54:48');
INSERT INTO `system_node` VALUES ('304', 'web/ccontent/forbid', null, '0', '1', '1', '2018-11-21 10:54:48');
INSERT INTO `system_node` VALUES ('305', 'web/ccontent/resume', null, '0', '1', '1', '2018-11-21 10:54:48');
INSERT INTO `system_node` VALUES ('306', 'web/ccontent/download', null, '0', '1', '1', '2018-11-21 10:54:50');
INSERT INTO `system_node` VALUES ('307', 'web/dchapter/index', null, '0', '1', '1', '2018-11-21 10:54:55');
INSERT INTO `system_node` VALUES ('308', 'web/dchapter/add', null, '0', '1', '1', '2018-11-21 10:54:55');
INSERT INTO `system_node` VALUES ('309', 'web/dchapter/edit', null, '0', '1', '1', '2018-11-21 10:54:56');
INSERT INTO `system_node` VALUES ('310', 'web/dchapter/del', null, '0', '1', '1', '2018-11-21 10:54:56');
INSERT INTO `system_node` VALUES ('311', 'web/dchapter/forbid', null, '0', '1', '1', '2018-11-21 10:54:57');
INSERT INTO `system_node` VALUES ('312', 'web/dchapter/resume', null, '0', '1', '1', '2018-11-21 10:54:57');
INSERT INTO `system_node` VALUES ('313', 'web/dcontent/index', null, '0', '1', '1', '2018-11-21 10:54:59');
INSERT INTO `system_node` VALUES ('314', 'web/dcontent/add', null, '0', '1', '1', '2018-11-21 10:54:59');
INSERT INTO `system_node` VALUES ('315', 'web/dcontent/edit', null, '0', '1', '1', '2018-11-21 10:55:00');
INSERT INTO `system_node` VALUES ('316', 'web/dcontent/del', null, '0', '1', '1', '2018-11-21 10:55:00');
INSERT INTO `system_node` VALUES ('317', 'web/dcontent/forbid', null, '0', '1', '1', '2018-11-21 10:55:01');
INSERT INTO `system_node` VALUES ('318', 'web/dcontent/resume', null, '0', '1', '1', '2018-11-21 10:55:01');
INSERT INTO `system_node` VALUES ('319', 'web/dcontent/download', null, '0', '1', '1', '2018-11-21 10:55:02');
INSERT INTO `system_node` VALUES ('320', 'web/material/edit', null, '0', '1', '1', '2018-11-21 10:55:05');
INSERT INTO `system_node` VALUES ('321', 'web/module/index', null, '0', '1', '1', '2018-11-21 10:55:09');
INSERT INTO `system_node` VALUES ('322', 'web/module/add', null, '0', '1', '1', '2018-11-21 10:55:09');
INSERT INTO `system_node` VALUES ('323', 'web/module/edit', null, '0', '1', '1', '2018-11-21 10:55:10');
INSERT INTO `system_node` VALUES ('324', 'web/module/del', null, '0', '1', '1', '2018-11-21 10:55:10');
INSERT INTO `system_node` VALUES ('325', 'web/module/forbid', null, '0', '1', '1', '2018-11-21 10:55:11');
INSERT INTO `system_node` VALUES ('326', 'web/module/resume', null, '0', '1', '1', '2018-11-21 10:55:11');
INSERT INTO `system_node` VALUES ('327', 'web/package/index', null, '0', '1', '1', '2018-11-21 10:55:15');
INSERT INTO `system_node` VALUES ('328', 'web/package/add', null, '0', '1', '1', '2018-11-21 10:55:16');
INSERT INTO `system_node` VALUES ('329', 'web/package/edit', null, '0', '1', '1', '2018-11-21 10:55:16');
INSERT INTO `system_node` VALUES ('330', 'web/package/del', null, '0', '1', '1', '2018-11-21 10:55:17');
INSERT INTO `system_node` VALUES ('331', 'web/package/forbid', null, '0', '1', '1', '2018-11-21 10:55:18');
INSERT INTO `system_node` VALUES ('332', 'web/package/resume', null, '0', '1', '1', '2018-11-21 10:55:18');
INSERT INTO `system_node` VALUES ('333', 'web/problem/index', null, '1', '1', '1', '2018-11-24 13:27:24');
INSERT INTO `system_node` VALUES ('334', 'web/problem/add', null, '0', '1', '1', '2018-11-24 13:27:24');
INSERT INTO `system_node` VALUES ('335', 'web/problem/edit', null, '0', '1', '1', '2018-11-24 13:27:25');
INSERT INTO `system_node` VALUES ('336', 'web/problem/del', null, '0', '1', '1', '2018-11-24 13:27:26');
INSERT INTO `system_node` VALUES ('337', 'web/problem/resume', null, '0', '1', '1', '2018-11-24 13:27:27');
INSERT INTO `system_node` VALUES ('338', 'web/problem/forbid', null, '0', '1', '1', '2018-11-24 13:27:28');
INSERT INTO `system_node` VALUES ('339', 'web/tidings/index', null, '1', '1', '1', '2018-11-24 13:27:29');
INSERT INTO `system_node` VALUES ('340', 'web/tidings/add', null, '0', '1', '1', '2018-11-24 13:27:30');
INSERT INTO `system_node` VALUES ('341', 'web/tidings/edit', null, '0', '1', '1', '2018-11-24 13:27:31');
INSERT INTO `system_node` VALUES ('342', 'web/tidings/del', null, '0', '1', '1', '2018-11-24 13:27:31');
INSERT INTO `system_node` VALUES ('343', 'web/tidings/forbid', null, '0', '1', '1', '2018-11-24 13:27:32');
INSERT INTO `system_node` VALUES ('344', 'web/tidings/resume', null, '0', '1', '1', '2018-11-24 13:27:32');
INSERT INTO `system_node` VALUES ('345', 'web/open/index', null, '1', '1', '1', '2018-11-24 13:28:02');
INSERT INTO `system_node` VALUES ('346', 'web/open/add', null, '0', '1', '1', '2018-11-24 13:28:03');
INSERT INTO `system_node` VALUES ('347', 'web/open/edit', null, '0', '1', '1', '2018-11-24 13:28:03');
INSERT INTO `system_node` VALUES ('348', 'web/open/del', null, '0', '1', '1', '2018-11-24 13:28:04');
INSERT INTO `system_node` VALUES ('349', 'web/open/forbid', null, '0', '1', '1', '2018-11-24 13:28:05');
INSERT INTO `system_node` VALUES ('350', 'web/open/resume', null, '0', '1', '1', '2018-11-24 13:28:05');
INSERT INTO `system_node` VALUES ('351', 'web/order/index', null, '1', '1', '1', '2019-01-04 14:53:37');
INSERT INTO `system_node` VALUES ('352', 'web/order/detail', null, '0', '1', '1', '2019-01-04 14:53:39');
INSERT INTO `system_node` VALUES ('353', 'web/order/del', null, '0', '1', '1', '2019-01-04 14:53:43');
INSERT INTO `system_node` VALUES ('354', 'web/order/forbid', null, '0', '1', '1', '2019-01-04 14:53:43');
INSERT INTO `system_node` VALUES ('355', 'web/order/resume', null, '0', '1', '1', '2019-01-04 14:53:44');
INSERT INTO `system_node` VALUES ('356', 'web/coupon/index', null, '0', '1', '1', '2019-01-09 14:40:39');
INSERT INTO `system_node` VALUES ('357', 'web/coupon/add', null, '0', '1', '1', '2019-01-09 14:40:40');
INSERT INTO `system_node` VALUES ('358', 'web/coupon/edit', null, '0', '1', '1', '2019-01-09 14:40:40');
INSERT INTO `system_node` VALUES ('359', 'web/coupon/del', null, '0', '1', '1', '2019-01-09 14:40:41');
INSERT INTO `system_node` VALUES ('360', 'web/coupon/forbid', null, '0', '1', '1', '2019-01-09 14:40:41');
INSERT INTO `system_node` VALUES ('361', 'web/coupon/resume', null, '0', '1', '1', '2019-01-09 14:40:41');
INSERT INTO `system_node` VALUES ('362', 'web/coupon/download', null, '0', '1', '1', '2019-01-09 14:40:42');
INSERT INTO `system_node` VALUES ('363', 'web/mcoupon/index', null, '1', '1', '1', '2019-01-09 14:40:48');
INSERT INTO `system_node` VALUES ('364', 'web/mcoupon/detail', null, '0', '1', '1', '2019-01-09 14:40:48');
INSERT INTO `system_node` VALUES ('365', 'web/mcoupon/del', null, '0', '1', '1', '2019-01-09 14:40:49');
INSERT INTO `system_node` VALUES ('366', 'web/mcoupon/forbid', null, '0', '1', '1', '2019-01-09 14:40:49');
INSERT INTO `system_node` VALUES ('367', 'web/mcoupon/resume', null, '0', '1', '1', '2019-01-09 14:40:50');
INSERT INTO `system_node` VALUES ('368', 'web/mcoupon/out', null, '0', '1', '1', '2019-01-09 14:40:50');
INSERT INTO `system_node` VALUES ('369', 'web/project/index', null, '0', '1', '1', '2019-01-09 14:41:06');
INSERT INTO `system_node` VALUES ('370', 'web/project/add', null, '0', '1', '1', '2019-01-09 14:41:07');
INSERT INTO `system_node` VALUES ('371', 'web/project/edit', null, '0', '1', '1', '2019-01-09 14:41:07');
INSERT INTO `system_node` VALUES ('372', 'web/project/del', null, '0', '1', '1', '2019-01-09 14:41:08');
INSERT INTO `system_node` VALUES ('373', 'web/project/forbid', null, '0', '1', '1', '2019-01-09 14:41:08');
INSERT INTO `system_node` VALUES ('374', 'web/project/resume', null, '0', '1', '1', '2019-01-09 14:41:09');

-- ----------------------------
-- Table structure for `system_sequence`
-- ----------------------------
DROP TABLE IF EXISTS `system_sequence`;
CREATE TABLE `system_sequence` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL COMMENT '序号类型',
  `sequence` char(50) NOT NULL COMMENT '序号值',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_system_sequence_unique` (`type`,`sequence`) USING BTREE,
  KEY `index_system_sequence_type` (`type`),
  KEY `index_system_sequence_number` (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统序号表';

-- ----------------------------
-- Records of system_sequence
-- ----------------------------

-- ----------------------------
-- Table structure for `system_user`
-- ----------------------------
DROP TABLE IF EXISTS `system_user`;
CREATE TABLE `system_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `teacher_name` varchar(255) DEFAULT NULL,
  `password` char(32) NOT NULL DEFAULT '' COMMENT '用户登录密码',
  `qq` varchar(16) DEFAULT NULL COMMENT '联系QQ',
  `mail` varchar(32) DEFAULT NULL COMMENT '联系邮箱',
  `phone` varchar(16) DEFAULT NULL COMMENT '联系手机号',
  `desc` varchar(255) DEFAULT '' COMMENT '备注说明',
  `login_num` bigint(20) unsigned DEFAULT '0' COMMENT '登录次数',
  `login_at` datetime DEFAULT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `authorize` varchar(255) DEFAULT NULL,
  `is_teacher` tinyint(1) DEFAULT '0' COMMENT '0不是老师 1是老师',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态(1:删除,0:未删)',
  `create_by` bigint(20) unsigned DEFAULT NULL COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `imgurl` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL COMMENT '职位',
  `sort` int(11) DEFAULT NULL,
  `degree_id` int(10) unsigned NOT NULL COMMENT '关联学位课程id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_system_user_username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10006 DEFAULT CHARSET=utf8 COMMENT='系统用户表';

-- ----------------------------
-- Records of system_user
-- ----------------------------
INSERT INTO `system_user` VALUES ('10000', 'admin', '', '21232f297a57a5a743894a0e4a801fc3', '22222222', '123321@qq.com', '13800000000', 'dfgsdfgsfd', '87', '2019-04-24 11:42:01', '1', '1', '0', '0', null, '2015-11-13 15:14:22', '', '', '', '0', '0');
INSERT INTO `system_user` VALUES ('10002', 'test2', '李兰波', '', null, '4568@qq.com', '15977778888', '爱创课堂高级讲师。拥有多年前、后端工作经验，性格开朗、认真负责，精通JavaScript、Node等技术，mysql、mongodb等数据库，习惯使用各种设计模式，深入了解jquery，backbone等框架。喜欢使用通俗易懂的例子来引导学生，在教学工作中认真负责，授课思路清晰，实战性强，善于总结分析。', '0', null, '1', '1', '1', '0', null, '2018-10-24 16:34:39', '/static/upload/0d2c898688fab4bb/288ed4fe35674da8.png', '', '爱创课堂讲师', '3', '0');
INSERT INTO `system_user` VALUES ('10003', 'test1', '冯楠娜', '', null, '', '', '多年前端工作经验，曾参与大型电商网站的移动端开发，项目经验丰富，对移动端开发有深入的研究。精通HTML5、CSS3、JavaScript、 JQuery、 Ajax、Bootstrap等Web前端技术。\r\n教学方面细致耐心，风趣幽默，化繁为简。教学授课逻辑清晰，从学生的角度剖析知识点，帮助学生透彻的理解知识、运用知识，提高学生的项目实战能力！', '0', null, '1', '1', '1', '0', null, '2018-12-01 09:37:18', '/static/upload/285c9582d695f027/4706991f56dee56b.png', '', '爱创课堂讲师', '2', '0');
INSERT INTO `system_user` VALUES ('10004', 'test3', '彭帅伟', '', null, '', '', '爱创课堂高级讲师。拥有多年前、后端工作经验，性格开朗、认真负责，精通JavaScript、Node等技术，mysql、mongodb等数据库，习惯使用各种设计模式，深入了解jquery，backbone等框架。喜欢使用通俗易懂的例子来引导学生，在教学工作中认真负责，授课思路清晰，实战性强，善于总结分析。', '0', null, '1', '1', '1', '0', null, '2018-12-01 09:38:10', '/static/upload/70129004131ea322/ecb05454ac782086.png', '', '爱创课堂讲师', '4', '0');
INSERT INTO `system_user` VALUES ('10005', 'test4', '张容铭', '', null, '', '', '爱创课堂创始人，前百度资深高级前端工程师。曾主导百度新首页改版，负责百度新首页项目研发与维护。参与研发百度翻译pc端、移动端以及APP。曾研发百度分享活动等运营项目，其运营项目尤以2013年百度搜红包项目最具代表。曾著书《Javascript设计模式》深得业界好评,尤其擅长设计模式、Angular2、React、ES6、Node.js等技术', '0', null, '1', '1', '1', '0', null, '2018-12-01 09:38:58', '/static/upload/b04c7f23c737ecef/9276f5247c673f30.png', '', '爱创课堂创始人', '1', '1');
