-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 26, 2025 at 07:17 AM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `binhdinhnews`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `ArticleID` int NOT NULL AUTO_INCREMENT,
  `Time_modify` datetime DEFAULT NULL,
  `AuthorID` int DEFAULT NULL,
  `AuthorGuestName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `CategoryID` int DEFAULT NULL,
  `Title` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `MainImage` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `ListImage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `ArticleStatus` int DEFAULT '0',
  PRIMARY KEY (`ArticleID`),
  KEY `CategoryID` (`CategoryID`),
  KEY `AuthorID` (`AuthorID`)
) ENGINE=InnoDB AUTO_INCREMENT=15741 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`ArticleID`, `Time_modify`, `AuthorID`, `AuthorGuestName`, `CategoryID`, `Title`, `Tags`, `MainImage`, `ListImage`, `ArticleStatus`) VALUES
(1, '2025-04-22 15:17:00', NULL, 'NGUYỄN HÂN', 1, 'Gặp mặt nguyên cán bộ, nhân viên Ban Đấu tranh chính trị và Binh vận tỉnh', 'cán bộ| chính trị| binh vận| Ban Đấu tranh chính trị', '360151.jpg', '1_1.jpg| 1_2.jpg| 1_3.jpg', 1),
(2, '2025-04-22 10:27:00', NULL, 'NGUYỄN HÂN', 1, 'Ban Chấp hành Đảng bộ tỉnh họp cho ý kiến về sắp xếp đơn vị hành chính cấp tỉnh và cấp xã', 'Ban Chấp hành Đảng bộ| sắp xếp đơn vị hành chính', '1_BCH_Dang_bo_1_161c9.jpg', '1 BCH Đang bo 1.jpg| 1 BCH Đang bo 2.jpg| 1 BCH Đang bo 3.jpg| 1_BCH_Dang_bo_1_161c9.jpg', 1),
(3, '2025-04-18 16:55:00', NULL, ' Kim Loan', 1, 'DỰ KIẾN 58 ĐƠN VỊ HÀNH CHÍNH CẤP XÃ CỦA TỈNH BÌNH ĐỊNH', 'sáp nhập| đơn vị hành chính| sáp nhập tỉnh', '04_bia.jpg', '04_bia.jpg', 1),
(4, '2025-04-18 15:46:00', NULL, ' Kim Loan', 1, 'Lễ kỷ niệm 53 năm Ngày giải phóng huyện Hoài Ân', 'giải phóng Hoài Ân| kỷ niệm', '1 Hoai An 1(2).jpg', '1 Hoai An 1(2).jpg| 1 Hoai An 3(1).jpg| 20250418_135724.jpg| 1 Hoai An 4(1).jpg', 1),
(5, '2025-04-16 15:14:00', NULL, 'Trang Lê', 1, '\"Hội nghị quán triệt, triển khai thực hiện Nghị quyết Hội nghị lần thứ 11, Ban chấp hành Trung ương Đảng khóa XIII', 'Nghị quyết Hội nghị lần thứ 11| Ban chấp hành Trung ương Đảng khóa XIII', '2hn.jpg', '2hn.jpg| 1 chinh.jpg| 4 hn(1).jpg| 3 To lam.jpg| 1TT HN.jpg', 1),
(6, '2025-04-04 23:29:00', NULL, 'HỒNG PHÚC', 1, 'Đoàn tàu chở lực lượng vào TP Hồ Chí Minh diễu binh, diễu hành được chào đón nồng ấm tại Ga Diêu Trì', 'diễu binh| diễu hành', 'IMG_3325.jpeg', 'IMG_3325.jpeg| IMG_3326.jpeg| IMG_3327.jpeg', 1),
(7, '2025-04-01 15:24:00', NULL, 'Trang Lê', 1, 'Bí thư Tỉnh ủy làm việc với Ban Thường vụ Đảng ủy UBND tỉnh', 'Ban Thường vụ Đảng ủy UBND tỉnh', 'DU4 _1đ.jpg', 'DU4 _1đ.jpg| DU5 _1.jpg| DU1 _1.jpg', 1),
(8, '2025-03-31 17:09:00', NULL, 'Kim Loan', 1, 'Gặp mặt, trao quyết định nghỉ hưu cho Phó Giám đốc Sở Xây dựng Võ Hữu Thiện', 'Phó Giám đốc Sở Xây dựng Võ Hữu Thiện| nghỉ hưu', '2(3).jpg', '2(3).jpg| 4(4).jpg| 3(5).jpg', 1),
(9, '2025-03-30 18:23:00', NULL, 'Trang Lê', 1, 'Gặp mặt Quân – Dân – Chính tiêu biểu tỉnh Bình Định', 'Quân – Dân – Chính| Bình Định', 'z6457122864013_24b3387fe523f6b8a0d484d39b0a824f.jpg', 'z6457122864013_24b3387fe523f6b8a0d484d39b0a824f.jpg| z6457122852396_eb2df9266fbaf03476ae035820d6eb55.jpg| z6457122868809_eab739d637b7a1299f31371c59f8e155.jpg| 3(19).jpg| 1(16).jpg| z6457122879383_3d507cd4724cba8e209929d43668bca4.jpg| 2(26).jpg', 1),
(10, '2025-03-30 22:53:00', NULL, 'DTD', 1, 'Lễ Kỷ niệm 50 năm Ngày giải phóng tỉnh Bình Định', ' Kỷ niệm 50 năm Ngày giải phóng tỉnh Bình Định', 'IMG_3187.jpeg', 'IMG_3187.jpeg| IMG_3177.jpeg| IMG_3176.jpeg| IMG_3185.jpeg|IMG_3181.jpeg', 1),
(11, '2025-04-23 07:03:00', NULL, 'THÀNH NGUYÊN', 2, 'Chung tay bảo vệ hệ sinh thái rừng ngập mặn', 'phát triển KT-XH và môi trường| tuyên truyền bảo vệ', '11.jpg', '11.jpg', 1),
(12, '2025-04-22 21:48:00', NULL, 'T.SỸ', 2, 'Vân Canh cần tập trung hỗ trợ đầu tư phát triển Khu công nghiệp Becamex VSIP Bình Định', 'phát triển KT-XH| UBND huyện Vân Canh| hỗ trợ', '12_1.jpg', '12_1.jpg| 12_2.jpg| 12_3.jpg| 12_4.jpg| 12_5.jpg| 12_6.jpg', 1),
(13, '2025-04-21 22:21:00', NULL, 'T.SỸ', 2, 'Thu hút 36 dự án đầu tư mới, tổng vốn đầu tư trên 13.596 tỷ đồng', 'xúc tiến đầu tư| dự án mới', '', '', 1),
(14, '2025-04-21 09:45:00', NULL, 'Lê Thúy/NLĐO', 2, 'Sẽ tăng mạnh nhập khẩu điện từ Lào', 'nhập khẩu điện từ Lào| nhà máy điện vận hành thương mại| Hiệp định giữa hai Chính phủ', '14.jpg', '14.jpg', 1),
(15, '2025-04-21 06:52:00', NULL, 'T.SỸ', 2, 'Các đơn vị khối huyện giải ngân trên 21% kế hoạch vốn đầu tư công năm 2025', 'giải ngân| vốn đầu tư công', '', '', 1),
(16, '2025-03-26 23:15:00', NULL, 'TRỌNG LỢI', 2, 'Thúc đẩy kinh tế xanh vì một tương lai bền vững', 'khởi nghiệp xanh| bảo vệ và cải thiện môi trường sống| GREENIF', '16.jpg', '16.jpg', 1),
(17, '2025-04-18 19:01:00', NULL, 'Trang Lê', 2, 'Lãnh đạo UBND tỉnh làm việc với Đoàn công tác của Ngân hàng thế giới', 'Bà Yoonhee Kim| ngân hàng thế giới| giải phóng mặt bằng', '17_1.jpg', '17_1.jpg| 17_2.jpg| 17_3.jpg| 17_4.jpg| 17_5.jpg', 1),
(18, '2025-03-23 16:23:00', NULL, 'TIẾN TRUNG/NDO', 2, 'Quy định mức phí duy trì tên miền quốc gia .vn từ 3.5.2025', 'tên miền quốc gia .vn| Nghị định số 82/2023/NĐ-CP', '18.jpg', '18.jpg', 1),
(19, '2025-03-19 21:46:00', NULL, 'THÀNH NGUYÊN', 2, 'Chuyển giao kỹ thuật thâm canh cây dừa theo tiêu chuẩn hữu cơ', 'thâm canh cây dừa theo tiêu chuẩn hữu cơ| Lớp tập huấn', '', '', 1),
(20, '2025-04-22 10:44:00', NULL, 'XUÂN THỨC', 2, 'Ngư dân Nhơn Lý được mùa cá gần bờ', 'Nhơn Lý (TP Quy Nhơn)| đánh bắt trong ngày| Ngư dân', '20.jpg', '20.jpg', 1),
(21, '2025-04-23 22:44:00', NULL, 'DUY KHANG', 7, 'Tiếng thơ tha thiết giữa đời thường', 'Tiếng thơ', '21.jpg', '21.jpg', 1),
(22, '2025-04-23 09:44:00', NULL, 'HUỲNH VỸ', 7, 'Chương trình nghệ thuật “Bài ca thống nhất”', 'Bài ca thống nhất', '22.jpg', '22.jpg', 1),
(23, '2025-04-24 09:44:00', NULL, 'LÊ NGỌC SƠN', 7, 'Chuyện tình của người lính trẻ Bắc Việt', 'người lính trẻ Bắc Việt', '23.jpg', '23.jpg', 1),
(24, '2025-03-21 10:02:00', NULL, 'THÁI NGÂN', 7, 'Lễ đón nhận Bằng xếp hạng di tích cấp tỉnh “Nơi tưởng niệm liệt sĩ thanh niên xung phong tỉnh Bình Định”', 'liệt sĩ thanh niên xung phong', '24.jpg', '24.jpg', 1),
(25, '2025-04-26 09:44:00', NULL, 'PHƯƠNG LAN/TTXVN', 7, 'Tổng Bí thư Tô Lâm dự Chương trình nghệ thuật đặc biệt \"Đảng trong mùa Xuân đại thắng\"', 'Đảng trong mùa Xuân đại thắng', '25.jpg', '25.jpg', 1),
(26, '2025-04-28 18:48:00', NULL, 'ĐỖ THẢO', 7, 'Hội thi Tiếng hát người khuyết tật tỉnh Bình Định lần thứ III', 'Tiếng hát người khuyết tật', '26.jpg', '26.jpg', 1),
(27, '2025-05-01 09:44:00', NULL, 'THANH HIỆP - VĂN TRUNG - BẢO TRÂN/TTO', 7, 'Pháo hoa rợp trời chào mừng 50 năm thống nhất đất nước', ' chào mừng 50 năm thống nhất đất nước', '27.jpg', '27.jpg', 1),
(28, '2025-04-29 09:44:00', NULL, 'DUY KHANG', 7, 'Phát huy tư liệu địa chí Bình Định', 'tư liệu địa chí Bình Định', '28.jpg', '28.jpg', 1),
(29, '2025-04-30 09:44:00', NULL, 'LÊ NGỌC SƠN', 7, 'Rạng rỡ sắc màu Thống nhất', ' Thống nhất', '29.jpg', '29.jpg', 1),
(30, '2025-04-28 09:44:00', NULL, 'DUY KHANG', 7, 'Xá lợi Đức Phật đã đến Việt Nam', 'Xá lợi Đức Phật', '30.jpg', '30.jpg', 1),
(31, '2025-04-24 09:52:00', NULL, 'KIỀU VY', 3, 'Giải việt dã Công đoàn UBND tỉnh năm 2025: Bệnh viện đa khoa tỉnh giành giải nhất toàn đoàn', 'chạy', '31_2.jpg', '31_1.jpg|31_2.jpg|31_3.jpg|31_4.jpg|31_5.jpg', 1),
(32, '2025-04-23 15:25:00', NULL, 'HUỲNH VỸ', 3, 'Bình Định biểu diễn võ cổ truyền tại Chương trình giao lưu Việt Nam - Triều Tiên', 'võ', '32.jpg', '32.jpg', 1),
(33, '2025-04-23 09:39:00', NULL, 'Trọng Đạt', 3, 'Việt Nam đăng cai ba giải đấu lớn cấp châu lục và khu vực của bóng đá nữ trong năm 2025', 'đá bóng| nữ', '33.jpg', '33.jpg', 1),
(34, '2025-04-22 15:28:00', NULL, 'NGUYỄN NGUYỆT', 3, 'Sôi động Giải Bóng chuyền viên chức, lao động TP Quy Nhơn năm 2025', 'bóng chuyền', '34.jpg', '34.jpg', 1),
(35, '2025-04-22 09:20:00', NULL, 'HUỲNH VỸ', 3, 'Giải bóng đá nam học sinh tiểu học TX An Nhơn 2025: Đội Trường Tiểu học số 2 Đập Đá vô địch', 'bóng đá| thiếu nhi| nhi đồng', '35.jpg', '', 1),
(36, '2022-09-21 07:59:00', NULL, 'Hoàng Trọng', 3, 'Cô gái vàng Kickboxing Việt Nam rước đuốc tại Đại hội TDTT tỉnh Bình Định', 'Kick Boxing', '36_1.jpg', '', 1),
(37, '2022-06-03 18:02:00', NULL, 'Hoàng Trọng', 3, 'Các nhà vô địch SEA Games 31 Hằng Nga, Hồng Lệ cảm động khi được tuyên dương', 'Kick Boxing', '37_1.jpg', '37_1.jpg|37_2.jpg|37_3.jpg', 1),
(38, '2025-04-24 11:07:00', NULL, 'KIÊU VY', 3, 'Giải vô địch các CLB võ cổ truyền quốc gia năm 2025: Bình Định nhất toàn đoàn nội dung quyền thuật', 'võ cổ truyền| võ thuật', '38_1.jpg', '38_1.jpg|38_2.jpg|38_3.jpg', 1),
(41, '2025-04-23 11:20:00', NULL, 'MINH NGỌC', 4, 'Tài xế taxi ngăn chặn kịp thời vụ mua bán người', 'mua bán người', 'anhbia41.jpg', '1.jpg| 2.jpg', 1),
(42, '2025-04-23 09:13:00', NULL, 'MINH NGỌC', 4, 'Tuyên truyền phòng chống tội phạm lừa đảo trên không gian mạng cho dân làng Kà Xim', 'phòng chống| lừa đảo| dân làng Kà Xim', 'anhbia42.jpg', '1.42.jpg', 1),
(43, '2025-04-22 18:00:00', NULL, 'NGUYỄN CHƠN', 4, 'Chủ tịch UBND tỉnh yêu cầu xử lý nghiêm các vụ việc nữ sinh bị hành hung', 'hành hung', '1-43.jpg', '1-43.jpg|2-43.jpg|3-43.jpg', 1),
(44, '2025-04-22 16:21:00', NULL, 'Theo Hoàng Minh/VOV)', 4, 'Cảnh báo chiêu trò lừa đảo bán vé máy bay giá rẻ trên mạng', 'lừa đảo| vé máy bay', 'anhbia44.jpg', '1-44.jpg', 1),
(45, '2025-04-22 17:32:00', NULL, 'T.LONG', 4, 'Truy bắt đối tượng cướp tài sản lẩn trốn từ TP Hồ Chí Minh ra Bình Định', 'truy bắt| cướp tài sản', 'anhbia45.jpg', '1-45.jpg', 1),
(46, '2025-04-23 15:47:00', NULL, 'MINH NGỌC', 4, 'Chỉ 1 tuần, 107 tài xế bị tước bằng lái xe', 'tước bằng lái xe', 'anhbia46.jpg', '1-46.jpg', 1),
(47, '2025-04-22 17:25:00', NULL, 'Theo DUY CƯỜNG/SGGP', 4, 'Phá đường dây rửa tiền, đánh bạc xuyên quốc gia hơn 600 tỷ đồng/tháng', 'phá đường dây', 'anhbia47.jpg', '1-47.jpg', 1),
(48, '2025-04-22 17:20:00', NULL, 'MINH NGỌC', 4, 'Quá tải ở bộ phận xử lý vi phạm giao thông qua hình ảnh', 'xử lý vi phạm giao thông', 'anhbia48.jpg', '1-48.jpg', 1),
(49, '2025-04-23 16:40:00', NULL, 'K.ANH', 4, 'Kịp thời dập tắt đám cháy tại nhà dân', 'dập tắt đám cháy', 'anhbia49.jpg', '1-49.jpg| 2-49.jpg', 1),
(50, '2025-04-23 16:43:00', NULL, 'MINH NGỌC', 4, 'Kịp thời cứu nạn thanh niên nhảy cầu Thị Nại', 'nhảy cầu', 'anhbia50.jpg', '1-50.jpg', 1),
(51, '2025-04-20 08:40:00', NULL, 'TRƯỜNG GIANG', 5, 'Bình Định tổ chức Lễ hội Văn hóa Ẩm thực lần II - 2025: Quảng bá tinh hoa ẩm thực và du lịch địa phương', 'ẩm thực| du lịch', 'anhbia51.jpg', '1-anh51.jpg', 1),
(52, '2025-04-20 08:52:00', NULL, 'Đức Hồ', 5, 'Bầu trời Quy Nhơn rợp bóng sinh vật đại dương', 'sinh vật đại dương', 'anhbia52.jpg', '1-anh52.jpg| 2-anh52.jpg', 1),
(53, '2025-04-21 18:52:00', NULL, 'Lê Trân', 5, 'Bình Định tổ chức chương trình tham quan cho đại biểu tham dự Liên hoan Truyền hình toàn quốc lần thứ 42 tại Bình Định', 'sự kiện quốc gia', 'anhbia53.jpg', '1-anh53.jpg| 2-anh53.jpg', 1),
(54, '2025-03-24 16:47:00', NULL, 'Đức Hồ', 5, '“Cháy”… vé máy bay về Bình Định', 'vé máy bay về Bình Định', 'anhbia54.jpg', '1-anh54.jpg', 1),
(55, '2025-03-25 10:47:00', NULL, 'Thu Dịu', 5, 'Vi vu cùng nắng, cát & gió', 'nắng| cát & gió', 'anhbia55.jpg', '1-anh55.jpg| 2-anh55.jpg| 3-anh55.jpg', 1),
(56, '2025-04-20 10:16:00', NULL, 'TRƯỜNG GIANG', 5, 'Vóc dáng mới ở Cát Tiến', 'Cát Tiến', 'anhbia56.jpg', '1-anh56.jpg| 2-anh56.jpg', 1),
(57, '2025-03-12 17:07:00', NULL, ' Lê Trân', 5, 'Nhà thờ Đá Ghềnh Ráng', 'Nhà thờ Đá Ghềnh Ráng', 'anhbia57.jpg', '1-anh57.jpg| 2-anh57.jpg', 1),
(58, '2025-04-01 14:19:00', NULL, 'Thị Trân', 5, 'Khu Du lịch Ghềnh Ráng Tiên Sa', 'Ghềnh Ráng Tiên Sa', 'anhbia58.jpg', '1-anh58.jpg| 2-anh58.jpg', 1),
(59, '2025-03-23 18:20:00', NULL, 'Ngọc Hân', 5, 'Cầu Thị Nại - Top 10 cây cầu nổi tiếng được du khách thích chụp ảnh nhất', 'cầu thị nhại', 'anhbia59.jpg', '1-anh59.jpg| 2-anh59.jpg', 1),
(60, '2025-03-20 18:21:00', NULL, 'Lê Trân', 5, 'Tháp Đôi - vẻ đẹp cổ kính trong lòng thành phố biển', 'tháp đôi', 'anhbia60.jpg', '1-anh60.jpg| 2-anh60.jpg', 1),
(61, '2025-04-21 05:13:00', NULL, 'PHẠM TIẾN SỸ', 6, 'Phát triển hợp tác xã theo chuỗi giá trị', 'phát triển hợp tác xã', 'anhbia61.jpg', '1.jpg', 1),
(62, '2025-03-02 21:49:00', NULL, 'HỒNG HÀ', 6, 'Hướng tới mục tiêu đột phá về chuyển đổi số và đổi mới sáng tạo', 'chuyển đổi số và đổi mới sáng tạo', 'anhbia62.jpg', '1-62.jpg| 2-62.jpg', 1),
(63, '2025-02-17 05:46:00', NULL, 'TRỌNG LỢI', 6, 'Huyện Tuy Phước quyết tâm đạt chuẩn nông thôn mới nâng cao', 'chuẩn nông thôn mới nâng cao', 'anhbia63.jpg', '1-63.jpg ', 1),
(64, '2025-03-24 06:31:00', NULL, 'HẢI YẾN', 6, 'Cơ hội lớn cho năng lượng tái tạo', 'cơ hội| năng lượng tái tạo', 'anhbia64.jpg', '1-64.jpg', 1),
(65, '2025-03-16 22:43:00', NULL, 'HẢI YẾN', 6, 'Hoài Ân đầu tư hạ tầng để tạo đà phát triển bền vững', 'đầu tư hạ tầng| phát triển', 'anhbia65.jpg', '1-65.jpg', 1),
(66, '2025-04-13 22:12:00', NULL, 'ĐINH NGỌC', 6, '25 năm gắn bó với diều khí động học', 'diều khí động học| kỷ lục Guinness Việt Nam năm 2014', 'anhbia66.jpg', '1-66.jpg', 1),
(67, '2025-01-06 06:28:00', NULL, 'HẢI YẾN', 6, 'Doanh nghiệp tiên phong tham gia chuỗi cung ứng xanh', 'doanh nghiệp| chuỗi cung ứng xanh', 'anhbia67.jpg', '1-67.jpg', 1),
(68, '2025-02-24 10:34:00', NULL, 'VĂN LỰC', 6, 'Công tác đo đạc, lập bản đồ địa chính: Góp phần nâng cao hiệu quả quản lý nhà nước về đất đai', 'quản lý nhà nước', 'anhbia68.jpg', '1-68.jpg', 1),
(69, '2025-02-09 23:29:00', NULL, 'HẢI YẾN', 6, 'Công ty CP công nghiệp KAMADO: Nỗ lực đầu tư, đảm bảo sản xuất liên tục', 'đầu tư| sản xuất liên tục', 'anhbia69.jpg', '1-69.jpg', 1),
(70, '2025-04-13 22:19:00', NULL, 'TRỌNG LỢI', 6, 'Dược liệu quý “bén rễ” vùng núi cao An Toàn', 'dược liệu quý| xuất khẩu dược liệu sạch', 'anhbia70.jpg', '1-70.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `CategoryID` int NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CategoryID`, `CategoryName`) VALUES
(1, 'Chính trị'),
(2, 'Kinh tế'),
(3, 'Thể thao'),
(4, 'Pháp luật'),
(5, 'Du lịch'),
(6, 'Hội nhập quốc tế'),
(7, 'Văn hóa');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `CommentID` int NOT NULL AUTO_INCREMENT,
  `ArticleID` int DEFAULT NULL,
  `UserID` int DEFAULT NULL,
  `Timer` datetime DEFAULT CURRENT_TIMESTAMP,
  `Content` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`CommentID`),
  KEY `ArticleID` (`ArticleID`),
  KEY `UserID` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coquanchuyenmon`
--

DROP TABLE IF EXISTS `coquanchuyenmon`;
CREATE TABLE IF NOT EXISTS `coquanchuyenmon` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tencoquan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hoten` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chucvu` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capbac` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coquanchuyenmon`
--

INSERT INTO `coquanchuyenmon` (`id`, `tencoquan`, `hoten`, `chucvu`, `hinhanh`, `capbac`) VALUES
(1, 'Văn phòng UBND', 'LÊ NGỌC AN', 'Chánh Văn phòng', 'lengocan.jpg', 1),
(2, 'Văn phòng UBND', 'TRẦN TRỌNG TRIÊM', 'Phó Chánh Văn phòng', 'trantrongtriem.jpg', 2),
(3, 'Văn phòng UBND', 'VÕ GIA NGHĨA', 'Phó Chánh Văn phòng', 'vogianghia.jpg', 2),
(4, 'Văn phòng UBND', 'PHAN ĐÌNH HẢI', 'Phó Chánh Văn phòng', 'phandinhhai.jpg', 2),
(5, 'Văn phòng UBND', 'LÊ HUY VŨ', 'Phó Chánh Văn phòng', 'lehuyvu.jpg', 2),
(6, 'Sơ nội vụ', 'LÊ MINH TUẤN', 'Giám đốc', 'leminhtuan.jpg', 1),
(7, 'Sở nội vụ', 'BÙI HOÀNG LINH', 'Phó Giám đốc', 'buihoanglinh.jpg', 2),
(8, 'Sở nội vụ', 'NGUYỄN THANH VŨ', 'Phó Giám đốc', 'nguyenthanhvu.jpg', 2),
(9, 'Sở nội vụ', 'TRẦN TRUNG ĐỊNH', 'Phó Giám đốc', 'trantrungdinh.jpg', 2),
(10, 'Sở nội vụ', 'PHAN ĐÌNH HÒA', 'Phó Giám đốc', 'phandinhhoa.jpg', 2),
(11, 'Sở tài chính', 'NGUYỄN THÀNH HẢI', 'Giám đốc', 'nguyenthanhhai.jpg', 1),
(12, 'Sở tài chính', 'ĐẶNG THU HƯƠNG', 'Phó Giám đốc', 'dangthuhuong.jpg', 2),
(13, 'Sở tài chính', 'TRẦN VŨ THANH HÙNG', 'Phó Giám đốc', 'tranvuthanhhung.jpg', 2),
(14, 'Sở tài chính', 'NGUYỄN VĂN CHÂU', 'Phó Giám đốc', 'nguyenvanchau.jpg', 2),
(15, 'Sở tài chính', 'PHẠM VĂN THÀNH', 'Phó Giám đốc', 'phamvanthanh.jpg', 2),
(16, 'Sở tài chính', 'NGUYỄN QUANG MINH', 'Phó Giám đốc', 'nguyenquangminh.jpg', 3),
(17, 'Sở xây dựng', 'TRẦN VIẾT BẢO', 'Giám đốc', 'tranvietbao.jpg', 1),
(18, 'Sở xây dựng', 'LÊ ANH SƠN', 'Phó Giám đốc', 'leanhson.jpg', 2),
(19, 'Sở xây dựng', 'HUỲNH NGỌC HOÀNG', 'Phó Giám đốc', 'huynhngochoang.jpg', 2),
(20, 'Sở xây dựng', 'TRƯƠNG KHOA', 'Phó Giám đốc', 'truongkhoa.jpg', 2),
(21, 'Sở xây dựng', 'LÊ ANH TUẤN', 'Phó Giám đốc', 'leanhtuan.jpg', 2),
(22, 'Sở xây dựng', 'VÕ VĂN TRỊNH', 'Phó Giám đốc', 'vovantrinh.jpg', 3),
(23, 'Sở công thương', 'TRẦN THANH DŨNG', 'Giám đốc', 'tranthanhdung.jpg', 1),
(24, 'Sở công thương', 'TRẦN THÚC KHAM', 'Phó Giám đốc', 'tranthuckham.jpg', 2),
(25, 'Sở công thương', 'VÕ MAI HƯNG', 'Phó Giám đốc', 'vomaihung.jpg', 2),
(26, 'Sở công thương', 'NGUYỄN ĐÌNH KHA', 'Phó Giám đốc', 'nguyendinhkha.jpg', 2),
(27, 'Sở nông nghiệp và môi trường', 'CAO THANH THƯƠNG', 'Giám đốc', 'caothanhthuong.jpg', 1),
(28, 'Sở nông nghiệp và môi trường', 'NGUYỄN THỊ TỐ TRÂN', ' Phó Giám đốc', 'nguyenthitotran.jpg', 2),
(29, 'Sở nông nghiệp và môi trường', 'HỒ ĐẮC CHƯƠNG', ' Phó Giám đốc', 'hodacchuong.jpg', 2),
(30, 'Sở nông nghiệp và môi trường', 'BÙI TẤN THÀNH', ' Phó Giám đốc', 'buitanthanh.jpg', 2),
(31, 'Sở nông nghiệp và môi trường', 'TRẦN KỲ QUANG', ' Phó Giám đốc', 'trankyquang.jpg', 2),
(32, 'Sở nông nghiệp và môi trường', 'TRẦN ĐÌNH CHƯƠNG', ' Phó Giám đốc', 'trandinhchuong.jpg', 3),
(33, 'Sở nông nghiệp và môi trường', 'HÀ THỊ THANH HƯƠNG', ' Phó Giám đốc', 'hathithanhhuong.jpg', 3),
(34, 'Sở nông nghiệp và môi trường', 'NGUYỄN THỊ THẾ VY', ' Phó Giám đốc', 'nguyenthithevy.jpg', 3),
(35, 'Sở khoa học và công nghệ', 'TRẦN KIM KHA', 'Giám đốc', 'trankimkha.jpg', 1),
(36, 'Sở khoa học và công nghệ', 'HUỲNH HỒ HOÀI NAM', ' Phó Giám đốc', 'huynhhohoainam.jpg', 2),
(37, 'Sở khoa học và công nghệ', 'NGUYỄN MINH THẢO', 'Phó Giám đốc', 'nguyenminhthao.jpg', 2),
(38, 'Sở khoa học và công nghệ', 'NGUYỄN HỮU HÀ', 'Phó Giám đốc', 'nguyenhuuha.jpg', 2),
(39, 'Sở khoa học và công nghệ', 'VÕ CAO THỊ MỘNG HOÀI', 'Phó Giám đốc', 'vocaothimonghoai.jpg', 2),
(40, 'Sở khoa học và công nghệ', 'TRƯƠNG QUANG PHONG', 'Phó Giám đốc', 'truongquangphong.jpg', 3),
(41, 'Sở giáo dục và đào tạo', 'NGUYỄN ĐÌNH HÙNG', 'Phó Giám đốc', 'nguyendinhhung.jpg', 1),
(42, 'Sở giáo dục và đào tạo', 'VÕ NGỌC SỸ', 'Phó Giám đốc', 'vongocsy.jpg', 1),
(43, 'Sở giáo dục và đào tạo', 'ĐẶNG VĂN PHỤNG', 'Phó Giám đốc', 'dangvanphung.jpg', 1),
(44, 'Sở văn hóa-thể thao và du lịch', 'ĐỖ THỊ DIỆU HẠNH', 'Giám đốc', 'dothidieuhanh.jpg', 1),
(45, 'Sở văn hóa-thể thao và du lịch', 'BÙI TRUNG HIẾU', 'Phó Giám đốc', 'buitrunghieu.jpg', 2),
(46, 'Sở văn hóa-thể thao và du lịch', 'HUỲNH VĂN LỢI', 'Phó Giám đốc', 'huynhvanloi.jpg', 2),
(47, 'Sở văn hóa-thể thao và du lịch', 'NGUYỄN THỊ KIM CHUNG', 'Phó Giám đốc', 'nguyenthikimchung.jpg', 2),
(48, 'Sở văn hóa-thể thao và du lịch', 'PHẠM NGỌC THÁI', 'Phó Giám đốc', 'phamngocthai.jpg', 2),
(49, 'Sở văn hóa-thể thao và du lịch', 'HUỲNH THỊ ANH THẢO', 'Phó Giám đốc', 'huynhthianhthao.jpg', 3),
(50, 'Sở y tế', 'LÊ QUANG HÙNG', 'Giám đốc', 'lequanghung.jpg', 1),
(51, 'Sở y tế', 'TRẦN VĂN TRƯƠNG', 'Phó Giám đốc', 'tranvantruong.jpg', 2),
(52, 'Sở y tế', 'NGUYỄN THỊ TUYẾT NHUNG', 'Phó Giám đốc', 'nguyenthituyetnhung.jpg', 2),
(53, 'Sở tư pháp', 'TRẦN VĂN SANG', 'Giám đốc', 'tranvansang.jpg', 1),
(54, 'Sở tư pháp', 'PHẠM DÂN', 'Phó Giám đốc', 'phamdan.jpg', 2),
(55, 'Sở tư pháp', 'CHÂU THỊ HƯƠNG LAN', 'Phó Giám đốc', 'chauthihuonglan.jpg', 2),
(56, 'Sở tư pháp', 'TRẦN MINH HỒNG', 'Phó Giám đốc', 'tranminhhong.jpg', 2),
(57, 'Sở ngoại vụ', 'NGUYỄN THÁI BÌNH', 'Giám đốc', 'nguyenthaibinh.jpg', 1),
(58, 'Sở ngoại vụ', 'VÕ ĐÌNH KHA', 'Phó Giám đốc', 'vodinhkha.jpg', 2),
(59, 'Sở ngoại vụ', 'VÕ THỊ NHƯ HIỀN', 'Phó Giám đốc', 'vothinhuhien.jpg', 2),
(60, 'Ban quản lý KKT', 'NGUYỄN TỰ CÔNG HOÀNG', 'Phó Chủ tịch UBND tỉnh, Kiêm Trưởng Ban', 'nguyentuconghoang.jpg', 1),
(61, 'Ban quản lý KKT', 'LÊ HOÀNG NGHI', 'Phó Trưởng ban', 'lehoangnghi.jpg', 2),
(62, 'Ban quản lý KKT', 'PHAN VIẾT HÙNG', 'Phó Trưởng ban', 'phanviethung.jpg', 2),
(63, 'Ban quản lý KKT', 'NGUYỄN THANH NGUYÊN', 'Phó trưởng ban', 'nguyenthanhnguyen.jpg', 2),
(64, 'Thanh tra tỉnh', 'NGUYỄN VĂN THƠM', 'Chánh Thanh tra tỉnh', 'nguyenvanthom.jpg', 1),
(65, 'Thanh tra tỉnh', 'NGUYỄN THANH HẢI', 'Phó Chánh Thanh tra tỉnh', 'nguyenthanhhai.jpg', 2),
(66, 'Thanh tra tỉnh', 'NGUYỄN XUÂN SƠN', 'Phó Chánh Thanh tra tỉnh', 'nguyenxuanson.jpg', 2),
(67, 'Sở dân tộc và tôn giáo', 'LƯƠNG ĐÌNH TIÊN', 'Giám đốc', 'luongdinhtien.jpg', 1),
(68, 'Sở dân tộc và tôn giáo', 'TRẦN VĂN THANH', 'Phó Giám đốc', 'tranvanthanh.jpg', 2),
(69, 'Sở dân tộc và tôn giáo', 'PHAN ĐỖ MINH THANH ANH', 'Giám đốc', 'phandominhthanhanh.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `diadiemdulich`
--

DROP TABLE IF EXISTS `diadiemdulich`;
CREATE TABLE IF NOT EXISTS `diadiemdulich` (
  `IDDiaDiem` int NOT NULL AUTO_INCREMENT,
  `IDLoaiDiaDiem` int DEFAULT NULL,
  `IDQuanHuyen` int DEFAULT NULL,
  `IDPhuongXa` int DEFAULT NULL,
  `TenDiaDiem` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `ShortDecription` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  `MapIframe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  `ListImage` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  PRIMARY KEY (`IDDiaDiem`),
  KEY `IDQuanHuyen` (`IDQuanHuyen`),
  KEY `IDPhuongXa` (`IDPhuongXa`),
  KEY `IDLoaiDiaDiem` (`IDLoaiDiaDiem`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `diadiem_dulich`
--

DROP TABLE IF EXISTS `diadiem_dulich`;
CREATE TABLE IF NOT EXISTS `diadiem_dulich` (
  `DiaDiemID` int NOT NULL AUTO_INCREMENT,
  `TenDiaDiem` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `DiaChi` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `LoaiHinhID` int DEFAULT NULL,
  `HinhAnh` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`DiaDiemID`),
  KEY `LoaiHinhID` (`LoaiHinhID`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `diadiem_dulich`
--

INSERT INTO `diadiem_dulich` (`DiaDiemID`, `TenDiaDiem`, `DiaChi`, `LoaiHinhID`, `HinhAnh`) VALUES
(2, 'Ghềnh Ráng Tiên Sa', 'Phường Ghềnh Ráng, TP Quy Nhơn', 1, 'ghenhrang.jpg'),
(3, 'Bãi Xếp', 'Phường Ghềnh Ráng, TP Quy Nhơn', 1, 'baixep.jpg'),
(4, 'Đảo Cù Lao Xanh', 'Xã Nhơn Châu, TP Quy Nhơn', 1, 'culaoxanh.jpg'),
(5, 'Đồi Cát Phương Mai', 'Xã Nhơn Lý, TP Quy Nhơn', 1, 'phuongmai.jpg'),
(6, 'Hải đăng Hòn Nước', 'Xã Mỹ Thọ,Huyện Phù Mỹ', 1, 'haidang.jpg'),
(7, 'Tháp Bánh Ít', 'Phước Hiệp, Tuy Phước', 2, 'thapbanhit.jpg'),
(8, 'Bảo tàng Quang Trung', 'Thị trấn Phú Phong, Tây Sơn', 2, 'quangtrung.jpg'),
(9, 'Tháp Đôi', 'Đường Trần Hưng Đạo, TP Quy Nhơn', 2, 'thapdoi.jpg'),
(10, 'Thành cổ Đồ Bàn', 'An Nhơn, Bình Định', 2, 'doban.jpg'),
(11, 'Đàn tế Trời Đất', 'Tây Sơn, Bình Định', 2, 'dantetroi.jpg'),
(12, 'Di tích Gò Lăng', 'Phù Cát, Bình Định', 2, 'golang.jpg'),
(13, 'Kỳ Co', 'Xã Nhơn Lý, TP Quy Nhơn', 3, 'kyco.jpg'),
(14, 'Hòn Khô', 'Xã Nhơn Hải, TP Quy Nhơn', 3, 'honkho.jpg'),
(15, 'Khu dã ngoại Trung Lương', 'Xã Cát Tiến, Phù Cát', 3, 'trungluong.jpg'),
(16, 'Khu du lịch Hầm Hô', 'Xã Tây Phú, Tây Sơn', 3, 'hamho.jpg'),
(17, 'Safari FLC Zoo', 'Xã Nhơn Lý, TP Quy Nhơn', 3, 'flczoo.jpg'),
(18, 'Khu du lịch sinh thái Cửa Biển', 'TP Quy Nhơn', 3, 'cuabien.jpg'),
(19, 'Bánh hỏi lòng heo Diêu Trì', 'Thị trấn Diêu Trì, Tuy Phước', 4, 'banhhoi.jpg'),
(20, 'Bún chả cá Quy Nhơn', 'TP Quy Nhơn', 4, 'buncha.jpg'),
(21, 'Bánh xèo tôm nhảy', 'TP Quy Nhơn', 4, 'banhxeo.jpg'),
(22, 'Nem chợ Huyện', 'An Nhơn, Bình Định', 4, 'nemchohuyen.jpg'),
(23, 'Chả ram tôm đất', 'Phù Mỹ, Bình Định', 4, 'charam.jpg'),
(24, 'Bánh ít lá gai', 'Tây Sơn, Bình Định', 4, 'banhitlagai.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `donvihiepquan`
--

DROP TABLE IF EXISTS `donvihiepquan`;
CREATE TABLE IF NOT EXISTS `donvihiepquan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tencoquan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hoten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chucvu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capbac` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donvihiepquan`
--

INSERT INTO `donvihiepquan` (`id`, `tencoquan`, `hoten`, `chucvu`, `hinhanh`, `capbac`) VALUES
(1, 'Bộ chỉ huy Bộ đội biên phòng tỉnh', 'Đại tá NGUYỄN VĂN LĨNH', 'Chỉ huy trưởng', 'nguyenvanlinh.jpg', 1),
(2, 'Bộ chỉ huy Bộ đội biên phòng tỉnh', 'Đại tá PHAN TRƯỜNG SƠN', 'Chính ủy', 'phantruongson.jpg', 2),
(3, 'Bộ chỉ huy Bộ đội biên phòng tỉnh', 'Thượng tá NGUYỄN THÀNH CÔNG', 'Phó Chỉ huy trưởng, kiêm Tham mưu trưởng', 'nguyenthanhcong.jpg', 2),
(4, 'Bộ chỉ huy Bộ đội biên phòng tỉnh', 'Đại tá NGUYỄN BÁ BÌNH', 'Phó Chính ủy', 'nguyenbabinh.jpg', 2),
(5, 'Bộ chỉ huy Bộ đội biên phòng tỉnh', 'Đại tá TRẦN VĂN DŨNG', 'Phó Chỉ huy trưởng nghiệp vụ', 'tranvandung.jpg', 2),
(6, 'Bộ chỉ huy Bộ đội biên phòng tỉnh', 'Đại tá NGUYỄN TRUNG HÀ', 'Phó Chỉ huy trưởng', 'nguyentrungha.jpg', 2),
(7, 'Bộ chỉ huy Quân sự tỉnh', 'Đại tá ĐỖ XUÂN HÙNG', 'Chỉ huy trưởng', 'doxuanhung.jpg', 1),
(8, 'Bộ chỉ huy Quân sự tỉnh', 'Đại tá NGUYỄN XUÂN SƠN', 'Chính ủy', 'nguyenxuanson.jpg', 2),
(9, 'Bộ chỉ huy Quân sự tỉnh', 'Thượng tá LÊ ANH TUẤN', 'Phó Chỉ huy trưởng, kiêm Tham mưu trưởng', 'leanhtuan.jpg', 2),
(10, 'Bộ chỉ huy Quân sự tỉnh', 'Đại tá THÂN TRỌNG MINH', 'Phó Chính ủy', 'thantrongminh.jpg', 2),
(11, 'Bộ chỉ huy Quân sự tỉnh', 'Đại tá NGUYỄN VĂN DƯ', 'Phó Chỉ huy trưởng', 'nguyenvandu.jpg', 2),
(12, 'Công an tỉnh', 'VÕ ĐỨC NGUYỆN', 'Giám đốc', 'voducnguyen.jpg', 1),
(13, 'Công an tỉnh', 'NGÔ CỰ VINH', 'Phó Giám đốc', 'ngocuvinh.jpg', 2),
(14, 'Công an tỉnh', 'HUỲNH BẢO NGUYÊN', 'Phó Giám đốc', 'huynhbaonguyen.jpg', 2),
(15, 'Công an tỉnh', 'LÊ HỒNG THÁI', 'Phó Giám đốc', 'lehongthai.jpg', 2),
(16, 'Công an tỉnh', 'NGUYỄN CHÍ LINH', 'Phó Giám đốc', 'nguyenchilinh.jpg', 2),
(17, 'Chi cục thống kê tỉnh Bình Định', 'ĐỖ MINH DƯỠNG', 'Phó Chi Cục Trưởng Phụ trách', 'dominhduong.jpg', 1),
(18, 'Chi cục thống kê tỉnh Bình Định', 'NGUYỄN CÔNG LUẬN', 'Phó Chi Cục Trưởng', 'nguyencongluan.jpg', 1),
(19, 'Tòa án nhân dân tỉnh Bình Định', 'MAI ANH TÀI', 'Chánh án', 'maianhtai.jpg', 1),
(20, 'Tòa án nhân dân tỉnh Bình Định', 'NGUYỄN THÚY LIÊN', 'Phó Chánh án', 'nguyenthuylien.jpg', 2),
(21, 'Tòa án nhân dân tỉnh Bình Định', 'VĂN THANH GIA', 'Phó Chánh án', 'vanthanhgia.jpg', 2),
(22, 'Tòa án nhân dân tỉnh Bình Định', 'NGUYỄN VĂN THANH', 'Phó Chánh án', 'nguyenvanthanh.jpg', 2),
(23, 'Viện kiểm sát nhân dân tỉnh', 'LÊ TRUNG HƯNG', 'Viện trưởng', 'letrunghung.jpg', 1),
(24, 'Viện kiểm sát nhân dân tỉnh', 'NGUYỄN THÀNH QUÁT', 'Phó Viện trưởng', 'nguyenthanhquat.jpg', 2),
(25, 'Viện kiểm sát nhân dân tỉnh', 'TRẦN MINH QUỐC', 'Phó Viện trưởng', 'tranminhquoc.jpg', 2),
(26, 'Bảo hiểm xã hội khu vực XXIII', 'VÕ NĂM', 'Giám đốc', 'vonam.jpg', 1),
(27, 'Bảo hiểm xã hội khu vực XXIII', 'TRƯƠNG ĐỀ', 'Phó Giám đốc', 'truongde.jpg', 2),
(28, 'Bảo hiểm xã hội khu vực XXIII', 'ĐẶNG VĂN LÝ', 'Phó Giám đốc', 'dangvanly.jpg', 2),
(29, 'Bảo hiểm xã hội khu vực XXIII', 'NGUYỄN VĂN THIÊN', 'Phó Giám đốc', 'nguyenvanthien.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `donvisunghiep`
--

DROP TABLE IF EXISTS `donvisunghiep`;
CREATE TABLE IF NOT EXISTS `donvisunghiep` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `chucvu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `capbac` int DEFAULT NULL,
  `sunghiep` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `anh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donvisunghiep`
--

INSERT INTO `donvisunghiep` (`id`, `ten`, `chucvu`, `capbac`, `sunghiep`, `anh`) VALUES
(1, 'LƯU NHẤT PHONG', 'Giám đốc', 1, 'Ban quản lý dự án các công trình giao thông và dân dụng', 'luunhatphong.jpg'),
(2, 'PHẠM MINH QUỐC', 'Phó Giám đốc', 2, 'Ban quản lý dự án các công trình giao thông và dân dụng', 'phamminhquoc.jpg'),
(3, 'NGÔ ANH TUẤN', 'Phó Giám đốc', 2, 'Ban quản lý dự án các công trình giao thông và dân dụng', 'ngoanhtuan.jpg'),
(4, 'ĐINH CÔNG HOÀNG', 'Phó Giám đốc', 2, 'Ban quản lý dự án các công trình giao thông và dân dụng', 'dinhconghoang.jpg'),
(5, 'HỒ QUANG TRUNG', 'Phó Giám đốc', 2, 'Ban quản lý dự án các công trình giao thông và dân dụng', 'hoquangtrung.jpg'),
(6, 'PHẠM BÁC ÁI', 'Phó Giám đốc', 2, 'Ban quản lý dự án các công trình giao thông và dân dụng', 'phambacai.jpg'),
(7, 'NGÔ TÙNG SƠN', 'Giám đốc', 1, 'Trung tâm Phát triển quỹ đất tỉnh', 'ngotungson.jpg'),
(8, 'ĐẶNG VĂN VIỆT', 'Phó Trưởng ban', 2, 'Trung tâm Phát triển quỹ đất tỉnh', 'dangvanviet.jpg'),
(9, 'LÊ CÔNG BÌNH', 'Phó Giám đốc', 2, 'Trung tâm Phát triển quỹ đất tỉnh', 'lecongbinh.jpg'),
(10, 'TÔ TẤN THI', 'Giám đốc', 1, 'Ban quản lý dự án Nông nghiệp và phát triển nông thôn', 'totanthi.jpg'),
(11, 'NGUYỄN HỮU THẠNH', 'Phó Giám đốc', 2, 'Ban quản lý dự án Nông nghiệp và phát triển nông thôn', 'nguyenhuuthanh.jpg'),
(12, 'HỒ NGUYÊN SĨ', 'Phó Giám đốc', 2, 'Ban quản lý dự án Nông nghiệp và phát triển nông thôn', 'honguyensi.jpg'),
(13, 'NGUYỄN CÔNG SƠN', 'Giám đốc', 1, 'Đài phát thanh và truyền hình Bình Định', 'nguyencongson.jpg'),
(14, 'NGUYỄN MINH PHƯƠNG', 'Phó Giám đốc', 2, 'Đài phát thanh và truyền hình Bình Định', 'nguyenminhphuong.jpg'),
(15, 'VŨ THỊ NGA', 'Phó Giám đốc', 2, 'Đài phát thanh và truyền hình Bình Định', 'vuthinga.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hdnd`
--

DROP TABLE IF EXISTS `hdnd`;
CREATE TABLE IF NOT EXISTS `hdnd` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `chucvu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `anh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `capbac` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hdnd`
--

INSERT INTO `hdnd` (`id`, `ten`, `chucvu`, `anh`, `capbac`) VALUES
(1, 'HỒ QUỐC DŨNG', 'Ủy viên Trung ương Đảng Bí thư Tỉnh ủy, Chủ tịch HĐND tỉnh', 'hoquocdung.jpg', 1),
(2, 'ĐOÀN VĂN PHI', 'Ủy viên Ban Thường vụ tỉnh ủy Phó Chủ tịch Thường trực HĐND tỉnh', 'doanvanphi.jpg', 2),
(3, 'HUỲNH THÚY VÂN', 'Ủy viên Ban chấp hành Đảng bộ tỉnh ủy Phó Chủ tịch HĐND tỉnh', 'huynhthuyvan.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `lanhdao`
--

DROP TABLE IF EXISTS `lanhdao`;
CREATE TABLE IF NOT EXISTS `lanhdao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `chucvu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `anh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `capbac` int DEFAULT NULL,
  `donvi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lanhdao`
--

INSERT INTO `lanhdao` (`id`, `ten`, `chucvu`, `anh`, `capbac`, `donvi`) VALUES
(1, 'HỒ QUỐC DŨNG', 'ỦY VIÊN BCH TW ĐẢNG<br>Bí thư Tỉnh ủy, Chủ tịch HĐND tỉnh', 'hoquocdung.jpg', 1, 'Lãnh đạo Tỉnh ủy'),
(2, 'LÊ KIM TOÀN', 'PHÓ BÍ THƯ TT TỈNH ỦY<br>Trưởng đoàn ĐBQH hội tỉnh', 'lekimtoan.jpg', 2, 'Lãnh đạo Tỉnh ủy'),
(3, 'PHẠM ANH TUẤN', 'PHÓ BÍ THƯ TỈNH ỦY<br>Chủ tịch UBND tỉnh', 'phamanhtuan.jpg', 2, 'Lãnh đạo Tỉnh ủy'),
(18, 'HỒ QUỐC DŨNG', 'ỦY VIÊN BCH TW ĐẢNG<br> Bí thư Tỉnh ủy, Chủ tịch HĐND tỉnh', 'hoquocdung.jpg', 1, 'Ban thường vụ Tỉnh ủy'),
(19, 'LÊ KIM TOÀN', 'PHÓ BÍ THƯ THƯỜNG TRỰC TỈNH ỦY <br> Trưởng đoàn ĐBQH hội tỉnh', 'lekimtoan.jpg', 2, 'Ban thường vụ Tỉnh ủy'),
(20, 'PHẠM ANH TUẤN', 'PHÓ BÍ THƯ TỈNH ỦY<br> Chủ tịch UBND tỉnh', 'phamanhtuan.jpg', 2, 'Ban thường vụ Tỉnh ủy'),
(21, 'NGUYỄN GIỜ', 'ỦY VIÊN BTV TỈNH ỦY', 'nguyengio.jpg', 2, 'Ban thường vụ Tỉnh ủy'),
(22, 'ĐẶNG VĨNH SƠN', 'ỦY VIÊN BTV TỈNH ỦY<br> Trưởng Ban Nội chính Tỉnh ủy', 'dangvinhson.jpg', 2, 'Ban thường vụ Tỉnh ủy'),
(23, 'TRẦN CANG', 'ỦY VIÊN BTV TỈNH ỦY <br> Chủ nhiệm Ủy ban kiểm tra Tỉnh ủy', 'trancang.jpg', 2, 'Ban thường vụ Tỉnh ủy'),
(24, 'NGUYỄN THỊ PHONG VŨ', 'ỦY VIÊN BTV TỈNH ỦY<br> Trưởng Ban Tuyên giáo và Dân vận Tỉnh ủy', 'nguyenthiphongvu.jpg', 2, 'Ban thường vụ Tỉnh ủy'),
(25, 'NGUYỄN TUẤN THANH', 'ỦY VIÊN BTV TỈNH ỦY<br> Phó Chủ tịch TT UBND tỉnh', 'nguyentuanthanh.jpg', 2, 'Ban thường vụ Tỉnh ủy'),
(26, 'ĐOÀN VĂN PHI', 'ỦY VIÊN BTV TỈNH ỦY<br> Phó Chủ tịch TT HĐND tỉnh', 'doanvanphi.jpg', 2, 'Ban thường vụ Tỉnh ủy'),
(27, 'VÕ ĐỨC NGUYỆN', 'ỦY VIÊN BTV TỈNH ỦY<br> Giám đốc Công an tỉnh', 'voducnguyen.jpg', 2, 'Ban thường vụ Tỉnh ủy'),
(28, 'ĐỖ XUÂN HÙNG', 'ỦY VIÊN BTV TỈNH ỦY<br> Chỉ huy trưởng BCH quân sự tỉnh', 'doxuanhung.jpg', 2, 'Ban thường vụ Tỉnh ủy'),
(29, 'MAI VIỆT TRUNG', 'ỦY VIÊN BTV TỈNH ỦY<br> Trưởng Ban Tổ chức Tỉnh ủy', 'maiviettrung.jpg', 2, 'Ban thường vụ Tỉnh ủy'),
(30, 'NGUYỄN VĂN DŨNG', 'ỦY VIÊN BTV TỈNH ỦY<br> Bí thư Thành ủy Quy Nhơn', 'nguyenvandung.jpg', 2, 'Ban thường vụ Tỉnh ủy'),
(31, 'NGUYỄN TỰ CÔNG HOÀNG', 'ỦY VIÊN BTV TỈNH ỦY<br> Phó Chủ tịch UBND tỉnh Trưởng Ban Quản lý KKT tỉnh', 'nguyentuconghoang.jpg', 2, 'Ban thường vụ Tỉnh ủy');

-- --------------------------------------------------------

--
-- Table structure for table `loaidiadiemdulich`
--

DROP TABLE IF EXISTS `loaidiadiemdulich`;
CREATE TABLE IF NOT EXISTS `loaidiadiemdulich` (
  `IDLoaiDiaDiem` int NOT NULL AUTO_INCREMENT,
  `TenLoaiDiaDiem` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`IDLoaiDiaDiem`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `loaidiadiemdulich`
--

INSERT INTO `loaidiadiemdulich` (`IDLoaiDiaDiem`, `TenLoaiDiaDiem`) VALUES
(1, 'Danh lam thắng cảnh'),
(2, 'Di tích lịch sử');

-- --------------------------------------------------------

--
-- Table structure for table `loaihinh_dulich`
--

DROP TABLE IF EXISTS `loaihinh_dulich`;
CREATE TABLE IF NOT EXISTS `loaihinh_dulich` (
  `LoaiHinhID` int NOT NULL AUTO_INCREMENT,
  `TenLoaiHinh` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`LoaiHinhID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `loaihinh_dulich`
--

INSERT INTO `loaihinh_dulich` (`LoaiHinhID`, `TenLoaiHinh`) VALUES
(1, 'Danh lam - thắng cảnh'),
(2, 'Di tích lịch sử'),
(3, 'Khu du lịch'),
(4, 'Ẩm thực Bình Định');

-- --------------------------------------------------------

--
-- Table structure for table `phuongxa`
--

DROP TABLE IF EXISTS `phuongxa`;
CREATE TABLE IF NOT EXISTS `phuongxa` (
  `IDQuanHuyen` int DEFAULT NULL,
  `TenPhuongXa` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `IDPhuongXa` int NOT NULL,
  PRIMARY KEY (`IDPhuongXa`),
  KEY `IDQuanHuyen` (`IDQuanHuyen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `phuongxa`
--

INSERT INTO `phuongxa` (`IDQuanHuyen`, `TenPhuongXa`, `IDPhuongXa`) VALUES
(540, 'Phường Nhơn Bình', 21550),
(540, 'Phường Nhơn Phú', 21553),
(540, 'Phường Đống Đa', 21556),
(540, 'Phường Trần Quang Diệu', 21559),
(540, 'Phường Hải Cảng', 21562),
(540, 'Phường Quang Trung', 21565),
(540, 'Phường Thị Nại', 21568),
(540, 'Phường Lê Hồng Phong', 21571),
(540, 'Phường Trần Hưng Đạo', 21574),
(540, 'Phường Ngô Mây', 21577),
(540, 'Phường Lý Thường Kiệt', 21580),
(540, 'Phường Lê Lợi', 21583),
(540, 'Phường Trần Phú', 21586),
(540, 'Phường Bùi Thị Xuân', 21589),
(540, 'Phường Nguyễn Văn Cừ', 21592),
(540, 'Phường Ghềnh Ráng', 21595),
(540, 'Xã Nhơn Lý', 21598),
(540, 'Xã Nhơn Hội', 21601),
(540, 'Xã Nhơn Hải', 21604),
(540, 'Xã Nhơn Châu', 21607),
(542, 'Thị trấn An Lão', 21609),
(542, 'Xã An Hưng', 21610),
(542, 'Xã An Trung', 21613),
(542, 'Xã An Dũng', 21616),
(542, 'Xã An Vinh', 21619),
(542, 'Xã An Toàn', 21622),
(542, 'Xã An Tân', 21625),
(542, 'Xã An Hòa', 21628),
(542, 'Xã An Quang', 21631),
(542, 'Xã An Nghĩa', 21634),
(543, 'Thị trấn  Tam Quan', 21637),
(543, 'Thị trấn Bồng Sơn', 21640),
(543, 'Xã Hoài Sơn', 21643),
(543, 'Xã Hoài Châu Bắc', 21646),
(543, 'Xã Hoài Châu', 21649),
(543, 'Xã Hoài Phú', 21652),
(543, 'Xã Tam Quan Bắc', 21655),
(543, 'Xã Tam Quan Nam', 21658),
(543, 'Xã Hoài Hảo', 21661),
(543, 'Xã Hoài Thanh Tây', 21664),
(543, 'Xã Hoài Thanh', 21667),
(543, 'Xã Hoài Hương', 21670),
(543, 'Xã Hoài Tân', 21673),
(543, 'Xã Hoài Hải', 21676),
(543, 'Xã Hoài Xuân', 21679),
(543, 'Xã Hoài Mỹ', 21682),
(543, 'Xã Hoài Đức', 21685),
(544, 'Thị trấn Tăng Bạt Hổ', 21688),
(544, 'Xã Ân Hảo Tây', 21690),
(544, 'Xã Ân Hảo Đông', 21691),
(544, 'Xã Ân Sơn', 21694),
(544, 'Xã Ân Mỹ', 21697),
(544, 'Xã Dak Mang', 21700),
(544, 'Xã Ân Tín', 21703),
(544, 'Xã Ân Thạnh', 21706),
(544, 'Xã Ân Phong', 21709),
(544, 'Xã Ân Đức', 21712),
(544, 'Xã Ân Hữu', 21715),
(544, 'Xã Bok Tới', 21718),
(544, 'Xã Ân Tường Tây', 21721),
(544, 'Xã Ân Tường Đông', 21724),
(544, 'Xã Ân Nghĩa', 21727),
(545, 'Thị trấn Phù Mỹ', 21730),
(545, 'Thị trấn Bình Dương', 21733),
(545, 'Xã Mỹ Đức', 21736),
(545, 'Xã Mỹ Châu', 21739),
(545, 'Xã Mỹ Thắng', 21742),
(545, 'Xã Mỹ Lộc', 21745),
(545, 'Xã Mỹ Lợi', 21748),
(545, 'Xã Mỹ An', 21751),
(545, 'Xã Mỹ Phong', 21754),
(545, 'Xã Mỹ Trinh', 21757),
(545, 'Xã Mỹ Thọ', 21760),
(545, 'Xã Mỹ Hòa', 21763),
(545, 'Xã Mỹ Thành', 21766),
(545, 'Xã Mỹ Chánh', 21769),
(545, 'Xã Mỹ Quang', 21772),
(545, 'Xã Mỹ Hiệp', 21775),
(545, 'Xã Mỹ Tài', 21778),
(545, 'Xã Mỹ Cát', 21781),
(545, 'Xã Mỹ Chánh Tây', 21784),
(546, 'Thị trấn Vĩnh Thạnh', 21786),
(546, 'Xã Vĩnh Sơn', 21787),
(546, 'Xã Vĩnh Kim', 21790),
(546, 'Xã Vĩnh Hiệp', 21796),
(546, 'Xã Vĩnh Hảo', 21799),
(546, 'Xã Vĩnh Hòa', 21801),
(546, 'Xã Vĩnh Thịnh', 21802),
(546, 'Xã Vĩnh Thuận', 21804),
(546, 'Xã Vĩnh Quang', 21805),
(547, 'Thị trấn Phú Phong', 21808),
(547, 'Xã Bình Tân', 21811),
(547, 'Xã Tây Thuận', 21814),
(547, 'Xã Bình Thuận', 21817),
(547, 'Xã Tây Giang', 21820),
(547, 'Xã Bình Thành', 21823),
(547, 'Xã Tây An', 21826),
(547, 'Xã Bình Hòa', 21829),
(547, 'Xã Tây Bình', 21832),
(547, 'Xã Bình Tường', 21835),
(547, 'Xã Tây Vinh', 21838),
(547, 'Xã Vĩnh An', 21841),
(547, 'Xã Tây Xuân', 21844),
(547, 'Xã Bình Nghi', 21847),
(547, 'Xã Tây Phú', 21850),
(548, 'Thị trấn Ngô Mây', 21853),
(548, 'Xã Cát Sơn', 21856),
(548, 'Xã Cát Minh', 21859),
(548, 'Xã Cát Khánh', 21862),
(548, 'Xã Cát Tài', 21865),
(548, 'Xã Cát Lâm', 21868),
(548, 'Xã Cát Hanh', 21871),
(548, 'Xã Cát Thành', 21874),
(548, 'Xã Cát Trinh', 21877),
(548, 'Xã Cát Hải', 21880),
(548, 'Xã Cát Hiệp', 21883),
(548, 'Xã Cát Nhơn', 21886),
(548, 'Xã Cát Hưng', 21889),
(548, 'Xã Cát Tường', 21892),
(548, 'Xã Cát Tân', 21895),
(548, 'Xã Cát Tiến', 21898),
(548, 'Xã Cát Thắng', 21901),
(548, 'Xã Cát Chánh', 21904),
(549, 'Phường Bình Định', 21907),
(549, 'Phường Đập Đá', 21910),
(549, 'Xã Nhơn Mỹ', 21913),
(549, 'Phường Nhơn Thành', 21916),
(549, 'Xã Nhơn Hạnh', 21919),
(549, 'Xã Nhơn Hậu', 21922),
(549, 'Xã Nhơn Phong', 21925),
(549, 'Xã Nhơn An', 21928),
(549, 'Xã Nhơn Phúc', 21931),
(549, 'Phường Nhơn Hưng', 21934),
(549, 'Xã Nhơn Khánh', 21937),
(549, 'Xã Nhơn Lộc', 21940),
(549, 'Phường Nhơn Hoà', 21943),
(549, 'Xã Nhơn Tân', 21946),
(549, 'Xã Nhơn Thọ', 21949),
(550, 'Thị trấn Tuy Phước', 21952),
(550, 'Thị trấn Diêu Trì', 21955),
(550, 'Xã Phước Thắng', 21958),
(550, 'Xã Phước Hưng', 21961),
(550, 'Xã Phước Quang', 21964),
(550, 'Xã Phước Hòa', 21967),
(550, 'Xã Phước Sơn', 21970),
(550, 'Xã Phước Hiệp', 21973),
(550, 'Xã Phước Lộc', 21976),
(550, 'Xã Phước Nghĩa', 21979),
(550, 'Xã Phước Thuận', 21982),
(550, 'Xã Phước An', 21985),
(550, 'Xã Phước Thành', 21988),
(540, 'Xã Phước Mỹ', 21991),
(551, 'Thị trấn Vân Canh', 21994),
(551, 'Xã Canh Liên', 21997),
(551, 'Xã Canh Hiệp', 22000),
(551, 'Xã Canh Vinh', 22003),
(551, 'Xã Canh Hiển', 22006),
(551, 'Xã Canh Thuận', 22009),
(551, 'Xã Canh Hòa', 22012);

-- --------------------------------------------------------

--
-- Table structure for table `quanhuyen`
--

DROP TABLE IF EXISTS `quanhuyen`;
CREATE TABLE IF NOT EXISTS `quanhuyen` (
  `TenQuanHuyen` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `IDQuanHuyen` int NOT NULL,
  PRIMARY KEY (`IDQuanHuyen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `quanhuyen`
--

INSERT INTO `quanhuyen` (`TenQuanHuyen`, `IDQuanHuyen`) VALUES
('Thành phố Qui Nhơn', 540),
('Huyện An Lão', 542),
('Huyện Hoài Nhơn', 543),
('Huyện Hoài Ân', 544),
('Huyện Phù Mỹ', 545),
('Huyện Vĩnh Thạnh', 546),
('Huyện Tây Sơn', 547),
('Huyện Phù Cát', 548),
('Thị xã An Nhơn', 549),
('Huyện Tuy Phước', 550),
('Huyện Vân Canh', 551);

-- --------------------------------------------------------

--
-- Table structure for table `ubmttqvn`
--

DROP TABLE IF EXISTS `ubmttqvn`;
CREATE TABLE IF NOT EXISTS `ubmttqvn` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hoten` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chucvu` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capbac` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ubmttqvn`
--

INSERT INTO `ubmttqvn` (`id`, `hoten`, `chucvu`, `hinhanh`, `capbac`) VALUES
(1, 'LÊ BÌNH THANH', 'Chủ tịch', 'lebinhthanh.jpg', 1),
(2, 'ĐINH VĂN LUNG', 'Phó Chủ tịch', 'dinhvanlung.jpg', 2),
(3, 'HUỲNH CAO NHẤT', 'Phó Chủ tịch', 'huynhcaonhat.jpg', 2),
(4, 'HỒ THỊ KIM THU', 'Phó Chủ tịch', 'hothikimthu.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ubnd`
--

DROP TABLE IF EXISTS `ubnd`;
CREATE TABLE IF NOT EXISTS `ubnd` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `chucvu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `anh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `capbac` int NOT NULL,
  `diaphuong` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ubnd`
--

INSERT INTO `ubnd` (`id`, `ten`, `chucvu`, `anh`, `capbac`, `diaphuong`) VALUES
(1, 'NGUYỄN HỮU KHÚC', 'Chủ tịch', 'nguyenhuukhuc.jpg', 1, 'TP Quy Nhơn'),
(2, 'NGUYỄN CÔNG VỊNH', 'Phó Chủ tịch Thường trực', 'nguyencongvinh.jpg', 2, 'TP Quy Nhơn'),
(3, 'NGUYỄN ĐỨC TOÀN', 'Phó Chủ tịch', 'nguyenductoan.jpg', 2, 'TP Quy Nhơn'),
(4, 'NGUYỄN PHƯƠNG NAM', 'Phó Chủ tịch', 'nguyenphuongnam.jpg', 2, 'TP Quy Nhơn'),
(5, 'LÊ THANH TÙNG', 'Chủ tịch', 'lethanhtung.jpg', 1, 'TX An Nhơn'),
(6, 'BÙI VĂN CƯ', 'Phó Chủ tịch Thường trực', 'buivancu.jpg', 2, 'TX An Nhơn'),
(7, 'MAI XUÂN TIẾN', 'Phó Chủ tịch', 'maixuantien.jpg', 2, 'TX An Nhơn'),
(8, 'LÊ ĐĂNG TUẤN', 'Chủ tịch', 'ledangtuan.jpg', 1, 'TX Hoài Nhơn'),
(9, 'PHẠM VĂN CHUNG', 'Phó Chủ tịch Thường trực', 'phamvanchung.jpg', 2, 'TX Hoài Nhơn'),
(10, 'NGUYỄN CHÍ CÔNG', 'Phó Chủ tịch', 'nguyenchicong.jpg', 2, 'TX Hoài Nhơn'),
(11, 'LÊ MINH ĐỨC', 'Phó Chủ tịch', 'leminhduc.jpg', 2, 'TX Hoài Nhơn'),
(12, 'LÊ VĂN LỊCH', 'Chủ tịch', 'levanlich.jpg', 1, 'huyện Phù Mỹ'),
(13, 'PHAN HỮU DUY', 'Phó Chủ tịch Thường trực', 'phanhuuduy.jpg', 2, 'huyện Phù Mỹ'),
(14, 'TRẦN QUỐC VINH', 'Phó Chủ tịch', 'tranquocvinh.jpg', 2, 'huyện Phù Mỹ'),
(15, 'HỒ NGỌC CHÁNH', 'Phó Chủ tịch', 'hongocchanh.jpg', 2, 'huyện Phù Mỹ'),
(16, 'TÔ HIẾU TRUNG', 'Chủ tịch', 'tohieutrung.jpg', 1, 'huyện Vĩnh Thạnh'),
(17, 'HUỲNH ĐỨC BẢO', 'Phó Chủ tịch Thường trực', 'huynhducbao.jpg', 2, 'huyện Vĩnh Thạnh'),
(18, 'LÊ MINH THÔNG', 'Phó Chủ tịch', 'leminhthong.jpg', 2, 'huyện Vĩnh Thạnh'),
(19, 'NGUYỄN VĂN HOÀ', 'Chủ tịch', 'nguyenvanhoa.jpg', 1, 'huyện Hoài Ân'),
(20, 'NGUYỄN XUÂN PHONG', 'Phó Chủ tịch Thường trực', 'nguyenxuanphong.jpg', 2, 'huyện Hoài Ân'),
(21, 'TRẦN VĂN THƠM', 'Phó Chủ tịch', 'tranvanthom.jpg', 2, 'huyện Hoài Ân'),
(22, 'DƯƠNG HIỆP HÒA', 'Chủ tịch', 'duonghiephoa.jpg', 1, 'huyện Vân Canh'),
(23, 'NGUYỄN XUÂN VIỆT', 'Phó Chủ tịch Thường trực', 'nguyenxuanviet.jpg', 2, 'huyện Vân Canh'),
(24, 'PHAN VĂN CƯỜNG', 'Phó Chủ tịch', 'phanvancuong.jpg', 2, 'huyện Vân Canh'),
(25, 'NGUYỄN VĂN HƯNG', 'Chủ tịch', 'nguyenvanhung.jpg', 1, 'huyện Phù Cát'),
(26, 'ĐỖ XUÂN THẮNG', 'Phó Chủ tịch Thường trực', 'doxuanthang.jpg', 2, 'huyện Phù Cát'),
(27, 'PHẠM DŨNG LUẬN', 'Phó Chủ tịch', 'phamdungluan.jpg', 2, 'huyện Phù Cát'),
(28, 'BÙI QUỐC NGHỊ', 'Phó Chủ tịch', 'buiquocnghi.jpg', 2, 'huyện Phù Cát'),
(29, 'TRỊNH XUÂN LONG', 'Chủ tịch', 'trinhxuanlong.jpg', 1, 'huyện An Lão'),
(30, 'ĐỖ TÙNG LÂM', 'Phó Chủ tịch Thường trực', 'dotunglam.jpg', 2, 'huyện An Lão'),
(31, 'ĐINH VĂN PHÚ', 'Phó Chủ tịch', 'dinhvanphu.jpg', 2, 'huyện An Lão'),
(32, 'HUỲNH NAM', 'Chủ tịch', 'huynhnam.jpg', 1, 'huyện Tuy Phước'),
(33, 'NGUYỄN NGỌC XUÂN', 'Phó Chủ tịch Thường trực', 'nguyenngocxuan.jpg', 2, 'huyện Tuy Phước'),
(34, 'NGUYỄN HÙNG TÂN', 'Phó Chủ tịch', 'nguyenhungtan.jpg', 2, 'huyện Tuy Phước'),
(35, 'NGUYỄN VĂN KHÁNH', 'Chủ tịch', 'nguyenvankhanh.jpg', 1, 'huyện Tây Sơn'),
(36, 'BÙI VĂN MỸ', 'Phó Chủ tịch Thường trực', 'buivanmy.jpg', 2, 'huyện Tây Sơn');

-- --------------------------------------------------------

--
-- Table structure for table `ubnd_tinh`
--

DROP TABLE IF EXISTS `ubnd_tinh`;
CREATE TABLE IF NOT EXISTS `ubnd_tinh` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hoten` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chucvu` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capbac` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ubnd_tinh`
--

INSERT INTO `ubnd_tinh` (`id`, `hoten`, `chucvu`, `hinhanh`, `capbac`) VALUES
(1, 'PHẠM ANH TUẤN', 'Chủ tịch Ủy ban nhân dân tỉnh', 'phamanhtuan.jpg', 1),
(2, 'LÂM HẢI GIANG', 'Phó Chủ tịch Ủy ban nhân dân tỉnh', 'lamhaigiang.jpg', 2),
(3, 'NGUYỄN TUẤN THANH', 'Phó Chủ tịch Thường trực Ủy ban nhân dân tỉnh', 'nguyentuanthanh.jpg', 2),
(4, 'NGUYỄN TỰ CÔNG HOÀNG', 'Phó Chủ tịch Ủy ban nhân dân tỉnh', 'nguyentuconghoang.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

DROP TABLE IF EXISTS `userdata`;
CREATE TABLE IF NOT EXISTS `userdata` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `PassWord` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `AuthCookies` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `user_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `FullName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Phone` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Organization` varchar(266) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `CCCD` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `ROLE` int NOT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `ditmemay` (`UserName`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`UserID`, `UserName`, `PassWord`, `AuthCookies`, `user_img`, `Email`, `FullName`, `Phone`, `Alias`, `Organization`, `CCCD`, `ROLE`) VALUES
(6, 'YangKlee', '4f231459ddf38bcaa618bf72d7b752eb848e53321fd747b1678417aa55dd033b', '5b33fbeaadcf4cb4bf31faaa0e0eb58de22ac6e82ed85135574b996984d1975c', '1747892564_6_4651050044.jpg', 'khanhduong18072005@gmail.com', 'Nguyễn Khánh Dương', '035670105 ', 'Yang', 'Đại học Quy Nhơn', '052205006413', 1),
(7, 'Haru', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'deb77aa6825d7fdfd1fac4f9415acb90b643c5d94a432df681a8da7028fcf75b', NULL, '111', NULL, NULL, NULL, NULL, NULL, 0),
(8, 'trucluong837@gmail.com', '355b1bbfc96725cdce8f4a2708fda310a80e6d13315aec4e5eed2a75fe8032ce', '83413af552e380c701436ac160b26b2da20c58e2bf9288e02b75f965b620ccce', NULL, 'trucluong837@gmail.com', NULL, NULL, NULL, NULL, NULL, 0),
(9, 'Yang', '9589262630f775d921bef5b9b2d36fa40f91afebeab887deefc721ff3c787b2c', '67067134e579835a666fbda6489da714e9688b3de9b8b61681a194ea252a0bd7', NULL, 'nguyennambao055@gmail.com', NULL, NULL, NULL, NULL, NULL, 0),
(10, 'xxx', 'cd2eb0837c9b4c962c22d2ff8b5441b7b45805887f051d39bf133b583baf6860', '2c47d60fa303dce766060ca6307059306eb04b7a84645aa6cc9fbf88281be8c9', NULL, 'xxx', NULL, NULL, NULL, NULL, NULL, 0),
(11, 'Sahua', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', '46eab01945cabd358520165d1b1dbcb67881c3e835221193482f6d32604d1840', NULL, 'khanhduong18072005@gmail.com', NULL, NULL, NULL, NULL, NULL, 0),
(12, 'CuongChimDai', '7a64ce427ce0ca963ce9c3ab0da2db27c1f3ac9620444e1b4312422af8e093b9', '8a158025a8e895133966fec97a71a9842aaaeb28eaddf1ac5b35f7d8f6463d95', NULL, 'duong4651050044@st.qnu.edu.vn', NULL, NULL, NULL, NULL, NULL, 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`CategoryID`),
  ADD CONSTRAINT `article_ibfk_2` FOREIGN KEY (`AuthorID`) REFERENCES `userdata` (`UserID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`ArticleID`) REFERENCES `article` (`ArticleID`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `userdata` (`UserID`);

--
-- Constraints for table `diadiemdulich`
--
ALTER TABLE `diadiemdulich`
  ADD CONSTRAINT `diadiemdulich_ibfk_1` FOREIGN KEY (`IDQuanHuyen`) REFERENCES `quanhuyen` (`IDQuanHuyen`),
  ADD CONSTRAINT `diadiemdulich_ibfk_2` FOREIGN KEY (`IDPhuongXa`) REFERENCES `phuongxa` (`IDPhuongXa`),
  ADD CONSTRAINT `diadiemdulich_ibfk_3` FOREIGN KEY (`IDLoaiDiaDiem`) REFERENCES `loaidiadiemdulich` (`IDLoaiDiaDiem`);

--
-- Constraints for table `phuongxa`
--
ALTER TABLE `phuongxa`
  ADD CONSTRAINT `phuongxa_ibfk_1` FOREIGN KEY (`IDQuanHuyen`) REFERENCES `quanhuyen` (`IDQuanHuyen`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
