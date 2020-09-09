-- --------------------------------------------------------
-- Host:                         192.168.123.13
-- Server version:               10.5.4-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for accessoriesdb
CREATE DATABASE IF NOT EXISTS `accessoriesdb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `accessoriesdb`;

-- Dumping structure for table accessoriesdb.booking
CREATE TABLE IF NOT EXISTS `booking` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `booking_date` datetime NOT NULL,
  `booking_date_shipped` datetime NOT NULL,
  `booking_by` int(11) NOT NULL,
  `booking_state_id` int(11) NOT NULL,
  `checkout_id` int(11) NOT NULL,
  `unit_price` double NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  `shipper_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `FK_booking_checkout_id_checkout_checkout_id` (`checkout_id`),
  KEY `FK_booking_booking_state_id_booking_state_booking_state_id` (`booking_state_id`),
  KEY `FK_booking_payment_method_id_payment_method_payment_method_id` (`payment_method_id`),
  KEY `FK_booking_promotion_id_promotion_promotion_id` (`promotion_id`),
  KEY `FK_booking_booking_by_user_user_id` (`booking_by`),
  KEY `FK_booking_shipper_id_user_user_id` (`shipper_id`),
  CONSTRAINT `FK_booking_booking_by_user_user_id` FOREIGN KEY (`booking_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FK_booking_booking_state_id_booking_state_booking_state_id` FOREIGN KEY (`booking_state_id`) REFERENCES `booking_state` (`booking_state_id`),
  CONSTRAINT `FK_booking_checkout_id_checkout_checkout_id` FOREIGN KEY (`checkout_id`) REFERENCES `checkout` (`checkout_id`),
  CONSTRAINT `FK_booking_payment_method_id_payment_method_payment_method_id` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_method` (`payment_method_id`),
  CONSTRAINT `FK_booking_promotion_id_promotion_promotion_id` FOREIGN KEY (`promotion_id`) REFERENCES `promotion` (`promotion_id`),
  CONSTRAINT `FK_booking_shipper_id_user_user_id` FOREIGN KEY (`shipper_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table accessoriesdb.booking: ~2 rows (approximately)
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` (`booking_id`, `booking_date`, `booking_date_shipped`, `booking_by`, `booking_state_id`, `checkout_id`, `unit_price`, `payment_method_id`, `promotion_id`, `shipper_id`) VALUES
	(1, '2020-09-01 11:47:58', '2021-01-01 11:47:59', 2, 2, 1, 800, 1, NULL, NULL),
	(2, '2020-09-01 11:48:21', '2021-03-01 11:48:22', 1, 1, 1, 323232, 2, NULL, NULL);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;

-- Dumping structure for table accessoriesdb.booking_details
CREATE TABLE IF NOT EXISTS `booking_details` (
  `booking_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL,
  `total_unit_price` double NOT NULL,
  `booking_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`booking_details_id`),
  KEY `FK_booking_details_booking_id_booking_booking_id` (`booking_id`),
  KEY `FK_booking_details_product_id_product_product_id` (`product_id`),
  CONSTRAINT `FK_booking_details_booking_id_booking_booking_id` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  CONSTRAINT `FK_booking_details_product_id_product_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table accessoriesdb.booking_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `booking_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking_details` ENABLE KEYS */;

-- Dumping structure for table accessoriesdb.booking_state
CREATE TABLE IF NOT EXISTS `booking_state` (
  `booking_state_id` int(11) NOT NULL AUTO_INCREMENT,
  `booking_state_name` varchar(45) NOT NULL,
  PRIMARY KEY (`booking_state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table accessoriesdb.booking_state: ~2 rows (approximately)
/*!40000 ALTER TABLE `booking_state` DISABLE KEYS */;
INSERT INTO `booking_state` (`booking_state_id`, `booking_state_name`) VALUES
	(1, 'Booking'),
	(2, 'Shipping');
/*!40000 ALTER TABLE `booking_state` ENABLE KEYS */;

-- Dumping structure for table accessoriesdb.brands
CREATE TABLE IF NOT EXISTS `brands` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(45) NOT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`brand_id`),
  KEY `FK_brands_vendor_id_vendors_vendor_id` (`vendor_id`),
  CONSTRAINT `FK_brands_vendor_id_vendors_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`vendor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- Dumping data for table accessoriesdb.brands: ~51 rows (approximately)
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` (`brand_id`, `brand_name`, `vendor_id`) VALUES
	(1, 'Macbook', 1),
	(2, 'Iphone', 1),
	(3, 'Ipad', 1),
	(4, 'Apple Watch', 1),
	(5, 'Airpods', 1),
	(6, 'Tablet Galaxy', 2),
	(7, 'Galaxy 2020', 2),
	(8, 'Galaxy 2019', 2),
	(9, 'Galaxy 2018', 2),
	(10, 'Galaxy 2017', 2),
	(11, 'Galaxy 2016', 2),
	(12, 'Xperia 2019', 3),
	(13, 'Xperia 2018', 3),
	(14, 'Xperia 2017', 3),
	(15, 'Xperia 2016', 3),
	(16, 'Xperia 2015', 3),
	(17, 'Xperia 2014', 3),
	(18, 'Xperia 2013', 3),
	(19, 'HTC 2019', 4),
	(20, 'HTC 2018', 4),
	(21, 'HTC 2017', 4),
	(22, 'Nokia 2019', 5),
	(23, 'Nokia 2018', 5),
	(24, 'Nokia 2017', 5),
	(25, 'Nokia-Microsoft', 5),
	(26, 'LG 2019', 6),
	(27, 'LG 2018', 6),
	(28, 'LG 2017', 6),
	(29, 'LG 2016', 6),
	(30, 'LG 2015', 6),
	(31, 'Asus Zenfone 2019', 7),
	(32, 'Asus Zenfone 2018', 7),
	(33, 'Asus Zenfone 2017', 7),
	(34, 'Asus Zenfone 2016', 7),
	(35, 'Asus Zenfone 2015', 7),
	(36, 'Xiaomi', 8),
	(37, 'Vsmart', 8),
	(38, 'ViVo', 8),
	(39, 'Realme', 8),
	(40, 'Oppo', 8),
	(41, 'Huawei', 8),
	(42, 'OnePlus', 8),
	(43, 'Thẻ nhớ', 9),
	(44, 'Tai nge Earphone & Headphone', 9),
	(45, 'Tai nge Bluetooth', 9),
	(46, 'Sạc, cáp kết nôi', 9),
	(47, 'Quạt mini', 9),
	(48, 'Pin dự phòng', 9),
	(49, 'Loa bluetooth', 9),
	(50, 'Miếng dán', 9),
	(51, 'Ba lô-túi xách', 9);
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;

-- Dumping structure for table accessoriesdb.category
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(45) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table accessoriesdb.category: ~2 rows (approximately)
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`category_id`, `category_name`) VALUES
	(1, 'tai nghe'),
	(2, 'dây sạc');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Dumping structure for table accessoriesdb.checkout
CREATE TABLE IF NOT EXISTS `checkout` (
  `checkout_id` int(11) NOT NULL AUTO_INCREMENT,
  `billing_address` varchar(45) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`checkout_id`),
  KEY `FK_checkout_user_id_user_user_id` (`user_id`),
  CONSTRAINT `FK_checkout_user_id_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table accessoriesdb.checkout: ~1 rows (approximately)
/*!40000 ALTER TABLE `checkout` DISABLE KEYS */;
INSERT INTO `checkout` (`checkout_id`, `billing_address`, `phone_number`, `user_id`) VALUES
	(1, '44564545456', 123456789, 3);
/*!40000 ALTER TABLE `checkout` ENABLE KEYS */;

-- Dumping structure for table accessoriesdb.invetory
CREATE TABLE IF NOT EXISTS `invetory` (
  `invetory_id` int(11) NOT NULL AUTO_INCREMENT,
  `import_date` datetime NOT NULL,
  `import_price` double NOT NULL,
  `import_by` int(11) NOT NULL,
  `quantiry` int(11) NOT NULL,
  PRIMARY KEY (`invetory_id`),
  KEY `FK_invetory_import_by_user_user_id` (`import_by`),
  CONSTRAINT `FK_invetory_import_by_user_user_id` FOREIGN KEY (`import_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table accessoriesdb.invetory: ~1 rows (approximately)
/*!40000 ALTER TABLE `invetory` DISABLE KEYS */;
INSERT INTO `invetory` (`invetory_id`, `import_date`, `import_price`, `import_by`, `quantiry`) VALUES
	(1, '2020-08-31 11:17:57', 50000, 1, 5);
/*!40000 ALTER TABLE `invetory` ENABLE KEYS */;

-- Dumping structure for table accessoriesdb.payment_method
CREATE TABLE IF NOT EXISTS `payment_method` (
  `payment_method_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_method_name` varchar(45) NOT NULL,
  PRIMARY KEY (`payment_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table accessoriesdb.payment_method: ~2 rows (approximately)
/*!40000 ALTER TABLE `payment_method` DISABLE KEYS */;
INSERT INTO `payment_method` (`payment_method_id`, `payment_method_name`) VALUES
	(1, 'cash'),
	(2, 'card');
/*!40000 ALTER TABLE `payment_method` ENABLE KEYS */;

-- Dumping structure for table accessoriesdb.product
CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(45) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` double NOT NULL,
  `image` varchar(45) DEFAULT NULL,
  `active` bit(1) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `invetory_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `FK_product_category_id_category_category_id` (`category_id`),
  KEY `FK_product_invetory_id_invetory_invetory_id` (`invetory_id`),
  KEY `FK_product_brand_id_brands_brand_id` (`brand_id`),
  CONSTRAINT `FK_product_brand_id_brands_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`brand_id`),
  CONSTRAINT `FK_product_category_id_category_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  CONSTRAINT `FK_product_invetory_id_invetory_invetory_id` FOREIGN KEY (`invetory_id`) REFERENCES `invetory` (`invetory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table accessoriesdb.product: ~1 rows (approximately)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`product_id`, `product_name`, `quantity`, `unit_price`, `image`, `active`, `brand_id`, `category_id`, `invetory_id`) VALUES
	(1, 'Dây sạc SAMSUNG', 5, 50000, NULL, b'1', 1, 2, 1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- Dumping structure for table accessoriesdb.promotion
CREATE TABLE IF NOT EXISTS `promotion` (
  `promotion_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `value` double NOT NULL,
  `valid_from` datetime NOT NULL,
  `valid_until` datetime NOT NULL,
  `active` bit(1) NOT NULL,
  PRIMARY KEY (`promotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table accessoriesdb.promotion: ~0 rows (approximately)
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;

-- Dumping structure for table accessoriesdb.role
CREATE TABLE IF NOT EXISTS `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table accessoriesdb.role: ~2 rows (approximately)
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`role_id`, `name`) VALUES
	(1, 'admin'),
	(2, 'user');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;

-- Dumping structure for table accessoriesdb.user
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `Phone` int(11) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `facebook_id` text DEFAULT NULL,
  `gmail_id` text DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table accessoriesdb.user: ~5 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`user_id`, `username`, `password`, `email`, `address`, `Phone`, `active`, `facebook_id`, `gmail_id`) VALUES
	(1, 'user1', '123456', 'a@gmail.com', NULL, NULL, b'0', '', NULL),
	(2, 'user2', '123', 'b@gmail.com', NULL, NULL, b'0', NULL, NULL),
	(3, 'user3', '123', 'c@gmal.com', NULL, NULL, b'0', NULL, NULL),
	(4, 'user4', '123', 'c@gmal.com', NULL, NULL, b'0', NULL, NULL),
	(5, 'u5', '123', 'c@gmal.com', NULL, NULL, b'0', '2323', NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- Dumping structure for table accessoriesdb.user_role
CREATE TABLE IF NOT EXISTS `user_role` (
  `user_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_role_id`),
  KEY `FK_user_role_role_id_role_role_id` (`role_id`),
  KEY `FK_user_role_user_id_user_user_id` (`user_id`),
  CONSTRAINT `FK_user_role_role_id_role_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  CONSTRAINT `FK_user_role_user_id_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table accessoriesdb.user_role: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;

-- Dumping structure for table accessoriesdb.vendors
CREATE TABLE IF NOT EXISTS `vendors` (
  `vendor_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_name` varchar(45) NOT NULL,
  PRIMARY KEY (`vendor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Dumping data for table accessoriesdb.vendors: ~9 rows (approximately)
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
INSERT INTO `vendors` (`vendor_id`, `vendor_name`) VALUES
	(1, 'APPLE'),
	(2, 'SAMSUNG'),
	(3, 'SONY'),
	(4, 'HTC'),
	(5, 'NOKIA'),
	(6, ' LG'),
	(7, 'ASUS'),
	(8, 'HÃNG KHÁC'),
	(9, 'Portable');
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
