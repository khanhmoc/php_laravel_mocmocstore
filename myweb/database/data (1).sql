-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Nov 12, 2020 at 12:37 PM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_myweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `administration`
--

DROP TABLE IF EXISTS `administration`;
CREATE TABLE IF NOT EXISTS `administration` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('0','1','2') NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administration`
--

INSERT INTO `administration` (`id`, `username`, `password`, `status`, `create_at`, `update_at`) VALUES
(1, 'admin', '123', '1', '2020-09-01 00:00:00', '2020-09-15 00:00:00'),
(2, 'nhanhsu1', '123', '1', '2020-09-01 00:00:00', '2020-09-15 00:00:00'),
(3, 'kinhdoanh', '123', '1', '2020-09-01 00:00:00', '2020-09-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
CREATE TABLE IF NOT EXISTS `brand` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_brand` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` tinyint(1) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand_name`, `image_brand`, `description`, `status`, `create_at`, `update_at`) VALUES
(1, 'Nokia', 'https://1000logos.net/wp-content/uploads/2017/03/Color-Nokia-Logo.jpg', 'Nokia Corporation là một tập đoàn đa quốc gia có trụ sở tại Keilaniemi, Espoo, Phần Lan. Nokia tập trung vào các sản phẩm viễn thông không dây và cố định, với 129.746 nhân viên làm việc ở 120 quốc gia, bán sản phẩm ở hơn 150 quốc gia trên toàn cầu và đạt doanh số 41 tỷ euro với lợi tức 1,2 tỷ năm 2009', 1, '2020-09-09 00:00:00', '2020-09-16 00:00:00'),
(2, 'Huawei', 'https://i.pinimg.com/originals/ad/b1/6d/adb16ddb825abeb6968f42d8511989b3.jpg', 'Huawei, tên đầy đủ là Công ty trách nhiệm hữu hạn kỹ thuật Hoa Vi là một tập đoàn đa quốc gia về thiết bị mạng và viễn thông, có trụ sở chính tại Thâm Quyến, Quảng Đông, Trung Quốc. Huawei được thành lập năm 1987 bởi Nhậm Chính Phi, một cựu kỹ sư của Giải phóng quân Nhân dân Trung Quốc', 1, '2020-09-09 00:00:00', '2020-09-16 00:00:00'),
(3, 'Xiaomi', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Xiaomi_logo.svg/1024px-Xiaomi_logo.svg.png', 'Xiaomi được thành lập vào năm 2010 bởi doanh nhân khởi nghiệp liên tục (serial entrepreneur) Lei Jun dựa trên tầm nhìn “đem sáng tạo dành cho mọi người”.\r\nChúng tôi tin rằng sản phẩm chất lượng cao với công nghệ hàng đầu đều dành cho tất cả mọi người.\r\nChúng tôi đã tạo ra phần cứng, phần mềm và dịch vụ Internet tuyệt vời dành cho Mi Fans.\r\nChúng tôi kết hợp thông tin phản hồi của họ vào các dòng sản phẩm, bao gồm điện thoại Mi và Redmi, Mi TV, STB, Bộ định tuyến Mi,\r\ncác sản phẩm gia đình thông minh, thiết bị đeo Hệ sinh thái Mi và phụ kiện. Với sự hiện diện trên 30 quốc gia và khu vực,\r\nXiaomi đang mở rộng dấu ấn trên khắp thế giới để trở thành một thương hiệu toàn cầu.', 1, '2020-09-09 00:00:00', '2020-09-16 00:00:00'),
(4, 'Apple', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Apple_logo_black.svg/863px-Apple_logo_black.svg.png', 'Apple Inc. là một tập đoàn công nghệ của Mỹ có trụ sở chính đặt tại Cupertino, California. Apple được thành lập ngày 1 tháng 4 năm 1976 dưới tên Apple Computer, Inc., và đổi tên thành Apple Inc. vào đầu năm 2007', 1, '2020-09-09 00:00:00', '2020-09-16 00:00:00'),
(5, 'Samsung', '	\r\nSamsung Việt Nam', 'Samsung Việt Nam', 1, '2020-09-01 00:00:00', '2020-09-17 00:00:00'),
(6, 'Asus', '/upload/products/81595792_2553391731582509_1694237896736768000_n.jpg', 'asus', 1, '2020-10-30 14:16:25', '2020-11-10 08:27:04'),
(7, 'Oppo', '/upload/products/81595792_2553391731582509_1694237896736768000_n.jpg', 'Oppo', 1, '2020-11-10 06:43:22', '2020-11-10 08:33:05');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_category` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` enum('0','1','2') DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `parent_id`, `category_name`, `image_category`, `description`, `status`, `create_at`, `update_at`) VALUES
(1, 1, 'Smartphone', '/upload/category/637037652457717299_11-den.png', 'Các sản phẩm smart phone', '1', '2020-09-01 00:00:00', '2020-11-11 09:17:01'),
(2, 1, 'Tablet', '/upload/category/637340486124696106_ss-tab-s7-den-1.png', 'Các sản phẩm máy tính bảng', '1', '2020-09-03 00:00:00', '2020-11-11 09:17:22'),
(3, 1, 'Đồng hồ', '/upload/category/637361528559053699_apple-watch-se-gps-cellular-40mm-hong-1.png', 'Đồng hồ thông minh và thiết bị đeo tay', '1', '2020-09-03 00:00:00', '2020-11-11 09:18:22'),
(4, 1, 'Laptop', '/upload/category/apple-macbook-air-2020-i3-220174-1-600x600.jpg', 'Laptop bình dân, văn phòng , gaming , Mac', '1', '2020-09-03 00:00:00', '2020-11-11 09:18:44'),
(5, 1, 'Phụ Kiện', 'hinh 4', 'Dây cáp, củ sạc, ốp lưng, ... ', '1', '2020-09-03 00:00:00', '2020-09-15 00:00:00'),
(6, 1, 'Âm Thanh', '/upload/category/register-bg.jpg', 'Loa tai nghe và thiết bị âm thạh khác', '1', '2020-09-03 00:00:00', '2020-11-11 09:19:56');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(200) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `email` varchar(200) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `phone_number` varchar(10) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `customer_name`, `email`, `phone_number`, `address`) VALUES
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `description` text CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `seo` text CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `images_share` text CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `alias` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `status` enum('0','1','2') CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  `id_group` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `manhom` (`id_group`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `name`, `description`, `image`, `title`, `keyword`, `seo`, `images_share`, `alias`, `status`, `create_at`, `update_at`, `id_group`) VALUES
(1, 'Thông tin về Mr.Moc', 'Xiaomi Mi Mix 3 Thiết kế trượt độc đáo, cấu hình mạnh, tặng kèm sạc không dây', 'template/img/sanpham/1.jpg', 'Không chạy theo trào lưu tai thỏ hay camera thò thụt như các hãng khác, Xiaomi Mi Mix 3 lại sở hữu cơ chế trượt hết sức độc đáo.', 'Xiaomi Mi MIX 3 mang tới một thiết kế hoàn toàn lột xác so với dòng Mi MIX của Xiaomi. Khác với các thế hệ trước, cũng như khác với hầu hết những chiếc flagship gần đây, Xiaomi lựa chọn một cách tiếp cận hoàn toàn khác để mang tới thiết kế tràn viền hoàn toàn cho mặt trước. Mi MIX 3 được áp dụng thiết kế trượt nam châm để ẩn đi camera trước, loa và các cảm biến.\r\n\r\nVới thiết kế độc đáo này, Mi MIX 3 sở hữu tỷ lệ màn hình so với mặt trước đạt con số kỷ lục: 93.4%. Thiết kế trượt trên chiếc Mi MIX 3 được làm chắc chắn, tương tự như những chiếc điện thoại phổ thông nắp trượt trước đây.\r\nBên trong hộp sẽ vẫn có lá thư cảm ơn của chính Lei Jun một cách trang trọng. Ngay dưới là chiếc Mi MIX 3 của chúng ta, được đặt chính giữa hộp.\r\nCác phụ kiện còn lại đi kèm bên trong hộp đựng bao gồm một củ sạc nhanh Quick Charge 4+, một cáp sạc USB Type-C, một adapter chuyển từ USB Type-C sang jack cắm âm thanh 3.5mm, một que chọc SIM, bộ sách hướng dẫn sử dụng và một chiếc ốp lưng.\r\nNgoài các phụ kiện đi kèm giống như người tiền nhiệm trước đó, Xiaomi cũng tặng kèm cho người dùng mua Mi MIX 3 một chiếc đế sạc nhanh không dây 10W. Được biết, khi mua bất kì phiên bản cấu hình nào của Mi MIX 3 cũng sẽ được tặng kèm đế sạc này.', 'Điện thoại xiaomi \r\nmi mix\r\nmi mix 3\r\nxiaomi\r\n5g', 'template/img/sanpham/1.jpg', 'Genk', '1', '2020-09-01 00:00:00', '2020-09-03 00:00:00', 1),
(2, 'Xiaomi Mi 10 Ultra ', 'Mi 10 Ultra là mẫu máy kỉ niệm 10 năm thành lập của Xiaomi, do đó nó cũng đi kèm với thông số kỹ thuật mạnh mẽ, thiết kế cao cấp hơn so với các thiết bị khác trong cùng series.', 'template/img/sanpham/1.jpg', 'Xiaomi Mi 10 Ultra ra mắt: Màn hình 120Hz, sạc nhanh 120W, camera zoom 120x, giá từ 17.7 triệu đồng', 'Hôm nay (11/8), Xiaomi vừa ra mắt Mi 10 Ultra - mẫu flagship mới nhất của hãng trong sự kiện kỉ niệm 10 năm thành lập được tổ chức tại Trung Quốc. Chiếc điện thoại này có thông số camera cực kì ấn tượng, hỗ trợ sạc không dây 50W và sạc nhanh có dây lên đến 120W.\r\nXiaomi Mi 10 Ultra sở hữu màn hình AMOLED 6.67 inch, với độ phân giải Full HD+ và tỷ lệ khung hình 19.5:9. Màn hình của máy có tần số quét 120Hz, tốc độ lấy mẫu cảm ứng 240Hz, hỗ trợ HDR10+ và sử dụng thiết kế \"đục lỗ\" để chứa camera selfie 20MP.\r\n\r\nDi chuyển đến mặt lưng, Mi 10 Ultra mang trên mình hệ thống 4 camera xếp theo chiều dọc và đặt ở góc phía trên cùng bên trái. Cụm camera sau bao gồm cảm biến chính 48MP f/1.85, camera góc siêu rộng 20MP, camera tele tiềm vọng 48MP với khả năng zoom quang học 10x và zoom lai 120x, cuối cùng là cảm biến chiều sâu 12MP để chụp ảnh chân dung.\r\nỞ bên trong, chiếc điện thoại này được trang bị vi xử lý cao cấp Snapdragon 865 của Qualcomm, kết hợp với GPU Adreno 650, RAM LPDDR5 lên tới 16GB và bộ nhớ trong chuẩn UFS 3.1 lên tới 512GB.\r\n\r\nMi 10 Ultra đi kèm viên pin graphene có dung lượng 4500mAh, hỗ trợ sạc nhanh có dây 120W thông qua cổng USB-C. Ngoài ra, máy cũng hỗ trợ sạc nhanh không dây 50W, sạc ngược không dây 10W và được tặng kèm củ sạc 120W bên trong hộp đựng.', 'Điện thoại xiaomi\r\nmi \r\nmi 10 ultra\r\nxiaomi\r\n5g', 'template/img/sanpham/1.jpg', 'Mốc', '0', '2020-09-01 00:00:00', '2020-09-03 00:00:00', 1),
(3, 'Note 20', 'Galaxy Note 20 Ultra 5G dung lượng 512GB có giá lên tới 1.449 EUR (khoảng 1.690 USD).', 'template/img/sanpham/1.jpg', 'Samsung Galaxy Note 20 lộ giá bán, phiên bản cao cấp nhất có giá khá cao', 'Galaxy Note 20 Ultra 5G dung lượng 512GB có giá lên tới 1.449 EUR (khoảng 1.690 USD).\r\nSamsung hiện đang chuẩn bị cho sự kiện Galaxy Unpacked 2020, sẽ diễn ra vào ngày 5 tháng 8 tới đây. Đã có khá nhiều thông tin rò rỉ về Galaxy Note 20 và Note 20 Ultra sắp ra mắt, từ thiết kế cho đến thông số kỹ thuật, camera. Tuy nhiên vẫn còn một thông tin mà chúng ta muốn biết, đó chính là giá bán.\r\n\r\nTheo nguồn tin của MySmartprice, giá bán của những chiếc smartphone Galaxy Note 20 tại thị trường Châu Âu đã bị rò rỉ. Mức giá của những chiếc Galaxy Note 20 không hề thấp, thậm chí phiên bản cao cấp nhất cũng có giá cao hơn cả phiên bản Galaxy S20 Ultra.', 'Smart phone\r\nSamsung\r\nNote\r\nNote 20 ultra\r\n', 'template/img/sanpham/1.jpg', 'Mốc', '2', '2020-09-01 00:00:00', '2020-09-03 00:00:00', 1),
(4, 'Iphone 11', 'Có tới 6 sự lựa chọn màu sắc cho iPhone 11 64GB, bao gồm Tím, Vàng, Xanh lục, Đen, Trắng và Đỏ, tha hồ để bạn lựa chọn màu phù hợp với sở thích, cá tính riêng của bản thân. Vẻ đẹp của iPhone 11 đến từ thiết kế cao cấp khi được làm từ khung nhôm nguyên khối và mặt lưng liền lạc với một tấm kính duy nhất. Ở mặt trước, bạn sẽ được chiêm ngưỡng màn hình Liquid Retina lớn 6,1 inch, màu sắc vô cùng chân thực. Tất cả tạo nên chiếc điện thoại tràn đầy hứng khởi.', 'template/img/user/photo-2.jpg', 'iPhone 11 với 6 phiên bản màu sắc, camera có khả năng chụp ảnh vượt trội, thời lượng pin cực dài và bộ vi xử lý mạnh nhất từ trước đến nay sẽ mang đến trải nghiệm tuyệt vời dành cho bạn.', 'Hệ thống camera kép mới\r\nApple iPhone 11 sở hữu cụm camera kép mặt sau, bao gồm camera góc rộng và camera góc siêu rộng. Cảm biến camera góc rộng 12MP có khả năng lấy nét tự động nhanh gấp 3 lần trong điều kiện thiếu sáng. Bên cạnh đó cảm biến góc siêu rộng cho khả năng chụp cảnh rộng gấp 4 lần, là phương tiện ghi hình tuyệt vời cho những chuyến du lịch, chụp hình nhóm. Nhanh chóng chụp ảnh, quay video, chỉnh sửa và chia sẻ ngay trên iPhone, bạn sẽ không bỏ lỡ bất cứ khoảnh khắc đáng nhớ nào.\r\nQuay video chưa bao giờ chuyên nghiệp đến thế\r\nĐiện thoại iPhone 11 64GB có khả năng quay những đoạn video tuyệt đẹp với độ phân giải 4K 60fps siêu sắc nét. Camera góc siêu rộng mang đến nhiều khung cảnh hơn, đồng thời khả năng quay chuyển động cực ấn tượng sẽ tạo nên những thước phim hoàn hảo. Ngoài ra bạn còn có thể tập trung thu âm vào một chủ thể khi quay video bằng cách phóng to, zoom hình ảnh – đồng thời zoom âm thanh hết sức thú vị. Tất nhiên sau khi quay video, việc chỉnh sửa và xuất bản sẽ diễn ra hết sức tiện lợi, nhanh chóng trên iPhone 11.\r\n', 'Iphone\r\nSmart phone\r\nApple\r\n', 'template/img/user/photo-2.jpg', 'Mốc', '2', '2020-09-03 00:00:00', '2020-09-03 00:00:00', 1),
(5, 'Macbook Air 2020', 'Sản phẩm gần như không có thay đổi về ngoại hình, thay vào đó tập trung cải tiến trải nghiệm người dùng ở phần bàn phím và vi xử lý mới.', 'template/img/user/photo-2.jpg', 'Macbook Air 2020: Vi xử lý Intel thế hệ 10, bàn phím cắt kéo giống bản Pro 16\", hành trình phím dài hơn, giá khởi điểm 27,7 triệu đồng', 'Sau iPad Pro 2020, chiếc Macbook Air 2020 cũng đã cập bến thị trường Việt Nam. Về cơ bản ngoại hình bên ngoài, bạn sẽ không thấy nhiều sự khác biệt của laptop này so với thế hệ trước, vẫn là hợp kim nguyên khối, logo Apple đen bóng không phát sáng và đặc biệt là mỏng nhẹ phù hợp với đối tượng doanh nhân hoặc văn phòng\r\nPhiên bản 2020 vẫn có 3 tùy chọn màu là bạc, xám và vàng. Phiên bản chúng tôi trên tay hôm nay là màu bạc. \r\nNếu mặt ngoài không có gì khác biệt thì bên trong Macbook Air 2020 có sự cải tiến rất đáng tiền: bàn phím cắt kéo. Bàn phím cánh bướm được Apple sử dụng từ các phiên bản 2016 trở đi và nhận phải một số phản hồi không mấy tích cực, vì vậy hãng này đã quyết định thay đổi lại hệ thống bàn phím này với tên gọi cắt kéo, áp dụng từ Macbook Pro 16\"', 'Macbook Air 2020\r\nMac\r\nApple\r\nLaptop\r\n', 'template/img/user/photo-2.jpg', 'Mốc', '1', '2020-09-01 00:00:00', '2020-09-03 00:00:00', 2),
(6, 'ZenBook 14 UM425', 'Với độ mỏng chỉ 14,3mm cùng trọng lượng chỉ 1,13kg, ZenBook 14 UM425 mang đến trải nghiệm mỏng nhẹ bất ngờ, nhưng bên cạnh đó vẫn đáp ứng được sức mạnh xử lý nhờ chip Ryzen thế hệ mới đến từ đội Đỏ.', 'template/img/user/photo-2.jpg', 'Cận cảnh và trải nghiệm chiếc laptop 14 inch chạy Ryzen Mobile 4000 Series mỏng nhất thế giới đến từ đội ASUS', 'UM425 là chiếc laptop dòng ZenBook mới nhất của ASUS, mang đến trải nghiệm mới cho người dùng không chỉ ở ngoại hình mà còn ở cả tính cơ động và hiệu năng xử lý mạnh mẽ bên trong.\r\nKèm theo sản phẩm này còn có túi vải để chống trầy xước khi để trong balo/túi xách. Cần lưu ý thêm là túi này khá mỏng nên độ chống sốc gần như không có, nhưng người dùng vẫn có thể yên tâm khi bản thân UM425 đã đạt độ bền tiêu chuẩn quân sự MIL-STD-810G.\r\nMàu sắc trên trên chiếc ZenBook này cũng có độ chuyển tùy theo góc nhìn và góc ánh sáng chiếu vào. Có lúc bạn sẽ thấy đen bóng, lúc lại xanh dương đậm và lúc thì lại là xám.\r\nNói thêm về độ bền, ASUS cho biết chiếc laptop này đạt chuẩn quân sự MIL-STD-810G, đảm bảo độ bền cho một thiết bị công nghệ với hàng loạt thử nghiệm chất lượng như thả rơi từ độ cao 100mm, nhiệt độ môi trường khắc nghiệt, áp suất ở độ cao 15.000 feet… trước khi được bán ra thị trường.\r\n\r\n\r\n', 'Asus\r\nLaptop\r\nZenbook\r\nZenBook 14 \r\n', 'template/img/user/photo-2.jpg', 'Mốc', '2', '2020-09-01 00:00:00', '2020-09-03 00:00:00', 2),
(7, 'Samsung Galaxy Tab S6', 'Có lẽ đây là lựa chọn cuối cùng dành cho những ai còn muốn có một chiếc máy tính bảng Android cao cấp!', 'template/img/user/photo-2.jpg', 'Đánh giá Samsung Galaxy Tab S6: Bạn có muốn mua máy tính bảng Android?', 'Khoảng 5 tháng trước, mình có cơ hội trải nghiệm Samsung Galaxy Tab S5e sau một thời gian dài không \'động\' tới bất cứ một chiếc máy tính bảng nào. Và niềm kỳ vọng của mình vào sản phẩm này đã không được đáp ứng khi máy có khá nhiều điểm bị \'cắt giảm\', khiến việc sử dụng thực tế trở nên không hoàn hảo.\r\n\r\nChính vì vậy khi biết tin Samsung sẽ \'đền\' cho người dùng bằng chiếc Galaxy Tab S6 để \'lấp đầy\' tất cả những điều mà phiên bản Tab S5e thiếu đi, niềm hào hứng của mình lại tăng lên. Vậy sản phẩm này sử dụng thực tế có tốt không?\r\nMột trong những điểm được đánh giá cao của Galaxy Tab S5e đó là thiết kế, khi đây là một trong những chiếc máy tính bảng mỏng, nhẹ và cân đối nhất trên thị trường. Samsung biết được điều này nên \'tái sử dụng\' luôn trên dòng cao cấp Tab S6. Máy có độ mỏng rất ấn tượng, chỉ khoảng 5.7mm. Độ mỏng này kết hợp với cân nặng 420g giúp cho máy cầm trên tay thoải mái, giúp ta sử dụng được thời gian cũng như đỡ cảm thấy mệt mỏi hơn khi phải đem đi sử dụng ở những nơi khác.\r\n\r\nNhược điểm này được giảm đi phần nào bằng hệ thống 4 loa được đặt ở cạnh dưới và cạnh trên máy, cho âm lượng và chất lượng âm thanh đủ tốt để mình không cần phải sử dụng đến tai nghe khi xem phim và video Youtube trong thời gian sử dụng.\r\nThứ thiếu sót của Galaxy Tab S5e làm nhiều người cảm thấy khá thất vọng đó là hãng không cho dòng máy này hỗ trợ bút, và điều đó đã được sửa ở Tab S6. Bút S Pen thế hệ mới của Tab S6 được sản xuất bởi Wacom, với thân bút dày dặn nên có thể cầm được lâu hơn so với bút của chiếc Note 10. Cơ chế đặt bút cũng khá hay, khi mặt lưng có một vết \'lõm\' có tích hợp nam châm, chỉ cần đưa bút tới gần là nó sẽ được dính vào khá chặt.\r\nChiếc bút này ngoài việc dùng để ghi chép và vẽ thông thường thì cũng có một vài \'chiêu\' được mượn từ chiếc S Pen của dòng Note 10, như chuyển chữ viết tay thành ký tự máy để dễ dàng chia sẻ hay \'vẩy\' như đũa thần để thêm các cử chỉ điều khiển ứng dụng. Bút của Tab S6 lớn hơn nên \'vẩy\' cũng dễ dàng hơn so với bút của Note 10, nhưng cá nhân mình thì không sử dụng thường xuyên, nên chỉ đôi khi mới thấy hữu dụng mà thôi.\r\n\r\n', 'Tablet \r\nMáy tính bảng\r\nGalaxy Tab\r\nSamsung\r\n', 'template/img/user/photo-2.jpg', 'Mốc', '2', '2020-09-01 00:00:00', '2020-09-03 00:00:00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `newsgroup`
--

DROP TABLE IF EXISTS `newsgroup`;
CREATE TABLE IF NOT EXISTS `newsgroup` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `new` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `providers` text CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `seo` text CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `images_share` text CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `alias` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `status` enum('0','1','2') CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newsgroup`
--

INSERT INTO `newsgroup` (`id`, `new`, `providers`, `image`, `title`, `keyword`, `seo`, `images_share`, `alias`, `status`, `create_at`, `update_at`) VALUES
(1, 'Điện thoại di động ', 'Tin tưc về điện thoại di động (smart phone)', 'template/img/user/photo-2.jpg', 'Điện thoại di động ', 'Điện thoại di động\r\nSmart phone\r\nxiaomi\r\nSam sung\r\nIphone \r\noppo\r\nhuawei', 'Điện thoại di động\r\nSmart phone\r\nxiaomi\r\nSam sung\r\nIphone \r\noppo\r\nhuawei', 'template/img/user/photo-2.jpg', 'Genk', '1', '2020-09-01 00:00:00', '2020-09-03 00:00:00'),
(2, 'Laptop ', 'Tin tưc về laptop', 'template/img/user/photo-2.jpg', 'Laptop ', 'Laptop\r\nMacbook\r\nDell\r\nSam sung\r\nHP\r\nlenovo\r\nAsus\r\nhuawei', 'Laptop\r\nMacbook\r\nDell\r\nSam sung\r\nHP\r\nlenovo\r\nAsus\r\nhuawei', 'template/img/user/photo-2.jpg', 'Genk', '1', '2020-09-01 00:00:00', '2020-09-03 00:00:00'),
(3, 'Tablet ', 'Tin tưc về Tablet', 'template/img/user/photo-2.jpg', 'Tablet ', 'Tablet\r\nIpad\r\nSamsung tab\r\nSamsung\r\nhuawei', 'Tablet\r\nIpad\r\nSamsung tab\r\nSamsung\r\nhuawei', 'template/img/user/photo-2.jpg', 'Genk', '1', '2020-09-01 00:00:00', '2020-09-03 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE IF NOT EXISTS `orderdetail` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `create_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ct_hoa_don_ma_san_pham_foreign` (`id_product`),
  KEY `ct_hoa_don_id_sohd_foreign` (`id_order`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`id`, `id_order`, `id_product`, `quantity`, `price`, `create_at`, `update_at`) VALUES
(14, 11, 4, 1, 4990000, '2020-11-10 08:43:03', NULL),
(13, 10, 31, 1, 17990000, '2020-11-10 08:37:35', NULL),
(12, 9, 34, 1, 12990000, '2020-11-10 08:34:52', NULL),
(11, 8, 30, 2, 16500000, '2020-11-10 08:20:07', NULL),
(10, 7, 4, 1, 4990000, '2020-11-10 08:18:04', NULL),
(9, 7, 3, 1, 24800000, '2020-11-10 08:18:04', NULL),
(7, 5, 1, 2, 21990000, '2020-11-10 07:54:07', NULL),
(8, 6, 1, 2, 21990000, '2020-11-10 07:59:12', NULL),
(15, 12, 4, 1, 4990000, '2020-11-10 08:51:09', NULL),
(16, 13, 2, 1, 28990000, '2020-11-10 08:53:16', NULL),
(17, 14, 30, 1, 16500000, '2020-11-10 08:54:09', NULL),
(18, 15, 4, 1, 4990000, '2020-11-10 08:55:03', NULL),
(19, 16, 1, 1, 21990000, '2020-11-10 08:59:36', NULL),
(20, 16, 4, 1, 4990000, '2020-11-10 08:59:36', NULL),
(21, 17, 31, 1, 17990000, '2020-11-10 09:01:36', NULL),
(22, 17, 30, 1, 16500000, '2020-11-10 09:01:36', NULL),
(23, 17, 2, 1, 28990000, '2020-11-10 09:01:36', NULL),
(24, 18, 2, 1, 28990000, '2020-11-10 09:03:40', NULL),
(25, 18, 3, 1, 24800000, '2020-11-10 09:03:40', NULL),
(26, 18, 4, 1, 4990000, '2020-11-10 09:03:40', NULL),
(27, 19, 30, 1, 16500000, '2020-11-10 09:14:04', NULL),
(28, 19, 2, 1, 28990000, '2020-11-10 09:14:04', NULL),
(29, 20, 2, 1, 28990000, '2020-11-10 09:16:06', NULL),
(30, 21, 2, 2, 28990000, '2020-11-11 19:26:14', NULL),
(31, 22, 1, 1, 21990000, '2020-11-11 19:28:47', NULL),
(32, 23, 1, 1, 21990000, '2020-11-11 19:32:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` double UNSIGNED DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `name_bill` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_bill` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_bill` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_bill` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `name_ship` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_ship` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_ship` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_ship` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `fee` double DEFAULT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `status`, `total`, `order_date`, `name_bill`, `email_bill`, `phone_bill`, `address_bill`, `name_ship`, `email_ship`, `phone_ship`, `address_ship`, `fee`, `payment_method`, `note`, `code`, `create_at`, `update_at`) VALUES
(8, '1', 36300000, '2020-11-10 15:20:07', 'Khánh Nguyễn Duy', 'duykhanhqv@gmail.com', '352902397', 'aaaaa', 'Khánh Nguyễn Duy', 'duykhanhqv@gmail.com', '352902397', 'aaaaa', 0, 'COD', NULL, '1605021607', NULL, NULL),
(7, '1', 32769000, '2020-11-10 15:18:04', 'Khánh Nguyễn Duy', 'duykhanhqv@gmail.com', '352902397', '22222', 'Khánh Nguyễn Duy', 'duykhanhqv@gmail.com', '352902397', '22222', 0, 'COD', NULL, '1605021484', NULL, NULL),
(6, '1', 48378000, '2020-11-10 14:59:12', 'Khánh Nguyễn Duy', 'duykhanhqv@gmail.com', '352902397', '123456', 'Khánh Nguyễn Duy', 'duykhanhqv@gmail.com', '352902397', '123456', 0, 'COD', NULL, '1605020352', NULL, NULL),
(9, '1', 14289000, '2020-11-10 15:34:52', 'Nguyễn Minh Khoa', 'minhkhao.tf@gmail.com', '352902397', '133 Bachj Đằng , Gò vấp , TPHCM', 'Nguyễn Minh Khoa', 'minhkhao.tf@gmail.com', '352902397', '133 Bachj Đằng , Gò vấp , TPHCM', 0, 'Transfer', NULL, '1605022492', '2020-11-10 15:34:52', NULL),
(10, '1', 19789000, '2020-11-10 15:37:35', 'Nguyễn Lê Minh Hiếu', 'minhhieu@gmail.com', '0978876547', '1098  Nguyễn Trãi , Quận 1 , Tp HCM', 'Nguyễn Lê Minh Hiếu', 'minhhieu@gmail.com', '0978876547', '1098  Nguyễn Trãi , Quận 1 , Tp HCM', 0, 'COD', NULL, '1605022655', '2020-11-10 15:37:35', NULL),
(11, '1', 5489000, '2020-11-10 15:43:03', 'Khánh Nguyễn Duy', 'duykhanhqv@gmail.com', '352902397', '11111', 'Khánh Nguyễn Duy', 'duykhanhqv@gmail.com', '352902397', '11111', 0, 'COD', NULL, '1605022983', '2020-11-10 15:43:03', NULL),
(12, '1', 5489000, '2020-11-10 15:51:09', 'Khánh Nguyễn Duy', 'duykhanhqv@gmail.com', '352902397', NULL, 'Khánh Nguyễn Duy', 'duykhanhqv@gmail.com', '352902397', NULL, 0, 'COD', NULL, '1605023469', '2020-11-10 15:51:09', NULL),
(13, '1', 31889000, '2020-11-10 15:53:16', 'Khánh Nguyễn Duy', 'duykhanhqv@gmail.com', '352902397', NULL, 'Khánh Nguyễn Duy', 'duykhanhqv@gmail.com', '352902397', NULL, 0, 'COD', NULL, '1605023596', '2020-11-10 15:53:16', NULL),
(14, '1', 18150000, '2020-11-10 15:54:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'COD', NULL, '1605023649', '2020-11-10 15:54:09', NULL),
(15, '1', 5489000, '2020-11-10 15:55:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'COD', NULL, '1605023703', '2020-11-10 15:55:03', NULL),
(16, '1', 29678000, '2020-11-10 15:59:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'COD', NULL, '1605023976', '2020-11-10 15:59:36', NULL),
(17, '1', 69828000, '2020-11-10 16:01:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'COD', NULL, '1605024096', '2020-11-10 16:01:36', NULL),
(18, '1', 64658000, '2020-11-10 16:03:40', 'Lương Minh Trang', 'lươngminhtrang@hotmail.com', '0987735123', '12 Lê Duẩn , Quận Tây Hồ, HÀ Nội', 'Lương Minh Trang', 'lươngminhtrang@hotmail.com', '0987735123', '12 Lê Duẩn , Quận Tây Hồ, HÀ Nội', 0, 'CASH', NULL, '1605024220', '2020-11-10 16:03:40', NULL),
(19, '1', 50039000, '2020-11-10 16:14:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'COD', NULL, '1605024844', '2020-11-10 16:14:04', NULL),
(20, '1', 31889000, '2020-11-10 16:16:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'COD', NULL, '1605024966', '2020-11-10 16:16:06', NULL),
(21, '1', 63778000, '2020-11-12 02:26:14', 'Khánh Nguyễn Duy', 'duykhanhqv@gmail.com', '352902397', 'eeeeeeeeeeeeeeeeeeeeee', 'Khánh Nguyễn Duy', 'duykhanhqv@gmail.com', '352902397', 'eeeeeeeeeeeeeeeeeeeeee', 0, 'COD', NULL, '1605147974', '2020-11-12 02:26:14', NULL),
(22, '1', 24189000, '2020-11-12 02:28:47', 'Khánh Nguyễn Duy', 'duykhanhqv@gmail.com', '352902397', 'jjjjjjjjjjjjjjjjj', 'Khánh Nguyễn Duy', 'duykhanhqv@gmail.com', '352902397', 'jjjjjjjjjjjjjjjjj', 0, 'COD', NULL, '1605148127', '2020-11-12 02:28:47', NULL),
(23, '1', 24189000, '2020-11-12 02:32:26', 'Khánh Nguyễn Duy', 'duykhanhqv@gmail.com', '352902397', '12345678', 'Khánh Nguyễn Duy', 'duykhanhqv@gmail.com', '352902397', '12345678', 0, 'CASH', NULL, '1605148346', '2020-11-12 02:32:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `phanquyen`
--

DROP TABLE IF EXISTS `phanquyen`;
CREATE TABLE IF NOT EXISTS `phanquyen` (
  `id_function` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  KEY `machucnang` (`id_function`),
  KEY `maquantri` (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `pro_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` tinyint(4) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `images_share` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL,
  `id_brand` int(11) DEFAULT NULL,
  `id_provider` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `madanhmuc` (`id_category`),
  KEY `mathuonghieu` (`id_brand`),
  KEY `manhacungcap` (`id_provider`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `discount`, `price`, `quantity`, `pro_image`, `description`, `url`, `detail`, `status`, `create_at`, `update_at`, `title`, `keyword`, `seo`, `images_share`, `alias`, `id_category`, `id_brand`, `id_provider`) VALUES
(1, 'Điện thoại Samsung Galaxy Note 20 Ultra', 1000000, 21990000, 45, '/upload/products/samsung-galaxy-note-20-ultra-vangdong-400x460-400x460.png', 'Samsung Galaxy Note 20 Ultra', NULL, 'Sau Galaxy Note 20 thì Galaxy Note 20 Ultra là phiên bản tiếp theo cao cấp hơn thuộc dòng Note 20 Series của Samsung, với nhiều thay đổi từ cụm camera hỗ trợ lấy nét laser AF cùng ống kính góc rộng mới, màn hình tràn viền lên đến 6.9 inch chắc chắn sẽ là chiếc điện thoại được săn đón của fan yêu thích công nghệ.<br />\r\nMàn hình 2K+ Dynamic AMOLED 2X tràn viền hoàn hảo, thiết kế thời thượng<br />\r\nMàn hình tràn viền góc cạnh tối đa, kế thừa những đặc tính từ thế hệ trước, công nghệ màn hình Dynamic AMOLED 2X cho gam màu chính xác chuẩn điện ảnh cho bạn những trải nghiệm những thước phim chân thật trên chính smartphone của mình.<br />\r\nNgoài ra, bằng cách giảm thiểu tối đa ánh sáng xanh gây hại, Dynamic AMOLED 2X còn giúp hạn chế tình trạng mỏi mắt giúp tối ưu trải nghiệm của người dùng.', 1, '2020-10-25 06:22:59', '2020-11-10 08:41:48', 'Samsung Galaxy Note 20 Ultra', 'Samsung Galaxy Note 20 Ultra', 'Samsung Galaxy Note 20 Ultra', '\0h\0t\0t\0p\0s\0:\0/\0/\0c\0d\0n\0.\0t\0g\0d\0d\0.\0v\0n\0/\0P\0r\0o\0d\0u\0c\0t\0s\0/\0I\0m\0a\0g\0e\0s\0/\04\02\0/\02\01\08\03\05\05\0/\0s\0a\0m\0s\0u\0n\0g\0-\0g\0a\0l\0a\0x\0y\0-\0n\0o\0t\0e\0-\02\00\0-\01\02\05\08\02\00\0-\01\00\05\08\00\03\0.\0j\0p\0g', '\0M', 1, 5, 2),
(2, 'Laptop Apple MacBook Air 2020 i3', NULL, 28990000, 12, '/upload/products/apple-macbook-air-2020-i3-220174-1-600x600.jpg', 'Laptop Apple MacBook Air 2020 i3 1.1GHz/8GB/256GB (MWTL2SA/A)', NULL, 'Đặc điểm nổi bật của Apple MacBook Air 2020 i3 1.1GHz/8GB/256GB (MWTL2SA/A)<br />\r\nTìm hiểu thêm<br />\r\nTìm hiểu thêm<br />\r\nBộ sản phẩm chuẩn: Sách hướng dẫn, Thùng máy, Adapter sạc, Cáp ( Type C )<br />\r\nMacBook Air 2020 i3 mới với thiết kế sang trọng, hiệu năng khá, bàn phím Magic lần đầu tiên xuất hiện trên dòng Macbook Air. Với nhiều tính năng hiện đại, đây là chiếc MacBook Air rất đáng sở hữu với mức giá gần như rẻ nhất từ trước đến nay. <br />\r\n\"Cân tất\" ứng dụng văn phòng<br />\r\nMacBook Air phiên bản 2020 có cấu hình gồm CPU Intel Core i3 thế hệ 10 mới nhất hiện nay, RAM 8 GB có nhiều cải tiến, khả năng đồ họa cải thiện tới 80% so với thế hệ 2019.<br />\r\nKhi sử dụng các thao tác cơ bản như tách nền, cắt ghép hình ảnh trên Photoshop hay mở một lúc khoảng 20 tab Chrome, máy hoạt động mượt và không có hiện tượng giật lag. ', 1, '2020-09-01 00:00:00', '2020-11-10 08:30:12', 'Laptop Apple MacBook Air 2020 i3 1.1GHz/8GB/256GB (MWTL2SA/A)', 'Laptop Apple MacBook Air', 'MacBook Air 2020', '\0h\0t\0t\0p\0s\0:\0/\0/\0c\0d\0n\0.\0t\0g\0d\0d\0.\0v\0n\0/\0P\0r\0o\0d\0u\0c\0t\0s\0/\0I\0m\0a\0g\0e\0s\0/\04\04\0/\02\02\01\09\01\04\0/\0a\0p\0p\0l\0e\0-\0m\0a\0c\0b\0o\0o\0k\0-\0p\0r\0o\0-\0t\0o\0u\0c\0h\0-\02\00\02\00\0-\0i\05\0-\0m\0w\0p\07\02\0s\0a\0-\0a\0-\02\02\01\09\01\04\0-\06\00\00\0x\06\00\00\0.\0j\0p\0g', '\0M', 4, 4, 5),
(3, 'Laptop Asus ZenBook UX425EA', NULL, 24800000, 31, '/upload/products/asus-zenbook-ux425ea-i5-bm069t-293920-103940-600x600.jpg', 'Laptop Asus ZenBook UX425EA', NULL, 'Đặc điểm nổi bật của Asus ZenBook UX425EA i5 1135G7/8GB/512GB/Cáp/Túi/Win10 (BM069T)<br />\r\nBộ sản phẩm chuẩn: Dây nguồn, Sách hướng dẫn, Bao da, Adapter sạc, Cáp ( Type C to 3.5mm ) , Adapter chuyển ( USB to LAN )<br />\r\nSiêu phẩm Asus ZenBook UX425EA i5 (BM069T) vừa ra mắt đến từ nhà Asus sở hữu thiết kế đẹp tinh tế, di động tối ưu cùng độ bền chuẩn quân đội. Đặc biệt, chiếc máy này sở hữu con chip Intel thế hệ 11 mới nhất đến thời điểm hiện tại đem đến những tính năng hiện đại và tân tiến nhất.<br />\r\nMỏng nhẹ hơn bao giờ hết <br />\r\nThiết kế của Asus không bao giờ làm người dùng thất vọng, ở phiên bản này, laptop Asus ZenBook vẻ ngoài gần như hoàn hảo. Vỏ kim loại sang trọng với vân đồng tâm trên mặt lưng, logo Asus ZenBook được đặt gọn về một phía. Kích thước nhỏ gọn, trọng lượng chỉ 1.17 kg, độ dày 13.9 mm khiến ZenBook 14 trở thành người bạn đồng hành lí tưởng dành cho bạn. ', 1, '2020-09-02 00:00:00', '2020-11-10 08:29:58', 'Asus ZenBook UX425EA i5 1135G7/8GB/512GB/Cáp/Túi/Win10', 'Asus ZenBook', 'Asus ZenBook', '\0h\0t\0t\0p\0s\0:\0/\0/\0c\0d\0n\0.\0c\0e\0l\0l\0p\0h\0o\0n\0e\0s\0.\0c\0o\0m\0.\0v\0n\0/\0m\0e\0d\0i\0a\0/\0c\0a\0t\0a\0l\0o\0g\0/\0p\0r\0o\0d\0u\0c\0t\0/\0c\0a\0c\0h\0e\0/\07\0/\0i\0m\0a\0g\0e\0/\09\0d\0f\07\08\0e\0a\0b\03\03\05\02\05\0d\00\08\0d\06\0e\05\0f\0b\08\0d\02\07\01\03\06\0e\09\05\0/\0s\0/\06\0/\0s\06\0-\0t\0a\0b\0l\0e\0t\0-\02\0.\0j\0p\0g', '\0M\0o\0c', 4, 6, 9),
(4, 'OPPO A53 (2020)', NULL, 4990000, 44, '/upload/products/oppo-a53-2020-blue-400x460-400x460.png', 'OPPO A53 (2020)', NULL, '<br />\r\nĐặc điểm nổi bật của OPPO A53 (2020)<br />\r\nBộ sản phẩm chuẩn: Hộp, Sạc, Sách hướng dẫn, Cáp, Cây lấy sim, Ốp lưng<br />\r\nOPPO A53 2020 là mẫu smartphone tầm trung vừa mới được OPPO cho ra mắt, gây ấn tượng với thiết kế màn hình đục lỗ tràn viền 90Hz, chip Snapdragon 460 mới nhất cùng cụm 3 camera ấn tượng, được bán với mức giá vô cùng phải chăng.<br />\r\nThiết kế hiện đại, sang trọng<br />\r\nOPPO A53 được trang bị màn hình kích thước 6.5 inch với thiết kế tràn viền chứa camera selfie nằm ở góc trên cùng bên trái giúp tối ưu hóa không gian hiển thị được nhiều thông tin, mà vẫn giữ cho mình kích thước gọn nhẹ.<br />\r\nMáy sử dụng tấm nền IPS LCD  tuy chỉ có độ phân giải  HD+ (720 x 1600 Pixels) nhưng vẫn cho chất lượng hiển thị màu sắc trung thực, độ sáng và độ tương phản cao, dễ dàng thao tác, sử dụng ngoài trời nắng.<br />\r\nHơn thế nữa, màn hình này còn được hỗ trợ tần số quét 90Hz để mang đến cho người dùng những trải nghiệm giải trí mượt mà nhất khi sử dụng hàng ngày, đặc biệt là khi chơi game.<br />\r\nNgoài ra, chiếc điện thoại tầm trung mới của OPPO sở hữu mặt lưng được làm bằng nhựa Polycacbonat giả kính cùng hiệu ứng màu gradient kết hợp với những họa tiết tia sáng cách điệu góp phần tô điểm thêm sự bóng bẩy sang trọng cho chiếc máy.<br />\r\nMáy có trọng lượng khá nhẹ chỉ 186 g, cùng kích thước gọn gàng cho bạn trải nghiệm cầm nắm thoải mái mà không bị mỏi tay khi sử dụng trong thời gian dài.<br />\r\nCấu hình tốt, hiệu năng mượt mà<br />\r\nOPPO A53 là smartphone đầu tiên sử dụng chip Snapdragon 460 vốn thuộc những con chip có hiệu năng tốt và ổn định và điểm số Antutu đo được trên máy 140.385 điểm đem lại cho máy khả năng xử lý mượt mà và điện thoại chơi game này sẵn sàng “cân” tốt các tựa game nhẹ và trung bình hiện nay.<br />\r\nBên cạnh đó, GPU Adreno 610 có khả năng vừa xử lý thông tin, dữ liệu nhanh chóng vừa đảm bảo tiết kiệm điện năng tối đa.<br />\r\nDung lượng RAM 4 GB và 128 GB bộ nhớ trong là vừa đủ để người dùng thoải mái sử dụng đa nhiệm và lưu trữ dữ liệu, tải các ứng dụng nặng về máy sử dụng (có hỗ trợ khe cắm thẻ nhớ mở rộng MicroSD).<br />\r\nHơn nữa, máy còn được cài đặt sẵn hệ điều hành Android 10 trên giao diện ColorOS 7.2 không chỉ mang đến giao diện người dùng đẹp mắt, mà còn một số tính năng hàng loạt các tính năng thông minh, nâng cao trải nghiệm người dùng.<br />\r\nCụm 3 camera chụp ảnh ấn tượng<br />\r\nVề khả năng nhiếp ảnh, OPPO A53 được trang bị hệ thống 3 camera sau, bao gồm cảm biến chính 13 MP và 2 camera có cùng độ phân giải 2 MP. <br />\r\nCụm 3 camera trên OPPO A53 2020 đáp ứng tốt mọi nhu cầu chụp ảnh của người dùng một cách dễ dàng, từ ảnh chân dung kết hợp xóa phông đến ảnh góc rộng, giúp bạn tạo nên những tấm ảnh chụp chuyên nghiệp, sắc nét và ấn tượng.<br />\r\nThêm vào đó, máy còn hỗ trợ camera zoom xa tốt, giúp bạn có thể bắt lấy được những cảnh vật ở khoảng cách xa lại gần hơn một cách dễ dàng<br />\r\nCamera zoom 1X trên OPPO A53<br />\r\nCamera zoom 2X trên OPPO A53<br />\r\nCamera zoom 4X trên OPPO A53<br />\r\nCamera macro 2 MP cho bạn khám phá vào không gian của các vật thể bé nhỏ chi tiết và sắc nét đem lại những tấm hình nghệ thuật độc đáo<br />\r\nẢnh chụp từ camera macro trên OPPO A53<br />\r\nẢnh chụp từ camera macro trên OPPO A53<br />\r\nẢnh chụp từ camera macro trên OPPO A53<br />\r\nMặt trước điện thoại này có máy ảnh selfie 16 MP hỗ trợ công nghệ nhận diện AI mang đến hình ảnh chất lượng cao mà bạn không thể ngờ tới. <br />\r\nThời lượng pin tốt, sử dụng lâu dài<br />\r\nOPPO A53 được trang bị viên pin dung lượng lớn 5000 mAh, có thể thoải mái trải nghiệm các tác vụ từ nhẹ nhàng cho đến chơi game trong hai ngày. Bên cạnh đó, máy còn hỗ trợ sạc nhanh 18W qua cổng USB Type-C, giúp người dùng tiết kiệm được thời gian nạp đầy pin cho thiết bị.<br />\r\nLà một tín đồ công nghệ đang tìm kiếm chiếc điện thoại pin trâu, đẹp mắt, mạnh mẽ với mức giá vừa tầm, OPPO A53 chắn chắn sẽ là lựa chọn thích hợp không thể bỏ qua dành cho bạn.<br />\r\nBài viết này có hữu ích cho Bạn không ?<br />\r\nHữu ích Không Hữu ích', 1, '2020-10-27 15:20:53', '2020-11-10 08:33:34', 'OPPO A53 (2020)', 'OPPO A53 (2020)', 'OPPO A53 (2020)', NULL, NULL, 1, 7, 10),
(30, 'Samsung Galaxy Tab S7', 500000, 16500000, 29, '/upload/products/637340486124696106_ss-tab-s7-den-1.png', 'Samsung Galaxy Tab S7', NULL, '<br />\r\nĐặc điểm nổi bật của Samsung Galaxy Tab S7<br />\r\nBộ sản phẩm chuẩn: Adapter, Tai nghe, Sách hướng dẫn, Bút cảm ứng, Cây lấy sim, Hộp máy, Cáp Type-C<br />\r\nSamsung Galaxy Tab S7 - Chiếc máy tính bảng có: thiết kế tuyệt đẹp, màn hình 120Hz siêu mượt, camera kép ấn tượng, bút S Pen cùng một hiệu năng mạnh mẽ dẫn đầu thị trường máy tính bảng Android.<br />\r\nThiết kế tràn viền cao cấp, thời thượng<br />\r\nGalaxy Tab S7 vẫn giữ nguyên thiết kế kim loại nguyên khối, góc cạnh như người tiền nhiệm Samsung Galaxy Tab S6 trước đó, cho cảm giác sang trọng và cao cấp, cầm vào tay rất vừa vặn và thoải mái.<br />\r\nCác cạnh bên được vát thẳng, bo tròn ở các góc, hoàn thiện bằng lớp vỏ kim loại cứng cáp ít bám mồ hôi và dấu vân tay, khả năng hoàn thiện cực kỳ cao và chắc chắn.<br />\r\nNút nguồn và nút tăng giảm âm lượng được bố trí ở cạnh trái, trong khi hệ thống 4 loa ngoài được tinh chỉnh bởi AKG của thiết bị được đặt ở cạnh trên và dưới, cho chất lượng âm thanh tốt, phục vụ nhu cầu giải trí di động.<br />\r\nKhông giống như người anh em của mình Galaxy Tab S7 chỉ được trang bị cảm biến vân tay một chạm nằm ở cạnh bên.<br />\r\nTab S7 có kích thước tổng thể siêu mỏng và nhẹ với kích thước các cạnh lần lượt là dài 253.8 mm, ngang 165.3 mm, dày 6.3 mm cùng trọng lượng 502 gram, dễ dàng bỏ trong balo và mang theo bên người.<br />\r\nMàn hình sắc nét, tốc độ làm mới 120 Hz<br />\r\nGalaxy Tab S7 được trang bị màn hình LCD 11 inch độ phân giải WQXGA (2.560 x 1.600 pixels) có độ phủ gam màu 100% DCI-P3 và hỗ trợ HDR.<br />\r\nPhần viền bezels xung quanh màn hình cũng đã được mỏng dễ nhìn hơn cho không gian sử dụng rộng rãi, hiển thị được nhiều thông tin nhưng vẫn đảm bảo độ sắc nét cao.<br />\r\nĐặc biệt, Samsung đã nâng tầm chiếc máy tính bảng của mình lên một tầm cao mới khi trang bị cho Galaxy Tab S7 màn hình có tốc độ làm tươi 120Hz mang đến một trải nghiệm đã mắt nhất, phù hợp với việc chơi game, xem Netflix hoặc ngay cả làm việc.<br />\r\nNgoài ra, màn hình trên Galaxy Tab S7 còn hỗ trợ bút S-Pen với độ trễ thấp như ở siêu phẩm Galaxy Note 20 Ultra cùng thời gian phản hồi là 9 ms để cho người dùng trải nghiệm viết tự nhiên nhất.<br />\r\nHỗ trợ các thiết bị thông minh<br />\r\nĐầu tiên, Bút S Pen trên Tab S7 cũng đã được cải tiến rất nhiều, bạn có thể tạo các thao tác nhanh như quay lại, trang chủ, gần đây, chọn thông minh và quay màn hình, hỗ trợ tốt hơn cho nhiều tác vụ như trình chiếu.<br />\r\nDải nam châm gắn bút S Pen nối liền với camera và phẳng chứ không lõm như thế hệ trước cũng như trang bị bàn phím kết nối với Tab S7 qua nam châm, để sử dụng như laptop.<br />\r\nChế độ DeX cung cấp giao diện giống như máy tính để bàn, cùng hỗ trợ hàng loạt các phần mềm quan trọng hàng đầu của Microsoft bao gồm Word, Excel, Powerpoint,... Đây thực sự là chiếc máy tính bảng Android toàn diện nhất từ trước đến nay.<br />\r\nCamera kép với chất lượng <br />\r\nMặt sau của Galaxy Tab S7 được trang bị thiết lập camera kép bao gồm cảm biến chính 13 MP và ống kính siêu rộng 5 MP.<br />\r\nChất lượng ảnh chụp trên thiết bị được đánh giá khá tốt, có thể đáp ứng tốt nhu cầu thích chụp ảnh của bạn. Ngoài ra, Galaxy Tab S7 còn có khả năng quay video chất lượng cao 4K sắc nét.<br />\r\nMặt trước của thiết bị được trang bị camera selfie 8 MP phục vụ việc chụp ảnh tự sướng và các cuộc gọi video call với chất lượng cao.<br />\r\nHiệu năng mạnh mẽ, dẫn đầu phân khúc máy tính bảng Android<br />\r\nKhông chỉ gây ấn tượng thiết kế và màn hình, Galaxy Tab S7 còn thể hiện mình là một thiết bị tốt toàn diện hơn nữa khi được trang bị vi xử lý Snapdragon 865+ mạnh mẽ, đây là chip mới nhất và tốt nhất của Qualcomm ở thời điểm hiện tại.<br />\r\nVới số điểm mà Galaxy Tab S7 đo được trên Antutu là 581.720 điểm dễ dàng giúp máy đáp ứng tốt các tác vụ từ cơ bản đến nâng cao, kể cả những hoạt động thực tế ảo VR hay các tựa game 3D yêu cầu mức đồ họa cao.<br />\r\nBên cạnh đó, Galaxy Tab S7 còn được trang bị RAM có dung lượng 6 GB, bộ nhớ lưu trữ 128 GB và được tích hợp khay sim có thể gọi điện, nhắn tin giống như smartphone.<br />\r\nGiao diện One UI được sắp xếp hợp lý, nhiều tính năng đa nhiệm thông minh cho phép bạn mở và sử dụng đồng thời ba ứng dụng cùng lúc trên màn hình.<br />\r\nDung lượng pin lớn, hỗ trợ công nghệ sạc siêu nhanh<br />\r\nGalaxy Tab S7 được trang bị viên pin dung lượng khổng lồ 8000 mAh, giúp bạn sử dụng cả ngày dài mà không cần lo lắng về việc hết pin khi đang dùng.<br />\r\nThiết bị cung cấp thời lượng pin khoảng 7 giờ 30 phút khi duyệt web, 6 giờ 45 phút khi xem video và gần 10 giờ chơi game. <br />\r\nĐiều ấn tượng hơn nữa là chiếc máy tính bảng này còn hỗ trợ sạc nhanh 45W giúp người dùng có thể nhanh chóng sử dụng lại máy chỉ trong một thời gian ngắn sạc.<br />\r\nTuy nhiên có thể bạn sẽ phải chi thêm tiền thì mới có thể sử dụng được tính năng này, bởi Samsung chỉ tặng kèm bộ sạc 10W trong hộp đựng của Galaxy Tab S7 Plus.<br />\r\nTừ những đánh giá trên, có thể thấy Galaxy Tab S7 thực sự là một đối thủ đáng gờm trên thị trường máy tính bảng hiện tại. Chiếc máy tính bảng này sở hữu màn hình tuyệt đẹp với tốc độ làm mới 120Hz siêu mượt, thời lượng pin tốt cùng những cải tiến bút S Pen và hiệu năng siêu khủng, mang lại năng suất làm việc và giải trí cao hơn. Nếu bạn đã quen thuộc sử dụng các máy tính bảng Android thì Galaxy Tab S7 trong năm 2020 là chiếc máy không thể bỏ qua.<br />\r\nBài viết này có hữu ích cho Bạn không ?<br />\r\nHữu ích Không Hữu ích', 1, '2020-11-06 12:00:36', '2020-11-10 08:37:04', 'Máy tính bảng Samsung Galaxy Tab S7', 'Máy tính bảng Samsung Galaxy Tab S7', 'Samsung Galaxy Tab S7', NULL, NULL, 2, 5, 2),
(31, 'iPhone 11 64GB', 1000000, 17990000, 22, '/upload/products/637037652457717299_11-den.png', 'iPhone 11 64GB', NULL, 'Đặc điểm nổi bật của iPhone 11 64GB<br />\r\nTìm hiểu thêm<br />\r\nTìm hiểu thêm<br />\r\nTìm hiểu thêm<br />\r\nBộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp, Cây lấy sim<br />\r\nSau bao nhiêu chờ đợi cũng như đồn đoán thì cuối cùng Apple đã chính thức giới thiệu bộ 3 siêu phẩm iPhone 11 mạnh mẽ nhất của mình vào tháng 9/2019. Có mức giá rẻ nhất nhưng vẫn được nâng cấp mạnh mẽ như chiếc iPhone Xr năm ngoái, đó chính là phiên bản iPhone 11 64GB.<br />\r\nNâng cấp mạnh mẽ về camera<br />\r\nNói về nâng cấp thì camera chính là điểm có nhiều cải tiến nhất trên thế hệ iPhone mới.', 1, '2020-11-06 12:00:21', '2020-11-10 08:36:43', 'Điện thoại iPhone 11 64GB', 'Điện thoại iPhone 11 64GB', 'Điện thoại iPhone 11 64GB', NULL, NULL, 1, 4, 5),
(32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'Xiaomi Mi 10T Pro 5G', NULL, 12990000, 21, '/upload/products/xiaomi-mi-10t-pro-300320-070336-400x460.png', 'Xiaomi Mi 10T Pro 5G', NULL, 'Đặc điểm nổi bật của Xiaomi Mi 10T Pro 5G<br />\r\nBộ sản phẩm chuẩn: Hộp, Sạc, Sách hướng dẫn, Cáp, Cây lấy sim, Ốp lưng<br />\r\nMi 10T Pro 5G mẫu smartphone cao cấp của Xiaomi trong năm 2020 cuối cùng cũng được trình làng với loạt những thông số gây “choáng ngợp”: màn hình tần số quét 144 Hz, vi xử lý Snapdragon 865 và cụm camera khủng 108 MP kèm theo đó là một mức giá dễ chịu cho người dùng.<br />\r\nMượt mà trong từng khung hình với tần số quét 144 Hz<br />\r\nTần số quét 144 Hz là một trong những điểm ấn tượng của Mi 10T Pro, cung cấp lên đến 144 khung hình/giây mang đến sự mượt mà tối đa, nâng cao mọi trải nghiệm cho dù bạn đang chơi game, xem phim hay chỉ đơn giản là cuộn trang web để xem tin tức.', 1, '2020-11-09 15:41:01', '2020-11-10 08:38:50', 'Mi 10T Pro 5G', 'Mi 10T Pro 5G', 'Mi 10T Pro 5G', NULL, NULL, 1, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `provider`
--

DROP TABLE IF EXISTS `provider`;
CREATE TABLE IF NOT EXISTS `provider` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `provider_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_provider` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `phone_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provider`
--

INSERT INTO `provider` (`id`, `provider_name`, `image_provider`, `description`, `address`, `phone_number`, `email`, `status`, `create_at`, `update_at`) VALUES
(1, ' Công ty cổ phần BBK Electronics', 'hinh2', 'OPPO Electronics Corp là nhà sản xuất thiết bị điện tử, điện thoại di động Android Trung Quốc, có trụ sở đặt tại Đông Hoản, Quảng Đông, công ty con của tập đoàn điện tử BBK Electronics. OPPO cung cấp một số sản phẩm chính như máy nghe nhạc MP3, eBook, DVD/Blu-ray và điện thoại thông minh.', '889 Quang Phổ , Thanh Xuân , Hà Nội', '1900444444', 'oppovn@gmail.com', 1, '2020-09-01 00:00:00', '2020-09-17 00:00:00'),
(2, 'Samsung Việt Nam', 'hh2', 'Tập đoàn Samsung – là một tập đoàn đa quốc gia khổng lồ của Hàn Quốc có tổng hành dinh được đặt tại khu phức hợp Samsung Town, quận Seocho-gu, thành phố Seoul.', '443 Lý Thường Kiệt, Phường 8, Quận Tân Bình, Tp.HCM', '02839717920', 'samsungvn@.sam.vn', 1, '2020-09-04 00:00:00', '2020-09-18 00:00:00'),
(4, 'Huawei', 'h1', 'Huawei, tên đầy đủ là Công ty trách nhiệm hữu hạn kỹ thuật Hoa Vi là một tập đoàn đa quốc gia về thiết bị mạng và viễn thông, có trụ sở chính tại Thâm Quyến, Quảng Đông, Trung Quốc. Huawei được thành lập năm 1987 bởi Nhậm Chính Phi, một cựu kỹ sư của Giải phóng quân Nhân dân Trung Quốc', 'Long Cương, Thâm Quyến, Quảng Đông, Trung Quốc', '19007651', 'huaweivn$huawei.vn\r\n', 1, '2020-09-01 00:00:00', '2020-09-05 00:00:00'),
(3, 'Công ty TNHH NGK Xiaomi Việt Nam', 'hh2', 'Xiaomi được thành lập vào năm 2010 bởi doanh nhân khởi nghiệp liên tục (serial entrepreneur) Lei Jun dựa trên tầm nhìn “đem sáng tạo dành cho mọi người”.\nChúng tôi tin rằng sản phẩm chất lượng cao với công nghệ hàng đầu đều dành cho tất cả mọi người.\nChúng tôi đã tạo ra phần cứng, phần mềm và dịch vụ Internet tuyệt vời dành cho Mi Fans.\nChúng tôi kết hợp thông tin phản hồi của họ vào các dòng sản phẩm, bao gồm điện thoại Mi và Redmi, Mi TV, STB, Bộ định tuyến Mi,\ncác sản phẩm gia đình thông minh, thiết bị đeo Hệ sinh thái Mi và phụ kiện. Với sự hiện diện trên 30 quốc gia và khu vực,\nXiaomi đang mở rộng dấu ấn trên khắp thế giới để trở thành một thương hiệu toàn cầu.', 'Lầu 10, tòa nhà Metropolitan, 235 Đồng Khởi, Quận 1, tp HCM, Việt Nam', '02839717920', 'vu@xiaomi.com', 1, '2020-09-04 00:00:00', '2020-09-18 00:00:00'),
(5, 'Apple', 'h1', 'Apple Inc. là một tập đoàn công nghệ của Mỹ có trụ sở chính đặt tại Cupertino, California. Apple được thành lập ngày 1 tháng 4 năm 1976 dưới tên Apple Computer, Inc., và đổi tên thành Apple Inc. vào đầu năm 2007', 'Cupertino, California, Hoa Kỳ', '19008765', 'apple@apple.com.vn\r\n', 1, '2020-09-01 00:00:00', '2020-09-05 00:00:00'),
(6, 'Nokia', 'h1', 'Nokia Corporation là một tập đoàn đa quốc gia có trụ sở tại Keilaniemi, Espoo, Phần Lan. Nokia tập trung vào các sản phẩm viễn thông không dây và cố định, với 129.746 nhân viên làm việc ở 120 quốc gia, bán sản phẩm ở hơn 150 quốc gia trên toàn cầu và đạt doanh số 41 tỷ euro với lợi tức 1,2 tỷ năm 2009', 'Espoo, Phần Lan', '19000015', 'nokia@gmail.com.vn\r\n', 1, '2020-09-01 00:00:00', '2020-09-05 00:00:00'),
(7, '', '', '', '', '', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, '', '', '', '', '', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Asus', '/upload/products/81595792_2553391731582509_1694237896736768000_n.jpg', 'asus', 'Địa chỉ', '096786222qqq', 'duykhanhqv@gmail.com', 1, '2020-10-30 14:04:21', '2020-11-10 08:29:40'),
(10, 'Oppo', '/upload/products/637340486124696106_ss-tab-s7-den-1.png', 'oppo', 'Quảng Xương', '352902397', 'duykhanhqv@gmail.com', 1, '2020-11-10 06:53:30', '2020-11-10 08:32:46');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `link` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `link`, `parent_id`, `status`, `create_at`, `update_at`) VALUES
(1, 'Sản Phẩm', 'link', 0, 1, '2020-09-01 00:00:00', '2020-09-14 00:00:00'),
(2, 'User', 'link', 0, 1, '2020-09-01 00:00:00', '2020-09-01 00:00:00'),
(3, 'Hệ thống', 'link', 0, 1, '2020-09-01 00:00:00', '2020-09-01 00:00:00'),
(4, 'Thêm Sản phẩm', 'link', 1, 1, '2020-09-01 00:00:00', '2020-09-01 00:00:00'),
(8, 'Xóa Sản Phẩm', '#', 1, 1, '2020-10-01 00:00:00', '2020-10-22 00:00:00'),
(9, 'Sửa Sản Phẩm', '#', 1, 1, '2020-10-07 00:00:00', '2020-10-14 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_use` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `username`, `image_use`, `password`, `remember_token`, `status`, `create_at`, `update_at`) VALUES
(1, 'Nguyễn Duy Khánh', 'khanhmoc99', '/upload/user/bao-ngu.jpg', '$2y$10$X59Jr4rYvSpX5oZ9TU2lT.CuFnvmaa6XxklI03THnzu59ZWf2Jyuq', 'QOI8bLIdG4ZrKwhqWFtvmRP1dGgxgrN3WNs9iRfsF7PGQybxrHiXuzvetnG6', 1, '2020-09-14 00:00:00', '2020-11-11 09:07:29'),
(2, 'Nguyễn Minh Khoa', 'minhkhoatf', '/upload/user/banner_5.jpg', '$2y$10$KkRBVafB8.rQjcewWxiBSeXVKtuTNcLcZ8oWjaPZfyLjlXEIBQGRq', NULL, 1, '2020-09-01 00:00:00', '2020-11-11 09:10:13'),
(3, 'Nguyễn Văn Hoài', 'taurus2523', '/upload/user/banner_6.jpg', '$2y$10$NVLtP2cVn3ysFPk512aqZuFsgnbx4DS2mQV0rYP5RUj67GspW2EqG', NULL, 1, '2020-09-01 00:00:00', '2020-11-11 09:10:53'),
(4, 'Nguyễn Quốc Đạt', 'chuabeo99', '/upload/user/face18.jpg', '$2y$10$e63OhKtAvapvuR3lI7pBxO21mUEs6xOTqgEfqGLBAhbWv07k/rzZy', '8ZXN0eCpB43PLTWi2eFKoZNErjsnAXNMDhhbTdYRDY8nApK59wVZKpVEx1T4', 1, '2020-09-01 00:00:00', '2020-11-11 09:11:54'),
(5, 'Lê Chiến Thắng', 'lct', '/upload/user/face15.jpg', '$2y$10$NVLtP2cVn3ysFPk512aqZuFsgnbx4DS2mQV0rYP5RUj67GspW2EqG', NULL, 1, '2020-09-01 00:00:00', '2020-11-11 09:12:33'),
(6, 'Nguyễn Lê Minh Hiếu', 'nlmh', '/upload/user/face14.jpg', '$2y$10$NVLtP2cVn3ysFPk512aqZuFsgnbx4DS2mQV0rYP5RUj67GspW2EqG', NULL, 1, '2020-09-01 00:00:00', '2020-11-11 09:13:07'),
(11, 'Lê Thị Trang', 'lqh', '/upload/user/face23.jpg', '$2y$10$NVLtP2cVn3ysFPk512aqZuFsgnbx4DS2mQV0rYP5RUj67GspW2EqG', NULL, 1, '2020-09-23 03:07:47', '2020-11-11 09:13:57'),
(15, 'Nguyễn Quang Minh', 'admin123', '/upload/user/login_bg2.jpg', '$2y$10$NVLtP2cVn3ysFPk512aqZuFsgnbx4DS2mQV0rYP5RUj67GspW2EqG', NULL, 1, '2020-09-25 07:43:00', '2020-11-11 09:09:33'),
(26, 'Nguyễn Duy Khánh', 'khanhmoc99', '/upload/user/bao-ngu.jpg', '$2y$10$X59Jr4rYvSpX5oZ9TU2lT.CuFnvmaa6XxklI03THnzu59ZWf2Jyuq', NULL, 1, NULL, '2020-11-11 09:03:55'),
(19, NULL, '\0d\0a\0n\0g\0m\0l', '\0/\0u\0p\0l\0o\0a\0d\0/\0u\0s\0e\0r\0/\0f\0i\0l\0e\0_\01\06\00\01\09\06\05\07\05\04\0.\0j\0p\0g', '$2y$10$NVLtP2cVn3ysFPk512aqZuFsgnbx4DS2mQV0rYP5RUj67GspW2EqG', NULL, 1, '2020-10-28 03:23:26', '2020-10-28 03:16:50'),
(20, 'Lê Thị Thuỳ Linh', 'lttl', '/upload/user/face8.jpg', '123456', NULL, 1, '2020-11-08 16:51:58', '2020-11-11 09:15:08'),
(23, 'testaa31232', 'nvh3123213', '/upload/products/637037652457717299_11-den.png', '123456312321', NULL, 1, NULL, '2020-11-08 16:56:22');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
