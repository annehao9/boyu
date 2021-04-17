-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2021-04-17 07:58:59
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `minsu`
--

-- --------------------------------------------------------

--
-- 表的结构 `minsu_comm`
--

CREATE TABLE `minsu_comm` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `roomId` int(10) DEFAULT NULL COMMENT '客房ID',
  `uId` int(10) DEFAULT NULL COMMENT '客户ID',
  `commText` varchar(500) DEFAULT NULL COMMENT '评论内容',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='民宿管理-评论';

-- --------------------------------------------------------

--
-- 表的结构 `minsu_landlady`
--

CREATE TABLE `minsu_landlady` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(45) DEFAULT NULL COMMENT '房东姓名',
  `introduce` varchar(45) DEFAULT NULL COMMENT '房东介绍',
  `vatar` varchar(45) DEFAULT NULL COMMENT '房东头像'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='民宿管理-房东信息';

-- --------------------------------------------------------

--
-- 表的结构 `minsu_orders`
--

CREATE TABLE `minsu_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `roomId` int(10) DEFAULT NULL COMMENT '客房ID',
  `uId` int(10) DEFAULT NULL COMMENT '客户ID',
  `orderstate` varchar(10) DEFAULT NULL COMMENT '订单状态',
  `price` int(7) DEFAULT NULL COMMENT '价格',
  `ordertime` date DEFAULT NULL COMMENT '下单时间',
  `inTime` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT '入住时间',
  `outTime` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT '离开时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `residentsId` int(10) DEFAULT NULL COMMENT '入住人ID'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='民宿管理-订单';

-- --------------------------------------------------------

--
-- 表的结构 `minsu_residents`
--

CREATE TABLE `minsu_residents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(45) DEFAULT NULL COMMENT '入住人姓名',
  `tel` int(11) DEFAULT NULL COMMENT '入住人电话'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='民宿管理-入住人';

-- --------------------------------------------------------

--
-- 表的结构 `minsu_roominfo`
--

CREATE TABLE `minsu_roominfo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `roomTitle` varchar(32) DEFAULT NULL COMMENT '客房主题',
  `ratedNum` int(11) DEFAULT NULL COMMENT '额定人数',
  `bedNum` int(11) DEFAULT NULL COMMENT '床数',
  `roomDescription` varchar(45) DEFAULT NULL COMMENT '客房描述',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `roomInfo_status` varchar(10) DEFAULT NULL COMMENT '状态',
  `landladyid` int(11) DEFAULT NULL COMMENT '房东id',
  `price` int(11) DEFAULT NULL COMMENT '价格'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='民宿管理-客房信息';

-- --------------------------------------------------------

--
-- 表的结构 `minsu_user`
--

CREATE TABLE `minsu_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(45) DEFAULT NULL COMMENT '登录用户名，前台唯一性的标识。不能重复。',
  `user_password` varchar(45) DEFAULT NULL COMMENT '登录用户的密码，不能为空。',
  `user_vatar` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='民宿-登录';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `minsu_comm`
--
ALTER TABLE `minsu_comm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roomId` (`roomId`),
  ADD KEY `uId` (`uId`);

--
-- Indexes for table `minsu_landlady`
--
ALTER TABLE `minsu_landlady`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `minsu_orders`
--
ALTER TABLE `minsu_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roomId` (`roomId`),
  ADD KEY `uId` (`uId`);

--
-- Indexes for table `minsu_residents`
--
ALTER TABLE `minsu_residents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `minsu_roominfo`
--
ALTER TABLE `minsu_roominfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `minsu_user`
--
ALTER TABLE `minsu_user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `minsu_comm`
--
ALTER TABLE `minsu_comm`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `minsu_landlady`
--
ALTER TABLE `minsu_landlady`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `minsu_orders`
--
ALTER TABLE `minsu_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `minsu_residents`
--
ALTER TABLE `minsu_residents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `minsu_roominfo`
--
ALTER TABLE `minsu_roominfo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `minsu_user`
--
ALTER TABLE `minsu_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
