-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3308
-- Thời gian đã tạo: Th12 28, 2020 lúc 03:04 PM
-- Phiên bản máy phục vụ: 8.0.18
-- Phiên bản PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_myweb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `administration`
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
-- Đang đổ dữ liệu cho bảng `administration`
--

INSERT INTO `administration` (`id`, `username`, `password`, `status`, `create_at`, `update_at`) VALUES
(1, 'admin', '123', '1', '2020-09-01 00:00:00', '2020-09-15 00:00:00'),
(2, 'nhanhsu1', '123', '1', '2020-09-01 00:00:00', '2020-09-15 00:00:00'),
(3, 'kinhdoanh', '123', '1', '2020-09-01 00:00:00', '2020-09-15 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

DROP TABLE IF EXISTS `brand`;
CREATE TABLE IF NOT EXISTS `brand` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_brand` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`id`, `brand_name`, `image_brand`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Nokia', 'https://1000logos.net/wp-content/uploads/2017/03/Color-Nokia-Logo.jpg', 'Nokia Corporation là một tập đoàn đa quốc gia có trụ sở tại Keilaniemi, Espoo, Phần Lan. Nokia tập trung vào các sản phẩm viễn thông không dây và cố định, với 129.746 nhân viên làm việc ở 120 quốc gia, bán sản phẩm ở hơn 150 quốc gia trên toàn cầu và đạt doanh số 41 tỷ euro với lợi tức 1,2 tỷ năm 2009', 0, '2020-09-09 00:00:00', '2020-11-27 13:11:46'),
(2, 'Huawei', 'https://i.pinimg.com/originals/ad/b1/6d/adb16ddb825abeb6968f42d8511989b3.jpg', 'Huawei, tên đầy đủ là Công ty trách nhiệm hữu hạn kỹ thuật Hoa Vi là một tập đoàn đa quốc gia về thiết bị mạng và viễn thông, có trụ sở chính tại Thâm Quyến, Quảng Đông, Trung Quốc. Huawei được thành lập năm 1987 bởi Nhậm Chính Phi, một cựu kỹ sư của Giải phóng quân Nhân dân Trung Quốc', 1, '2020-09-09 00:00:00', '2020-09-16 00:00:00'),
(3, 'Xiaomi', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Xiaomi_logo.svg/1024px-Xiaomi_logo.svg.png', 'Xiaomi được thành lập vào năm 2010 bởi doanh nhân khởi nghiệp liên tục (serial entrepreneur) Lei Jun dựa trên tầm nhìn “đem sáng tạo dành cho mọi người”.\r\nChúng tôi tin rằng sản phẩm chất lượng cao với công nghệ hàng đầu đều dành cho tất cả mọi người.\r\nChúng tôi đã tạo ra phần cứng, phần mềm và dịch vụ Internet tuyệt vời dành cho Mi Fans.\r\nChúng tôi kết hợp thông tin phản hồi của họ vào các dòng sản phẩm, bao gồm điện thoại Mi và Redmi, Mi TV, STB, Bộ định tuyến Mi,\r\ncác sản phẩm gia đình thông minh, thiết bị đeo Hệ sinh thái Mi và phụ kiện. Với sự hiện diện trên 30 quốc gia và khu vực,\r\nXiaomi đang mở rộng dấu ấn trên khắp thế giới để trở thành một thương hiệu toàn cầu.', 1, '2020-09-09 00:00:00', '2020-09-16 00:00:00'),
(4, 'Apple', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Apple_logo_black.svg/863px-Apple_logo_black.svg.png', 'Apple Inc. là một tập đoàn công nghệ của Mỹ có trụ sở chính đặt tại Cupertino, California. Apple được thành lập ngày 1 tháng 4 năm 1976 dưới tên Apple Computer, Inc., và đổi tên thành Apple Inc. vào đầu năm 2007', 1, '2020-09-09 00:00:00', '2020-09-16 00:00:00'),
(5, 'Samsung', '	\r\nSamsung Việt Nam', 'Samsung Việt Nam', 1, '2020-09-01 00:00:00', '2020-09-17 00:00:00'),
(6, 'Asus', '/upload/products/81595792_2553391731582509_1694237896736768000_n.jpg', 'asus', 1, '2020-10-30 14:16:25', '2020-11-10 08:27:04'),
(7, 'Oppo', '/upload/products/81595792_2553391731582509_1694237896736768000_n.jpg', 'Oppo', 1, '2020-11-10 06:43:22', '2020-11-10 08:33:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categorys`
--

DROP TABLE IF EXISTS `categorys`;
CREATE TABLE IF NOT EXISTS `categorys` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `image_category` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `categorys`
--

INSERT INTO `categorys` (`id`, `parent_id`, `image_category`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '/upload/category/637037652457717299_11-den.png', 1, '2020-09-01 00:00:00', '2020-11-11 09:17:01'),
(2, 1, '/upload/category/637340486124696106_ss-tab-s7-den-1.png', 1, '2020-09-03 00:00:00', '2020-11-11 09:17:22'),
(3, 1, '/upload/category/637361528559053699_apple-watch-se-gps-cellular-40mm-hong-1.png', 1, '2020-09-03 00:00:00', '2020-11-11 09:18:22'),
(4, 1, '/upload/category/apple-macbook-air-2020-i3-220174-1-600x600.jpg', 1, '2020-09-03 00:00:00', '2020-11-11 09:18:44'),
(6, 1, '/upload/category/register-bg.jpg', 1, '2020-09-03 00:00:00', '2020-11-11 09:19:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_translations`
--

DROP TABLE IF EXISTS `category_translations`;
CREATE TABLE IF NOT EXISTS `category_translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `locale`, `category_name`, `description`) VALUES
(1, 1, 'en', 'Smartphone', '\r\nSmart phone products'),
(2, 2, 'en', 'Tablet', 'Tablet products'),
(3, 3, 'en', 'Smart Watch', 'Smart Watch product'),
(4, 4, 'en', 'Laptop', 'Laptop product'),
(6, 6, 'en', 'Audio', 'Audio product'),
(7, 1, 'vi', 'Smartphone', '\r\nCác sản phẩm Điện thoại thông minh '),
(8, 2, 'vi', 'Tablet', 'Tất cả sản phẩm Máy tính bảng'),
(9, 3, 'vi', 'Smart Watch', 'Tất cả sản phẩm đồng hồ thông minh'),
(10, 4, 'vi', 'Laptop', 'Tất cả sản phẩm máy tính xách tay'),
(11, 6, 'vi', 'Audio', 'Các sản phẩm tai nghe không dây và có dây');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
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
-- Đang đổ dữ liệu cho bảng `customer`
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
-- Cấu trúc bảng cho bảng `migrations`
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
-- Cấu trúc bảng cho bảng `news`
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
-- Đang đổ dữ liệu cho bảng `news`
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
-- Cấu trúc bảng cho bảng `newsgroup`
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
-- Đang đổ dữ liệu cho bảng `newsgroup`
--

INSERT INTO `newsgroup` (`id`, `new`, `providers`, `image`, `title`, `keyword`, `seo`, `images_share`, `alias`, `status`, `create_at`, `update_at`) VALUES
(1, 'Điện thoại di động ', 'Tin tưc về điện thoại di động (smart phone)', 'template/img/user/photo-2.jpg', 'Điện thoại di động ', 'Điện thoại di động\r\nSmart phone\r\nxiaomi\r\nSam sung\r\nIphone \r\noppo\r\nhuawei', 'Điện thoại di động\r\nSmart phone\r\nxiaomi\r\nSam sung\r\nIphone \r\noppo\r\nhuawei', 'template/img/user/photo-2.jpg', 'Genk', '1', '2020-09-01 00:00:00', '2020-09-03 00:00:00'),
(2, 'Laptop ', 'Tin tưc về laptop', 'template/img/user/photo-2.jpg', 'Laptop ', 'Laptop\r\nMacbook\r\nDell\r\nSam sung\r\nHP\r\nlenovo\r\nAsus\r\nhuawei', 'Laptop\r\nMacbook\r\nDell\r\nSam sung\r\nHP\r\nlenovo\r\nAsus\r\nhuawei', 'template/img/user/photo-2.jpg', 'Genk', '1', '2020-09-01 00:00:00', '2020-09-03 00:00:00'),
(3, 'Tablet ', 'Tin tưc về Tablet', 'template/img/user/photo-2.jpg', 'Tablet ', 'Tablet\r\nIpad\r\nSamsung tab\r\nSamsung\r\nhuawei', 'Tablet\r\nIpad\r\nSamsung tab\r\nSamsung\r\nhuawei', 'template/img/user/photo-2.jpg', 'Genk', '1', '2020-09-01 00:00:00', '2020-09-03 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetail`
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
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orderdetail`
--

INSERT INTO `orderdetail` (`id`, `id_order`, `id_product`, `quantity`, `price`, `create_at`, `update_at`) VALUES
(13, 10, 31, 1, 17990000, '2020-11-10 08:37:35', NULL),
(12, 9, 34, 1, 12990000, '2020-11-10 08:34:52', NULL),
(24, 18, 2, 1, 28990000, '2020-11-10 09:03:40', NULL),
(25, 18, 3, 1, 24800000, '2020-11-10 09:03:40', NULL),
(26, 18, 4, 1, 4990000, '2020-11-10 09:03:40', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` double UNSIGNED DEFAULT NULL,
  `id_order_status` tinyint(4) DEFAULT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `status`, `total`, `id_order_status`, `order_date`, `name_bill`, `email_bill`, `phone_bill`, `address_bill`, `name_ship`, `email_ship`, `phone_ship`, `address_ship`, `fee`, `payment_method`, `note`, `code`, `create_at`, `update_at`) VALUES
(9, '1', 14289000, 4, '2020-11-10 15:34:52', 'Nguyễn Minh Khoa', 'duykhanhqv@gmail.com', '352902397', '133 Bachj Đằng , Gò vấp , TPHCM', 'Nguyễn Minh Khoa', 'minhkhao.tf@gmail.com', '352902397', '133 Bachj Đằng , Gò vấp , TPHCM', 0, 'Transfer', NULL, '1605022492', '2020-11-10 15:34:52', NULL),
(10, '1', 19789000, 2, '2020-11-10 15:37:35', 'Nguyễn Lê Minh Hiếu', 'minhhieu@gmail.com', '0978876547', '1098  Nguyễn Trãi , Quận 1 , Tp HCM', 'Nguyễn Lê Minh Hiếu', 'minhhieu@gmail.com', '0978876547', '1098  Nguyễn Trãi , Quận 1 , Tp HCM', 0, 'COD', NULL, '1605022655', '2020-11-10 15:37:35', NULL),
(18, '1', 64658000, NULL, '2020-11-10 16:03:40', 'Lương Minh Trang', 'lươngminhtrang@hotmail.com', '0987735123', '12 Lê Duẩn , Quận Tây Hồ, HÀ Nội', 'Lương Minh Trang', 'lươngminhtrang@hotmail.com', '0987735123', '12 Lê Duẩn , Quận Tây Hồ, HÀ Nội', 0, 'CASH', NULL, '1605024220', '2020-11-10 16:03:40', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_status`
--

DROP TABLE IF EXISTS `order_status`;
CREATE TABLE IF NOT EXISTS `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_status`
--

INSERT INTO `order_status` (`id`, `name`, `status`) VALUES
(1, 'Chờ duyệt\r\n', 1),
(2, 'Huỷ', 1),
(3, 'Duyệt (Đang giao)', 1),
(4, 'Đã giao', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

DROP TABLE IF EXISTS `phanquyen`;
CREATE TABLE IF NOT EXISTS `phanquyen` (
  `id_function` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  KEY `machucnang` (`id_function`),
  KEY `maquantri` (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `phanquyen`
--

INSERT INTO `phanquyen` (`id_function`, `id_user`) VALUES
(2, 1),
(1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `discount` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `pro_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `images_share` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL,
  `id_brand` int(11) DEFAULT NULL,
  `id_provider` int(11) DEFAULT NULL,
  `pro_new` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `madanhmuc` (`id_category`),
  KEY `mathuonghieu` (`id_brand`),
  KEY `manhacungcap` (`id_provider`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `discount`, `price`, `quantity`, `pro_image`, `name_url`, `status`, `created_at`, `updated_at`, `keyword`, `seo`, `images_share`, `alias`, `id_category`, `id_brand`, `id_provider`, `pro_new`) VALUES
(1, 1000000, 21990000, 38, '/upload/products/samsung-galaxy-note-20-ultra-vangdong-400x460-400x460.png', NULL, 1, '2020-10-25 06:22:59', '2020-11-10 08:41:48', 'Samsung Galaxy Note 20 Ultra', 'Samsung Galaxy Note 20 Ultra', '\0h\0t\0t\0p\0s\0:\0/\0/\0c\0d\0n\0.\0t\0g\0d\0d\0.\0v\0n\0/\0P\0r\0o\0d\0u\0c\0t\0s\0/\0I\0m\0a\0g\0e\0s\0/\04\02\0/\02\01\08\03\05\05\0/\0s\0a\0m\0s\0u\0n\0g\0-\0g\0a\0l\0a\0x\0y\0-\0n\0o\0t\0e\0-\02\00\0-\01\02\05\08\02\00\0-\01\00\05\08\00\03\0.\0j\0p\0g', '\0M', 1, 5, 2, 1),
(2, 0, 28990000, 9, '/upload/products/apple-macbook-air-2020-i3-220174-1-600x600.jpg', 'laptop-apple-macbook-air-2020-i3', 1, '2020-09-01 00:00:00', '2020-11-30 12:38:17', 'Laptop Apple MacBook Air', 'MacBook Air 2020', '\0h\0t\0t\0p\0s\0:\0/\0/\0c\0d\0n\0.\0t\0g\0d\0d\0.\0v\0n\0/\0P\0r\0o\0d\0u\0c\0t\0s\0/\0I\0m\0a\0g\0e\0s\0/\04\04\0/\02\02\01\09\01\04\0/\0a\0p\0p\0l\0e\0-\0m\0a\0c\0b\0o\0o\0k\0-\0p\0r\0o\0-\0t\0o\0u\0c\0h\0-\02\00\02\00\0-\0i\05\0-\0m\0w\0p\07\02\0s\0a\0-\0a\0-\02\02\01\09\01\04\0-\06\00\00\0x\06\00\00\0.\0j\0p\0g', '\0M', 4, 4, 5, 1),
(3, 0, 24800000, 31, '/upload/products/asus-zenbook-ux425ea-i5-bm069t-293920-103940-600x600.jpg', NULL, 1, '2020-09-02 00:00:00', '2020-11-10 08:29:58', 'Asus ZenBook', 'Asus ZenBook', '\0h\0t\0t\0p\0s\0:\0/\0/\0c\0d\0n\0.\0c\0e\0l\0l\0p\0h\0o\0n\0e\0s\0.\0c\0o\0m\0.\0v\0n\0/\0m\0e\0d\0i\0a\0/\0c\0a\0t\0a\0l\0o\0g\0/\0p\0r\0o\0d\0u\0c\0t\0/\0c\0a\0c\0h\0e\0/\07\0/\0i\0m\0a\0g\0e\0/\09\0d\0f\07\08\0e\0a\0b\03\03\05\02\05\0d\00\08\0d\06\0e\05\0f\0b\08\0d\02\07\01\03\06\0e\09\05\0/\0s\0/\06\0/\0s\06\0-\0t\0a\0b\0l\0e\0t\0-\02\0.\0j\0p\0g', '\0M\0o\0c', 4, 6, 9, 1),
(4, 0, 4990000, 44, '/upload/products/oppo-a53-2020-blue-400x460-400x460.png', NULL, 1, '2020-10-27 15:20:53', '2020-11-30 15:02:41', 'OPPO A53 (2020)', 'OPPO A53 (2020)', NULL, NULL, 1, 7, 1, 1),
(30, 500000, 16500000, 29, '/upload/products/637340486124696106_ss-tab-s7-den-1.png', NULL, 1, '2020-11-06 12:00:36', '2020-11-10 08:37:04', 'Máy tính bảng Samsung Galaxy Tab S7', 'Samsung Galaxy Tab S7', NULL, NULL, 2, 5, 2, 1),
(44, NULL, 5990000, 30, '/upload/products/906d934830d04aa098ba4700c0b4f991.jpg', NULL, 1, '2020-11-27 13:22:33', '2020-11-27 13:28:11', 'AirPods 2', NULL, NULL, NULL, 6, 4, 5, NULL),
(43, NULL, 59900000, 25, '/upload/products/gearvn-com-laptop-gaming-asus-rog-strix-scar-17-g732l-wshg065t-1_4ce49a1bc2c846c4820b45c9c9d98f26.jpg', NULL, 1, '2020-11-27 12:36:43', '2020-11-27 12:45:03', 'Laptop Gaming Asus ROG Strix SCAR', 'Laptop Gaming Asus ROG Strix SCAR', NULL, NULL, 4, 6, 9, NULL),
(31, 1000000, 17990000, 19, '/upload/products/637037652457717299_11-den.png', NULL, 1, '2020-11-06 12:00:21', '2020-11-10 08:36:43', 'Điện thoại iPhone 11 64GB', 'Điện thoại iPhone 11 64GB', NULL, NULL, 1, 4, 5, 1),
(35, 0, 15990000, 33, '/upload/products/637361554980887221_apple-watch-series-6-gps-cellular-40mm-do-1.png', NULL, 1, '2020-11-22 04:47:58', '2020-11-22 04:48:21', 'Apple Watch Series 6 GPS', 'Apple Watch Series 6 GPS', NULL, NULL, 3, 4, 5, NULL),
(36, 0, 9990000, 23, '/upload/products/samsung-galaxy-watch-active-2-44-mm-day-da-thum-600x600.jpg', NULL, 1, '2020-11-22 04:51:06', NULL, NULL, 'Galaxy Watch Active 2 44mm', NULL, NULL, 3, 5, 2, NULL),
(37, 0, 4699000, 24, '/upload/products/tai-nghe-bluetooth-true-wireless-jabra-elite-75t-17-600x600.jpg', NULL, 1, '2020-11-22 06:10:27', NULL, NULL, 'Tai nghe Bluetooth True Wireless Jabra Elite 75T Đen Titanium', NULL, NULL, 6, 2, 4, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_translations`
--

DROP TABLE IF EXISTS `product_translations`;
CREATE TABLE IF NOT EXISTS `product_translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `detail` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` tinyint(4) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `product_translations`
--

INSERT INTO `product_translations` (`id`, `product_id`, `locale`, `product_name`, `description`, `detail`, `status`, `title`) VALUES
(1, 1, 'en', 'Samsung Galaxy Note 20 Ultra', 'Samsung Galaxy Note 20 Ultra da dich', '\r\n646/5000\r\nNote 20 Ultra 5G is still a typical example of Samsung\'s familiar formula with the Note line in recent years: using the hardware of the Galaxy S released just before, slightly improved and put on \"wings\". square, masculine, do not forget to add the S Pen.\r\n\r\nThe name Ultra (roughly translated: extreme) first appeared on Samsung phones since the Galaxy S20 launched earlier this year. This is also the first time Samsung has used the Ultra suffix on the Galaxy Note series. Ultra can be understood as pushing all the configuration parameters to the \"top\" level that comes with the \"super big\" camera cluster, and of course, the price is also at \"peak\".', 1, 'Samsung Galaxy Note 20 Ultra'),
(2, 2, 'en', '	\r\nMacBook Air 2020 i3', 'Laptop Apple MacBook Air 2020 i3 1.1GHz/8GB/256GB (MWTL2SA/A)', 'MacBook Air 2020 is the MacBook line that Apple launched a few months ago and this is also a strongly upgraded product compared to the 2019 version that comes at an affordable price.\r\nWith a starting price of 999 USD (about 23 million VND), MacBook Air 2020 is considered the best laptop, the most affordable of the Apple family ever. The 2020 version possesses the design features of the familiar MacBook Air line from previous years and is strongly upgraded in configuration as well as memory. In this article, let\'s review this product in detail with MT Mobile based on the experiences translated from Android Authority.\r\n\r\nLuxurious and sophisticated design but not many breakthroughs\r\nSimilar to the predecessor MacBook Air series, the 2020 version retains the minimalist but trendy, sophisticated design with eye-catching and luxurious yellow color. Besides, we also have 2 other color versions gray and silver. MacBook Air 2020 owns a monolithic metal design, which helps to limit fingerprints, but the downside is that it is easy to get dust. Although the design is no different from the previous versions, the former is also a special point to distinguish Apple\'s laptop line from other laptops on the market.', 1, 'Laptop Apple MacBook Air 2020 i3 1.1GHz/8GB/256GB (MWTL2SA/A)'),
(3, 3, 'en', '	\r\nZenBook 15 UX534FTC', 'Laptop Asus ZenBook UX425EA', 'Their slim and lightweight ZenBook 15 UX534FTC features a quad-core processor and dedicated GPU. The included options are also great: matte IPS display, NVMe SSD, 16 GB RAM (dual-channel), backlit keyboard. On top of that is superb battery life - the ultimate piece of a comprehensive system.\r\n\r\nAsus ZenBook 15 UX534FTC\r\n\r\nThe Asus ZenBook 15 UX534FTC is one of the few 15.6-inch thin, light, and compact devices that don\'t fall short of processor power. Configuration includes quad-core Core i7-10510U processor, GeForce GTX 1650 Max-Q. The comparison devices include the Acer ConceptD 5CN515-51, Dell XPS 15 7590 and Apple MacBook Pro 16. Standard kit: Power cord, Manual, Holster, Charger, Cable (Type C to 3.5mm), Adapter transfer (USB to LAN) <br />\r\nAsus ZenBook UX425EA i5 (BM069T) has just launched from the Asus family, which owns a beautiful, sophisticated design, optimal mobility and military standard durability. In particular, this machine owns the latest 11 generation Intel chip to present with the most modern and advanced features.\r\nThinner than ever <br />\r\nAsus design never disappoints users, in this version, Asus ZenBook laptop looks almost perfect. Luxurious metal case with concentric pattern on the back, the Asus ZenBook logo is neatly placed on one side. Compact size, weighing just 1.17 kg, and thickness of 13.9 mm make ZenBook 14 the ideal travel companion for you.Bộ sản phẩm chuẩn: Dây nguồn, Sách hướng dẫn, Bao da, Adapter sạc, Cáp ( Type C to 3.5mm ) , Adapter chuyển ( USB to LAN )<br />\r\nSiêu phẩm Asus ZenBook UX425EA i5 (BM069T) vừa ra mắt đến từ nhà Asus sở hữu thiết kế đẹp tinh tế, di động tối ưu cùng độ bền chuẩn quân đội. Đặc biệt, chiếc máy này sở hữu con chip Intel thế hệ 11 mới nhất đến thời điểm hiện tại đem đến những tính năng hiện đại và tân tiến nhất.<br />\r\nMỏng nhẹ hơn bao giờ hết <br />\r\nThiết kế của Asus không bao giờ làm người dùng thất vọng, ở phiên bản này, laptop Asus ZenBook vẻ ngoài gần như hoàn hảo. Vỏ kim loại sang trọng với vân đồng tâm trên mặt lưng, logo Asus ZenBook được đặt gọn về một phía. Kích thước nhỏ gọn, trọng lượng chỉ 1.17 kg, độ dày 13.9 mm khiến ZenBook 14 trở thành người bạn đồng hành lí tưởng dành cho bạn. ', 1, 'Asus ZenBook UX425EA i5 1135G7/8GB/512GB/Cáp/Túi/Win10'),
(4, 4, 'en', 'OPPO A53 ', 'OPPO A53 (2020)', '<br />\r\nFeatures of OPPO A53 (2020) <br />\r\nStandard kit: Box, Charger, Instruction manual, Cable, Sim card, Case <br />\r\nOPPO A53 2020 is a mid-range smartphone newly launched by OPPO, impressing with a 90Hz perforated screen design, the latest Snapdragon 460 chip with an impressive 3-camera cluster, sold at an extremely affordable price. Affordable. <br />\r\nModern, luxurious design <br />\r\nThe OPPO A53 is equipped with a 6.5-inch screen with an overflow design containing the selfie camera located in the top left corner to optimize the display space for lots of information, while maintaining a compact size. br />\r\nThe machine uses an IPS LCD panel, although only HD + resolution (720 x 1600 Pixels), but still shows true color quality, brightness and high contrast, easy to manipulate, use outdoors in the sun. . <br />\r\nMoreover, this monitor also supports a 90Hz refresh rate to provide users with the smoothest entertainment experiences for everyday use, especially when gaming.', 1, 'OPPO A53 (2020)'),
(30, 30, 'en', 'Samsung Galaxy Tab S7', 'Samsung Galaxy Tab S7', '<br />\r\nSamsung Galaxy Tab S7 <br /> Features\r\nStandard kit: Adapter, Headset, Instruction manual, Pen, SIM card, Box, Type-C Cable <br />\r\nSamsung Galaxy Tab S7 - The tablet has: stunning design, super smooth 120Hz display, impressive dual camera, S Pen pen and powerful performance leading the Android tablet market.\r\nHigh-end, trendy <br /> borderless design\r\nThe Galaxy Tab S7 retains the same angular, monolithic metal design like its predecessor, the Samsung Galaxy Tab S6 before it, feels classy and upscale, and the grip is very snug and comfortable.\r\nThe sides are beveled straight, rounded at the corners, finished with a sturdy metal finish with less sweat and fingerprints, extremely high finish and sturdy.\r\nThe power button and the volume up button are located on the left edge, while the 4-speaker system tuned by the device\'s AKG is placed on the top and bottom edges, for good sound quality, serving the needs of entertainment. Mobile location. <br />', 1, 'Máy tính bảng Samsung Galaxy Tab S7'),
(41, 44, 'vi', 'Apple AirPods 2', 'Tai nghe Bluetooth Apple AirPods 2', 'Tai nghe Apple AirPods 2 – Thiết kế tối giản, chất lượng âm thanh tuyệt vời<br />\r\nVừa qua, Apple đã chính thức cho ra mắt chiếc tai nghe Airpods 2. Thế hệ thứ 2 lần này không có nhiều sự khác biệt so với thế hệ đầu về ngoại hình, trừ một số chi tiết về đèn báo hiệu cũng như ra mắt thêm phiên bản sạc không dây và sạc thường (sạc có dây). Ngoài ra, bạn có thể tham khảo thêm Apple Airpods 3, sắp được ra mắt trong thời gian tới.<br />\r\nAirPods 2 chính hãng VN/A là gì? Vì sao nên lựa chọn?<br />\r\nĐầu tiên, AirPods 2 chính hãng VN/A là hàng chính hãng do Apple sản xuất theo tiêu chuẩn của thị trường Việt Nam. Thiết bị được phân phối chính hãng thông qua các đại lý ủy quyền của Apple. Vậy tai nghe bluetooth Apple AirPods 2 chính hãng VN/A có gì khác những mẫu tai nghe cũ, tai nghe xách tay?', 1, 'AirPods 2'),
(31, 31, 'en', 'iPhone 11 64GB', 'iPhone 11 64GB', 'Features of iPhone 11 64GB <br />\r\nLearn more <br />\r\nLearn more <br />\r\nLearn more <br />\r\nStandard kit: Box, Charger, Headset, Instruction manual, Cable, Sim tree <br />\r\nAfter much waiting and speculation, Apple finally officially introduced its three most powerful iPhone 11 super products in September 2019. Having the cheapest price but still being as powerful as last year\'s iPhone Xr, that\'s the 64GB iPhone 11 version. <br />\r\nStrong upgrade of the camera <br />\r\nTalking about upgrading, the camera is the point with the most improvements on the new iPhone generation.', 1, ' iPhone 11 64GB'),
(34, 34, 'en', 'Xiaomi Mi 10T Pro 5G', 'Xiaomi Mi 10T Pro 5G', 'Features of the Xiaomi Mi 10T Pro 5G <br />\r\nStandard set: Box, Charger, Manual, Cable, Sim card, Case <br />\r\nMi 10T Pro 5G high-end Xiaomi smartphone in 2020 is finally released with a series of parameters that cause \"overwhelming\": 144 Hz refresh rate screen, Snapdragon 865 processor and 108 MP camera cluster together. which is a pleasant price for the user. <br />\r\nSmooth in every frame with 144 Hz refresh rate <br />\r\nThe 144 Hz refresh rate is one of the hallmarks of Mi 10T Pro, delivering up to 144 fps for maximum smoothness, enhancing every experience whether you\'re playing games, watching movies or just. Simply scroll through the web page to see the news.', 1, 'Mi 10T Pro 5G'),
(35, 35, 'en', 'Apple Watch Series 6 GPS', 'Apple Watch Series 6 GPS + Cellular 40mm viền nhôm dây cao su', 'Apple Watch Series 6 GPS + Cellular 40mm aluminum rubber band <br />\r\nThe future of health is on your wrist. Apple Watch Series 6 with blood oxygen measurement, electrocardiogram anytime, anywhere and perfect training support, will give you a healthier and more active life.', 1, 'Apple Watch Series 6 GPS'),
(36, 36, 'en', 'Samsung Galaxy Watch Active 2', 'Samsung Galaxy Watch Active 2 44mm viền thép dây da', 'Galaxy Watch Active 2 44mm is a version with improved technology to provide the best user experience with many health care features, receive direct calls as well as many other convenient features. br />\r\n7 health enhancement exercises <br />\r\nThe Samsung Galaxy Watch Active 2 is truly your professional sports coach, integrating different training modes to suit the body and fitness of each person.', 1, 'Galaxy Watch Active 2 44mm'),
(37, 37, 'en', 'Jabra True Wireless ', 'Tai nghe Bluetooth True Wireless Jabra Elite 75T Đen Titanium', 'True Wireless Bluetooth Headset Jabra Elite 75T Black Titanium <br />\r\nProduct Introduction <br />\r\nCompact design, ergonomic shape makes it comfortable to use <br />\r\nUpgraded from version 65T, this black Titanium headset from Jabra not only inherits the strengths of the previous version but also possesses new great points in both quality and design. <br />\r\nJabra Elite 75T is tested and designed in a \"small - new\" style to ensure they fit into almost any ear size, wear securely, securely. To reduce damage to soft tissue of the ear, the company comes with 3 small - medium - large ear cushions for you to choose to fit the best size of your ear.', 1, 'Tai nghe Bluetooth True Wireless Jabra Elite 75T Đen Titanium'),
(38, 43, 'vi', 'Asus ROG Strix SCAR 17', 'Laptop Gaming Asus ROG Strix SCAR 17 G732L WSHG065T', 'Asus ROG SCAR III được thiết kế để cạnh tranh trong phân khúc máy tính gaming cao nhất chạy Windows 10 Pro. Hệ thống làm mát thông minh giải phóng sức mạnh không giới hạn của CPU Intel Core thế hệ thứ 10 và đồ họa GeForce RTX™, trong khi đó màn hình laptop 300Hz/3ms nhanh nhất thế giới cho phép bạn chơi ở tốc độ gaming chuyên nghiệp. Nhập cuộc vào những trận đấu nhiều người chơi mọi nơi mọi lúc nhờ Wi-Fi RangeBoost mạnh hơn, phô diễn cá tính với dải đèn Aura Sync bao quanh máy và đảm bảo tính riêng tư cho dữ liệu cá nhân bằng khóa ROG Keystone mới.', 1, 'Laptop Gaming Asus ROG Strix SCAR 17'),
(48, 2, 'vi', '	\r\nMacBook Air 2020 i3', 'Laptop Apple MacBook Air 2020 i3 1.1GHz/8GB/256GB (MWTL2SA/A)', 'MacBook Air 2020 là dòng MacBook vừa được Apple cho ra mắt cách đây vài tháng và đây cũng là sản phẩm được nâng cấp mạnh mẽ so với phiên bản 2019 đi kèm với mức giá phải chăng.\r\nVới giá khởi điểm là 999 USD (khoảng 23 triệu đồng), MacBook Air 2020 được đánh giá là chiếc laptop tốt nhất, giá hời nhất của nhà Táo từ trước đến nay. Phiên bản 2020 sở hữu những đặc trưng thiết kế của dòng MacBook Air quen thuộc những năm trước và được nâng cấp mạnh mẽ về cấu hình cũng như bộ nhớ. Trong bài viết này, hãy cùng MT Mobile đánh giá chi tiết về sản phẩm này dựa trên những trải nghiệm được lược dịch từ Android Authority nhé.\r\n\r\nThiết kế sang trọng, tinh tế nhưng chưa có nhiều đột phá\r\nTương tự các dòng MacBook Air tiền nhiệm, phiên bản 2020 vẫn giữ lối thiết kế tối giản mà thời thượng, tinh tế cùng màu vàng bắt mắt, sang trọng. Bên cạnh đó, chúng ta còn có 2 phiên bản màu sắc khác là xám và bạc. MacBook Air 2020 sở hữu thiết kế kim loại nguyên khối, giúp hạn chế bám vân tay nhưng nhược điểm là dễ bị bám bụi. Tuy thiết kế không khác gì so với các phiên bản trước nhưng đây cũng là điểm đặc biệt để phân biệt dòng laptop của Apple so với các mẫu laptop khác trên thị trường.', 1, 'Laptop Apple MacBook Air 2020 i3 1.1GHz/8GB/256GB (MWTL2SA/A)'),
(55, 31, 'vi', 'iPhone 11 64GB', 'iPhone 11 64GB', 'Đặc điểm của iPhone 11 64GB <br />\r\n\r\nBộ tiêu chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp, Cây lấy sim <br />\r\nSau nhiều chờ đợi và đồn đoán, cuối cùng Apple cũng chính thức giới thiệu 3 siêu phẩm iPhone 11 mạnh mẽ nhất của mình vào tháng 9 năm 2019. Có mức giá rẻ nhất nhưng vẫn mạnh mẽ như iPhone Xr năm ngoái, đó chính là phiên bản iPhone 11 64GB. <br />\r\nNâng cấp mạnh mẽ máy ảnh <br />\r\nNói về nâng cấp, camera là điểm có nhiều cải tiến nhất trên thế hệ iPhone mới.', 1, 'Điện thoại iPhone 11 64GB'),
(50, 1, 'vi', 'Samsung Galaxy Note 20 Ultra', 'Samsung Galaxy Note 20 Ultra', 'Note 20 Ultra 5G vẫn là điển hình cho công thức quen thuộc của Samsung với dòng Note trong những năm gần đây: sử dụng phần cứng của những chiếc Galaxy S ra mắt ngay trước đó, cải tiến đôi chút và khoác lên \"bộ cánh\" vuông vắn, nam tính, không quên thêm vào chiếc bút S Pen.\r\n', 1, 'Samsung Galaxy Note 20 Ultra'),
(51, 3, 'vi', '	\r\nZenBook 15 UX534FTC', 'Laptop Asus ZenBook UX425EA', 'ZenBook 15 UX534FTC mỏng nhẹ của họ một bộ vi xử lý 4 nhân và GPU chuyên dụng. Các tùy chọn đi kèm cũng rất tuyệt vời như: màn hình IPS mờ, SSD NVMe, 16 GB RAM (dual-channel), bàn phím có đèn nền. Trên hết chính là thời lượng pin vượt trội – mảnh ghép cuối cùng của một hệ thống toàn diện.\r\n\r\nAsus ZenBook 15 UX534FTC\r\n\r\nChiếc Asus ZenBook 15 UX534FTC là một trong số ít những thiết bị mỏng, nhẹ và nhỏ gọn 15.6 inch mà không bị thiếu hụt sức mạnh của bộ vi xử lý. Cấu hình gồm có bộ vi xử lý 4 nhân Core i7-10510U, GeForce GTX 1650 Max-Q. Các thiết bị so sánh gồm có Acer ConceptD 5CN515-51, Dell XPS 15 7590 và Apple MacBook Pro 16.Bộ sản phẩm chuẩn: Dây nguồn, Sách hướng dẫn, Bao da, Adapter sạc, Cáp ( Type C to 3.5mm ) , Adapter chuyển ( USB to LAN )<br />\r\n', 1, 'Asus ZenBook UX425EA i5 1135G7/8GB/512GB/Cáp/Túi/Win10'),
(52, 4, 'vi', 'OPPO A53', 'OPPO A53 (2020)', '<br />\r\nĐặc điểm nổi bật của OPPO A53 (2020)<br />\r\nBộ sản phẩm chuẩn: Hộp, Sạc, Sách hướng dẫn, Cáp, Cây lấy sim, Ốp lưng<br />\r\nOPPO A53 2020 là mẫu smartphone tầm trung vừa mới được OPPO cho ra mắt, gây ấn tượng với thiết kế màn hình đục lỗ tràn viền 90Hz, chip Snapdragon 460 mới nhất cùng cụm 3 camera ấn tượng, được bán với mức giá vô cùng phải chăng.<br />\r\nThiết kế hiện đại, sang trọng<br />\r\nOPPO A53 được trang bị màn hình kích thước 6.5 inch với thiết kế tràn viền chứa camera selfie nằm ở góc trên cùng bên trái giúp tối ưu hóa không gian hiển thị được nhiều thông tin, mà vẫn giữ cho mình kích thước gọn nhẹ.<br />\r\nMáy sử dụng tấm nền IPS LCD  tuy chỉ có độ phân giải  HD+ (720 x 1600 Pixels) nhưng vẫn cho chất lượng hiển thị màu sắc trung thực, độ sáng và độ tương phản cao, dễ dàng thao tác, sử dụng ngoài trời nắng.<br />\r\nHơn thế nữa, màn hình này còn được hỗ trợ tần số quét 90Hz để mang đến cho người dùng những trải nghiệm giải trí mượt mà nhất khi sử dụng hàng ngày, đặc biệt là khi chơi game.', 1, 'OPPO A53 (2020)'),
(53, 30, 'vi', 'Samsung Galaxy Tab S7', 'Samsung Galaxy Tab S7', '<br />\r\nĐặc điểm nổi bật của Samsung Galaxy Tab S7<br />\r\nBộ sản phẩm chuẩn: Adapter, Tai nghe, Sách hướng dẫn, Bút cảm ứng, Cây lấy sim, Hộp máy, Cáp Type-C<br />\r\nSamsung Galaxy Tab S7 - Chiếc máy tính bảng có: thiết kế tuyệt đẹp, màn hình 120Hz siêu mượt, camera kép ấn tượng, bút S Pen cùng một hiệu năng mạnh mẽ dẫn đầu thị trường máy tính bảng Android.<br />\r\nThiết kế tràn viền cao cấp, thời thượng<br />\r\nGalaxy Tab S7 vẫn giữ nguyên thiết kế kim loại nguyên khối, góc cạnh như người tiền nhiệm Samsung Galaxy Tab S6 trước đó, cho cảm giác sang trọng và cao cấp, cầm vào tay rất vừa vặn và thoải mái.<br />\r\nCác cạnh bên được vát thẳng, bo tròn ở các góc, hoàn thiện bằng lớp vỏ kim loại cứng cáp ít bám mồ hôi và dấu vân tay, khả năng hoàn thiện cực kỳ cao và chắc chắn.<br />\r\nNút nguồn và nút tăng giảm âm lượng được bố trí ở cạnh trái, trong khi hệ thống 4 loa ngoài được tinh chỉnh bởi AKG của thiết bị được đặt ở cạnh trên và dưới, cho chất lượng âm thanh tốt, phục vụ nhu cầu giải trí di động.<br />\r\n', 1, 'Máy tính bảng Samsung Galaxy Tab S7'),
(54, 44, 'en', 'Apple AirPods 2', 'Headphones Bluetooth Apple AirPods 2', 'Apple AirPods 2 Headphones - Minimalist design, great sound quality <br />\r\nRecently, Apple has officially launched the Airpods 2 headset. This 2nd generation does not have much difference compared to the first generation in appearance, except for some details about the signal lights as well as the launch. Wireless charging and normal charging (wired charging) versions added. Alternatively, you can check out the Apple Airpods 3, coming soon. <br />\r\nWhat are genuine VN / A AirPods 2? Why choose? <br />\r\nFirst, genuine VN / A AirPods 2 are genuine products produced by Apple according to the Vietnamese market standards. The device is sold through authorized Apple dealers. So what is the difference between the genuine Apple AirPods 2 bluetooth headset VN / A from the old headphones, portable headphones?', 1, 'AirPods 2'),
(56, 34, 'en', 'Xiaomi Mi 10T Pro 5G', 'Xiaomi Mi 10T Pro 5G', 'Các tính năng của Xiaomi Mi 10T Pro 5G <br />\r\nBộ tiêu chuẩn: Hộp, Bộ sạc, Sách hướng dẫn, Cáp, Thẻ sim, Hộp đựng <br />\r\nChiếc smartphone Xiaomi cao cấp Mi 10T Pro 5G năm 2020 cuối cùng cũng được trình làng với loạt thông số gây “choáng ngợp”: màn hình tốc độ làm tươi 144 Hz, vi xử lý Snapdragon 865 và cụm camera 108 MP cùng nhau. đó là một mức giá dễ chịu cho người dùng. <br />\r\nMượt mà trong mọi khung hình với tốc độ làm mới 144 Hz <br />\r\nTốc độ làm mới 144 Hz là một trong những điểm nổi bật của Mi 10T Pro, mang lại tốc độ lên đến 144 khung hình / giây cho độ mượt mà tối đa, nâng cao mọi trải nghiệm cho dù bạn đang chơi game, xem phim hay chỉ. Đơn giản chỉ cần cuộn qua trang web để xem tin tức.', 1, 'Mi 10T Pro 5G'),
(57, 35, 'vi', 'Apple Watch Series 6 GPS', 'Apple Watch Series 6 GPS + Cellular 40mm nhôm dây cao su', 'Apple Watch Series 6 GPS + Dây cao su nhôm 40mm di động <br />\r\nTương lai của sức khỏe là trên cổ tay của bạn. Apple Watch Series 6 với tính năng đo oxy trong máu, đo điện tim mọi lúc mọi nơi và hỗ trợ luyện tập hoàn hảo, sẽ mang đến cho bạn một cuộc sống khỏe mạnh và năng động hơn.', 1, 'Apple Watch Series 6 GPS'),
(58, 36, 'vi', 'Samsung Galaxy Watch Active 2', 'Samsung Galaxy Watch Active 2 44mm viền thép dây da', 'Galaxy Watch Active 2 44mm là phiên bản được cải tiến công nghệ nhằm mang đến trải nghiệm tốt nhất cho người dùng với nhiều tính năng chăm sóc sức khỏe, nhận cuộc gọi trực tiếp cũng như nhiều tính năng tiện ích khác. br />\r\n7 bài tập nâng cao sức khỏe <br />\r\nSamsung Galaxy Watch Active 2 đích thực là huấn luyện viên thể thao chuyên nghiệp của bạn, được tích hợp các chế độ luyện tập khác nhau phù hợp với thể trạng và thể lực của mỗi người.', 1, 'Galaxy Watch Active 2 44mm'),
(59, 37, 'vi', 'Jabra True Wireless ', 'Tai nghe Bluetooth True Wireless Jabra Elite 75T Đen Titanium', 'Tai nghe Bluetooth không dây đích thực Jabra Elite 75T Black Titanium <br />\r\nGiới thiệu sản phẩm <br />\r\nThiết kế nhỏ gọn, hình dáng tiện dụng tạo cảm giác thoải mái khi sử dụng <br />\r\nĐược nâng cấp từ phiên bản 65T, chiếc tai nghe Titanium đen này của Jabra không chỉ kế thừa những điểm mạnh của phiên bản trước mà còn sở hữu những điểm tuyệt vời mới cả về chất lượng và thiết kế. <br />\r\nJabra Elite 75T được thử nghiệm và thiết kế theo phong cách “nhỏ - mới” để đảm bảo chúng vừa vặn với hầu hết mọi kích thước tai, đeo chắc chắn, an toàn. Để giảm tổn thương cho mô mềm của tai, hãng tặng kèm 3 loại đệm tai nhỏ - vừa - lớn để bạn lựa chọn sao cho phù hợp với kích cỡ tai của mình nhất.', 1, 'Tai nghe Bluetooth True Wireless Jabra Elite 75T Đen Titanium'),
(60, 43, 'en', 'Asus ROG Strix SCAR 17', 'Laptop Gaming Asus ROG Strix SCAR 17 G732L WSHG065T', 'The Asus ROG SCAR III is designed to compete in the top of the range of gaming PCs running Windows 10 Pro. The Intelligent Cooling unleashes the unlimited power of 10th Gen Intel Core CPUs and GeForce RTX ™ graphics, while the world\'s fastest 300Hz / 3ms laptop display lets you play at gaming speed. Karma. Enter multiplayer matches on the go with stronger RangeBoost Wi-Fi, show off your personality with an Aura Sync light strip that surrounds your laptop and keep personal data private with the new ROG Keystone key.', 1, 'Laptop Gaming Asus ROG Strix SCAR 17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `provider`
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
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `provider`
--

INSERT INTO `provider` (`id`, `provider_name`, `image_provider`, `description`, `address`, `phone_number`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Oppo', 'hinh2', 'OPPO Electronics Corp là nhà sản xuất thiết bị điện tử, điện thoại di động Android Trung Quốc, có trụ sở đặt tại Đông Hoản, Quảng Đông, công ty con của tập đoàn điện tử BBK Electronics. OPPO cung cấp một số sản phẩm chính như máy nghe nhạc MP3, eBook, DVD/Blu-ray và điện thoại thông minh.', '889 Quang Phổ , Thanh Xuân , Hà Nội', '1900444444', 'oppovn@gmail.com', 1, '2020-09-01 00:00:00', '2020-09-17 00:00:00'),
(2, 'Samsung', 'hh2', 'Tập đoàn Samsung – là một tập đoàn đa quốc gia khổng lồ của Hàn Quốc có tổng hành dinh được đặt tại khu phức hợp Samsung Town, quận Seocho-gu, thành phố Seoul.', '443 Lý Thường Kiệt, Phường 8, Quận Tân Bình, Tp.HCM', '02839717920', 'samsungvn@.sam.vn', 1, '2020-09-04 00:00:00', '2020-09-18 00:00:00'),
(4, 'Huawei', 'h1', 'Huawei, tên đầy đủ là Công ty trách nhiệm hữu hạn kỹ thuật Hoa Vi là một tập đoàn đa quốc gia về thiết bị mạng và viễn thông, có trụ sở chính tại Thâm Quyến, Quảng Đông, Trung Quốc. Huawei được thành lập năm 1987 bởi Nhậm Chính Phi, một cựu kỹ sư của Giải phóng quân Nhân dân Trung Quốc', 'Long Cương, Thâm Quyến, Quảng Đông, Trung Quốc', '19007651', 'huaweivn$huawei.vn\r\n', 1, '2020-09-01 00:00:00', '2020-09-05 00:00:00'),
(3, ' Xiaomi', 'hh2', 'Xiaomi được thành lập vào năm 2010 bởi doanh nhân khởi nghiệp liên tục (serial entrepreneur) Lei Jun dựa trên tầm nhìn “đem sáng tạo dành cho mọi người”.\nChúng tôi tin rằng sản phẩm chất lượng cao với công nghệ hàng đầu đều dành cho tất cả mọi người.\nChúng tôi đã tạo ra phần cứng, phần mềm và dịch vụ Internet tuyệt vời dành cho Mi Fans.\nChúng tôi kết hợp thông tin phản hồi của họ vào các dòng sản phẩm, bao gồm điện thoại Mi và Redmi, Mi TV, STB, Bộ định tuyến Mi,\ncác sản phẩm gia đình thông minh, thiết bị đeo Hệ sinh thái Mi và phụ kiện. Với sự hiện diện trên 30 quốc gia và khu vực,\nXiaomi đang mở rộng dấu ấn trên khắp thế giới để trở thành một thương hiệu toàn cầu.', 'Lầu 10, tòa nhà Metropolitan, 235 Đồng Khởi, Quận 1, tp HCM, Việt Nam', '02839717920', 'vu@xiaomi.com', 1, '2020-09-04 00:00:00', '2020-09-18 00:00:00'),
(5, 'Apple', 'h1', 'Apple Inc. là một tập đoàn công nghệ của Mỹ có trụ sở chính đặt tại Cupertino, California. Apple được thành lập ngày 1 tháng 4 năm 1976 dưới tên Apple Computer, Inc., và đổi tên thành Apple Inc. vào đầu năm 2007', 'Cupertino, California, Hoa Kỳ', '19008765', 'apple@apple.com.vn\r\n', 1, '2020-09-01 00:00:00', '2020-09-05 00:00:00'),
(6, 'Nokia', 'h1', 'Nokia Corporation là một tập đoàn đa quốc gia có trụ sở tại Keilaniemi, Espoo, Phần Lan. Nokia tập trung vào các sản phẩm viễn thông không dây và cố định, với 129.746 nhân viên làm việc ở 120 quốc gia, bán sản phẩm ở hơn 150 quốc gia trên toàn cầu và đạt doanh số 41 tỷ euro với lợi tức 1,2 tỷ năm 2009', 'Espoo, Phần Lan', '19000015', 'nokia@gmail.com.vn', 1, '2020-09-01 00:00:00', '2020-11-30 13:00:07'),
(9, 'Asus', '/upload/products/81595792_2553391731582509_1694237896736768000_n.jpg', 'asus', 'Địa chỉ', '096786222qqq', 'duykhanhqv@gmail.com', 1, '2020-10-30 14:04:21', '2020-11-10 08:29:40'),
(10, 'Oppo', '/upload/products/637340486124696106_ss-tab-s7-den-1.png', 'oppo', 'Quảng Xương', '352902397', 'duykhanhqv@gmail.com', 0, '2020-11-10 06:53:30', '2020-11-27 13:11:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `link` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `show_menu` tinyint(4) NOT NULL,
  `access` tinyint(11) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `link`, `parent_id`, `status`, `show_menu`, `access`, `create_at`, `update_at`) VALUES
(1, 'Sản Phẩm', 'backend/product', 0, 1, 0, 0, '2020-09-01 00:00:00', '2020-09-14 00:00:00'),
(2, 'User', 'link', 0, 1, 0, 0, '2020-09-01 00:00:00', '2020-09-01 00:00:00'),
(3, 'Trang chủ', 'backend/dashboard', 0, 1, 0, 0, '2020-09-01 00:00:00', '2020-09-01 00:00:00'),
(4, 'Thêm Sản phẩm', '/backend/product/create', 1, 1, 0, 0, '2020-09-01 00:00:00', '2020-09-01 00:00:00'),
(8, 'Xóa Sản Phẩm', '#', 1, 1, 0, 0, '2020-10-01 00:00:00', '2020-10-22 00:00:00'),
(9, 'Sửa Sản Phẩm', '/backend/product/1/edit', 1, 1, 0, 0, '2020-10-07 00:00:00', '2020-10-14 00:00:00'),
(10, 'Danh mục', '#', 0, 1, 1, 1, '2020-11-12 00:00:00', '2020-11-11 00:00:00'),
(11, 'Nhà cung cấp', '#', 0, 1, 1, 1, '2020-11-12 00:00:00', '2020-11-11 00:00:00'),
(12, 'Thương hiệu', '#', 0, 1, 1, 1, '2020-11-12 00:00:00', '2020-11-11 00:00:00'),
(13, 'Quản lý đơn hàng', '#', 0, 1, 1, 1, '2020-11-12 00:00:00', '2020-11-11 00:00:00'),
(14, 'Phân quyền', '#', 0, 1, 1, 1, '2020-11-12 00:00:00', '2020-11-11 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `translate_product`
--

DROP TABLE IF EXISTS `translate_product`;
CREATE TABLE IF NOT EXISTS `translate_product` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci NOT NULL,
  `id_pro` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `translate_product`
--

INSERT INTO `translate_product` (`id`, `name`, `detail`, `id_pro`, `lang`) VALUES
(1, 'Trang chủ', 'dịch trang chủ', 'en', 'VI'),
(2, 'home', 'home', '2', 'EN');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
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
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `full_name`, `username`, `image_use`, `password`, `remember_token`, `status`, `create_at`, `update_at`) VALUES
(1, 'Nguyễn Duy Khánh', 'khanhmoc99', '/upload/user/bao-ngu.jpg', '$2y$10$X59Jr4rYvSpX5oZ9TU2lT.CuFnvmaa6XxklI03THnzu59ZWf2Jyuq', 'G4pOzwFiuvh0kdRrSW039pUoZ6d2EGF4PDfVXsGc3f68k5fzI1uF14R2VJ8f', 1, '2020-09-14 00:00:00', '2020-11-11 09:07:29'),
(2, 'Nguyễn Minh Khoa', 'minhkhoatf', '/upload/user/banner_5.jpg', '$2y$10$KkRBVafB8.rQjcewWxiBSeXVKtuTNcLcZ8oWjaPZfyLjlXEIBQGRq', NULL, 1, '2020-09-01 00:00:00', '2020-11-11 09:10:13'),
(3, 'Nguyễn Văn Hoài', 'taurus2523', '/upload/user/banner_6.jpg', '$2y$10$NVLtP2cVn3ysFPk512aqZuFsgnbx4DS2mQV0rYP5RUj67GspW2EqG', NULL, 1, '2020-09-01 00:00:00', '2020-11-11 09:10:53'),
(4, 'Nguyễn Quốc Đạt', 'chuabeo99', '/upload/user/face18.jpg', '$2y$10$e63OhKtAvapvuR3lI7pBxO21mUEs6xOTqgEfqGLBAhbWv07k/rzZy', 'eaSICfoWTmElW3lbiibt8RRE3Nu4RSpeIn67ITQyTKSg22m0zoU6wy0mH1x2', 1, '2020-09-01 00:00:00', '2020-11-11 09:11:54'),
(5, 'Lê Chiến Thắng', 'lct', '/upload/user/face15.jpg', '$2y$10$NVLtP2cVn3ysFPk512aqZuFsgnbx4DS2mQV0rYP5RUj67GspW2EqG', NULL, 1, '2020-09-01 00:00:00', '2020-11-11 09:12:33'),
(6, 'Nguyễn Lê Minh Hiếu', 'nlmh', '/upload/user/face14.jpg', '$2y$10$NVLtP2cVn3ysFPk512aqZuFsgnbx4DS2mQV0rYP5RUj67GspW2EqG', NULL, 1, '2020-09-01 00:00:00', '2020-11-11 09:13:07'),
(11, 'Lê Thị Trang', 'lqh', '/upload/user/face23.jpg', '$2y$10$NVLtP2cVn3ysFPk512aqZuFsgnbx4DS2mQV0rYP5RUj67GspW2EqG', NULL, 1, '2020-09-23 03:07:47', '2020-11-11 09:13:57'),
(15, 'Nguyễn Quang Minh', 'admin123', '/upload/user/login_bg2.jpg', '$2y$10$NVLtP2cVn3ysFPk512aqZuFsgnbx4DS2mQV0rYP5RUj67GspW2EqG', NULL, 1, '2020-09-25 07:43:00', '2020-11-11 09:09:33'),
(26, 'Nguyễn Duy Khánh', 'khanhmoc99', '/upload/user/bao-ngu.jpg', '$2y$10$X59Jr4rYvSpX5oZ9TU2lT.CuFnvmaa6XxklI03THnzu59ZWf2Jyuq', NULL, 1, NULL, '2020-11-11 09:03:55'),
(20, 'Lê Thị Thuỳ Linh', 'lttl', '/upload/user/face8.jpg', '$2y$10$NVLtP2cVn3ysFPk512aqZuFsgnbx4DS2mQV0rYP5RUj67GspW2EqG', NULL, 1, '2020-11-08 16:51:58', '2020-11-11 09:15:08');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
