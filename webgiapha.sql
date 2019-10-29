-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 29, 2019 lúc 06:48 AM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webgiapha`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `branch`
--
DROP TABLE IF EXISTS `branch`;
CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `sect` text NOT NULL,
  `branch` text,
  `life` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `birthday` date,
  `dayavoided` date,
  `note` text,
  `id_branch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
--
-- Cấu trúc bảng cho bảng `children`
--
DROP TABLE IF EXISTS `children`;
CREATE TABLE `children` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `id_user_dady` int(11) NOT NULL,
  `id_user_information` int(11) DEFAULT NULL,
  `sex` tinyint(1) NOT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------



--
-- Cấu trúc bảng cho bảng `wife`
--
DROP TABLE IF EXISTS `wife`;
CREATE TABLE `wife` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `dayavoided` date NOT NULL,
  `note` text NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `children`
--
ALTER TABLE `children`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wife`
--
ALTER TABLE `wife`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `children`
--
ALTER TABLE `children`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wife`
--
ALTER TABLE `wife`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;


--
-- thêm dữ liệu cho các bảng
--
-- dữ liệu bảng branch
--
INSERT INTO `branch` (`id`,`sect`,`branch`,`life`) VALUES 
(NULL,'','',1),
(NULL,'','',2),
(NULL,'NHẤT','',3),
(NULL,'NHÌ','',3),
(NULL,'NHẤT','',4),
(NULL,'NHÌ','',4),
(NULL,'NHẤT','',5),
(NULL,'NHÌ','',5),
(NULL,'NHẤT','',6),
(NULL,'NHẤT','NHẤT-NHÁNH ÔNG DỄ',6),
(NULL,'NHẤT','NHÌ-NHÁNH ÔNG DỄ',6);
--
-- dữ liệu bảng user
--
INSERT INTO `user` (`id`,`name`,`birthday`,`dayavoided`,`note`,`id_branch`) VALUES
(NULL,'TRƯƠNG VĂN HUỆ',NULL,'2019-6-27','Mộ tại Vân Quật tư điền',1),
(NULL,'TRƯƠNG VĂN TÀI',NULL,'2019-9-23','Mộ tại Vân Quật tư điền',2),
(NULL,'TRƯƠNG VĂN LỰC',NULL,'2019-8-22','Con trưởng ông Tài, mộ tại Quảng Đại tư thổ',3),
(NULL,'TRƯƠNG VĂN LƯỢNG',NULL,'2019-5-26','Con thứ hai của ông Tài, mộ tại Quảng Đại công điền',4),
(NULL,'TRƯƠNG VĂN SỨC',NULL,'2019-6-2','Con trưởng của Ông Lực, mộ tại Quảng Đại công điền',5),
(NULL,'TRƯƠNG VĂN KHỎE',NULL,'2019-7-27','Con thứ hai của Ông Lực, mộ tại Quảng Đại công điền',5),
(NULL,'TRƯƠNG VĂN PHIÊN',NULL,'2019-1-14','Con thứ ba đời nhỏ của Ông Lực, mộ tại Quảng Đại',5),
(NULL,'TRƯƠNG VĂN LANG',NULL,'2019-6-16','Con trưởng Ông Lượng, mộ tại Quảng Đại',6),
(NULL,'TRƯƠNG VĂN CHƯ',NULL,'2019-7-4','Con thứ 4 của Ông Lượng, mộ tại Quảng Đại. Có cuốn gia phả ghi ông THƯ',6); 
--
-- dữ liệu bảng wife
--
INSERT INTO `wife` (`id`,`name`,`dayavoided`,`note`,`id_user`) VALUES
(NULL,'TRƯƠNG THỊ NIÊN',NULL,NULL,1),
(NULL,'TRƯƠNG THỊ LĂN','2019-8-2','Mộ tại Lang Châu tư điền',2),
(NULL,'VÕ THỊ LOI','2019-9-16','Người thôn Mỹ Xuyên Tây, mộ tại Lang Châu tư điền',3),
(NULL,'NGUYỄN THỊ PHIÊN',NULL,'Người quê Dưỡng Chơn',3),
(NULL,'NGUYỄN THỊ THÁI','2019-12-15','Người thôn Vân Quật, mộ tại Quảng Đại công điền.',4),
(NULL,'VÕ THỊ SANH',NULL,NULL,5),
(NULL,'CAO THỊ LỄ','2019-7-3','Người trong xã, mộ tại Quảng Đại công điền',6),
(NULL,'NGUYỄN THỊ AI','2019-1-27','Người Dưỡng Chơn, mộ tại Quảng Đại công điền',7),
(NULL,'HUỲNH THỊ NỞ','2019-1-26','Người Vân Quật, mộ tại Quảng Đại công điền',7),
(NULL,'TRẦN THỊ LÕI','2019-11-12','Người Vân Quật, mộ tại Quảng Đại công điền',8),
(NULL,'TRẦN THỊ HUYÊN','2019-4-4','Người trong xã, mộ tại Quảng Đại công điền',9);
--
-- dữ liệu bảng children
--
INSERT INTO `children` (`id`,`name`,`id_user_dady`,`id_user_information`,`sex`,`note`) VALUES
(NULL,'TRƯƠNG VĂN TÀI',1,2,1,''),
(NULL,'TRƯƠNG THỊ HƯỜNG',1,NULL,0,''),
(NULL,'TRƯƠNG VĂN LỰC',2,3,1,''),
(NULL,'TRƯƠNG VĂN LƯỢNG',2,4,1,''),
(NULL,'TRƯƠNG VĂN SỨC',3,5,1,''),
(NULL,'TRƯƠNG VĂN KHỎE',3,6,1,''),
(NULL,'TRƯƠNG VĂN PHIÊN',3,7,1,''),
(NULL,'TRƯƠNG THỊ KHOA',3,NULL,0,''),
(NULL,'TRƯƠNG THỊ TOÁN',3,NULL,0,''),
(NULL,'TRƯƠNG THỊ ĐÔNG',3,NULL,0,''),
(NULL,'TRƯƠNG VĂN ĐOẠN',3,NULL,0,''),
(NULL,'TRƯƠNG VĂN LANG',4,8,1,''),
(NULL,'TRƯƠNG VĂN DÃN',4,NULL,1,''),
(NULL,'TRƯƠNG VĂN LẼO',4,NULL,1,''),
(NULL,'TRƯƠNG VĂN CHƯ',4,9,1,''),
(NULL,'TRƯƠNG THỊ LOAN',4,NULL,0,''),
(NULL,'TRƯƠNG THỊ NGHỊ',4,NULL,0,''),
(NULL,'TRƯƠNG THỊ ĐÀM',4,NULL,0,''),
(NULL,'TRƯƠNG THỊ TIẾU',4,NULL,0,''),
(NULL,'TRƯƠNG THỊ BÉ',4,NULL,0,''),
(NULL,'TRƯƠNG THỊ VIỄN',4,NULL,0,'');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
