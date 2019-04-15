-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 15, 2019 at 12:59 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flipkart_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brands`
--

DROP TABLE IF EXISTS `tbl_brands`;
CREATE TABLE IF NOT EXISTS `tbl_brands` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(255) NOT NULL,
  `subcat_id` int(11) NOT NULL,
  `isDelete` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`brand_id`),
  KEY `subcat_id` (`subcat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_brands`
--

INSERT INTO `tbl_brands` (`brand_id`, `brand_name`, `subcat_id`, `isDelete`, `createdAt`, `updatedAt`) VALUES
(1, 'MI', 1, 0, '2019-04-03 05:48:15', '2019-04-03 05:48:15'),
(2, 'Samsung', 1, 0, '2019-04-03 05:48:45', '2019-04-03 05:48:45'),
(3, 'Realme', 1, 0, '2019-04-03 05:49:01', '2019-04-03 05:49:01'),
(4, 'OPPO', 1, 0, '2019-04-03 05:49:06', '2019-04-03 05:49:06'),
(5, 'Apple', 1, 0, '2019-04-03 05:49:11', '2019-04-03 05:49:11'),
(6, 'Vivo', 1, 0, '2019-04-03 05:49:17', '2019-04-03 05:49:17'),
(7, 'Asus', 1, 0, '2019-04-03 05:49:43', '2019-04-03 05:49:43'),
(8, 'Power Banks', 2, 0, '2019-04-03 05:51:29', '2019-04-03 05:51:29'),
(9, 'Memory Cards', 2, 0, '2019-04-03 05:51:38', '2019-04-03 05:51:38'),
(10, 'Mobile Cables', 2, 0, '2019-04-03 05:51:50', '2019-04-03 05:51:50'),
(11, 'Mobile Chargers', 2, 0, '2019-04-03 05:51:57', '2019-04-03 05:51:57'),
(12, 'Mobile Cases', 2, 0, '2019-04-03 05:52:19', '2019-04-03 05:52:19'),
(13, 'Smart Watches', 3, 0, '2019-04-03 05:52:59', '2019-04-03 05:52:59'),
(14, 'Smart Glasses(VR)', 3, 0, '2019-04-03 05:53:20', '2019-04-03 05:53:20'),
(15, 'Home Theatres', 5, 0, '2019-04-03 05:55:03', '2019-04-03 05:55:03'),
(16, 'Home Audio Speakers', 5, 0, '2019-04-03 05:55:15', '2019-04-03 05:55:15'),
(17, 'Inverter Acs', 11, 1, '2019-04-03 05:57:18', '2019-04-03 05:57:18'),
(18, 'Split Acs', 11, 0, '2019-04-03 05:57:24', '2019-04-03 05:57:24'),
(19, 'Window Acs', 11, 0, '2019-04-03 05:57:30', '2019-04-03 05:57:30'),
(20, 'Single door Refrigerator', 12, 0, '2019-04-03 05:58:27', '2019-04-03 05:58:27'),
(21, 'Double door Refrigerator', 12, 0, '2019-04-03 05:58:33', '2019-04-03 05:58:33'),
(22, 'Side by Side Refrigerator', 12, 0, '2019-04-03 05:58:56', '2019-04-03 05:58:56'),
(23, 'Sports Shoes', 14, 0, '2019-04-03 06:00:08', '2019-04-03 06:00:08'),
(24, 'Formal Shoes', 14, 1, '2019-04-03 06:00:14', '2019-04-03 06:00:14'),
(25, 'Boots', 14, 0, '2019-04-03 06:00:30', '2019-04-03 06:00:30'),
(26, 'Sneakers', 14, 1, '2019-04-03 06:00:37', '2019-04-03 06:00:37'),
(27, 'T-shirts', 15, 0, '2019-04-03 06:00:58', '2019-04-03 06:00:58'),
(28, 'Shirts', 15, 0, '2019-04-03 06:01:04', '2019-04-03 06:01:04'),
(29, 'Kurtas', 15, 0, '2019-04-03 06:01:11', '2019-04-03 06:01:11'),
(30, 'Top, T-shirts & Shirts', 22, 0, '2019-04-03 06:03:45', '2019-04-03 06:03:45'),
(31, 'Dresses', 22, 0, '2019-04-03 06:03:52', '2019-04-03 06:03:52'),
(32, 'Jeans', 22, 1, '2019-04-03 06:03:59', '2019-04-03 06:03:59'),
(33, 'Sarees', 23, 0, '2019-04-03 06:04:54', '2019-04-03 06:04:54'),
(34, 'Kurtis', 23, 0, '2019-04-03 06:05:16', '2019-04-03 06:05:16'),
(35, 'Dress Materials', 23, 1, '2019-04-03 06:05:26', '2019-04-03 06:05:26'),
(36, 'School Bags', 32, 0, '2019-04-03 06:06:29', '2019-04-03 06:06:29'),
(37, 'Lunch Box', 32, 1, '2019-04-03 06:07:54', '2019-04-03 06:07:54'),
(38, 'School Combo Set', 32, 0, '2019-04-03 06:08:05', '2019-04-03 06:08:05'),
(39, 'Coffee Mugs', 34, 1, '2019-04-03 06:09:21', '2019-04-03 06:09:21'),
(40, 'Dinnerware & Crockery', 34, 0, '2019-04-03 06:09:47', '2019-04-03 06:09:47'),
(41, 'Bar & Glassware', 34, 0, '2019-04-03 06:10:07', '2019-04-03 06:10:07'),
(42, 'Beds', 36, 0, '2019-04-03 06:11:09', '2019-04-03 06:11:09'),
(43, 'Sofas', 36, 0, '2019-04-03 06:11:16', '2019-04-03 06:11:16'),
(44, 'Drawers', 36, 1, '2019-04-03 06:11:23', '2019-04-03 06:11:23'),
(45, 'Dining Tables & Sets', 36, 0, '2019-04-03 06:12:16', '2019-04-03 06:12:16'),
(46, 'Bean Bags', 36, 1, '2019-04-03 06:13:03', '2019-04-03 06:13:03'),
(47, 'Bedsheets', 37, 0, '2019-04-03 06:14:27', '2019-04-03 06:14:27'),
(48, 'Curtains', 37, 0, '2019-04-03 06:14:54', '2019-04-03 06:14:54'),
(49, 'Towels', 37, 1, '2019-04-03 06:15:00', '2019-04-03 06:15:00'),
(50, 'Mats & Carpets', 37, 1, '2019-04-03 06:15:13', '2019-04-03 06:15:13'),
(51, 'HP', 4, 0, '2019-04-06 05:13:54', '2019-04-06 05:13:54'),
(52, 'Dell', 4, 0, '2019-04-06 05:16:06', '2019-04-06 05:16:06'),
(53, 'Lenovo', 4, 0, '2019-04-06 05:16:13', '2019-04-06 05:16:13'),
(54, 'Apple MacBook', 4, 0, '2019-04-06 05:16:34', '2019-04-06 05:16:34'),
(55, 'Nikon', 6, 0, '2019-04-06 05:32:13', '2019-04-06 05:32:13'),
(56, 'GoPro Hero', 6, 0, '2019-04-06 05:35:58', '2019-04-06 05:35:58'),
(57, 'Apple', 7, 0, '2019-04-06 05:41:43', '2019-04-06 05:41:43'),
(58, 'HP', 7, 0, '2019-04-06 05:44:11', '2019-04-06 05:44:11'),
(59, 'Apple iPad', 8, 0, '2019-04-06 05:48:12', '2019-04-06 05:48:12'),
(60, 'Apple iPad Pro', 8, 0, '2019-04-06 05:48:32', '2019-04-06 05:48:32'),
(61, 'Samsung', 9, 0, '2019-04-06 05:59:28', '2019-04-06 05:59:28'),
(62, 'MI', 9, 0, '2019-04-06 05:59:41', '2019-04-06 05:59:41'),
(63, 'IFB', 10, 0, '2019-04-06 06:05:52', '2019-04-06 06:05:52'),
(64, 'IFB', 13, 0, '2019-04-06 06:09:31', '2019-04-06 06:09:31'),
(65, 'Eveready', 13, 0, '2019-04-06 06:12:50', '2019-04-06 06:12:50'),
(66, 'Philips', 13, 0, '2019-04-06 06:16:11', '2019-04-06 06:16:11'),
(67, 'Fastrack', 19, 0, '2019-04-06 06:21:49', '2019-04-06 06:21:49'),
(68, 'Sonata', 19, 0, '2019-04-06 06:22:07', '2019-04-06 06:22:07'),
(69, 'Jackets', 20, 0, '2019-04-06 06:31:59', '2019-04-06 06:31:59'),
(70, 'Sweatshirts', 20, 0, '2019-04-06 06:32:44', '2019-04-06 06:32:44'),
(71, 'Puma', 25, 0, '2019-04-06 06:38:43', '2019-04-06 06:38:43'),
(72, 'Axter', 25, 0, '2019-04-06 06:38:54', '2019-04-06 06:38:54'),
(73, 'Precious', 27, 0, '2019-04-06 06:43:17', '2019-04-06 06:43:17'),
(74, 'Artificial', 27, 0, '2019-04-06 06:43:21', '2019-04-06 06:43:21'),
(75, 'Boys\'s T-shirt', 28, 0, '2019-04-06 06:53:23', '2019-04-06 06:53:23'),
(76, 'Girl\'s Dresses', 29, 0, '2019-04-06 06:56:07', '2019-04-06 06:56:07'),
(77, 'Mickey Mouse', 31, 0, '2019-04-06 06:59:56', '2019-04-06 06:59:56'),
(78, 'Dog', 31, 0, '2019-04-06 07:00:10', '2019-04-06 07:00:10'),
(79, 'Slippers', 30, 0, '2019-04-06 07:44:04', '2019-04-06 07:44:04'),
(80, 'Paintings', 38, 0, '2019-04-06 07:53:08', '2019-04-06 07:53:08'),
(81, 'Clocks', 38, 0, '2019-04-06 07:53:18', '2019-04-06 07:53:18'),
(82, 'Showpieces', 38, 0, '2019-04-06 07:53:31', '2019-04-06 07:53:31'),
(83, 'Syska LED', 39, 0, '2019-04-06 08:02:11', '2019-04-06 08:02:11'),
(84, 'Decorative Lightings', 39, 0, '2019-04-06 08:10:00', '2019-04-06 08:10:00'),
(85, 'Diaries', 41, 0, '2019-04-06 08:18:19', '2019-04-06 08:18:19'),
(86, 'Key Chains', 41, 0, '2019-04-06 08:18:44', '2019-04-06 08:18:44'),
(87, 'Sony Playstation', 42, 0, '2019-04-06 08:35:54', '2019-04-06 08:35:54'),
(88, 'Gaming Consoles', 42, 0, '2019-04-06 08:39:04', '2019-04-06 08:39:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

DROP TABLE IF EXISTS `tbl_categories`;
CREATE TABLE IF NOT EXISTS `tbl_categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `isDelete` int(11) DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`category_id`, `category_name`, `isDelete`, `createdAt`, `updatedAt`) VALUES
(1, 'Electronics', 0, '2019-04-02 08:39:19', '2019-04-02 08:39:19'),
(2, 'TV & Appliances', 0, '2019-04-02 08:43:15', '2019-04-02 08:43:15'),
(3, 'Men', 0, '2019-04-02 08:43:32', '2019-04-02 08:43:32'),
(4, 'Women', 0, '2019-04-02 08:43:40', '2019-04-02 08:43:40'),
(5, 'Baby & Kids', 0, '2019-04-02 08:44:03', '2019-04-02 08:44:03'),
(6, 'Home & Furniture', 0, '2019-04-02 08:44:22', '2019-04-02 08:44:22'),
(7, 'Sports, Books & More', 0, '2019-04-02 08:44:42', '2019-04-02 08:44:42');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

DROP TABLE IF EXISTS `tbl_products`;
CREATE TABLE IF NOT EXISTS `tbl_products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `product_desc` varchar(255) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_img` varchar(255) NOT NULL,
  `bid` int(11) NOT NULL,
  `isDelete` int(11) DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `bid` (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_name`, `product_desc`, `product_price`, `product_img`, `bid`, `isDelete`, `createdAt`, `updatedAt`) VALUES
(1, 'Redmi Go', 'Fast, sleek and powerful - meet the Redmi Go. Its 12.7 cm (5) HD display is designed to deliver sharp and vibrant visuals. Loaded with the Android Oreo (Go edition) OS, the Redmi Go ensures a smooth, light and fast user experience.', 4499, '[\"mi-redmi-go-1554288252721.jpeg\",\"thumb_187000_default_big-1554288252722.jpeg\",\"Xiaomi-Redmi-Go-4-696x435-1554288252724.jpg\"]', 1, 0, '2019-04-03 10:44:12', '2019-04-03 10:44:12'),
(2, 'Samsung S10', 'It comes with an Intelligent Camera that automatically optimizes its settings to give you picture-perfect photos. That\'s not all, the Samsung S10 has the Infinity-O Display and a seamless design that make this smartphone a true masterpiece.', 66900, '[\"2-1554288442921.jpeg\",\"1-1554288442921.jpeg\",\"3-1554288442922.jpeg\",\"4-1554288442923.jpeg\"]', 2, 0, '2019-04-03 10:47:22', '2019-04-03 10:47:22'),
(3, 'Samsung A30', 'The Dual Camera System, comprising the 16 MP Low Light Camera and 5 MP Ultra-wide Camera, lets you take rich and beautiful pictures. Powered by the Exynos 7904 Processor and 4 GB of RAM, this phone will make multitasking seamless.', 16990, '[\"samsung-galaxy-a30-sm-a305f-1554288619793.jpeg\",\"samsung-galaxy-a30-sm-a305f2-1554288619794.jpeg\",\"samsung-galaxy-a30-sm-a305f3-1554288619794.jpeg\",\"samsung-galaxy-a30-sm-a305f4-1554288619797.jpeg\"]', 2, 0, '2019-04-03 10:50:19', '2019-04-03 10:50:19'),
(4, 'Realme 3', 'It has a 3D Unibody Design, that\'s complemented by a gradient effect, which adds to your stylish persona. Its 13+2 MP AI Dual Camera, coupled with the Chroma Boost feature and Nightscape Mode, helps capture all the fine details of precious moments.', 8999, '[\"realme-3-rmx1825-original-imaferd5xsz9aehd-1554288861577.jpeg\",\"realme-3-rmx1825-original-imaferd5zvhurjhg-1554288861578.jpeg\",\"realme-3-rmx1825-original-imaferkevgaqpvfx-1554288861579.jpeg\"]', 3, 0, '2019-04-03 10:54:21', '2019-04-03 10:54:21'),
(5, 'Realme 2', 'It has a 3D Unibody Design, that\'s complemented by a gradient effect, which adds to your stylish persona. Its 13+2 MP AI Dual Camera, coupled with the Chroma Boost feature and Nightscape Mode, helps capture all the fine details of precious moments.', 9499, '[\"1-1554289113744.jpeg\",\"2-1554289113745.jpeg\",\"3-1554289113745.jpeg\"]', 3, 0, '2019-04-03 10:58:33', '2019-04-03 10:58:33'),
(6, 'Oppo A7', 'Do a lot more than just take calls on the Oppo A7. With a mighty 4230 mAh battery and Qualcomm Snapdragon 450 1.8 GHz Octa-core Processor, along with 3 GB of RAM, this phone can virtually handle any task that you throw at it.', 13990, '[\"oppo-a71k-cph-1801-original-imaf946hgfawjgdm-1554289288054.jpeg\",\"oppo-a71k-cph-1801-original-imaf946hhdys6utg-1554289288055.jpeg\",\"oppo-a71k-cph-1801-original-imaf946hzdvsafnd-1554289288056.jpeg\"]', 4, 0, '2019-04-03 11:01:28', '2019-04-03 11:01:28'),
(7, 'IPhone 8+', 'An all-new glass design, an updated camera, and a powerful chip, there\'s so much to love about the iPhone 8 Plus. This iPhone brings you an augmented reality experience that\'s more immersive than before. You can charge your iPhone wirelessly!', 68999, '[\"apple-iphone-8-plus-mq8e2hn-a-original-imaexsfhak79npp3-1554289402097.jpeg\",\"apple-iphone-8-plus-mq8e2hn-a-original-imaexsfhghkevyzu-1554289402098.jpeg\",\"apple-iphone-8-plus-mq8h2hn-a-original-imaexsfhxjxbupzx-1554289402098.jpeg\"]', 5, 0, '2019-04-03 11:03:22', '2019-04-03 11:03:22'),
(8, 'IPhone XR', 'The iPhone XR has arrived to scintillate our senses with a host of features, like Liquid Retina Display, a faster Face ID, and a powerful A12 Bionic Chip. Whether it\'s that picture-perfect portrait shot or a jaw-dropping HDR selfie.', 69999, '[\"apple-iphone-xr-mry52hn-a-original-imafa6zkfgwpnsgz-1554289487304.jpeg\",\"apple-iphone-xr-mryd2hn-a-original-imafa6zks7qma9se-1554289487305.jpeg\"]', 5, 0, '2019-04-03 11:04:47', '2019-04-03 11:04:47'),
(9, 'Vivo Y95', 'AI Dual Camera, a 20 MP front camera, and a 4030 mAh Li-ion battery. Whether you’re playing games, watching videos, or browsing the Internet. Snapdragon 439 processor ensures that you are provided with a seamless and lag-free performance.', 14990, '[\"vivo-y95-1807-original-imafb5zx2hcs7b3e-1554289679862.jpeg\",\"vivo-y95-1807-original-imafb5zxg8nefxzw-1554289679863.jpeg\",\"vivo-y95-1807-original-imafb5zxzkbvxnpf-1554289679863.jpeg\"]', 6, 0, '2019-04-03 11:07:59', '2019-04-03 11:07:59'),
(10, 'ZenFone Max M2', 'NA', 10499, '[\"1-1554289787800.jpeg\",\"2-1554289787801.jpeg\",\"3-1554289787802.jpeg\"]', 7, 0, '2019-04-03 11:09:47', '2019-04-03 11:09:47'),
(11, 'Mi Power Banks', 'Mi 20000 mAh Power Bank', 1499, '[\"power-bank-2i-plm06zm-mi-original-imaf6y8kkzxu2pe6-1554289891816.jpeg\",\"power-bank-2i-plm06zm-mi-original-imaf9na3rgbcevz6-1554289891817.jpeg\"]', 8, 0, '2019-04-03 11:11:31', '2019-04-03 11:11:31'),
(12, 'iBall Power Banks', 'iBall 10000 mAh Power Bank', 499, '[\"power-bank-pb-10107-iball-original-imaf8gwfdaad4nds-1554289919691.jpeg\",\"power-bank-pb-10107-iball-original-imaf8gwfjw8u9sfg-1554289919692.jpeg\"]', 8, 0, '2019-04-03 11:11:59', '2019-04-03 11:11:59'),
(13, 'Sandisk Memory Card', 'Sandisk Memory Card', 449, '[\"sandisk-sdsquar-032g-gn6ma-original-imaewngzfeudzgvm-1554290021753.jpeg\",\"sandisk-sdsquar-032g-gn6ma-original-imaf5zt3hpyfutgr-1554290021754.jpeg\",\"sm-software-solution-sdsdqm-016g-b35-original-imaeakskgubpjk4a-1554290021755.jpeg\"]', 9, 0, '2019-04-03 11:13:41', '2019-04-03 11:13:41'),
(14, 'HP Memory Card', 'HP Memory Card', 443, '[\"hp-4712847096240-original-imaf5jh2g7cvhvbh-1554290042510.jpeg\",\"hp-4712847096240-original-imaf5jh2mdtya3hf-1554290042510.jpeg\",\"hp-4712847096240-original-imaf5jh2nnvru6yc-1554290042511.jpeg\"]', 9, 0, '2019-04-03 11:14:02', '2019-04-03 11:14:02'),
(15, 'Ambrane Cable', 'Ambrane Cable', 99, '[\"3-1554290145717.jpeg\",\"4-1554290145717.jpeg\"]', 10, 0, '2019-04-03 11:15:45', '2019-04-03 11:15:45'),
(16, 'Hech Cable', 'Hech Cable', 99, '[\"1-1554290172239.jpeg\",\"2-1554290172239.jpeg\"]', 10, 0, '2019-04-03 11:16:12', '2019-04-03 11:16:12'),
(17, 'Flipkart SmartBuy Charger', 'Flipkart SmartBuy Charger', 279, '[\"flipkart-smartbuy-ec112m-offline-original-imaep2f2gdcn9mf7-1554290296715.jpeg\",\"flipkart-smartbuy-ec112m-offline-original-imaep2f2jswzd8vv-1554290296715.jpeg\",\"flipkart-smartbuy-ec112m-original-imaevqxj3ptyzymm-1554290296716.jpeg\"]', 11, 0, '2019-04-03 11:18:16', '2019-04-03 11:18:16'),
(18, 'Ambrane Charger', 'Ambrane Charger', 251, '[\"1-1554290416942.jpeg\",\"2-1554290416943.jpeg\",\"3-1554290416943.jpeg\"]', 11, 0, '2019-04-03 11:20:16', '2019-04-03 11:20:16'),
(19, 'Flipkart SmartBuy Cases', 'Flipkart SmartBuy Cases', 230, '[\"febelo-note-7-matte-red-original-imafduqge7gyfuez-1554290545919.jpeg\",\"flipkart-smartbuy-xia-rdnt5pro-tpu-tran-original-imaferchtskz8hxa-1554290545920.jpeg\",\"tag-7c3d-xr5a-b0308-original-imafyd3uhgegqggg-1554290545921.jpeg\"]', 12, 0, '2019-04-03 11:22:25', '2019-04-03 11:22:25'),
(20, 'Apple Watch Series 3', 'Apple Watch Series 3', 25900, '[\"mql02hn-a-apple-original-imaexw2kmwzdpwez-1554290651099.jpeg\",\"mql02hn-a-apple-original-imaexw2ktwtjwsdf-1554290651100.jpeg\"]', 13, 0, '2019-04-03 11:24:11', '2019-04-03 11:24:11'),
(21, 'Irusu MONSTER VR', 'Monster VR is more immersive with Anti Fogging technology, larger FOV and reduced window effect.With our QR code and tons of google VR apps, turn your mobile into a VR zone.', 2199, '[\"1-1554290776307.jpeg\",\"2-1554290776308.jpeg\",\"3-1554290776308.jpeg\"]', 14, 0, '2019-04-03 11:26:16', '2019-04-03 11:26:16'),
(22, 'TECNIA Atom 504 Bluetooth 5.1 Home Cinema ', 'Tecnia Atom 504 Bluetooth 5.1 Channel Home Theater Multimedia Audio Speaker System comes at an affordable price and is easy to set up in your room.', 1990, '[\"atom-504-bluetooth-5-1-tecnia-original-imaet4rydkagvwxc-1554290903076.jpeg\",\"atom-504-bluetooth-5-1-tecnia-original-imaet6qwgfr3xtwn-1554290903077.jpeg\"]', 15, 0, '2019-04-03 11:28:23', '2019-04-03 11:28:23'),
(23, 'F&D A180X 42 W Portable Bluetooth Home Audio Speaker', 'xperience the best music listening experience with the F&D Speaker. The speaker comes equipped with a bass driver that helps deliver cutting edge bass and superior sound quality. Featuring FM connectivity.', 2499, '[\"f-d-a180x-original-imaf9z8qettszv97-1554291103633.jpeg\",\"f-d-a180x-original-imaf9z8qkckzcgez-1554291103634.jpeg\",\"f-d-a180x-original-imaf9z8qqfctz8gg-1554291103635.jpeg\"]', 16, 0, '2019-04-03 11:31:43', '2019-04-03 11:31:43'),
(24, 'Voltas 1.5 Ton 3 Star Split Inverter AC', 'This Voltas Inverter Air Conditioner is here to answer all your summer woes. With High Ambient Cooling, the heat has little to no chance of coming into your room to trouble you.', 33499, '[\"183vczt-1-5-inverter-voltas-original-imaf45dycghskkr5-1554291287810.jpeg\",\"183vczt-1-5-inverter-voltas-original-imaf45dyfrfyhb3t-1554291287810.jpeg\",\"183vczt-1-5-inverter-voltas-original-imafbhnyzh2yfkmt-1554291287811.jpeg\"]', 18, 0, '2019-04-03 11:34:47', '2019-04-03 11:34:47'),
(25, 'Hitachi 1 Ton 5 Star Window AC', 'Bring home this ergonomically designed Hitachi window AC, and you can not only enjoy a cost-effective and energy-efficient way to stay cool, but also keep the air around you clean and healthy.', 25999, '[\"1-0-hitachi-window-raw511kud-original-imadvurayva6tfvd-1554291394609.jpeg\",\"raw318kud-1-5-window-hitachi-original-imaerxgmx7zqyur9-1554291394611.jpeg\"]', 19, 0, '2019-04-03 11:36:34', '2019-04-03 11:36:34'),
(26, 'Samsung 192 L Direct Cool Single Door', 'Featuring a Stylish Crown Design, this fridge looks quite elegant. Also, as it comes with features such as an Anti-bacterial Gasket,ensuring that your food items remain cool and fresh for a long duration.', 12790, '[\"1 (1)-1554291592052.jpeg\",\"2-1554291592053.jpeg\"]', 20, 0, '2019-04-03 11:39:52', '2019-04-03 11:39:52'),
(27, 'Samsung 253 L Frost Free Double Door', 'It comes with a Door Alarm that alerts you when the door hasn’t been properly closed. This helps prevent the loss of cool air and wastage of electricity.', 23490, '[\"1-1554291707496.jpeg\",\"2-1554291707497.jpeg\"]', 21, 0, '2019-04-03 11:41:47', '2019-04-03 11:41:47'),
(28, 'Samsung 810 L Frost Free Side by Side Inverter Technology', 'This Samsung French-door 810 L fridge is used to keep food fresh. It comes with a Family Hub Screen that shows memos, tasks, instructions.', 259990, '[\"1 (1)-1554291984745.jpeg\",\"1 (3)-1554291984746.jpeg\",\"2-1554291984746.jpeg\"]', 22, 0, '2019-04-03 11:46:24', '2019-04-03 11:46:24'),
(29, 'Oxygen Running Shoes For Men ', 'Oxygen Running Shoes For Men ', 499, '[\"2 (1)-1554292179674.jpeg\",\"2 (2)-1554292179675.jpeg\"]', 23, 0, '2019-04-03 11:49:39', '2019-04-03 11:49:39'),
(30, 'Woodland Boots', 'Woodland Boots', 2577, '[\"1 (1)-1554292331209.jpeg\",\"1 (2)-1554292331210.jpeg\",\"1 (3)-1554292331210.jpeg\"]', 25, 0, '2019-04-03 11:52:11', '2019-04-03 11:52:11'),
(31, 'Checkered Men Round Neck White', 'Checkered Men Round Neck White', 377, '[\"1 (1)-1554292457841.jpeg\",\"1 (2)-1554292457842.jpeg\"]', 27, 0, '2019-04-03 11:54:17', '2019-04-03 11:54:17'),
(32, 'Men Checkered Casual Spread Shirt', 'Men Checkered Casual Spread Shirt', 619, '[\"1-1554292532561.jpeg\",\"2-1554292532562.jpeg\",\"3-1554292532562.jpeg\"]', 28, 0, '2019-04-03 11:55:32', '2019-04-03 11:55:32'),
(33, 'Men Self Design Straight Kurta ', 'Men Self Design Straight Kurta ', 1399, '[\"1-1554292645882.jpeg\",\"2-1554292645883.jpeg\",\"3-1554292645883.jpeg\"]', 29, 0, '2019-04-03 11:57:25', '2019-04-03 11:57:25'),
(34, 'Shirts, Tops & T-shirts', 'Shirts, Tops & T-shirts', 599, '[\"shirt (1)-1554292837789.jpeg\",\"shirt (3)-1554292837790.jpeg\",\"top-1554292837790.jpeg\"]', 30, 0, '2019-04-03 12:00:37', '2019-04-03 12:00:37'),
(35, 'Women Fit and Flare Red Dress', 'Women Fit and Flare Red Dress', 579, '[\"1-1554292928691.jpeg\",\"2-1554292928691.jpeg\",\"3-1554292928692.jpeg\"]', 31, 0, '2019-04-03 12:02:08', '2019-04-03 12:02:08'),
(36, 'Embroidered Bollywood Cotton Blend, Velvet Saree', 'Embroidered Bollywood Cotton Blend, Velvet Saree', 445, '[\"1-1554293025251.jpeg\",\"2-1554293025253.jpeg\"]', 33, 0, '2019-04-03 12:03:45', '2019-04-03 12:03:45'),
(37, 'Women\'s Floral Print Straight Kurta', 'Women\'s Floral Print Straight Kurta', 610, '[\"1-1554293105050.jpeg\",\"2-1554293105051.jpeg\",\"3-1554293105051.jpeg\"]', 34, 0, '2019-04-03 12:05:05', '2019-04-03 12:05:05'),
(38, 'Viacom Red & Blue Soft Bag', 'It is so spacious, trendy and attractive that your school going children will love to carry. It is not only superior in quality and finish but also very durable.', 1046, '[\"1-1554293523506.jpeg\",\"2-1554293523508.jpeg\"]', 36, 0, '2019-04-03 12:12:03', '2019-04-03 12:12:03'),
(39, 'School Combo Set', 'Set includes lunch box built with water bottle. Safe for Kids. BPA Free. Colourful printed designs. Kids favourite character Minions. Content: Lunch Box, Water Bottle.', 499, '[\"1 (1)-1554293644259.jpeg\",\"1 (2)-1554293644259.jpeg\",\"1 (3)-1554293644261.jpeg\"]', 38, 0, '2019-04-03 12:14:04', '2019-04-03 12:14:04'),
(40, 'Laopala Radiant Curves Pack of 15 Dinner Set', 'Laopala Radiant Curves Pack of 15 Dinner Set', 1099, '[\"l15-radiant-curves-laopala-original-imaexrfppruf86vv-1554293747346.jpeg\",\"mtroyalset18-sumeet-original-imafd2ye5eb8mzgm-1554293747346.jpeg\",\"skars-001-skars-original-imaf8dbbzjwngvz3-1554293747348.jpeg\"]', 40, 0, '2019-04-03 12:15:47', '2019-04-03 12:15:47'),
(41, 'Pasabahce 44465 Glass Set', 'Pasabahce 44465 Glass Set', 345, '[\"44465-pasabahce-original-imafed2ccv2zzunx-1554293846250.jpeg\",\"44465-pasabahce-original-imafed2faqssfgve-1554293846251.jpeg\"]', 41, 0, '2019-04-03 12:17:26', '2019-04-03 12:17:26'),
(42, 'Pasabahce 1004537 Glass Set 2', 'Pasabahce 1004537 Glass Set 2', 529, '[\"1004537-pasabahce-original-imafed2dabzy7gup-1554293899393.jpeg\",\"1004537-pasabahce-original-imafed2dnryezmz9-1554293899393.jpeg\"]', 41, 0, '2019-04-03 12:18:19', '2019-04-03 12:18:19'),
(43, 'Flipkart Perfect Homes Carol Queen Bed', 'The material used in this bed is laminated from all sides to give it full protection from moisture and other external factors.', 7990, '[\"1 (1)-1554294005995.jpeg\",\"1 (2)-1554294005996.jpeg\"]', 42, 0, '2019-04-03 12:20:05', '2019-04-03 12:20:05'),
(44, 'Westido Leatherette 3 Seater Sofa', 'Westido Leatherette 3 Seater Sofa', 10124, '[\"polyester-wt203-xodi-original-imaex9jn572vagdg-1554294082972.jpeg\",\"pvc-aq-14-antique-buyer-original-imaex8j6trqmfkpt-1554294082973.jpeg\"]', 43, 0, '2019-04-03 12:21:22', '2019-04-03 12:21:22'),
(45, 'Woodness Glass 4 Seater Dining Set', 'Constructed with finesse with good quality material. Reflections from the base of the chrome plated metal table legs shows the excellent finish of the legs paint.', 17039, '[\"1-1554294224355.jpeg\",\"2-1554294224356.jpeg\",\"3-1554294224357.jpeg\"]', 45, 0, '2019-04-03 12:23:44', '2019-04-03 12:23:44'),
(46, 'A1 SKYLAB 144 TC Cotton Double Cartoon Bedsheet', 'Attractive, Easy wash, Polly cotton, Dashing 3d cartoon, New fashionable 3D set', 219, '[\"1 (1)-1554294323244.jpeg\",\"1 (2)-1554294323246.jpeg\"]', 47, 0, '2019-04-03 12:25:23', '2019-04-03 12:25:23'),
(47, 'Optimistic Home Furnishing', '7 Ft Curtain', 249, '[\"1-1554294440533.jpeg\",\"2-1554294440535.jpeg\",\"3-1554294440537.jpeg\"]', 48, 0, '2019-04-03 12:27:20', '2019-04-03 12:27:20'),
(48, 'HP 15q Core i5 7th Gen', '(4 GB/1 TB HDD/Windows 10 Home) 15q-ds0028TU Laptop  (15.6 inch, Sparkling Black, 2.04 kg, With MS Office)', 38990, '[\"hp1-1554528099534.jpeg\",\"hp2-1554528099535.jpeg\",\"hp3-1554528099540.jpeg\"]', 51, 0, '2019-04-06 05:21:39', '2019-04-06 05:21:39'),
(49, 'Dell Inspiron 15 3000 Series Core i7 8th Gen', '(8 GB/2 TB HDD/Windows 10 Home/2 GB Graphics) 3576 Laptop  (15.6 inch, Black, 2.13 kg, With MS Office)', 64990, '[\"dell1-1554528328476.jpeg\",\"dell2-1554528328476.jpeg\",\"dell3-1554528328477.jpeg\"]', 52, 0, '2019-04-06 05:25:28', '2019-04-06 05:25:28'),
(50, 'Lenovo Ideapad 330 Core i5 8th Gen', '(8 GB/1 TB HDD/DOS/2 GB Graphics) 330-15IKB Laptop  (15.6 inch, Onyx Black, 2.2 kg)', 43990, '[\"lenovo1-1554528431129.jpeg\",\"lenovo2-1554528431130.jpeg\",\"lenovo3-1554528431130.jpeg\"]', 53, 0, '2019-04-06 05:27:11', '2019-04-06 05:27:11'),
(51, 'Apple MacBook Air Core i5 8th Gen', '(8 GB/128 GB SSD/Mac OS Mojave) MRE82HN/A  (13.3 inch, Space Grey, 1.25 kg)', 106990, '[\"apple1-1554528586220.jpg\",\"apple2-1554528586221.jpg\",\"apple3-1554528586221.jpeg\"]', 54, 0, '2019-04-06 05:29:46', '2019-04-06 05:29:46'),
(52, 'Nikon D5600 DSLR Camera Body with Single Lens', 'AF-P DX Nikkor 18-55 MM F/3.5-5.6G VR (16 GB SD Card)  (Black)', 37990, '[\"nikon1-1554528907180.jpeg\",\"nikon2-1554528907181.jpeg\",\"nikon3-1554528907182.jpeg\",\"nikon4-1554528907183.jpeg\"]', 55, 0, '2019-04-06 05:35:07', '2019-04-06 05:35:07'),
(53, 'GoPro Hero 7 (with Gear Kit)', 'Sports and Action Camera  (Black, 12 MP)', 35499, '[\"hero1-1554529101971.jpeg\",\"hero2-1554529101972.jpeg\",\"hero3-1554529101972.jpeg\"]', 56, 0, '2019-04-06 05:38:21', '2019-04-06 05:38:21'),
(54, 'Apple - (Core i5/8 GB DDR3/1 TB/Mac OS X Mavericks/512 MB)', '(Silver, 45.0 cm x 52.8 cm x 17.5 cm, 5.68 kg, 21.5 Inch Screen)', 114990, '[\"apple1-1554529433490.jpeg\",\"apple2-1554529433491.jpeg\"]', 57, 0, '2019-04-06 05:43:53', '2019-04-06 05:43:53'),
(55, 'HP - (Core i5/4 GB DDR4/1 TB/Windows 10 Home/2 GB 2 GB DDR5 GFX)', '(Snow white, 41.95 cm x 54.09 cm x 20.41 cm, 5.92 kg, 23.8 Inch Screen)', 67490, '[\"hp1-1554529562690.jpeg\",\"hp2-1554529562691.jpeg\",\"hp3-1554529562692.jpeg\"]', 58, 0, '2019-04-06 05:46:02', '2019-04-06 05:46:02'),
(56, 'Apple iPad (6th Gen)', '32 GB 9.7 inch with Wi-Fi Only (Gold)', 26499, '[\"apple-ipad1-1554529886002.jpeg\",\"apple-ipad2-1554529886004.jpeg\",\"apple-ipad3-1554529886004.jpeg\"]', 59, 0, '2019-04-06 05:51:26', '2019-04-06 05:51:26'),
(57, 'Apple iPad Pro (2018)', '256 GB 11 inch with Wi-Fi+4G (Space Grey)', 99900, '[\"apple-pro1-1554530064627.jpeg\",\"apple-pro2-1554530064628.jpeg\",\"apple-pro3-1554530064628.jpeg\"]', 60, 0, '2019-04-06 05:54:24', '2019-04-06 05:54:24'),
(58, 'Samsung 80cm (32 inch)', 'HD Ready LED TV 2018 Edition  (UA32N4010ARXXL/UA32N4010ARLXL)', 14999, '[\"samsung-1-1554530514170.jpeg\",\"samsung-2-1554530514171.jpeg\",\"samsung-3-1554530514172.jpeg\"]', 61, 0, '2019-04-06 06:01:54', '2019-04-06 06:01:54'),
(59, 'Mi LED Smart TV', '4X Pro 138.8 cm (55) with Android', 39999, '[\"mi-1-1554530635105.jpeg\",\"mi-2-1554530635106.jpeg\",\"mi-3-1554530635107.jpeg\"]', 62, 0, '2019-04-06 06:03:55', '2019-04-06 06:03:55'),
(60, 'IFB 8 kg Fully Automatic Front Load Washing Machine Silver  (Senator WXS)', 'IFB 8 kg Fully Automatic Front Load Washing Machine Silver  (Senator WXS)', 33499, '[\"wm-1-1554530870115.jpeg\",\"wm-2-1554530870116.jpeg\",\"wm-3-1554530870117.jpeg\"]', 63, 0, '2019-04-06 06:07:50', '2019-04-06 06:07:50'),
(61, 'IFB 25 L Convection Microwave Oven  (25BC4, Black)', 'It comes with features like Keep Warm, Deodorise, and many more. The Keep Warm feature maintains the temperature of your food so that it doesn’t get overcooked. ', 11150, '[\"oven-1-1554531106129.jpeg\",\"oven-2-1554531106130.jpeg\",\"oven-3-1554531106131.jpeg\"]', 64, 0, '2019-04-06 06:11:46', '2019-04-06 06:11:46'),
(62, 'Eveready MG500i LX 500 Mixer Grinder  (Green, 2 Jars)', '500W, 230V, 50Hz,Two Stainless Steel Jars,Three Speed Control with Incher,1.2L Liquidizer Jar,0.3L Chutney Jar,Over Load Protection,24 Month Onsite Warranty', 1488, '[\"eveready-1-1554531322355.jpeg\",\"eveready-2-1554531322356.jpeg\",\"eveready-3-1554531322358.jpeg\"]', 65, 0, '2019-04-06 06:15:22', '2019-04-06 06:15:22'),
(63, 'Philips HD2393/99 Grill, Toast  (Black)', 'Philips HD2393/99 Grill, Toast  (Black)', 2335, '[\"philips-2-slice-sandwich1-1554531525106.jpeg\",\"philips-2-slice-sandwich2-1554531525107.jpeg\"]', 66, 0, '2019-04-06 06:18:45', '2019-04-06 06:18:45'),
(64, '38003PP19 Tees Wicked Lines Watch', '38003PP19 Tees Wicked Lines Watch', 950, '[\"watch-1-1554531867427.jpeg\",\"watch-2-1554531867428.jpeg\",\"watch-3-1554531867428.jpeg\"]', 67, 0, '2019-04-06 06:24:27', '2019-04-06 06:24:27'),
(65, 'Nf7987YL02CJ Watch', 'Nf7987YL02CJ Watch', 575, '[\"sonata-1-1554531977142.jpeg\",\"sonata-2-1554531977143.jpeg\",\"sonata-3-1554531977144.jpeg\"]', 68, 0, '2019-04-06 06:26:17', '2019-04-06 06:26:17'),
(66, 'Tinted \nFull Sleeve Solid Men Jacket', 'Tinted \nFull Sleeve Solid Men Jacket', 716, '[\"jacket-1-1554532510826.jpeg\",\"jacket-2-1554532510826.jpeg\",\"jacket-3-1554532510826.jpeg\"]', 69, 0, '2019-04-06 06:35:10', '2019-04-06 06:35:10'),
(67, 'Nike Full Sleeve Solid Men Sweatshirt', 'Nike Full Sleeve Solid Men Sweatshirt\n', 2200, '[\"sw-1-1554532599100.jpeg\",\"sw-2-1554532599100.jpeg\",\"sw-3-1554532599101.jpeg\",\"sw-4-1554532599120.jpeg\"]', 70, 0, '2019-04-06 06:36:39', '2019-04-06 06:36:39'),
(68, 'Puma Poise Perf IDP Sneakers For Women  (White)', 'Puma Poise Perf IDP Sneakers For Women  (White)', 2399, '[\"puma-1-1554532826277.jpeg\",\"puma-2-1554532826278.jpeg\",\"puma-3-1554532826280.jpeg\"]', 71, 0, '2019-04-06 06:40:26', '2019-04-06 06:40:26'),
(69, 'Axter Combo-(2)-1044-993 Sneakers For Women  (Multicolor)', 'Axter Combo-(2)-1044-993 Sneakers For Women  (Multicolor)', 497, '[\"axter-1-1554532888585.jpeg\",\"axter-2-1554532888586.jpeg\",\"axter-3-1554532888587.jpeg\"]', 72, 0, '2019-04-06 06:41:28', '2019-04-06 06:41:28'),
(70, 'TBZ TheOriginal Everyday & Workwear Rose Gold 18kt Dangle Earring', 'TBZ TheOriginal Everyday & Workwear Rose Gold 18kt Dangle Earring', 19686, '[\"p-1-1554533102979.jpeg\",\"p-2-1554533102979.jpeg\"]', 73, 0, '2019-04-06 06:45:02', '2019-04-06 06:45:02'),
(71, 'Zaveri Pearls Alloy Jewel Set  (White, Gold)', 'Zaveri Pearls Alloy Jewel Set  (White, Gold)', 576, '[\"arti-1-1554533400120.jpeg\",\"arti-2-1554533400122.jpeg\"]', 74, 0, '2019-04-06 06:50:00', '2019-04-06 06:50:00'),
(72, 'Miss & Chief Boys Printed Cotton Blend T Shirt  (Multicolor, Pack of 1)', 'Miss & Chief Boys Printed Cotton Blend T Shirt  (Multicolor, Pack of 1)', 239, '[\"tshirt-1-1554533721555.jpeg\",\"tshirt-2-1554533721555.jpeg\"]', 75, 0, '2019-04-06 06:55:21', '2019-04-06 06:55:21'),
(73, 'Miss & Chief Girls Midi/Knee Length Casual Dress  (Multicolor, Sleeveless)', 'Miss & Chief Girls Midi/Knee Length Casual Dress  (Multicolor, Sleeveless)', 519, '[\"midi-1-1554533833618.jpeg\",\"midi-2-1554533833620.jpeg\",\"midi-3-1554533833621.jpeg\"]', 76, 0, '2019-04-06 06:57:13', '2019-04-06 06:57:13'),
(74, 'Sajani Mickey Mouse Soft Toy Jumbo Size 3 Feet - 90 cm  (Multicolor)', 'Sajani Mickey Mouse Soft Toy Jumbo Size 3 Feet - 90 cm  (Multicolor)', 1999, '[\"mickey-1-1554534084147.jpeg\",\"mickey-2-1554534084147.jpeg\"]', 77, 0, '2019-04-06 07:01:24', '2019-04-06 07:01:24'),
(75, 'Fur Real Friends Walkalots Big Wags, Pup - 228.6 mm  (Multicolor)', 'Fur Real Friends Walkalots Big Wags, Pup - 228.6 mm  (Multicolor)', 1699, '[\"dog-1-1554534168947.jpeg\",\"dog-2-1554534168948.jpeg\",\"dog-3-1554534168950.jpeg\"]', 78, 0, '2019-04-06 07:02:48', '2019-04-06 07:02:48'),
(76, 'Crocs Boys & Girls Slip-on Clogs  (Red)', 'Crocs Boys & Girls Slip-on Clogs  (Red)', 1429, '[\"ap-2-1554536939938.jpeg\",\"sp-1-1554536939939.jpeg\",\"sp-3-1554536939941.jpeg\"]', 79, 0, '2019-04-06 07:48:59', '2019-04-06 07:48:59'),
(77, 'SAF Ganesha Digital Reprint 20 cm x 20 cm Painting', 'SAF Ganesha Digital Reprint 20 cm x 20 cm Painting', 89, '[\"ganu-1-1554537366760.jpeg\",\"ganu-2-1554537366762.jpeg\",\"ganu-3-1554537366763.jpeg\"]', 80, 0, '2019-04-06 07:56:06', '2019-04-06 07:56:06'),
(78, 'Ajanta Analog 31 cm X 31 cm Wall Clock  (Silver, With Glass)', 'Ajanta Analog 31 cm X 31 cm Wall Clock  (Silver, With Glass)', 929, '[\"cl-1-1554537468011.jpeg\",\"cl-2-1554537468012.jpeg\",\"cl-3-1554537468013.jpeg\"]', 81, 0, '2019-04-06 07:57:48', '2019-04-06 07:57:48'),
(79, 'Craft Junction Blessing Lord Ganesha On Bangles Decorative Showpiece', 'CraftJunction Presents You a New Stylish Ganesha Showpiece On Gungroo Bangles.Those who want to make there home more attractive and blessed this Ganesha', 189, '[\"ganesha-1-1554537666482.jpeg\",\"ganesha-2-1554537666483.jpeg\",\"ganesha-3-1554537666484.jpeg\"]', 82, 0, '2019-04-06 08:01:06', '2019-04-06 08:01:06'),
(80, 'Syska Wi-Fi Enabled 7W Smart Bulb', 'Too lazy to turn on or turn off your light? This Syska Smart Bulb has got your back. It comes equipped with features such as Voice Control and Wi-Fi Compatibility', 989, '[\"l1-1554537829930.jpeg\",\"l2-1554537829931.jpeg\",\"l3-1554537829931.jpeg\"]', 83, 0, '2019-04-06 08:03:49', '2019-04-06 08:03:49'),
(81, 'Hosley Iron Tealight Holder Set  (Brown, Pack of 2)', 'Add a touch of glamour to your house with these beautiful wall sconce from Hosley. The candle holders come with designer detailing that will impress you at the very first sight.', 399, '[\"dec-1-1554538437073.jpeg\",\"dec-2-1554538437074.jpeg\",\"dec-3-1554538437075.jpeg\"]', 84, 0, '2019-04-06 08:13:57', '2019-04-06 08:13:57'),
(82, 'Doodle A5 Diary  (Indulgences Stop With Dangler, Multicolor)', 'One such thing that will always make you feel good and bring a smile to your face is the Indulgences notebook. Designed with a bright yellow color at the front', 340, '[\"dia-1-1554539052754.jpeg\",\"dia-2-1554539052755.jpeg\",\"dia-3-1554539052757.jpeg\"]', 85, 0, '2019-04-06 08:24:12', '2019-04-06 08:24:12'),
(83, 'IM Assorted Tag Pack of 50 Key Chain Locking Key Chain  (Multicolor)', '2-sides ID label name tags.Material: Plastic , 50 Pieces Colour coded translucent keychain key tags. In the Box: 50 x Key tags 1xBox.', 153, '[\"kc-1-1554539242555.jpeg\",\"kc-2-1554539242558.jpeg\"]', 86, 0, '2019-04-06 08:27:22', '2019-04-06 08:27:22'),
(84, 'Sony PlayStation 4 (PS4) Slim 500 GB with Uncharted 4, Horizon Zero Dawn (Complete Edition) and Gran Turismo Sport  (Jet Black)', 'Sony PlayStation 4 (PS4) Slim 500 GB with Uncharted 4, Horizon Zero Dawn (Complete Edition) and Gran Turismo Sport  (Jet Black)', 27390, '[\"ps4-1-1554539860617.jpeg\",\"ps4-2-1554539860619.jpeg\",\"ps4-3-1554539860620.jpeg\"]', 87, 0, '2019-04-06 08:37:40', '2019-04-06 08:37:40'),
(85, 'Microsoft Xbox One S 1 TB with Battlefield V Deluxe Edition  (White)', 'Microsoft Xbox One S 1 TB with Battlefield V Deluxe Edition  (White)', 21490, '[\"gc-1-1554540024722.jpeg\",\"gc-2-1554540024744.jpeg\",\"gc-3-1554540024745.jpeg\"]', 88, 0, '2019-04-06 08:40:24', '2019-04-06 08:40:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subcategories`
--

DROP TABLE IF EXISTS `tbl_subcategories`;
CREATE TABLE IF NOT EXISTS `tbl_subcategories` (
  `subcat_id` int(11) NOT NULL AUTO_INCREMENT,
  `subcat_name` varchar(255) DEFAULT NULL,
  `cat_id` int(11) NOT NULL,
  `isDelete` int(11) DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`subcat_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subcategories`
--

INSERT INTO `tbl_subcategories` (`subcat_id`, `subcat_name`, `cat_id`, `isDelete`, `createdAt`, `updatedAt`) VALUES
(1, 'Mobiles', 1, 0, '2019-04-02 09:01:58', '2019-04-02 09:01:58'),
(2, 'Mobile Accessories', 1, 0, '2019-04-02 09:03:05', '2019-04-02 09:03:05'),
(3, 'Smart Wearable Tech', 1, 0, '2019-04-02 09:03:24', '2019-04-02 09:03:24'),
(4, 'Laptops', 1, 0, '2019-04-02 09:03:40', '2019-04-02 09:03:40'),
(5, 'Home Entertainment', 1, 0, '2019-04-02 09:04:04', '2019-04-02 09:04:04'),
(6, 'Camera', 1, 0, '2019-04-02 09:04:25', '2019-04-02 09:04:25'),
(7, 'Desktop PCs', 1, 0, '2019-04-02 09:04:58', '2019-04-02 09:04:58'),
(8, 'Tablets', 1, 0, '2019-04-02 09:05:17', '2019-04-02 09:05:17'),
(9, 'Television', 2, 0, '2019-04-02 09:05:54', '2019-04-02 09:05:54'),
(10, 'Washing Machine', 2, 0, '2019-04-02 09:06:11', '2019-04-02 09:06:11'),
(11, 'Air Conditioners', 2, 0, '2019-04-02 09:06:26', '2019-04-02 09:06:26'),
(12, 'Refrigerators', 2, 0, '2019-04-02 09:06:55', '2019-04-02 09:06:55'),
(13, 'Kitchen Appliances', 2, 0, '2019-04-02 09:08:40', '2019-04-02 09:08:40'),
(14, 'Footwear', 3, 0, '2019-04-02 09:09:14', '2019-04-02 09:09:14'),
(15, 'Top wear', 3, 0, '2019-04-02 09:09:32', '2019-04-02 09:09:32'),
(16, 'Bottom wear', 3, 1, '2019-04-02 09:09:46', '2019-04-02 09:09:46'),
(17, 'Ties, Socks, Caps & more', 3, 1, '2019-04-02 09:10:06', '2019-04-02 09:10:06'),
(18, 'Sports wear', 3, 1, '2019-04-02 09:10:25', '2019-04-02 09:10:25'),
(19, 'Watches', 3, 0, '2019-04-02 09:10:38', '2019-04-02 09:10:38'),
(20, 'Winter wear', 3, 0, '2019-04-02 09:10:54', '2019-04-02 09:10:54'),
(21, 'Winter & Seasonal Wear', 4, 1, '2019-04-02 09:11:29', '2019-04-02 09:11:29'),
(22, 'Western Wear', 4, 0, '2019-04-02 09:11:43', '2019-04-02 09:11:43'),
(23, 'Ethnic Wear', 4, 0, '2019-04-02 09:12:08', '2019-04-02 09:12:08'),
(24, 'Sports Wear', 4, 1, '2019-04-02 09:12:28', '2019-04-02 09:12:28'),
(25, 'Shoes', 4, 0, '2019-04-02 09:12:41', '2019-04-02 09:12:41'),
(26, 'Watches', 4, 1, '2019-04-02 09:13:06', '2019-04-02 09:13:06'),
(27, 'Jewellery', 4, 0, '2019-04-02 09:13:31', '2019-04-02 09:13:31'),
(28, 'Boys\' Clothing', 5, 0, '2019-04-02 09:14:39', '2019-04-02 09:14:39'),
(29, 'Girls\' Clothing', 5, 0, '2019-04-02 09:15:06', '2019-04-02 09:15:06'),
(30, 'Footwear', 5, 0, '2019-04-02 09:15:34', '2019-04-02 09:15:34'),
(31, 'Toys', 5, 0, '2019-04-02 09:16:27', '2019-04-02 09:16:27'),
(32, 'School Supplies', 5, 0, '2019-04-02 09:16:41', '2019-04-02 09:16:41'),
(33, 'Kitchen & Dining', 6, 1, '2019-04-02 09:17:46', '2019-04-02 09:17:46'),
(34, 'Dining & Serving', 6, 0, '2019-04-02 09:18:09', '2019-04-02 09:18:09'),
(35, 'Kitchen Storage', 6, 1, '2019-04-02 09:18:26', '2019-04-02 09:18:26'),
(36, 'Furniture', 6, 0, '2019-04-02 09:18:44', '2019-04-02 09:18:44'),
(37, 'Furnishing', 6, 0, '2019-04-02 09:19:04', '2019-04-02 09:19:04'),
(38, 'Home Decor', 6, 0, '2019-04-02 09:19:22', '2019-04-02 09:19:22'),
(39, 'Lighting', 6, 0, '2019-04-02 09:19:44', '2019-04-02 09:19:44'),
(40, 'Books', 7, 1, '2019-04-02 09:20:16', '2019-04-02 09:20:16'),
(41, 'Stationery', 7, 0, '2019-04-02 09:20:23', '2019-04-02 09:20:23'),
(42, 'Gaming', 7, 0, '2019-04-02 09:20:47', '2019-04-02 09:20:47'),
(43, 'Exercise & Fitness', 7, 1, '2019-04-02 09:21:09', '2019-04-02 09:21:09'),
(44, 'Sports', 7, 1, '2019-04-02 09:21:22', '2019-04-02 09:21:22'),
(45, 'Car Electronics & Appliances', 7, 1, '2019-04-02 09:22:10', '2019-04-02 09:22:10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `fullname`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'Nishi Dalal', 'nish@gmail.com', '$2a$10$IpCrlIYwU6feS4gDsv5o4.XtDgWx0a.lgz/SXk5aYwijSLYxD5bBe', '2019-04-13 09:39:21', '2019-04-13 09:39:21'),
(2, 'Meet Sorathia', 'meet@gmail.com', '$2a$10$Ot30Ck5p4Y.PhTCsI0bhsex7WoXdXHw7g8tx7GHnrEsG9x3E.dEQi', '2019-04-15 12:58:01', '2019-04-15 12:58:01');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_brands`
--
ALTER TABLE `tbl_brands`
  ADD CONSTRAINT `tbl_brands_ibfk_1` FOREIGN KEY (`subcat_id`) REFERENCES `tbl_subcategories` (`subcat_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD CONSTRAINT `tbl_products_ibfk_1` FOREIGN KEY (`bid`) REFERENCES `tbl_brands` (`brand_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tbl_subcategories`
--
ALTER TABLE `tbl_subcategories`
  ADD CONSTRAINT `tbl_subcategories_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `tbl_categories` (`category_id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
