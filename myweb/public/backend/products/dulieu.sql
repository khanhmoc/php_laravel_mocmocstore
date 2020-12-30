-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 16, 2020 at 05:10 PM
-- Server version: 8.0.21
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dulieu`
--

-- --------------------------------------------------------

--
-- Table structure for table `chucnang`
--

DROP TABLE IF EXISTS `chucnang`;
CREATE TABLE IF NOT EXISTS `chucnang` (
  `ma` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ten_chuc_nang` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lien_ket` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ma_cha` int NOT NULL,
  `trang_thai` tinyint NOT NULL,
  `hien_menu` tinyint(1) NOT NULL,
  `cho_phep` tinyint(1) DEFAULT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_sua` datetime NOT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chucnang`
--

INSERT INTO `chucnang` (`ma`, `ten_chuc_nang`, `lien_ket`, `ma_cha`, `trang_thai`, `hien_menu`, `cho_phep`, `ngay_tao`, `ngay_sua`) VALUES
(1, 'Trang Chủ', '?controller=system&action=index', 0, 1, 1, 0, '2020-09-01 00:00:00', '2020-09-14 00:00:00'),
(2, 'Tài Khoản', '#', 0, 1, 1, 0, '2020-09-01 00:00:00', '2020-09-01 00:00:00'),
(3, 'Đăng Nhập', '?controller=user&action=login', 7, 1, 0, 1, '2020-09-01 00:00:00', '2020-09-01 00:00:00'),
(4, 'Thêm Sản phẩm', '?controller=product&action=create', 16, 1, 1, 0, '2020-09-01 00:00:00', '2020-09-01 00:00:00'),
(8, 'Xóa Sản Phẩm', '?controller=product&action=delete', 16, 1, 0, 0, '2020-10-01 00:00:00', '2020-10-22 00:00:00'),
(9, 'Sửa Sản Phẩm', '?controller=product&action=edit', 16, 1, 0, 0, '2020-10-07 00:00:00', '2020-10-14 00:00:00'),
(10, 'Thêm User', '?controller=user&action=create', 2, 1, 1, 0, '2020-10-08 12:55:32', '2020-10-08 12:55:32'),
(11, 'Xoá User', '?controller=user&action=delete', 2, 1, 0, 0, '2020-10-08 12:55:32', '2020-10-08 12:55:32'),
(12, 'Sản Phẩm', '?controller=product&action=index', 16, 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Log Out', '?controller=user&action=logout', 7, 1, 0, 1, '2020-10-07 00:00:00', '2020-10-14 00:00:00'),
(14, 'Check Login', '?controller=user&action=loginpost', 7, 1, 0, 1, '2020-10-07 00:00:00', '2020-10-14 00:00:00'),
(15, 'List Quyền', '?controller=role&action=index', 5, 1, 1, 0, '2020-10-01 00:00:00', '2020-10-22 00:00:00'),
(16, 'Sản Xuất', '#', 0, 1, 1, 0, '2020-09-01 00:00:00', '2020-09-14 00:00:00'),
(17, 'Sửa User', 'controller=user&action=edit\r\n', 2, 1, 0, 0, '2020-09-01 00:00:00', '2020-09-01 00:00:00'),
(5, 'Hệ Thống', '#', 0, 1, 1, 0, '2020-09-01 00:00:00', '2020-09-01 00:00:00'),
(18, 'Thêm Quyền', '?controller=role&action=add', 5, 1, 1, 0, '2020-09-01 00:00:00', '2020-09-01 00:00:00'),
(19, 'Cấp Quyền', '?controller=role&action=access', 5, 1, 0, 0, '2020-10-01 00:00:00', '2020-10-22 00:00:00'),
(20, 'Ghi Quyền', '?controller=role&action=accesspost', 19, 1, 0, 0, '2020-10-01 00:00:00', '2020-10-22 00:00:00'),
(21, 'Ghi Sửa Sản Phẩm', '?controller=product&action=editpost', 9, 1, 0, 0, '2020-10-07 00:00:00', '2020-10-14 00:00:00'),
(22, 'Ghi Thêm User', '?controller=user&action=createpost', 10, 1, 1, 0, '2020-10-08 12:55:32', '2020-10-08 12:55:32'),
(23, 'Ghi Thêm Sản phẩm', '?controller=product&action=createpost', 4, 1, 0, 0, '2020-09-01 00:00:00', '2020-09-01 00:00:00'),
(25, 'List User', '?controller=user&action=index', 2, 1, 1, 0, '2020-10-08 12:55:32', '2020-10-08 12:55:32'),
(26, 'Ghi Sửa User', 'controller=user&action=editpost\r\n', 17, 1, 0, 0, '2020-09-01 00:00:00', '2020-09-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

DROP TABLE IF EXISTS `danhmuc`;
CREATE TABLE IF NOT EXISTS `danhmuc` (
  `ma` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ma_cha` int NOT NULL,
  `ten` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hinh` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `trang_thai` enum('0','1','2') DEFAULT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_sua` datetime NOT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`ma`, `ma_cha`, `ten`, `hinh`, `mo_ta`, `trang_thai`, `ngay_tao`, `ngay_sua`) VALUES
(1, 1, 'Smartphone', 'hình 1', 'Các sản phẩm smart phone ', '1', '2020-09-01 00:00:00', '2020-09-16 00:00:00'),
(2, 1, 'Tablet', 'hinh 2', 'Các sản phẩm máy tính bảng ', '1', '2020-09-03 00:00:00', '2020-09-15 00:00:00'),
(3, 2, 'Đồng hồ', 'hinh 3', 'Đồng hồ thông minh và thiết bị đeo tay', '1', '2020-09-03 00:00:00', '2020-09-15 00:00:00'),
(4, 2, 'Laptop', 'hinh 4', 'Laptop bình dân, văn phòng , gaming , Mac', '1', '2020-09-03 00:00:00', '2020-09-15 00:00:00'),
(5, 1, 'Phụ Kiện', 'hinh 4', 'Dây cáp, củ sạc, ốp lưng, ... ', '1', '2020-09-03 00:00:00', '2020-09-15 00:00:00'),
(6, 1, 'Âm Thanh', 'hinh 5', 'Loa tai nghe và thiết bị âm thạh khác', '1', '2020-09-03 00:00:00', '2020-09-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

DROP TABLE IF EXISTS `donhang`;
CREATE TABLE IF NOT EXISTS `donhang` (
  `ma_don_hang` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `so_don` int UNSIGNED NOT NULL,
  `tong_tien` double NOT NULL,
  `ma_khach_hang` int NOT NULL,
  `ten_khach_hang` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sdt` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ten_nguoi_nhan` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email_nhan_hang` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sdt_nhan_hang` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi_nhan` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phi_van_chuyen` double NOT NULL,
  `cachthanhtoan` enum('0','1') NOT NULL,
  `ngay_giao` datetime NOT NULL,
  `trangthaidon` enum('0','1','2') NOT NULL,
  `trangthai` enum('0','1','2') NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_sua` datetime NOT NULL,
  PRIMARY KEY (`ma_don_hang`),
  KEY `makhachhang` (`ma_khach_hang`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
CREATE TABLE IF NOT EXISTS `khachhang` (
  `ma` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ho_ten` varchar(200) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `email` varchar(200) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `sdt` varchar(10) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `dia_chi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`ma`, `ho_ten`, `email`, `sdt`, `dia_chi`) VALUES
(1, 'Nguyễn Duy Khánh', 'duykhanhmoc@gmail.com', '0987548123', '89 Quang Trung Gò Vấp TPHCM'),
(2, 'Nguyễn Lê Minh Hiếu', 'hieuleminh@gmail.com', '0987456222', '998 Tân Sơn Bình Tân TPHCM'),
(3, 'Lê Minh Lưu', 'luusadi@gmail.com', '0786331122', '33 Hòng Hoa Thám,Tân Bình, TPHCM'),
(4, 'Lê Văn Hoàng', 'hoangha998@gmail.com', '0492819812', '33 Hoa Cúc,Phú Nhuận, TPHCM'),
(5, 'Ta Thị Lan Huyền', 'lanhuyen911@yahoo.com', '0989988654', '12 Nguyễn Văn Nghi , Gò Vấp , TPHCM'),
(6, 'Nguyễn Thị Huyền Anh', 'liliahuyen@outlook.com', '0987232614', '21 Lê Lợi, Gò Vấp , TPHCM'),
(7, 'Tô Thị Vân Anh', 'cloudyy9971@outlook.com', '0987976554', '55 Tố Hữu , Thanh Xuân , Hà Nội'),
(8, 'Diễm Quỳnh', 'quynhquynh@iuh.com', '0361987998', '671 Lý Quốc Sư , Hoàn Kiếm , Hà Nội'),
(9, 'Nguyễn VĂn Toàn', 'toanlanh@hgmail.com', '0356778443', '6 Lê Đại Hành, Hoàn Kiếm , Hà Nội'),
(10, 'Nguyễn Văn Xuân', 'xuantoiroi@hgmail.com', '0246887995', '889 Hang gai, Tây Hồ, Hà Nội'),
(11, 'Nguyễn Xuân Trường', 'xuantruongne@gmail.com', '0257886452', '9 Hang Trống, Tây Hồ, Hà Nội');

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

DROP TABLE IF EXISTS `nhacungcap`;
CREATE TABLE IF NOT EXISTS `nhacungcap` (
  `ma` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ten_ncc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hinh` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `so_dien_thoai` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `trang_thai` tinyint DEFAULT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_sua` datetime NOT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`ma`, `ten_ncc`, `hinh`, `mo_ta`, `dia_chi`, `so_dien_thoai`, `email`, `trang_thai`, `ngay_tao`, `ngay_sua`) VALUES
(1, ' Công ty cổ phần BBK Electronics', 'hinh2', 'OPPO Electronics Corp là nhà sản xuất thiết bị điện tử, điện thoại di động Android Trung Quốc, có trụ sở đặt tại Đông Hoản, Quảng Đông, công ty con của tập đoàn điện tử BBK Electronics. OPPO cung cấp một số sản phẩm chính như máy nghe nhạc MP3, eBook, DVD/Blu-ray và điện thoại thông minh.', '889 Quang Phổ , Thanh Xuân , Hà Nội', '1900444444', 'oppovn@gmail.com', 1, '2020-09-01 00:00:00', '2020-09-17 00:00:00'),
(2, 'Samsung Việt Nam', 'hh2', 'Tập đoàn Samsung – là một tập đoàn đa quốc gia khổng lồ của Hàn Quốc có tổng hành dinh được đặt tại khu phức hợp Samsung Town, quận Seocho-gu, thành phố Seoul.', '443 Lý Thường Kiệt, Phường 8, Quận Tân Bình, Tp.HCM', '02839717920', 'samsungvn@.sam.vn', 1, '2020-09-04 00:00:00', '2020-09-18 00:00:00'),
(4, 'Huawei', 'h1', 'Huawei, tên đầy đủ là Công ty trách nhiệm hữu hạn kỹ thuật Hoa Vi là một tập đoàn đa quốc gia về thiết bị mạng và viễn thông, có trụ sở chính tại Thâm Quyến, Quảng Đông, Trung Quốc. Huawei được thành lập năm 1987 bởi Nhậm Chính Phi, một cựu kỹ sư của Giải phóng quân Nhân dân Trung Quốc', 'Long Cương, Thâm Quyến, Quảng Đông, Trung Quốc', '19007651', 'huaweivn$huawei.vn\r\n', 1, '2020-09-01 00:00:00', '2020-09-05 00:00:00'),
(3, 'Công ty TNHH NGK Xiaomi Việt Nam', 'hh2', 'Xiaomi được thành lập vào năm 2010 bởi doanh nhân khởi nghiệp liên tục (serial entrepreneur) Lei Jun dựa trên tầm nhìn “đem sáng tạo dành cho mọi người”.\nChúng tôi tin rằng sản phẩm chất lượng cao với công nghệ hàng đầu đều dành cho tất cả mọi người.\nChúng tôi đã tạo ra phần cứng, phần mềm và dịch vụ Internet tuyệt vời dành cho Mi Fans.\nChúng tôi kết hợp thông tin phản hồi của họ vào các dòng sản phẩm, bao gồm điện thoại Mi và Redmi, Mi TV, STB, Bộ định tuyến Mi,\ncác sản phẩm gia đình thông minh, thiết bị đeo Hệ sinh thái Mi và phụ kiện. Với sự hiện diện trên 30 quốc gia và khu vực,\nXiaomi đang mở rộng dấu ấn trên khắp thế giới để trở thành một thương hiệu toàn cầu.', 'Lầu 10, tòa nhà Metropolitan, 235 Đồng Khởi, Quận 1, tp HCM, Việt Nam', '02839717920', 'vu@xiaomi.com', 1, '2020-09-04 00:00:00', '2020-09-18 00:00:00'),
(5, 'Apple', 'h1', 'Apple Inc. là một tập đoàn công nghệ của Mỹ có trụ sở chính đặt tại Cupertino, California. Apple được thành lập ngày 1 tháng 4 năm 1976 dưới tên Apple Computer, Inc., và đổi tên thành Apple Inc. vào đầu năm 2007', 'Cupertino, California, Hoa Kỳ', '19008765', 'apple@apple.com.vn\r\n', 1, '2020-09-01 00:00:00', '2020-09-05 00:00:00'),
(6, 'Nokia', 'h1', 'Nokia Corporation là một tập đoàn đa quốc gia có trụ sở tại Keilaniemi, Espoo, Phần Lan. Nokia tập trung vào các sản phẩm viễn thông không dây và cố định, với 129.746 nhân viên làm việc ở 120 quốc gia, bán sản phẩm ở hơn 150 quốc gia trên toàn cầu và đạt doanh số 41 tỷ euro với lợi tức 1,2 tỷ năm 2009', 'Espoo, Phần Lan', '19000015', 'nokia@gmail.com.vn\r\n', 1, '2020-09-01 00:00:00', '2020-09-05 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `nhomtin`
--

DROP TABLE IF EXISTS `nhomtin`;
CREATE TABLE IF NOT EXISTS `nhomtin` (
  `ma` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ten_nhom_tin` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `mo_ta` text CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `hinh` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `tieu_de` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `tu_khoa` text CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `mo_tat_im_kiem` text CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `hinh_chia_se` text CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `alias` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `trangthai` enum('0','1','2') CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngaysua` datetime NOT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nhomtin`
--

INSERT INTO `nhomtin` (`ma`, `ten_nhom_tin`, `mo_ta`, `hinh`, `tieu_de`, `tu_khoa`, `mo_tat_im_kiem`, `hinh_chia_se`, `alias`, `trangthai`, `ngay_tao`, `ngaysua`) VALUES
(1, 'Điện thoại di động ', 'Tin tưc về điện thoại di động (smart phone)', 'template/img/user/photo-2.jpg', 'Điện thoại di động ', 'Điện thoại di động\r\nSmart phone\r\nxiaomi\r\nSam sung\r\nIphone \r\noppo\r\nhuawei', 'Điện thoại di động\r\nSmart phone\r\nxiaomi\r\nSam sung\r\nIphone \r\noppo\r\nhuawei', 'template/img/user/photo-2.jpg', 'Genk', '1', '2020-09-01 00:00:00', '2020-09-03 00:00:00'),
(2, 'Laptop ', 'Tin tưc về laptop', 'template/img/user/photo-2.jpg', 'Laptop ', 'Laptop\r\nMacbook\r\nDell\r\nSam sung\r\nHP\r\nlenovo\r\nAsus\r\nhuawei', 'Laptop\r\nMacbook\r\nDell\r\nSam sung\r\nHP\r\nlenovo\r\nAsus\r\nhuawei', 'template/img/user/photo-2.jpg', 'Genk', '1', '2020-09-01 00:00:00', '2020-09-03 00:00:00'),
(3, 'Tablet ', 'Tin tưc về Tablet', 'template/img/user/photo-2.jpg', 'Tablet ', 'Tablet\r\nIpad\r\nSamsung tab\r\nSamsung\r\nhuawei', 'Tablet\r\nIpad\r\nSamsung tab\r\nSamsung\r\nhuawei', 'template/img/user/photo-2.jpg', 'Genk', '1', '2020-09-01 00:00:00', '2020-09-03 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `phanquyen`
--

DROP TABLE IF EXISTS `phanquyen`;
CREATE TABLE IF NOT EXISTS `phanquyen` (
  `ma_chuc_nang` int NOT NULL,
  `ma_user` int NOT NULL,
  KEY `machucnang` (`ma_chuc_nang`),
  KEY `maquantri` (`ma_user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phanquyen`
--

INSERT INTO `phanquyen` (`ma_chuc_nang`, `ma_user`) VALUES
(5, 1),
(21, 1),
(9, 1),
(8, 1),
(23, 1),
(4, 1),
(1, 1),
(16, 1),
(17, 1),
(11, 1),
(19, 4),
(18, 4),
(15, 4),
(5, 4),
(21, 4),
(9, 4),
(8, 4),
(22, 1),
(23, 4),
(4, 4),
(10, 1),
(2, 1),
(16, 4),
(25, 4),
(20, 2),
(26, 4),
(17, 4),
(11, 4),
(22, 4),
(10, 4),
(15, 1),
(18, 1),
(19, 1),
(20, 1),
(2, 3),
(17, 3),
(16, 3),
(1, 3),
(4, 3),
(5, 3),
(15, 3),
(2, 4),
(1, 4),
(20, 4);

-- --------------------------------------------------------

--
-- Table structure for table `quantri`
--

DROP TABLE IF EXISTS `quantri`;
CREATE TABLE IF NOT EXISTS `quantri` (
  `ma` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` enum('0','1','2') NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_sua` datetime NOT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quantri`
--

INSERT INTO `quantri` (`ma`, `user`, `pass`, `trangthai`, `ngay_tao`, `ngay_sua`) VALUES
(1, 'admin', '123', '1', '2020-09-01 00:00:00', '2020-09-15 00:00:00'),
(2, 'nhanhsu1', '123', '1', '2020-09-01 00:00:00', '2020-09-15 00:00:00'),
(3, 'kinhdoanh', '123', '1', '2020-09-01 00:00:00', '2020-09-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE IF NOT EXISTS `sanpham` (
  `ma` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ten_san_pham` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `don_gia` double NOT NULL,
  `so_luong` int UNSIGNED NOT NULL,
  `hinh` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci DEFAULT NULL,
  `mo_ta` text CHARACTER SET ucs2 COLLATE ucs2_unicode_ci,
  `chi_tiet` text CHARACTER SET ucs2 COLLATE ucs2_unicode_ci,
  `trang_thai` tinyint DEFAULT NULL,
  `ngay_tao` datetime DEFAULT NULL,
  `ngay_sua` datetime DEFAULT NULL,
  `tieu_de` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci DEFAULT NULL,
  `tu_khoa` text CHARACTER SET ucs2 COLLATE ucs2_unicode_ci,
  `mo_ta_tim_kiem` text CHARACTER SET ucs2 COLLATE ucs2_unicode_ci,
  `hinh_chia_se` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci DEFAULT NULL,
  `alias` varchar(200) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci DEFAULT NULL,
  `ma_danh_muc` int NOT NULL,
  `ma_thuong_hieu` int NOT NULL,
  `ma_ncc` int NOT NULL,
  PRIMARY KEY (`ma`),
  KEY `madanhmuc` (`ma_danh_muc`),
  KEY `mathuonghieu` (`ma_thuong_hieu`),
  KEY `manhacungcap` (`ma_ncc`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`ma`, `ten_san_pham`, `don_gia`, `so_luong`, `hinh`, `mo_ta`, `chi_tiet`, `trang_thai`, `ngay_tao`, `ngay_sua`, `tieu_de`, `tu_khoa`, `mo_ta_tim_kiem`, `hinh_chia_se`, `alias`, `ma_danh_muc`, `ma_thuong_hieu`, `ma_ncc`) VALUES
(1, 'Điện thoại Samsung Galaxy Note 20', 21990000, 50, 'https://cdn.tgdd.vn/Products/Images/42/218355/samsung-galaxy-note-20-xanhla-400x460-400x460.png', ' Samsung Galaxy Note 20 chính thức được lên kệ, với thiết kế camera trước nốt ruồi quen thuộc, cụm camera hình chữ nhật mới lạ cùng với việc sử dụng vi xử lý Exynos 990 cao cấp của chính Samsung chắc hẳn sẽ mang lại một trải nghiệm thú vị cùng hiệu năng mạnh mẽ.', 'Có thể thấy, Samsung Note 20 là một trong những siêu phẩm đáng sở hữu nhất trong năm 2020 với thiết kế thu hút ở cụm camera độc đáo, màu sắc mới lạ, màn hình siêu tràn viền cùng với những tính năng tiện ích nâng cấp của bút S Pen.', 1, '2020-09-01 00:00:00', '2020-09-03 00:00:00', ' Samsung Note 20', ' Samsung Note 20', ' Samsung Note 20\r\nSamsung', 'https://cdn.tgdd.vn/Products/Images/42/218355/samsung-galaxy-note-20-125820-105803.jpg', 'Mốc', 1, 5, 2),
(2, 'Laptop Apple MacBook Pro Touch 2020 i5 2.0GHz/16GB/512GB', 47990000, 190, 'https://cdn.tgdd.vn/Products/Images/44/221914/apple-macbook-pro-touch-2020-i5-mwp72sa-a-221914-600x600.jpg', 'Laptop Apple MacBook Pro Touch 2020 i5 2.0GHz/16GB/512GB ', 'Với hiệu năng mạnh mẽ, thiết kế cơ động cùng nhiều tính năng hiện đại, MacBook Pro 2020 i5 xứng đáng là một trong những mẫu máy tính xách tay đáng sở hữu nhất trong năm', 1, '2020-09-01 00:00:00', '2020-09-03 00:00:00', 'Laptop Apple MacBook Pro Touch 2020', 'Laptop Apple MacBook Pro Touch 2020\r\nApple\r\nMac\r\nLaptop', 'Laptop Apple MacBook Pro Touch 2020\r\nApple\r\nMac\r\nLaptop', 'https://cdn.tgdd.vn/Products/Images/44/221914/apple-macbook-pro-touch-2020-i5-mwp72sa-a-221914-600x600.jpg', 'Mốc', 4, 4, 5),
(3, 'Samsung Galaxy Tab S6', 14800000, 33, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/s/6/s6-tablet-2.jpg', 'Máy tính bảng Samsung Tab S6', 'Tương tự chiếc iPad Pro của Apple, Samsung Galaxy Tab S6 – mẫu máy tính bảng Samsung mới này cũng được hỗ trợ nhiều tính năng thông minh khi sở hữu thiết kế mỏng nhẹ, hỗ trợ bàn phím và bút cảm ứng. Ngoài ra, bạn cũng có thể tham khảo thêm Samsung Galaxy Tab S7 vừa được gã khổng lồ công nghệ Hàn Quốc ra mắt với nhiều nâng cấp về cấu hình lẫn thiết kế.Galaxy Tab S6 với màn hình AMOLED 10.5 inch, mỏng 5.7 mm dễ dàng mang theo mọi lúc - mọi nơiSamsung Galaxy Tab S6 sở hữu tấm nền sAMOLED với độ phân giải WQXGA (2560x1600) trên tỉ lệ màn hình 16:10 lý tưởng. Cùng với đó là mật độ điểm ảnh ở mức 287ppi, nhờ đó Tab S6 cho khả năng hiển thị tốt. Người dùng có thể sử dụng trong nhiều công việc từ giải trí (xem phim, nghe nhạc, chơi game,…) đến làm việc (đồ họa, phân tích,…).', 1, '2020-09-02 00:00:00', '2020-09-02 00:00:00', 'Samsung Tab S6 – tablet cao cấp của Samsung', 'Samsung Tab S6 – tablet cao cấp của Samsung', 'Samsung Tab S6 – tablet cao cấp của Samsung', 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/s/6/s6-tablet-2.jpg', 'Moc', 2, 5, 2),
(4, 'Máy tính bảng iPad Pro 12.9 inch Wifi Cellular 128GB (2020)', 21990000, 29, 'public/products/file_1602866224.png', 'Máy tính bảng', 'iPad Pro 12.9 inch Wifi Cellular 128GB (2020) đã được trình làng. Với thiết kế không mấy khác biệt so với người anh em iPad Pro 2018 nhưng được Apple nâng cấp hệ thống camera, cùng con chip A12Z giúp iPad Pro 12.9 (2020)', 1, '2020-09-01 00:00:00', '2020-09-03 00:00:00', 'Máy tính bảng iPad Pro 12.9 inch Wifi Cellular 128GB (2020)', 'Máy tính bảng iPad Pro 12.9 inch Wifi Cellular 128GB (2020)', 'Máy tính bảng iPad Pro', NULL, 'Moc', 1, 4, 5),
(5, 'Lenovo Yoga Duet 7 13IML05', 123, 26990000, 'public/products/file_1602867002.jpg', 'Đặc điểm nổi bật của Lenovo Yoga Duet 7 13IML05 i7 10510U/8GB/512GB/Touch/Pen/Win10 (82AS007CVN)  Lenovo Yoga Duet 7 13IML05 i7 (82AS007CVN)', 'Lenovo Yoga Duet  mang phong cách nổi bật của thế hệ laptop đa năng 2 trong 1 mới với bàn phím Bluetooth có thể tháo rời, ngoại hình mỏng nhẹ linh hoạt đi cùng sức mạnh xử lý mạnh mẽ vượt trội trong phân khúc cao cấp - sang trọng', 1, NULL, NULL, 'Lenovo Yoga Duet', '26.990.000', 'Lenovo Yoga Duet', NULL, 'Moc', 4, 5, 2),
(6, 'Huawei MateBook 13', 28990000, 76, 'public/products/file_1602867256.png', 'Huawei MateBook 13 i5 10210U/16GB/512GB SSD/13\'\' 2K/Nvidia MX250_2GB/Win10', 'Huawei MateBook 13 cho bạn nhiều hơn cả những điều mong đợi. Một màn hình 2K cảm ứng tuyệt đẹp tối ưu cho công việc; một thiết kế di động và cứng cáp cùng một cấu hình đột phá sẽ giúp bạn nhanh chóng biến ý tưởng thành hiện thực.  Huawei MateBook 13  Hãy tin vào những gì bạn thấy Màn hình Huawei MateBook 13 thể hiện sự sắc nét đến khó tin. Với viền màn hình siêu mỏng và độ phân giải lên tới 2K cho kích thước 13 inch, những gì hiển thị trên MateBook 13 đẹp một cách đáng kinh ngạc. Màu sắc cũng hết sức sống động với 100% sRGB, cho hình ảnh chính xác và chân thực. Tấm nền IPS cao cấp mang tới góc nhìn rộng 178 độ, độ sáng tối đa 300 nits, để bạn có thể sử dụng ở bất cứ đâu. Màn hình 2K tuyệt đẹp, siêu sắc nét tạo nên niềm cảm hứng bất tận.  màn hình Huawei MateBook 13  Tương tác trực tiếp lên màn hình cảm ứng Không chỉ đẹp, màn hình Huawei MateBook 13 còn hỗ trợ cảm ứng đa điểm cực nhạy. Kết hợp với những cử chỉ được hỗ trợ của Windows 10, bạn có thể thao tác trực tiếp lên màn hình một cách tiện lợi và chính xác. Ngoài việc chạm vào bất cứ đâu để ra lệnh, bạn cũng có một số thao tác thú vị như vuốt 3 ngón tay để chụp ảnh màn hình, hoặc trích xuất văn bản từ màn hình để chỉnh sửa hiệu quả.  màn hình Huawei MateBook 13  Thiết kế cao cấp, mỏng nhẹ nhưng vẫn đầy mạnh mẽ Thiết kế Huawei MateBook 13 đảm bảo tất cả những gì bạn cần trên một mẫu laptop cao cấp, đó là sự mỏng nhẹ di động, tính thời trang và kết cấu bền vững. Laptop chỉ có trọng lượng 1,3kg và độ mỏng 14,9mm, kết hợp thêm viền màn hình siêu mỏng khiến máy rất gọn gàng. Được hoàn thiện từ kim loại nguyên khối, từng đường nét đều chăm chút tỉ mỉ, Huawei MateBook 13 có vẻ đẹp cao cấp, sang trọng và cũng vô cùng cứng cáp. Phiên bản màu Xám không gian thanh lịch, mạnh mẽ thể hiện cá tính riêng biệt của người dùng.  thiết kế Huawei MateBook 13  Thách thức mọi giới hạn Sức mạnh của Huawei MateBook 13 sẽ khiến bạn phải có cái nhìn khác về những mẫu UltraBook siêu mỏng nhẹ. MateBook 13 trang bị bộ vi xử lý Intel Core i5-10210U thế hệ thứ 10, con chip cực mạnh với 4 lõi, 8 luồng và xung nhịp tối đa 4.20 GHz. Ngoài ra laptop còn có sẵn tới 16GB RAM và ổ cứng SSD PCIe 512GB siêu tốc. Bạn có thể chạy cùng lúc nhiều ứng dụng, mở những tập tin lớn một cách nhanh chóng và mượt mà.  cấu hình Huawei MateBook 13  Chưa dừng lại ở đó, Huawei MateBook 13 còn gây bất ngờ với card đồ họa rời NVIDIA GeForce MX250, giúp bạn có thể chạy các tác vụ đồ họa như chỉnh sửa ảnh, render video. Thậm chí bạn còn có thể tận hưởng những tựa game eSports yêu thích trên màn hình 2K tuyệt đẹp của MateBook 13, một chiếc laptop di động luôn bên bạn mọi lúc mọi nơi.  Thời lượng pin cực dài, sạc cực nhanh Mang trên mình viên pin dung lượng lớn 41,7 Wh, Huawei MateBook 13 có thể xem video Full HD liên tục trong 11,6 giờ sau một lần sạc đầy. Nghĩa là bạn hoàn toàn có thể làm việc văn phòng cả ngày mà không lo hết pin. Máy cũng có công nghệ sạc nhanh 65W qua cổng USB Type-C tiện lợi, giúp sử dụng thêm 2 – 3 tiếng chỉ sau 15 phút sạc. Đặc biệt, củ sạc của MateBook 13 rất nhỏ gọn và cũng có thể dùng để sạc điện thoại, hết sức tiện lợi.  pin Huawei MateBook 13  Tản nhiệt hiệu quả và êm ái Với những chiếc laptop siêu mỏng như Huawei MateBook 13 thì việc tản nhiệt rất quan trọng. Huawei sử dụng thiết kế quạt Shark Fin 2.0 đầy sáng tạo, cho khả năng tản nhiệt nhanh hơn nhờ hai quạt tốc độ tăng 25%, tăng cường lưu lượng khí để làm mát máy tính nhanh chóng và im lặng. Laptop sẽ hoạt động bền bỉ và luôn đảm bảo hiệu năng tốt nhờ khả năng tản nhiệt hiệu quả.  tản nhiệt  Đăng nhập sau một cú chạm Cảm biến vân tay ngay trên phím nguồn tiện lợi, cho phép bạn bật nguồn và đăng nhập nhanh chóng chỉ sau một cú chạm duy nhất. Huawei MateBook 13 luôn cố gắng để mang tới trải nghiệm nhanh và tốt nhất cho người dùng.  đăng nhập Huawei MateBook 13', 1, NULL, NULL, 'Huawei MateBook', 'Huawei MateBook', 'Huawei MateBook # Huawei', NULL, 'Moc', 4, 2, 4),
(7, 'Vsmart Joy 3', 2998000, 141, 'public/products/file_1602867524.png', 'Vsmart Joy 3  4GB-64GB', 'Vsmart Joy 3 4GB trang bị bộ vi xử lý Qualcomm Snapdragon 632 mạnh mẽ, đủ để chạy tốt mọi ứng dụng. Ấn tượng hơn nữa là 4GB RAM và 64GB bộ nhớ trong, giúp trải nghiệm mượt mà hơn rất nhiều, đồng thời cho bạn không gian lưu trữ thoải mái. Dễ dàng nâng cấp bộ nhớ thông qua khe cắm thẻ nhớ microSD. Với hệ điều hành VOS mới nhất, Vsmart Joy 3 sẽ mang đến trải nghiệm mượt mà, dễ sử dụng và nhiều tính năng hữ', 1, NULL, NULL, 'Vsmart Joy 3  4GB-64GB', 'Vsmart Joy 3', 'Vsmart Joy 3   #Vsmart', NULL, 'Moc', 1, 1, 1),
(8, 'Samsung Galaxy Z Flip', 14, 2, 'public/products/file_1602867772.png', 'Samsung Galaxy Z Flip Một chiếc điện thoại vừa nhỏ gọn đáng kinh ngạc, lại vừa mang đến trải nghiệm mãn nhãn trên màn hình lớn chuẩn điện ảnh 6,7 inch,', 'Samsung Galaxy Z Flip Một chiếc điện thoại vừa nhỏ gọn đáng kinh ngạc, lại vừa mang đến trải nghiệm mãn nhãn trên màn hình lớn chuẩn điện ảnh 6,7 inch, những điều tưởng như nằm ngoài giới hạn đã thực sự xuất hiện trên Samsung Galaxy Z Flip với thiết kế gập độc đáo và sáng tạo chưa từng thấy.', 1, NULL, NULL, 'Samsung Galaxy Z Flip', 'Samsung Galaxy Z Flip', 'Samsung Galaxy Z Flip #samsung', NULL, 'Moc', 1, 5, 2),
(9, 'VHG', 141241, 2, 'template/img/products/file_1600836135.jpg', 'mota', 'chitiet', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1),
(10, 'VHG', 141241, 2, 'template/img/products/file_1600836570.jpg', 'mota', 'chitiet', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 4),
(11, 'VHG', 141241, 2, 'template/img/products/file_1600850812.jpg', 'mota', 'chitiet', 1, '2020-09-23 08:46:52', NULL, 'tieude', NULL, NULL, NULL, NULL, 2, 4, 5),
(12, 'moc1', 123456789, 321, 'template/img/products/file_1601016812.png', 'mo ta', 'chi tiet', NULL, NULL, '2020-09-25 06:53:32', 'tieu de1', NULL, NULL, NULL, NULL, 2, 2, 1),
(13, 'Test111', 300000, 11, 'template/img/products/file_1601016923.png', 'mota', 'chitiet', NULL, '2020-09-25 05:35:08', '2020-09-25 06:55:23', 'tieude11111111', NULL, NULL, NULL, NULL, 2, 5, 2),
(14, 'Test1', 3000001, 111, 'template/img/products/file_1601016725.png', 'mota11', 'chitiet1', 1, '2020-09-25 05:37:43', '2020-09-25 06:52:05', 'tieude1', NULL, NULL, NULL, NULL, 2, 2, 1),
(15, 'test n', 300000, 1, 'template/img/products/file_1601042392.png', 'mota', 'chitiet', 1, '2020-09-25 12:40:49', '2020-09-25 13:59:52', 'tieude', 'tu khoa', 'template/img/products/file_1601042392.png', 'motatimkiem', 'tacgia', 1, 3, 2),
(16, 'Test', 9000000, 9, 'template/img/products/file_1601038522.png', 'mota', 'chitiet', 1, '2020-09-25 12:55:22', NULL, 'tieude', 'tu khoa', 'template/img/products/file_1601038522.png', 'motatimkiem', 'tacgia', 1, 1, 1),
(17, 'Test1', 8888888, 333, 'template/img/products/file_1601038656.png', 'mota', 'chitiet', 2, '2020-09-25 12:57:36', NULL, 'tieude11111111', 'tu khoa', 'motatimkiem', 'template/img/products/file_1601038656.png', 'tacgia', 4, 2, 2),
(18, 'Test1', 8888888, 333, 'template/img/products/file_1601038733.png', 'mota', 'chitiet', 2, '2020-09-25 12:58:53', NULL, 'tieude11111111', 'tu khoa', 'motatimkiem', 'template/img/products/file_1601038733.png', 'tacgia', 4, 2, 2),
(19, 'ewqegdggsd', 21312, 21321, 'public/products/file_1601793606.jpg', 'dasdas', 'dasda', 2, NULL, NULL, 'dasd', 'sadas', 'sadasd', NULL, 'dasd', 3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

DROP TABLE IF EXISTS `taikhoan`;
CREATE TABLE IF NOT EXISTS `taikhoan` (
  `ma` int NOT NULL AUTO_INCREMENT,
  `ten_nguoi_dung` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `hinh` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci DEFAULT NULL,
  `mat_khau` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `trang_thai` tinyint DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  `ngay_tao` datetime DEFAULT NULL,
  `ngay_cap_nhap` datetime DEFAULT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`ma`, `ten_nguoi_dung`, `username`, `hinh`, `mat_khau`, `trang_thai`, `token`, `ngay_tao`, `ngay_cap_nhap`) VALUES
(1, 'Nguyễn Duy Khánh', 'duykhanhmoc', '', '123', 1, '41b6463fb5ef946b627128604c1fa5ae', '2020-09-14 00:00:00', '2020-09-02 00:00:00'),
(2, 'Nguyễn Minh Khoa', 'minhkhaotf', 'https://cdn.tgdd.vn/Products/Images/42/218355/samsung-galaxy-note-20-xanhla-400x460-400x460.png', '123', 1, '69b0c59c665e819a57a95c2e71f86733', '2020-09-01 00:00:00', '2020-09-03 00:00:00'),
(3, 'Nguyễn Văn Hoài', 'nvh', 'template/img/user/file_1601018189.png', '123', 1, 'ea0e1ed2ccd85c1719e0c7d12f0d8ea7', '2020-09-01 00:00:00', '2020-09-03 00:00:00'),
(4, 'Nguyễn Quốc Đạt', 'chuabeo99', 'public/users/file_1602642388.jpg', '111', 1, 'b130ad5b26c415e57c4a9b1782cdd0be', '2020-09-01 00:00:00', '2020-09-03 00:00:00'),
(5, 'Lê Chiến Thắng', 'ctl', 'public/users/file_1602684644.jpg', '111', 1, '612aae0a87469b795c172dee0a3693c3', '2020-09-01 00:00:00', '2020-09-03 00:00:00'),
(6, 'Lâm Văn Minh', 'lvm11', 'h1', '111', 1, '', '2020-09-01 00:00:00', '2020-09-03 00:00:00'),
(11, 'Hồ Văn Tiến', 'hvt', 'template/img/products/file_1600830467.jpg', '1234', 1, '', '2020-09-23 03:07:47', NULL),
(12, 'Nguyễn Minh Anh', 'nma111', NULL, '123', 0, '', '2020-09-24 10:07:20', NULL),
(13, 'Nguyễn Minh Anh', 'nma111', 'template/img/user/file_1600942086.jpg', '111', 2, '', '2020-09-24 10:08:06', NULL),
(14, 'Nguyễn Minh Anh', 'nma111', 'template/img/user/file_1600959652.jpg', '123234', NULL, '', '2020-09-24 15:00:52', NULL),
(15, 'Nguyễn Minh Anh', 'nma111', 'template/img/user/file_1601019780.png', '123', 1, '', '2020-09-25 07:43:00', NULL),
(16, 'Nguyễn Minh Anh 2', 'nma1111', 'template/img/user/file_1601037449.png', '1231', 1, '', '2020-09-25 12:37:04', NULL),
(17, 'Lê Huyền Trang', 'lht', 'public/users/file_1602684708.jpg', '123', 1, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `thuonghieu`
--

DROP TABLE IF EXISTS `thuonghieu`;
CREATE TABLE IF NOT EXISTS `thuonghieu` (
  `ma` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ten_thuong_hieu` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hinh` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `trang_thai` tinyint(1) NOT NULL,
  `ngay_tao` datetime DEFAULT NULL,
  `ngay_sua` datetime NOT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thuonghieu`
--

INSERT INTO `thuonghieu` (`ma`, `ten_thuong_hieu`, `hinh`, `mo_ta`, `trang_thai`, `ngay_tao`, `ngay_sua`) VALUES
(1, 'Nokia', 'https://1000logos.net/wp-content/uploads/2017/03/Color-Nokia-Logo.jpg', 'Nokia Corporation là một tập đoàn đa quốc gia có trụ sở tại Keilaniemi, Espoo, Phần Lan. Nokia tập trung vào các sản phẩm viễn thông không dây và cố định, với 129.746 nhân viên làm việc ở 120 quốc gia, bán sản phẩm ở hơn 150 quốc gia trên toàn cầu và đạt doanh số 41 tỷ euro với lợi tức 1,2 tỷ năm 2009', 1, '2020-09-09 00:00:00', '2020-09-16 00:00:00'),
(2, 'Huawei', 'https://i.pinimg.com/originals/ad/b1/6d/adb16ddb825abeb6968f42d8511989b3.jpg', 'Huawei, tên đầy đủ là Công ty trách nhiệm hữu hạn kỹ thuật Hoa Vi là một tập đoàn đa quốc gia về thiết bị mạng và viễn thông, có trụ sở chính tại Thâm Quyến, Quảng Đông, Trung Quốc. Huawei được thành lập năm 1987 bởi Nhậm Chính Phi, một cựu kỹ sư của Giải phóng quân Nhân dân Trung Quốc', 1, '2020-09-09 00:00:00', '2020-09-16 00:00:00'),
(3, 'Xiaomi', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Xiaomi_logo.svg/1024px-Xiaomi_logo.svg.png', 'Xiaomi được thành lập vào năm 2010 bởi doanh nhân khởi nghiệp liên tục (serial entrepreneur) Lei Jun dựa trên tầm nhìn “đem sáng tạo dành cho mọi người”.\r\nChúng tôi tin rằng sản phẩm chất lượng cao với công nghệ hàng đầu đều dành cho tất cả mọi người.\r\nChúng tôi đã tạo ra phần cứng, phần mềm và dịch vụ Internet tuyệt vời dành cho Mi Fans.\r\nChúng tôi kết hợp thông tin phản hồi của họ vào các dòng sản phẩm, bao gồm điện thoại Mi và Redmi, Mi TV, STB, Bộ định tuyến Mi,\r\ncác sản phẩm gia đình thông minh, thiết bị đeo Hệ sinh thái Mi và phụ kiện. Với sự hiện diện trên 30 quốc gia và khu vực,\r\nXiaomi đang mở rộng dấu ấn trên khắp thế giới để trở thành một thương hiệu toàn cầu.', 1, '2020-09-09 00:00:00', '2020-09-16 00:00:00'),
(4, 'Apple', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Apple_logo_black.svg/863px-Apple_logo_black.svg.png', 'Apple Inc. là một tập đoàn công nghệ của Mỹ có trụ sở chính đặt tại Cupertino, California. Apple được thành lập ngày 1 tháng 4 năm 1976 dưới tên Apple Computer, Inc., và đổi tên thành Apple Inc. vào đầu năm 2007', 1, '2020-09-09 00:00:00', '2020-09-16 00:00:00'),
(5, 'Samsung', '	\r\nSamsung Việt Nam', 'Samsung Việt Nam', 1, '2020-09-01 00:00:00', '2020-09-17 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

DROP TABLE IF EXISTS `tintuc`;
CREATE TABLE IF NOT EXISTS `tintuc` (
  `ma` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `mo_ta` text CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `hinh` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `tieu_de` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `tu_khoa` text CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `mo_ta_tim_kiem` text CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `hinh_chia_se` text CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `alias` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `trangthai` enum('0','1','2') CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_cap_nhap` datetime NOT NULL,
  `ma_nhom` int NOT NULL,
  PRIMARY KEY (`ma`),
  KEY `manhom` (`ma_nhom`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`ma`, `ten`, `mo_ta`, `hinh`, `tieu_de`, `tu_khoa`, `mo_ta_tim_kiem`, `hinh_chia_se`, `alias`, `trangthai`, `ngay_tao`, `ngay_cap_nhap`, `ma_nhom`) VALUES
(1, 'Xiaomi Mi Mix 3', 'Xiaomi Mi Mix 3 Thiết kế trượt độc đáo, cấu hình mạnh, tặng kèm sạc không dây', 'template/img/sanpham/1.jpg', 'Không chạy theo trào lưu tai thỏ hay camera thò thụt như các hãng khác, Xiaomi Mi Mix 3 lại sở hữu cơ chế trượt hết sức độc đáo.', 'Xiaomi Mi MIX 3 mang tới một thiết kế hoàn toàn lột xác so với dòng Mi MIX của Xiaomi. Khác với các thế hệ trước, cũng như khác với hầu hết những chiếc flagship gần đây, Xiaomi lựa chọn một cách tiếp cận hoàn toàn khác để mang tới thiết kế tràn viền hoàn toàn cho mặt trước. Mi MIX 3 được áp dụng thiết kế trượt nam châm để ẩn đi camera trước, loa và các cảm biến.\r\n\r\nVới thiết kế độc đáo này, Mi MIX 3 sở hữu tỷ lệ màn hình so với mặt trước đạt con số kỷ lục: 93.4%. Thiết kế trượt trên chiếc Mi MIX 3 được làm chắc chắn, tương tự như những chiếc điện thoại phổ thông nắp trượt trước đây.\r\nBên trong hộp sẽ vẫn có lá thư cảm ơn của chính Lei Jun một cách trang trọng. Ngay dưới là chiếc Mi MIX 3 của chúng ta, được đặt chính giữa hộp.\r\nCác phụ kiện còn lại đi kèm bên trong hộp đựng bao gồm một củ sạc nhanh Quick Charge 4+, một cáp sạc USB Type-C, một adapter chuyển từ USB Type-C sang jack cắm âm thanh 3.5mm, một que chọc SIM, bộ sách hướng dẫn sử dụng và một chiếc ốp lưng.\r\nNgoài các phụ kiện đi kèm giống như người tiền nhiệm trước đó, Xiaomi cũng tặng kèm cho người dùng mua Mi MIX 3 một chiếc đế sạc nhanh không dây 10W. Được biết, khi mua bất kì phiên bản cấu hình nào của Mi MIX 3 cũng sẽ được tặng kèm đế sạc này.', 'Điện thoại xiaomi \r\nmi mix\r\nmi mix 3\r\nxiaomi\r\n5g', 'template/img/sanpham/1.jpg', 'Genk', '1', '2020-09-01 00:00:00', '2020-09-03 00:00:00', 1),
(2, 'Xiaomi Mi 10 Ultra ', 'Mi 10 Ultra là mẫu máy kỉ niệm 10 năm thành lập của Xiaomi, do đó nó cũng đi kèm với thông số kỹ thuật mạnh mẽ, thiết kế cao cấp hơn so với các thiết bị khác trong cùng series.', 'template/img/sanpham/1.jpg', 'Xiaomi Mi 10 Ultra ra mắt: Màn hình 120Hz, sạc nhanh 120W, camera zoom 120x, giá từ 17.7 triệu đồng', 'Hôm nay (11/8), Xiaomi vừa ra mắt Mi 10 Ultra - mẫu flagship mới nhất của hãng trong sự kiện kỉ niệm 10 năm thành lập được tổ chức tại Trung Quốc. Chiếc điện thoại này có thông số camera cực kì ấn tượng, hỗ trợ sạc không dây 50W và sạc nhanh có dây lên đến 120W.\r\nXiaomi Mi 10 Ultra sở hữu màn hình AMOLED 6.67 inch, với độ phân giải Full HD+ và tỷ lệ khung hình 19.5:9. Màn hình của máy có tần số quét 120Hz, tốc độ lấy mẫu cảm ứng 240Hz, hỗ trợ HDR10+ và sử dụng thiết kế \"đục lỗ\" để chứa camera selfie 20MP.\r\n\r\nDi chuyển đến mặt lưng, Mi 10 Ultra mang trên mình hệ thống 4 camera xếp theo chiều dọc và đặt ở góc phía trên cùng bên trái. Cụm camera sau bao gồm cảm biến chính 48MP f/1.85, camera góc siêu rộng 20MP, camera tele tiềm vọng 48MP với khả năng zoom quang học 10x và zoom lai 120x, cuối cùng là cảm biến chiều sâu 12MP để chụp ảnh chân dung.\r\nỞ bên trong, chiếc điện thoại này được trang bị vi xử lý cao cấp Snapdragon 865 của Qualcomm, kết hợp với GPU Adreno 650, RAM LPDDR5 lên tới 16GB và bộ nhớ trong chuẩn UFS 3.1 lên tới 512GB.\r\n\r\nMi 10 Ultra đi kèm viên pin graphene có dung lượng 4500mAh, hỗ trợ sạc nhanh có dây 120W thông qua cổng USB-C. Ngoài ra, máy cũng hỗ trợ sạc nhanh không dây 50W, sạc ngược không dây 10W và được tặng kèm củ sạc 120W bên trong hộp đựng.', 'Điện thoại xiaomi\r\nmi \r\nmi 10 ultra\r\nxiaomi\r\n5g', 'template/img/sanpham/1.jpg', 'Mốc', '1', '2020-09-01 00:00:00', '2020-09-03 00:00:00', 1),
(3, 'Note 20', 'Galaxy Note 20 Ultra 5G dung lượng 512GB có giá lên tới 1.449 EUR (khoảng 1.690 USD).', 'template/img/sanpham/1.jpg', 'Samsung Galaxy Note 20 lộ giá bán, phiên bản cao cấp nhất có giá khá cao', 'Galaxy Note 20 Ultra 5G dung lượng 512GB có giá lên tới 1.449 EUR (khoảng 1.690 USD).\r\nSamsung hiện đang chuẩn bị cho sự kiện Galaxy Unpacked 2020, sẽ diễn ra vào ngày 5 tháng 8 tới đây. Đã có khá nhiều thông tin rò rỉ về Galaxy Note 20 và Note 20 Ultra sắp ra mắt, từ thiết kế cho đến thông số kỹ thuật, camera. Tuy nhiên vẫn còn một thông tin mà chúng ta muốn biết, đó chính là giá bán.\r\n\r\nTheo nguồn tin của MySmartprice, giá bán của những chiếc smartphone Galaxy Note 20 tại thị trường Châu Âu đã bị rò rỉ. Mức giá của những chiếc Galaxy Note 20 không hề thấp, thậm chí phiên bản cao cấp nhất cũng có giá cao hơn cả phiên bản Galaxy S20 Ultra.', 'Smart phone\r\nSamsung\r\nNote\r\nNote 20 ultra\r\n', 'template/img/sanpham/1.jpg', 'Mốc', '1', '2020-09-01 00:00:00', '2020-09-03 00:00:00', 1),
(4, 'Iphone 11', 'Có tới 6 sự lựa chọn màu sắc cho iPhone 11 64GB, bao gồm Tím, Vàng, Xanh lục, Đen, Trắng và Đỏ, tha hồ để bạn lựa chọn màu phù hợp với sở thích, cá tính riêng của bản thân. Vẻ đẹp của iPhone 11 đến từ thiết kế cao cấp khi được làm từ khung nhôm nguyên khối và mặt lưng liền lạc với một tấm kính duy nhất. Ở mặt trước, bạn sẽ được chiêm ngưỡng màn hình Liquid Retina lớn 6,1 inch, màu sắc vô cùng chân thực. Tất cả tạo nên chiếc điện thoại tràn đầy hứng khởi.', 'template/img/user/photo-2.jpg', 'iPhone 11 với 6 phiên bản màu sắc, camera có khả năng chụp ảnh vượt trội, thời lượng pin cực dài và bộ vi xử lý mạnh nhất từ trước đến nay sẽ mang đến trải nghiệm tuyệt vời dành cho bạn.', 'Hệ thống camera kép mới\r\nApple iPhone 11 sở hữu cụm camera kép mặt sau, bao gồm camera góc rộng và camera góc siêu rộng. Cảm biến camera góc rộng 12MP có khả năng lấy nét tự động nhanh gấp 3 lần trong điều kiện thiếu sáng. Bên cạnh đó cảm biến góc siêu rộng cho khả năng chụp cảnh rộng gấp 4 lần, là phương tiện ghi hình tuyệt vời cho những chuyến du lịch, chụp hình nhóm. Nhanh chóng chụp ảnh, quay video, chỉnh sửa và chia sẻ ngay trên iPhone, bạn sẽ không bỏ lỡ bất cứ khoảnh khắc đáng nhớ nào.\r\nQuay video chưa bao giờ chuyên nghiệp đến thế\r\nĐiện thoại iPhone 11 64GB có khả năng quay những đoạn video tuyệt đẹp với độ phân giải 4K 60fps siêu sắc nét. Camera góc siêu rộng mang đến nhiều khung cảnh hơn, đồng thời khả năng quay chuyển động cực ấn tượng sẽ tạo nên những thước phim hoàn hảo. Ngoài ra bạn còn có thể tập trung thu âm vào một chủ thể khi quay video bằng cách phóng to, zoom hình ảnh – đồng thời zoom âm thanh hết sức thú vị. Tất nhiên sau khi quay video, việc chỉnh sửa và xuất bản sẽ diễn ra hết sức tiện lợi, nhanh chóng trên iPhone 11.\r\n', 'Iphone\r\nSmart phone\r\nApple\r\n', 'template/img/user/photo-2.jpg', 'Mốc', '1', '2020-09-03 00:00:00', '2020-09-03 00:00:00', 1),
(5, 'Macbook Air 2020', 'Sản phẩm gần như không có thay đổi về ngoại hình, thay vào đó tập trung cải tiến trải nghiệm người dùng ở phần bàn phím và vi xử lý mới.', 'template/img/user/photo-2.jpg', 'Macbook Air 2020: Vi xử lý Intel thế hệ 10, bàn phím cắt kéo giống bản Pro 16\", hành trình phím dài hơn, giá khởi điểm 27,7 triệu đồng', 'Sau iPad Pro 2020, chiếc Macbook Air 2020 cũng đã cập bến thị trường Việt Nam. Về cơ bản ngoại hình bên ngoài, bạn sẽ không thấy nhiều sự khác biệt của laptop này so với thế hệ trước, vẫn là hợp kim nguyên khối, logo Apple đen bóng không phát sáng và đặc biệt là mỏng nhẹ phù hợp với đối tượng doanh nhân hoặc văn phòng\r\nPhiên bản 2020 vẫn có 3 tùy chọn màu là bạc, xám và vàng. Phiên bản chúng tôi trên tay hôm nay là màu bạc. \r\nNếu mặt ngoài không có gì khác biệt thì bên trong Macbook Air 2020 có sự cải tiến rất đáng tiền: bàn phím cắt kéo. Bàn phím cánh bướm được Apple sử dụng từ các phiên bản 2016 trở đi và nhận phải một số phản hồi không mấy tích cực, vì vậy hãng này đã quyết định thay đổi lại hệ thống bàn phím này với tên gọi cắt kéo, áp dụng từ Macbook Pro 16\"', 'Macbook Air 2020\r\nMac\r\nApple\r\nLaptop\r\n', 'template/img/user/photo-2.jpg', 'Mốc', '1', '2020-09-01 00:00:00', '2020-09-03 00:00:00', 2),
(6, 'ZenBook 14 UM425', 'Với độ mỏng chỉ 14,3mm cùng trọng lượng chỉ 1,13kg, ZenBook 14 UM425 mang đến trải nghiệm mỏng nhẹ bất ngờ, nhưng bên cạnh đó vẫn đáp ứng được sức mạnh xử lý nhờ chip Ryzen thế hệ mới đến từ đội Đỏ.', 'template/img/user/photo-2.jpg', 'Cận cảnh và trải nghiệm chiếc laptop 14 inch chạy Ryzen Mobile 4000 Series mỏng nhất thế giới đến từ đội ASUS', 'UM425 là chiếc laptop dòng ZenBook mới nhất của ASUS, mang đến trải nghiệm mới cho người dùng không chỉ ở ngoại hình mà còn ở cả tính cơ động và hiệu năng xử lý mạnh mẽ bên trong.\r\nKèm theo sản phẩm này còn có túi vải để chống trầy xước khi để trong balo/túi xách. Cần lưu ý thêm là túi này khá mỏng nên độ chống sốc gần như không có, nhưng người dùng vẫn có thể yên tâm khi bản thân UM425 đã đạt độ bền tiêu chuẩn quân sự MIL-STD-810G.\r\nMàu sắc trên trên chiếc ZenBook này cũng có độ chuyển tùy theo góc nhìn và góc ánh sáng chiếu vào. Có lúc bạn sẽ thấy đen bóng, lúc lại xanh dương đậm và lúc thì lại là xám.\r\nNói thêm về độ bền, ASUS cho biết chiếc laptop này đạt chuẩn quân sự MIL-STD-810G, đảm bảo độ bền cho một thiết bị công nghệ với hàng loạt thử nghiệm chất lượng như thả rơi từ độ cao 100mm, nhiệt độ môi trường khắc nghiệt, áp suất ở độ cao 15.000 feet… trước khi được bán ra thị trường.\r\n\r\n\r\n', 'Asus\r\nLaptop\r\nZenbook\r\nZenBook 14 \r\n', 'template/img/user/photo-2.jpg', 'Mốc', '1', '2020-09-01 00:00:00', '2020-09-03 00:00:00', 2),
(7, 'Samsung Galaxy Tab S6', 'Có lẽ đây là lựa chọn cuối cùng dành cho những ai còn muốn có một chiếc máy tính bảng Android cao cấp!', 'template/img/user/photo-2.jpg', 'Đánh giá Samsung Galaxy Tab S6: Bạn có muốn mua máy tính bảng Android?', 'Khoảng 5 tháng trước, mình có cơ hội trải nghiệm Samsung Galaxy Tab S5e sau một thời gian dài không \'động\' tới bất cứ một chiếc máy tính bảng nào. Và niềm kỳ vọng của mình vào sản phẩm này đã không được đáp ứng khi máy có khá nhiều điểm bị \'cắt giảm\', khiến việc sử dụng thực tế trở nên không hoàn hảo.\r\n\r\nChính vì vậy khi biết tin Samsung sẽ \'đền\' cho người dùng bằng chiếc Galaxy Tab S6 để \'lấp đầy\' tất cả những điều mà phiên bản Tab S5e thiếu đi, niềm hào hứng của mình lại tăng lên. Vậy sản phẩm này sử dụng thực tế có tốt không?\r\nMột trong những điểm được đánh giá cao của Galaxy Tab S5e đó là thiết kế, khi đây là một trong những chiếc máy tính bảng mỏng, nhẹ và cân đối nhất trên thị trường. Samsung biết được điều này nên \'tái sử dụng\' luôn trên dòng cao cấp Tab S6. Máy có độ mỏng rất ấn tượng, chỉ khoảng 5.7mm. Độ mỏng này kết hợp với cân nặng 420g giúp cho máy cầm trên tay thoải mái, giúp ta sử dụng được thời gian cũng như đỡ cảm thấy mệt mỏi hơn khi phải đem đi sử dụng ở những nơi khác.\r\n\r\nNhược điểm này được giảm đi phần nào bằng hệ thống 4 loa được đặt ở cạnh dưới và cạnh trên máy, cho âm lượng và chất lượng âm thanh đủ tốt để mình không cần phải sử dụng đến tai nghe khi xem phim và video Youtube trong thời gian sử dụng.\r\nThứ thiếu sót của Galaxy Tab S5e làm nhiều người cảm thấy khá thất vọng đó là hãng không cho dòng máy này hỗ trợ bút, và điều đó đã được sửa ở Tab S6. Bút S Pen thế hệ mới của Tab S6 được sản xuất bởi Wacom, với thân bút dày dặn nên có thể cầm được lâu hơn so với bút của chiếc Note 10. Cơ chế đặt bút cũng khá hay, khi mặt lưng có một vết \'lõm\' có tích hợp nam châm, chỉ cần đưa bút tới gần là nó sẽ được dính vào khá chặt.\r\nChiếc bút này ngoài việc dùng để ghi chép và vẽ thông thường thì cũng có một vài \'chiêu\' được mượn từ chiếc S Pen của dòng Note 10, như chuyển chữ viết tay thành ký tự máy để dễ dàng chia sẻ hay \'vẩy\' như đũa thần để thêm các cử chỉ điều khiển ứng dụng. Bút của Tab S6 lớn hơn nên \'vẩy\' cũng dễ dàng hơn so với bút của Note 10, nhưng cá nhân mình thì không sử dụng thường xuyên, nên chỉ đôi khi mới thấy hữu dụng mà thôi.\r\n\r\n', 'Tablet \r\nMáy tính bảng\r\nGalaxy Tab\r\nSamsung\r\n', 'template/img/user/photo-2.jpg', 'Mốc', '1', '2020-09-01 00:00:00', '2020-09-03 00:00:00', 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
