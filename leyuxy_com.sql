-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2019-04-18 15:54:46
-- 服务器版本： 5.5.57-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leyuxy_com`
--

-- --------------------------------------------------------

--
-- 表的结构 `alipay_config`
--

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
  `cacert` varchar(255) DEFAULT NULL COMMENT '本地证书路径'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付宝配置';

--
-- 转存表中的数据 `alipay_config`
--

INSERT INTO `alipay_config` (`id`, `email`, `key`, `partner`, `seller_id`, `sign_type`, `input_charset`, `service`, `payment_type`, `cacert`) VALUES
(1, 'wuchengyx@126.com', 'g59z9x8i7vdt5i0y7qkg5encrz0bu2af', '2088002972721064', '2088002972721064', 'strtoupper(\'MD5\')', 'strtolower(\'utf-8\')', 'create_direct_pay_by_user', '1', '/static/index/alipay/cacert.pem');

-- --------------------------------------------------------

--
-- 表的结构 `bang`
--

CREATE TABLE `bang` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bang`
--

INSERT INTO `bang` (`id`, `title`, `content`, `time`) VALUES
(0000000001, '课程购买介绍', '&lt;p style=&quot;margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:11pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:Tahoma&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;1.1&lt;font face=&quot;宋体&quot;&gt;、课程是否可以试听&lt;/font&gt;&lt;font face=&quot;inherit&quot;&gt;?&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:11pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:Tahoma&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;可以试听&lt;/font&gt;,&lt;font face=&quot;宋体&quot;&gt;在课程章节目录中标记有&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;quot;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;试看&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;quot;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;的标签的课程为可以免费观看的课程视频。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:11pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:Tahoma&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;1.2&lt;font face=&quot;宋体&quot;&gt;、如何选择最适合自己的课程？&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:11pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:Tahoma&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;乐育学院的课程大致分为&lt;/font&gt;&amp;ldquo;&lt;font face=&quot;宋体&quot;&gt;初级&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;rdquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;、&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;ldquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;中级&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;rdquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;和&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;ldquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;高级&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;rdquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;三类。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;初级课程：一般适用于学科知识零基础或者基础薄弱的学员。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;中级课程：适用于掌握了一定的基础学科知识，但是想要进一步提升进阶的学员。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;高级课程：适用于计算机基础知识掌握扎实，对自身专业能力有更高要求的学员。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;点击每个课程详情页面中都详细介绍了这门课程的先修要求，若不具备先修要求，可以选择推荐的先修课程进行学习。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', '2019-03-07 02:16:33'),
(0000000002, '优惠券介绍', '&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;2.1&lt;font face=&quot;宋体&quot;&gt;、什么是优惠券&lt;/font&gt;&lt;font face=&quot;inherit&quot;&gt;?&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;优惠券可以在购买课程时使用，抵扣一定金额。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;2.2&lt;font face=&quot;宋体&quot;&gt;、如何使用优惠券&lt;/font&gt;&lt;font face=&quot;inherit&quot;&gt;?&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;优惠券可根据优惠券类型（通用券、打折券、满减券）和满减金额进行对应的购买折扣。当进入确认订单页时，系统会自动匹配当前订单可以使用的优惠券，学员可选择取消或选择其它优惠券，当无可用优惠券时，页面会有相应说明。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;2.3&lt;font face=&quot;宋体&quot;&gt;、已使用的优惠券可以取回再次用吗&lt;/font&gt;&lt;font face=&quot;inherit&quot;&gt;?&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;在使用优惠券后的订单默认已使用优惠券，无论支付支付成功，优惠券都无法退回重复使用。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;注：所以在使用优惠券购买课程时，学员一定要确保下单时的准确性，保证能有效使用优惠券&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;2.4&lt;font face=&quot;宋体&quot;&gt;、我有优惠券，为什么购买的时候没显示&lt;/font&gt;&lt;font face=&quot;inherit&quot;&gt;?&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;①&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&amp;nbsp;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;由于满减券或打折券需订单达到一定金额，才能使用。若由于订单金额未达到使用优惠券的金额门槛，系统将不显示优惠券。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;②&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&amp;nbsp;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;课程优惠券是绑定了相应的课程。若优惠券是属于绑定相应课程下的，不属于当前购买的课程，则也不能使用。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', '2019-03-07 02:17:08'),
(0000000003, '乐育学位', '&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;3&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;.1&lt;font face=&quot;宋体&quot;&gt;、什么是&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;乐育学位&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;课程&lt;/font&gt;?&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;乐育学院乐育学院学位课程是业内首创&lt;/font&gt;&amp;ldquo;&lt;font face=&quot;宋体&quot;&gt;在线一对一&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;VIP&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;辅导&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;rdquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;的全新教学模式的课程，通过为零基础的学员制定学习计划，提供系统性课程、一对一辅导、审阅代码、闯关式学习、答疑、推荐就业等服务，有效保障学员通过学习乐育学院学位的课程后具备独立完成项目与企业所需的技术水准。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;3&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;.2&lt;font face=&quot;宋体&quot;&gt;、乐育学院专业课程提供哪些服务？都能帮助我啥？&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;乐育学院在乐育学院学位课程中提供&lt;/font&gt;1&lt;font face=&quot;宋体&quot;&gt;对&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;1&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;资深导师辅导、闯关式学习、&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;大牛&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;讲师亲自授课、多个互联网企业实战开发项目、完成课程后发放乐育学院学位证书，可享受推荐就业服务。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;3&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;.3&lt;font face=&quot;宋体&quot;&gt;、学习中遇到问题怎么办&lt;/font&gt;&lt;font face=&quot;inherit&quot;&gt;?&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;在报名乐育学院学位课程之后会分配&lt;/font&gt;1V1&lt;font face=&quot;宋体&quot;&gt;导师进行跟进辅导，同时会获取到导师联系方式，遇到问题时可随时联系导师。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;3&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;.4&lt;font face=&quot;宋体&quot;&gt;、学完乐育学院专业课程之后会提供证书吗&lt;/font&gt;&lt;font face=&quot;inherit&quot;&gt;?&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;会，只要闯关完成乐育学院学位所有课程的学员就会颁发技能认证证书。获得该证书后与乐育学院的合作企业则会优先提供就业机会。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', '2019-03-07 02:17:29'),
(0000000004, ' 导师介绍', '&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;4&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;.1&lt;font face=&quot;宋体&quot;&gt;、什么是导师&lt;/font&gt;&lt;font face=&quot;inherit&quot;&gt;?&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;导师是乐育学院创新式教学方式，对报名乐育学院学位课程的学生进行单独的一对一辅导、批改作业、定期考核。我们会对导师的资格进行严格的考核，他们都是拥有多年一线工作经验的大牛，同时我们也制定了对导师的一系列规范要求。确保能辅导好学生的学习。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;4&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;.2&lt;font face=&quot;宋体&quot;&gt;、导师职责是什么？&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;导师会陪伴并监督每位学员的学习，&lt;/font&gt; &lt;font face=&quot;宋体&quot;&gt;主要职责如下：&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;问题解答：学生在学习过程中遇到任何问题，都可以通过线上提问系统直接向自己的导师进行提问，导师都会在第一时间进行解答。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;作业批改：导师会在乐育学院学位学员提交作业后第一时间进行作业批改并点评，学员则需要完成每阶段的作业且在通过考核后才能进行下一阶段的学习。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;定期跟进：导师会定期跟进学员的学习状况，帮助学员制定学习计划，监督和辅导学员顺利完成学业。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;4&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;3&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;、导师有辅导期限么&lt;/font&gt;?&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;有。导师的辅导期为乐育学院学位课程的学习周期。在学习周期内导师会及时回复学员的问题，作业批改以及跟进学习进度。在正常学习周期完成后，导师则没有辅导义务，只有导师有时间，亦会为你解答。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;4&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;4&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;、可以要求换导师么&lt;/font&gt;?&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;可以。如果您在学习过程中遇到和导师之间发生沟通不畅或其他不能自行解决问题的情况下，乐育学院会帮助协调沟通。若协调沟通后学员依然坚持更换导师，乐育学院会按照学员要求更换新导师。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', '2019-03-07 02:17:56'),
(0000000005, '学位作业介绍', '&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;5&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;.1&lt;font face=&quot;宋体&quot;&gt;、什么是作业&lt;/font&gt;&lt;font face=&quot;inherit&quot;&gt;?&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;为了让学员能更好的掌握并熟练运用所学到的知识，乐育学院针对乐育学院学位课程的每个模块中的每个章节布置了作业，&lt;/font&gt; &lt;font face=&quot;宋体&quot;&gt;学员需要完成相应的作业并提交予导师的批改。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;5&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;.2&lt;font face=&quot;宋体&quot;&gt;、在哪里获取作业？&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;对于报名乐育学院学位课程之后，用户可以在《学习中心》的模块列表中查看课堂作业&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;5&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;.3&lt;font face=&quot;宋体&quot;&gt;、作业如何提交&lt;/font&gt;&lt;font face=&quot;inherit&quot;&gt;?&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;在作业详情页中将作业打包成&lt;/font&gt;.zip&lt;font face=&quot;宋体&quot;&gt;的格式提交即可&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;5&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;.4&lt;font face=&quot;宋体&quot;&gt;、对于作业成绩有奖励或惩罚么&lt;/font&gt;&lt;font face=&quot;inherit&quot;&gt;?&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;乐育学院推出的特色乐育学院学位课程，每一位学生每报名课程都会获得一笔初始奖学金。在学员学习过程中，如果成绩达到奖学金标准，就会给予奖励，给予奖励的奖学金。用户可以进行提现到微信。如果作业未达到奖学金奖励标准。那么分配给该作业的奖学金将会被扣除。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;5&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;.5&lt;font face=&quot;宋体&quot;&gt;、交作业不及时会惩罚么&lt;/font&gt;&lt;font face=&quot;inherit&quot;&gt;?&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;会。若没有及时交作业，则会影响到奖学金最终的结算数量。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', '2019-03-07 02:18:31'),
(0000000006, '版权提示', '&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;版权声明&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:22.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;1&lt;font face=&quot;宋体&quot;&gt;、本站所有课程内容及付费服务都归属于乐育学院学习平台，拥有独家版权和最终解释权。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;2&lt;font face=&quot;宋体&quot;&gt;、如发现任何有损乐育学院及广大用户合法权益的行为（包括但不仅限于未授权使用乐育学院&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;Logo&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;及设计内容；非法录制课程视频；非法上传课程到其他平台；非法在除官方平台外的平台进行交易等）乐育学院将永久冻结账户，并积极对不法分子进行法律和经济上的追究和诉讼，严惩不贷。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;3&lt;font face=&quot;宋体&quot;&gt;、希望广大用户积极配合，主动完善个人信息，遵守【用户付费协议】内容，共同维护乐育学院良好学习环境。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', '2019-03-07 02:18:57');
INSERT INTO `bang` (`id`, `title`, `content`, `time`) VALUES
(0000000007, '专题课程', '&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;尊敬的乐育学院用户&lt;/font&gt;:&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;欢迎您使用乐育学院在线学习服务。为保证您的学习服务权益得到保障，在开始付费购买程序之前，请您认真阅读以下条款。在您点击支付并开始学习过程时，就意味着您完全同意并接受以下服务条款。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;1&lt;font face=&quot;宋体&quot;&gt;、本服务基本形式及要求&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;（&lt;/font&gt;1&lt;font face=&quot;宋体&quot;&gt;）本学习培训采用录播课程视频教学进行在线学习。乐育学院向您提供相关课程视频 &lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;+ &lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;作业 &lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;+ &lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;课件。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;（&lt;/font&gt;2&lt;font face=&quot;宋体&quot;&gt;）特别提醒 &lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;: &lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;学习是一个需要坚持的过程。为确保学习效果，每门课程都有有效期时间，您必须在有效期时间内自助学习完录播视频培训内容，若超过有效期，则无法观看视频继续学习，需进行续费进行继续学习。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;2&lt;font face=&quot;宋体&quot;&gt;、学习权限&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;（&lt;/font&gt;1&lt;font face=&quot;宋体&quot;&gt;）一旦您用认可支付方式购买了乐育学院专题课程服务，即视为您认可该项服务标明之价格；您购买成功后，即能即时观看视频进行学习。如果您是通过贷款形式支付费用，那么您需按照贷款时的贷款协议按时还款；您和贷款提供方之间的所有服务内容，与乐育学院无关。您应切实评估自己的还款能力，不得以无法向第三方还款为由解除本协议。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;（&lt;/font&gt;2&lt;font face=&quot;宋体&quot;&gt;）学习时间权限 &lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;: &lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;每门专题课程都有标注学习有效期，即自购买之日起录播课程可在有效期限内免费在线观看。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;3&lt;font face=&quot;宋体&quot;&gt;、学员的权利限制&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;对于您购买的收费视频课程，您只可以私人观看，不得与他人共享账号，不得用于商业、盈利等用途。乐育学院为您提供的课程内容（包括且不限于视频、教材、大纲、问答服务、学习环境、软件、代码、图片等）及学习资料仅供您本人在乐育学院平台学习使用，您同意不会采用收费或免费的方式全部或部分地在任何公开场合展示；同时承诺不采取以下任何一种行为：&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(a) &lt;font face=&quot;宋体&quot;&gt;用非法的方式或为了非法的目的使用已购买的课程及服务。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(b) &lt;font face=&quot;宋体&quot;&gt;将您的乐育学院账户有偿或无偿提供给任何第三人，并允许他通过您的账户观看或使用非他付费购买的收费课程及服务。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(c) &lt;font face=&quot;宋体&quot;&gt;将收费视频复制、销售、出租或授权给任何第三方，或主动对乐育学院用于保护其收费课程的任何安全措施技术进行攻克、反向操作、更改、破坏或其他篡改，或协助他人进行上述行为。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(d) &lt;font face=&quot;宋体&quot;&gt;通过非乐育学院认可的方式获得收费许可课程，或者删除收费课程上的任何所有权声明或标签。对于违反上述约定的，乐育学院有权单方终止本合同，不退还您已缴纳学费并保留就相应损失向您提出赔偿的权利。本条款长期有效，不因协议终止而终止。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;4&lt;font face=&quot;宋体&quot;&gt;、风险、责任及隐私&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;（&lt;/font&gt;1&lt;font face=&quot;宋体&quot;&gt;）隐私权 &lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;: &lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;乐育学院尊重您的隐私权，在任何情况下，我们都不会将您的个人和订单信息出售或泄露给任何第三方（国家司法机关调取等国家相关法律要求企业承担的义务除外）。我们强烈提醒：一定不要将您的个人密码告知他人或与他人共享注册帐户，由此导致的任何个人资料泄露，乐育学院不承担任何责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;（&lt;/font&gt;2&lt;font face=&quot;宋体&quot;&gt;）用户账户风险 &lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;: &lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;乐育学院有大量的在线业务，您的账户及密码是极其重要的服务依据，您应自行负责妥善且正确地保管、使用、维护其在乐育学院申请取得的账户及账户密码，并对其账户密码采取必要和有效的保密措施。非乐育学院原因致使您账户密码泄漏以及因您保管、使用、维护不当造成损失的，乐育学院无须承担与此有关的任何责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;（&lt;/font&gt;3&lt;font face=&quot;宋体&quot;&gt;）在线服务风险 &lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;: &lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;对于因服务器死机、网络故障、数据库故障、软件升级、服务器维修、调整、升级等问题，或其他不可抗拒的事由，包括但不限于政府行为、自然灾害等造成的服务中断和对您个人数据及资料造成的损失，乐育学院不承担由此对您造成的任何损失或退还任何已缴纳的收费服务费用；但乐育学院尽可能事先进行通告，尽快做好修复工作。您购买的在线培训课程使用期限中包含解决故障、服务器维修、调整、升级等所需用的合理时间，对上述情况所需用的时间乐育学院会做好告知工作，但不予赔偿，并保留解释权。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;（&lt;/font&gt;4&lt;font face=&quot;宋体&quot;&gt;）乐育学院对任何直接、间接、偶然、特殊及继起的损害不负责任，不予赔偿。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;（&lt;/font&gt;5&lt;font face=&quot;宋体&quot;&gt;）用户监督及争议解决：乐育学院希望通过不懈努力，为用户提供最佳服务，乐育学院在给用户提供服务的全过程中接受用户的监督。如果客户与乐育学院之间发生任何争议，可依据当时双方所认定的协议及相关法律进行解决。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;5&lt;font face=&quot;宋体&quot;&gt;、知识产权&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;乐育学院培训课程资料的所有权利、权益和知识产权永久属于乐育学院&lt;/font&gt;,&lt;font face=&quot;宋体&quot;&gt;学员同意不得在任何时候将该课程资料用作任何商业用途。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;6&lt;font face=&quot;宋体&quot;&gt;、变更及免责条款&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;（&lt;/font&gt;1&lt;font face=&quot;宋体&quot;&gt;）鉴于网络服务和&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;IT&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;技术的特殊性，乐育学院根据互联网的发展和中华人民共和国有关法律、法规的变化，以及&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;IT&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;技术的发展情况，对收费学习服务的观看服务周期、购买价格等课程内容及本协议部分条款保留随时变更的权利。内容和协议的变更会在不需单独通知每个学员；但已支付学员的服务约定以支付时的服务条款为准。如遇到被迫中断或终止部分或全部的网络服务，乐育学院应及时通知您并办理相应的退还相应款项业务，但无需承担除此之外的任何其他责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;（&lt;/font&gt;2&lt;font face=&quot;宋体&quot;&gt;）如发生不可抗力致使本合同无法履行的，本合同自动终止。双方互不承担责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;（&lt;/font&gt;3&lt;font face=&quot;宋体&quot;&gt;）本协议为线上协议，您在线阅读并点击&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;ldquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;同意并接受该协议&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;rdquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;按钮，点击后视为自愿接受本协议；接受本协议之后，即表示您已充分理解本协议的各项约定，并与乐育学院就本协议达成一致，会按照本协议的约定完成本培训，协议中的所有条款具有法律效力。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;（&lt;/font&gt;4&lt;font face=&quot;宋体&quot;&gt;）因本合同产生纠纷的，应协商解决；协商不成的，应向北京市人民法院提起诉讼解决。&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;nbsp;&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', '2019-03-07 02:30:13'),
(0000000008, '乐育学位课程', '&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;尊敬的乐育学院用户&lt;/font&gt;:&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;欢迎您使用乐育学院在线学习服务。为保证您的学习服务权益得到保障，在开始付费购买程序之前，请您认真阅读以下条款。在您点击支付并开始学习过程时，就意味着您完全同意并接受以下服务条款。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;1&lt;font face=&quot;宋体&quot;&gt;、本服务基本形式及要求&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(1) &lt;font face=&quot;宋体&quot;&gt;本学习培训采用&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;①&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;录播课程&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;②&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;作业考核&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;③&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;视频阶段性考核方式进行在线学习服务。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(2) &lt;font face=&quot;宋体&quot;&gt;为保证学习效果，乐育学院向您提供符合企业用人需求或考试认证要求的内容培养体系及相关课程，承诺配备技术讲师、班主任、导师为您提供教学和学习服务&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;(&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;服务知识点仅限于为学员所报名课程的相关内容，超出课程范围以外的内容视讲师的繁忙程度而定，乐育学院不提供承诺&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;)&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(3) &lt;font face=&quot;宋体&quot;&gt;乐育学院承诺在您学习期间，按照学员相关管理规定对您进行严格管理，并根据规定对您的表现进行评定考核，您同意接受考核。对于遵守并通过相关培训项目制作及考核的毕业学员，乐育学院学位课程的学员将颁发乐育学院乐育学院学位证书，并进入乐育学院雇主人才库，同时针对有需要的同学进行就业推荐服务。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(4) &lt;font face=&quot;宋体&quot;&gt;特别提醒 &lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;: &lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;学习是一个需要坚持的过程。为确保学习效果，您必须在规定时间内自助学习完录播视频培训内容，并按时提交作业，进行阶段视频考核；为保证学习效果，乐育学院乐育学院专业采用闯关式教学，整个乐育学院专业学习分为多个学习阶段，上一阶段学习考核成绩未通过，无法观看下一阶段的录播课程。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;2&lt;font face=&quot;宋体&quot;&gt;、学习权限及退款&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(1) &lt;font face=&quot;宋体&quot;&gt;一旦您用认可支付方式购买了乐育学院乐育学院学位课程服务，即视为您认可该项服务标明之价格；您购买成功后，该项服务即时生效。如果您是通过贷款形式支付费用，那么您需按照贷款时的贷款协议按时还款；您和贷款提供方之间的所有服务内容，与乐育学院无关。您应切实评估自己的还款能力，不得以无法向第三方还款为由解除本协议。 &lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;(2) &lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;学习时间权限：除特别标注外，本学习服务的有效期为&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;2&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;年，即自购买之日起录播课程可在有效期限内免费在线观看，但其他服务&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;(&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;包括但不限于导师&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;1&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;对&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;1&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;答疑服务、作业审批、审阅代码等&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;)&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;仅限在指定的学习有效期内提供，逾期则不提供除观看录播课程权限的其他服务。 &lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;(3) &lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;乐育学院为您提供完备的试学和退款服务，具体规则如下：&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;nbsp;(a) &lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;付款后的&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;7&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;个自然日&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;(&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;含&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;)&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;内支持无理由退款&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;(&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;课程购买时全款&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;mdash;500&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;元人民币&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;)&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;。但在付款和退款交易过程产生的支付给第三方的手续费应由您自行承担&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;(&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;例如信用卡&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;POS&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;机刷卡的交易手续费为乙方实际支付费用的&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;3%)&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;。如学员此前为贷款，退费时需自行承担贷款利息费，贷款利息费为贷款本金的&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;10%&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;。退款后本合同自行终止。&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;nbsp;(b) &lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;以下情况不接受退款：超过上述&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;7&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;个自然日&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;(&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;含&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;)&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;内的退款约定时间不予退款；特价产品&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;(&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;包括且不限于&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;ldquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;双&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;11&amp;rdquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;、&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;ldquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;周年庆&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;rdquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;等特殊节假日活动的特价产品&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;)&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;不享受退款服务；任何形式的定金不予退还。&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;nbsp;(c) &lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;本协议所涉及的&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;ldquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;退费&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;rdquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;，以实际最终收到的学费为准，不包任何优惠活动所抵消的学习费用，如各种代金券、优惠券的费用。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;3&lt;font face=&quot;宋体&quot;&gt;、学员的权利限制&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(1) &lt;font face=&quot;宋体&quot;&gt;对于您购买的收费视频课程，您只可以私人观看，不得与他人共享账号，不得用于商业、盈利等用途。乐育学院为您提供的课程内容&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;(&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;包括且不限于视频、教材、大纲、问答服务、学习环境、软件、代码、图片等&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;)&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;及学习资料仅供您本人在乐育学院平台学习使用，您同意不会采用收费或免费的方式全部或部分地在任何公开场合展示；同时承诺不采取以下任何一种行为：&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(a) &lt;font face=&quot;宋体&quot;&gt;用非法的方式或为了非法的目的使用已购买的课程及服务。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(b) &lt;font face=&quot;宋体&quot;&gt;将您的乐育学院账户有偿或无偿提供给任何第三人，并允许他通过您的账户观看或使用非他付费购买的收费课程及服务。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(c) &lt;font face=&quot;宋体&quot;&gt;将收费视频复制、销售、出租或授权给任何第三方，或主动对乐育学院用于保护其收费课程的任何安全措施技术进行攻克、反向操作、更改、破坏或其他篡改，或协助他人进行上述行为。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(d) &lt;font face=&quot;宋体&quot;&gt;通过非乐育学院认可的方式获得收费许可课程，或者删除收费课程上的任何所有权声明或标签。对于违反上述约定的，乐育学院有权单方终止本合同，不退还您已缴纳学费并保留就相应损失向您提出赔偿的权利。本条款长期有效，不因协议终止而终止。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;4&lt;font face=&quot;宋体&quot;&gt;、风险、责任及隐私&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(1) &lt;font face=&quot;宋体&quot;&gt;隐私权 &lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;: &lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;乐育学院尊重您的隐私权，在任何情况下，我们都不会将您的个人和订单信息出售或泄露给任何第三方&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;(&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;国家司法机关调取等国家相关法律要求企业承担的义务除外&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;)&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;。我们强烈提醒：一定不要将您的个人密码告知他人或与他人共享注册帐户，由此导致的任何个人资料泄露，乐育学院不承担任何责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(2) &lt;font face=&quot;宋体&quot;&gt;用户账户风险 &lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;: &lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;乐育学院有大量的在线业务，您的账户及密码是极其重要的服务依据，您应自行负责妥善且正确地保管、使用、维护其在乐育学院申请取得的账户及账户密码，并对其账户密码采取必要和有效的保密措施。非乐育学院原因致使您账户密码泄漏以及因您保管、使用、维护不当造成损失的，乐育学院无须承担与此有关的任何责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(3) &lt;font face=&quot;宋体&quot;&gt;在线服务风险 &lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;: &lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;对于因服务器死机、网络故障、数据库故障、软件升级、服务器维修、调整、升级等问题，或其他不可抗拒的事由，包括但不限于政府行为、自然灾害等造成的服务中断和对您个人数据及资料造成的损失，乐育学院不承担由此对您造成的任何损失或退还任何已缴纳的收费服务费用；但乐育学院尽可能事先进行通告，尽快做好修复工作。您购买的在线培训课程使用期限中包含解决故障、服务器维修、调整、升级等所需用的合理时间，对上述情况所需用的时间乐育学院会做好告知工作，但不予赔偿，并保留解释权。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(4) &lt;font face=&quot;宋体&quot;&gt;乐育学院对任何直接、间接、偶然、特殊及继起的损害不负责任，不予赔偿。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(5) &lt;font face=&quot;宋体&quot;&gt;用户监督及争议解决：乐育学院希望通过不懈努力，为用户提供最佳服务，乐育学院在给用户提供服务的全过程中接受用户的监督。如果客户与乐育学院之间发生任何争议，可依据当时双方所认定的协议及相关法律进行解决。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;5&lt;font face=&quot;宋体&quot;&gt;、知识产权&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;乐育学院培训课程资料的所有权利、权益和知识产权永久属于乐育学院&lt;/font&gt;,&lt;font face=&quot;宋体&quot;&gt;学员同意不得在任何时候将该课程资料用作任何商业用途。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;6&lt;font face=&quot;宋体&quot;&gt;、变更及免责条款&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p style=&quot;margin-bottom:10pt&quot;&gt;&lt;span style=&quot;font-size:11pt&quot;&gt;&lt;span style=&quot;font-family:Tahoma&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(1) &lt;font face=&quot;微软雅黑&quot;&gt;鉴于网络服务和&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;IT&lt;/font&gt;&lt;font face=&quot;微软雅黑&quot;&gt;技术的特殊性，乐育学院根据互联网的发展和中华人民共和国有关法律、法规的变化，以及&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;IT&lt;/font&gt;&lt;font face=&quot;微软雅黑&quot;&gt;技术的发展情况，对收费学习服务的观看服务周期、购买价格等课程内容及本协议部分条款保留随时变更的权利。内容和协议的变更会在不需单独通知每个学员；但已支付学员的服务约定以支付时的服务条款为准。如遇到被迫中断或终止部分或全部的网络服务，乐育学院应及时通知您并办理相应的退还相应款项业务，但无需承担除此之外的任何其他责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(2) &lt;font face=&quot;微软雅黑&quot;&gt;如发生不可抗力致使本合同无法履行的，本合同自动终止。双方互不承担责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(3) &lt;font face=&quot;微软雅黑&quot;&gt;本协议为线上协议，您在线阅读并点击&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;ldquo;&lt;/font&gt;&lt;font face=&quot;微软雅黑&quot;&gt;同意并接受该协议&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;rdquo;&lt;/font&gt;&lt;font face=&quot;微软雅黑&quot;&gt;按钮，点击后视为自愿接受本协议；接受本协议之后，即表示您已充分理解本协议的各项约定，并与乐育学院就本协议达成一致，会按照本协议的约定完成本培训，协议中的所有条款具有法律效力。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;(4) &lt;font face=&quot;微软雅黑&quot;&gt;因本合同产生纠纷的，应协商解决；协商不成的，应向北京市人民法院提起诉讼解决。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', '2019-03-07 02:30:26');
INSERT INTO `bang` (`id`, `title`, `content`, `time`) VALUES
(0000000009, '乐育学院服务使用协议', '&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;第一条【重要提示】&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;乐育学院是主要依靠网络技术，通过乐育学院平台向您提供在线学习与移动学习服务。请您在注册和使用乐育学院学习平台前务必审慎阅读、充分理解各条款内容，特别是免除或者限制责任的条款、法律适用和争议解决条款。如您对协议有任何疑问，请立即停止注册或使用乐育学院官网或者乐育学院出品的其他产品。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;第二条【协议的变更】&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;1&lt;font face=&quot;宋体&quot;&gt;．北京乐育学院教育科技有限公司有权利对本协议进行修改，协议修改后，乐育学院将在相关页面公布修改的内容，修改后的协议一经公布即有效的代替原协议。如果您不同意本协议的修改，请立即停止访问或使用乐育学院提供的产品或取消已经获得的服务；如果您选择在本协议修改后继续访问或使用乐育学院，则视为完全接受并愿意遵守修改或者变更后的本协议。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;2&lt;font face=&quot;宋体&quot;&gt;．无论您停止使用或继续使用乐育学院，您都承诺不因本协议修改或变更给您造成的损失或不便而向北京乐育学院教育科技有限公司及关联方乐育学院要求赔偿或补偿。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;3&lt;font face=&quot;宋体&quot;&gt;．您与乐育学院公司签署的本协议所列明的条款，并不能完全涵盖您与乐育学院公司所有的权利和义务。因此，乐育学院公司已公布或将来可能公布的其他声明、规则等均视为本协议之补充协议，为本协议不可分割的组成部分，与本协议具有同等法律效力。如果您不同意前述声明、规则等，请立即停止访问或使用乐育学院提供的产品或取消已经获得的服务；如果您选择在前述声明或规则等公布后继续访问或使用乐育学院，则视为完全接受并愿意遵守公布后的声明、规则等内容。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;第三条【服务的内容与方式】&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;1&lt;font face=&quot;宋体&quot;&gt;．乐育学院主要是一家网络服务提供者，可针对不同用户为其提供内容服务，包括但不限于课程视频、学习内容、源代码、资料及相应服务；由于互联网的高速发展，乐育学院公司将在未来向用户提供更多的服务，除非另有明确规定外，未来提供的新服务也适用于本协议。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;2&lt;font face=&quot;宋体&quot;&gt;．除免费服务外，乐育学院可能提供部分收费服务。您可以通过付费方式购买收费服务，具体方式为：通过在线支付或其他乐育学院提供的付费途径支付一定数额的人民币，从而获得收费服务使用权限。对于收费服务，乐育学院会在您使用之前给予明确的提示，只有根据提示确认其同意按照前述支付方式支付费用并完成了支付行为，才能使用该等收费服务。支付行为的完成以银行或第三方支付平台生成&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;ldquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;支付已完成&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;rdquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;的确认通知为准。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;3&lt;font face=&quot;宋体&quot;&gt;．您应了解乐育学院作为平台，不保证其提供的服务一定满足用户的全部需求。乐育学院保留随时修改、中断或终止服务且无需通知用户的权利。乐育学院更改、更新或提高其服务无需对用户或任意第三方承担任何责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;第四条【注册账号与使用】&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;1&lt;font face=&quot;宋体&quot;&gt;．您确认，在您开始注册乐育学院账户前，您应当具备中华人民共和国法律规定的与您行为相适应的民事行为能力。若您不具备前述与您行为相适应的民事行为能力，则您及您的监护人应依照法律规定承担因此而导致的一切后果。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;2&lt;font face=&quot;宋体&quot;&gt;．您有权选择是否成为乐育学院的注册用户。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;1&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）您选择注册账号成为乐育学院的用户时，应按照乐育学院的提示及要求填写或提供资料、信息，并确保资料、信息的真实性、正确性及完整性。如果您的资料、信息发生变化，应及时更改。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;2&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）当您一旦注册成功，即成为乐育学院的注册用户。成为乐育学院的注册用户后，您可依照乐育学院的要求修改您的账号密码，但不可修改账号。用户名和昵称的命名及使用应遵守相关法律法规并符合网络道德。用户名和昵称中不能含有任何侮辱、诽谤、淫秽或暴力等侵害他人合法权益或违反公序良俗的词语。如您违反前述规定，乐育学院有权随时限制或拒绝您使用该账号，甚至注销该账号。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;3&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）用户注册成功时，您将创建一个账号和密码。您应采取合理措施维护账号和密码的安全，您应了解，在账号和密码匹配时，乐育学院无法对非法或未经您授权使用您帐号及密码的行为作出甄别，因此，乐育学院对任何使用您账号和密码登录系统后所发生的所有活动和事不承担任何责任。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;4&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）乐育学院的注册账号只为注册用户本人所专有并仅限由其本人自己使用。&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;3&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;．用户的账号或密码遗失，可以通过注册信息进行重置密码，以手机号码注册的用户可以凭借手机号码找回原密码。用户若发现账号遭到未授权的使用或发生其他任何其他安全问题时，应立即有效告知乐育学院。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;第五条【用户的权利与义务】&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;1&lt;font face=&quot;宋体&quot;&gt;．用户有权在注册后获得其个人的乐育学院账号。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;2&lt;font face=&quot;宋体&quot;&gt;．用户有权在注册并登录后，根据乐育学院的规定，参与乐育学院的线上或线下活动并取得乐育学院给予的优惠或者奖励等。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;3&lt;font face=&quot;宋体&quot;&gt;．用户承诺并保证遵守《中华人民共和国著作权法》、《中华人民共和国商标法》、《中华人民共和国反不正当竞争法》、《中华人民共和国侵权责任法》、《中华人民共和国广告法》、《中华人民共和国计算机信息系统安全保护条例》、《计算机软件保护条例》及《信息网络传播权保护条例》等有关法律、法规、规章的规定。在任何情况下，乐育学院合理的认为用户有可能违反或已经违反上述法律、法规、规章的规定，有权不经事先通知终止向该用户提供服务。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;4&lt;font face=&quot;宋体&quot;&gt;．用户应当善意使用乐育学院且保证：（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;1&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）不会伪造标题或以其他方式操控识别资料，使人误认为该内容为乐育学院所传送的。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;2&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）不会将有关干扰、破坏或限制任何计算机软件、硬件或通讯设备功能的软件病毒或其他计算机代码、档案和程序之资料，加以上传、张贴、发送电子邮件或以其他方式传送。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;3&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）不会以技术方式攻击或破坏或改变乐育学院的部分或全部、或干扰其运行；以非法方式获取或使用乐育学院的任何软件、代码或其他技术或商业信息；不会对乐育学院运行的任何程序进行反向工程、反向编译、反向汇编或改写。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;4&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）不会未经许可使用乐育学院的网站名称、公司名称、商标、商业标识、网页版式或内容、或其他由乐育学院享有知识产权或权利的信息或资料。&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;5&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;．注册用户仅对其在乐育学院上享有的服务及内容有使用权，并不对该内容拥有相关知识产权。未经乐育学院或其他有权第三方的许可，用户不得对包括视频、学习软件、学习资料、音频内容等在内的任何内容进行翻录、复制、发行、破解、信息网络传播或其他违反知识产权相关法律、法规的行为，否则所导致的一切民事、行政或刑事责任，由用户自行承担。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;6&lt;font face=&quot;宋体&quot;&gt;．未经乐育学院书面许可、另行签署协议或另行指定可供用户使用的特定商业服务外，用户不得通过乐育学院发布有关任意第三方的广告宣传内容。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;7&lt;font face=&quot;宋体&quot;&gt;．用户就其所上传的内容承担全部法律责任。因用户违反法律规定或本协议规定造成违约或侵犯第三方合法权益的，由用户自行解决。如果给乐育学院造成损失，乐育学院有权向用户追偿其因此所遭受的全部损失，包括其直接损失、间接损失、预期利益损失及因维权而产生的包括但不限于律师费、诉讼费、鉴定费、取证费、差旅费、误工费等损失。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;第六条【用户个人信息保护】&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;用户注册并获得乐育学院提供的服务时，乐育学院可能需要搜集能识别用户身份的个人信息以便可以在必要时联系用户，或为用户提供更好的使用体验。&lt;/font&gt;&amp;ldquo;&lt;font face=&quot;宋体&quot;&gt;个人信息&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;rdquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;包括但不限于用户的姓名、性别、年龄、出生日期、联系电话、身份证号、地址、受教育情况、公司情况、所属行业、兴趣爱好、手机软硬件信息、手机识别码等。乐育学院承诺，未经用户同意，不会以非法方式披露应予保密的用户个人信息。但是下列情形除外：依照法律或司法、行政机关的强制性命令对第三方披露用户个人信息且无需事先向用户发出通知。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;1&lt;font face=&quot;宋体&quot;&gt;．用户在下列情况下授权乐育学院利用用户的个人信息：&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;（&lt;/font&gt;1&lt;font face=&quot;宋体&quot;&gt;）在紧急情况下，为维护用户及公众的权益。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;2&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）为维护乐育学院的著作权、商标权、专利权及其他任何合法权利或权益。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;3&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）在进行促销或抽奖时，乐育学院可能会与赞助商共享用户的个人信息，在这些情况下乐育学院会在发送用户信息之前进行提示，并且用户可以通过明确表示不参与活动而终止传送。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;4&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）为获取第三方数据而将用户信息与第三方数据匹配。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;5&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）将用户数据用于统计，以便向未来的合作伙伴、广告商及其他第三方以及为了其他合法目的而描述乐育学院的服务。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;第七条【知识产权】&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;1&lt;font face=&quot;宋体&quot;&gt;．北京乐育学院教育科技有限公司对网站、&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;app/M&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;页服务及本网站、&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;app&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;所使用的软件所包含的受知识产权法或其他法律保护的资料享有相应的权利，本网站、&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;app/M&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;页的整体内容版权（包括但不仅限于设计图样以及其他图样、产品及服务名称）归北京乐育学院教育科技有限公司所有，任何人不得使用、复制或用作其他用途。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;2&lt;font face=&quot;宋体&quot;&gt;．经由本网站传送的文字、图片、音频、视频及其他内容，受到著作权法、商标法、专利法或其他法律的保护；除该文字、图片、音频、视频及其他内容的上传用户所享有的著作权，未经北京乐育学院教育科技有限公司书面授权许可，不得自行或许可第三方不得进行修改、出租、售卖或衍生其他作品。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;3&lt;font face=&quot;宋体&quot;&gt;．乐育学院对其专有内容、原创内容和其他通过授权取得的独占或者独家内容享有知识产权。未经乐育学院书面许可，任何单位和个人不得私自转载、传播和提供收听服务或者有其他侵犯乐育学院知识产权的行为。否则，将承担法律责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;4&lt;font face=&quot;宋体&quot;&gt;．除非乐育学院收到相反通知，乐育学院将用户视为其在乐育学院上传或发布的内容的版权所有人。用户点击同意本协议，即表明该用户将在乐育学院上发表的全部内容（包括但不仅限于留言、评论和笔记），授予乐育学院全球范围的、免费的、不可撤销的、非独家使用许可，乐育学院有权将该内容用于乐育学院各种形态的产品和服务上，包括但不限于乐育学院已经发表的应用或其他互联网产品。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;5&lt;font face=&quot;宋体&quot;&gt;．用户在乐育学院上传或发表的内容，应保证其为著作权人或已取得合法授权，并且该内容不会侵犯任何第三方的合法权益。如果第三方提出关于著作权的异议，乐育学院有权根据实际情况删除相关的内容，且有权追究用户的法律责任。给乐育学院或任何第三方造成损失的，用户应负责全额赔偿。同时用户许可北京乐育学院教育科技有限公司有权利就任何主体侵权而单独提起诉讼，并获得赔偿。本协议已经构成《著作权法》（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;2010&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;年修订版）第二十五条所规定的书面协议，其效力及于用户在乐育学院发布的任何受著作权法保护的内容，无论该内容形成于本协议签订前还是本协议签订后。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;第八条【乐育学院的商业活动】&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;用户理解并接受，乐育学院为维护其运营，可以进行下述商业活动：&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;1&lt;font face=&quot;宋体&quot;&gt;．通过电子邮件、客户端、网页或其他合法方式向用户发送推广信息或其他相关商业信息。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;2&lt;font face=&quot;宋体&quot;&gt;．通过增值服务系统或其他方式向用户发送相关服务信息或其他信息，其他信息包括但不限于通知信息、宣传信息、广告信息等。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;第九条【免责说明】&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;1&lt;font face=&quot;宋体&quot;&gt;．乐育学院作为网络服务提供者，不担保网站平台上的信息及服务能充分满足用户的需求。因法律、政策、技术、经济、管理的原因，除非您和乐育学院另有约定，乐育学院不会因以下情形出现而对您承担责任：&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;（&lt;/font&gt;1&lt;font face=&quot;宋体&quot;&gt;）乐育学院无法使用或中断使用或无法完全适合用户的使用要求。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;2&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）乐育学院受到干扰，无法及时、安全、可靠运行，或出现任何错误。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;3&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）经由乐育学院取得的任何产品、服务（含收费服务）或其他材料不符合您的期望。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;4&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）用户资料遭到未经授权的使用或修改。&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;2&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;．乐育学院不对您在本协议项下服务中相关数据的删除或储存失败负责。乐育学院可以根据实际情况自行决定用户在本服务中数据的最长储存期限，并在服务器上为其分配数据最大存储空间等。如您停止使用乐育学院（账户沉睡&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;3&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;个月及以上或用户自行注销个人账户），或乐育学院所提供的服务终止或中止，乐育学院可以从服务器上永久地删除用户的数据。乐育学院没有义务向用户返还任何数据。用户在接受乐育学院服务的过程中，可能遇到错误、侮辱、诽谤、不作为、淫秽、色情或亵渎事件，乐育学院不承担法律责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;3&lt;font face=&quot;宋体&quot;&gt;．当用户所享有的服务中显示其他第三方网站或内容时，由于乐育学院无法控制及审核该网站或内容，因此并不对该网站或内容真实性、有效性、合法性等效力承担责任。对于用户任何因使用或信赖该网站或内容所导致的任何直接或间接损失，乐育学院均不承担任何责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;4&lt;font face=&quot;宋体&quot;&gt;．由于用户将个人注册账号信息告知他人或与他人共享注册帐号的，由此导致的任何风险或损失，乐育学院不对此负任何责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;5&lt;font face=&quot;宋体&quot;&gt;．任何由于黑客攻击、计算机病毒侵入或发作、政府管制、硬件故障、不可抗力等非乐育学院故意或严重过失而造成的用户个人资料泄露、丢失、被盗用、被篡改或服务暂定或终止的，对注册用户所造成的风险或损失，乐育学院均免责。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;6&lt;font face=&quot;宋体&quot;&gt;．若因线路及非乐育学院控制范围外的或其它不可抗力而导致暂停服务暂定或终止，所造成的一切风险与损失，乐育学院不负任何责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;7&lt;font face=&quot;宋体&quot;&gt;．乐育学院有权根据用户的实际需求进行服务调整的权利，并有权根据实际情况调整本网站内容的售价，由此造成的一切不便与损失，乐育学院均免责。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;第十条【第三方链接】&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;为方便您使用，乐育学院可能会提供第三方国际互联网网站或资源链接，除非另有声明，乐育学院无法对第三方网站服务进行控制，因此由于下载、传播、使用或依赖上述网站或资源产生的损失或损害，用户自行承担全部责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;第十一条【服务终止】&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;1&lt;font face=&quot;宋体&quot;&gt;．本协议或本协议项下乐育学院所提供的服务（含收费服务）可在下述情形下部分或全部中止或终止：&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;（&lt;/font&gt;1&lt;font face=&quot;宋体&quot;&gt;）因法律规定，或乐育学院服从行政命令或司法判令的要求。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;2&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）用户违反本协议。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;3&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）乐育学院认为应予终止的其他情形。&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;2&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;．在一般情形下，乐育学院会提前按照用户提供的联系方式以电子邮件或短信或其他电子方式通知用户，服务将中止或终止。用户应了解并同意，在紧急情况或特殊下，乐育学院可不经通知即中止或终止服务。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;3&lt;font face=&quot;宋体&quot;&gt;．在本协议或本协议项下乐育学院提供的服务（含收费服务）中止或终止时，乐育学院有权：&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;（&lt;/font&gt;1&lt;font face=&quot;宋体&quot;&gt;）拒绝用户登录乐育学院。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;2&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）删除用户信息。（&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;3&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;）删除用户购买的内容。&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;4&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;．用户同意，不因本协议或本协议项下乐育学院所提供的服务中止或终止，而要求北京乐育学院教育科技有限公司（及关联方）或乐育学院向您作出赔偿或补偿或承担任何其他责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;第十二条&lt;/font&gt; &lt;font face=&quot;宋体&quot;&gt;【侵权投诉】&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;1&lt;font face=&quot;宋体&quot;&gt;．根据《中华人民共和国侵权责任法》的规定，任何第三方认为，用户利用乐育学院侵害其民事权益或实施侵权行为的，被侵权人有权书面通知乐育学院采取删除、屏蔽、断开链接等必要措施。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;2&lt;font face=&quot;宋体&quot;&gt;．侵权投诉必须包含下述信息：被侵权人的有效权利证明材料，或被侵权作品的原始链接及其他证明材料；侵权信息或作品在乐育学院上的具体名称及链接；侵权投诉人的联络方式，以便乐育学院及时与您取得联系，包括电子邮件地址、电话号码或手机号码等；投诉内容须纳入以下声明：&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;ldquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;本人本着诚信原则，有证据认为该对象侵害本人的合法权益。本人承诺全部投诉信息真实、准确，自愿承担一切后果。&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;rdquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;；本人亲笔签字并注明日期，如代理他人投诉的，必须出具授权人签字的授权书。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;第十三条【法律责任】&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;1&lt;font face=&quot;宋体&quot;&gt;．用户就所上传的内容承担全部法律责任；无论前述责任是因侵犯第三方权利所引起的、或因用户违反与第三方或本协议引起的、或因用户违反法律引起的；前述责任包括对乐育学院或第三方所承担的民事责任、或行政机关要求承担的行政责任或刑事责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;2&lt;font face=&quot;宋体&quot;&gt;．如因用户违反法律规定或本协议规定给乐育学院造成损失，用户应当充分赔偿乐育学院所遭受的损失、包括其直接损失、间接损失、预期利益损失等一切损失。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;3&lt;font face=&quot;宋体&quot;&gt;．用户承诺，如因第三方向用户主张权利而导致用户承担责任，或用户承担行政责任或刑事责任的，用户不以此为理由追究乐育学院的责任。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;4&lt;font face=&quot;宋体&quot;&gt;．如用户应向乐育学院承担责任，前述责任不因本协议或本协议项下的服务被终止而免除。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;第十四条【法律适用、管辖和其他】&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;1&lt;font face=&quot;宋体&quot;&gt;．本协议的生效、履行、解释及争议的解决均适用中华人民共和国法律。用户因使用乐育学院而产生或与之相关的一切争议、权利主张或其他事项，均适用中华人民共和国法律。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;2&lt;font face=&quot;宋体&quot;&gt;．用户与乐育学院发生的一切争议，应友好协商，如协商不成的，任何乙方均可向乐育学院所在地人民法院提起诉讼，乐育学院所在地即北京市昌平区。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;3&lt;font face=&quot;宋体&quot;&gt;．乐育学院可能不时发布针对用户的相关协议，并可能将该相关协议作为对本协议的补充或修改而将其内容作为本协议的一部分。请用户及时关注并阅读相关协议。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;4&lt;font face=&quot;宋体&quot;&gt;．本协议任意一条被视为废止、无效或不可执行，该条款应视为可分的且不影响本协议其他条款的法律效力。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;5&lt;font face=&quot;宋体&quot;&gt;．上述条款的解释权在法律允许的范围内归乐育学院所有。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;margin-top:7.5000pt; margin-bottom:7.5000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-weight:bold&quot;&gt;&lt;span style=&quot;font-size:13.5000pt&quot;&gt;&lt;span style=&quot;font-family:inherit&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;span style=&quot;font-weight:normal&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;【审慎提醒】&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p class=&quot;p&quot; style=&quot;margin-top:0.0000pt; margin-bottom:0.0000pt&quot;&gt;&lt;span style=&quot;font-size:12pt&quot;&gt;&lt;span style=&quot;background:#ffffff&quot;&gt;&lt;span style=&quot;line-height:21.0000pt&quot;&gt;&lt;span style=&quot;font-family:宋体&quot;&gt;&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;如您点击&lt;/font&gt;&amp;ldquo;&lt;font face=&quot;宋体&quot;&gt;同意&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;&amp;rdquo;&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;，则本协议将立即生效，并构成用户和北京乐育学院教育科技有限公司及其经营的相关网站、&lt;/font&gt;&lt;font face=&quot;PingFangSC-Light&quot;&gt;App&lt;/font&gt;&lt;font face=&quot;宋体&quot;&gt;之间有约束力的法律文件。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-size:10.5000pt&quot;&gt;&lt;span style=&quot;font-family:PingFangSC-Light&quot;&gt;&lt;span style=&quot;color:#333333&quot;&gt;&lt;font face=&quot;宋体&quot;&gt;请您再次确认您已全部阅读并充分理解上述协议。&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-bottom:10pt&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n', '2019-03-07 02:23:33');

-- --------------------------------------------------------

--
-- 表的结构 `camp_chapter`
--

CREATE TABLE `camp_chapter` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `camp_id` int(11) DEFAULT NULL COMMENT '课程id',
  `status` tinyint(1) DEFAULT '1' COMMENT '0禁用 1启用',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0正常 1删除'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='七天课程章节表';

--
-- 转存表中的数据 `camp_chapter`
--

INSERT INTO `camp_chapter` (`id`, `name`, `camp_id`, `status`, `is_deleted`) VALUES
(1, '前端实训课第1章', 1, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `camp_content`
--

CREATE TABLE `camp_content` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '内容标题',
  `chapter_id` int(11) DEFAULT NULL COMMENT '所属课程',
  `video_url` varchar(255) DEFAULT NULL COMMENT '视频保存地址',
  `status` tinyint(1) DEFAULT '1' COMMENT '0禁用 1启用',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0正常 1删除',
  `is_free` tinyint(1) DEFAULT '0' COMMENT '是否免费0否 1是'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='七天课程-内容表(章节内容)';

--
-- 转存表中的数据 `camp_content`
--

INSERT INTO `camp_content` (`id`, `name`, `chapter_id`, `video_url`, `status`, `is_deleted`, `is_free`) VALUES
(1, '本次课程介绍', 1, '/static/upload/52b79d9573de471b/0e1d02fcd46566a2.mp4', 1, 0, 1),
(2, '学完本套课程的一个薪资有多少？', 1, '', 1, 0, 1),
(3, '前端能干什么？', 1, '', 1, 0, 1),
(4, '前端和其他语言相比有什么特点？', 1, '/static/upload/6ef8a7b8160cac45/3a709d28cb4d86f4.mp4', 1, 0, 0),
(5, '零基础学前端合适吗？', 1, '', 1, 0, 0),
(6, '前端的职业生涯发展方向有什么？', 1, '', 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `chapter_content`
--

CREATE TABLE `chapter_content` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '内容标题',
  `chapter_id` int(11) DEFAULT NULL COMMENT '所属课程',
  `video_url` varchar(255) DEFAULT NULL COMMENT '视频保存地址',
  `status` tinyint(1) DEFAULT '1' COMMENT '0禁用 1启用',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0正常 1删除',
  `is_free` tinyint(1) DEFAULT '0' COMMENT '是否免费试看0否 1是',
  `class_time` int(11) DEFAULT NULL COMMENT '课时'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='免费课程-内容表(章节内容)';

--
-- 转存表中的数据 `chapter_content`
--

INSERT INTO `chapter_content` (`id`, `name`, `chapter_id`, `video_url`, `status`, `is_deleted`, `is_free`, `class_time`) VALUES
(1, 'PHP学习第1课', 1, '/static/upload/6ef8a7b8160cac45/3a709d28cb4d86f4.mp4', 1, 0, 1, 8),
(2, 'PHP学习第2课', 1, '/static/upload/60fc24bbbfea0dd2/eb0e56ae47d914af.MP4', 1, 0, 1, 8),
(3, 'PHP学习第3课', 2, '', 1, 0, 0, 15),
(4, 'Python学习第1课', 3, '/static/upload/6ef8a7b8160cac45/3a709d28cb4d86f4.mp4', 1, 0, 1, 12),
(5, '3344', 5, '/static/upload/6ef8a7b8160cac45/3a709d28cb4d86f4.mp4', 1, 0, 0, 5),
(6, 'web开发前景', 6, '/static/upload/6ef8a7b8160cac45/3a709d28cb4d86f4.mp4', 1, 0, 0, 6),
(7, 'jiaba ', 6, '/static/upload/61023c78fe2ffe30/58cf27c21aec4262.avi', 1, 0, 0, NULL),
(8, 'js第一天课程', 7, '', 1, 0, 0, NULL),
(9, 'node.JS', 8, '/static/upload/6ef8a7b8160cac45/3a709d28cb4d86f4.mp4', 1, 0, 0, NULL),
(10, 'ffdfdf', 9, '/static/upload/6ef8a7b8160cac45/3a709d28cb4d86f4.mp4', 1, 0, 0, NULL),
(11, '撒旦', 10, '/static/upload/6ef8a7b8160cac45/3a709d28cb4d86f4.mp4', 1, 0, 0, NULL),
(12, '的撒旦的', 11, '/static/upload/6ef8a7b8160cac45/3a709d28cb4d86f4.mp4', 1, 0, 0, NULL),
(13, 'dsadsad', 12, '/static/upload/6ef8a7b8160cac45/3a709d28cb4d86f4.mp4', 1, 0, 0, NULL),
(14, 'huhuhu', 13, '/static/upload/6ef8a7b8160cac45/3a709d28cb4d86f4.mp4', 1, 0, 0, NULL),
(15, 'z', 14, '/static/upload/6ef8a7b8160cac45/3a709d28cb4d86f4.mp4', 1, 0, 1, NULL),
(16, 'wqe', 16, '/static/upload/6ef8a7b8160cac45/3a709d28cb4d86f4.mp4', 1, 0, 1, NULL),
(17, 'zzz', 17, '/static/upload/6ef8a7b8160cac45/3a709d28cb4d86f4.mp4', 1, 0, 1, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `course_chapter`
--

CREATE TABLE `course_chapter` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL COMMENT '课程id',
  `status` tinyint(1) DEFAULT '1' COMMENT '0禁用 1启用',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0正常 1删除'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='免费课程章节表';

--
-- 转存表中的数据 `course_chapter`
--

INSERT INTO `course_chapter` (`id`, `name`, `course_id`, `status`, `is_deleted`) VALUES
(1, 'PHP学习章节1', 1, 1, 0),
(2, 'PHP学习章节2', 1, 1, 0),
(3, 'Python学习章节1', 2, 1, 0),
(4, 'PHP学习章节3', 1, 1, 0),
(5, '100天课程+20个项目实战，前端全栈课程带你冲击月薪20K', 3, 1, 0),
(6, '互联网的前景', 4, 1, 0),
(7, 'web前端学习', 1, 1, 0),
(8, 'node.JS', 2, 1, 0),
(9, 'fdf', 6, 1, 0),
(10, '倒萨倒萨', 7, 1, 0),
(11, '的撒旦', 8, 1, 0),
(12, 'ds dffff', 9, 1, 0),
(13, '112', 13, 1, 0),
(14, 'zzz', 14, 1, 1),
(15, 'zzz', 14, 1, 0),
(16, 'Z1', 14, 1, 0),
(17, 'zz', 16, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `course_comment`
--

CREATE TABLE `course_comment` (
  `id` int(11) UNSIGNED NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `score` varchar(50) DEFAULT NULL COMMENT '评分',
  `impress` varchar(255) DEFAULT NULL COMMENT '评价',
  `content` text COMMENT '评论',
  `status` tinyint(1) DEFAULT '1' COMMENT '0j 1q',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0zc  1sc',
  `course_type` tinyint(1) DEFAULT NULL COMMENT '1免费课程2学位课程3七天课程4公开课',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='课程评价表';

--
-- 转存表中的数据 `course_comment`
--

INSERT INTO `course_comment` (`id`, `course_id`, `member_id`, `score`, `impress`, `content`, `status`, `is_deleted`, `course_type`, `create_at`) VALUES
(1, 1, 1, '5-5-5', '讲解清晰,内容实用,老司机', '111', 1, 0, 1, '2018-12-04 05:16:32'),
(2, 2, 1, '3-3-4', '讲解清晰,老司机', '112233', 1, 0, 1, '2018-12-05 09:16:41'),
(3, 1, 1, '5-5-5', '讲解清晰,老司机', '111', 1, 0, 1, '2018-12-05 10:16:41'),
(4, 1, 1, '5-5-5', '讲解清晰,内容实用,老司机', '感觉干IT赚的多，在逛知乎时候看见了个帖子说Python工资高好上手，作为小白看见帖子最下面的个分享资源的公众号，添加了要了个盗版的老男孩的Python的周末班的视频，看了第一节就被Alex的鸡汤洗脑了，我也想开特斯拉，因为怕自己不适合学这些东西，所以看到了第九周的课程，感觉能听懂也有些兴趣，但是下不了决心辞职脱产学，然后逛了下Alex的博客园，看了他几篇博客，瞬间打了鸡血，时间最重要啊，下班学Python的那点时间我要1年能转行成功就算是很快的了，还是果断辞职把，线下班在沙河上课实在路程太远，要至少2个半小时的路程，最后果断选择了路飞学城。', 1, 0, 2, '2018-12-08 08:16:57'),
(5, 1, 1, '5-5-5', '讲解清晰,内容实用,通俗易懂,老司机', '感觉干IT赚的多，在逛知乎时候看见了个帖子说Python工资高好上手，作为小白看见帖子最下面的个分享资源的公众号，添加了要了个盗版的老男孩的Python的周末班的视频，看了第一节就被Alex的鸡汤洗脑了，我也想开特斯拉，因为怕自己不适合学这些东西，所以看到了第九周的课程，感觉能听懂也有些兴趣，但是下不了决心辞职脱产学，然后逛了下Alex的博客园，看了他几篇博客，瞬间打了鸡血，时间最重要啊，下班学Python的那点时间我要1年能转行成功就算是很快的了，还是果断辞职把，线下班在沙河上课实在路程太远，要至少2个半小时的路程，最后果断选择了路飞学城。', 1, 0, 2, '2018-12-12 04:17:06'),
(6, 1, 8, '5-5-5', '讲解清晰,老司机', '很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错', 1, 0, 1, '2018-12-20 07:46:16'),
(7, 2, 8, '5-5-5', '讲解清晰,内容实用,老司机', '很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错很不错', 1, 0, 1, '2018-12-20 07:46:56');

-- --------------------------------------------------------

--
-- 表的结构 `course_homework`
--

CREATE TABLE `course_homework` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '作业标题',
  `question_id` int(11) DEFAULT NULL COMMENT '作业问题id',
  `member_id` int(11) DEFAULT NULL COMMENT '学员id',
  `member_name` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL COMMENT '作业内容',
  `create_time` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='课堂作业表(学生回答问题)';

-- --------------------------------------------------------

--
-- 表的结构 `course_question`
--

CREATE TABLE `course_question` (
  `id` int(11) UNSIGNED NOT NULL,
  `teacher_id` int(11) DEFAULT NULL COMMENT '老师id',
  `teacher_name` varchar(255) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL COMMENT '课程id',
  `course_name` varchar(255) DEFAULT NULL,
  `content` text,
  `create_time` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='课程问题表(老师布置)';

-- --------------------------------------------------------

--
-- 表的结构 `course_type`
--

CREATE TABLE `course_type` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '0禁用 1启用',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0正常1删除',
  `create_at` datetime DEFAULT NULL,
  `is_index` tinyint(1) DEFAULT '0' COMMENT '手机端是否首页展示，0否，1是',
  `imgurl` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='课程分类表';

--
-- 转存表中的数据 `course_type`
--

INSERT INTO `course_type` (`id`, `name`, `status`, `is_deleted`, `create_at`, `is_index`, `imgurl`) VALUES
(1, 'PHP', 1, 1, '2018-10-24 14:07:08', 0, NULL),
(2, 'Python', 1, 1, NULL, 0, NULL),
(3, 'java', 1, 1, NULL, 0, NULL),
(4, '全栈前端', 1, 0, NULL, 1, '/static/upload/80a20295efe9100a/51e93fce2efd77b1.jpg'),
(5, 'javascript', 1, 0, NULL, 1, '/static/upload/ab5fc97ccf67f790/87408ee2fb440d1f.jpg'),
(6, 'java', 1, 0, NULL, 0, ''),
(7, 'python', 1, 0, NULL, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `degree_chapter`
--

CREATE TABLE `degree_chapter` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL COMMENT '课程id',
  `status` tinyint(1) DEFAULT '1' COMMENT '0禁用 1启用',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0正常 1删除'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='学位课程章节表';

--
-- 转存表中的数据 `degree_chapter`
--

INSERT INTO `degree_chapter` (`id`, `name`, `module_id`, `status`, `is_deleted`) VALUES
(1, '章节1', 1, 1, 0),
(2, '章节2', 1, 1, 1),
(3, '前端课程', 2, 1, 0),
(4, 'zz', 4, 1, 0),
(5, '3.5 盒模型', 3, 1, 1),
(6, '3.6 列表', 3, 1, 1),
(7, '3.7 伪元素与伪类', 3, 1, 1),
(8, '3.8 a标签', 3, 1, 1),
(9, '3.9 背景', 3, 1, 1),
(10, '3.10 精灵图', 3, 1, 1),
(11, '3.11 文档流', 3, 1, 1),
(12, '3.12 浮动', 3, 1, 1),
(13, '3.13 定位', 3, 1, 1),
(14, '3.14 css单位', 3, 1, 1),
(15, '3.15 hack', 3, 1, 1),
(16, 'CSS开发 第一天', 3, 1, 0),
(17, 'CSS开发 第二天', 3, 1, 0),
(18, 'CSS开发 第三天', 3, 1, 0),
(19, 'CSS开发 第四天', 3, 1, 0),
(20, 'HTML5 第一天', 5, 1, 0),
(21, 'css3 第一天', 6, 1, 0),
(22, 'css3 第二天', 6, 1, 0),
(23, 'Bootstrap 第一天', 7, 1, 0),
(24, 'JavaScript 第一天', 8, 1, 0),
(25, 'JavaScript 第二天', 8, 1, 0),
(26, 'JavaScript 第三天', 8, 1, 0),
(27, 'JavaScript 第四天', 8, 1, 0),
(28, 'JavaScript 第四天', 8, 1, 1),
(29, 'BOM操作 第一天', 9, 1, 0),
(30, 'DOM操作 第一天', 10, 1, 0),
(31, 'DOM操作 第二天', 10, 1, 0),
(32, 'DOM操作 第三天', 10, 1, 0),
(33, 'jQuery开发 第一天', 11, 1, 0),
(34, 'jQuery开发 第二天', 11, 1, 0),
(35, 'jQuery开发 第三天', 11, 1, 0),
(36, '面向对象编程 第一天', 12, 1, 0),
(37, '面向对象编程 第二天', 12, 1, 0),
(38, 'ECMAScript5 第一天', 13, 1, 0),
(39, 'ECMAScript5 第二天', 13, 1, 0),
(40, '模块化开发 第一天', 14, 1, 0),
(41, '模块化开发 第二天', 14, 1, 0),
(42, '模块化开发 第一天', 14, 1, 1),
(43, '移动端开发 第一天', 15, 1, 0),
(44, 'Highcharts 第一天', 16, 1, 0),
(45, 'CSS 3D 第一天', 17, 1, 0),
(46, 'HTML5 第一天', 18, 1, 0),
(47, 'canvas应用 第一天', 19, 1, 0),
(48, 'canvas应用 第二天', 19, 1, 0),
(49, 'canvas应用 第三天', 19, 1, 0),
(50, '设计模式 第一天', 20, 1, 0),
(51, '设计模式 第二天', 20, 1, 0),
(52, '设计模式 第三天', 20, 1, 0),
(53, 'Ajax第一天', 21, 1, 0),
(54, 'Ajax第二天', 21, 1, 0),
(55, 'Ajax第三天', 21, 1, 0),
(56, 'MVC与MVVM 第一天', 22, 1, 0),
(57, 'MVC与MVVM 第二天', 22, 1, 0),
(58, 'Backbone 第一天', 24, 1, 0),
(59, 'Backbone 第二天', 24, 1, 0),
(60, 'Backbone 第三天', 24, 1, 0),
(61, 'NodeJS 第一天', 25, 1, 0),
(62, 'NodeJS 第二天', 25, 1, 0),
(63, 'NodeJS 第三天', 25, 1, 0),
(64, 'NodeJS 第四天', 25, 1, 0),
(65, '前端工程化与优化 第一天', 26, 1, 0),
(66, '前端工程化与优化 第二天', 26, 1, 0),
(67, '质量保证：安全防护、前端规范与测试集成', 27, 1, 0),
(68, 'css预编译 第一天', 28, 1, 0),
(69, 'css预编译 第二天', 28, 1, 0),
(70, 'ECMAScript 6 第一天', 29, 1, 0),
(71, 'ECMAScript 6 第二天', 29, 1, 0),
(72, 'ECMAScript 6 第三天', 29, 1, 0),
(73, '微信小程序 第一天', 30, 1, 0),
(74, '微信小程序 第二天', 30, 1, 0),
(75, '微信小程序 第三天', 30, 1, 0),
(76, 'Vue2.0开发与实战 第一天', 31, 1, 0),
(77, 'Vue2.0开发与实战 第二天', 31, 1, 0),
(78, 'Vue2.0开发与实战 第三天', 31, 1, 0),
(79, 'Vue2.0开发与实战 第四天', 31, 1, 0),
(80, 'Vue2.0开发与实战 第五天', 31, 1, 0),
(81, 'React 开发与实现 第一天', 32, 1, 0),
(82, 'React 开发与实现 第二天', 32, 1, 0),
(83, 'React 开发与实现 第三天', 32, 1, 0),
(84, 'React 开发与实现 第四天', 32, 1, 0),
(85, 'React 开发与实现 第五天', 32, 1, 0),
(86, 'Angular8.0 开发与实战 第一天', 33, 1, 0),
(87, 'Angular8.0 开发与实战 第二天', 33, 1, 0),
(88, 'Angular8.0 开发与实战 第三天', 33, 1, 0),
(89, 'Angular8.0 开发与实战 第四天', 33, 1, 0),
(90, '电商授课系统 第一天', 34, 1, 0),
(91, '电商授课系统 第二天', 34, 1, 0),
(92, '电商授课系统 第三天', 34, 1, 0),
(93, '电商授课系统 第四天', 34, 1, 0),
(94, '电商授课系统 第五天', 34, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `degree_content`
--

CREATE TABLE `degree_content` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '内容标题',
  `chapter_id` int(11) DEFAULT NULL COMMENT '所属课程',
  `video_url` varchar(255) DEFAULT NULL COMMENT '视频保存地址',
  `status` tinyint(1) DEFAULT '1' COMMENT '0禁用 1启用',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0正常 1删除',
  `is_free` tinyint(1) DEFAULT '0' COMMENT '是否免费0否 1是'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='学位课程-内容表(章节内容)';

--
-- 转存表中的数据 `degree_content`
--

INSERT INTO `degree_content` (`id`, `name`, `chapter_id`, `video_url`, `status`, `is_deleted`, `is_free`) VALUES
(1, '1.1 本次课程介绍', 1, '/static/upload/52b79d9573de471b/0e1d02fcd46566a2.mp4', 1, 0, 1),
(2, '2.1 HTML骨架', 3, 'http://lyxy.td3131.com/static/upload/61023c78fe2ffe30/58cf27c21aec4262.avi', 1, 0, 0),
(3, 'zq', 4, '/static/upload/6ef8a7b8160cac45/3a709d28cb4d86f4.mp4', 1, 0, 1),
(4, '1.2 前端开发工具介绍', 1, '/static/upload/6ef8a7b8160cac45/3a709d28cb4d86f4.mp4', 1, 0, 0),
(5, '1.3 前端开发语言', 1, '', 1, 0, 0),
(6, '1.4 Git版本管理工具', 1, '', 1, 0, 0),
(7, '2.2 标签', 3, '', 1, 0, 0),
(8, '2.3 列表', 3, '', 1, 0, 0),
(9, '2.4 表格', 3, '', 1, 0, 0),
(10, '2.5 表单', 3, '', 1, 0, 0),
(11, '2.6 HTML杂项', 3, '', 1, 0, 0),
(12, '3.1 css概述', 16, '', 1, 0, 0),
(13, '3.2 选择器', 16, '', 1, 0, 0),
(14, '3.3 css特性', 16, '', 1, 0, 0),
(15, '3.4 字体', 16, '', 1, 0, 0),
(16, '3.5 盒模型', 17, '', 1, 0, 0),
(17, '3.6 列表', 17, '', 1, 0, 0),
(18, '3.7 伪元素与伪类', 17, '', 1, 0, 0),
(19, '3.8 a标签', 17, '', 1, 0, 0),
(20, '3.9 背景', 17, '', 1, 0, 0),
(21, '3.10 精灵图', 17, '', 1, 0, 0),
(22, '3.11 文档流', 18, '', 1, 0, 0),
(23, '3.12 浮动', 18, '', 1, 0, 0),
(24, '3.13 定位', 19, '', 1, 0, 0),
(25, '3.14 css单位', 19, '', 1, 0, 0),
(26, '3.15 hack', 19, '', 1, 0, 0),
(27, '3.16 实战', 19, '', 1, 0, 0),
(28, '4.1 html5概述', 20, '', 1, 0, 0),
(29, '4.2 标签语义化', 20, '', 1, 0, 0),
(30, '4.3 表单', 20, '', 1, 0, 0),
(31, '4.4 多媒体', 20, '', 1, 0, 0),
(32, '5.1 选择器', 21, '', 1, 0, 0),
(33, '5.2 伪类与伪元素', 21, '', 1, 0, 0),
(34, '5.3 圆角与边框', 21, '', 1, 0, 0),
(35, '5.4 阴影', 21, '', 1, 0, 0),
(36, '5.5 背景', 21, '', 1, 0, 0),
(37, '5.6 字体文本', 22, '', 1, 0, 0),
(38, '5.7 过渡、变换与动画', 22, '', 1, 0, 0),
(39, '5.8 可伸缩盒模型', 22, '', 1, 0, 0),
(40, '5.9 布局', 22, '', 1, 0, 0),
(41, '5.10 其他拓展', 22, '', 1, 0, 0),
(42, '6.1 概述', 23, '', 1, 0, 0),
(43, '6.2 排版', 23, '', 1, 0, 0),
(44, '6.3 按钮', 23, '', 1, 0, 0),
(45, '6.4 辅助类', 23, '', 1, 0, 0),
(46, '6.5 栅格系统', 23, '', 1, 0, 0),
(47, '6.6 代码', 23, '', 1, 0, 0),
(48, '6.7 表格', 23, '', 1, 0, 0),
(49, '6.8 表单', 23, '', 1, 0, 0),
(50, '6.9 组件', 23, '', 1, 0, 0),
(51, '7.1 JavaScript简述', 24, '', 1, 0, 0),
(52, '7.2 变量', 24, '', 1, 0, 0),
(53, '7.3 数字', 24, '', 1, 0, 0),
(54, '7.4 运算', 24, '', 1, 0, 0),
(55, '7.5 条件语句', 24, '', 1, 0, 0),
(56, '7.6 循环语句', 25, '', 1, 0, 0),
(57, '7.7 函数', 25, '', 1, 0, 0),
(58, '7.8 数组', 26, '', 1, 0, 0),
(59, '7.9 字符串', 26, '', 1, 0, 0),
(60, '7.10 正则', 27, '', 1, 0, 0),
(61, '7.11 对象与JSON对象', 27, '', 1, 0, 0),
(62, '7.12 定时器', 27, '', 1, 0, 0),
(63, '7.13 更改作用域', 27, '', 1, 0, 0),
(64, '8.1 BOM', 29, '', 1, 0, 0),
(65, '9.1 基本DOM操作', 30, '', 1, 0, 0),
(66, '9.2 节点操作', 30, '', 1, 0, 0),
(67, '9.3 动画', 30, '', 1, 0, 0),
(68, '9.4 事件', 31, '', 1, 0, 0),
(69, '9.5 位置与距离', 32, '', 1, 0, 0),
(70, '9.6 放大器', 32, '', 1, 0, 0),
(71, '9.7 滚轮事件', 32, '', 1, 0, 0),
(72, '9.8 键盘事件', 32, '', 1, 0, 0),
(73, '10.1 jQuery基础', 33, '', 1, 0, 0),
(74, '10.2 事件', 33, '', 1, 0, 0),
(75, '10.3 位置与尺寸', 33, '', 1, 0, 0),
(76, '10.5 节点操作', 34, '', 1, 0, 0),
(77, '10.6 查找节点', 34, '', 1, 0, 0),
(78, '10.7 动画', 34, '', 1, 0, 0),
(79, '10.8 特效', 35, '', 1, 0, 0),
(80, '10.9 轮播图', 35, '', 1, 0, 0),
(81, '10.10 手风琴', 35, '', 1, 0, 0),
(82, '11.1 面向对象编程', 36, '', 1, 0, 0),
(83, '11.2 气球游戏', 36, '', 1, 0, 0),
(84, '11.3 类的原型', 36, '', 1, 0, 0),
(85, '11.4 继承', 36, '', 1, 0, 0),
(86, '11.5 内置构造函数', 36, '', 1, 0, 0),
(87, '11.6 贪吃蛇游戏', 37, '', 1, 0, 0),
(88, '12.1 ES5介绍', 38, '', 1, 0, 0),
(89, '12.2 JSON拓展', 38, '', 1, 0, 0),
(90, '12.3 数组拓展', 38, '', 1, 0, 0),
(91, '12.4 函数拓展', 38, '', 1, 0, 0),
(92, '12.5 严格模式', 39, '', 1, 0, 0),
(93, '12.6 特性', 39, '', 1, 0, 0),
(94, '12.7 对象拓展', 39, '', 1, 0, 0),
(95, '13.1 seajs', 40, '', 1, 0, 0),
(96, '13.2 requirejs', 41, '', 1, 0, 0),
(97, '14.1 移动端响应式', 43, '', 1, 0, 0),
(98, '14.2 移动端事件', 43, '', 1, 0, 0),
(99, '14.3滑动轮播图', 43, '', 1, 0, 0),
(100, '14.4 zepto框架', 43, '', 1, 0, 0),
(101, '14.5 swiper框架', 43, '', 1, 0, 0),
(102, '15.1 Highcharts', 44, '', 1, 0, 0),
(103, '16.1 3D', 45, '', 1, 0, 0),
(104, '16.2 3D案例', 45, '', 1, 0, 0),
(105, '17.1 HTML5', 46, '', 1, 0, 0),
(106, '17.2.2 百度地图', 46, '', 1, 0, 0),
(107, '18.1 canvas操作', 47, '', 1, 0, 0),
(108, '18.2 Flappy Bird', 48, '', 1, 0, 0),
(109, '18.3 打地鼠', 49, '', 1, 0, 0),
(110, '19.1 设计模式概述', 50, '', 1, 0, 0),
(111, '19.2 工厂模式', 50, '', 1, 0, 0),
(112, '19.3 原型模式', 50, '', 1, 0, 0),
(113, '19.4 单利模式', 50, '', 1, 0, 0),
(114, '19.5 适配器模式', 50, '', 1, 0, 0),
(115, '19.6 组合模式', 51, '', 1, 0, 0),
(116, '19.7 观察者模式', 51, '', 1, 0, 0),
(117, '19.8 策略模式', 51, '', 1, 0, 0),
(118, '19.9 命令模式', 51, '', 1, 0, 0),
(119, '19.10 迭代器模式', 52, '', 1, 0, 0),
(120, '19.11 委托模式', 52, '', 1, 0, 0),
(121, '19.12 节流模式', 52, '', 1, 0, 0),
(122, '19.13 链模式', 52, '', 1, 0, 0),
(123, '20.1 HTTP、HTTPS与服务器', 53, '', 1, 0, 0),
(124, '20.2 NodeJS搭建服务器', 53, '', 1, 0, 0),
(125, '20.3 接口文档', 53, '', 1, 0, 0),
(126, '20.4 Ajax', 54, '', 1, 0, 0),
(127, '20.5 花瓣网瀑布流', 54, '', 1, 0, 0),
(128, '20.6 Ajax分页', 55, '', 1, 0, 0),
(129, '20.7 跨域', 55, '', 1, 0, 0),
(130, '20.8 Ajax 2.0', 55, '', 1, 0, 0),
(131, '20.9 懒加载', 55, '', 1, 0, 0),
(132, '21.1 MVC架构模式', 56, '', 1, 0, 0),
(133, '21.2 项目实战一', 56, '', 1, 0, 0),
(134, '21.3 项目实战二', 57, '', 1, 0, 0),
(135, '21.4 MVVM架构模式', 57, '', 1, 0, 0),
(136, '22.1 Backbone概述', 58, '', 1, 0, 0),
(137, '22.2 模型', 58, '', 1, 0, 0),
(138, '22.3 视图', 58, '', 1, 0, 0),
(139, '22.4 集合', 59, '', 1, 0, 0),
(140, '22.5 underscore拓展', 59, '', 1, 0, 0),
(141, '22.6 事件模块', 59, '', 1, 0, 0),
(142, '22.7 异步请求', 59, '', 1, 0, 0),
(143, '22.8 项目实战', 60, '', 1, 0, 0),
(144, '23.1 npm', 61, '', 1, 0, 0),
(145, '23.2 Express框架', 61, '', 1, 0, 0),
(146, '23.3 Mongo数据库', 61, '', 1, 0, 0),
(147, '23.4 相册项目一', 62, '', 1, 0, 0),
(148, '23.5 相册项目二', 63, '', 1, 0, 0),
(149, '23.6 多人聊天室', 64, '', 1, 0, 0),
(150, '24.1 性能优化', 65, '', 1, 0, 0),
(151, '24.2 Gulp', 65, '', 1, 0, 0),
(152, '24.3 Fis3 一', 65, '', 1, 0, 0),
(153, '24.4 Fis 3二', 66, '', 1, 0, 0),
(154, '24.5 webpack', 66, '', 1, 0, 0),
(155, '25.1 安全与规范', 67, '', 1, 0, 0),
(156, '25.2 异常与监控', 67, '', 1, 0, 0),
(157, '25.3 开发者工具', 67, '', 1, 0, 0),
(158, '25.4 前端规范', 67, '', 1, 0, 0),
(159, '25.5 测试与集成', 67, '', 1, 0, 0),
(160, '26.1 Less', 68, '', 1, 0, 0),
(161, '26.2 Sass 一', 68, '', 1, 0, 0),
(162, '26.3 Sass 二', 69, '', 1, 0, 0),
(163, '26.4 Stylus', 69, '', 1, 0, 0),
(164, '27.1 ES6基础', 70, '', 1, 0, 0),
(165, '27.2 面向对象', 70, '', 1, 0, 0),
(166, '27.3 字符串拓展', 70, '', 1, 0, 0),
(167, '27.4 数字拓展', 70, '', 1, 0, 0),
(168, '27.5 数组拓展', 70, '', 1, 0, 0),
(169, '27.6 对象拓展', 71, '', 1, 0, 0),
(170, '27.7 函数拓展', 71, '', 1, 0, 0),
(171, '27.8 解构', 71, '', 1, 0, 0),
(172, '27.9 代理', 71, '', 1, 0, 0),
(173, '27.10 Set与Map', 71, '', 1, 0, 0),
(174, '27.11 Iterator与for of循环', 71, '', 1, 0, 0),
(175, '27.12 generator函数', 72, '', 1, 0, 0),
(176, '27.13 async函数', 72, '', 1, 0, 0),
(177, '27.14 Promise对象', 72, '', 1, 0, 0),
(178, '27.15 RxJS', 72, '', 1, 0, 0),
(179, '27.16 Reflex', 72, '', 1, 0, 0),
(180, '27.17 ArrayBuffer', 72, '', 1, 0, 0),
(181, '27.18 Decorator', 72, '', 1, 0, 0),
(182, '28.1 小程序基础', 73, '', 1, 0, 0),
(183, '28.2.常用组件', 73, '', 1, 0, 0),
(184, '28.3 城市切换案例', 73, '', 1, 0, 0),
(185, '28.4 路由', 73, '', 1, 0, 0),
(186, '28.5 开放组件与wxs', 74, '', 1, 0, 0),
(187, '28.6 自定义组件', 74, '', 1, 0, 0),
(188, '28.7 通信', 74, '', 1, 0, 0),
(189, '28.8 指南针', 74, '', 1, 0, 0),
(190, '28.9 明信片', 74, '', 1, 0, 0),
(191, '28.10 其他常用API', 74, '', 1, 0, 0),
(192, '28.11 开放能力', 74, '', 1, 0, 0),
(193, '28.12 发布小程序', 75, '', 1, 0, 0),
(194, '28.13 项目实战', 75, '', 1, 0, 0),
(195, '29.1 Vue基础', 76, '', 1, 0, 0),
(196, '29.2 模板指令', 77, '', 1, 0, 0),
(197, '29.3 支付宝注册', 77, '', 1, 0, 0),
(198, '29.4 过渡', 77, '', 1, 0, 0),
(199, '29.5 表单的数据双向绑定', 77, '', 1, 0, 0),
(200, '29.6 自定义指令', 77, '', 1, 0, 0),
(201, '29.7 组件', 77, '', 1, 0, 0),
(202, '29.8 生命周期与组件通信', 78, '', 1, 0, 0),
(203, '29.9 Vuex', 78, '', 1, 0, 0),
(204, '29.10 路由', 78, '', 1, 0, 0),
(205, '29.11 axios', 79, '', 1, 0, 0),
(206, '29.12 vue组件', 79, '', 1, 0, 0),
(207, '29.13 mint-ui', 79, '', 1, 0, 0),
(208, '29.14 element-ui', 79, '', 1, 0, 0),
(209, '29.15 vue-cli', 80, '', 1, 0, 0),
(210, '29.16 项目实战', 80, '', 1, 0, 0),
(211, '30.1 性能优化', 81, '', 1, 0, 0),
(212, '30.2 虚拟DOM', 81, '', 1, 0, 0),
(213, '30.3 组件', 81, '', 1, 0, 0),
(214, '30.4 换肤', 82, '', 1, 0, 0),
(215, '30.5 组件生命周期', 82, '', 1, 0, 0),
(216, '30.6 组件约束性', 82, '', 1, 0, 0),
(217, '30.7 费React类库与侵入性', 82, '', 1, 0, 0),
(218, '30.8 组件通信', 82, '', 1, 0, 0),
(219, '30.9 组件开发项目实战', 83, '', 1, 0, 0),
(220, '30.10 Redux与观察者模式', 83, '', 1, 0, 0),
(221, '30.11 React中使用Redux', 84, '', 1, 0, 0),
(222, '30.12 路由', 84, '', 1, 0, 0),
(223, '30.13 Redux拓展', 84, '', 1, 0, 0),
(224, '30.14 使用UI框架', 84, '', 1, 0, 0),
(225, '30.15 工程化', 84, '', 1, 0, 0),
(226, '30.16 路由项目实战', 85, '', 1, 0, 0),
(227, '30.17 ReactNative', 85, '', 1, 0, 0),
(228, '31.1 typescript', 86, '', 1, 0, 0),
(229, '31.2 Angular基础', 86, '', 1, 0, 0),
(230, '31.3 样式与类', 86, '', 1, 0, 0),
(231, '31.4 插值与事件', 87, '', 1, 0, 0),
(232, '31.5 自定义组件', 87, '', 1, 0, 0),
(233, '31.6 模板指令', 87, '', 1, 0, 0),
(234, '31.7 自定义指令', 87, '', 1, 0, 0),
(235, '31.8 组件生命周期', 87, '', 1, 0, 0),
(236, '31.9 管道', 88, '', 1, 0, 0),
(237, '31.10 表单模块', 88, '', 1, 0, 0),
(238, '31.11 http模块', 88, '', 1, 0, 0),
(239, '31.12 服务', 88, '', 1, 0, 0),
(240, '31.13 路由', 88, '', 1, 0, 0),
(241, ' 31.15 ionic', 88, '', 1, 1, 0),
(242, '31.14 单元测试', 88, '', 1, 0, 0),
(243, '31.15 ionic', 88, '', 1, 0, 0),
(244, '31.16 项目实战', 89, '', 1, 0, 0),
(245, '32.1 项目概述', 90, '', 1, 0, 0),
(246, '32.2 pc端开发一', 90, '', 1, 0, 0),
(247, '32.3 pc端开发二', 91, '', 1, 0, 0),
(248, '32.4 移动端开发', 91, '', 1, 0, 0),
(249, '32.5 服务器端', 92, '', 1, 0, 0),
(250, '32.6 pc端后台', 92, '', 1, 0, 0),
(251, '32.7 管理员信息管理', 93, '', 1, 0, 0),
(252, '32.8 创建课程', 93, '', 1, 0, 0),
(253, '32.9 课程列表', 93, '', 1, 0, 0),
(254, '32.10 管理课程一', 93, '', 1, 0, 0),
(255, '32.11 管理课程二', 94, '', 1, 0, 0),
(256, '32.12 移动端后台', 94, '', 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `degree_module`
--

CREATE TABLE `degree_module` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `degree_id` int(11) DEFAULT NULL,
  `learn_day` varchar(11) DEFAULT NULL COMMENT '学习周期',
  `content` text COMMENT '学习目标-简介',
  `status` tinyint(1) DEFAULT '1',
  `is_deleted` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='学位课程-模块';

--
-- 转存表中的数据 `degree_module`
--

INSERT INTO `degree_module` (`id`, `name`, `degree_id`, `learn_day`, `content`, `status`, `is_deleted`) VALUES
(1, '前端世界：前端入门指南', 1, '1天', '&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 440px; height: auto; display: flex;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Medium; list-style: none; color: rgb(1, 180, 228); line-height: 34px;&quot;&gt;学习目标：&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Regular; list-style: none; flex: 1 1 0%; color: rgb(74, 74, 74); display: inline-block; line-height: 34px;&quot;&gt;通过对前端生态的了解，掌握前端常用开发工具，&lt;span style=&quot;color: rgb(74, 74, 74); font-family: PingFangSC-Regular;&quot;&gt;及开发语言，并跟随老师完成前端环境的搭建。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 440px; height: auto; display: flex;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Medium; list-style: none; color: rgb(1, 180, 228); line-height: 34px;&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 440px; height: auto; display: flex;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Medium; list-style: none; color: rgb(86, 203, 196); line-height: 34px;&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;', 1, 0),
(2, '页面骨架：HTML开发', 1, '1天', '&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 440px; height: auto; display: flex;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Medium; list-style: none; color: rgb(1, 180, 228); line-height: 34px;&quot;&gt;学习目标：通过对HTML语言的学习，掌握网页页面的基本架构，并可以跟随老师，完成页面的构建&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 440px; height: auto; display: flex;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Medium; list-style: none; color: rgb(1, 180, 228); line-height: 34px;&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;', 1, 0),
(3, '页面着装：CSS开发', 1, '4天', '&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 440px; height: auto; display: flex;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Medium; list-style: none; color: rgb(1, 180, 228); line-height: 34px;&quot;&gt;学习目标：&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; font-family: PingFangSC-Regular; list-style: none; flex: 1 1 0%; color: rgb(74, 74, 74); display: inline-block; line-height: 34px;&quot;&gt;通过对CSS语言学习，掌握网页样式渲染方式以及原理，并能够跟随老师，实现常规页面样式的开发。&lt;/span&gt;&lt;/p&gt;', 1, 0),
(5, '语义标签：HTML5', 1, '1天', '', 1, 0),
(6, '高级装扮：CSS 3.0', 1, '2天', '                            ', 1, 0),
(7, '复用样式：Bootstrap', 1, '1天', '                            ', 1, 0),
(8, '页面行为：Javascript开发', 1, '4天', '                            ', 1, 0),
(9, '浏览器模型：BOM操作', 1, '1天', '', 1, 0),
(10, '文档对象模型：DOM操作', 1, '3天', '                            ', 1, 0),
(11, '开发捷径：jQuery开发', 1, '3天', '                            ', 1, 0),
(12, '开发模式：面向对象开发', 1, '2天', '                            ', 1, 0),
(13, '高级浏览器标准：ECMAScript 5', 1, '2天', '                            ', 1, 0),
(14, '分而治之：模块化开发', 1, '2天', '                            ', 1, 0),
(15, 'web新方向：移动端开发', 1, '1天', '                            ', 1, 0),
(16, '大数据可视化：Highcharts', 1, '1天', '                            ', 1, 0),
(17, '酷炫特效：CSS 3D', 1, '1天', '                            ', 1, 0),
(18, '新的功能：HTML 5', 1, '1天', '                            ', 1, 0),
(19, '游戏开发：canvas应用', 1, '3天', '                            ', 1, 0),
(20, '前人积淀：设计模式', 1, '3天', '                            ', 1, 0),
(21, '异步请求：Ajax', 1, '3天', '                            ', 1, 0),
(22, '框架设计：MVC与MVVM', 1, '2天', '                            ', 1, 0),
(23, '框架设计：MVC与MVVM', 1, '2天', '                            ', 1, 1),
(24, '经典MVC框架：Backbone', 1, '3天', '                            ', 1, 0),
(25, '后端服务：NodeJS', 1, '4天', '                            ', 1, 0),
(26, '工程化开发：性能优化与前端工程化', 1, '2天', '                            ', 1, 0),
(27, '质量保证：安全防护、前端规范与测试集成', 1, '1天', '                            ', 1, 0),
(28, '高级css开发：css预编译', 1, '2天', '                            ', 1, 0),
(29, '未来规范：ECMAScript 6.0', 1, '3天', '                            ', 1, 0),
(30, '混合开发；微信小程序', 1, '3天', '                            ', 1, 0),
(31, '快速开发：Vue2.0开发与实战', 1, '5天', '                            ', 1, 0),
(32, '极致性能：React开发与实战', 1, '5天', '                            ', 1, 0),
(33, '工程化框架：Angular8.0开发与实战', 1, '4天', '                            ', 1, 0),
(34, '全栈项目实战：电商授课系统', 1, '5天', '                            ', 1, 0),
(35, 'dsadsa', 3, '11', '&lt;p&gt;dasdsadsadsa&lt;/p&gt;', 1, 0),
(36, 'sdsa', 4, 'dsad', '&lt;p&gt;dsadsadsa&lt;/p&gt;', 1, 0),
(4, 'zz', 2, '2', '&lt;p&gt;张容铭&lt;br/&gt;&lt;/p&gt;', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `degree_package`
--

CREATE TABLE `degree_package` (
  `id` int(11) UNSIGNED NOT NULL,
  `degree_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '0j 1q',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0z 1s'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='学位课程-价格套餐';

--
-- 转存表中的数据 `degree_package`
--

INSERT INTO `degree_package` (`id`, `degree_id`, `name`, `price`, `content`, `status`, `is_deleted`) VALUES
(1, 1, 'SVIP套餐', 0.01, '在线实时答疑 /每周跟进三次 /一线城市12K起 /张老师亲自简历指导和模拟面试', 1, 0),
(2, 1, 'VIP套餐', 5980, '1V1答疑服务/课件+源码 / 闯关式学习/ 推荐就业 /一线城市10K起', 1, 0),
(3, 1, 'SSVIP套餐', 39980, '在线实时答疑 /每天跟进一次 /张老师全程指导/保就业', 1, 0),
(4, 3, 'dsadsad', 0, 'dasdsad', 1, 0),
(5, 4, 'sadsadsa', 0, 'sdsadsadsadsadsa', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `degree_project`
--

CREATE TABLE `degree_project` (
  `id` int(11) UNSIGNED NOT NULL,
  `degree_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '0j 1q',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0z 1s'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='学位课程-实战项目';

--
-- 转存表中的数据 `degree_project`
--

INSERT INTO `degree_project` (`id`, `degree_id`, `name`, `imgurl`, `content`, `status`, `is_deleted`) VALUES
(1, 1, '论坛——抽屉新热榜', 'http://lyxy.fuyaot.com/static/upload/0f566d3142735f79/d490b717414e2ee9.png', '基于Django框架开发“抽屉新热榜”，实现论坛版块管理、发贴、多级评论楼、富文本编辑器、新贴提醒、文件上传等功能。做完此项目，你可以自己开发一个博客系统，把自己的技术文章等放上去供人阅读。', 1, 0),
(2, 1, 'crm客户关系软件开发', 'http://lyxy.fuyaot.com/static/upload/b59776bf10aef252/e5f84b262a00f178.png', '你将根据某教育企业实际需求，为项目中不同角色开发单独的页面，不同角色间不能互相访问彼此的功能。可创建客户、客户管理、跟踪客户纪录、在线办理报名手续、查看销售报表等功能。做完此项目后，企业中的各种内容管理、流程管理软件的开发都难不倒你啦。', 1, 0),
(3, 3, 'sadsadsa', '', 'sdsadsa', 1, 0),
(4, 4, 'sadsad', '', 'sdsadsadsadsadsa', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `index_banner`
--

CREATE TABLE `index_banner` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `web_url` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '0禁用 1启用',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0正常1删除'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='网站banner图表';

--
-- 转存表中的数据 `index_banner`
--

INSERT INTO `index_banner` (`id`, `name`, `imgurl`, `web_url`, `status`, `is_deleted`) VALUES
(1, '001', '/static/upload/150e607bf7522888/8972b25fc8fb6dbc.png', 'https://ke.qq.com/course/270226?tuin=c1e347cf', 1, 0),
(2, '002', '/static/upload/442affda0244a556/f526c1eb05ad6638.png', 'https://ke.qq.com/course/270226?tuin=c1e347cf', 1, 0),
(3, '003', '/static/upload/9978a19aaa6c6f4b/a9852e7685cae9d7.png', 'https://ke.qq.com/course/270226?tuin=c1e347cf', 1, 0),
(4, '004', '/static/upload/4da68ab16ebdafc7/a7119bba7103a4a6.png', 'https://ke.qq.com/course/270226?tuin=c1e347cf', 1, 0),
(5, '005', '/static/upload/6d93bfd1fb15ff61/2b6637ce25210b9a.png', 'https://www.baidu.com', 1, 0),
(6, '123123', '/static/upload/a55e086ac3704992/64b964bd3f238e10.jpg', '', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `index_camp`
--

CREATE TABLE `index_camp` (
  `id` int(11) UNSIGNED NOT NULL,
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
  `start_date` varchar(11) DEFAULT NULL COMMENT '开课时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='七天训练营';

--
-- 转存表中的数据 `index_camp`
--

INSERT INTO `index_camp` (`id`, `name`, `title`, `type_id`, `teacher_id`, `class_code`, `content`, `price`, `status`, `is_deleted`, `imgurl`, `enroll`, `member_num`, `arrange1`, `arrange2`, `homework`, `homework1`, `homework2`, `analysis`, `worry`, `start_date`) VALUES
(1, '前端7天高效入门编程实训班', '从0到1，跟大牛导师构建你的前端课程体系', 4, 10001, 'cssjs001', '&lt;p style=&quot;line-height: 2em;&quot;&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;&lt;strong&gt;1.大牛导师亲自带队&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 2em;&quot;&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;&lt;strong&gt;2.掌握系统前端编程学习方法&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 2em;&quot;&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;&lt;strong&gt;3.完成第一个前端实战项目&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;', 10.00, 1, 0, '/static/upload/74770db2bb32e513/250b3175a1804bef.png', 100, 150, '&lt;p&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;在7天内将会得到专业系统的课程安排，全程高手引路、帮你快速从0基础学习入门前端开发。&lt;/span&gt;&lt;/p&gt;', '/static/upload/e418cb7606d18432/5cff1be6c03e1c36.jpg', '&lt;p style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;在7天的学习过程中，你将需提交两次实战作业，导师将逐行进行批改，提供针对性的建议，帮助你提高代码输出的完成度和专业度&lt;/span&gt;&lt;/p&gt;', '/static/upload/8e790eb4db168219/7be27933e7e4590e.jpg', '/static/upload/33b756390c358a01/1f6722d3214d0a3e.jpg', '&lt;p&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;1.从乐育学院毕业的学员中，有最低高中学历拿到32K的学员，也有零基础转行拿到10k的学员，这个岗位目前只有有技术，你就一定可以月薪过万，在这里只要努力就有希望，总好过每天做重复的生活，一眼就能看到自己40岁的人生。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;2.前端是每个公司需要的', '前端发展前景怎么样？该怎么学？我适合做前端吗？', '2018-12-02');

-- --------------------------------------------------------

--
-- 表的结构 `index_company`
--

CREATE TABLE `index_company` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `is_deleted` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='合作企业表';

--
-- 转存表中的数据 `index_company`
--

INSERT INTO `index_company` (`id`, `name`, `url`, `imgurl`, `content`, `status`, `is_deleted`) VALUES
(1, '艺术留学培训机构', 'https://www.hao123.com', '', '111', 1, 0),
(2, '码农网', 'https://www.baidu.com', '', '11', 1, 0),
(3, '大数据视频教程', 'https://www.baidu.com', '', '11', 1, 0),
(4, '心理学考研', 'https://www.baidu.com', '', '11', 1, 0),
(5, '江西自考网', 'https://www.baidu.com', '', '11', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `index_coupon`
--

CREATE TABLE `index_coupon` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL COMMENT '优惠价格',
  `validity` int(11) DEFAULT NULL COMMENT '有效期',
  `course_type` tinyint(1) DEFAULT '0' COMMENT '指定课程类型0所有，1免费课，2学位课，3七天课',
  `code` varchar(255) DEFAULT NULL COMMENT '优惠券编号',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) DEFAULT '1' COMMENT '1启用0禁用',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0正常 1删除',
  `condition` int(11) DEFAULT NULL COMMENT '使用条件'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='优惠券表';

--
-- 转存表中的数据 `index_coupon`
--

INSERT INTO `index_coupon` (`id`, `name`, `discount`, `validity`, `course_type`, `code`, `create_at`, `status`, `is_deleted`, `condition`) VALUES
(1, '新人优惠券', 5, 7, 1, 'ceshi001', '2019-01-10 03:33:53', 1, 0, 0),
(2, '限时优惠', 10, 6, 2, '001', '2019-02-19 07:07:05', 1, 0, NULL),
(3, 'dwqdad', 0, 0, 0, '009', '2019-02-25 08:59:56', 1, 0, NULL),
(4, '测试', 1, 1, 1, '10086', '2019-02-28 07:23:49', 1, 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `index_course`
--

CREATE TABLE `index_course` (
  `id` int(11) UNSIGNED NOT NULL,
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
  `old_price` double(11,2) DEFAULT NULL COMMENT '原价'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='课程表';

--
-- 转存表中的数据 `index_course`
--

INSERT INTO `index_course` (`id`, `name`, `type_id`, `class_code`, `content`, `teacher_id`, `level`, `price`, `status`, `is_free`, `is_deleted`, `imgurl`, `wave`, `detail`, `stu_num`, `class_time`, `is_hot`, `old_price`) VALUES
(1, 'PHP学习', 4, 'php001', 'PHP学PHP学习PHP学习', 10002, 1, 1.00, 1, 0, 0, '/static/upload/912863b9a655fe3c/d5a64d6ca6490bc7.png', '/static/upload/76cdb2bad9582d23/c1f6f4d868218d6c.zip', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20181206/1544078067397617.jpeg&quot; title=&quot;1544078067397617.jpeg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20181206/1544078067736454.jpeg&quot; title=&quot;1544078067736454.jpeg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20181206/1544078068338419.png&quot; title=&quot;1544078068338419.png&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 1548, 26.0, 0, NULL),
(2, 'Python学习', 5, '0002', '123', 10005, 1, 0.01, 1, 0, 0, '/static/upload/d946f26449569490/e0716bca0f5dd219.png', '', '', 258, 31.0, 0, NULL),
(3, 'go语言', 5, '12345', '哈U盾还素大叔', 10004, 1, 0.00, 1, 0, 0, '/static/upload/bdcfcb15301e5539/252388b17d511339.jpg', '', '', 366, 26.5, 0, NULL),
(4, 'html基础入门视频', 4, '1001', '此课程主要帮助学生入门学习', 10005, 1, 0.01, 1, 0, 0, 'http://lyxy.td3131.com/static/upload/a160e089aef99236/aac9cc48ebc5ff3c.jpg', '/static/upload/db6f47824115e819/044c22904a736dfd.zip', '&lt;p&gt;帮助学生入门学习&lt;/p&gt;', 258, 18.5, 0, NULL),
(5, '测试007', 4, '01', '测试', 10002, 1, 0.00, 1, 0, 0, '/static/upload/b2bcb6ef7ae575a1/3ad0ae776121aa92.jpg', '', '&lt;p&gt;&lt;video class=&quot;edui-upload-video  vjs-default-skin video-js&quot; controls=&quot;&quot; preload=&quot;none&quot; width=&quot;420&quot; height=&quot;280&quot; src=&quot;/ueditor/php/upload/video/20181220/1545288221752442.mp4&quot; data-setup=&quot;{}&quot;&gt;&lt;/video&gt;&lt;/p&gt;', 100, 120.0, 1, NULL),
(6, '哦哦哦', 4, '001', '哈U盾还素大叔', 10005, 1, 0.01, 1, 0, 0, '/static/upload/b1d5ca957dbcef7d/37bbc864cc4a05c4.jpg', '/static/upload/d3c60925e2fcd4cc/e6fc0d8a9212cc96.zip', '&lt;p&gt;fsdfdsfdsf&amp;nbsp;&lt;/p&gt;', 23, 34.0, 1, NULL),
(7, '萨达萨达', 4, '005', '放到沙发的', 10002, 1, 0.01, 1, 0, 0, '/static/upload/b1d5ca957dbcef7d/37bbc864cc4a05c4.jpg', '', '&lt;p&gt;佛挡杀佛&lt;/p&gt;', 0, 0.0, 0, NULL),
(8, '积极', 4, '990', '莪问啊发呆', 10002, 1, 0.01, 1, 0, 0, '', '/static/upload/20ebbdf562f2a768/ac1d8c34c371d36c.zip', '&lt;p&gt;1啊倒萨倒萨的的按时撒旦&lt;/p&gt;', 11, 1.0, 0, NULL),
(9, 'dasdsa12345', 4, '00001', 'fewf w w', 10003, 1, 0.02, 1, 0, 0, '', '', '&lt;p&gt;fewfwfew&lt;/p&gt;', 1, 1.0, 0, NULL),
(10, '122', 4, '2222', '2e2e2', 10002, 1, 0.01, 1, 0, 0, '', '', '&lt;p&gt;eeee&lt;/p&gt;', 12, 22.0, 0, NULL),
(11, '123567', 4, '111', '打撒大撒的', 10002, 1, 0.01, 1, 0, 0, '/static/upload/0e02633accdad2a9/20684d699b71d688.jpg', '/static/upload/d3c60925e2fcd4cc/e6fc0d8a9212cc96.zip', '&lt;p&gt;21212121&lt;/p&gt;', 12, 12121.0, 1, NULL),
(12, 'vue实战', 4, '009', 'vue从入门到精通', 10003, 1, 5.01, 1, 0, 0, '/static/upload/0e02633accdad2a9/20684d699b71d688.jpg', '', '&lt;p&gt;vue从入门到精通&lt;/p&gt;', 12, 12.0, 0, NULL),
(17, 'JavaScriptcc', 5, '0077', '1111', 10005, 1, 0.10, 1, 0, 0, '/static/upload/980bed9afe474f78/4cd702e6df52b51c.jpg', '', '&lt;p&gt;&lt;video class=&quot;edui-upload-video  vjs-default-skin video-js&quot; controls=&quot;&quot; preload=&quot;none&quot; width=&quot;420&quot; height=&quot;280&quot; src=&quot;/ueditor/php/upload/video/20190220/1550633466667828.mp4&quot; data-setup=&quot;{}&quot;&gt;&lt;/video&gt;&lt;/p&gt;', 333, 333.0, 0, 1.00),
(13, 'node入门', 4, '009', 'fdsfdsfsdsfds', 10002, 1, 0.01, 1, 0, 0, '/static/upload/7594f4e7a0916df0/e278e99e6d114a52.png', '', '&lt;p&gt;fdsssssssssssssssssssssss&lt;/p&gt;', 220, 1.0, 1, 10.00),
(14, 'JavaScript111', 4, '111', '1111', 10005, 1, 0.00, 1, 0, 0, '/static/upload/980bed9afe474f78/4cd702e6df52b51c.jpg', '', '&lt;p&gt;&lt;video class=&quot;edui-upload-video  vjs-default-skin video-js&quot; controls=&quot;&quot; preload=&quot;none&quot; width=&quot;420&quot; height=&quot;280&quot; src=&quot;/ueditor/php/upload/video/20190219/1550558531712311.mp4&quot; data-setup=&quot;{}&quot;&gt;&lt;/video&gt;&lt;/p&gt;', 10, 200.0, 0, 0.00),
(15, '测试购买', 5, '001', '112', 10005, 1, 0.00, 1, 0, 0, '/static/upload/8e34a47f89d78914/181e11409803aab0.jpg', '', '&lt;p&gt;&lt;video class=&quot;edui-upload-video  vjs-default-skin video-js&quot; controls=&quot;&quot; preload=&quot;none&quot; width=&quot;420&quot; height=&quot;280&quot; src=&quot;/ueditor/php/upload/video/20190219/1550560492167669.mp4&quot; data-setup=&quot;{}&quot;&gt;&lt;/video&gt;&lt;/p&gt;', 10, 112.0, 0, 0.00),
(16, '测试跳转', 4, '0011', '1122', 10002, 1, 0.01, 1, 0, 0, '', '', '&lt;p&gt;&lt;video class=&quot;edui-upload-video  vjs-default-skin video-js&quot; controls=&quot;&quot; preload=&quot;none&quot; width=&quot;420&quot; height=&quot;280&quot; src=&quot;/ueditor/php/upload/video/20190219/1550560756882248.mp4&quot; data-setup=&quot;{}&quot;&gt;&lt;/video&gt;&lt;/p&gt;', 20, 112.0, 1, 1.00);

-- --------------------------------------------------------

--
-- 表的结构 `index_degree`
--

CREATE TABLE `index_degree` (
  `id` int(11) UNSIGNED NOT NULL,
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
  `str4_cont` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='学位课程';

--
-- 转存表中的数据 `index_degree`
--

INSERT INTO `index_degree` (`id`, `name`, `type_id`, `class_code`, `content`, `teacher_id`, `member_num`, `web_url`, `imgurl`, `target`, `position`, `status`, `is_deleted`, `sort`, `service`, `pack_detail`, `environment1`, `environment2`, `environment3`, `environment4`, `str1_title`, `str1_icon`, `str1_cont`, `str2_title`, `str2_icon`, `str2_cont`, `str3_title`, `str3_icon`, `str3_cont`, `str4_title`, `str4_icon`, `str4_cont`) VALUES
(1, '前端全栈开发 ', 4, 'lyxy001', '&lt;p class=&quot;p1&quot; style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 22px; font-family: PingFangSC-Regular; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-size: 24px; color: rgb(74, 74, 74); white-space: normal;&quot;&gt;前端全栈开发工程师&lt;/p&gt;&lt;p class=&quot;p1&quot; style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 22px; font-family: PingFangSC-Regular; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-size: 24px; color: rgb(74, 74, 74); white-space: normal;&quot;&gt;&lt;span style=&quot;background-color: rgb(255, 255, 255); color: rgb(26, 29, 36); text-align: justify; text-indent: 2em; font-size: 18px;&quot;&gt;去年，我国手机用户超过13亿，智能手机用户超过6亿。就算其中只有一半人上网，那也是3亿多人。这么多人，每天都有几十分钟或者几个小时，要使用手机上网。全体中国人一年消费的网页和App的数量，是一个天文数字。&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;p1&quot; style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 22px; font-family: PingFangSC-Regular; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-size: 24px; color: rgb(74, 74, 74); white-space: normal;&quot;&gt;&lt;span style=&quot;background-color: rgb(255, 255, 255); color: rgb(26, 29, 36); font-size: 18.375px; text-align: justify; text-indent: 2em;&quot;&gt;鸡蛋是母鸡生出来的，网页从哪里来？归根结底，所有页面都需要工程师做出来。那么多互联网公司，每家公司都需要前端工程师。而全国的前端工程师，目前可能总共有几十万人，对比那么大的内容消费量，肯定是远远不够的（想一想吧，全国的母鸡有23亿只）。这样一想，工程师抢手就不奇怪了。&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;p1&quot; style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 22px; font-family: PingFangSC-Regular; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-size: 24px; color: rgb(74, 74, 74); white-space: normal;&quot;&gt;&lt;span style=&quot;background-color: rgb(255, 255, 255); color: rgb(26, 29, 36); font-size: 18.375px; text-align: justify; text-indent: 2em;&quot;&gt;还有一个很重要的原因，学校不教前端开发，可能会有一些相关课程，但不会系统地教，所有前端工程师都是靠自学的。这也导致了供给偏少。因此要么去培训要么自学！&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;p3&quot; style=&quot;box-sizing: border-box; padding: 0px; margin-top: 30px; margin-bottom: 40px; font-family: PingFangSC-Light; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(74, 74, 74); line-height: 28px; white-space: normal;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;在这门课程里，你将得到专业导师的逐行代码审阅帮你快速从0基础学习前端编程。27周后，你将掌握html,css,js,node，前端框架等技能，并独立完成数个大型企业实战项目。成为市场上炙手可热的P前端全栈开发工程师。&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;p1&quot; style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 22px; font-family: PingFangSC-Regular; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-size: 24px; color: rgb(74, 74, 74); white-space: normal;&quot;&gt;培养目标&lt;/p&gt;&lt;p class=&quot;target-p1&quot; style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: PingFangSC-Light; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 480px; font-size: 16px; color: rgb(74, 74, 74); letter-spacing: 0.44px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px 19px 0px 0px; font-family: PingFangSC-Medium; list-style: none; display: inline-block; font-size: 18px; letter-spacing: 0px;&quot;&gt;基本信息&amp;nbsp; &amp;nbsp;前端全栈&lt;/span&gt;（10个阶段，共24章节）&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: PingFangSC-Light; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-size: 16px; color: rgb(74, 74, 74); letter-spacing: 0.44px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px 19px 0px 0px; font-family: PingFangSC-Medium; list-style: none; display: inline-block; font-size: 18px; letter-spacing: 0px;&quot;&gt;学习时间&lt;/span&gt;2-4个小时／天（大约6个月）&lt;/p&gt;&lt;p class=&quot;target-p1&quot; style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: PingFangSC-Light; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 480px; font-size: 16px; color: rgb(74, 74, 74); letter-spacing: 0.44px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px 19px 0px 0px; font-family: PingFangSC-Medium; list-style: none; display: inline-block; font-size: 18px; letter-spacing: 0px;&quot;&gt;难&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;度&lt;/span&gt;中级（5万行代码加持）&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: PingFangSC-Light; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-size: 16px; color: rgb(74, 74, 74); letter-spacing: 0.44px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px 19px 0px 0px; font-family: PingFangSC-Medium; list-style: none; display: inline-block; font-size: 18px; letter-spacing: 0px;&quot;&gt;目&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;标&lt;/span&gt;炼成中高级前端全栈开发工程师&lt;/p&gt;&lt;p class=&quot;target-p1&quot; style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; font-family: PingFangSC-Regular; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); width: 480px; font-size: 16px; color: rgb(74, 74, 74); letter-spacing: 0.44px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px 19px 0px 0px; font-family: PingFangSC-Medium; list-style: none; display: inline-block; font-size: 18px; letter-spacing: 0px;&quot;&gt;入学条件&lt;/span&gt;掌握计算机日常使用 具备专科或以上学历&lt;/p&gt;&lt;p class=&quot;p1&quot; style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 22px; font-family: PingFangSC-Regular; list-style: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-size: 24px; color: rgb(74, 74, 74); white-space: normal;&quot;&gt;学完后达到的能力&lt;/p&gt;&lt;ul style=&quot;list-style-type: none;&quot; class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;&lt;img src=&quot;/static/index/static/img/icon10.svg&quot; alt=&quot;&quot;/&gt;1、熟练掌握WEB标准，熟悉W3C代码规范&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;&lt;img src=&quot;/static/index/static/img/icon10.svg&quot; alt=&quot;&quot;/&gt;2、熟练掌握前端HTML/CSS/JS/Jquery/h5等知识，熟练掌握angular、vue、react框架&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;&lt;img src=&quot;/static/index/static/img/icon10.svg&quot; alt=&quot;&quot;/&gt;3、熟练掌握js面向对象编程，可开发基于各种业务场景下的前端工具&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/static/index/static/img/icon10.svg&quot; alt=&quot;&quot;/&gt;4、独立开发完成实战项目团购网 、资源分类网站、后台管理系统等项目&lt;br/&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', NULL, 100, 'https://ke.qq.com/course/270226?tuin=c1e347cf', '/static/upload/c278704709c39e73/fa2903bdc88559be.png', '10k', '前端全栈开发工程师', 1, 0, NULL, '&lt;p class=&quot;service-p1&quot; style=&quot;color: #4A90E2&quot;&gt;&lt;img src=&quot;/static/index/static/img/icon11.svg&quot; alt=&quot;&quot;/&gt;在线高清视频+闯关式学习&lt;/p&gt;&lt;p class=&quot;service-p2&quot;&gt;总计三十二阶段，二十个实战项目，涵盖教你零基础快速上手编程、WEB开发、以及数个大型企业项目实战。&lt;/p&gt;&lt;p class=&quot;service-p1&quot; style=&quot;color: #FFAA48&quot;&gt;&lt;img src=&quot;/static/index/static/img/icon14.svg&quot; alt=&quot;&quot;/&gt;5个月专业导师全程1对1跟踪辅导学习&lt;/p&gt;&lt;p class=&quot;service-p2&quot;&gt;报名后，我们将为你分配专属1对1导师，他将全程伴你学习，为你制定学习计划、技术答疑、作业代码审阅、1v1视频考核等服务，高手全程引路，使你学习路上不再孤独。&lt;/p&gt;&lt;p class=&quot;service-p1&quot; style=&quot;color: #FA6240&quot;&gt;&lt;img src=&quot;/static/index/static/img/icon12.svg&quot; alt=&quot;&quot;/&gt;作业代码逐行批改，个性点评&lt;/p&gt;&lt;p class=&quot;service-p2&quot;&gt;每次作业提交后，导师会在24小时内对你的作业代码进行详细审阅和批改，并给出详细的改进方案，同时每个重要的作业都会配备详细的作业讲解视频供你对比参考。&lt;/p&gt;&lt;p class=&quot;service-p1&quot; style=&quot;color: #14CDBB&quot;&gt;&lt;img src=&quot;/static/index/static/img/icon15.svg&quot; alt=&quot;&quot;/&gt;内推就业机会，薪资8-15k起&lt;/p&gt;&lt;p class=&quot;service-p2&quot;&gt;我们与其他互联网企业的HR部门建立了人才推荐关系，每个从本课程成功闯关毕业的同学，都将优先得到名企内推就业机会。&lt;/p&gt;&lt;p class=&quot;service-p1&quot; style=&quot;color: #7E24D3&quot;&gt;&lt;img src=&quot;/static/index/static/img/icon16.svg&quot; alt=&quot;&quot;/&gt;&lt;span style=&quot;color: rgb(255, 88, 132);&quot;&gt;科学方法：学、练、改、管、测&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;service-p2&quot;&gt;想高效学好一门技能，不只是看视频、看书就能搞定的，我们根据科学的学习方法”输入——》输出——》纠正”理论提炼出学、练、改、管、测5个维度，每个维度上下大功夫打磨产品，助你轻松快速学好本课程。&lt;/p&gt;', '/static/upload/ab0b6fd3a35a3fdc/ca7ee34921a0fb7d.png', '/static/upload/887565fb575bb7e8/e06eb7d1eda46e61.jpg', '/static/upload/dbf6c4a80357a81e/d529f2fa57c1e777.jpg', '/static/upload/bdcfcb15301e5539/252388b17d511339.jpg', '/static/upload/b1d5ca957dbcef7d/37bbc864cc4a05c4.jpg', '互动课堂', '/static/upload/8bec4f88b7b442be/ff47f3dde7a60445.png', '专业名师、实时互动、直播录播、讲练结合', '1v1辅导', '/static/upload/28e3d2da3bf725f3/cd5f3e4e80bdad57.png', '专业导师、学习小组、班主任督学', '真实企业面试题', '/static/upload/c7abd9e1e45966e7/94711bdf329613b2.png', '章节精练、紧扣考点、智能练习、个性推荐', '推荐就业', '/static/upload/8caaf2d1952e6829/0b4b16dfe4a6846c.png', '名企定制、职业顾问、 起薪10K+'),
(3, '前端架构课程', 4, '12345', '&lt;p&gt;222&lt;/p&gt;', NULL, 22, 'https://ke.qq.com/course/270226?tuin=c1e347cf', '', '22', '22', 1, 1, NULL, '&lt;p&gt;222&lt;/p&gt;', '', '', '', '', '', 'dwddw', '', '22', 'dsdsds', '', 'dsadsa', 'dsds', '', '222', 'dasdsa', '', '22'),
(4, 'dsadsad', 6, '2', '&lt;p&gt;wdsadsa&lt;/p&gt;', NULL, 2, 'https://ke.qq.com/course/270226?tuin=c1e347cf', '/static/upload/f9df19fb1f546c7c/1a6f41331c1c7636.jpg', '22', 'dasdsa', 1, 1, NULL, '&lt;p&gt;dsadsadsa&lt;/p&gt;', '/static/upload/f9df19fb1f546c7c/1a6f41331c1c7636.jpg', '', '', '', '', 'dsad', '', 'sadsadsa', 'dsads', '', 'dsadsadsad', 'adsa', '', 'sadsaads', 'dasd', '', 'dasdsa'),
(2, '前端架构 · 高级 ', 4, 'lyxy002', '&lt;p class=&quot;p1&quot; style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 22px; font-size: 24px; color: rgb(74, 74, 74); font-family: PingFangSC-Regular; white-space: normal;&quot;&gt;&lt;strong style=&quot;color: rgb(34, 34, 34); font-family: Arial, Verdana, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;专家讲师介绍&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;color: rgb(34, 34, 34); font-family: Arial, Verdana, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;本课程由&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;strong&gt;原百度视频高级前端工程师,《javascript设计模式》作者张容铭&lt;/strong&gt;&lt;/span&gt;讲授，授课风格言简意赅、通俗易懂，深入浅出，知识含金量大，深受大家喜爱。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;&lt;span style=&quot;color: rgb(68, 68, 68); font-family: tahoma, arial, 宋体, sans-serif;&quot;&gt;本次课程知识点&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;color: rgb(34, 34, 34); font-family: Arial, Verdana, sans-serif; font-size: 12px; white-space: normal;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;span style=&quot;color: rgb(68, 68, 68); font-family: tahoma, arial, 宋体, sans-serif;&quot;&gt;react，路由，Bootstrap，Less，ES5编程，ES6编程，webpack，flux，reflux，redux，axios，nodejs，Koa，mongodb，ReactNative&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;p2&quot; style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(74, 74, 74); line-height: 28px; font-family: PingFangSC-Light; white-space: normal;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p class=&quot;p1&quot; style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 22px; font-size: 24px; color: rgb(74, 74, 74); font-family: PingFangSC-Regular; white-space: normal;&quot;&gt;培养目标&lt;/p&gt;&lt;p class=&quot;target-p1&quot; style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; width: 480px; font-size: 16px; color: rgb(74, 74, 74); letter-spacing: 0.44px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px 19px 0px 0px; display: inline-block; font-size: 18px; letter-spacing: 0px; font-family: PingFangSC-Medium;&quot;&gt;基本信息&lt;/span&gt;Python全栈开发高级（4大阶段，共15章节）&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; font-size: 16px; color: rgb(74, 74, 74); letter-spacing: 0.44px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px 19px 0px 0px; display: inline-block; font-size: 18px; letter-spacing: 0px; font-family: PingFangSC-Medium;&quot;&gt;学习时间&lt;/span&gt;2-4小时/天	（大约5~6个月）&lt;/p&gt;&lt;p class=&quot;target-p1&quot; style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; width: 480px; font-size: 16px; color: rgb(74, 74, 74); letter-spacing: 0.44px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px 19px 0px 0px; display: inline-block; font-size: 18px; letter-spacing: 0px; font-family: PingFangSC-Medium;&quot;&gt;难&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;度&lt;/span&gt;高级&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; font-size: 16px; color: rgb(74, 74, 74); letter-spacing: 0.44px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px 19px 0px 0px; display: inline-block; font-size: 18px; letter-spacing: 0px; font-family: PingFangSC-Medium;&quot;&gt;目&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;标&lt;/span&gt;开启数据分析、人工智能、大数据开发之门&lt;/p&gt;&lt;p class=&quot;target-p1&quot; style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px; width: 480px; font-size: 16px; color: rgb(74, 74, 74); letter-spacing: 0.44px; font-family: PingFangSC-Regular;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; padding: 0px; margin: 0px 19px 0px 0px; display: inline-block; font-size: 18px; letter-spacing: 0px; font-family: PingFangSC-Medium;&quot;&gt;入学条件&lt;/span&gt;掌握Python全栈开发（中级）课程技能&lt;/p&gt;&lt;p class=&quot;p1&quot; style=&quot;box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 22px; font-size: 24px; color: rgb(74, 74, 74); font-family: PingFangSC-Regular; white-space: normal;&quot;&gt;学完后达到的能力&lt;/p&gt;&lt;ul style=&quot;box-sizing: border-box; padding: 0px; color: rgb(51, 51, 51); font-family: PingFangSC-Light; font-size: 14px; white-space: normal;&quot; class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;1. 掌握使用Python进行数据分析的技术&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;2. 熟悉机器学习、图像识别算法技术原理，掌握OpenCV、TensorFlow等组件的应用&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;3. 熟悉无人驾驶入门技术原理及实现&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;4. 具备开发各种复杂的自动化工作、监控、CMDB、主机管理系统等的能力。&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;5. 掌握GO语言开发&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;', NULL, 100, 'https://www.baidu.com', '/static/upload/cd334d6874c38175/c905aa7b7164ca4e.jpg', '16k', '前端高级架构工程师', 1, 1, NULL, '', '', '', '', '', '', '互动课堂', '', '专业名师、实时互动、直播录播、讲练结合', '1v1辅导', '', '专业导师、学习小组、班主任督学、奖学金激励', '智能题库', '', '章节精练、紧扣考点、智能练习、个性推荐', '推荐就业', '', '名企定制、职业顾问、 起薪10K+');

-- --------------------------------------------------------

--
-- 表的结构 `index_job`
--

CREATE TABLE `index_job` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `one_title` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '第一屏标题',
  `one_content` text CHARACTER SET utf8 NOT NULL COMMENT '第一屏内容',
  `two_title` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '第二屏标题',
  `two_content` text CHARACTER SET utf8 NOT NULL COMMENT '第二屏内容',
  `price` decimal(10,2) UNSIGNED NOT NULL COMMENT '早鸟价',
  `old_price` decimal(10,2) UNSIGNED NOT NULL COMMENT '原价',
  `img1` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '线下教学实拍图1',
  `img2` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '实拍图2',
  `img3` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '实拍图3',
  `img4` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '实拍图4',
  `human` int(10) UNSIGNED NOT NULL COMMENT '限制人数'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `index_job`
--

INSERT INTO `index_job` (`id`, `one_title`, `one_content`, `two_title`, `two_content`, `price`, `old_price`, `img1`, `img2`, `img3`, `img4`, `human`) VALUES
(0000000001, '轻课是什么？', '&lt;p style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Consolas, &amp;quot;Lucida Console&amp;quot;, &amp;quot;Courier New&amp;quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;font-size: 18px; font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;轻课是线下视频录播是乐育学院&amp;amp;爱创课堂打造的线下面授网络课程， 同线下面授的此课程学员无须来线下学习，&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;font-size: 18px; font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;&amp;nbsp; &amp;nbsp; 通过我们 发放上课视频即可。&lt;/span&gt;&lt;/p&gt;', '全栈前端开发实战同步课程', '&lt;p&gt;&lt;span style=&quot;color: rgb(34, 34, 34); white-space: pre-wrap; background-color: rgb(255, 255, 255); font-size: 18px; font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;&amp;nbsp;0基础开始学习前端编程，6个月后，你将掌握Html、Css、Js、vue、react等技能，并独立完成数个大型企业实战项目。成为市场上炙手可热的全栈前端开发工程师。&lt;/span&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Consolas, &amp;quot;Lucida Console&amp;quot;, &amp;quot;Courier New&amp;quot;, monospace; white-space: pre-wrap; background-color: rgb(255, 255, 255);&quot;&gt;&lt;/span&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Consolas, &amp;quot;Lucida Console&amp;quot;, &amp;quot;Courier New&amp;quot;, monospace; white-space: pre-wrap; background-color: rgb(255, 255, 255);&quot;&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Consolas, &amp;quot;Lucida Console&amp;quot;, &amp;quot;Courier New&amp;quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);&quot;&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;/p&gt;', '4490.00', '5980.00', '/static/upload/eb57d77d5eb38ee4/0021efb01dade858.jpg', '/static/upload/7e0c4da7995f5047/358bd3fc1d485a9f.jpg', '/static/upload/502f15695ce47720/8e096324061f90fa.jpg', '/static/upload/097667a45f2285be/ae86d4c4e89d1999.jpg', 50);

-- --------------------------------------------------------

--
-- 表的结构 `index_material`
--

CREATE TABLE `index_material` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `page` int(255) DEFAULT NULL,
  `type_id` int(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '0j 1q',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0z 1s',
  `create_time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='教材表';

--
-- 转存表中的数据 `index_material`
--

INSERT INTO `index_material` (`id`, `name`, `content`, `imgurl`, `page`, `type_id`, `status`, `is_deleted`, `create_time`) VALUES
(1, 'javascript设计模式', '《JavaScript设计模式》共分六篇四十章，首先讨论了几种函数的编写方式，体会JavaScript在编程中的灵活性；', '/static/upload/e90d219248b8b8f9/8a8c70dee2b60d2a.jpg', 356, 5, 1, 0, NULL),
(2, '前程程序员面试秘籍', '本书内容取材于爱创课堂往期学员的面试总结，分析了应聘程序员（含网络、测试等）职位的常见考点。', '/static/upload/437c757ca31c0f3b/f0ec714253acc50a.jpg', 267, 4, 1, 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `index_msg`
--

CREATE TABLE `index_msg` (
  `id` int(11) UNSIGNED NOT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `msg` text,
  `create_time` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0z 1s',
  `status` tinyint(1) DEFAULT '1' COMMENT '0j 1q'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='客户留言表';

--
-- 转存表中的数据 `index_msg`
--

INSERT INTO `index_msg` (`id`, `tel`, `msg`, `create_time`, `is_deleted`, `status`) VALUES
(1, '15397309656', '11', 1541150747, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `index_open`
--

CREATE TABLE `index_open` (
  `id` int(11) UNSIGNED NOT NULL,
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
  `status` tinyint(1) DEFAULT '1' COMMENT '1启用 0禁用'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='公开课表';

--
-- 转存表中的数据 `index_open`
--

INSERT INTO `index_open` (`id`, `name`, `type_id`, `teacher_id`, `imgurl`, `class_code`, `class_time`, `apply`, `appointment`, `content`, `open_time`, `important`, `is_finish`, `url`, `is_deleted`, `status`) VALUES
(1, '爱创课堂 张容铭 vue2.0前端开发教程', 4, 10005, '/static/upload/59f4e1342bfdf0f7/8a2594a7914733d7.jpg', 'open001', '2h', '零基础', 200, 'Vue.js作为前端三大框架之一，我们本套课程将讲解vue各种指令、过渡动画、组件以及路由等内容，课程会伴随着实例进行深入浅出的讲解以提高我们的工作效率', '2018-11-30 14:30:00', 1, 0, 'https://ke.qq.com/course/267117', 0, 1),
(2, 'web前端开发零基础Javascript【爱创课堂】', 5, 10003, '/static/upload/0549d9c348061895/07b87ec1822df35b.jpg', 'js001', '2h', '零基础', 200, '本课程，主要讲解JavaScript入门语法、For应用、属性操作、数据类型、函数传参、 作用域、运算符、定时器、字符串、Json数组等内容，通过理论知识点与案例讲解的方 式讲述原生JavaScript。', '2018-12-07 00:00:00', 1, 3, 'https://ke.qq.com/course/317229', 0, 1),
(3, 'HTML+CSS前端基础开发视频教程【爱创课堂】', 4, 10003, '/static/upload/0912b4948fe19002/21cea82be8dcfd74.jpg', 'css002', '2h', '零基础', 200, '本教程从零基础入门系统地讲解了HTML+CSS的基础理论和实际运用技术，通过大量实例对CSS进行深入浅出的分析。', '2018-12-08 00:00:00', 1, 3, 'https://ke.qq.com/course/270226?tuin=c1e347cf', 0, 1),
(4, '321321321', 4, 10002, '/static/upload/7594f4e7a0916df0/e278e99e6d114a52.png', '001', '11', '11', 111, '11111111111111', '2019-02-19 15:41:52', 0, 3, 'http://lyxy.fuyaot.com/index/open/index.html', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `member_charge`
--

CREATE TABLE `member_charge` (
  `id` int(11) UNSIGNED NOT NULL,
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
  `finish_time` int(11) DEFAULT NULL COMMENT '支付完成时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='充值金额表';

-- --------------------------------------------------------

--
-- 表的结构 `member_coupon`
--

CREATE TABLE `member_coupon` (
  `id` int(11) UNSIGNED NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `is_used` tinyint(1) DEFAULT '0' COMMENT '0可用1使用2过期',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '0正常1删除',
  `status` tinyint(1) DEFAULT '1' COMMENT '1启用0禁用',
  `use_at` datetime DEFAULT NULL COMMENT '使用时间',
  `course_id` int(11) DEFAULT NULL,
  `course_type` tinyint(1) DEFAULT NULL COMMENT '课程类型0所有，1免费课，2学位课，3七天课',
  `order_id` int(11) DEFAULT NULL COMMENT '订单ID'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='学员拥有优惠券表';

--
-- 转存表中的数据 `member_coupon`
--

INSERT INTO `member_coupon` (`id`, `member_id`, `coupon_id`, `is_used`, `create_at`, `is_deleted`, `status`, `use_at`, `course_id`, `course_type`, `order_id`) VALUES
(1, 1, 1, 1, '2019-01-10 02:59:33', 0, 1, '2019-01-11 11:40:04', 1, 2, 144),
(2, 10, 4, 0, '2019-02-28 07:23:14', 0, 1, '2019-02-28 15:23:31', 1, 1, 172),
(3, 6, 1, 2, '2019-02-28 08:46:55', 0, 1, NULL, NULL, NULL, NULL),
(4, 6, 4, 1, '2019-02-28 08:47:14', 0, 1, '2019-02-28 16:47:42', 1, 1, 185);

-- --------------------------------------------------------

--
-- 表的结构 `member_course`
--

CREATE TABLE `member_course` (
  `id` int(11) UNSIGNED NOT NULL,
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
  `is_comment` tinyint(1) DEFAULT '0' COMMENT '1已评论,0未评论'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='学院购买课程表';

--
-- 转存表中的数据 `member_course`
--

INSERT INTO `member_course` (`id`, `order_code`, `alipay_code`, `title`, `member_id`, `course_id`, `course_type`, `package_id`, `create_at`, `cost`, `pay_type`, `is_finish`, `finish_at`, `coupon_id`, `validity`, `status`, `is_deleted`, `is_comment`) VALUES
(113, '201812101752564708', NULL, '乐育学院购买课程', 7, 4, 1, NULL, 1544435576, 0.00, 0, 1, '', NULL, NULL, 1, 0, 1),
(107, '201812041817277980', NULL, '乐育学院购买课程', 1, 1, 1, NULL, 1543918647, 0.00, 0, 1, '', NULL, NULL, 1, 0, 1),
(108, '2018122122001480830585673282', NULL, '乐育学院购买课程', 1, 2, 1, NULL, 1543918688, 0.01, 0, 1, '', NULL, NULL, 1, 0, 0),
(109, '201812051704214230', NULL, '乐育学院购买课程', 7, 1, 1, NULL, 1544000661, 0.00, 0, 1, '', NULL, NULL, 1, 0, 0),
(110, '2018121922001400500592510047', NULL, '乐育学院购买课程', 7, 2, 1, NULL, 1544001670, 0.01, 0, 1, '', NULL, NULL, 1, 0, 0),
(112, '201812061520305957', NULL, '乐育学院购买课程', 1, 1, 2, 2, 1544080830, 5980.00, 0, 1, '', NULL, NULL, 1, 0, 1),
(114, '201812111807395374', NULL, '乐育学院购买课程', 5, 4, 1, NULL, 1544522859, 0.00, 0, 1, '', NULL, NULL, 1, 0, 0),
(128, '201812211750456186', NULL, '乐育学院购买课程', 1, 3, 1, NULL, 1545385845, 0.00, 0, 1, '', NULL, NULL, 1, 0, 0),
(117, '201812191824295866', NULL, '乐育学院购买课程', 7, 3, 1, NULL, 1545215069, 0.00, 0, 1, '', NULL, NULL, 1, 0, 0),
(118, '2018122022001407470520341367', NULL, '乐育学院购买课程', 9, 2, 1, NULL, 1545287802, 0.01, 0, 1, '', NULL, NULL, 1, 0, 0),
(119, '201812201439382661', NULL, '乐育学院购买课程', 9, 3, 1, NULL, 1545287978, 0.00, 0, 1, '', NULL, NULL, 1, 0, 0),
(120, '2018122022001462040509433720', NULL, '乐育学院购买课程', 8, 1, 1, NULL, 1545288214, 1.00, 0, 1, '', NULL, NULL, 1, 0, 1),
(121, '201812201444329798', NULL, '乐育学院购买课程', 9, 5, 1, NULL, 1545288272, 0.00, 0, 1, '', NULL, NULL, 1, 0, 0),
(122, '2018122022001407470517996628', NULL, '乐育学院购买课程', 9, 1, 1, NULL, 1545288371, 1.00, 0, 1, '', NULL, NULL, 1, 0, 0),
(123, '2018122022001462040507131572', NULL, '乐育学院购买课程', 8, 2, 1, NULL, 1545291735, 0.01, 0, 1, '', NULL, NULL, 1, 0, 1),
(124, '2018122022001400500502907798', NULL, '乐育学院购买课程', 7, 6, 1, NULL, 1545293521, 0.01, 0, 1, '', NULL, NULL, 1, 0, 0),
(125, '2018122122001400500509118357', NULL, '乐育学院购买课程', 7, 7, 1, NULL, 1545382638, 0.01, 0, 1, '', NULL, NULL, 1, 0, 0),
(157, '2019021922001400501028481805', NULL, '乐育学院购买课程', 6, 13, 1, NULL, 1550558687, 0.01, 0, 1, '1550558857', 0, NULL, 1, 0, 0),
(158, '201902191447055503', NULL, '乐育学院购买课程', 9, 14, 1, NULL, 1550558825, 0.00, 0, 1, '1550558825', 0, NULL, 1, 0, 0),
(130, '2018122422001478830501154358', NULL, '乐育学院购买课程', 7, 8, 1, NULL, 1545637057, 0.01, 0, 1, '2018-12-24 16:45:27', NULL, NULL, 1, 0, 0),
(136, '201812241645063192', '2018122422001480830501155777', '乐育学院购买课程', 1, 7, 1, NULL, 1545641106, 0.01, 0, 1, '2018-12-24 16:45:27', NULL, NULL, 1, 0, 0),
(137, '201812241834069663', '2018122422001478830502207545', '乐育学院购买课程', 7, 9, 1, NULL, 1545647646, 0.02, 0, 1, '2018-12-24 18:34:31', NULL, NULL, 1, 0, 0),
(138, '201812250947577101', '2018122522001478830507104112', '乐育学院购买课程', 6, 9, 1, NULL, 1545702477, 0.02, 0, 1, '2018-12-25 09:48:33', NULL, NULL, 1, 0, 0),
(156, '201901301140386074', NULL, '乐育学院购买课程', 6, 4, 1, NULL, 1548819638, 0.01, 0, 0, NULL, 0, NULL, 1, 0, 0),
(140, '201812250954038563', '2018122522001478830504362521', '乐育学院购买课程', 6, 2, 1, NULL, 1545702843, 0.01, 0, 1, '2018-12-25 09:56:54', NULL, NULL, 1, 0, 0),
(159, '201902191501393625', NULL, '乐育学院购买课程', 6, 7, 1, NULL, 1550559699, 0.01, 0, 0, NULL, 0, NULL, 1, 0, 0),
(160, '201902191515196466', NULL, '乐育学院购买课程', 9, 15, 1, NULL, 1550560519, 0.00, 0, 1, '1550560519', 0, NULL, 1, 0, 0),
(161, '2019021922001400501028410450', NULL, '乐育学院购买课程', 6, 1, 3, NULL, 1550560528, 0.01, 0, 1, '1550560555', 0, NULL, 1, 0, 0),
(162, '2019021922001407471032702179', NULL, '乐育学院购买课程', 9, 1, 3, NULL, 1550560597, 0.01, 0, 1, '1550560621', 0, NULL, 1, 0, 0),
(163, '2019021922001407471032270137', NULL, '乐育学院购买课程', 9, 16, 1, NULL, 1550560803, 0.01, 0, 1, '1550560819', 0, NULL, 1, 0, 0),
(164, '201902191610237987', NULL, '乐育学院购买课程', 6, 1, 2, NULL, 1550563823, 0.01, 0, 0, NULL, 0, NULL, 1, 0, 0),
(165, '2019022022001407471032173984', NULL, '乐育学院购买课程', NULL, 1, 2, NULL, 1550632733, 0.01, 0, 1, '1550632763', 0, NULL, 1, 0, 0),
(166, '2019022022001407471032921006', NULL, '乐育学院购买课程', NULL, 17, 1, NULL, 1550633937, 0.10, 0, 1, '1550633955', 0, NULL, 1, 0, 0),
(167, '2019022022001407471032407806', NULL, '乐育学院购买课程', 9, 17, 1, NULL, 1550634191, 0.10, 0, 1, '1550634212', 0, NULL, 1, 0, 0),
(168, '2019022522001400501029797926', NULL, '乐育学院购买课程', 6, 17, 1, NULL, 1551084392, 0.10, 0, 1, '1551084427', 0, NULL, 1, 0, 0),
(169, '2019022522001407471035841133', NULL, '乐育学院购买课程', 9, 10, 1, NULL, 1551084509, 0.01, 0, 1, '1551084531', 0, NULL, 1, 0, 0),
(170, '2019022822001478831020533194', NULL, '乐育学院购买课程', 6, 16, 1, NULL, 1551335578, 0.01, 0, 1, '1551335596', 0, NULL, 1, 0, 0),
(171, '2019022822001495241018583050', NULL, '乐育学院购买课程', 10, 13, 1, NULL, 1551337523, 0.01, 0, 1, '1551340673', 0, NULL, 1, 0, 0),
(172, '201902281523316211', NULL, '乐育学院购买课程', 10, 1, 1, NULL, 1551338611, -9.00, 0, 0, NULL, 2, NULL, 1, 0, 0),
(173, '2019022822001495241018570878', NULL, '乐育学院购买课程', 10, 6, 1, NULL, 1551338719, 0.01, 0, 1, '1551338769', 0, NULL, 1, 0, 0),
(174, '2019022822001495241018458874', NULL, '乐育学院购买课程', 10, 2, 1, NULL, 1551338978, 0.01, 0, 1, '1551338989', 0, NULL, 1, 0, 0),
(175, '2019022822001495241018354729', NULL, '乐育学院购买课程', 10, 4, 1, NULL, 1551340329, 0.01, 0, 1, '1551340363', 0, NULL, 1, 0, 0),
(176, '2019022822001495241018583048', NULL, '乐育学院购买课程', 10, 11, 1, NULL, 1551340496, 0.01, 0, 1, '1551340510', 0, NULL, 1, 0, 0),
(177, '2019022822001495241018584046', NULL, '乐育学院购买课程', 10, 16, 1, NULL, 1551340794, 0.01, 0, 1, '1551340806', 0, NULL, 1, 0, 0),
(178, '2019022822001495241018584049', NULL, '乐育学院购买课程', 10, 17, 1, NULL, 1551341272, 0.10, 0, 1, '1551341282', 0, NULL, 1, 0, 0),
(179, '2019022822001495241018639747', NULL, '乐育学院购买课程', 10, 10, 1, NULL, 1551341600, 0.01, 0, 1, '1551341613', 0, NULL, 1, 0, 0),
(180, '2019022822001495241018400941', NULL, '乐育学院购买课程', 11, 6, 1, NULL, 1551342217, 0.01, 0, 1, '1551342230', 0, NULL, 1, 0, 0),
(181, '2019022822001495241018593940', NULL, '乐育学院购买课程', 11, 4, 1, NULL, 1551342316, 0.01, 0, 1, '1551342325', 0, NULL, 1, 0, 0),
(182, '201902281639258311', NULL, '乐育学院购买课程', 6, 14, 1, NULL, 1551343165, 0.00, 0, 1, '1551343165', 0, NULL, 1, 0, 0),
(183, '2019022822001400501030287173', NULL, '乐育学院购买课程', 6, 10, 1, NULL, 1551343196, 0.01, 0, 1, '1551343216', 0, NULL, 1, 0, 0),
(184, '201902281642413949', NULL, '乐育学院购买课程', 6, 3, 1, NULL, 1551343361, 0.00, 0, 1, '1551343361', 0, NULL, 1, 0, 0),
(185, '201902281647428714', NULL, '乐育学院购买课程', 6, 1, 1, NULL, 1551343662, 0.00, 0, 1, '1551343662', 4, NULL, 1, 0, 0),
(186, '201903111624571833', NULL, '乐育学院购买课程', NULL, 5, 1, NULL, 1552292697, 0.00, 0, 1, '1552292697', 0, NULL, 1, 0, 0),
(187, '2019031222001494410573015287', NULL, '乐育学院购买课程', 12, 1, 2, 1, 1552379526, 0.01, 0, 1, '1552379559', 0, NULL, 1, 0, 0),
(188, '201903131617336072', NULL, '乐育学院购买课程', 8, 3, 1, NULL, 1552465053, 0.00, 0, 1, '1552465053', 0, NULL, 1, 0, 0),
(189, '201903211449424629', NULL, '乐育学院购买课程', 6, 15, 1, NULL, 1553150982, 0.00, 0, 1, '1553150982', 0, NULL, 1, 0, 0),
(190, '2019040322001400501033334686', NULL, '乐育学院购买课程', 6, 11, 1, NULL, 1554271630, 0.01, 0, 1, '1554271659', 0, NULL, 1, 0, 0),
(191, '2019041222001407471051600358', NULL, '乐育学院购买课程', 9, 1, 2, 1, 1555036425, 0.01, 0, 1, '1555036455', 0, NULL, 1, 0, 0),
(192, '201904181429126627', NULL, '乐育学院购买课程', NULL, 9, 1, NULL, 1555568952, 0.02, 0, 0, NULL, 0, NULL, 1, 0, 0),
(193, '201904181435229051', NULL, '乐育学院购买课程', NULL, 13, 1, NULL, 1555569322, 0.01, 0, 0, NULL, 0, NULL, 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `member_info`
--

CREATE TABLE `member_info` (
  `id` int(11) UNSIGNED ZEROFILL NOT NULL,
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
  `content` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='客户信息表';

--
-- 转存表中的数据 `member_info`
--

INSERT INTO `member_info` (`id`, `name`, `real_name`, `tel`, `password`, `account`, `imgurl`, `trade`, `province`, `city`, `create_time`, `last_login_ip`, `last_login_time`, `status`, `is_deleted`, `video_url`, `sort`, `before`, `work_place`, `salary`, `position`, `title`, `content`) VALUES
(00000000001, 'ly321', '张同学', '15397309656', '610e47aa09754108f7c158f59a349aa3', 10000.01, '/static/upload/b5cd67bdc8ab5070/6e64edcce496f2f4.jpg', NULL, '湖北省', '武汉市', 1539854770, '115.230.120.52', 1552713734, 1, 0, '/static/upload/fc44b54edde1489d/c6ac7f5b99a39fdd.mp4', NULL, '应届毕业生', '深圳', '0-&gt;10000', '平安集团', '独学而无友，则孤陋而寡闻', '一个真实的自我，比任何外在的评价和光环更为可贵。当突破了外界的束缚后，随之而来的，是一种快乐而豁达的生活。'),
(00000000005, 'ly123', '李同学', '13125171109', '610e47aa09754108f7c158f59a349aa3', 0.00, '/static/upload/01c5d496e5779c08/25266f1771c1fc7e.jpg', NULL, '北京市', '北京市市辖区', 1542081997, '127.0.0.1', 1544522852, 1, 0, '', NULL, '人事专员', '北京', '6000-&gt;12000', '每日优鲜', '余生太短,一定要去 做有趣的事', NULL),
(00000000006, '大王', '张同学', '18612643772', 'cd0d9f1024a40cb247aead0420ee0f8e', 0.00, '/static/upload/665cca8460cd9d30/bef0935fbb0c705b.jpg', NULL, '北京市', '北京市市辖区', 1542771127, '115.171.60.18', 1555402545, 1, 0, '', NULL, '销售员', '郑州', '3000-&gt;8000', '河南优兰达生物科技有限公司', '精彩的人生一定是忙碌的', NULL),
(00000000007, '乐育', '乐育', '17701201636', 'f2d21b817650d826a2d25e96b813bd9a', 0.00, 'http://lyxy.fuyaot.com/static/upload/630b0466416fd92d/dea9dd7204b28040.png', NULL, '北京市', '北京市市辖区', 1543820565, '219.143.131.27', 1547006697, 1, 0, '', NULL, NULL, NULL, NULL, NULL, '犹豫不决，才是对生命最大的耗费', '生活就是知道自己的价值，做自己能做到的与自己所应做到的。只要不至我于死地的，只能使我更坚强。'),
(00000000008, '发多少啊啊', '', '18811477900', '92e02b61b27d40d7e499e4ae5113eb26', 0.00, '/static/index/static/frontend/default.png', NULL, '北京市', '北京市市辖区', 1544689679, '115.171.62.242', 1554952627, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(00000000009, 'admin', '', '17701209221', 'b262fa7e75aa9e3a50b334ea10abfbff', 0.00, '/static/index/static/frontend/default.png', NULL, '北京市', '北京市市辖区', 1544690961, '115.171.63.174', 1555036386, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(00000000011, '测试', '', '18256027172', 'b5478b60461abbb707a8176913c154d0', 100.00, '/static/index/static/frontend/default.png', NULL, '北京市', '北京市市辖区', 1550830578, '27.17.122.190', 1552463113, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(00000000012, '15629079619', '', '15629079619', '40d01248aa6d6264dad4528713d832cd', 0.00, '/static/index/static/frontend/default.png', NULL, '北京市', '北京市市辖区', 1552378878, '27.17.122.190', 1552378878, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `member_login`
--

CREATE TABLE `member_login` (
  `id` int(11) UNSIGNED NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `login_time` int(11) DEFAULT NULL,
  `login_ip` varchar(255) DEFAULT NULL,
  `login_adress` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='学员登录记录表';

-- --------------------------------------------------------

--
-- 表的结构 `member_tidings`
--

CREATE TABLE `member_tidings` (
  `id` int(11) UNSIGNED NOT NULL,
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
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='就业喜报表';

--
-- 转存表中的数据 `member_tidings`
--

INSERT INTO `member_tidings` (`id`, `name`, `stu_name`, `sex`, `company`, `wages`, `education`, `welfare`, `imgurl`, `status`, `is_deleted`, `create_at`) VALUES
(1, NULL, '白白白', 1, '北京浩桦**有限公司', '12000', '专科', '五险一金', '/static/upload/58dd5b9e12b136a9/c0cd7c3db2fc882c.jpg', 1, 0, '2018-12-08 08:37:59'),
(2, NULL, '关关关', 1, '时趣**有限公司', '14000，14薪', '本科', '五险一金', '/static/upload/43a64c22b1310f76/3c1ecb08af8c1261.jpg', 1, 0, '2018-12-08 08:38:04');

-- --------------------------------------------------------

--
-- 表的结构 `problem`
--

CREATE TABLE `problem` (
  `id` int(11) UNSIGNED NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '删除状态(1:删除,0:未删)',
  `course_type` tinyint(1) DEFAULT NULL COMMENT '1免费课程2学位课程3七天课程4公开课',
  `course_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='问题列表';

--
-- 转存表中的数据 `problem`
--

INSERT INTO `problem` (`id`, `question`, `answer`, `create_at`, `status`, `is_deleted`, `course_type`, `course_id`) VALUES
(1, '我是零基础小白，能够学习乐育学院学位课程吗？', '可以，无论你对全栈开发有着浓厚的兴趣的小白，想成为一个优秀的全栈工程师，还是你已经是前端或者后端开发者，打算夯实基础，拓展知识 ，增加涨薪机会，这门课程都非常适合你的，我们的课程内容深入浅出，课程涵盖个难度等级，能适应所有不同程度的需求。', '2019-04-09 03:09:45', 1, 1, 2, NULL),
(2, '学完此课程后能达到什么水平？', '课程中会涉及几个小项目，其中一个比较重要的作业是实现ATM信用卡程序，代码量在500行左右，你学完此课程，至少可以写个500行的不太复杂的程序', '2019-04-09 03:09:50', 1, 1, 1, 1),
(3, '学习过程中碰到疑问怎么办？', '报名后，会提示你加入我们的学习群，学习过程中遇到的问题可以在群里与小伙伴讨论，或询问导师帮助。', '2019-04-09 03:09:54', 1, 1, 1, 2),
(4, '6个月后我还能继续观看课程吗？', '\r\n通过所有项目顺利毕业后，你可以反复观看课程。你可以把这当做毕业奖励！但如果超过 6 个月你未能通过所有模块，你将不再享受的导师服务。你可能会问，如果无法在规定时间完成课程怎么办？其实不用担心，在你正式进入课程学习后，我们会有专业的导师、班主任对你的课程进行学习代码审阅、项目审核，阶段考核，还有班主任督促、学习小伙伴激励你的学习。绝大部分学生都能够在 6 个月内完成课程。', '2019-04-11 02:24:56', 1, 1, 2, 12),
(5, '请问课程的学习周期是多长呢？', '我们的课程学习周期为6个月，如果你按照建议每周学习至少 8~10 个小时，6个月时间你就可以学完十个技术模块。在课程期间我们会对课程进行科学系统的阶段性分类，以保证大家能够高质量地完成课程。', '2019-04-11 02:02:37', 1, 0, 2, 1),
(6, '如果作业和阶段考核不通过怎么办？', '\r\n作业和阶段考核是为了督促你能扎实的掌握知识，如果作业成绩和考核不通过，会有导师进行1对1辅导，答疑，针对作业和考核出现的问题给出指导和建议。', '2019-04-09 03:29:18', 1, 0, 2, 0),
(7, '6个月后我还能继续观看课程吗？', '\r\n通过所有项目顺利毕业后，你可以反复观看课程。你可以把这当做毕业奖励！但如果超过 6 个月你未能通过所有模块，你将不再享受的导师服务。你可能会问，如果无法在规定时间完成课程怎么办？其实不用担心，在你正式进入课程学习后，我们会有专业的导师、班主任对你的课程进行学习代码审阅、项目审核，阶段考核，还有班主任督促、学习小伙伴激励你的学习。绝大部分学生都能够在 6 个月内完成课程。', '2019-04-11 02:27:02', 1, 1, 2, 0),
(8, '这个课程是在线、面授还是两者相结合的？', '\r\n乐育所有的课程都是在线录播课程，线上实时的学习与导师、同学、讲师进行互动。\r\nVIP课程则可以与线下面授课程无缝互转。', '2019-04-11 01:54:13', 1, 1, 2, 0),
(9, '6个月后我还能继续观看课程吗？', '通过所有项目顺利毕业后，你可以反复观看课程。你可以把这当做毕业奖励！但如果超过 6 个月你未能通过所有模块，你将不再享受的导师服务。你可能会问，如果无法在规定时间完成课程怎么办？其实不用担心，在你正式进入课程学习后，我们会有专业的导师、班主任对你的课程进行学习代码审阅、项目审核，阶段考核，还有班主任督促、学习小伙伴激励你的学习。绝大部分学生都能够在 6 个月内完成课程。', '2019-04-11 02:22:19', 1, 1, 2, 0),
(10, 'dddd', 'ddddddddddddd', '2019-04-11 01:53:19', 1, 1, 1, 3),
(11, '什么是乐育学位？', '乐育学位课程通过为零基础的学员制定学习计划，提供系统性课程、一对一辅导、审阅代码、闯关式学习、答疑、推荐就业等服务，有效保障学员通过学习乐育学位的课程后具备独立完成项目与企业所需的技术水准。其中你享有6个月的导师服务权利，通过所有项目顺利毕业后，你可以反复观看课程。你可以把这当做毕业奖励！但如果超过 6 个月你未能通过所有模块，你将不再享受的导师服务。你可能会问，如果无法在规定时间完成课程怎么办？其实不用担心，在你正式进入课程学习后，我们会有专业的导师、班主任对你的课程进行学习代码审阅、项目审核，阶段考核', '2019-04-11 02:35:36', 1, 0, 2, 0),
(12, '6个月后我还能继续观看课程吗？', '通过所有项目顺利毕业后，你可以反复观看课程。你可以把这当做毕业奖励！但如果超过 6 个月你未能通过所有模块，你将不再享受的导师服务。你可能会问，如果无法在规定时间完成课程怎么办？其实不用担心，在你正式进入课程学习后，我们会有专业的导师、班主任对你的课程进行学习代码审阅、项目审核，阶段考核，还有班主任督促、学习小伙伴激励你的学习。绝大部分学生都能够在 6 个月内完成课程。', '2019-04-11 02:34:23', 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `system_auth`
--

CREATE TABLE `system_auth` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(20) NOT NULL COMMENT '权限名称',
  `status` tinyint(1) UNSIGNED DEFAULT '1' COMMENT '状态(1:禁用,2:启用)',
  `sort` smallint(6) UNSIGNED DEFAULT '0' COMMENT '排序权重',
  `desc` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `create_by` bigint(11) UNSIGNED DEFAULT '0' COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统权限表';

--
-- 转存表中的数据 `system_auth`
--

INSERT INTO `system_auth` (`id`, `title`, `status`, `sort`, `desc`, `create_by`, `create_at`) VALUES
(1, '管理员1', 1, 0, '123123', 0, '2018-10-22 05:54:55');

-- --------------------------------------------------------

--
-- 表的结构 `system_auth_node`
--

CREATE TABLE `system_auth_node` (
  `auth` bigint(20) UNSIGNED DEFAULT NULL COMMENT '角色ID',
  `node` varchar(200) DEFAULT NULL COMMENT '节点路径'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色与节点关系表';

--
-- 转存表中的数据 `system_auth_node`
--

INSERT INTO `system_auth_node` (`auth`, `node`) VALUES
(1, 'web'),
(1, 'web/banner'),
(1, 'web/banner/index'),
(1, 'web/banner/add'),
(1, 'web/banner/edit'),
(1, 'web/banner/del'),
(1, 'web/banner/forbid'),
(1, 'web/banner/resume'),
(1, 'web/course'),
(1, 'web/course/index'),
(1, 'web/course/add'),
(1, 'web/course/edit'),
(1, 'web/course/del'),
(1, 'web/course/forbid'),
(1, 'web/course/resume'),
(1, 'web/member'),
(1, 'web/member/index'),
(1, 'web/member/auth'),
(1, 'web/member/add'),
(1, 'web/member/edit'),
(1, 'web/member/pass'),
(1, 'web/member/del'),
(1, 'web/member/forbid'),
(1, 'web/member/resume');

-- --------------------------------------------------------

--
-- 表的结构 `system_config`
--

CREATE TABLE `system_config` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '配置编码',
  `value` varchar(500) DEFAULT NULL COMMENT '配置值'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统参数配置' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `system_config`
--

INSERT INTO `system_config` (`id`, `name`, `value`) VALUES
(148, 'site_name', '乐育学院官网|专业在线web前端培训|html5培训学校'),
(149, 'site_copy', '乐育学院 © 2014~2018'),
(150, 'seo_keywords', '乐育,乐育学院，前端在线培训，前端培训，web前端培训，北京前端培训机构，北京前端培训'),
(151, 'seo_description', '乐育学院采用线上视频及直播方式授课，授课模式新颖，杜绝枯燥，为在校大学生、应届毕业生、社会就业者提高性价比全栈前端课程。目前爱创课堂学员遍布在百度、阿里、腾讯、京东、网易、搜狐、美团、滴滴、聚美、搜狗等企业就业，学员就业薪资已达行业新高！'),
(164, 'storage_type', 'local'),
(165, 'storage_qiniu_is_https', '1'),
(166, 'storage_qiniu_bucket', 'static'),
(167, 'storage_qiniu_domain', 'static.ctolog.com'),
(168, 'storage_qiniu_access_key', 'admin'),
(169, 'storage_qiniu_secret_key', 'admin'),
(170, 'storage_qiniu_region', '华东'),
(173, 'app_name', '乐育学院'),
(174, 'app_version', 'lyxy'),
(176, 'browser_icon', 'http://lyxy.td3131.com/static/upload/2d92167dc313cb74/1b5a6e724e9306e0.png'),
(184, 'wechat_appid', 'wx60a43dd8161666d4'),
(185, 'wechat_appsecret', '062938ddcfe0d69786e4e3d9dcbb08aa'),
(186, 'wechat_token', 'mytoken'),
(187, 'wechat_encodingaeskey', 'KHyoWLoS7oLZYkB4PokMTfA5sm6Hrqc9Tzgn9iXc0YH'),
(188, 'wechat_mch_id', '1332187001'),
(189, 'wechat_partnerkey', 'A82DC5BD1F3359081049C568D8502BC5'),
(194, 'wechat_cert_key', ''),
(196, 'wechat_cert_cert', ''),
(197, 'tongji_baidu_key', 'aa2f9869e9b578122e4692de2bd9f80f'),
(198, 'tongji_cnzz_key', '1261854404'),
(199, 'storage_oss_bucket', 'video-cktwl'),
(200, 'storage_oss_keyid', 'admin'),
(201, 'storage_oss_secret', 'admin'),
(202, 'storage_oss_domain', 'video-cktwl.oss-cn-shanghai.aliyuncs.com'),
(203, 'storage_oss_is_https', '1'),
(204, 'storage_local_exts', 'png,jpg,rar,doc,jpeg,zip,mp4');

-- --------------------------------------------------------

--
-- 表的结构 `system_log`
--

CREATE TABLE `system_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` char(15) NOT NULL DEFAULT '' COMMENT '操作者IP地址',
  `node` char(200) NOT NULL DEFAULT '' COMMENT '当前操作节点',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '操作人用户名',
  `action` varchar(200) NOT NULL DEFAULT '' COMMENT '操作行为',
  `content` text NOT NULL COMMENT '操作内容描述',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统操作日志表';

--
-- 转存表中的数据 `system_log`
--

INSERT INTO `system_log` (`id`, `ip`, `node`, `username`, `action`, `content`, `create_at`) VALUES
(1, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-22 01:11:00'),
(2, '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-10-22 01:27:26'),
(3, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-22 02:43:20'),
(4, '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-10-23 01:12:48'),
(5, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-23 01:13:09'),
(6, '127.0.0.1', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2018-10-23 01:13:36'),
(7, '127.0.0.1', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2018-10-23 01:35:56'),
(8, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-24 01:15:45'),
(9, '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-10-24 01:16:47'),
(10, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-24 01:17:18'),
(11, '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-10-24 01:18:50'),
(12, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-24 01:19:14'),
(13, '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-10-24 02:24:08'),
(14, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-24 02:25:10'),
(15, '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-10-24 02:33:11'),
(16, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-24 02:36:21'),
(17, '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-10-24 02:46:16'),
(18, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-24 02:46:21'),
(19, '127.0.0.1', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2018-10-24 06:20:30'),
(20, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-25 01:21:01'),
(21, '127.0.0.1', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2018-10-25 02:12:04'),
(22, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-27 08:30:45'),
(23, '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-10-29 01:39:14'),
(24, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-29 01:39:41'),
(25, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-29 01:40:42'),
(26, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-31 07:15:48'),
(27, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-01 05:17:41'),
(28, '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-11-01 05:40:01'),
(29, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-01 05:40:06'),
(30, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-02 09:26:27'),
(31, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-03 01:30:15'),
(32, '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-05 04:00:17'),
(33, '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-05 05:57:05'),
(34, '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-05 06:02:28'),
(35, '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-05 06:52:31'),
(36, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-07 01:03:19'),
(37, '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-07 01:07:40'),
(38, '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-07 01:08:51'),
(39, '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-11-07 07:52:27'),
(40, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-07 07:52:34'),
(41, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-08 01:34:18'),
(42, '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-11-08 03:55:06'),
(43, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-08 03:55:11'),
(44, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-09 02:01:48'),
(45, '27.18.180.225', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-09 10:26:35'),
(46, '27.17.243.131', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-13 02:12:16'),
(47, '219.143.129.37', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-13 03:06:21'),
(48, '115.171.62.98', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-13 11:24:14'),
(49, '27.17.243.131', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-17 04:10:45'),
(50, '219.143.130.198', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-21 02:09:22'),
(51, '27.18.181.98', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-21 02:54:10'),
(52, '27.18.181.98', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-21 02:58:18'),
(53, '27.18.181.98', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-21 03:05:32'),
(54, '219.143.130.198', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-21 03:20:49'),
(55, '115.171.62.90', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-22 07:14:42'),
(56, '27.18.181.98', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-22 08:24:44'),
(57, '27.18.181.98', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-23 05:21:14'),
(58, '27.18.181.98', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-24 05:27:12'),
(59, '27.17.123.191', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-01 01:10:40'),
(60, '219.143.130.87', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-03 07:10:38'),
(61, '27.17.123.191', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-03 08:56:51'),
(62, '27.17.123.191', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-04 09:48:30'),
(63, '27.17.123.191', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-05 01:10:55'),
(64, '27.17.123.191', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-05 09:29:58'),
(65, '27.17.123.191', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-06 03:52:22'),
(66, '115.171.61.131', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-07 08:51:07'),
(67, '27.17.123.191', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-08 01:15:59'),
(68, '27.17.123.191', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-08 07:39:26'),
(69, '219.143.128.45', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-10 09:37:20'),
(70, '115.171.63.224', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-11 01:53:30'),
(71, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-11 10:04:19'),
(72, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-12 01:39:33'),
(73, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-12 05:25:28'),
(74, '219.143.129.194', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-12 10:23:32'),
(75, '115.171.60.229', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-13 08:28:26'),
(76, '115.171.60.229', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-13 08:46:18'),
(77, '27.18.180.31', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-18 11:09:07'),
(78, '219.143.130.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-19 03:45:54'),
(79, '27.18.180.31', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-19 05:43:20'),
(80, '27.18.180.31', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2018-12-19 05:53:32'),
(81, '219.143.130.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-19 09:21:29'),
(82, '219.143.130.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-19 09:24:19'),
(83, '219.143.130.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-19 10:11:44'),
(84, '27.18.181.112', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-20 01:42:32'),
(85, '115.171.62.122', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-20 06:11:36'),
(86, '115.171.62.122', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-20 06:14:02'),
(87, '115.171.62.122', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-20 08:07:06'),
(88, '27.18.181.112', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-21 03:36:12'),
(89, '115.171.61.225', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-21 08:55:21'),
(90, '115.171.61.225', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-21 09:01:30'),
(91, '27.18.181.112', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-21 09:53:40'),
(92, '219.143.129.21', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-24 07:34:40'),
(93, '219.143.130.111', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-25 06:56:00'),
(94, '27.18.181.112', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-25 07:02:18'),
(95, '219.143.130.111', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-25 11:22:57'),
(96, '219.143.130.111', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-12-25 11:23:09'),
(97, '219.143.130.111', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-25 11:24:09'),
(98, '27.18.181.112', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-28 09:23:42'),
(99, '27.18.30.68', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-02 01:11:30'),
(100, '27.18.30.68', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-01-02 01:11:47'),
(101, '27.18.30.68', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2019-01-02 01:24:10'),
(102, '27.18.30.68', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2019-01-02 01:32:44'),
(103, '219.143.128.102', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-03 07:50:20'),
(104, '27.18.30.68', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-03 08:01:55'),
(105, '219.143.131.98', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-04 02:43:18'),
(106, '27.18.30.68', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-04 06:52:24'),
(107, '27.18.30.68', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-04 06:53:02'),
(108, '27.18.30.68', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-08 07:39:02'),
(109, '27.17.122.89', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-09 02:47:08'),
(110, '219.143.131.27', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-09 04:06:35'),
(111, '27.17.122.89', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-10 06:05:20'),
(112, '27.17.122.89', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-11 03:41:02'),
(113, '219.143.130.212', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-23 08:35:00'),
(114, '219.143.130.212', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-24 06:46:29'),
(115, '27.18.148.50', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-29 07:39:10'),
(116, '219.143.130.212', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-30 03:17:02'),
(117, '219.143.130.212', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-31 03:34:03'),
(118, '115.171.61.67', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-19 06:29:53'),
(119, '115.171.61.67', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-19 06:36:21'),
(120, '219.143.131.51', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-20 03:26:20'),
(121, '27.18.28.168', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-22 09:21:39'),
(122, '115.171.62.216', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-25 08:54:08'),
(123, '115.171.62.216', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-25 09:18:18'),
(124, '27.18.29.223', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-28 07:07:18'),
(125, '115.171.60.88', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-28 08:45:43'),
(126, '27.17.122.190', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-06 06:55:39'),
(127, '27.17.122.190', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-07 08:39:24'),
(128, '115.171.60.95', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-08 03:37:44'),
(129, '115.171.60.95', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-08 07:39:15'),
(130, '27.17.122.190', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-12 08:00:22'),
(131, '219.143.128.93', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-12 08:13:29'),
(132, '115.171.60.99', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-15 06:59:57'),
(133, '115.230.120.52', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-16 05:16:59'),
(134, '115.230.120.52', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2019-03-16 05:24:09'),
(135, '27.17.243.66', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-22 09:41:00'),
(136, '27.17.243.66', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-25 09:19:22'),
(137, '219.143.128.34', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-25 10:11:49'),
(138, '219.143.129.113', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-28 06:26:12'),
(139, '27.17.243.66', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-29 02:22:23'),
(140, '219.143.131.8', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-03 06:21:06'),
(141, '27.18.30.99', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-03 06:32:46'),
(142, '219.143.131.115', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-09 02:44:54'),
(143, '171.83.12.200', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-10 09:09:04'),
(144, '171.83.12.200', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-11 01:40:15'),
(145, '115.171.62.242', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-11 01:52:02'),
(146, '115.171.62.242', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-04-11 07:16:26'),
(147, '115.171.62.242', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-04-11 07:16:30'),
(148, '115.171.62.242', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-04-11 07:16:36'),
(149, '171.83.12.200', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-13 09:04:38'),
(150, '171.83.12.200', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2019-04-13 09:04:47'),
(151, '171.83.12.200', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-13 09:04:52'),
(152, '219.143.129.83', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-15 01:03:44'),
(153, '27.17.122.192', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-15 01:17:01'),
(154, '219.143.129.83', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-15 03:00:40'),
(155, '27.17.122.192', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-15 05:37:28');

-- --------------------------------------------------------

--
-- 表的结构 `system_menu`
--

CREATE TABLE `system_menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pid` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '名称',
  `node` varchar(200) NOT NULL DEFAULT '' COMMENT '节点代码',
  `icon` varchar(100) NOT NULL DEFAULT '' COMMENT '菜单图标',
  `url` varchar(400) NOT NULL DEFAULT '' COMMENT '链接',
  `params` varchar(500) DEFAULT '' COMMENT '链接参数',
  `target` varchar(20) NOT NULL DEFAULT '_self' COMMENT '链接打开方式',
  `sort` int(11) UNSIGNED DEFAULT '0' COMMENT '菜单排序',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `create_by` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统菜单表';

--
-- 转存表中的数据 `system_menu`
--

INSERT INTO `system_menu` (`id`, `pid`, `title`, `node`, `icon`, `url`, `params`, `target`, `sort`, `status`, `create_by`, `create_at`) VALUES
(2, 0, '系统管理', '', '', '#', '', '_self', 2000, 1, 0, '2015-11-16 11:15:38'),
(4, 2, '系统配置', '', '', '#', '', '_self', 100, 1, 0, '2016-03-14 10:12:55'),
(5, 4, '网站参数', '', 'fa fa-apple', 'admin/config/index', '', '_self', 20, 1, 0, '2016-05-06 06:36:49'),
(6, 4, '文件存储', '', 'fa fa-save', 'admin/config/file', '', '_self', 30, 1, 0, '2016-05-06 06:39:43'),
(9, 20, '操作日志', '', 'glyphicon glyphicon-console', 'admin/log/index', '', '_self', 50, 1, 0, '2017-03-24 07:49:31'),
(19, 20, '权限管理', '', 'fa fa-user-secret', 'admin/auth/index', '', '_self', 10, 1, 0, '2015-11-17 05:18:12'),
(20, 2, '系统权限', '', '', '#', '', '_self', 3000, 1, 0, '2016-03-14 10:11:41'),
(21, 20, '系统菜单', '', 'glyphicon glyphicon-menu-hamburger', 'admin/menu/index', '', '_self', 30, 1, 0, '2015-11-16 11:16:16'),
(22, 20, '节点管理', '', 'fa fa-ellipsis-v', 'admin/node/index', '', '_self', 20, 1, 0, '2015-11-16 11:16:16'),
(29, 20, '系统用户', '', 'fa fa-users', 'admin/user/index', '', '_self', 40, 1, 0, '2016-10-31 06:31:40'),
(94, 0, '后台首页', '', '', 'admin/index/main', '', '_self', 1000, 1, 0, '2017-08-08 03:28:43'),
(95, 0, '前台管理', '', '', '#', '', '_self', 4000, 1, 0, '2018-10-22 06:11:06'),
(96, 95, '网站管理', '', '', '#', '', '_self', 200, 1, 0, '2018-10-22 06:14:10'),
(97, 95, '客户管理', '', '', '#', '', '_self', 300, 1, 0, '2018-10-22 06:14:35'),
(98, 96, '轮播图管理', '', 'fa fa-image', '/web/banner/index', '', '_self', 0, 1, 0, '2018-10-22 06:15:01'),
(99, 97, '学员管理', '', 'fa fa-street-view', 'web/member/index', '', '_self', 0, 1, 0, '2018-10-23 02:32:21'),
(100, 102, '免费课程管理', '', 'fa fa-film', 'web/course/index', '', '_self', 0, 1, 0, '2018-10-23 06:29:13'),
(102, 95, '课程管理', '', '', '#', '', '_self', 100, 1, 0, '2018-10-24 07:53:01'),
(105, 96, '合作企业', '', 'fa fa-globe', 'web/company/index', '', '_self', 0, 1, 0, '2018-10-25 07:21:40'),
(106, 102, '课程类型管理', '', 'fa fa-cubes', 'web/ctype/index', '', '_self', 0, 1, 0, '2018-11-01 05:49:42'),
(107, 97, '留言管理', '', 'fa fa-commenting-o', 'web/msg/index', '', '_self', 0, 1, 0, '2018-11-02 09:46:20'),
(108, 102, '教材管理', '', 'fa fa-book', 'web/material/index', '', '_self', 0, 1, 0, '2018-11-03 06:20:09'),
(109, 102, '学位课程', '', 'fa fa-mortar-board', 'web/degree/index', '', '_self', 0, 1, 0, '2018-11-07 07:53:59'),
(110, 102, '七天课程', '', 'fa fa-dashboard', 'web/camp/index', '', '_self', 0, 1, 0, '2018-11-21 02:55:57'),
(111, 102, '公开课程', '', 'fa fa-cloud', 'web/open/index', '', '_self', 0, 1, 0, '2018-11-24 05:28:32'),
(112, 96, '问题管理', '', 'fa fa-question-circle', 'web/problem/index', '', '_self', 0, 1, 0, '2018-11-24 05:29:06'),
(113, 97, '就业喜报', '', 'fa fa-envelope-square', 'web/tidings/index', '', '_self', 0, 1, 0, '2018-11-24 05:29:36'),
(114, 95, '订单管理', '', '', '#', '', '_self', 0, 1, 0, '2019-01-04 06:54:26'),
(115, 114, '订单管理', '', 'fa fa-building', 'web/order/index', '', '_self', 0, 1, 0, '2019-01-04 06:55:29'),
(116, 97, '优惠券管理', '', 'fa fa-credit-card-alt', 'web/mcoupon/index', '', '_self', 0, 1, 0, '2019-01-09 06:50:20'),
(117, 96, '帮助中心', '', '', 'web/bang/index', '', '_self', 0, 1, 0, '2019-03-07 08:40:17'),
(118, 102, '轻课', '', '', '/web/job/index', '', '_self', 0, 1, 0, '2019-03-22 11:11:12');

-- --------------------------------------------------------

--
-- 表的结构 `system_node`
--

CREATE TABLE `system_node` (
  `id` int(11) UNSIGNED NOT NULL,
  `node` varchar(100) DEFAULT NULL COMMENT '节点代码',
  `title` varchar(500) DEFAULT NULL COMMENT '节点标题',
  `is_menu` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '是否可设置为菜单',
  `is_auth` tinyint(1) UNSIGNED DEFAULT '1' COMMENT '是否启动RBAC权限控制',
  `is_login` tinyint(1) UNSIGNED DEFAULT '1' COMMENT '是否启动登录控制',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统节点表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `system_node`
--

INSERT INTO `system_node` (`id`, `node`, `title`, `is_menu`, `is_auth`, `is_login`, `create_at`) VALUES
(126, 'admin/index/info', NULL, 0, 1, 1, '2018-10-24 02:00:11'),
(127, 'admin/index/pass', NULL, 0, 1, 1, '2018-10-24 01:59:32'),
(128, 'admin/index/index', NULL, 0, 1, 1, '2018-10-24 01:59:19'),
(129, 'admin/index/main', '', 0, 1, 1, '2018-10-24 01:52:19'),
(130, 'admin/index', '后台首页', 0, 1, 1, '2018-10-24 01:51:44'),
(131, 'admin/auth/index', '权限列表', 1, 1, 1, '2017-08-23 07:45:42'),
(132, 'admin', '后台管理', 0, 1, 1, '2017-08-23 07:45:44'),
(133, 'admin/auth/apply', '节点授权', 0, 1, 1, '2017-08-23 08:05:18'),
(134, 'admin/auth/add', '添加授权', 0, 1, 1, '2017-08-23 08:05:19'),
(135, 'admin/auth/edit', '编辑权限', 0, 1, 1, '2017-08-23 08:05:19'),
(136, 'admin/auth/forbid', '禁用权限', 0, 1, 1, '2017-08-23 08:05:20'),
(137, 'admin/auth/resume', '启用权限', 0, 1, 1, '2017-08-23 08:05:20'),
(138, 'admin/auth/del', '删除权限', 0, 1, 1, '2017-08-23 08:05:21'),
(139, 'admin/config/index', '参数配置', 1, 1, 1, '2017-08-23 08:05:22'),
(140, 'admin/config/file', '文件配置', 1, 1, 1, '2017-08-23 08:05:22'),
(141, 'admin/log/index', '日志列表', 1, 1, 1, '2017-08-23 08:05:23'),
(142, 'admin/log/del', '删除日志', 0, 1, 1, '2017-08-23 08:05:24'),
(143, 'admin/menu/index', '菜单列表', 1, 1, 1, '2017-08-23 08:05:25'),
(144, 'admin/menu/add', '添加菜单', 0, 1, 1, '2017-08-23 08:05:25'),
(145, 'admin/menu/edit', '编辑菜单', 0, 1, 1, '2017-08-23 08:05:26'),
(146, 'admin/menu/del', '删除菜单', 0, 1, 1, '2017-08-23 08:05:26'),
(147, 'admin/menu/forbid', '禁用菜单', 0, 1, 1, '2017-08-23 08:05:27'),
(148, 'admin/menu/resume', '启用菜单', 0, 1, 1, '2017-08-23 08:05:28'),
(149, 'admin/node/index', '节点列表', 1, 1, 1, '2017-08-23 08:05:29'),
(150, 'admin/node/save', '节点更新', 0, 1, 1, '2017-08-23 08:05:30'),
(151, 'admin/user/index', '用户管理', 1, 1, 1, '2017-08-23 08:05:31'),
(152, 'admin/user/auth', '用户授权', 0, 1, 1, '2017-08-23 08:05:32'),
(153, 'admin/user/add', '添加用户', 0, 1, 1, '2017-08-23 08:05:33'),
(154, 'admin/user/edit', '编辑用户', 0, 1, 1, '2017-08-23 08:05:33'),
(155, 'admin/user/pass', '用户密码', 0, 1, 1, '2017-08-23 08:05:34'),
(156, 'admin/user/del', '删除用户', 0, 1, 1, '2017-08-23 08:05:34'),
(157, 'admin/user/forbid', '禁用用户', 0, 1, 1, '2017-08-23 08:05:34'),
(158, 'admin/user/resume', '启用用户', 0, 1, 1, '2017-08-23 08:05:35'),
(159, 'demo/plugs/file', '文件上传', 1, 0, 1, '2017-08-23 08:05:36'),
(160, 'demo/plugs/region', '区域选择', 1, 0, 1, '2017-08-23 08:05:36'),
(161, 'demo/plugs/editor', '富文本器', 1, 0, 1, '2017-08-23 08:05:37'),
(162, 'wechat/config/index', '微信参数', 1, 1, 1, '2017-08-23 08:05:37'),
(163, 'wechat/config/pay', '微信支付', 0, 1, 1, '2017-08-23 08:05:38'),
(164, 'wechat/fans/index', '粉丝列表', 1, 1, 1, '2017-08-23 08:05:39'),
(165, 'wechat/fans/back', '粉丝黑名单', 1, 1, 1, '2017-08-23 08:05:39'),
(166, 'wechat/fans/backadd', '移入黑名单', 0, 1, 1, '2017-08-23 08:05:40'),
(167, 'wechat/fans/tagset', '设置标签', 0, 1, 1, '2017-08-23 08:05:41'),
(168, 'wechat/fans/backdel', '移出黑名单', 0, 1, 1, '2017-08-23 08:05:41'),
(169, 'wechat/fans/tagadd', '添加标签', 0, 1, 1, '2017-08-23 08:05:41'),
(170, 'wechat/fans/tagdel', '删除标签', 0, 1, 1, '2017-08-23 08:05:42'),
(171, 'wechat/fans/sync', '同步粉丝', 0, 1, 1, '2017-08-23 08:05:43'),
(172, 'wechat/keys/index', '关键字列表', 1, 1, 1, '2017-08-23 08:05:44'),
(173, 'wechat/keys/add', '添加关键字', 0, 1, 1, '2017-08-23 08:05:44'),
(174, 'wechat/keys/edit', '编辑关键字', 0, 1, 1, '2017-08-23 08:05:45'),
(175, 'wechat/keys/del', '删除关键字', 0, 1, 1, '2017-08-23 08:05:45'),
(176, 'wechat/keys/forbid', '禁用关键字', 0, 1, 1, '2017-08-23 08:05:46'),
(177, 'wechat/keys/resume', '启用关键字', 0, 1, 1, '2017-08-23 08:05:46'),
(178, 'wechat/keys/subscribe', '关注默认回复', 0, 1, 1, '2017-08-23 08:05:48'),
(179, 'wechat/keys/defaults', '默认响应回复', 0, 1, 1, '2017-08-23 08:05:49'),
(180, 'wechat/menu/index', '微信菜单', 1, 1, 1, '2017-08-23 08:05:51'),
(181, 'wechat/menu/edit', '发布微信菜单', 0, 1, 1, '2017-08-23 08:05:51'),
(182, 'wechat/menu/cancel', '取消微信菜单', 0, 1, 1, '2017-08-23 08:05:52'),
(183, 'wechat/news/index', '微信图文列表', 1, 1, 1, '2017-08-23 08:05:52'),
(184, 'wechat/news/select', '微信图文选择', 0, 1, 1, '2017-08-23 08:05:53'),
(185, 'wechat/news/image', '微信图片选择', 0, 1, 1, '2017-08-23 08:05:53'),
(186, 'wechat/news/add', '添加图文', 0, 1, 1, '2017-08-23 08:05:54'),
(187, 'wechat/news/edit', '编辑图文', 0, 1, 1, '2017-08-23 08:05:56'),
(188, 'wechat/news/del', '删除图文', 0, 1, 1, '2017-08-23 08:05:56'),
(189, 'wechat/news/push', '推送图文', 0, 1, 1, '2017-08-23 08:05:56'),
(190, 'wechat/tags/index', '微信标签列表', 1, 1, 1, '2017-08-23 08:05:58'),
(191, 'wechat/tags/add', '添加微信标签', 0, 1, 1, '2017-08-23 08:05:58'),
(192, 'wechat/tags/edit', '编辑微信标签', 0, 1, 1, '2017-08-23 08:05:58'),
(193, 'wechat/tags/sync', '同步微信标签', 0, 1, 1, '2017-08-23 08:05:59'),
(194, 'admin/auth', '权限管理', 0, 1, 1, '2017-08-23 08:06:58'),
(195, 'admin/config', '系统配置', 0, 1, 1, '2017-08-23 08:07:34'),
(196, 'admin/log', '系统日志', 0, 1, 1, '2017-08-23 08:07:46'),
(197, 'admin/menu', '系统菜单', 0, 1, 1, '2017-08-23 08:08:02'),
(198, 'admin/node', '系统节点', 0, 1, 1, '2017-08-23 08:08:44'),
(199, 'admin/user', '导师管理', 0, 1, 1, '2017-08-23 08:09:43'),
(200, 'demo', '插件案例', 0, 1, 1, '2017-08-23 08:10:43'),
(201, 'demo/plugs', '插件案例', 0, 1, 1, '2017-08-23 08:10:51'),
(202, 'wechat', '微信管理', 0, 1, 1, '2017-08-23 08:11:13'),
(203, 'wechat/config', '微信配置', 0, 1, 1, '2017-08-23 08:11:19'),
(204, 'wechat/fans', '粉丝管理', 0, 1, 1, '2017-08-23 08:11:36'),
(205, 'wechat/keys', '关键字管理', 0, 1, 1, '2017-08-23 08:13:00'),
(206, 'wechat/menu', '微信菜单管理', 0, 1, 1, '2017-08-23 08:14:11'),
(207, 'wechat/news', '微信图文管理', 0, 1, 1, '2017-08-23 08:14:40'),
(208, 'wechat/tags', '微信标签管理', 0, 1, 1, '2017-08-23 08:15:25'),
(209, 'web/banner/index', NULL, 1, 1, 1, '2018-10-22 07:09:33'),
(210, 'web/banner', '', 0, 1, 1, '2018-10-22 07:09:52'),
(211, 'web', '前台管理', 0, 1, 1, '2018-10-22 07:09:56'),
(212, 'member', '前台会员中心', 0, 1, 1, '2018-10-22 07:10:10'),
(213, 'web/banner/add', NULL, 0, 1, 1, '2018-10-23 02:27:46'),
(214, 'web/banner/edit', NULL, 0, 1, 1, '2018-10-23 02:27:56'),
(215, 'web/banner/del', NULL, 0, 1, 1, '2018-10-23 02:27:58'),
(216, 'web/banner/forbid', NULL, 0, 1, 1, '2018-10-23 02:27:58'),
(217, 'web/banner/resume', NULL, 0, 1, 1, '2018-10-23 02:27:59'),
(218, 'web/member/index', NULL, 1, 1, 1, '2018-10-23 03:07:21'),
(219, 'web/member/auth', NULL, 0, 1, 1, '2018-10-23 03:07:22'),
(220, 'web/member/add', NULL, 0, 1, 1, '2018-10-23 03:07:22'),
(221, 'web/member/edit', NULL, 0, 1, 1, '2018-10-23 03:07:23'),
(222, 'web/member/pass', NULL, 0, 1, 1, '2018-10-23 03:07:24'),
(223, 'web/member/del', NULL, 0, 1, 1, '2018-10-23 03:07:25'),
(224, 'web/member/forbid', NULL, 0, 1, 1, '2018-10-23 03:07:25'),
(225, 'web/member/resume', NULL, 0, 1, 1, '2018-10-23 03:07:26'),
(227, 'web/course/index', NULL, 1, 1, 1, '2018-10-24 05:54:08'),
(228, 'web/course/add', NULL, 0, 1, 1, '2018-10-24 05:54:09'),
(229, 'web/course/edit', NULL, 0, 1, 1, '2018-10-24 05:54:09'),
(230, 'web/course/del', NULL, 0, 1, 1, '2018-10-24 05:54:10'),
(231, 'web/course/forbid', NULL, 0, 1, 1, '2018-10-24 05:54:11'),
(232, 'web/course/resume', NULL, 0, 1, 1, '2018-10-24 05:54:11'),
(233, 'web/c_type/index', NULL, 1, 1, 1, '2018-10-24 05:54:19'),
(234, 'web/c_type/add', NULL, 0, 1, 1, '2018-10-24 05:54:20'),
(235, 'web/c_type/edit', NULL, 0, 1, 1, '2018-10-24 05:54:21'),
(236, 'web/c_type/del', NULL, 0, 1, 1, '2018-10-24 05:54:21'),
(237, 'web/c_type/forbid', NULL, 0, 1, 1, '2018-10-24 05:54:21'),
(238, 'web/c_type/resume', NULL, 0, 1, 1, '2018-10-24 05:54:22'),
(239, 'web/ctype/index', NULL, 1, 1, 1, '2018-10-24 05:57:23'),
(240, 'web/ctype/add', NULL, 0, 1, 1, '2018-10-24 05:57:24'),
(241, 'web/ctype/edit', NULL, 0, 1, 1, '2018-10-24 05:57:25'),
(242, 'web/ctype/del', NULL, 0, 1, 1, '2018-10-24 05:57:25'),
(243, 'web/ctype/forbid', NULL, 0, 1, 1, '2018-10-24 05:57:26'),
(244, 'web/ctype/resume', NULL, 0, 1, 1, '2018-10-24 05:57:26'),
(245, 'web/chapter/index', NULL, 1, 1, 1, '2018-10-24 09:19:47'),
(246, 'web/chapter/add', NULL, 0, 1, 1, '2018-10-24 09:19:47'),
(247, 'web/chapter/edit', NULL, 0, 1, 1, '2018-10-24 09:19:48'),
(248, 'web/chapter/del', NULL, 0, 1, 1, '2018-10-24 09:19:49'),
(249, 'web/chapter/forbid', NULL, 0, 1, 1, '2018-10-24 09:19:50'),
(250, 'web/chapter/resume', NULL, 0, 1, 1, '2018-10-24 09:19:50'),
(251, 'web/content/index', NULL, 0, 1, 1, '2018-10-25 02:12:53'),
(252, 'web/content/add', NULL, 0, 1, 1, '2018-10-25 02:12:53'),
(253, 'web/content/edit', NULL, 0, 1, 1, '2018-10-25 02:12:54'),
(254, 'web/content/del', NULL, 0, 1, 1, '2018-10-25 02:12:55'),
(255, 'web/content/forbid', NULL, 0, 1, 1, '2018-10-25 02:12:56'),
(256, 'web/content/resume', NULL, 0, 1, 1, '2018-10-25 02:12:57'),
(257, 'web/content/download', NULL, 0, 1, 1, '2018-10-25 02:12:57'),
(258, 'web/company/index', NULL, 1, 1, 1, '2018-10-25 07:20:05'),
(259, 'web/company/edit', NULL, 0, 1, 1, '2018-10-25 07:20:06'),
(260, 'web/company/add', NULL, 0, 1, 1, '2018-10-25 07:20:08'),
(261, 'web/company/del', NULL, 0, 1, 1, '2018-10-25 07:20:11'),
(262, 'web/company/forbid', NULL, 0, 1, 1, '2018-10-25 07:20:13'),
(263, 'web/company/resume', NULL, 0, 1, 1, '2018-10-25 07:20:13'),
(264, 'web/course/download', NULL, 0, 1, 1, '2018-11-01 05:39:07'),
(265, 'alipay/alipay/pay', NULL, 0, 0, 0, '2018-11-02 09:45:06'),
(266, 'alipay/alipay/order', NULL, 0, 0, 0, '2018-11-02 09:45:07'),
(267, 'alipay/alipay/alipay_jump', NULL, 0, 0, 0, '2018-11-02 09:45:07'),
(268, 'alipay/alipay/notify_url', NULL, 0, 0, 0, '2018-11-02 09:45:08'),
(269, 'alipay/alipay/return_url', NULL, 0, 0, 0, '2018-11-02 09:45:09'),
(270, 'web/msg/index', NULL, 1, 1, 1, '2018-11-02 09:45:28'),
(271, 'web/msg/detail', NULL, 0, 1, 1, '2018-11-02 09:45:30'),
(272, 'web/msg/del', NULL, 0, 1, 1, '2018-11-02 09:45:30'),
(273, 'web/msg/forbid', NULL, 0, 1, 1, '2018-11-02 09:45:31'),
(274, 'web/msg/resume', NULL, 0, 1, 1, '2018-11-02 09:45:32'),
(275, 'web/material/index', NULL, 1, 1, 1, '2018-11-03 06:18:55'),
(276, 'web/material/detail', NULL, 0, 1, 1, '2018-11-03 06:18:57'),
(277, 'web/material/del', NULL, 0, 1, 1, '2018-11-03 06:18:57'),
(278, 'web/material/forbid', NULL, 0, 1, 1, '2018-11-03 06:18:58'),
(279, 'web/material/resume', NULL, 0, 1, 1, '2018-11-03 06:18:58'),
(280, 'web/material/add', NULL, 0, 1, 1, '2018-11-03 06:40:31'),
(281, 'web/degree/index', NULL, 1, 1, 1, '2018-11-07 07:44:45'),
(282, 'web/degree/add', NULL, 0, 1, 1, '2018-11-07 07:44:45'),
(283, 'web/degree/edit', NULL, 0, 1, 1, '2018-11-07 07:44:45'),
(284, 'web/degree/del', NULL, 0, 1, 1, '2018-11-07 07:44:46'),
(285, 'web/degree/resume', NULL, 0, 1, 1, '2018-11-07 07:44:46'),
(286, 'web/degree/forbid', NULL, 0, 1, 1, '2018-11-07 07:44:46'),
(287, 'web/degree/download', NULL, 0, 1, 1, '2018-11-07 07:44:47'),
(288, 'web/camp/index', NULL, 1, 1, 1, '2018-11-21 02:54:37'),
(289, 'web/camp/add', NULL, 0, 1, 1, '2018-11-21 02:54:37'),
(290, 'web/camp/edit', NULL, 0, 1, 1, '2018-11-21 02:54:38'),
(291, 'web/camp/del', NULL, 0, 1, 1, '2018-11-21 02:54:38'),
(292, 'web/camp/forbid', NULL, 0, 1, 1, '2018-11-21 02:54:38'),
(293, 'web/camp/resume', NULL, 0, 1, 1, '2018-11-21 02:54:39'),
(294, 'web/cchapter/index', NULL, 0, 1, 1, '2018-11-21 02:54:42'),
(295, 'web/cchapter/add', NULL, 0, 1, 1, '2018-11-21 02:54:42'),
(296, 'web/cchapter/edit', NULL, 0, 1, 1, '2018-11-21 02:54:43'),
(297, 'web/cchapter/del', NULL, 0, 1, 1, '2018-11-21 02:54:43'),
(298, 'web/cchapter/forbid', NULL, 0, 1, 1, '2018-11-21 02:54:44'),
(299, 'web/cchapter/resume', NULL, 0, 1, 1, '2018-11-21 02:54:44'),
(300, 'web/ccontent/index', NULL, 0, 1, 1, '2018-11-21 02:54:46'),
(301, 'web/ccontent/add', NULL, 0, 1, 1, '2018-11-21 02:54:46'),
(302, 'web/ccontent/edit', NULL, 0, 1, 1, '2018-11-21 02:54:47'),
(303, 'web/ccontent/del', NULL, 0, 1, 1, '2018-11-21 02:54:48'),
(304, 'web/ccontent/forbid', NULL, 0, 1, 1, '2018-11-21 02:54:48'),
(305, 'web/ccontent/resume', NULL, 0, 1, 1, '2018-11-21 02:54:48'),
(306, 'web/ccontent/download', NULL, 0, 1, 1, '2018-11-21 02:54:50'),
(307, 'web/dchapter/index', NULL, 0, 1, 1, '2018-11-21 02:54:55'),
(308, 'web/dchapter/add', NULL, 0, 1, 1, '2018-11-21 02:54:55'),
(309, 'web/dchapter/edit', NULL, 0, 1, 1, '2018-11-21 02:54:56'),
(310, 'web/dchapter/del', NULL, 0, 1, 1, '2018-11-21 02:54:56'),
(311, 'web/dchapter/forbid', NULL, 0, 1, 1, '2018-11-21 02:54:57'),
(312, 'web/dchapter/resume', NULL, 0, 1, 1, '2018-11-21 02:54:57'),
(313, 'web/dcontent/index', NULL, 0, 1, 1, '2018-11-21 02:54:59'),
(314, 'web/dcontent/add', NULL, 0, 1, 1, '2018-11-21 02:54:59'),
(315, 'web/dcontent/edit', NULL, 0, 1, 1, '2018-11-21 02:55:00'),
(316, 'web/dcontent/del', NULL, 0, 1, 1, '2018-11-21 02:55:00'),
(317, 'web/dcontent/forbid', NULL, 0, 1, 1, '2018-11-21 02:55:01'),
(318, 'web/dcontent/resume', NULL, 0, 1, 1, '2018-11-21 02:55:01'),
(319, 'web/dcontent/download', NULL, 0, 1, 1, '2018-11-21 02:55:02'),
(320, 'web/material/edit', NULL, 0, 1, 1, '2018-11-21 02:55:05'),
(321, 'web/module/index', NULL, 0, 1, 1, '2018-11-21 02:55:09'),
(322, 'web/module/add', NULL, 0, 1, 1, '2018-11-21 02:55:09'),
(323, 'web/module/edit', NULL, 0, 1, 1, '2018-11-21 02:55:10'),
(324, 'web/module/del', NULL, 0, 1, 1, '2018-11-21 02:55:10'),
(325, 'web/module/forbid', NULL, 0, 1, 1, '2018-11-21 02:55:11'),
(326, 'web/module/resume', NULL, 0, 1, 1, '2018-11-21 02:55:11'),
(327, 'web/package/index', NULL, 0, 1, 1, '2018-11-21 02:55:15'),
(328, 'web/package/add', NULL, 0, 1, 1, '2018-11-21 02:55:16'),
(329, 'web/package/edit', NULL, 0, 1, 1, '2018-11-21 02:55:16'),
(330, 'web/package/del', NULL, 0, 1, 1, '2018-11-21 02:55:17'),
(331, 'web/package/forbid', NULL, 0, 1, 1, '2018-11-21 02:55:18'),
(332, 'web/package/resume', NULL, 0, 1, 1, '2018-11-21 02:55:18'),
(333, 'web/problem/index', NULL, 1, 1, 1, '2018-11-24 05:27:24'),
(334, 'web/problem/add', NULL, 0, 1, 1, '2018-11-24 05:27:24'),
(335, 'web/problem/edit', NULL, 0, 1, 1, '2018-11-24 05:27:25'),
(336, 'web/problem/del', NULL, 0, 1, 1, '2018-11-24 05:27:26'),
(337, 'web/problem/resume', NULL, 0, 1, 1, '2018-11-24 05:27:27'),
(338, 'web/problem/forbid', NULL, 0, 1, 1, '2018-11-24 05:27:28'),
(339, 'web/tidings/index', NULL, 1, 1, 1, '2018-11-24 05:27:29'),
(340, 'web/tidings/add', NULL, 0, 1, 1, '2018-11-24 05:27:30'),
(341, 'web/tidings/edit', NULL, 0, 1, 1, '2018-11-24 05:27:31'),
(342, 'web/tidings/del', NULL, 0, 1, 1, '2018-11-24 05:27:31'),
(343, 'web/tidings/forbid', NULL, 0, 1, 1, '2018-11-24 05:27:32'),
(344, 'web/tidings/resume', NULL, 0, 1, 1, '2018-11-24 05:27:32'),
(345, 'web/open/index', NULL, 1, 1, 1, '2018-11-24 05:28:02'),
(346, 'web/open/add', NULL, 0, 1, 1, '2018-11-24 05:28:03'),
(347, 'web/open/edit', NULL, 0, 1, 1, '2018-11-24 05:28:03'),
(348, 'web/open/del', NULL, 0, 1, 1, '2018-11-24 05:28:04'),
(349, 'web/open/forbid', NULL, 0, 1, 1, '2018-11-24 05:28:05'),
(350, 'web/open/resume', NULL, 0, 1, 1, '2018-11-24 05:28:05'),
(351, 'web/order/index', NULL, 1, 1, 1, '2019-01-04 06:53:37'),
(352, 'web/order/detail', NULL, 0, 1, 1, '2019-01-04 06:53:39'),
(353, 'web/order/del', NULL, 0, 1, 1, '2019-01-04 06:53:43'),
(354, 'web/order/forbid', NULL, 0, 1, 1, '2019-01-04 06:53:43'),
(355, 'web/order/resume', NULL, 0, 1, 1, '2019-01-04 06:53:44'),
(356, 'web/coupon/index', NULL, 0, 1, 1, '2019-01-09 06:40:39'),
(357, 'web/coupon/add', NULL, 0, 1, 1, '2019-01-09 06:40:40'),
(358, 'web/coupon/edit', NULL, 0, 1, 1, '2019-01-09 06:40:40'),
(359, 'web/coupon/del', NULL, 0, 1, 1, '2019-01-09 06:40:41'),
(360, 'web/coupon/forbid', NULL, 0, 1, 1, '2019-01-09 06:40:41'),
(361, 'web/coupon/resume', NULL, 0, 1, 1, '2019-01-09 06:40:41'),
(362, 'web/coupon/download', NULL, 0, 1, 1, '2019-01-09 06:40:42'),
(363, 'web/mcoupon/index', NULL, 1, 1, 1, '2019-01-09 06:40:48'),
(364, 'web/mcoupon/detail', NULL, 0, 1, 1, '2019-01-09 06:40:48'),
(365, 'web/mcoupon/del', NULL, 0, 1, 1, '2019-01-09 06:40:49'),
(366, 'web/mcoupon/forbid', NULL, 0, 1, 1, '2019-01-09 06:40:49'),
(367, 'web/mcoupon/resume', NULL, 0, 1, 1, '2019-01-09 06:40:50'),
(368, 'web/mcoupon/out', NULL, 0, 1, 1, '2019-01-09 06:40:50'),
(369, 'web/project/index', NULL, 0, 1, 1, '2019-01-09 06:41:06'),
(370, 'web/project/add', NULL, 0, 1, 1, '2019-01-09 06:41:07'),
(371, 'web/project/edit', NULL, 0, 1, 1, '2019-01-09 06:41:07'),
(372, 'web/project/del', NULL, 0, 1, 1, '2019-01-09 06:41:08'),
(373, 'web/project/forbid', NULL, 0, 1, 1, '2019-01-09 06:41:08'),
(374, 'web/project/resume', NULL, 0, 1, 1, '2019-01-09 06:41:09');

-- --------------------------------------------------------

--
-- 表的结构 `system_sequence`
--

CREATE TABLE `system_sequence` (
  `id` bigint(20) NOT NULL,
  `type` varchar(20) DEFAULT NULL COMMENT '序号类型',
  `sequence` char(50) NOT NULL COMMENT '序号值',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统序号表';

-- --------------------------------------------------------

--
-- 表的结构 `system_user`
--

CREATE TABLE `system_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `teacher_name` varchar(255) DEFAULT NULL,
  `password` char(32) NOT NULL DEFAULT '' COMMENT '用户登录密码',
  `qq` varchar(16) DEFAULT NULL COMMENT '联系QQ',
  `mail` varchar(32) DEFAULT NULL COMMENT '联系邮箱',
  `phone` varchar(16) DEFAULT NULL COMMENT '联系手机号',
  `desc` varchar(255) DEFAULT '' COMMENT '备注说明',
  `login_num` bigint(20) UNSIGNED DEFAULT '0' COMMENT '登录次数',
  `login_at` datetime DEFAULT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `authorize` varchar(255) DEFAULT NULL,
  `is_teacher` tinyint(1) DEFAULT '0' COMMENT '0不是老师 1是老师',
  `is_deleted` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '删除状态(1:删除,0:未删)',
  `create_by` bigint(20) UNSIGNED DEFAULT NULL COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `imgurl` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL COMMENT '职位',
  `sort` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统用户表';

--
-- 转存表中的数据 `system_user`
--

INSERT INTO `system_user` (`id`, `username`, `teacher_name`, `password`, `qq`, `mail`, `phone`, `desc`, `login_num`, `login_at`, `status`, `authorize`, `is_teacher`, `is_deleted`, `create_by`, `create_at`, `imgurl`, `video_url`, `position`, `sort`) VALUES
(10000, 'admin', '', 'bc6a1a1e376c3a86cf8613049dd3f680', '22222222', '123321@qq.com', '13800000000', 'dfgsdfgsfd', 107, '2019-04-15 13:37:28', 1, '1', 0, 0, NULL, '2015-11-13 07:14:22', '', '', '', 0),
(10002, 'test2', '李兰波', '', NULL, '4568@qq.com', '15977778888', '爱创课堂高级讲师。拥有多年前、后端工作经验，性格开朗、认真负责，精通JavaScript、Node等技术，mysql、mongodb等数据库，习惯使用各种设计模式，深入了解jquery，backbone等框架。喜欢使用通俗易懂的例子来引导学生，在教学工作中认真负责，授课思路清晰，实战性强，善于总结分析。', 0, NULL, 1, '1', 1, 0, NULL, '2018-10-24 08:34:39', '/static/upload/0d2c898688fab4bb/288ed4fe35674da8.png', '', '爱创课堂讲师', 3),
(10003, 'test1', '冯楠娜', '', NULL, '', '', '多年前端工作经验，曾参与大型电商网站的移动端开发，项目经验丰富，对移动端开发有深入的研究。精通HTML5、CSS3、JavaScript、 JQuery、 Ajax、Bootstrap等Web前端技术。\r\n教学方面细致耐心，风趣幽默，化繁为简。教学授课逻辑清晰，从学生的角度剖析知识点，帮助学生透彻的理解知识、运用知识，提高学生的项目实战能力！', 0, NULL, 1, '1', 1, 0, NULL, '2018-12-01 01:37:18', '/static/upload/285c9582d695f027/4706991f56dee56b.png', '', '爱创课堂讲师', 2),
(10004, 'test3', '彭帅伟', '', NULL, '', '', '技术主管，前端小王子\r\n多年前端开发经验,熟练使用前后端多种语言，对HTML5、CSS3、JavaScript、移动端以及各种前端框架有深入理解，从事教育培训工作多年，拥有丰富的开发经验与培训指导经验。以项目驱动教学，擅以理论结合实际，提高学生综合能力。教学思路严谨，课堂气氛活跃。讲解时善于运用生活当中的例子，使学员能够快速理解。', 0, NULL, 1, '1', 1, 0, NULL, '2018-12-01 01:38:10', '/static/upload/70129004131ea322/ecb05454ac782086.png', '', '爱创课堂讲师', 4),
(10005, 'test4', '张容铭', '', NULL, '', '', '爱创课堂创始人，前百度资深高级前端工程师。曾主导百度新首页改版，负责百度新首页项目研发与维护。参与研发百度翻译pc端、移动端以及APP。曾研发百度分享活动等运营项目，其运营项目尤以2013年百度搜红包项目最具代表。曾著书《Javascript设计模式》深得业界好评,尤其擅长设计模式、Angular2、React、ES6、Node.js等技术', 0, NULL, 1, '1', 1, 0, NULL, '2018-12-01 01:38:58', '/static/upload/b04c7f23c737ecef/9276f5247c673f30.png', '', '爱创课堂创始人', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alipay_config`
--
ALTER TABLE `alipay_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bang`
--
ALTER TABLE `bang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `camp_chapter`
--
ALTER TABLE `camp_chapter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `camp_content`
--
ALTER TABLE `camp_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chapter_content`
--
ALTER TABLE `chapter_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_chapter`
--
ALTER TABLE `course_chapter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_comment`
--
ALTER TABLE `course_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_homework`
--
ALTER TABLE `course_homework`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_question`
--
ALTER TABLE `course_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_type`
--
ALTER TABLE `course_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `degree_chapter`
--
ALTER TABLE `degree_chapter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `degree_content`
--
ALTER TABLE `degree_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `degree_module`
--
ALTER TABLE `degree_module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `degree_package`
--
ALTER TABLE `degree_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `degree_project`
--
ALTER TABLE `degree_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `index_banner`
--
ALTER TABLE `index_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `index_camp`
--
ALTER TABLE `index_camp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `index_company`
--
ALTER TABLE `index_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `index_coupon`
--
ALTER TABLE `index_coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `index_course`
--
ALTER TABLE `index_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `index_degree`
--
ALTER TABLE `index_degree`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `index_job`
--
ALTER TABLE `index_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `index_material`
--
ALTER TABLE `index_material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `index_msg`
--
ALTER TABLE `index_msg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `index_open`
--
ALTER TABLE `index_open`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_charge`
--
ALTER TABLE `member_charge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_coupon`
--
ALTER TABLE `member_coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_course`
--
ALTER TABLE `member_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_info`
--
ALTER TABLE `member_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_login`
--
ALTER TABLE `member_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_tidings`
--
ALTER TABLE `member_tidings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `problem`
--
ALTER TABLE `problem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_auth`
--
ALTER TABLE `system_auth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_system_auth_title` (`title`) USING BTREE,
  ADD KEY `index_system_auth_status` (`status`) USING BTREE;

--
-- Indexes for table `system_auth_node`
--
ALTER TABLE `system_auth_node`
  ADD KEY `index_system_auth_auth` (`auth`) USING BTREE,
  ADD KEY `index_system_auth_node` (`node`) USING BTREE;

--
-- Indexes for table `system_config`
--
ALTER TABLE `system_config`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_system_config_name` (`name`);

--
-- Indexes for table `system_log`
--
ALTER TABLE `system_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_menu`
--
ALTER TABLE `system_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_system_menu_node` (`node`) USING BTREE;

--
-- Indexes for table `system_node`
--
ALTER TABLE `system_node`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_system_node_node` (`node`);

--
-- Indexes for table `system_sequence`
--
ALTER TABLE `system_sequence`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_system_sequence_unique` (`type`,`sequence`) USING BTREE,
  ADD KEY `index_system_sequence_type` (`type`),
  ADD KEY `index_system_sequence_number` (`sequence`);

--
-- Indexes for table `system_user`
--
ALTER TABLE `system_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_system_user_username` (`username`) USING BTREE;

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `bang`
--
ALTER TABLE `bang`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `camp_chapter`
--
ALTER TABLE `camp_chapter`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `camp_content`
--
ALTER TABLE `camp_content`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `chapter_content`
--
ALTER TABLE `chapter_content`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- 使用表AUTO_INCREMENT `course_chapter`
--
ALTER TABLE `course_chapter`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- 使用表AUTO_INCREMENT `course_comment`
--
ALTER TABLE `course_comment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `course_homework`
--
ALTER TABLE `course_homework`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `course_question`
--
ALTER TABLE `course_question`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `course_type`
--
ALTER TABLE `course_type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `degree_chapter`
--
ALTER TABLE `degree_chapter`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- 使用表AUTO_INCREMENT `degree_content`
--
ALTER TABLE `degree_content`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- 使用表AUTO_INCREMENT `degree_module`
--
ALTER TABLE `degree_module`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- 使用表AUTO_INCREMENT `degree_package`
--
ALTER TABLE `degree_package`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `degree_project`
--
ALTER TABLE `degree_project`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `index_banner`
--
ALTER TABLE `index_banner`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `index_camp`
--
ALTER TABLE `index_camp`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `index_company`
--
ALTER TABLE `index_company`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `index_coupon`
--
ALTER TABLE `index_coupon`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `index_course`
--
ALTER TABLE `index_course`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- 使用表AUTO_INCREMENT `index_degree`
--
ALTER TABLE `index_degree`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `index_job`
--
ALTER TABLE `index_job`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `index_material`
--
ALTER TABLE `index_material`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `index_msg`
--
ALTER TABLE `index_msg`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `index_open`
--
ALTER TABLE `index_open`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `member_charge`
--
ALTER TABLE `member_charge`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `member_coupon`
--
ALTER TABLE `member_coupon`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `member_course`
--
ALTER TABLE `member_course`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- 使用表AUTO_INCREMENT `member_info`
--
ALTER TABLE `member_info`
  MODIFY `id` int(11) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用表AUTO_INCREMENT `member_login`
--
ALTER TABLE `member_login`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `member_tidings`
--
ALTER TABLE `member_tidings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `problem`
--
ALTER TABLE `problem`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用表AUTO_INCREMENT `system_auth`
--
ALTER TABLE `system_auth`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `system_config`
--
ALTER TABLE `system_config`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- 使用表AUTO_INCREMENT `system_log`
--
ALTER TABLE `system_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- 使用表AUTO_INCREMENT `system_menu`
--
ALTER TABLE `system_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- 使用表AUTO_INCREMENT `system_node`
--
ALTER TABLE `system_node`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=375;

--
-- 使用表AUTO_INCREMENT `system_sequence`
--
ALTER TABLE `system_sequence`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `system_user`
--
ALTER TABLE `system_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10006;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
