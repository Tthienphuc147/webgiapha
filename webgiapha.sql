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
-- Cấu trúc bảng cho bảng `husband`
--
DROP TABLE IF EXISTS `husband`;
CREATE TABLE `husband` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `birthday` date,
  `dayavoided` date,
  `note` text,
  `id_branch` int(11) NOT NULL,
  `id_account` int(11)
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

--
-- Cấu trúc bảng cho bảng `wife`
--
DROP TABLE IF EXISTS `tintuc`;
CREATE TABLE `tintuc` (
  `id` int(11) NOT NULL,
  `tieude` text NOT NULL,
  `tomtat` text NOT NULL,
  `anhgioithieu` text NOT NULL,
  `noidung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `role` text NOT NULL
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
ALTER TABLE `husband`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wife`
--
ALTER TABLE `wife`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `account`
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
-- AUTO_INCREMENT cho bảng `husband`
--
ALTER TABLE `husband`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wife`
--
ALTER TABLE `wife`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `tintuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `account`
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
INSERT INTO `account` (`id`,`username`, `password`,`role`) VALUES
(NULL,'nguyenvanhung','27062019','user'),
(NULL,'nguyenvantoc','23092019','user'),
(NULL,'nguyenvanluong','22082019','user'),
(NULL,'nguyenvanlung','26052019','user'),
(NULL,'nguyenvansu','02062019','user'),
(NULL,'nguyenvankhoa','27072019','admin');


INSERT INTO `husband` (`id`,`name`,`birthday`,`dayavoided`,`note`,`id_branch`,`id_account`) VALUES
(NULL,'NGUYỄN VĂN HƯNG',NULL,'2019-6-27','Mộ tại Vân Quật tư điền',1,1),
(NULL,'NGUYỄN VĂN TỘC',NULL,'2019-9-23','Mộ tại Vân Quật tư điền',2,2),
(NULL,'NGUYỄN VĂN LƯỚNG',NULL,'2019-8-22','Con trưởng ông Tài, mộ tại Quảng Đại tư thổ',3,3),
(NULL,'NGUYỄN VĂN LỪNG',NULL,'2019-5-26','Con thứ hai của ông Tài, mộ tại Quảng Đại công điền',4,4),
(NULL,'NGUYỄN VĂN SU',NULL,'2019-6-2','Con trưởng của Ông Lực, mộ tại Quảng Đại công điền',5,5),
(NULL,'NGUYỄN VĂN KHOA',NULL,'2019-7-27','Con thứ hai của Ông Lực, mộ tại Quảng Đại công điền',5,6),
(NULL,'NGUYỄN VĂN PHÚC',NULL,'2019-1-14','Con thứ ba đời nhỏ của Ông Lực, mộ tại Quảng Đại',5,NULL),
(NULL,'NGUYỄN VĂN LÂM',NULL,'2019-6-16','Con trưởng Ông Lượng, mộ tại Quảng Đại',6,NULL),
(NULL,'NGUYỄN VĂN CHỨA',NULL,'2019-7-4','Con thứ 4 của Ông Lượng, mộ tại Quảng Đại. Có cuốn gia phả ghi ông THƯ',6,NULL),
(NULL,'NGUYỄN VĂN ĐẠI',NULL,'2019-8-21','Con thứ hai của Ông Sức, mộ tại Quảng Đại',7,NULL),
(NULL,'NGUYỄN VĂN ĐÚNG',NULL,'2019-1-29','Con thứ hai của Ông Sức, mộ tại Quảng Đại',7,NULL),
(NULL,'NGUYỄN VĂN THU',NULL,'2019-3-17','Con thứ tư ông Khỏe, mộ tại Quảng Đại công điền',7,NULL),
(NULL,'NGUYỄN VĂN TRUNG',NULL,'2019-1-5','Con thứ năm của ông Khỏe, mộ tại Quảng Đại',7,NULL),
(NULL,'NGUYỄN VĂN TỬ',NULL,'2019-8-5','Con thứ nhất của ông Phiên, mộ tại Quảng Đại',7,NULL),
(NULL,'NGUYỄN VĂN ĐẠI',NULL,'2019-8-25','Con thứ ba đời nhỏ của Ông Phiên, mộ tại Quảng Đại. Thuộc chi đàng Ông Quế',7,NULL),
(NULL,'NGUYỄN VĂN LONG',NULL,'2019-12-29','Con thứ tư đời nhỏ của Ông Phiên, mộ tại Quảng Đại',7,NULL),
(NULL,'NGUYỄN VĂN THÂN',NULL,'2019-1-28','Con trưởng của ông Chư, mộ tại Muông Hạ',8,NULL);




--
-- dữ liệu bảng wife
--
INSERT INTO `wife` (`id`,`name`,`dayavoided`,`note`,`id_user`) VALUES
(NULL,'NGUYỄN THỊ NIÊN',NULL,NULL,1),
(NULL,'NGUYỄN THỊ LĂN','2019-8-2','Mộ tại Lang Châu tư điền',2),
(NULL,'VÕ THỊ LOI','2019-9-16','Người thôn Mỹ Xuyên Tây, mộ tại Lang Châu tư điền',3),
(NULL,'NGUYỄN THỊ PHIÊN',NULL,'Người quê Dưỡng Chơn',3),
(NULL,'NGUYỄN THỊ THÁI','2019-12-15','Người thôn Vân Quật, mộ tại Quảng Đại công điền.',4),
(NULL,'VÕ THỊ SANH',NULL,NULL,5),
(NULL,'CAO THỊ LỄ','2019-7-3','Người trong xã, mộ tại Quảng Đại công điền',6),
(NULL,'NGUYỄN THỊ AI','2019-1-27','Người Dưỡng Chơn, mộ tại Quảng Đại công điền',7),
(NULL,'HUỲNH THỊ NỞ','2019-1-26','Người Vân Quật, mộ tại Quảng Đại công điền',7),
(NULL,'TRẦN THỊ LÕI','2019-11-12','Người Vân Quật, mộ tại Quảng Đại công điền',8),
(NULL,'TRẦN THỊ HUYÊN','2019-4-4','Người trong xã, mộ tại Quảng Đại công điền',9),
(NULL,'NGUYỄN THỊ HỎI','2019-12-20','Người trong xã, mộ tại Quảng Đại công điền',10),
(NULL,'NGUYỄN THỊ TRÍ','2019-2-23','Người trong xã, mộ tại Quảng Đại công điền',11),
(NULL,'HUỲNH THỊ PHẦN','2019-10-15','Người trong xã, mộ tại Quảng Đại công điền',12),
(NULL,'NGUYỄN THỊ ĐẬU','2019-9-5','Người Dưỡng Chơn, mộ tại Quảng Đại công điền',12),
(NULL,'PHẠM THỊ HỞN','2019-2-18','Người trong xã, mộ tại Quảng Đại công điền',13),
(NULL,'TRẦN THỊ TRƯNG (Dy)',NULL,'Người Vân Quật, mộ tại Quảng Đại công điền',14),
(NULL,'NGUYỄN THỊ PHẤN',NULL,'Người Dưỡng Chơn, mộ tại Quảng Đại công điền',15),
(NULL,'NGUYỄN THỊ MỔI',NULL,NULL,16),
(NULL,'NGUYỄN THỊ LY',NULL,'Người Vân Quật, mộ tại Quảng Đại công điền',16),
(NULL,'NGUYỄN THỊ HÒA','2019-10-22','Mộ tại Quảng Đại công điền',17);
--
-- dữ liệu bảng children
--
INSERT INTO `children` (`id`,`name`,`id_user_dady`,`id_user_information`,`sex`,`note`) VALUES
(NULL,'NGUYỄN VĂN TỘC',1,2,1,''),
(NULL,'NGUYỄN THỊ HƯỜNG',1,-1,0,''),
(NULL,'NGUYỄN THỊ HƯỜN',1,-1,0,''),
(NULL,'NGUYỄN VĂN LƯỚNG',2,3,1,''),
(NULL,'NGUYỄN VĂN LỪNG',2,4,1,''),
(NULL,'NGUYỄN VĂN SU',3,5,1,''),
(NULL,'NGUYỄN VĂN KHOA',3,6,1,''),
(NULL,'NGUYỄN VĂN PHÚC',3,7,1,''),
(NULL,'NGUYỄN THỊ KHOA',3,-1,0,''),
(NULL,'NGUYỄN THỊ TOÁN',3,-1,0,''),
(NULL,'NGUYỄN THỊ ĐÔNG',3,-1,0,''),
(NULL,'NGUYỄN VĂN ĐOẠN',3,-1,0,''),
(NULL,'NGUYỄN VĂN LÂM',4,8,1,''),
(NULL,'NGUYỄN VĂN DÃN',4,-1,1,''),
(NULL,'NGUYỄN VĂN LẼO',4,-1,1,''),
(NULL,'NGUYỄN VĂN CHỨA',4,9,1,''),
(NULL,'NGUYỄN THỊ LOAN',4,-1,0,''),
(NULL,'NGUYỄN THỊ NGHỊ',4,-1,0,''),
(NULL,'NGUYỄN THỊ ĐÀM',4,-1,0,''),
(NULL,'NGUYỄN THỊ TIẾU',4,-1,0,''),
(NULL,'NGUYỄN THỊ BÉ',4,-1,0,''),
(NULL,'NGUYỄN THỊ VIỄN',4,-1,0,''),
(NULL,'NGUYỄN VĂN KHÁNH',5,-1,1,''),
(NULL,'NGUYỄN VĂN ĐẠI',5,10,1,''),
(NULL,'NGUYỄN VĂN ĐỂ ',5,-1,1,''),
(NULL,'NGUYỄN VĂN ĐÚNG',5,11,1,''),
(NULL,'NGUYỄN THỊ CANH',5,-1,0,''),
(NULL,'NGUYỄN THỊ ĐÀI',5,-1,0,''),
(NULL,'NGUYỄN THỊ ĐIỀU',5,-1,0,''),
(NULL,'NGUYỄN THỊ DẶNG',5,-1,0,''),
(NULL,'NGUYỄN VĂN NHẠT',6,-1,1,''),
(NULL,'NGUYỄN VĂN BỒI',6,-1,1,''),
(NULL,'NGUYỄN VĂN LẬP',6,-1,1,''),
(NULL,'NGUYỄN VĂN THU',6,12,1,''),
(NULL,'NGUYỄN THỊ TRỊ',6,-1,0,''),
(NULL,'NGUYỄN THỊ TÌNH',6,-1,0,''),
(NULL,' NGUYỄN THỊ THÂM',6,-1,0,''),
(NULL,'NGUYỄN THỊ DĨ',6,-1,0,''),
(NULL,'NGUYỄN VĂN TỬ',7,14,1,''),
(NULL,'NGUYỄN THỊ LẠI',7,-1,0,''),
(NULL,'NGUYỄN VĂN ĐẠI',7,15,1,''),
(NULL,'NGUYỄN VĂN LONG',7,16,1,''),
(NULL,'NGUYỄN THỊ NHƠN',7,-1,0,''),
(NULL,'NGUYỄN THỊ THUẬN',7,-1,0,''),
(NULL,'NGUYỄN THỊ TUẬN',7,-1,0,''),
(NULL,'NGUYỄN THỊ LUẬT',8,-1,0,''),
(NULL,'NGUYỄN THỊ LOAN',8,-1,0,''),
(NULL,'NGUYỄN VĂN THÂN',9,17,1,''),
(NULL,'NGUYỄN THỊ THIỆU',9,-1,0,''),
(NULL,'NGUYỄN THỊ TIỆM',9,-1,0,''),
(NULL,'NGUYỄN THỊ HẠT',9,-1,0,''),
(NULL,'NGUYỄN THỊ NHÀN',9,-1,0,''),
(NULL,'NGUYỄN THỊ LIÊM',9,-1,0,'');
;

INSERT INTO `tintuc`(`tieude`, `tomtat`, `anhgioithieu`, `noidung`)
VALUES
('Chủ tịch Hội đồng họ Nguyễn Việt Nam Nguyễn Văn Đoan người giương cao ngọn cờ đoàn kết, kết nối dòng tộc','Chủ tịch Hội đồng họ Nguyễn Việt Nam Nguyễn Văn Đoan nguyên là lãnh đạo cao cấp của Chính phủ nước Cộng hòa xã hội chủ nghĩa Việt Nam','/public/img/news1.jpg','                                <p dir="ltr" style="text-align:justify"><span style="font-size:16px">Chủ tịch Hội đồng họ Nguyễn Việt Nam Nguyễn Văn Đoan nguyên là lãnh đạo cao cấp của Chính phủ nước Cộng hòa xã hội chủ nghĩa Việt Nam, một vị lãnh đạo tài giỏi, có ý chí vững vàng, kiên định, phấn đấu hết mình cho đất nước, sau khi nghỉ hưu ông&nbsp;đã dành cả tâm sức, trí tuệ, tiền bạc cho cho sự kết nối và phát triển của dòng tộc.</span></p>

                                <p dir="ltr" style="text-align:justify"><span style="font-size:16px">Ngay từ những năm đầu thế kỷ 21, khi đang là Thứ trưởng Thường trực Bộ Kế hoạch và Đầu tư – Đại biểu Quốc hội nước Cộng hòa xã hội chủ nghĩa Việt Nam khóa XII –và kiêm nhiệm nhiều chức vụ khác trong Chính phủ: Phó chủ tịch phân Ban hợp tác Việt Nam – Lào - Ủy viên Hội đồng Quản lý Ngân hàng Phát triển Việt Nam – Thành viên Ban chỉ đạo nhà nước về Du lịch – Giữa bộn bề công việc Chủ tịch Nguyễn Văn Đoan vẫn trăn trở tìm hiểu về dòng họ, ước nguyện kết nối&nbsp;bà con họ Nguyễn trên cả nước hướng về cội nguồn, đoàn kết, chung vai góp sức xây dựng và phát triển dòng họ.&nbsp;</span></p>

                                <p dir="ltr" style="text-align:center"><span style="font-size:16px"><img src="https://lh6.googleusercontent.com/WCKLvSrP6SxV-BgfVlOrVsfY-MgOwZpzzUDTAZwGFzNvNbD2oc7V2BJCvldtZ1Pil1kg-jGLcMAiSwFua5LVlo9JuJ1pSKeAzMSGagKFcRGPS__MDEfLOw3axv9GNLFRGq3zuGJnRI-fwM3BIg" style="height:411px; width:616px"></span></p>

                                <p style="text-align:justify"><span style="font-size:16px">Trải qua bao tháng năm phấn đấu vươn lên trong công tác đến khi nghỉ hưu, đáng lẽ như bao người khác Chủ tịch Nguyễn Văn Đoan sẽ vui vầy cùng cháu con, thư thái với vườn hoa cây cảnh, sống an vui lúc tuổi về già, xong trong tâm thức của một người có ý tưởng lớn, nhìn xa trông rộng, sớm nhận thấy ước nguyện của cộng đồng bà con anh em trong dòng họ đau đáu một nỗi niềm muốn tìm về cội nguồn, ông&nbsp;đã không quản vất vả gian lao, xuôi Nam ngược Bắc, bỏ bao công sức, tiền của để tìm hiểu, kết nối, đặt nền tảng cho một Hội đồng Lâm thời, đặt nền móng ngôi nhà chung cho dòng họ Nguyễn Việt Nam. Đằng đẵng gần 10 năm tìm hiểu, kết nối, ngày 21.4.2013 Bác đã cùng các thành viên trong Hội đồng Lâm thời tổ chức Đại hội Đại biểu họ Nguyễn Việt Nam, chính thức thành lập Hội đồng họ Nguyễn Việt Nam. Đại hội đã thành công rực rỡ trong sự hoan hỉ của bà con, anh em họ Nguyễn từ khắp mọi miền của Tổ quốc. Tại Đại hội này Bác đã lãnh nhận nhiệm vụ thiêng liêng và cao cả: Chủ tịch Hội đồng họ Nguyễn Việt Nam, giương cao ngọn lửa linh thiêng của Tổ tiên kết nối&nbsp;bà con, anh em từ khắp các chi tộc, vùng miền hướng về nguồn cội.</span></p>

                                <p dir="ltr" style="text-align:justify"><span style="font-size:16px">Để có được một gia đình chung cho bà con đồng tộc tìm về, nhận nhau là anh em một nhà, đoàn kết, thương yêu, giúp đỡ nhau vươn lên trong cuộc sống, những người con mang dòng họ Nguyễn trên đất Việt thân thương xin được chân thành cảm ơn Chủ tịch Nguyễn Văn Đoan, người đã sáng lập&nbsp; Hội đồng họ Nguyễn Việt Nam, đưa lịch sử dòng họ Nguyễn sang một trang sử mới: lần đầu tiên đồng tộc họ Nguyễn Việt Nam trên cả nước kết nối về một cội sau hàng ngàn năm hình thành và phát triển.</span></p>

                                <p style="text-align:justify"><span style="font-size:16px">Tôi được gặp Chủ tịch Nguyễn Văn Đoan trong dịp Đại hội Đại biểu họ Nguyễn Việt Nam lần thứ nhất tại Hà Nội, trong trang phục giản dị, khiêm tốn với sắc thái điềm đạm, gần gũi, ân tình. Tiếp xúc với Bác một vài lần mới thấy hết những đức tính&nbsp; cao quý của một người lãnh đạo: Cẩn trọng mà quyết đoán, kiên trì, khôn khéo. Tính cách hòa đồng, dân chủ, chấp nhận vất vả, khó khăn, hết lòng vì một mục tiêu đoàn kết, phát triển dòng tộc và nổi bật ở Bác trên hết chính là đạo đức nhân Ngọc, gần gũi, thấu hiểu, tin yêu mọi người, lấy sự đoàn kết, yêu thương làm kim chỉ nam cho mọi hoạt động vì dòng họ.</span></p>

                                <p dir="ltr" style="text-align:justify"><span style="font-size:16px">Tại Đại hội Đại biểu lần thứ nhất (2013 – 2016), Chủ tịch Nguyễn Văn Đoan đã ra những quyết định sáng suốt, đúng đắn, khẳng định Tâm và Tầm của một người lãnh đạo hết lòng vì dòng họ:</span></p>

                                <p dir="ltr" style="text-align:justify"><span style="font-size:16px">- Kết nối những người họ Nguyễn Việt Nam ở trong nước và ở nước ngoài, không phân biệt giàu nghèo, tầng lớp, chính trị, tôn giáo, không phân biệt vùng-miền, dân tộc trong cộng đồng họ Nguyễn tại Việt Nam.</span></p>

                                <p dir="ltr" style="text-align:justify"><span style="font-size:16px">- Đoàn kết xây dựng một dòng họ lớn mạnh và phát triển: Hỗ trợ, giúp đỡ những gia đình, cá nhân gặp hoàn cảnh khó khăn, hoạn nạn. Động viên, khuyến khích thế hệ trẻ phấn đấu vươn lên trong học tập, công tác, lao động. Liên kết và tương hỗ trong sản xuất kinh doanh. Quan tâm chăm sóc người cao tuổi…</span></p>

                                <p dir="ltr" style="text-align:justify"><span style="font-size:16px">- Tìm mua đất và xây dựng nhà thờ để phụng thờ Tiên tổ, hình thành ngôi nhà chung của dòng tộc.</span></p>

                                <p dir="ltr" style="text-align:justify"><span style="font-size:16px">Những quyết định trên đã đáp ứng đúng tâm tư, nguyện vọng của bà con,&nbsp;</span></p>

                                <p dir="ltr" style="text-align:justify"><span style="font-size:16px">anh chị em họ Nguyễn Việt nam trên cả nước, và nhận được sự ủng hộ nhiệt tình của các thành viên tâm huyết trong Hội đồng, tạo nên một sự tin tưởng trong dòng họ, có sức hút tới mọi chi, tộc, cá nhân mang dòng máu họ Nguyễn&nbsp; trong nước và ở nước ngoài.</span></p>

                                <p dir="ltr" style="text-align:justify"><span style="font-size:16px">Quyết định mua đất và xây dựng nhà thờ họ Nguyễn Việt Nam là một quyết định mang tính then chốt, tác động mạnh mẽ đến các mục đích hoạt động khác của Hội đồng dòng họ.</span></p>

                                <p dir="ltr" style="text-align:justify"><span style="font-size:16px">&nbsp;Việc nghiên cứu, lựa chọn, và đấu giá khu đất 6.742m2 tại thị trấn Thiên Tôn, huyện Hoa Lư,&nbsp;tỉnh Ninh Bình đã thành công như một kỳ tích. Một khu đất mà nhiều nhà nghiên cứu phong thủy, long mạch đều đánh giá là rất tốt, phù hợp với việc xây dựng nhà thờ: tốt về phong thủy, đẹp về cảnh quan, thuận về giao thông, hài hòa với khu vực dân cư. Và có một điều mà không phải ai cũng biết: phía sau những quyết định chuẩn xác trên là những chuyến đi ngược xuôi khắp các vùng miền, là sự suy tư, trăn trở mất ăn, mất ngủ của vị Chủ tịch. Từ việc gặp gỡ tham khảo ý kiến các Giáo sư, Tiến sĩ, các nhà nghiên cứu Ngọc hóa, lịch sử, các nhà phong thủy, tâm linh..., tham khảo ý kiến của bà con dòng họ, đến việc liên tục tổ chức các cuộc hội thảo, hội nghị nhằm tìm ra đường hướng phù hợp nhất. Giữa nhiều luồng ý kiến phân tích đánh giá, trên nhiều quan điểm khác nhau, việc xem xét đi đến một quyết định phù hợp là không hề đơn giản. Xong với bản tính kiên trì, cẩn trọng, dân chủ cùng với một quyết tâm son sắt Chủ tịch Nguyễn Văn Đoan đã&nbsp; sáng suốt đưa ra những quyết định hợp lòng người.</span></p>

                                <p dir="ltr" style="text-align:center"><span style="font-size:16px"><img src="https://lh6.googleusercontent.com/Wtw1mUSgOXStJ-rDZ3f_-8l4PpTjuVlz5drVMpY2Njv15sZgAK5oPAi89w7mLeeeqcNI5eR5vqxyu4DxCXi97CYm8l-cooe82VI7RLNcsL1VJTHuOiiHtJ-dreGmuLe-eP8i6Ms0-15x9bDJiA" style="height:411px; width:615px"></span></p>

                                <p style="text-align:justify"><span style="font-size:16px">Nhiệt huyết của chủ tịch Nguyễn Văn Đoan đã nhận được sự đồng thuận sâu sắc của Chủ tịch nước Nguyễn Tấn Sang. Ngay khi còn đương nhiệm, Chủ tịch nước đã nhiều lần gặp gỡ chủ tịch Hội đồng họ Nguyễn Việt Nam, trao đổi tâm tư, tình cảm như người thân trong gia đình, góp phần định ra đường hướng, vun đắp những ý tưởng và củng cố quyết tâm cho Chủ tịch hội đồng họ Nguyễn Văn Đoan vững tâm dấn bước trên con đường vì dòng tộc. Ngày 13/11/2016, tại Đại hội Đại biểu họ Nguyễn Việt Nam lần thứ hai ở Ninh Bình, nguyên Chủ tịch nước Nguyễn Tấn Sang đã về dự Đại hội. Sự có mặt của Bác Nguyễn Tấn Sang đã một lần nữa khẳng định sự nhất quán trong công tác tổ chức hoạt động của dòng họ, khẳng định hướng đi đúng đắn của Chủ tịch Hội đồng họ Nguyễn Việt Nam. Trong lời phát biểu của mình tại Đại hội, &nbsp;Chủ tịch nước Nguyễn Tấn Sang nói: “…Nếu mỗi dòng họ đều có một tổ chức xây dựng khối đoàn kết và phát triển dòng họ trên cả nước như ông Nguyễn Văn Đoan đang làm thì đã góp phần rất lớn cùng Đảng – Chính phủ xây dựng thành công khối đại đoàn kết dân tộc, vượt qua mọi khó khăn thách thức, dựng xây đất nước và bảo vệ toàn vẹn lãnh thổ thiêng liêng của Tổ quốc. Một công việc có ý nghĩa lịch sử to lớn, không chỉ là lịch sử của dòng họ mà còn là dấu ấn trong lịch sử của đất nước…”.&nbsp;&nbsp;</span></p>

                                <p dir="ltr" style="text-align:justify"><span style="font-size:16px">Sau Đại hội Đại biểu họ Nguyễn toàn quốc lần thứ hai, ngày 11/6/2017 Hội đồng họ Nguyễn Việt Nam đã tưng bừng tổ chức Lễ khởi công xây dựng nhà thờ với gần 2000 đại biểu đại diện cho 600 chi tộc họ Nguyễn trên cả nước về tham dự. Vị thế và nhân cách đạo đức của Chủ tịch Nguyễn Văn Đoan đã làm nên một kỳ tích hiếm có: lần đầu tiên trong một lễ khởi công xây dựng nhà thờ họ được Chủ tịch nước gửi lẵng hoa chúc mừng và Nguyên&nbsp;Chủ tịch nước cùng Ủy viên Ban chấp hành Trung ương Đảng, Bí thư Tỉnh ủy và các lãnh đạo cao cấp về tham dự.</span></p>

                                <p style="text-align:justify"><span style="font-size:16px">Qua 6 năm chính thức đi vào hoạt động, dưới sự chỉ đạo của Chủ tịch Nguyễn Văn Đoan, Hội đồng họ Nguyễn Việt Nam đã kết nối được hàng ngàn chi, tộc với gần 1 triệu người họ Nguyễn trên mọi vùng miền Tổ quốc, thành lập nhiều Hội đồng họ cấp tỉnh, thành phố, cấp quận huyện từ Bắc vào Nam. Thành lập một hệ thống các Câu lạc bộ Doanh nhân họ Nguyễn làm lực lượng nòng cốt phát triển kinh tế cho dòng tộc và đất nước. Các hoạt động tương thân tương ái, hỗ trợ nghèo đói, khó khăn và động viên khen thưởng học sinh, khuyến khích các tài năng trẻ đã trở thành hoạt động thường xuyên, sâu rộng đến nhiều chi tộc. Công tác đền ơn đáp nghĩa, chăm sóc người cao tuổi đã được quan tâm và hỗ trợ kịp thời. Các hoạt động tôn vinh, tưởng niệm Danh nhân đất nước là người họ Nguyễn và khơi dậy lòng tự hào, giáo dục đạo đức truyền thống cho thế hệ trẻ được duy trì và mở rộng. Đặc biệt, việc tổ chức vận động cung tiến và xây dựng khu tâm linh nhà thờ họ Nguyễn Việt Nam tại thị trấn Thiên Tôn, Cố đô Hoa Lư, tỉnh Ninh Bình đã đạt được kết quả rất to lớn. Với số vốn ban đầu trong quỹ chỉ&nbsp;có&nbsp; hơn 2.000.000đ, bằng ý chí quyết tâm và niềm tin vào tấm lòng bà con dòng họ, Chủ tịch Nguyễn Văn Đoan vẫn quyết định cho triển khai xây dựng nhà thờ. Công cuộc xây dựng nhà thờ trải ra với muôn vàn góc cạnh: tổ chức thiết kế, tham khảo các công trình, kêu gọi đóng góp, tổ chức xây dựng v.v… không việc nào không có vất vả khó khăn. Ở bất cứ việc gì Chủ tịch cũng lăn lóc cùng anh em nắm bắt, giải quyết. Trong đó việc mua gỗ làm nhà thờ có tính chất quyết định tiến độ, gần một năm sau lễ khởi công, quỹ xây dựng vẫn chưa đủ tiền mua gỗ, giá gỗ đẩy lên từng ngày, chủ tịch Nguyễn Văn Đoan ngày đêm trăn trở, tiền đóng góp của bà con gửi về it một, chỉ chọm chẹm đủ cho tiền xây móng tường bao và móng nhà thờ, không thể dồn đủ để lấy gỗ. Với quyết tâm phải nhanh chóng mua được gỗ, không để bị trượt giá thêm, Chủ tịch Nguyễn Văn Đoan đã bán mảnh đất nơi quê, dồn dải cả sổ tiết kiệm của hai vợ chồng được tròn 1 tỷ góp vào tiền mua gỗ. Giáp tết 2017 thiếu tiền vận chuyển gỗ về nhà thờ, Bác lại phải mượn sổ tiết kiệm của các con, lóc cóc ra ngân hàng rút tiền trả cho khách.&nbsp; Chỉ mới hơn 1 năm kể từ ngày chính thức đi vào xây dựng, đến nay Hội đồng họ Nguyễn Việt Nam đã nhận được gần 20 tỷ đồng và hàng ngàn công thiện nguyện tham gia tổ chức, quản lý. Công cuộc xây dựng nhà thờ đã và đang đi vào các bước hoàn chỉnh, tiếp tục triển khai xây dựng các hạng mục phụ trợ. Chắc chắn trong vòng không đầy một năm nữa, với sự nhiệt thành đóng góp ủng hộ tiền của công sức của bà con, anh chị em dâu rể họ Nguyễn và sự chỉ đạo sát sao, kiên định của Chủ tịch Nguyễn Văn Đoan, ngày khánh thành nhà thờ sẽ diễn ra trong một không khí trang nghiêm, thành kính và ngập tràn niềm hoan hỉ của bà con dòng họ cả nước về tham dự. Hoàn thành một kỳ tích mới: Là quốc tộc đầu tiên trên đất nước Việt Nam chung sức chung lòng mua đất và xây dựng nhà thờ.</span></p>

                                <p dir="ltr" style="text-align:justify"><span style="font-size:16px">Gặp gỡ những nhân sĩ, trí thức, những vị lão thành cách mạng hay những quan chức cao cấp của Đảng và Chính quyền tôi đều nhận được những ý kiến đánh giá rất công tâm: Nếu không có Chủ tịch Nguyễn Văn Đoan, họ Nguyễn Việt Nam khó lòng đạt được những kết quả vượt trội trong việc xây dựng khối đoàn kết đồng tộc, duy trì mục tiêu, đường lối hoạt động và xây dựng thành công khu tâm linh nhà thờ họ Nguyễn Việt Nam.</span></p>

                                <p dir="ltr" style="text-align:justify"><span style="font-size:16px">Những ai đã từng tham dự công việc của dòng họ, dù chỉ là một chi họ nhỏ trong lũy tre xanh cũng đều nhận thức được rằng: làm việc họ rất khó, chín người mười ý. Làm việc cho đồng tộc cả nước lại càng khó trăm lần. Không có bất cứ một chế tài nào bắt buộc, không có một chút thu nhập, thụ hưởng từ tổ chức. Chỉ có một tấm lòng thiện nguyện, một đạo đức trong sáng và một quyết tâm kiên định cao độ mới có thể hoàn thành được ước nguyện vì dòng tộc. Trong một lần ăn cơm cùng Chủ tịch sau kỳ Đại hội lần thứ 2, tôi buột miệng nói với Bác: “Em chịu Bác, nếu là em có lẽ em đã xin nghỉ rồi”, bởi tôi thấy việc họ thực sự khó khăn, phức tạp, không chỉ vất vả về thân xác, hao tổn về trí lực, tốn kém về kinh tế mà không khéo vẫn bị điều tiếng. Xong tôi cũng nhận thức được rằng một Hội đồng dòng tộc mới thành lập được 3 năm đang đi vào giai đoạn ổn định, các tiêu chí tổ chức, hoạt động phát triển đúng hướng, nếu có sự thay đổi người cầm lái, con thuyền của dòng họ có thể sẽ chuyển sang một hướng khác. Lần đó Bác đã thủ thỉ nói với tôi: “Chúng mình đã từng trải qua đời lính, muốn đạt được nguyện ước lớn thì phải kiên định và cố gắng em ạ”.&nbsp;</span></p>

                                <p dir="ltr" style="text-align:center"><span style="font-size:16px"><img src="https://lh3.googleusercontent.com/X7vz9D-gWb7yRGNM0vcH09KUeltGKMp9w_fj2EK77KqM7NACf7eTdFxL1k2MxmdFjjpA7IS4gQO7lwnbytvuZwXAHwPvt7IH4LKZkyHingRqVpu_2n0rrTENxNNfFrPk0JKYkL-tyjoRig4DYQ" style="height:474px; width:632px"></span></p>

                                <p style="text-align:justify"><span style="font-size:16px">Qủa thực, Chủ tịch Nguyễn Văn Đoan không chỉ là một cán bộ cao cấp của Chính phủ nước Cộng hòa xã hội chủ nghĩa Việt Nam, một vị lãnh đạo tài giỏi mà còn là một con người có ý chí vững vàng, kiên định phấn đấu hết mình cho mục đích vì dòng họ. Bác nói năng nhẹ nhàng, từ tốn. Phong thái ung dung, tự tại. Trong Bác kết hợp nhuần nhuyễn những nét cao đẹp của truyền thống Ngọc hóa&nbsp; với đạo đức nhân cách của người Việt, có sức thu hút và lan tỏa mạnh mẽ tới tất cả mọi người. Có lần vị Chủ tịch Hội đồng những dòng họ Việt Nam nói vui: “Chủ tịch Nguyễn Văn Đoan là người hòa giải thì đúng hơn là chủ tịch…”. Một nét chung rất đặc trưng của người họ Nguyễn là tính cương trực, nóng nảy. Nhưng với Chủ tịch Nguyễn Văn Đoan chưa ai thấy Bác nóng nảy, quát nạt hay tỏ thái độ khó chịu, khinh miệt. Trong dòng họ cũng như trong một xã hội thu nhỏ, có những người lấy đồng tiền để làm lăng kính soi xét phẩm giá con người, hoặc dùng đồng tiền để hướng mọi việc theo ý cá nhân, Chủ tịch Nguyễn Văn Đoan rất không vừa ý với cách sống, cách nghĩ như vậy, song không khi nào thấy Bác biểu hiện thái độ coi thường hay khinh ghét. Bình tĩnh, tự tin, Bác ôn tồn nhắc nhở, kiên trì động viên, hướng tấm lòng của họ về với đồng tộc, nếu không đạt mục đích Bác vẫn không trách mắng hay có lời nói, bình luận về họ, tôn trọng tư cách và lối sống của mỗi người. Đối với&nbsp; mọi người, Chủ tịch Nguyễn Văn Đoan là một người trong gia đình, thân thiết như cha với con, như anh với em, gần gũi, ân cần, thương yêu như ruột thịt.</span></p>

                                <p dir="ltr" style="text-align:justify"><span style="font-size:16px">Là một Thạc sỹ Kinh tế - Ủy viên Hội đồng Quản lý Ngân hàng Phát triển Việt Nam – không phải Chủ tịch Nguyễn Văn Đoan không có trình độ về quản lý kinh tế, nhất là kinh tế có từ nguồn đóng góp của bà con dòng họ, xong Bác tâm niệm rằng đối với các thành viên trong tổ chức dòng họ phải đặt sự tin tưởng và lòng tin yêu lên trên tất cả. Mặt khác Bác luôn là người gương mẫu đi đầu trong việc đóng góp kinh phí cho mọi hoạt động. Theo số liệu Ban tài chính kinh tế của Hội đồng ghi chép, kể từ khi tham gia hoạt động dòng tộc đến nay, mỗi lần một ít, Bác Nguyễn Văn Đoan đã đóng góp hơn 2 tỷ đồng.&nbsp;</span></p>

                                <p dir="ltr" style="text-align:justify"><span style="font-size:16px">Tôi nhớ trong một Hội nghị tại Hà Nội chủ tịch đã quyết định: Các chi phí sinh hoạt, hội họp, ăn uống không chi vào tiền đóng góp xây dựng của bà con và kêu gọi các tập thể, cá nhân tài trợ trực tiếp cho các chi phí này. Ngay sau Hội nghị Bác gương mẫu tài trợ luôn mọi chi phí và mời các thành viên về dự họp dùng bữa cơm thân mật tại phòng ăn của Trung tâm Hội nghị. Bác ăn uống cũng rất bình dân, đạm bạc. Trong những chuyến Bác về các tỉnh thành hoặc vùng nông thôn gặp gỡ bà con họ Nguyễn, anh chị em lo cho sức khỏe của Bác nên thường chọn những nhà hàng, khách sạn cao cấp cho Bác nghỉ, Bác đề nghị mọi người tìm những cơ sở của người họ Nguyễn hoặc những nhà hàng bình dân để đỡ tốn chi phí của anh em. Những năm 2016 – 2019, về dự hội nghị hoặc có công việc ở Ninh Bình, Bác thường về nghỉ tại công trình xây dựng nhà thờ, ngay từ khi nơi ăn nghỉ ban đầu chỉ là một thùng Contener cũ ngăn đôi. Bác tâm sự: “Về đến đất nhà thờ là tự nhiên thấy bình yên. Dù có khó khăn, thiếu thốn nhưng vẫn thấy ấm cúng như ở nhà mình…”. Chúng tôi hiểu rằng đó chính là tấm lòng với cội nguồn, là sự giản dị, tiết kiệm của Bác.&nbsp;</span></p>

                                <p dir="ltr" style="text-align:justify"><span style="font-size:16px">Chủ tịch Hội đồng họ Nguyễn Việt Nam Nguyễn Văn Đoan là một biểu tượng cao đẹp của người Đảng viên cần kiệm, liêm chính, một lãnh đạo có Tâm có tầm, đầy nhiệt huyết và nghị lực, thanh cao mà giản dị, có đạo đức chân chính luôn hướng tới chân thiện mỹ, gần gũi thân thiết gắn bó với mọi người, hết lòng vì đất nước và dòng họ. Một tấm gương mẫu mực về tình thương yêu đoàn kết và lòng vị tha nhân ái cho mọi người và cháu con dòng tộc muôn đời ngưỡng mộ.&nbsp;</span></p>

                                <p style="text-align:justify">&nbsp;</p>

                                <p dir="ltr" style="text-align:center"><em><span style="font-size:16px">Ninh Bình, ngày 16 tháng 10 năm 2019</span></em></p>

                                <p style="text-align:center"><em><span style="font-size:16px">&nbsp; Nguyễn Văn Anh</span></em></p>'),
                                ('Hội nghị Báo cáo công tác xây dựng nhà thờ họ Nguyễn Việt Nam','Ngày 21 tháng 9 năm 2019 tại làng Đa Giá, thị trấn Thiên Tôn, huyện Hoa Lư, Ninh Bình hội đồng họ Nguyễn Việt Nam tổ chức hội nghị báo cáo công tác xây dựng nhà thờ họ Nguyễn Việt Nam.','/public/img/news3.jpg','<div id="contentDetail"><p style="text-align:center"><br>
<img alt="" src="http://truongtoc.com.vn/public/uploads/images/tin_hoat_dong/ha001.jpg" style="height:493px; width:877px"></p>

<p style="text-align:center"><em><span style="font-size:12.0pt"><span style="color:#222222">Toàn cảnh nhà thờ họ Nguyễn Việt Nam đang xây dựng</span></span></em></p>

<p style="text-align:justify">&nbsp; &nbsp; &nbsp;<span style="font-size:12.0pt"><span style="color:#222222">Ngày 21 tháng 9 năm 2019 tại làng Đa Giá, thị trấn Thiên Tôn, huyện Hoa Lư, Ninh Bình hội đồng họ Nguyễn Việt Nam tổ chức hội nghị báo cáo công tác xây dựng nhà thờ họ Nguyễn Việt Nam.</span></span></p>

<p style="text-align:justify"><span style="font-size:12.0pt"><span style="color:#222222">&nbsp; &nbsp; &nbsp;Làng Đa Giá là một ngôi làng cổ có nhiều dòng họ nổi tiếng với lịch sử lâu đời, đây là ngôi làng còn lại trong số ít các ngôi làng truyền thống tiêu biểu cho đồng bằng bắc bộ, tại nơi đây mật độ các công trình Ngọc hóa tâm linh như đền, chùa,miếu, phủ, dày đặc mang đậm nét của cố đô Hoa Lư, nằm cạnh quốc lộ 1 A cổng tam quan bề thế dẫn bước vào làng bên cạnh có ngọn núi thiêng hình thanh gươm cắm xuống ngọn núi được gọi là núi Đá Gươm quanh ngôi làng cổ có rất nhiều núi đá mang hình dáng của voi chiến, giáp sắt, vũ khí... vị trí các ngọn núi bao bọc quanh làng tạo nên thế đất tươi tốt an lành, như những tấm bình phong bao bọc che chở cho ngôi làng.</span></span></p>

<p style="text-align:center"><em><img alt="" src="http://truongtoc.com.vn/public/uploads/images/tin_hoat_dong/ha002.jpeg" style="height:561px; width:1000px"></em></p>

<p style="text-align:center"><em><span style="font-size:12.0pt"><span style="color:#222222">Cổng tam quan vào làng Đa Giá và cũng là cổng vào nhà thờ họ Nguyễn Việt Nam</span></span></em></p>

<p style="text-align:justify">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style="font-size:12.0pt"><span style="color:#222222">Thời tiết miền bắc vào dịp cuối thu mang lại những cảm xúc thật ấm áp, là mùa đẹp nhất trong năm cũng là dịp người họ Nguyễn Việt Nam tụ hội tại nhà thờ để nghe báo cáo về công tác xây dựng nhà thờ. Hội nghị được vinh dự đón tiếp nguyên phó thủ tướng Nguyễn Vĩnh Trọng cùng phu nhân đã không quản ngại đường xa về dự hội nghị và tận mắt ngắm công trình tâm linh mang sứ mệnh thiêng liêng&nbsp;của người họ Nguyễn Việt Nam.</span></span></p>

<p style="text-align:center"><em><img alt="" src="http://truongtoc.com.vn/public/uploads/images/tin_hoat_dong/ha003.jpg" style="height:720px; width:960px"></em></p>

<p style="text-align:center"><em><span style="font-size:12.0pt"><span style="color:#222222">Hội nghỉ tổ chức trong nhà thờ họ Nguyễn Việt Nam.</span></span></em></p>

<p style="text-align:justify">&nbsp; &nbsp; &nbsp;&nbsp;<span style="font-size:12.0pt"><span style="color:#222222">Đoàn đại biểu hội đồng họ Nguyễn do ông Nguyễn Văn Đoan nguyên thứ trưởng thường trực bộ kế hoạch đầu tư, chủ tịch hội đồng họ Nguyễn Việt Nam làm trưởng đoàn cùng các ông, bà trong ban lãnh đạo hội đồng.</span></span></p>

<p style="text-align:justify"><span style="font-size:12.0pt"><span style="color:#222222">Đoàn đại biểu hội đồng họ Nguyễn Thái Nguyên do ông Nguyễn Đăng Định chủ tịch làm trưởng đoàn cùng các thành viên.</span></span></p>

<p style="text-align:justify"><span style="font-size:12.0pt"><span style="color:#222222">Đoàn đại biểu họ Nguyễn Hải Phòng do bà Nguyễn Thị Thu Hằng phó chủ tịch làm trưởng đoàn cùng các thành viên.</span></span></p>

<p style="text-align:justify"><span style="font-size:12.0pt"><span style="color:#222222">Đoàn đại biểu họ Nguyễn Hưng Yên do ông Nguyễn Minh Hải chủ tịch làm trưởng đoàn cùng các thành viên.</span></span></p>

<p style="text-align:justify"><span style="font-size:12.0pt"><span style="color:#222222">Đoàn đại biểu họ Nguyễn Hà Nam Ninh với sự tham dự của ông Nguyễn Văn Hiến phó chủ tịch UBND tỉnh Hà Nam và ông Nguyễn Đức Lộc nguyên trưởng ban tổ chức tỉnh ủy người có công rất to lớn trong công tác đàm phán mua đất xây dựng nhà thờ họ Nguyễn Việt Nam, đoàn do ông Nguyễn Tô Tân chủ tịch làm trưởng đoàn cùng các thành viên.</span></span></p>

<p style="text-align:justify"><span style="font-size:12.0pt"><span style="color:#222222">Đoàn đại biểu họ Nguyễn Thanh Hóa do ông Nguyễn Thanh Tùng phó chủ tịch hội đồng họ Nguyễn Việt Nam, chủ tịch hội đồng họ Nguyễn Thanh Hóa làm trưởng đoàn cùng các thành viên.</span></span></p>

<p style="text-align:justify"><span style="font-size:12.0pt"><span style="color:#222222">Đoàn đại biểu họ Nguyễn Nghệ Tĩnh do ông Nguyễn Sỹ Truy chủ tịch cùng anh hùng lao động thời kỳ đổi mới, trưởng ban xây dựng nhà thờ họ Nguyễn Việt Nam ông Nguyễn Văn Hiền&nbsp;và&nbsp;các thành viên đến dự.</span></span></p>

<p style="text-align:justify"><span style="font-size:12.0pt"><span style="color:#222222">Đoàn đại biểu hội đồng lâm thời họ Nguyễn thành phố Hồ Chí Minh do Thiếu tướng công an nhân dân, Giáo sư, Tiến sỹ, Nhà giáo nhân dân, nguyên ủy viên thường vụ đảng ủy, nguyên phó tổng cục trưởng tổng cục chính trị bộ công an, nguyên Giám đốc Học viên chính trị công an nhân dân làm trưởng đoàn cùng ông Nguyễn Duy Hải nguyên phó chủ tịch tỉnh Bến Tre, cùng các thành viên đến dự.</span></span></p>

<p style="text-align:center"><em><img alt="" src="http://truongtoc.com.vn/public/uploads/images/tin_hoat_dong/ha004.jpg" style="height:925px; width:1011px"></em></p>

<p style="text-align:center"><em><span style="font-size:12.0pt"><span style="color:#222222">Niềm vui của nguyên phó thủ tướng khi tận mắt thấy cơ ngơi của người họ Nguyễn.</span></span></em></p>

<p style="text-align:center"><em><img alt="" src="http://truongtoc.com.vn/public/uploads/images/tin_hoat_dong/ha005.jpg" style="height:720px; width:960px"></em></p>

<p style="text-align:center"><em><span style="font-size:12.0pt"><span style="color:#222222">Lễ khởi công xây dựng nhà thờ ngày 11 tháng 6 năm 2017</span></span></em></p>

<p style="text-align:center"><em><img alt="" src="http://truongtoc.com.vn/public/uploads/images/tin_hoat_dong/ha006.jpg" style="height:720px; width:960px"></em></p>

<p style="text-align:center"><em><span style="font-size:12.0pt"><span style="color:#222222">Lễ phạt mộc xây dựng nhà thờ ngày 11 tháng 2 năm 2018</span></span></em></p>

<p style="text-align:center"><em><img alt="" src="http://truongtoc.com.vn/public/uploads/images/tin_hoat_dong/ha007.jpg" style="height:750px; width:1000px"></em></p>

<p style="text-align:center"><em><span style="font-size:12.0pt"><span style="color:#222222">Hình ảnh những ngày đang thi công chuẩn bị cho lễ cất nóc ngày 30 tháng 12 năm 2019.</span></span></em></p>

<p style="text-align:justify">&nbsp; &nbsp; &nbsp;&nbsp;<span style="font-size:12.0pt"><span style="color:#222222">Thay mặt hội đồng họ Nguyễn Việt Nam báo cáo về công tác tài chính, bà Nguyễn Quỳnh Mai đọc nội dung thu chi và những khoản tài chính tiếp theo, do xây dựng nhà thờ bằng nguồn tài chính đóng góp của người họ Nguyễn cả nước và tâm đức của các doanh nhân, những người đã dành công sức, vật chất cho công tác xây dựng nhà thờ.</span></span></p>

<p style="text-align:center"><img alt="" src="http://truongtoc.com.vn/public/uploads/images/tin_hoat_dong/ha008.jpg" style="height:664px; width:1000px"></p>

<p style="text-align:justify"><span style="font-size:12.0pt"><span style="color:#222222">Ông Nguyễn Văn Đoan trân trọng cảm ơn nguyên phó thủ tướng và phu nhân dù tuổi cao sức yếu vẫn không quản&nbsp;đường xa xôi, dành tình cảm thân ái đến với bà con dòng tộc,&nbsp;chứng kiến ngôi nhà thờ đầu tiên của các dòng họ được xây dựng bằng công sức của toàn thể người họ Nguyễn Việt Nam. Ông Nguyễn Văn Đoan đọc báo cáo về công tác xây dựng về những khó khăn, thuận lợi, nói về khó khăn ông cũng trăn trở rất nhiều, là một công trình mang tầm cỡ quốc gia, một công trình để lại cho muôn đời sau. Để con cháu tự hào về cha ông, để những khoảng khắc hiện tại đi vào lịch sử, một di sản không thể đong đếm bằng công sức tiền bạc, để khách thập phương phải dừng lại trước một kiến trúc của những khối óc, của những tình cảm ghi nhớ công đức các bậc Tiên hiền</span></span></p>

<p style="text-align:center"><img alt="" src="http://truongtoc.com.vn/public/uploads/images/tin_hoat_dong/ha009.jpg" style="height:1064px; width:1600px"></p>

<p style="text-align:center"><span style="font-size:12.0pt"><span style="color:#222222"><em>Chủ tịch hội đồng họ Nguyễn Việt Nam nói về công tác xây dựng nhà thờ</em>.</span></span></p>

<p style="text-align:justify"><span style="font-size:12.0pt"><span style="color:#222222">Doanh nhân Nguyễn Thanh Tùng quận 1 thành phố Hồ Chí Minh chia sẻ tình cảm và tấm lòng người họ Nguyễn với công tác xây dựng nhà thờ.</span></span></p>

<p style="text-align:justify"><span style="font-size:12.0pt"><span style="color:#222222">Ông Nguyễn Quang Phúc chủ tịch hội đồng họ Nguyễn Quảng Bình phát biểu về cảm tưởng khi công trình nhà thờ đang sắp hoàn thiện và tấm lòng tưởng nhớ tới các bậc Tiên liệt hội đồng họ Nguyễn Quảng Bình sẽ kêu gọi sự đóng góp của bà con cho công tác xây dựng nhà thờ .</span></span></p>

<p style="text-align:justify"><span style="font-size:12.0pt"><span style="color:#222222">Ông Nguyễn Hạ họ Nguyễn Thanh Hóa là thành viên trong ban giám sát xây dựng đọc báo cáo về công tác thi công.</span></span></p>

<p style="text-align:justify"><span style="font-size:12.0pt"><span style="color:#222222">Ông Nguyễn Sỹ Truy chủ tịch hội đồng họ Nguyễn Nghệ Tĩnh đọc&nbsp;tham luận về công tác tổ chức và hoạt động của hội đồng Nghệ Tĩnh từ các đơn vị cấp xã, huyện... và đã kêu gọi đóng góp tích cực về tài chính cho công tác xây dựng nhà thờ, hội đồng họ Nguyễn Nghệ Tĩnh&nbsp;là điển hình của hoạt động việc họ trong các hội đồng địa phương.</span></span></p>

<p style="text-align:center"><img alt="" src="http://truongtoc.com.vn/public/uploads/images/tin_hoat_dong/ha0010.jpg" style="height:658px; width:1000px"></p>

<p style="text-align:center"><em><span style="font-size:12.0pt"><span style="color:#222222">Ông Nguyễn Sỹ Truy chủ tịch hội đồng Nghệ Tĩnh đọc báo cáo.</span></span></em></p>

<p style="text-align:justify">&nbsp; &nbsp; &nbsp;&nbsp;<span style="font-size:12.0pt"><span style="color:#222222">Ông Nguyễn Văn Hiền anh hùng lao động thời kỳ đổi mới trưởng ban xây dựng nhà thờ họ Nguyễn Việt Nam lên đọc báo cáo về công tác và tiến độ xây dựng nhà thờ, sắp xếp lại tổ chức cho phù hợp với công việc, để đảm bảo tiến độ xây dựng cần một khoản tài chính theo tính toán của ông và kêu gọi sự đóng góp kịp thời.</span></span></p>

<p style="text-align:center"><em><img alt="" src="http://truongtoc.com.vn/public/uploads/images/tin_hoat_dong/ha0011.jpg" style="height:1065px; width:1600px"></em></p>

<p style="text-align:center"><em><span style="font-size:12.0pt"><span style="color:#222222">Anh hùng lao động thời kỳ đổi mới, trưởng ban xây dựng nhà thờ họ Nguyễn Việt Nam.</span></span></em></p>

<p style="text-align:justify"><span style="font-size:12.0pt"><span style="color:#222222">Ông Nguyễn Đăng Định chủ tịch hội đồng họ Nguyễn Thái Nguyên phát biểu về tình cảm người Thái Nguyên với họ tộc mong muốn công cuộc xây dựng nhà thờ sớm hoàn thành.</span></span></p>

<p style="text-align:center"><img alt="" src="http://truongtoc.com.vn/public/uploads/images/tin_hoat_dong/ha0012.jpg" style="height:568px; width:758px"></p>

<p style="text-align:justify"><span style="font-size:12.0pt"><span style="color:#222222">Thiếu tướng Nguyễn Giang Long chủ tịch lâm thời hội đồng họ Nguyễn Thành phố Hồ Chí Minh, một tướng công an nổi tiếng với tính cách ăn to nói lớn, tính cách mạnh mẽ, thẳng thắn với quyết tâm cùng hội đồng họ Nguyễn Việt Nam thực hiện được điều mong ước của người họ Nguyễn có một nơi kết nối tình dòng tộc và cũng là ước nguyện của bao năm học tập, lao động cống hiến cho sự nghiệp bảo vệ xây dựng đất nước, để đến cuối đời người họ Nguyễn Việt Nam thấy lòng ấm áp khi hướng về ngôi nhà thờ chung.</span></span></p>

<p style="text-align:center"><em><img alt="" src="http://truongtoc.com.vn/public/uploads/images/tin_hoat_dong/ha0013.jpg" style="height:598px; width:1000px"></em></p>

<p style="text-align:center"><em><span style="font-size:12.0pt"><span style="color:#222222">Thiếu tướng Nguyễn Giang Long chủ tịch lâm thời họ Nguyễn TP Hồ Chí Minh.</span></span></em></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-size:12.0pt"><span style="color:#222222">Ông Nguyễn Hữu Thắng nguyên phó chủ tịch hội đồng họ Nguyễn Việt Nam chia sẻ những tình cảm khi chứng kiến nhà thờ đang ngày một uy nghi.</span></span></p>

<p style="text-align:center"><img alt="" src="http://truongtoc.com.vn/public/uploads/images/tin_hoat_dong/ha0014.jpg" style="height:1200px; width:1600px"></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-size:12.0pt"><span style="color:#222222">Ông Nguyễn Thanh Tùng phó chủ tịch hội đồng họ Nguyễn Việt Nam, chủ tịch hội đồng họ Nguyễn Thanh Hóa - cần có những giải pháp để công tác xây dựng nhà thờ đúng tiến độ và kêu gọi sự chung tay của các doanh nghiệp cả nước.</span></span></p>

<p style="text-align:center"><img alt="" src="http://truongtoc.com.vn/public/uploads/images/tin_hoat_dong/ha0015.jpg" style="height:1045px; width:1600px"></p>

<p style="text-align:justify"><span style="font-size:12.0pt"><span style="color:#222222">Ông Nguyễn Công Nam một doanh nhân có tâm có tầm tai Quảng Nam Đà Nẵng trưởng ban khuyến học - khuyến tài hội đồng họ Nguyễn Việt Nam đại diện cho miền trung lên chia sẻ tình cảm và hưởng ứng lời kêu gọi của hội đồng và ý tưởng thành lập hội Tri thức trẻ họ Nguyễn Việt Nam để kêu gọi tham gia vào các hoạt động của dòng họ.</span></span></p>

<p style="text-align:center"><img alt="" src="http://truongtoc.com.vn/public/uploads/images/tin_hoat_dong/ha0016.jpg" style="height:1065px; width:1600px"></p>

<p style="text-align:justify"><span style="font-size:12.0pt"><span style="color:#222222">Ông Nguyễn Công Hiệp phó chủ tịch hội đồng họ Nguyễn Việt Nam, một doanh nhân đã đóng góp lớn trong quá trình xây dựng nhà thờ lên phát biểu chia sẻ tình cảm và trách nhiệm của các doanh nhân trong công việc tâm đức.</span></span></p>

<p style="text-align:center"><img alt="" src="http://truongtoc.com.vn/public/uploads/images/tin_hoat_dong/ha0017.jpg"></p>

<p style="text-align:center"><img alt="" src="http://truongtoc.com.vn/public/uploads/images/tin_hoat_dong/ha0018.jpg" style="height:1067px; width:1600px"></p>

<p style="text-align:center"><img alt="" src="http://truongtoc.com.vn/public/uploads/images/tin_hoat_dong/ha0019.jpg" style="height:540px; width:960px"></p>

<p style="text-align:center"><img alt="" src="http://truongtoc.com.vn/public/uploads/images/tin_hoat_dong/ha0020.jpg" style="height:960px; width:720px"></p>

<p style="text-align:justify">&nbsp; &nbsp; &nbsp;&nbsp;<span style="font-size:12.0pt"><span style="color:#222222">Hội nghị tổ chức thành công trong tình cảm ấm áp, công trình xây dựng nhà thờ đã và đang đi vào hoàn thiện những sự đóng góp cuối cùng của người họ Nguyễn Việt Nam cho việc xây dựng nhà thờ cũng gần kết thúc, những đóng góp này sẽ là lịch sử, là duy nhất, để mai sau khi đặt tay lên từng chi tiết đều cảm nhận chút công sức của mình vì mỗi sự đóng góp đó là đã góp cho chính mình, dành cho cha, ông và lưu lại cho đời sau.</span></span></p>

<p style="text-align:center"><img alt="" src="http://truongtoc.com.vn/public/uploads/images/tin_hoat_dong/ha0021.jpg" style="height:534px; width:960px"></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify">&nbsp;</p></div>'),
('Hội đồng họ Nguyễn Quảng Nam – Đà Nẵng thăm viếng gia đình Anh Nguyễn Văn Được','Người dân thôn Mỹ Cang, xã Tam Thăng, TP Tam Kỳ, tỉnh Quảng Nam vô cùng tiếc thương và cảm kích trước tinh thần quên thân để lo cứu giúp tính mạng bà con của Anh dân quân tự về Nguyễn Văn Được.','/public/img/news2.jpg','<div id="contentDetail"><p style="text-align:center"><span style="font-size:16px"><img alt="" src="http://truongtoc.com.vn/public/uploads/images/a26.jpg" style="height:438px; width:660px"></span></p>

<p style="text-align:justify"><span style="font-size:16px"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Người dân thôn Mỹ Cang, xã Tam Thăng, TP Tam Kỳ, tỉnh Quảng Nam vô cùng tiếc thương và cảm kích trước tinh thần quên thân để lo cứu giúp tính mạng bà con của Anh dân quân tự về Nguyễn Văn Được.</span></span></span></p>

<p style="text-align:justify"><span style="font-size:16px"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Trong những ngày vừa qua mưa lũ lớn rất nhanh trong đêm nên người dân trở tay không kịp, con người, nhà cửa tài sản phút chốc bị nước lũ đe dọa, Anh Nguyễn Văn Được là dân quân tự vệ địa phương được phân công về vùng lũ giúp đỡ dân, trong khi lo giúp đỡ dân tránh lũ do bị kiệt sức Anh Nguyễn Văn Được đã đuối sức qua đời vào sáng ngày 11 tháng 12 năm 2018. Hoàn cảnh gia đình Anh Nguyễn Văn Được nghèo khó thuộc diện đặc biệt khó khăn, Anh là con trai duy nhất trong gia đình là điểm tựa cho Mẹ già nên Anh mất đi gia cảnh càng khó khăn.</span></span></span></p>

<p style="text-align:center"><span style="font-size:16px"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><img alt="" src="http://truongtoc.com.vn/public/uploads/images/a21.jpg" style="height:719px; width:904px"></span></span></span></p>

<p style="text-align:justify"><span style="font-size:16px"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Nhận được hung tin, chiều ngày 15 tháng 12 Hội đồng họ Nguyễn Quảng Nam - Đà Nẵng và CLB DN họ Nguyễn Quảng Nam - Đà Nẵng cùng hội đồng họ Nguyễn huyện Thăng Bình, tỉnh Quảng Nam đến thăm hỏi , viếng hương, động viên gia đình vượt qua nỗi đau thương, mất mát.</span></span></span></p>

<p style="text-align:justify"><span style="font-size:16px"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Hội đồng họ Nguyễn Quảng Nam - Đà Nẵng đã kêu gọi người họ Nguyễn Việt Nam nói chung và người họ Nguyễn Quảng Nam - Đà Nẵng chung tay giúp đỡ về tinh thần, vật chất để gia đình Anh Nguyễn Văn Được vượt qua nỗi đau, mất mát vô cùng to lớn này.</span></span></span></p>

<p style="text-align:justify"><span style="font-size:16px"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Hội đồng họ Nguyễn Quảng Nam - Đà Nẵng và CLB DN QN ĐN đã quên góp được 18,5 triệu đồng, CLB DN Thành Phố Hồ Chí Minh cũng đã kịp thời huy động gửi thăm viếng 10 triệu đồng. Với tấm lòng tương thân tương ái, với nghĩa cử giọt máu đào đã làm vơi đi những đau thương mất mát của gia đình Anh Nguyễn Văn Được.</span></span></span></p>

<p style="text-align:center"><span style="font-size:16px"><img alt="" src="http://truongtoc.com.vn/public/uploads/images/a22.jpg" style="height:371px; width:660px"></span></p>

<p style="text-align:center"><span style="font-size:16px"><img alt="" src="http://truongtoc.com.vn/public/uploads/images/a23.jpg" style="height:720px; width:673px"></span></p>

<p style="text-align:center"><span style="font-size:16px"><img alt="" src="http://truongtoc.com.vn/public/uploads/images/a24.jpg" style="height:437px; width:660px"></span></p>

<p style="text-align:center"><span style="font-size:16px"><img alt="" src="http://truongtoc.com.vn/public/uploads/images/a25.jpg" style="height:441px; width:660px"></span></p>

<p style="text-align:center"><span style="font-size:16px"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">những hình ảnh về sự tiếc thương của dòng tộc và người dân với sự mất mát của gia đình.</span></span></span></p>

<p style="text-align:right"><span style="font-size:16px"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Nguyễn HỒNG SƠN - QN ĐN</span></span></span></p>

<p style="text-align:justify">&nbsp;</p></div>'),
('Hội đồng họ Nguyễn Việt Nam thông qua đồ án thiết kế hệ thống điện nước nhà thờ','Ngày 5 tháng 7 năm 2019, tại công trình xây dựng nhà thờ họ Nguyễn Việt Nam, Hội đồng họ Nguyễn Việt Nam đã tổ chức buổi họp nghe giải trình  đồ án thiết kế hệ thống cung cấp điện, nước cho khu vực nhà thờ','/public/img/news4.jpg','<div id="contentDetail"><p style="text-align:justify"><span style="font-size:16px"><strong><em>Tin xây dựng</em></strong></span></p>

<p style="text-align:justify"><span style="font-size:16px"><strong><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </em></strong><strong>HỘI ĐỒNG HỌ Nguyễn VIỆT NAM&nbsp;</strong></span><span style="font-size:16px"><strong>THÔNG QUA&nbsp; ĐỒ ÁN THIẾT KẾ HỆ THỐNG ĐIỆN NƯỚC</strong></span><span style="font-size:16px"><strong>&nbsp;NHÀ THỜ</strong></span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-size:16px">Ngày 5 tháng 7 năm 2019, tại công trình xây dựng nhà thờ họ Nguyễn Việt Nam, Hội đồng họ Nguyễn Việt Nam đã tổ chức buổi họp nghe giải trình &nbsp;đồ án thiết kế hệ thống cung cấp điện, nước cho khu vực nhà thờ do các chuyên viên của công ty chuyên cung ứng, lắp đặt điện nước cho các công trình của Nhật Bản đầu tư tại Việt Nam thuyết trình.</span></p>

<p style="text-align:justify"><span style="font-size:16px">Hệ thống cung cấp điện nước cho các hạng mục xây dựng của nhà thờ họ Nguyễn Việt Nam dự toán tổng kinh phí theo giá nguyên vật liệu nội địa khoảng trên 300 triệu đồng đã được ông Nguyễn Minh Tuấn (Hà Nội) đăng ký cung tiến. Với giá thành nguyên vật liệu của Nhật Bản mà công ty của ông Nguyễn Minh Tuấn đang kinh doanh thì chi phí có thể lên đến 500 triệu đồng.</span></p>

<p style="text-align:center"><span style="font-size:16px"><img src="http://truongtoc.com.vn/public/uploads/images/q11.jpg" style="height:450px; width:600px"></span></p>

<p style="text-align:justify"><span style="font-size:16px">Về dự họp gồm có:</span></p>

<p style="text-align:justify"><span style="font-size:16px">- Ông Nguyễn Văn Đoan – Chủ tịch Hội đồng họ Nguyễn Việt Nam – Nguyên thứ trưởng Bộ Kế hoạch và Đầu tư.</span></p>

<p style="text-align:justify"><span style="font-size:16px">- Bà Nguyễn Quỳnh Mai – Phó chủ tịch Hội đồng họ Nguyễn Việt Nam</span></p>

<p style="text-align:justify"><span style="font-size:16px">- Ông Nguyễn Tô Tân – Phó chủ tịch Hội đồng họ Nguyễn Việt Nam</span></p>

<p style="text-align:justify"><span style="font-size:16px">- Ông Nguyễn Đức Lộc - Cố vấn Hội đồng họ Nguyễn Hà Nam Ninh – Phó ban thường trực xây dựng nhà thờ họ Nguyễn Việt Nam và các thành viên trong ban xây dựng, Ban giám sát xây dựng.</span></p>

<p style="text-align:justify"><span style="font-size:16px">Về phía nhà đầu tư và tài trợ có ông Nguyễn Minh Tuấn và hai chuyên viên thiết kế, lắp đặt điện nước của công ty.</span></p>

<p style="text-align:justify"><span style="font-size:16px">Sau phần báo cáo lý do buổi họp của ông Nguyễn Đức Lộc, Chủ tịch Nguyễn Văn Đoan thay mặt Hội đồng họ Nguyễn Việt Nam phát biểu: “Hội đồng họ Nguyễn Việt Nam ghi nhận và đánh giá rất cao tấm lòng và tâm đức của ông Nguyễn Minh Tuấn. Đến nay công trình xây dựng khu tâm linh nhà thờ họ Nguyễn Việt Nam đã nhận được rất nhiều những tấm lòng hiếu nghĩa với Tổ Tiên, xong để hoàn chỉnh được toàn bộ khu tâm linh theo nguyện ước của bà con dòng tộc thi vẫn cần rất nhiều tấm lòng hiếu nghĩa như ông Nguyễn Minh Tuấn. Tiến trình xây dựng nhà thờ họ Nguyễn Việt Nam có hoàn thành đúng tiến độ hay không còn phụ thuộc rất nhiều vào việc đưa tâm đóng góp của bà con cả nước”.</span></p>

<p style="text-align:justify"><span style="font-size:16px">Về vấn đề cung cấp điện nước, chủ tịch nhấn mạnh: “Việc thiết kế và thi công hệ thống cung cấp điện, nước phải đặt tiêu chí an toàn chống chập cháy điện lên hàng đầu. Bố trí khoa học, vận hành an toàn, thuận tiện và phù hợp tới từng điểm sử dụng. Nghiên cứu thiết kế hệ thống cung cấp điện riêng biệt, đủ công xuất sử dụng phục vụ các Hội nghị, tế lễ lớn tại khu vực sân nhà thờ và các khu vực phụ cận…”</span></p>

<p style="text-align:center"><span style="font-size:16px"><img src="http://truongtoc.com.vn/public/uploads/images/q12.jpg" style="height:450px; width:600px"></span></p>

<p style="text-align:justify"><span style="font-size:16px">Đại diện công ty thiết kế lần lượt thuyết trình và tiếp thu các ý kiến đóng góp, chỉnh sửa theo từng hệ thống riêng: Hệ thống cung cấp nước sạch cho sinh hoạt. Hệ thống cung cấp nước cho hồ sen, tưới cây và vệ sinh sân vườn. Hệ thống điện cho các hạng mục như nhà thờ, nhà Tả vu – Hữu vu, nhà đa năng, gác chuông gác trống, cổng Tam quan, tường bao, nhà vệ sinh. Hệ thống chiếu sáng trang trí sân, vườn, bảo vệ…Từng hệ thống được các thành viên tham dự xem xét, thảo luận. Những chi tiết nhỏ như nơi rửa chân tay, nơi rửa hoa quả, hệ thống cung cấp nước khi mất điện, hệ thống truyền dẫn âm thanh v.v… cũng đã được đề cập và thống nhất đề nghị Hội đồng họ Nguyễn Việt Nam phê duyệt. </span></p>

<p style="text-align:justify"><span style="font-size:16px">Sau 3 giờ làm việc khẩn Nguyễn và nghiêm túc, buổi họp đã kết thúc vào hồi 11h20 cùng ngày.</span></p>

<p style="text-align:justify"><span style="font-size:16px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <em>Ninh Bình, ngày 6 tháng 7 năm 2019</em></span></p>

<p style="text-align:justify"><span style="font-size:16px"><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; </em><strong>Nguyễn Văn Vui</strong></span></p></div>'),
('Công tác chuẩn bị tổ chức Lễ Thượng Lương nhà thờ họ Nguyễn Việt Nam','Ngày 15/12/2018 hội đồng họ Nguyễn Việt Nam họp bàn về tiến độ xây dựng nhà thờ và công tác chuẩn bị cho ngày lễ cất nóc nhà thờ họ Nguyễn Việt Nam tại Thị Trấn Thiên Tôn - Hoa Lư - Ninh Bình.','/public/img/news.jpg','<div id="contentDetail"><p style="text-align:center"><img alt="" src="http://truongtoc.com.vn/public/uploads/images/tin_hoat_dong/capnhatxdnthtvn/a11.jpg" style="height:534px; width:960px"></p>

<p style="text-align:justify"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Ngày 15/12/2018 hội đồng họ Nguyễn Việt Nam họp bàn về tiến độ xây dựng nhà thờ và công tác chuẩn bị cho ngày lễ cất nóc nhà thờ họ Nguyễn Việt Nam tại Thị Trấn Thiên Tôn - Hoa Lư - Ninh Bình.</span></span></span></p>

<p style="text-align:justify"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Ông Nguyễn Văn Đoan nguyên thứ trưởng thường trực bộ kế hoạch đầu tư, chủ tịch hội đồng họ Nguyễn Việt Nam cùng các Ông, Bà :</span></span></span></p>

<p style="text-align:justify"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Ông Nguyễn Việt Bình phó chủ tịch thường trực.</span></span></span></p>

<p style="text-align:justify"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Ông Nguyễn Công Hiệp phó chủ tịch.</span></span></span></p>

<p style="text-align:justify"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Bà Nguyễn Quỳnh Mai phó chủ tịch kiêm chánh Ngọc phòng.</span></span></span></p>

<p style="text-align:justify"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Ông Nguyễn Minh Tân ban trang mạng. </span></span></span></p>

<p style="text-align:justify"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Ông Nguyễn Quốc Chính ban kết nối.</span></span></span></p>

<p style="text-align:justify"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Ông Nguyễn Thanh Phong chủ tịch CLB DN.</span></span></span></p>

<p style="text-align:justify"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Ông Nguyễn Quang Hào ban xây dựng nhà thờ.</span></span></span></p>

<p style="text-align:justify"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Bà Nguyễn Thúy Nga phó Ngọc phòng.</span></span></span></p>

<p style="text-align:justify"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Hội động họ Nguyễn Hà Nam Ninh với vai trò nặng nề trong quá trình xây dựng nhà thờ và trách nhiệm với các sự kiện của hội đồng họ Nguyễn Việt Nam tại Ninh Bình, dự cuộc họp quan trọng có các Ông, Bà :</span></span></span></p>

<p style="text-align:justify"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Ông Nguyễn Tô Tân phó chủ tịch hội đồng họ Nguyễn Việt Nam, chủ tịch hội đồng họ Nguyễn Hà Nam Ninh.</span></span></span></p>

<p style="text-align:justify"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Ông Nguyễn Thanh Long phó chủ tịch. Cùng các thành viên.</span></span></span></p>

<p style="text-align:justify"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Hội đồng họ lâm thời họ Nguyễn Thái Nguyên lần đầu tiên về thăm nhà thờ do Bà Nguyễn Thị Huệ nguyên đại biểu Quốc Hội tham dự họp và chứng kiến chủ tịch Nguyễn Văn Đoan trao quyết định phó ban xây dựng nhà thờ cho người Ông Nguyễn Quang Hòa, người họ Nguyễn Thái Nguyên.</span></span></span></p>

<p style="text-align:center"><img alt="" src="http://truongtoc.com.vn/public/uploads/images/tin_hoat_dong/capnhatxdnthtvn/a12.jpg" style="height:713px; width:950px"></p>

<p style="text-align:justify"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Tại cuộc họp các nhà thầu báo cáo tiến độ và chất lượng từng hạng mục đảm bảo đúng thời gian đã thỏa thuận cho lễ cất nóc vào ngày 06 tháng 01 năm 2019 ( tức ngày 01 tháng 12 Mậu Tuất ).</span></span></span></p>

<p style="text-align:justify"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Công tác chuẩn bị cho lễ Thượng Lương cũng được hội đồng bàn bạc chi tiết để cho ngày lễ được thành công và ấm áp tình dòng tộc.</span></span></span></p>

<p style="text-align:center"><img alt="" src="http://truongtoc.com.vn/public/uploads/images/tin_hoat_dong/capnhatxdnthtvn/a13.jpg" style="height:720px; width:960px"></p>

<p style="text-align:center"><img alt="" src="http://truongtoc.com.vn/public/uploads/images/tin_hoat_dong/capnhatxdnthtvn/a14.jpg" style="height:720px; width:960px"></p>

<p style="text-align:center"><img alt="" src="http://truongtoc.com.vn/public/uploads/images/tin_hoat_dong/capnhatxdnthtvn/a15.jpg" style="height:720px; width:960px"></p>

<p style="text-align:center"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">công trường đang thi công khẩn Nguyễn </span></span></span></p>

<p style="text-align:center"><img alt="" src="http://truongtoc.com.vn/public/uploads/images/tin_hoat_dong/capnhatxdnthtvn/a16.jpg" style="height:640px; width:960px"></p>

<p style="text-align:center"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">hình ảnh lễ khởi công nhà thờ họ Nguyễn Việt Nam.</span></span></span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify">&nbsp;</p></div>');

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
