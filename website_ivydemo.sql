-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2022 at 05:12 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website_ivydemo`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(11) NOT NULL,
  `cartegory_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `cartegory_id`, `brand_name`) VALUES
(1, 0, 'Váy'),
(2, 0, 'Quần Nữ'),
(3, 41, '123'),
(4, 41, 'Váy'),
(7, 0, '2121'),
(9, 49, 'KHẨU TRANG'),
(10, 50, 'ÁO DIRTYCOIN'),
(11, 50, 'HOODIE'),
(13, 0, 'SƠ MI 1'),
(14, 0, 'SƠ MI2'),
(16, 0, 'Váy');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cartegory`
--

CREATE TABLE `tbl_cartegory` (
  `cartegory_id` int(11) NOT NULL,
  `cartegory_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cartegory`
--

INSERT INTO `tbl_cartegory` (`cartegory_id`, `cartegory_name`) VALUES
(36, 'Áo Mende'),
(39, 'Quần Mende'),
(49, 'SALE 50%'),
(50, 'ÁO SALE 30%'),
(51, 'NAM');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `cartegory_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_price_new` varchar(255) NOT NULL,
  `product_img` varchar(255) NOT NULL,
  `product_img_desc` varchar(255) NOT NULL,
  `product_desc` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `cartegory_id`, `brand_id`, `product_price`, `product_price_new`, `product_img`, `product_img_desc`, `product_desc`) VALUES
(26, 'asd', 51, 10, 'asda', 'sadas', 'pr.jpg', '', 'sad'),
(27, 'xz', 50, 9, 'zx', 'zx', 'pr.jpg', '', 'as'),
(28, '1', 51, 10, '50', '12', 'pr.jpg', '', 'aos co dir'),
(29, '1', 51, 10, '50', '12', 'pr.jpg', 'pr.jpg', 'aos co dir'),
(30, 'AS', 51, 11, '50', '12', 'pr.jpg', 'qrcode2.png', '12 3 4 5 6 7 8'),
(31, 'AS', 49, 11, 'asd', 'sadas', 'pr.jpg', 'qrcode2.png', '333'),
(32, 'AS', 49, 11, 'asd', 'sadas', 'pr.jpg', '', '333'),
(33, 'AS', 49, 11, 'asd', 'sadas', 'pr.jpg', '', '333'),
(34, 'ao', 51, 10, '1.500.000', '200.000', 'sp8.jpg', 'sp7.webp', 'ao lua dep'),
(35, 'ao', 51, 10, '1.500.000', '200.000', 'sp8.jpg', '', 'ao lua dep'),
(36, 'ao', 51, 10, '1.500.000', '200.000', 'sp8.jpg', '', 'ao lua dep'),
(37, 'dsaf', 51, 11, '33', '33', 'qr.png', '', '33'),
(38, 'dsaf', 51, 11, '33', '33', 'qr.png', 'googleplay.jpg', '33'),
(39, '33', 51, 11, '33', '33', 'qrcode2.png', 'pr.jpg', '333'),
(40, '33', 51, 11, '33', '33', 'qrcode2.png', 'pr.jpg', '333'),
(41, '33', 51, 10, '33', '33', 'qrcode2.png', 'qrcode2.png', '33'),
(42, 'q', 51, 10, '1.500.000', '200.000', 'sp6.jpg', '', 'ư33'),
(43, 'ád', 51, 11, 'ads', 'dá', 'qrcode2.png', '', 'sad'),
(44, 'ád', 51, 11, 'ads', 'dá', 'qrcode2.png', '', 'sad'),
(45, 'ád', 51, 11, 'ads', 'dá', 'qrcode2.png', '', 'sad'),
(46, 'ád', 51, 11, 'dá', 'ád', 'slider1.jpg', '', 'dá'),
(47, 'ád', 51, 11, 'dá', 'ád', 'slider1.jpg', '', 'dá'),
(48, 'ád', 51, 11, 'dá', 'ád', 'slider1.jpg', '', 'dá'),
(49, 'ád', 51, 11, 'dá', 'ád', 'slider1.jpg', '', 'dá'),
(50, 'ád', 51, 11, 'dá', 'ád', 'slider1.jpg', '', 'dá'),
(51, 'ád', 51, 11, 'dá', 'ád', 'slider1.jpg', '', 'dá'),
(52, 'ád', 51, 11, 'dá', 'ád', 'slider1.jpg', '', 'dá'),
(53, 'ád', 51, 11, 'dá', 'ád', 'slider1.jpg', '', 'dá'),
(54, 'ád', 51, 11, 'dá', 'ád', 'slider1.jpg', '', 'dá'),
(55, '33', 50, 11, 'qưe', 'qưeqw', 'qrcode2 - Copy.png', '', '122'),
(56, '33', 50, 11, 'qưe', 'qưeqw', 'qrcode2 - Copy.png', '', '122'),
(57, 'áo khoác', 49, 11, '1.500.000', '1.000.000', 'sp8.jpg', '', 'áo khoác ivy moda sale 50%');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_img_desc`
--

CREATE TABLE `tbl_product_img_desc` (
  `product_id` int(11) NOT NULL,
  `product_img_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product_img_desc`
--

INSERT INTO `tbl_product_img_desc` (`product_id`, `product_img_desc`) VALUES
(52, 'qrcode2 - Copy.png'),
(52, 'qrcode2.png'),
(52, 'slider1.jpg'),
(53, 'qrcode2 - Copy.png'),
(53, 'qrcode2.png'),
(53, 'slider1.jpg'),
(54, 'qrcode2 - Copy.png'),
(54, 'qrcode2.png'),
(54, 'slider1.jpg'),
(55, 'appstore.jpg'),
(55, 'corlor.webp'),
(55, 'dathongbao.png'),
(55, 'googleplay.jpg'),
(55, 'logo.png'),
(55, 'pr.jpg'),
(55, 'qr.png'),
(55, 'qrcode2 - Copy.png'),
(55, 'qrcode2.png'),
(55, 'slider1.jpg'),
(55, 'slider2.jpg'),
(55, 'slider3.jpg'),
(55, 'slider4.jpg'),
(55, 'slider5 - Copy.jpg'),
(55, 'slider5.jpg'),
(56, 'appstore.jpg'),
(56, 'corlor.webp'),
(56, 'dathongbao.png'),
(56, 'googleplay.jpg'),
(56, 'logo.png'),
(56, 'pr.jpg'),
(56, 'qr.png'),
(56, 'qrcode2 - Copy.png'),
(56, 'qrcode2.png'),
(56, 'slider1.jpg'),
(56, 'slider2.jpg'),
(56, 'slider3.jpg'),
(56, 'slider4.jpg'),
(56, 'slider5 - Copy.jpg'),
(56, 'slider5.jpg'),
(57, 'sp4.jpg'),
(57, 'sp5.jpg'),
(57, 'sp6.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `tbl_cartegory`
--
ALTER TABLE `tbl_cartegory`
  ADD PRIMARY KEY (`cartegory_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_cartegory`
--
ALTER TABLE `tbl_cartegory`
  MODIFY `cartegory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
