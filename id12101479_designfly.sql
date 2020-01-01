-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 01, 2020 at 06:47 AM
-- Server version: 10.3.16-MariaDB
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
-- Database: `id12101479_designfly`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_bookmeta`
--

CREATE TABLE `wp_bookmeta` (
  `meta_id` bigint(20) NOT NULL,
  `book_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_bookmeta`
--

INSERT INTO `wp_bookmeta` (`meta_id`, `book_id`, `meta_key`, `meta_value`) VALUES
(1, 256, 'author_name', 'abc'),
(2, 256, 'price', '5999'),
(3, 256, 'publisher', 'abc'),
(4, 256, 'year', '2006'),
(5, 256, 'edition', '5'),
(6, 256, 'url', 'abc.com'),
(7, 260, 'author_name', 'Amish Tripathiii'),
(8, 260, 'price', '5999'),
(9, 260, 'publisher', 'Amish Tripathi'),
(10, 260, 'year', '2005'),
(11, 260, 'edition', '5'),
(12, 260, 'url', 'abc.com'),
(13, 265, 'author_name', ''),
(14, 265, 'price', ''),
(15, 265, 'publisher', ''),
(16, 265, 'year', ''),
(17, 265, 'edition', ''),
(18, 265, 'url', ''),
(19, 264, 'author_name', 'abc'),
(20, 264, 'price', '4000'),
(21, 264, 'publisher', 'abc'),
(22, 264, 'year', '2017'),
(23, 264, 'edition', '1'),
(24, 264, 'url', 'vv.com'),
(25, 267, 'author_name', ''),
(26, 267, 'price', ''),
(27, 267, 'publisher', ''),
(28, 267, 'year', ''),
(29, 267, 'edition', ''),
(30, 267, 'url', ''),
(31, 266, 'author_name', 'abc'),
(32, 266, 'price', '4000'),
(33, 266, 'publisher', 'abc'),
(34, 266, 'year', '1996'),
(35, 266, 'edition', '2'),
(36, 266, 'url', 'kjb.com'),
(37, 269, 'author_name', ''),
(38, 269, 'price', ''),
(39, 269, 'publisher', ''),
(40, 269, 'year', ''),
(41, 269, 'edition', ''),
(42, 269, 'url', ''),
(43, 268, 'author_name', 'pqr'),
(44, 268, 'price', '2000'),
(45, 268, 'publisher', 'abc'),
(46, 268, 'year', '2013'),
(47, 268, 'edition', '2'),
(48, 268, 'url', 'mm.com');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_album`
--

CREATE TABLE `wp_bwg_album` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `preview_image` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `random_preview_image` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order` bigint(20) NOT NULL,
  `author` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `modified_date` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_album_gallery`
--

CREATE TABLE `wp_bwg_album_gallery` (
  `id` bigint(20) NOT NULL,
  `album_id` bigint(20) NOT NULL,
  `is_album` tinyint(1) NOT NULL,
  `alb_gal_id` bigint(20) NOT NULL,
  `order` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_file_paths`
--

CREATE TABLE `wp_bwg_file_paths` (
  `id` bigint(20) NOT NULL,
  `is_dir` tinyint(1) DEFAULT 0,
  `path` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `type` varchar(5) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `filename` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `alt` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `thumb` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `size` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `resolution` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `resolution_thumb` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `credit` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `aperture` int(10) DEFAULT NULL,
  `camera` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `caption` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `iso` int(10) DEFAULT NULL,
  `orientation` int(10) DEFAULT NULL,
  `copyright` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `tags` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_bwg_file_paths`
--

INSERT INTO `wp_bwg_file_paths` (`id`, `is_dir`, `path`, `type`, `name`, `filename`, `alt`, `thumb`, `size`, `resolution`, `resolution_thumb`, `credit`, `aperture`, `camera`, `caption`, `iso`, `orientation`, `copyright`, `tags`, `date_modified`) VALUES
(1, 0, '/', 'png', 'image-1.png', 'image-1', 'image-1', 'thumb/image-1.png', '125 KB', '300 x 214 px', '300x214', '', 0, '', '', 0, 0, '', '', '2019-11-22 04:57:02'),
(2, 0, '/', 'png', 'image-6.png', 'image-6', 'image-6', 'thumb/image-6.png', '213 KB', '313 x 316 px', '313x316', '', 0, '', '', 0, 0, '', '', '2019-11-22 04:57:02'),
(3, 0, '/', 'png', 'image-4.png', 'image-4', 'image-4', 'thumb/image-4.png', '187 KB', '305 x 307 px', '305x307', '', 0, '', '', 0, 0, '', '', '2019-11-22 04:57:02'),
(4, 0, '/', 'png', 'image-2.png', 'image-2', 'image-2', 'thumb/image-2.png', '354 KB', '480 x 372 px', '480x372', '', 0, '', '', 0, 0, '', '', '2019-11-22 04:57:02'),
(5, 0, '/', 'png', 'image-3.png', 'image-3', 'image-3', 'thumb/image-3.png', '623 KB', '550 x 550 px', '500x500', '', 0, '', '', 0, 0, '', '', '2019-11-22 04:57:03'),
(6, 0, '/', 'png', 'image-5.png', 'image-5', 'image-5', 'thumb/image-5.png', '844 KB', '612 x 612 px', '500x500', '', 0, '', '', 0, 0, '', '', '2019-11-22 04:57:03');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_gallery`
--

CREATE TABLE `wp_bwg_gallery` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `page_link` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `preview_image` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `random_preview_image` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order` bigint(20) NOT NULL,
  `author` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `gallery_type` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `gallery_source` varchar(256) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autogallery_image_number` int(4) NOT NULL,
  `update_flag` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `modified_date` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_bwg_gallery`
--

INSERT INTO `wp_bwg_gallery` (`id`, `name`, `slug`, `description`, `page_link`, `preview_image`, `random_preview_image`, `order`, `author`, `published`, `gallery_type`, `gallery_source`, `autogallery_image_number`, `update_flag`, `modified_date`) VALUES
(1, 'Image Gallery', 'image-gallery', '', '', '/thumb/image-3.png', '', 0, 1, 1, '', '', 12, '', 1574398588);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_image`
--

CREATE TABLE `wp_bwg_image` (
  `id` bigint(20) NOT NULL,
  `gallery_id` bigint(20) NOT NULL,
  `slug` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `image_url` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `thumb_url` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `alt` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `size` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `filetype` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resolution` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resolution_thumb` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `author` bigint(20) NOT NULL,
  `order` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `comment_count` bigint(20) NOT NULL,
  `avg_rating` float NOT NULL,
  `rate_count` bigint(20) NOT NULL,
  `hit_count` bigint(20) NOT NULL,
  `redirect_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pricelist_id` bigint(20) NOT NULL,
  `modified_date` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_bwg_image`
--

INSERT INTO `wp_bwg_image` (`id`, `gallery_id`, `slug`, `filename`, `image_url`, `thumb_url`, `description`, `alt`, `date`, `size`, `filetype`, `resolution`, `resolution_thumb`, `author`, `order`, `published`, `comment_count`, `avg_rating`, `rate_count`, `hit_count`, `redirect_url`, `pricelist_id`, `modified_date`) VALUES
(1, 1, 'image-5', 'image-5', '/image-5.png', '/thumb/image-5.png', '', 'image-5', '2019-11-22 04:57:03', '844 KB', 'PNG', '612 x 612 px', '500x500', 1, 31, 1, 0, 0, 0, 0, '', 0, 1574398699),
(2, 1, 'image-5', 'image-5', '/image-5.png', '/thumb/image-5.png', '', 'image-5', '2019-11-22 04:57:03', '844 KB', 'PNG', '612 x 612 px', '500x500', 1, 30, 1, 0, 0, 0, 0, '', 0, 1574398699),
(3, 1, 'image-1', 'image-1', '/image-1.png', '/thumb/image-1.png', '', 'image-1', '2019-11-22 04:57:02', '125 KB', 'PNG', '300 x 214 px', '300x214', 1, 29, 1, 0, 0, 0, 0, '', 0, 1574398699),
(4, 1, 'image-2', 'image-2', '/image-2.png', '/thumb/image-2.png', '', 'image-2', '2019-11-22 04:57:02', '354 KB', 'PNG', '480 x 372 px', '480x372', 1, 28, 1, 0, 0, 0, 0, '', 0, 1574398699),
(5, 1, 'image-4', 'image-4', '/image-4.png', '/thumb/image-4.png', '', 'image-4', '2019-11-22 04:57:02', '187 KB', 'PNG', '305 x 307 px', '305x307', 1, 27, 1, 0, 0, 0, 0, '', 0, 1574398699),
(6, 1, 'image-6', 'image-6', '/image-6.png', '/thumb/image-6.png', '', 'image-6', '2019-11-22 04:57:02', '213 KB', 'PNG', '313 x 316 px', '313x316', 1, 26, 1, 0, 0, 0, 0, '', 0, 1574398699),
(7, 1, 'image-3', 'image-3', '/image-3.png', '/thumb/image-3.png', '', 'image-3', '2019-11-22 04:57:03', '623 KB', 'PNG', '550 x 550 px', '500x500', 1, 25, 1, 0, 0, 0, 0, '', 0, 1574398700),
(8, 1, 'image-3', 'image-3', '/image-3.png', '/thumb/image-3.png', '', 'image-3', '2019-11-22 04:57:03', '623 KB', 'png', '550 x 550 px', '500x500', 1, 24, 1, 0, 0, 0, 0, '', 0, 1574398878),
(9, 1, 'image-5', 'image-5', '/image-5.png', '/thumb/image-5.png', '', 'image-5', '2019-11-22 04:57:03', '844 KB', 'png', '612 x 612 px', '500x500', 1, 23, 1, 0, 0, 0, 0, '', 0, 1574398878),
(10, 1, 'image-1', 'image-1', '/image-1.png', '/thumb/image-1.png', '', 'image-1', '2019-11-22 04:57:02', '125 KB', 'png', '300 x 214 px', '300x214', 1, 22, 1, 0, 0, 0, 0, '', 0, 1574398878),
(11, 1, 'image-6', 'image-6', '/image-6.png', '/thumb/image-6.png', '', 'image-6', '2019-11-22 04:57:02', '213 KB', 'png', '313 x 316 px', '313x316', 1, 21, 1, 0, 0, 0, 0, '', 0, 1574398878),
(12, 1, 'image-4', 'image-4', '/image-4.png', '/thumb/image-4.png', '', 'image-4', '2019-11-22 04:57:02', '187 KB', 'png', '305 x 307 px', '305x307', 1, 20, 1, 0, 0, 0, 0, '', 0, 1574398878),
(13, 1, 'image-2', 'image-2', '/image-2.png', '/thumb/image-2.png', '', 'image-2', '2019-11-22 04:57:02', '354 KB', 'png', '480 x 372 px', '480x372', 1, 19, 1, 0, 0, 0, 0, '', 0, 1574398878),
(14, 1, 'image-3', 'image-3', '/image-3.png', '/thumb/image-3.png', '', 'image-3', '2019-11-22 04:57:03', '623 KB', 'png', '550 x 550 px', '500x500', 1, 18, 1, 0, 0, 0, 0, '', 0, 1574398878),
(15, 1, 'image-5', 'image-5', '/image-5.png', '/thumb/image-5.png', '', 'image-5', '2019-11-22 04:57:03', '844 KB', 'png', '612 x 612 px', '500x500', 1, 17, 1, 0, 0, 0, 0, '', 0, 1574398878),
(16, 1, 'image-1', 'image-1', '/image-1.png', '/thumb/image-1.png', '', 'image-1', '2019-11-22 04:57:02', '125 KB', 'png', '300 x 214 px', '300x214', 1, 16, 1, 0, 0, 0, 0, '', 0, 1574398878),
(17, 1, 'image-6', 'image-6', '/image-6.png', '/thumb/image-6.png', '', 'image-6', '2019-11-22 04:57:02', '213 KB', 'png', '313 x 316 px', '313x316', 1, 15, 1, 0, 0, 0, 0, '', 0, 1574398878),
(18, 1, 'image-4', 'image-4', '/image-4.png', '/thumb/image-4.png', '', 'image-4', '2019-11-22 04:57:02', '187 KB', 'png', '305 x 307 px', '305x307', 1, 14, 1, 0, 0, 0, 0, '', 0, 1574398879),
(19, 1, 'image-2', 'image-2', '/image-2.png', '/thumb/image-2.png', '', 'image-2', '2019-11-22 04:57:02', '354 KB', 'png', '480 x 372 px', '480x372', 1, 13, 1, 0, 0, 0, 0, '', 0, 1574398879),
(20, 1, 'image-3', 'image-3', '/image-3.png', '/thumb/image-3.png', '', 'image-3', '2019-11-22 04:57:03', '623 KB', 'png', '550 x 550 px', '500x500', 1, 12, 1, 0, 0, 0, 0, '', 0, 1574398879),
(21, 1, 'image-5', 'image-5', '/image-5.png', '/thumb/image-5.png', '', 'image-5', '2019-11-22 04:57:03', '844 KB', 'png', '612 x 612 px', '500x500', 1, 11, 1, 0, 0, 0, 0, '', 0, 1574398879),
(22, 1, 'image-1', 'image-1', '/image-1.png', '/thumb/image-1.png', '', 'image-1', '2019-11-22 04:57:02', '125 KB', 'png', '300 x 214 px', '300x214', 1, 10, 1, 0, 0, 0, 0, '', 0, 1574398879),
(23, 1, 'image-6', 'image-6', '/image-6.png', '/thumb/image-6.png', '', 'image-6', '2019-11-22 04:57:02', '213 KB', 'png', '313 x 316 px', '313x316', 1, 9, 1, 0, 0, 0, 0, '', 0, 1574398879),
(24, 1, 'image-4', 'image-4', '/image-4.png', '/thumb/image-4.png', '', 'image-4', '2019-11-22 04:57:02', '187 KB', 'png', '305 x 307 px', '305x307', 1, 8, 1, 0, 0, 0, 0, '', 0, 1574398879),
(25, 1, 'image-2', 'image-2', '/image-2.png', '/thumb/image-2.png', '', 'image-2', '2019-11-22 04:57:02', '354 KB', 'png', '480 x 372 px', '480x372', 1, 7, 1, 0, 0, 0, 0, '', 0, 1574398879),
(26, 1, 'image-3', 'image-3', '/image-3.png', '/thumb/image-3.png', '', 'image-3', '2019-11-22 04:57:03', '623 KB', 'png', '550 x 550 px', '500x500', 1, 6, 1, 0, 0, 0, 0, '', 0, 1574398879),
(27, 1, 'image-5', 'image-5', '/image-5.png', '/thumb/image-5.png', '', 'image-5', '2019-11-22 04:57:03', '844 KB', 'png', '612 x 612 px', '500x500', 1, 5, 1, 0, 0, 0, 0, '', 0, 1574398879),
(28, 1, 'image-1', 'image-1', '/image-1.png', '/thumb/image-1.png', '', 'image-1', '2019-11-22 04:57:02', '125 KB', 'png', '300 x 214 px', '300x214', 1, 4, 1, 0, 0, 0, 0, '', 0, 1574398879),
(29, 1, 'image-6', 'image-6', '/image-6.png', '/thumb/image-6.png', '', 'image-6', '2019-11-22 04:57:02', '213 KB', 'png', '313 x 316 px', '313x316', 1, 3, 1, 0, 0, 0, 0, '', 0, 1574398880),
(30, 1, 'image-4', 'image-4', '/image-4.png', '/thumb/image-4.png', '', 'image-4', '2019-11-22 04:57:02', '187 KB', 'png', '305 x 307 px', '305x307', 1, 2, 1, 0, 0, 0, 0, '', 0, 1574398880),
(31, 1, 'image-2', 'image-2', '/image-2.png', '/thumb/image-2.png', '', 'image-2', '2019-11-22 04:57:02', '354 KB', 'png', '480 x 372 px', '480x372', 1, 1, 1, 0, 0, 0, 0, '', 0, 1574398880);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_image_comment`
--

CREATE TABLE `wp_bwg_image_comment` (
  `id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `url` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `mail` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `published` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_image_rate`
--

CREATE TABLE `wp_bwg_image_rate` (
  `id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `rate` float NOT NULL,
  `ip` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_image_tag`
--

CREATE TABLE `wp_bwg_image_tag` (
  `id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `gallery_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_shortcode`
--

CREATE TABLE `wp_bwg_shortcode` (
  `id` bigint(20) NOT NULL,
  `tagtext` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_bwg_shortcode`
--

INSERT INTO `wp_bwg_shortcode` (`id`, `tagtext`) VALUES
(1, ' use_option_defaults=\"1\" type=\"gallery\" theme_id=\"1\" gallery_id=\"1\" tag=\"0\" gallery_type=\"thumbnails\"'),
(2, ' gallery_type=\"thumbnails\" theme_id=\"1\" use_option_defaults=\"1\" gallery_id=\"0\" tag=\"0\" thumb_width=\"250\" thumb_height=\"140\" image_column_number=\"5\" image_enable_page=\"1\" images_per_page=\"30\" load_more_image_count=\"30\" sort_by=\"order\" order_by=\"asc\" show_search_box=\"0\" placeholder=\"Search\" search_box_width=\"330\" show_sort_images=\"0\" show_tag_box=\"0\" showthumbs_name=\"0\" show_gallery_description=\"0\" image_title=\"hover\" play_icon=\"1\" gallery_download=\"0\" ecommerce_icon=\"undefined\" thumb_click_action=\"open_lightbox\" thumb_link_target=\"1\" popup_fullscreen=\"1\" popup_width=\"800\" popup_height=\"500\" popup_effect=\"fade\" popup_effect_duration=\"0.1\" popup_autoplay=\"0\" popup_interval=\"2.5\" popup_enable_filmstrip=\"1\" popup_filmstrip_height=\"60\" popup_enable_ctrl_btn=\"1\" popup_enable_fullscreen=\"1\" popup_enable_comment=\"1\" popup_enable_email=\"1\" popup_enable_captcha=\"0\" comment_moderation=\"0\" popup_enable_info=\"1\" popup_info_always_show=\"0\" popup_info_full_width=\"1\" autohide_lightbox_navigation=\"0\" popup_hit_counter=\"0\" popup_enable_rate=\"0\" popup_enable_fullsize_image=\"0\" popup_enable_download=\"0\" show_image_counts=\"0\" enable_loop=\"1\" enable_addthis=\"0\" addthis_profile_id=\"\" popup_enable_facebook=\"1\" popup_enable_twitter=\"1\" popup_enable_pinterest=\"0\" popup_enable_tumblr=\"0\" popup_enable_ecommerce=\"undefined\" watermark_type=\"none\" watermark_link=\"https://10web.io/\"'),
(3, ' gallery_type=\"thumbnails\" theme_id=\"1\" use_option_defaults=\"1\" gallery_id=\"1\" tag=\"0\" thumb_width=\"250\" thumb_height=\"140\" image_column_number=\"5\" image_enable_page=\"1\" images_per_page=\"30\" load_more_image_count=\"30\" sort_by=\"order\" order_by=\"asc\" show_search_box=\"0\" placeholder=\"Search\" search_box_width=\"330\" show_sort_images=\"0\" show_tag_box=\"0\" showthumbs_name=\"0\" show_gallery_description=\"0\" image_title=\"hover\" play_icon=\"1\" gallery_download=\"0\" ecommerce_icon=\"undefined\" thumb_click_action=\"open_lightbox\" thumb_link_target=\"1\" popup_fullscreen=\"1\" popup_width=\"800\" popup_height=\"500\" popup_effect=\"fade\" popup_effect_duration=\"0.1\" popup_autoplay=\"0\" popup_interval=\"2.5\" popup_enable_filmstrip=\"1\" popup_filmstrip_height=\"60\" popup_enable_ctrl_btn=\"1\" popup_enable_fullscreen=\"1\" popup_enable_comment=\"1\" popup_enable_email=\"1\" popup_enable_captcha=\"0\" comment_moderation=\"0\" popup_enable_info=\"1\" popup_info_always_show=\"0\" popup_info_full_width=\"1\" autohide_lightbox_navigation=\"0\" popup_hit_counter=\"0\" popup_enable_rate=\"0\" popup_enable_fullsize_image=\"0\" popup_enable_download=\"0\" show_image_counts=\"0\" enable_loop=\"1\" enable_addthis=\"0\" addthis_profile_id=\"\" popup_enable_facebook=\"1\" popup_enable_twitter=\"1\" popup_enable_pinterest=\"0\" popup_enable_tumblr=\"0\" popup_enable_ecommerce=\"undefined\" watermark_type=\"none\" watermark_link=\"https://10web.io/\"');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_theme`
--

CREATE TABLE `wp_bwg_theme` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `options` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `default_theme` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_bwg_theme`
--

INSERT INTO `wp_bwg_theme` (`id`, `name`, `options`, `default_theme`) VALUES
(1, 'Light', '{\"album_compact_back_font_color\":\"323A45\",\"album_compact_back_font_size\":15,\"album_compact_back_font_style\":\"Ubuntu\",\"album_compact_back_font_weight\":\"bold\",\"album_compact_back_padding\":\"0\",\"album_compact_gal_title_align\":\"center\",\"album_compact_gal_title_font_color\":\"323A45\",\"album_compact_gal_title_font_size\":18,\"album_compact_gal_title_font_style\":\"Ubuntu\",\"album_compact_gal_title_font_weight\":\"bold\",\"album_compact_gal_title_margin\":\"0 2px 2px 2px\",\"album_compact_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_compact_thumb_align\":\"center\",\"album_compact_thumb_bg_color\":\"000000\",\"album_compact_thumb_bg_transparent\":0,\"album_compact_thumb_border_color\":\"CCCCCC\",\"album_compact_thumb_border_radius\":\"0\",\"album_compact_thumb_border_style\":\"none\",\"album_compact_thumb_border_width\":0,\"album_compact_thumb_box_shadow\":\"0px 0px 0px #888888\",\"album_compact_thumb_hover_effect\":\"zoom\",\"album_compact_thumb_hover_effect_value\":\"1.08\",\"album_compact_thumb_margin\":4,\"album_compact_thumb_padding\":0,\"album_compact_thumb_title_pos\":\"bottom\",\"album_compact_thumb_transition\":1,\"album_compact_thumb_transparent\":100,\"album_compact_thumbs_bg_color\":\"FFFFFF\",\"album_compact_title_font_color\":\"323A45\",\"album_compact_title_font_color_hover\":\"FFFFFF\",\"album_compact_title_font_size\":16,\"album_compact_title_font_style\":\"Ubuntu\",\"album_compact_title_font_weight\":\"bold\",\"album_compact_title_margin\":\"2px\",\"album_compact_title_shadow\":\"0px 0px 0px #888888\",\"album_extended_back_font_color\":\"000000\",\"album_extended_back_font_size\":20,\"album_extended_back_font_style\":\"Ubuntu\",\"album_extended_back_font_weight\":\"bold\",\"album_extended_back_padding\":\"0\",\"album_extended_desc_font_color\":\"5C5C5C\",\"album_extended_desc_font_size\":16,\"album_extended_desc_font_style\":\"Ubuntu\",\"album_extended_desc_font_weight\":\"normal\",\"album_extended_desc_more_color\":\"007AFF\",\"album_extended_desc_more_size\":12,\"album_extended_desc_padding\":\"0px 0px 0px 0px\",\"album_extended_desc_span_border_color\":\"CCCCCC\",\"album_extended_desc_span_border_style\":\"none\",\"album_extended_desc_span_border_width\":0,\"album_extended_div_bg_color\":\"FAFAFA\",\"album_extended_div_bg_transparent\":0,\"album_extended_div_border_radius\":\"14px\",\"album_extended_div_margin\":\"20px 20px 0px 0px\",\"album_extended_div_padding\":0,\"album_extended_div_separator_color\":\"E0E0E0\",\"album_extended_div_separator_style\":\"solid\",\"album_extended_div_separator_width\":0,\"album_extended_gal_title_align\":\"right\",\"album_extended_gal_title_font_color\":\"CCCCCC\",\"album_extended_gal_title_font_size\":16,\"album_extended_gal_title_font_style\":\"Ubuntu\",\"album_extended_gal_title_font_weight\":\"bold\",\"album_extended_gal_title_margin\":\"2px\",\"album_extended_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_extended_text_div_bg_color\":\"FAFAFA\",\"album_extended_text_div_border_color\":\"E8E8E8\",\"album_extended_text_div_border_radius\":\"0\",\"album_extended_text_div_border_style\":\"none\",\"album_extended_text_div_border_width\":0,\"album_extended_text_div_padding\":\"16px\",\"album_extended_thumb_align\":\"left\",\"album_extended_thumb_bg_color\":\"FFFFFF\",\"album_extended_thumb_bg_transparent\":0,\"album_extended_thumb_border_color\":\"FAFAFA\",\"album_extended_thumb_border_radius\":\"10px\",\"album_extended_thumb_border_style\":\"none\",\"album_extended_thumb_border_width\":0,\"album_extended_thumb_box_shadow\":\"\",\"album_extended_thumb_div_bg_color\":\"FAFAFA\",\"album_extended_thumb_div_border_color\":\"E8E8E8\",\"album_extended_thumb_div_border_radius\":\"\",\"album_extended_thumb_div_border_style\":\"none\",\"album_extended_thumb_div_border_width\":0,\"album_extended_thumb_div_padding\":\"14px\",\"album_extended_thumb_hover_effect\":\"none\",\"album_extended_thumb_hover_effect_value\":\"1.03\",\"album_extended_thumb_margin\":0,\"album_extended_thumb_padding\":0,\"album_extended_thumb_transition\":0,\"album_extended_thumb_transparent\":100,\"album_extended_thumbs_bg_color\":\"FFFFFF\",\"album_extended_title_desc_alignment\":\"top\",\"album_extended_title_font_color\":\"000000\",\"album_extended_title_font_size\":22,\"album_extended_title_font_style\":\"Ubuntu\",\"album_extended_title_font_weight\":\"bold\",\"album_extended_title_margin_bottom\":0,\"album_extended_title_padding\":\"0px 0px 0px 0px\",\"album_extended_title_span_border_color\":\"CCCCCC\",\"album_extended_title_span_border_style\":\"none\",\"album_extended_title_span_border_width\":0,\"album_masonry_back_font_color\":\"323A45\",\"album_masonry_back_font_size\":15,\"album_masonry_back_font_style\":\"Ubuntu\",\"album_masonry_back_font_weight\":\"bold\",\"album_masonry_back_padding\":\"0\",\"album_masonry_container_margin\":1,\"album_masonry_gal_title_align\":\"center\",\"album_masonry_gal_title_font_color\":\"323A45\",\"album_masonry_gal_title_font_size\":18,\"album_masonry_gal_title_font_style\":\"Ubuntu\",\"album_masonry_gal_title_font_weight\":\"bold\",\"album_masonry_gal_title_margin\":\"0 2px 2px 2px\",\"album_masonry_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_masonry_thumb_align\":\"center\",\"album_masonry_thumb_bg_color\":\"000000\",\"album_masonry_thumb_bg_transparent\":0,\"album_masonry_thumb_border_color\":\"CCCCCC\",\"album_masonry_thumb_border_radius\":\"0\",\"album_masonry_thumb_border_style\":\"none\",\"album_masonry_thumb_border_width\":0,\"album_masonry_thumb_box_shadow\":\"\",\"album_masonry_thumb_hover_effect\":\"zoom\",\"album_masonry_thumb_hover_effect_value\":\"1.08\",\"album_masonry_thumb_margin\":0,\"album_masonry_thumb_padding\":4,\"album_masonry_thumb_title_font_color_hover\":\"FFFFFF\",\"album_masonry_thumb_title_pos\":\"bottom\",\"album_masonry_thumb_transition\":1,\"album_masonry_thumb_transparent\":100,\"album_masonry_thumbs_bg_color\":\"FFFFFF\",\"album_masonry_title_font_color\":\"323A45\",\"album_masonry_title_font_size\":16,\"album_masonry_title_font_style\":\"Ubuntu\",\"album_masonry_title_font_weight\":\"bold\",\"album_masonry_title_margin\":\"\",\"album_masonry_title_shadow\":\"0px 0px 0px #888888\",\"blog_style_align\":\"center\",\"blog_style_bg_color\":\"FFFFFF\",\"blog_style_border_color\":\"F5F5F5\",\"blog_style_border_radius\":\"0\",\"blog_style_border_style\":\"solid\",\"blog_style_border_width\":1,\"blog_style_box_shadow\":\"\",\"blog_style_gal_title_align\":\"center\",\"blog_style_gal_title_font_color\":\"323A45\",\"blog_style_gal_title_font_size\":16,\"blog_style_gal_title_font_style\":\"Ubuntu\",\"blog_style_gal_title_font_weight\":\"bold\",\"blog_style_gal_title_margin\":\"2px\",\"blog_style_gal_title_shadow\":\"0px 0px 0px #888888\",\"blog_style_img_font_color\":\"000000\",\"blog_style_img_font_family\":\"Ubuntu\",\"blog_style_img_font_size\":16,\"blog_style_margin\":\"2px\",\"blog_style_padding\":\"0\",\"blog_style_share_buttons_align\":\"right\",\"blog_style_share_buttons_bg_color\":\"FFFFFF\",\"blog_style_share_buttons_bg_transparent\":0,\"blog_style_share_buttons_border_color\":\"000000\",\"blog_style_share_buttons_border_radius\":\"0\",\"blog_style_share_buttons_border_style\":\"none\",\"blog_style_share_buttons_border_width\":0,\"blog_style_share_buttons_color\":\"B3AFAF\",\"blog_style_share_buttons_font_size\":20,\"blog_style_share_buttons_margin\":\"5px auto 10px auto\",\"blog_style_transparent\":80,\"carousel_caption_background_color\":\"000000\",\"carousel_caption_bottom\":0,\"carousel_caption_p_color\":\"FFFFFF\",\"carousel_caption_p_font_size\":14,\"carousel_caption_p_font_weight\":\"bold\",\"carousel_caption_p_mergin\":0,\"carousel_caption_p_pedding\":5,\"carousel_close_btn_transparent\":50,\"carousel_close_rl_btn_hover_color\":\"191919\",\"carousel_cont_bg_color\":\"000000\",\"carousel_cont_btn_transparent\":0,\"carousel_feature_border_color\":\"5D204F\",\"carousel_feature_border_style\":\"none\",\"carousel_feature_border_width\":2,\"carousel_font_family\":\"arial\",\"carousel_mergin_bottom\":\"0.5\",\"carousel_play_pause_btn_size\":25,\"carousel_rl_btn_bg_color\":\"FFFFFF\",\"carousel_rl_btn_border_color\":\"FFFFFF\",\"carousel_rl_btn_border_radius\":\"20px\",\"carousel_rl_btn_border_style\":\"none\",\"carousel_rl_btn_border_width\":0,\"carousel_rl_btn_color\":\"303030\",\"carousel_rl_btn_height\":35,\"carousel_rl_btn_size\":15,\"carousel_rl_btn_style\":\"bwg-icon-angle\",\"carousel_rl_btn_width\":35,\"carousel_title_border_radius\":\"5px\",\"carousel_title_opacity\":100,\"compact_container_margin\":\"1\",\"container_margin\":\"1\",\"image_browser_align\":\"center\",\"image_browser_bg_color\":\"EBEBEB\",\"image_browser_border_color\":\"F5F5F5\",\"image_browser_border_radius\":\"0\",\"image_browser_border_style\":\"none\",\"image_browser_border_width\":1,\"image_browser_box_shadow\":\"\",\"image_browser_full_bg_color\":\"F5F5F5\",\"image_browser_full_border_color\":\"F7F7F7\",\"image_browser_full_border_radius\":\"0\",\"image_browser_full_border_style\":\"none\",\"image_browser_full_border_width\":2,\"image_browser_full_padding\":\"4px\",\"image_browser_full_transparent\":90,\"image_browser_gal_title_align\":\"center\",\"image_browser_gal_title_font_color\":\"323A45\",\"image_browser_gal_title_font_size\":16,\"image_browser_gal_title_font_style\":\"Ubuntu\",\"image_browser_gal_title_font_weight\":\"bold\",\"image_browser_gal_title_margin\":\"2px\",\"image_browser_gal_title_shadow\":\"0px 0px 0px #888888\",\"image_browser_image_description_align\":\"center\",\"image_browser_image_description_bg_color\":\"EBEBEB\",\"image_browser_image_description_border_color\":\"FFFFFF\",\"image_browser_image_description_border_radius\":\"0\",\"image_browser_image_description_border_style\":\"none\",\"image_browser_image_description_border_width\":1,\"image_browser_image_description_margin\":\"0px 5px 0px 5px\",\"image_browser_image_description_padding\":\"8px 8px 8px 8px\",\"image_browser_image_title_align\":\"top\",\"image_browser_img_font_color\":\"000000\",\"image_browser_img_font_family\":\"Ubuntu\",\"image_browser_img_font_size\":15,\"image_browser_margin\":\"2px auto\",\"image_browser_padding\":\"4px\",\"image_browser_transparent\":80,\"lightbox_bg_color\":\"FFFFFF\",\"lightbox_bg_transparent\":100,\"lightbox_close_btn_bg_color\":\"FFFFFF\",\"lightbox_close_btn_border_color\":\"FFFFFF\",\"lightbox_close_btn_border_radius\":\"16px\",\"lightbox_close_btn_border_style\":\"none\",\"lightbox_close_btn_border_width\":2,\"lightbox_close_btn_box_shadow\":\"\",\"lightbox_close_btn_color\":\"808080\",\"lightbox_close_btn_full_color\":\"000000\",\"lightbox_close_btn_height\":30,\"lightbox_close_btn_right\":\"-15\",\"lightbox_close_btn_size\":20,\"lightbox_close_btn_top\":\"-20\",\"lightbox_close_btn_transparent\":60,\"lightbox_close_btn_width\":30,\"lightbox_close_rl_btn_hover_color\":\"808080\",\"lightbox_comment_author_font_size\":14,\"lightbox_comment_bg_color\":\"FFFFFF\",\"lightbox_comment_body_font_size\":12,\"lightbox_comment_button_bg_color\":\"2F2F2F\",\"lightbox_comment_button_border_color\":\"666666\",\"lightbox_comment_button_border_radius\":\"7px\",\"lightbox_comment_button_border_style\":\"none\",\"lightbox_comment_button_border_width\":1,\"lightbox_comment_button_padding\":\"10px 10px\",\"lightbox_comment_date_font_size\":10,\"lightbox_comment_font_color\":\"7A7A7A\",\"lightbox_comment_font_size\":12,\"lightbox_comment_font_style\":\"Ubuntu\",\"lightbox_comment_input_bg_color\":\"F7F8F9\",\"lightbox_comment_input_border_color\":\"EBEBEB\",\"lightbox_comment_input_border_radius\":\"7px\",\"lightbox_comment_input_border_style\":\"none\",\"lightbox_comment_input_border_width\":2,\"lightbox_comment_input_padding\":\"5px\",\"lightbox_comment_pos\":\"left\",\"lightbox_comment_separator_color\":\"383838\",\"lightbox_comment_separator_style\":\"none\",\"lightbox_comment_separator_width\":20,\"lightbox_comment_share_button_color\":\"808080\",\"lightbox_comment_width\":350,\"lightbox_ctrl_btn_align\":\"center\",\"lightbox_ctrl_btn_color\":\"808080\",\"lightbox_ctrl_btn_height\":20,\"lightbox_ctrl_btn_margin_left\":7,\"lightbox_ctrl_btn_margin_top\":10,\"lightbox_ctrl_btn_pos\":\"bottom\",\"lightbox_ctrl_btn_transparent\":100,\"lightbox_ctrl_cont_bg_color\":\"FFFFFF\",\"lightbox_ctrl_cont_border_radius\":4,\"lightbox_ctrl_cont_transparent\":85,\"lightbox_description_color\":\"B0B0B0\",\"lightbox_description_font_size\":\"13\",\"lightbox_description_font_style\":\"Ubuntu\",\"lightbox_description_font_weight\":\"bold\",\"lightbox_filmstrip_pos\":\"bottom\",\"lightbox_filmstrip_rl_bg_color\":\"EBEBEB\",\"lightbox_filmstrip_rl_btn_color\":\"808080\",\"lightbox_filmstrip_rl_btn_size\":20,\"lightbox_filmstrip_thumb_active_border_color\":\"FFFFFF\",\"lightbox_filmstrip_thumb_active_border_width\":0,\"lightbox_filmstrip_thumb_border_color\":\"000000\",\"lightbox_filmstrip_thumb_border_radius\":\"0\",\"lightbox_filmstrip_thumb_border_style\":\"none\",\"lightbox_filmstrip_thumb_border_width\":1,\"lightbox_filmstrip_thumb_deactive_transparent\":80,\"lightbox_filmstrip_thumb_margin\":\"0 1px\",\"lightbox_hit_align\":\"left\",\"lightbox_hit_bg_color\":\"000000\",\"lightbox_hit_bg_transparent\":\"70\",\"lightbox_hit_border_color\":\"000000\",\"lightbox_hit_border_radius\":\"5px\",\"lightbox_hit_border_style\":\"none\",\"lightbox_hit_border_width\":\"1\",\"lightbox_hit_color\":\"FFFFFF\",\"lightbox_hit_font_size\":14,\"lightbox_hit_font_style\":\"Ubuntu\",\"lightbox_hit_font_weight\":\"normal\",\"lightbox_hit_margin\":\"0 5px\",\"lightbox_hit_padding\":\"5px\",\"lightbox_hit_pos\":\"bottom\",\"lightbox_info_align\":\"left\",\"lightbox_info_bg_color\":\"FFFFFF\",\"lightbox_info_bg_transparent\":\"70\",\"lightbox_info_border_color\":\"000000\",\"lightbox_info_border_radius\":\"0px\",\"lightbox_info_border_style\":\"none\",\"lightbox_info_border_width\":\"1\",\"lightbox_info_margin\":\"10px 10px -5px 10px\",\"lightbox_info_padding\":\"10px 7px 44px 10px\",\"lightbox_info_pos\":\"bottom\",\"lightbox_overlay_bg_color\":\"EEEEEE\",\"lightbox_overlay_bg_transparent\":60,\"lightbox_rate_align\":\"left\",\"lightbox_rate_color\":\"F9D062\",\"lightbox_rate_hover_color\":\"F7B50E\",\"lightbox_rate_icon\":\"star\",\"lightbox_rate_padding\":\"15px\",\"lightbox_rate_pos\":\"top\",\"lightbox_rate_size\":\"20\",\"lightbox_rate_stars_count\":\"5\",\"lightbox_rl_btn_bg_color\":\"FFFFFF\",\"lightbox_rl_btn_border_color\":\"FFFFFF\",\"lightbox_rl_btn_border_radius\":\"20px\",\"lightbox_rl_btn_border_style\":\"none\",\"lightbox_rl_btn_border_width\":0,\"lightbox_rl_btn_box_shadow\":\"\",\"lightbox_rl_btn_color\":\"ADADAD\",\"lightbox_rl_btn_height\":35,\"lightbox_rl_btn_size\":25,\"lightbox_rl_btn_style\":\"bwg-icon-angle\",\"lightbox_rl_btn_transparent\":\"60\",\"lightbox_rl_btn_width\":35,\"lightbox_title_color\":\"808080\",\"lightbox_title_font_size\":\"16\",\"lightbox_title_font_style\":\"Ubuntu\",\"lightbox_title_font_weight\":\"bold\",\"lightbox_toggle_btn_height\":20,\"lightbox_toggle_btn_width\":100,\"masonry_container_margin\":\"1\",\"masonry_description_color\":\"323A45\",\"masonry_description_font_size\":16,\"masonry_description_font_style\":\"Ubuntu\",\"masonry_thumb_align\":\"center\",\"masonry_thumb_bg_color\":\"000000\",\"masonry_thumb_bg_transparent\":\"0\",\"masonry_thumb_border_color\":\"CCCCCC\",\"masonry_thumb_border_radius\":\"0\",\"masonry_thumb_border_style\":\"none\",\"masonry_thumb_border_width\":\"0\",\"masonry_thumb_gal_title_align\":\"center\",\"masonry_thumb_gal_title_font_color\":\"323A45\",\"masonry_thumb_gal_title_font_size\":16,\"masonry_thumb_gal_title_font_style\":\"Ubuntu\",\"masonry_thumb_gal_title_font_weight\":\"bold\",\"masonry_thumb_gal_title_margin\":\"2px\",\"masonry_thumb_gal_title_shadow\":\"\",\"masonry_thumb_hover_effect\":\"zoom\",\"masonry_thumb_hover_effect_value\":\"1.08\",\"masonry_thumb_padding\":\"4\",\"masonry_thumb_title_font_color\":\"323A45\",\"masonry_thumb_title_font_color_hover\":\"FFFFFF\",\"masonry_thumb_title_font_size\":16,\"masonry_thumb_title_font_style\":\"Ubuntu\",\"masonry_thumb_title_font_weight\":\"bold\",\"masonry_thumb_title_margin\":\"2px\",\"masonry_thumb_transition\":\"1\",\"masonry_thumb_transparent\":\"100\",\"masonry_thumbs_bg_color\":\"FFFFFF\",\"mosaic_container_margin\":\"1\",\"mosaic_thumb_align\":\"center\",\"mosaic_thumb_bg_color\":\"000000\",\"mosaic_thumb_bg_transparent\":\"0\",\"mosaic_thumb_border_color\":\"CCCCCC\",\"mosaic_thumb_border_radius\":\"0\",\"mosaic_thumb_border_style\":\"none\",\"mosaic_thumb_border_width\":\"0\",\"mosaic_thumb_gal_title_align\":\"center\",\"mosaic_thumb_gal_title_font_color\":\"323A45\",\"mosaic_thumb_gal_title_font_size\":16,\"mosaic_thumb_gal_title_font_style\":\"Ubuntu\",\"mosaic_thumb_gal_title_font_weight\":\"bold\",\"mosaic_thumb_gal_title_margin\":\"2px\",\"mosaic_thumb_gal_title_shadow\":\"\",\"mosaic_thumb_hover_effect\":\"zoom\",\"mosaic_thumb_hover_effect_value\":\"1.08\",\"mosaic_thumb_padding\":\"2\",\"mosaic_thumb_title_font_color\":\"323A45\",\"mosaic_thumb_title_font_color_hover\":\"FFFFFF\",\"mosaic_thumb_title_font_size\":16,\"mosaic_thumb_title_font_style\":\"Ubuntu\",\"mosaic_thumb_title_font_weight\":\"bold\",\"mosaic_thumb_title_margin\":\"2px\",\"mosaic_thumb_title_shadow\":\"\",\"mosaic_thumb_transition\":\"1\",\"mosaic_thumb_transparent\":\"100\",\"mosaic_thumbs_bg_color\":\"FFFFFF\",\"page_nav_align\":\"center\",\"page_nav_border_color\":\"E3E3E3\",\"page_nav_border_radius\":\"0\",\"page_nav_border_style\":\"solid\",\"page_nav_border_width\":1,\"page_nav_box_shadow\":\"0\",\"page_nav_button_bg_color\":\"FFFFFF\",\"page_nav_button_bg_transparent\":100,\"page_nav_button_text\":0,\"page_nav_button_transition\":1,\"page_nav_font_color\":\"666666\",\"page_nav_font_size\":12,\"page_nav_font_style\":\"Ubuntu\",\"page_nav_font_weight\":\"bold\",\"page_nav_margin\":\"0\",\"page_nav_number\":0,\"page_nav_padding\":\"3px 6px\",\"page_nav_position\":\"bottom\",\"slideshow_close_btn_transparent\":100,\"slideshow_close_rl_btn_hover_color\":\"BABABA\",\"slideshow_cont_bg_color\":\"F2F2F2\",\"slideshow_description_background_color\":\"000000\",\"slideshow_description_border_radius\":\"0\",\"slideshow_description_color\":\"FFFFFF\",\"slideshow_description_font\":\"Ubuntu\",\"slideshow_description_font_size\":14,\"slideshow_description_opacity\":70,\"slideshow_description_padding\":\"5px 10px 5px 10px\",\"slideshow_dots_active_background_color\":\"FFFFFF\",\"slideshow_dots_active_border_color\":\"000000\",\"slideshow_dots_active_border_width\":1,\"slideshow_dots_background_color\":\"F2D22E\",\"slideshow_dots_border_radius\":\"5px\",\"slideshow_dots_height\":12,\"slideshow_dots_margin\":3,\"slideshow_dots_width\":12,\"slideshow_filmstrip_pos\":\"bottom\",\"slideshow_filmstrip_rl_bg_color\":\"F2F2F2\",\"slideshow_filmstrip_rl_btn_color\":\"BABABA\",\"slideshow_filmstrip_rl_btn_size\":20,\"slideshow_filmstrip_thumb_active_border_color\":\"FFFFFF\",\"slideshow_filmstrip_thumb_active_border_width\":0,\"slideshow_filmstrip_thumb_border_color\":\"000000\",\"slideshow_filmstrip_thumb_border_radius\":\"0\",\"slideshow_filmstrip_thumb_border_style\":\"none\",\"slideshow_filmstrip_thumb_border_width\":0,\"slideshow_filmstrip_thumb_deactive_transparent\":100,\"slideshow_filmstrip_thumb_margin\":\"0px 2px 0 0 \",\"slideshow_play_pause_btn_size\":35,\"slideshow_rl_btn_bg_color\":\"FFFFFF\",\"slideshow_rl_btn_border_color\":\"FFFFFF\",\"slideshow_rl_btn_border_radius\":\"20px\",\"slideshow_rl_btn_border_style\":\"none\",\"slideshow_rl_btn_border_width\":0,\"slideshow_rl_btn_box_shadow\":\"\",\"slideshow_rl_btn_color\":\"D6D6D6\",\"slideshow_rl_btn_height\":37,\"slideshow_rl_btn_size\":12,\"slideshow_rl_btn_style\":\"bwg-icon-angle\",\"slideshow_rl_btn_width\":37,\"slideshow_title_background_color\":\"000000\",\"slideshow_title_border_radius\":\"5px\",\"slideshow_title_color\":\"FFFFFF\",\"slideshow_title_font\":\"Ubuntu\",\"slideshow_title_font_size\":16,\"slideshow_title_opacity\":70,\"slideshow_title_padding\":\"0 0 0 0\",\"thumb_align\":\"center\",\"thumb_bg_color\":\"000000\",\"thumb_bg_transparent\":0,\"thumb_border_color\":\"CCCCCC\",\"thumb_border_radius\":\"0\",\"thumb_border_style\":\"none\",\"thumb_border_width\":0,\"thumb_box_shadow\":\"\",\"thumb_gal_title_align\":\"center\",\"thumb_gal_title_font_color\":\"323A45\",\"thumb_gal_title_font_size\":18,\"thumb_gal_title_font_style\":\"Ubuntu\",\"thumb_gal_title_font_weight\":\"bold\",\"thumb_gal_title_margin\":\"2px\",\"thumb_gal_title_shadow\":\"\",\"thumb_hover_effect\":\"zoom\",\"thumb_hover_effect_value\":\"1.08\",\"thumb_margin\":\"4\",\"thumb_padding\":\"0\",\"thumb_title_font_color\":\"323A45\",\"thumb_title_font_color_hover\":\"FFFFFF\",\"thumb_title_font_size\":16,\"thumb_title_font_style\":\"Ubuntu\",\"thumb_title_font_weight\":\"bold\",\"thumb_title_margin\":\"2px\",\"thumb_title_pos\":\"bottom\",\"thumb_title_shadow\":\"\",\"thumb_transition\":1,\"thumb_transparent\":100,\"thumbs_bg_color\":\"FFFFFF\"}', 1),
(2, 'Dark', '{\"album_compact_back_font_color\":\"323A45\",\"album_compact_back_font_size\":15,\"album_compact_back_font_style\":\"Ubuntu\",\"album_compact_back_font_weight\":\"normal\",\"album_compact_back_padding\":\"0\",\"album_compact_gal_title_align\":\"center\",\"album_compact_gal_title_font_color\":\"323A45\",\"album_compact_gal_title_font_size\":18,\"album_compact_gal_title_font_style\":\"Ubuntu\",\"album_compact_gal_title_font_weight\":\"bold\",\"album_compact_gal_title_margin\":\"0 2px 2px 2px\",\"album_compact_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_compact_thumb_align\":\"center\",\"album_compact_thumb_bg_color\":\"000000\",\"album_compact_thumb_bg_transparent\":100,\"album_compact_thumb_border_color\":\"000000\",\"album_compact_thumb_border_radius\":\"0\",\"album_compact_thumb_border_style\":\"none\",\"album_compact_thumb_border_width\":1,\"album_compact_thumb_box_shadow\":\"\",\"album_compact_thumb_hover_effect\":\"rotate\",\"album_compact_thumb_hover_effect_value\":\"2deg\",\"album_compact_thumb_margin\":4,\"album_compact_thumb_padding\":4,\"album_compact_thumb_title_pos\":\"bottom\",\"album_compact_thumb_transition\":1,\"album_compact_thumb_transparent\":100,\"album_compact_thumbs_bg_color\":\"FFFFFF\",\"album_compact_title_font_color\":\"CCCCCC\",\"album_compact_title_font_color_hover\":\"FFFFFF\",\"album_compact_title_font_size\":16,\"album_compact_title_font_style\":\"Ubuntu\",\"album_compact_title_font_weight\":\"bold\",\"album_compact_title_margin\":\"5px\",\"album_compact_title_shadow\":\"\",\"album_extended_back_font_color\":\"323A45\",\"album_extended_back_font_size\":15,\"album_extended_back_font_style\":\"Ubuntu\",\"album_extended_back_font_weight\":\"bold\",\"album_extended_back_padding\":\"0\",\"album_extended_desc_font_color\":\"000000\",\"album_extended_desc_font_size\":14,\"album_extended_desc_font_style\":\"Ubuntu\",\"album_extended_desc_font_weight\":\"normal\",\"album_extended_desc_more_color\":\"FFC933\",\"album_extended_desc_more_size\":12,\"album_extended_desc_padding\":\"2px\",\"album_extended_desc_span_border_color\":\"CCCCCC\",\"album_extended_desc_span_border_style\":\"none\",\"album_extended_desc_span_border_width\":1,\"album_extended_div_bg_color\":\"FFFFFF\",\"album_extended_div_bg_transparent\":0,\"album_extended_div_border_radius\":\"\",\"album_extended_div_margin\":\"0 0 5px 0\",\"album_extended_div_padding\":10,\"album_extended_div_separator_color\":\"CCCCCC\",\"album_extended_div_separator_style\":\"none\",\"album_extended_div_separator_width\":1,\"album_extended_gal_title_align\":\"center\",\"album_extended_gal_title_font_color\":\"323A45\",\"album_extended_gal_title_font_size\":18,\"album_extended_gal_title_font_style\":\"Ubuntu\",\"album_extended_gal_title_font_weight\":\"bold\",\"album_extended_gal_title_margin\":\"0 2px 2px 2px\",\"album_extended_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_extended_text_div_bg_color\":\"FFFFFF\",\"album_extended_text_div_border_color\":\"CCCCCC\",\"album_extended_text_div_border_radius\":\"0\",\"album_extended_text_div_border_style\":\"none\",\"album_extended_text_div_border_width\":1,\"album_extended_text_div_padding\":\"5px\",\"album_extended_thumb_align\":\"left\",\"album_extended_thumb_bg_color\":\"E8E8E8\",\"album_extended_thumb_bg_transparent\":100,\"album_extended_thumb_border_color\":\"E8E8E8\",\"album_extended_thumb_border_radius\":\"0\",\"album_extended_thumb_border_style\":\"none\",\"album_extended_thumb_border_width\":4,\"album_extended_thumb_box_shadow\":\"\",\"album_extended_thumb_div_bg_color\":\"FFFFFF\",\"album_extended_thumb_div_border_color\":\"CCCCCC\",\"album_extended_thumb_div_border_radius\":\"\",\"album_extended_thumb_div_border_style\":\"none\",\"album_extended_thumb_div_border_width\":0,\"album_extended_thumb_div_padding\":\"0\",\"album_extended_thumb_hover_effect\":\"rotate\",\"album_extended_thumb_hover_effect_value\":\"2deg\",\"album_extended_thumb_margin\":2,\"album_extended_thumb_padding\":4,\"album_extended_thumb_transition\":0,\"album_extended_thumb_transparent\":100,\"album_extended_thumbs_bg_color\":\"FFFFFF\",\"album_extended_title_desc_alignment\":\"top\",\"album_extended_title_font_color\":\"000000\",\"album_extended_title_font_size\":16,\"album_extended_title_font_style\":\"Ubuntu\",\"album_extended_title_font_weight\":\"bold\",\"album_extended_title_margin_bottom\":2,\"album_extended_title_padding\":\"2px\",\"album_extended_title_span_border_color\":\"CCCCCC\",\"album_extended_title_span_border_style\":\"none\",\"album_extended_title_span_border_width\":1,\"album_masonry_back_font_color\":\"323A45\",\"album_masonry_back_font_size\":15,\"album_masonry_back_font_style\":\"Ubuntu\",\"album_masonry_back_font_weight\":\"normal\",\"album_masonry_back_padding\":\"0\",\"album_masonry_container_margin\":1,\"album_masonry_gal_title_align\":\"center\",\"album_masonry_gal_title_font_color\":\"323A45\",\"album_masonry_gal_title_font_size\":18,\"album_masonry_gal_title_font_style\":\"Ubuntu\",\"album_masonry_gal_title_font_weight\":\"bold\",\"album_masonry_gal_title_margin\":\"0 2px 2px 2px\",\"album_masonry_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_masonry_thumb_align\":\"center\",\"album_masonry_thumb_bg_color\":\"000000\",\"album_masonry_thumb_bg_transparent\":100,\"album_masonry_thumb_border_color\":\"000000\",\"album_masonry_thumb_border_radius\":\"0\",\"album_masonry_thumb_border_style\":\"none\",\"album_masonry_thumb_border_width\":1,\"album_masonry_thumb_box_shadow\":\"\",\"album_masonry_thumb_hover_effect\":\"zoom\",\"album_masonry_thumb_hover_effect_value\":\"2deg\",\"album_masonry_thumb_margin\":4,\"album_masonry_thumb_padding\":4,\"album_masonry_thumb_title_font_color_hover\":\"FFFFFF\",\"album_masonry_thumb_title_pos\":\"bottom\",\"album_masonry_thumb_transition\":1,\"album_masonry_thumb_transparent\":100,\"album_masonry_thumbs_bg_color\":\"FFFFFF\",\"album_masonry_title_font_color\":\"323A45\",\"album_masonry_title_font_size\":16,\"album_masonry_title_font_style\":\"Ubuntu\",\"album_masonry_title_font_weight\":\"bold\",\"album_masonry_title_margin\":\"5px\",\"album_masonry_title_shadow\":\"\",\"blog_style_align\":\"center\",\"blog_style_bg_color\":\"E8E8E8\",\"blog_style_border_color\":\"CCCCCC\",\"blog_style_border_radius\":\"0\",\"blog_style_border_style\":\"none\",\"blog_style_border_width\":1,\"blog_style_box_shadow\":\"\",\"blog_style_gal_title_align\":\"center\",\"blog_style_gal_title_font_color\":\"323A45\",\"blog_style_gal_title_font_size\":16,\"blog_style_gal_title_font_style\":\"Ubuntu\",\"blog_style_gal_title_font_weight\":\"bold\",\"blog_style_gal_title_margin\":\"2px\",\"blog_style_gal_title_shadow\":\"0px 0px 0px #888888\",\"blog_style_img_font_color\":\"000000\",\"blog_style_img_font_family\":\"Ubuntu\",\"blog_style_img_font_size\":16,\"blog_style_margin\":\"2px\",\"blog_style_padding\":\"4px\",\"blog_style_share_buttons_align\":\"right\",\"blog_style_share_buttons_bg_color\":\"FFFFFF\",\"blog_style_share_buttons_bg_transparent\":0,\"blog_style_share_buttons_border_color\":\"000000\",\"blog_style_share_buttons_border_radius\":\"0\",\"blog_style_share_buttons_border_style\":\"none\",\"blog_style_share_buttons_border_width\":0,\"blog_style_share_buttons_color\":\"A1A1A1\",\"blog_style_share_buttons_font_size\":20,\"blog_style_share_buttons_margin\":\"5px auto 10px auto\",\"blog_style_transparent\":70,\"carousel_caption_background_color\":\"000000\",\"carousel_caption_bottom\":0,\"carousel_caption_p_color\":\"FFFFFF\",\"carousel_caption_p_font_size\":14,\"carousel_caption_p_font_weight\":\"bold\",\"carousel_caption_p_mergin\":0,\"carousel_caption_p_pedding\":5,\"carousel_close_btn_transparent\":100,\"carousel_close_rl_btn_hover_color\":\"CCCCCC\",\"carousel_cont_bg_color\":\"000000\",\"carousel_cont_btn_transparent\":0,\"carousel_feature_border_color\":\"5D204F\",\"carousel_feature_border_style\":\"solid\",\"carousel_feature_border_width\":2,\"carousel_font_family\":\"Ubuntu\",\"carousel_mergin_bottom\":\"0.5\",\"carousel_play_pause_btn_size\":20,\"carousel_rl_btn_bg_color\":\"000000\",\"carousel_rl_btn_border_color\":\"FFFFFF\",\"carousel_rl_btn_border_radius\":\"20px\",\"carousel_rl_btn_border_style\":\"none\",\"carousel_rl_btn_border_width\":0,\"carousel_rl_btn_color\":\"FFFFFF\",\"carousel_rl_btn_height\":40,\"carousel_rl_btn_size\":20,\"carousel_rl_btn_style\":\"bwg-icon-chevron\",\"carousel_rl_btn_width\":40,\"carousel_title_border_radius\":\"5px\",\"carousel_title_opacity\":100,\"compact_container_margin\":\"1\",\"container_margin\":\"1\",\"image_browser_align\":\"center\",\"image_browser_bg_color\":\"E8E8E8\",\"image_browser_border_color\":\"E8E8E8\",\"image_browser_border_radius\":\"2px\",\"image_browser_border_style\":\"none\",\"image_browser_border_width\":1,\"image_browser_box_shadow\":\"\",\"image_browser_full_bg_color\":\"FFFFFF\",\"image_browser_full_border_color\":\"EDEDED\",\"image_browser_full_border_radius\":\"0\",\"image_browser_full_border_style\":\"solid\",\"image_browser_full_border_width\":1,\"image_browser_full_padding\":\"4px\",\"image_browser_full_transparent\":90,\"image_browser_gal_title_align\":\"center\",\"image_browser_gal_title_font_color\":\"323A45\",\"image_browser_gal_title_font_size\":16,\"image_browser_gal_title_font_style\":\"Ubuntu\",\"image_browser_gal_title_font_weight\":\"bold\",\"image_browser_gal_title_margin\":\"2px\",\"image_browser_gal_title_shadow\":\"0px 0px 0px #888888\",\"image_browser_image_description_align\":\"center\",\"image_browser_image_description_bg_color\":\"E8E8E8\",\"image_browser_image_description_border_color\":\"FFFFFF\",\"image_browser_image_description_border_radius\":\"0\",\"image_browser_image_description_border_style\":\"none\",\"image_browser_image_description_border_width\":1,\"image_browser_image_description_margin\":\"24px 0px 0px 0px\",\"image_browser_image_description_padding\":\"8px 8px 8px 8px\",\"image_browser_image_title_align\":\"top\",\"image_browser_img_font_color\":\"000000\",\"image_browser_img_font_family\":\"Ubuntu\",\"image_browser_img_font_size\":14,\"image_browser_margin\":\"2px auto\",\"image_browser_padding\":\"4px\",\"image_browser_transparent\":80,\"lightbox_bg_color\":\"000000\",\"lightbox_bg_transparent\":100,\"lightbox_close_btn_bg_color\":\"000000\",\"lightbox_close_btn_border_color\":\"FFFFFF\",\"lightbox_close_btn_border_radius\":\"16px\",\"lightbox_close_btn_border_style\":\"none\",\"lightbox_close_btn_border_width\":0,\"lightbox_close_btn_box_shadow\":\"\",\"lightbox_close_btn_color\":\"FFFFFF\",\"lightbox_close_btn_full_color\":\"FFFFFF\",\"lightbox_close_btn_height\":20,\"lightbox_close_btn_right\":\"-10\",\"lightbox_close_btn_size\":10,\"lightbox_close_btn_top\":\"-10\",\"lightbox_close_btn_transparent\":95,\"lightbox_close_btn_width\":20,\"lightbox_close_rl_btn_hover_color\":\"FFFFFF\",\"lightbox_comment_author_font_size\":14,\"lightbox_comment_bg_color\":\"000000\",\"lightbox_comment_body_font_size\":12,\"lightbox_comment_button_bg_color\":\"333333\",\"lightbox_comment_button_border_color\":\"666666\",\"lightbox_comment_button_border_radius\":\"3px\",\"lightbox_comment_button_border_style\":\"none\",\"lightbox_comment_button_border_width\":1,\"lightbox_comment_button_padding\":\"3px 10px\",\"lightbox_comment_date_font_size\":10,\"lightbox_comment_font_color\":\"CCCCCC\",\"lightbox_comment_font_size\":12,\"lightbox_comment_font_style\":\"Ubuntu\",\"lightbox_comment_input_bg_color\":\"333333\",\"lightbox_comment_input_border_color\":\"666666\",\"lightbox_comment_input_border_radius\":\"0\",\"lightbox_comment_input_border_style\":\"none\",\"lightbox_comment_input_border_width\":1,\"lightbox_comment_input_padding\":\"3px\",\"lightbox_comment_pos\":\"left\",\"lightbox_comment_separator_color\":\"2B2B2B\",\"lightbox_comment_separator_style\":\"solid\",\"lightbox_comment_separator_width\":1,\"lightbox_comment_share_button_color\":\"FFFFFF\",\"lightbox_comment_width\":400,\"lightbox_ctrl_btn_align\":\"center\",\"lightbox_ctrl_btn_color\":\"FFFFFF\",\"lightbox_ctrl_btn_height\":20,\"lightbox_ctrl_btn_margin_left\":7,\"lightbox_ctrl_btn_margin_top\":10,\"lightbox_ctrl_btn_pos\":\"bottom\",\"lightbox_ctrl_btn_transparent\":80,\"lightbox_ctrl_cont_bg_color\":\"000000\",\"lightbox_ctrl_cont_border_radius\":4,\"lightbox_ctrl_cont_transparent\":80,\"lightbox_description_color\":\"FFFFFF\",\"lightbox_description_font_size\":14,\"lightbox_description_font_style\":\"Ubuntu\",\"lightbox_description_font_weight\":\"normal\",\"lightbox_filmstrip_pos\":\"top\",\"lightbox_filmstrip_rl_bg_color\":\"2B2B2B\",\"lightbox_filmstrip_rl_btn_color\":\"FFFFFF\",\"lightbox_filmstrip_rl_btn_size\":20,\"lightbox_filmstrip_thumb_active_border_color\":\"FFFFFF\",\"lightbox_filmstrip_thumb_active_border_width\":0,\"lightbox_filmstrip_thumb_border_color\":\"000000\",\"lightbox_filmstrip_thumb_border_radius\":\"0\",\"lightbox_filmstrip_thumb_border_style\":\"none\",\"lightbox_filmstrip_thumb_border_width\":1,\"lightbox_filmstrip_thumb_deactive_transparent\":80,\"lightbox_filmstrip_thumb_margin\":\"0 1px\",\"lightbox_hit_align\":\"left\",\"lightbox_hit_bg_color\":\"000000\",\"lightbox_hit_bg_transparent\":70,\"lightbox_hit_border_color\":\"000000\",\"lightbox_hit_border_radius\":\"5px\",\"lightbox_hit_border_style\":\"none\",\"lightbox_hit_border_width\":1,\"lightbox_hit_color\":\"FFFFFF\",\"lightbox_hit_font_size\":14,\"lightbox_hit_font_style\":\"Ubuntu\",\"lightbox_hit_font_weight\":\"normal\",\"lightbox_hit_margin\":\"0 5px\",\"lightbox_hit_padding\":\"5px\",\"lightbox_hit_pos\":\"bottom\",\"lightbox_info_align\":\"right\",\"lightbox_info_bg_color\":\"000000\",\"lightbox_info_bg_transparent\":70,\"lightbox_info_border_color\":\"000000\",\"lightbox_info_border_radius\":\"5px\",\"lightbox_info_border_style\":\"none\",\"lightbox_info_border_width\":1,\"lightbox_info_margin\":\"15px\",\"lightbox_info_padding\":\"5px\",\"lightbox_info_pos\":\"top\",\"lightbox_overlay_bg_color\":\"000000\",\"lightbox_overlay_bg_transparent\":70,\"lightbox_rate_align\":\"right\",\"lightbox_rate_color\":\"F9D062\",\"lightbox_rate_hover_color\":\"F7B50E\",\"lightbox_rate_icon\":\"star\",\"lightbox_rate_padding\":\"15px\",\"lightbox_rate_pos\":\"bottom\",\"lightbox_rate_size\":20,\"lightbox_rate_stars_count\":5,\"lightbox_rl_btn_bg_color\":\"000000\",\"lightbox_rl_btn_border_color\":\"FFFFFF\",\"lightbox_rl_btn_border_radius\":\"20px\",\"lightbox_rl_btn_border_style\":\"none\",\"lightbox_rl_btn_border_width\":2,\"lightbox_rl_btn_box_shadow\":\"\",\"lightbox_rl_btn_color\":\"FFFFFF\",\"lightbox_rl_btn_height\":40,\"lightbox_rl_btn_size\":20,\"lightbox_rl_btn_style\":\"bwg-icon-chevron\",\"lightbox_rl_btn_transparent\":80,\"lightbox_rl_btn_width\":40,\"lightbox_title_color\":\"FFFFFF\",\"lightbox_title_font_size\":18,\"lightbox_title_font_style\":\"Ubuntu\",\"lightbox_title_font_weight\":\"bold\",\"lightbox_toggle_btn_height\":14,\"lightbox_toggle_btn_width\":100,\"masonry_container_margin\":\"1\",\"masonry_description_color\":\"323A45\",\"masonry_description_font_size\":16,\"masonry_description_font_style\":\"Ubuntu\",\"masonry_thumb_align\":\"center\",\"masonry_thumb_bg_color\":\"000000\",\"masonry_thumb_bg_transparent\":0,\"masonry_thumb_border_color\":\"CCCCCC\",\"masonry_thumb_border_radius\":\"2px\",\"masonry_thumb_border_style\":\"none\",\"masonry_thumb_border_width\":1,\"masonry_thumb_gal_title_align\":\"center\",\"masonry_thumb_gal_title_font_color\":\"323A45\",\"masonry_thumb_gal_title_font_size\":16,\"masonry_thumb_gal_title_font_style\":\"Ubuntu\",\"masonry_thumb_gal_title_font_weight\":\"bold\",\"masonry_thumb_gal_title_margin\":\"2px\",\"masonry_thumb_gal_title_shadow\":\"\",\"masonry_thumb_hover_effect\":\"zoom\",\"masonry_thumb_hover_effect_value\":\"1.08\",\"masonry_thumb_padding\":4,\"masonry_thumb_title_font_color\":\"323A45\",\"masonry_thumb_title_font_color_hover\":\"FFFFFF\",\"masonry_thumb_title_font_size\":16,\"masonry_thumb_title_font_style\":\"Ubuntu\",\"masonry_thumb_title_font_weight\":\"bold\",\"masonry_thumb_title_margin\":\"2px\",\"masonry_thumb_transition\":1,\"masonry_thumb_transparent\":80,\"masonry_thumbs_bg_color\":\"FFFFFF\",\"mosaic_container_margin\":\"1\",\"mosaic_thumb_align\":\"center\",\"mosaic_thumb_bg_color\":\"000000\",\"mosaic_thumb_bg_transparent\":0,\"mosaic_thumb_border_color\":\"CCCCCC\",\"mosaic_thumb_border_radius\":\"2px\",\"mosaic_thumb_border_style\":\"none\",\"mosaic_thumb_border_width\":1,\"mosaic_thumb_gal_title_align\":\"center\",\"mosaic_thumb_gal_title_font_color\":\"323A45\",\"mosaic_thumb_gal_title_font_size\":16,\"mosaic_thumb_gal_title_font_style\":\"Ubuntu\",\"mosaic_thumb_gal_title_font_weight\":\"bold\",\"mosaic_thumb_gal_title_margin\":\"2px\",\"mosaic_thumb_gal_title_shadow\":\"\",\"mosaic_thumb_hover_effect\":\"rotate\",\"mosaic_thumb_hover_effect_value\":\"2deg\",\"mosaic_thumb_padding\":4,\"mosaic_thumb_title_font_color\":\"323A45\",\"mosaic_thumb_title_font_color_hover\":\"FFFFFF\",\"mosaic_thumb_title_font_size\":16,\"mosaic_thumb_title_font_style\":\"Ubuntu\",\"mosaic_thumb_title_font_weight\":\"bold\",\"mosaic_thumb_title_margin\":\"2px\",\"mosaic_thumb_title_shadow\":\"0px 0px 0px #888888\",\"mosaic_thumb_transition\":1,\"mosaic_thumb_transparent\":80,\"mosaic_thumbs_bg_color\":\"FFFFFF\",\"page_nav_align\":\"center\",\"page_nav_border_color\":\"E3E3E3\",\"page_nav_border_radius\":\"0\",\"page_nav_border_style\":\"none\",\"page_nav_border_width\":1,\"page_nav_box_shadow\":\"0\",\"page_nav_button_bg_color\":\"FCFCFC\",\"page_nav_button_bg_transparent\":100,\"page_nav_button_text\":0,\"page_nav_button_transition\":1,\"page_nav_font_color\":\"666666\",\"page_nav_font_size\":12,\"page_nav_font_style\":\"Ubuntu\",\"page_nav_font_weight\":\"bold\",\"page_nav_margin\":\"0\",\"page_nav_number\":0,\"page_nav_padding\":\"3px 6px\",\"page_nav_position\":\"bottom\",\"slideshow_close_btn_transparent\":100,\"slideshow_close_rl_btn_hover_color\":\"DBDBDB\",\"slideshow_cont_bg_color\":\"000000\",\"slideshow_description_background_color\":\"000000\",\"slideshow_description_border_radius\":\"0\",\"slideshow_description_color\":\"FFFFFF\",\"slideshow_description_font\":\"Ubuntu\",\"slideshow_description_font_size\":14,\"slideshow_description_opacity\":70,\"slideshow_description_padding\":\"5px 10px 5px 10px\",\"slideshow_dots_active_background_color\":\"292929\",\"slideshow_dots_active_border_color\":\"FFC933\",\"slideshow_dots_active_border_width\":2,\"slideshow_dots_background_color\":\"292929\",\"slideshow_dots_border_radius\":\"10px\",\"slideshow_dots_height\":10,\"slideshow_dots_margin\":1,\"slideshow_dots_width\":10,\"slideshow_filmstrip_pos\":\"bottom\",\"slideshow_filmstrip_rl_bg_color\":\"303030\",\"slideshow_filmstrip_rl_btn_color\":\"FFFFFF\",\"slideshow_filmstrip_rl_btn_size\":20,\"slideshow_filmstrip_thumb_active_border_color\":\"FFFFFF\",\"slideshow_filmstrip_thumb_active_border_width\":0,\"slideshow_filmstrip_thumb_border_color\":\"000000\",\"slideshow_filmstrip_thumb_border_radius\":\"0\",\"slideshow_filmstrip_thumb_border_style\":\"none\",\"slideshow_filmstrip_thumb_border_width\":1,\"slideshow_filmstrip_thumb_deactive_transparent\":80,\"slideshow_filmstrip_thumb_margin\":\"0 1px\",\"slideshow_play_pause_btn_size\":60,\"slideshow_rl_btn_bg_color\":\"000000\",\"slideshow_rl_btn_border_color\":\"FFFFFF\",\"slideshow_rl_btn_border_radius\":\"20px\",\"slideshow_rl_btn_border_style\":\"none\",\"slideshow_rl_btn_border_width\":0,\"slideshow_rl_btn_box_shadow\":\"\",\"slideshow_rl_btn_color\":\"FFFFFF\",\"slideshow_rl_btn_height\":40,\"slideshow_rl_btn_size\":20,\"slideshow_rl_btn_style\":\"bwg-icon-arrow\",\"slideshow_rl_btn_width\":40,\"slideshow_title_background_color\":\"000000\",\"slideshow_title_border_radius\":\"5px\",\"slideshow_title_color\":\"FFFFFF\",\"slideshow_title_font\":\"Ubuntu\",\"slideshow_title_font_size\":16,\"slideshow_title_opacity\":70,\"slideshow_title_padding\":\"5px 10px 5px 10px\",\"thumb_align\":\"center\",\"thumb_bg_color\":\"000000\",\"thumb_bg_transparent\":0,\"thumb_border_color\":\"FFFFFF\",\"thumb_border_radius\":\"0\",\"thumb_border_style\":\"none\",\"thumb_border_width\":5,\"thumb_box_shadow\":\"\",\"thumb_gal_title_align\":\"center\",\"thumb_gal_title_font_color\":\"323A45\",\"thumb_gal_title_font_size\":18,\"thumb_gal_title_font_style\":\"Ubuntu\",\"thumb_gal_title_font_weight\":\"bold\",\"thumb_gal_title_margin\":\"2px\",\"thumb_gal_title_shadow\":\"\",\"thumb_hover_effect\":\"zoom\",\"thumb_hover_effect_value\":\"1.08\",\"thumb_margin\":\"4\",\"thumb_padding\":\"0\",\"thumb_title_font_color\":\"323A45\",\"thumb_title_font_color_hover\":\"FFFFFF\",\"thumb_title_font_size\":16,\"thumb_title_font_style\":\"Ubuntu\",\"thumb_title_font_weight\":\"bold\",\"thumb_title_margin\":\"5px\",\"thumb_title_pos\":\"bottom\",\"thumb_title_shadow\":\"\",\"thumb_transition\":1,\"thumb_transparent\":100,\"thumbs_bg_color\":\"FFFFFF\"}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-11-21 08:41:00', '2019-11-21 08:41:00', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 1, 'admin', 'itw.abhisheks@gmail.com', '', '192.168.1.180', '2019-11-25 05:12:19', '2019-11-25 05:12:19', 'Hello There', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', '', 0, 1),
(3, 200, 'Abhi', 'abcd@gmail.com', 'http://abcd.com', '192.168.1.180', '2019-11-25 05:37:10', '2019-11-25 05:37:10', 'Testing Comment for new Author', 0, '1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:70.0) Gecko/20100101 Firefox/70.0', '', 0, 0),
(4, 200, 'admin', 'itw.abhisheks@gmail.com', '', '192.168.1.180', '2019-11-25 08:51:17', '2019-11-25 08:51:17', 'Testing comment for admin', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', '', 0, 1),
(5, 1, 'Abhishek Sharma', 'abhi@gmail.com', 'http://abc.com', '192.168.1.180', '2019-11-25 09:12:52', '2019-11-25 09:12:52', 'Author Comment check', 0, '1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:70.0) Gecko/20100101 Firefox/70.0', '', 0, 2),
(6, 1, 'admin', 'itw.abhisheks@gmail.com', '', '192.168.1.180', '2019-11-25 12:44:04', '2019-11-25 12:44:04', 'Reply Author check', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', '', 5, 1),
(7, 200, 'admin', 'itw.abhisheks@gmail.com', '', '::1', '2019-12-13 17:45:28', '2019-12-13 17:45:28', 'oijiojiojo', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_image_storage`
--

CREATE TABLE `wp_nextend2_image_storage` (
  `id` int(11) NOT NULL,
  `hash` varchar(32) NOT NULL,
  `image` text NOT NULL,
  `value` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_nextend2_image_storage`
--

INSERT INTO `wp_nextend2_image_storage` (`id`, `hash`, `image`, `value`) VALUES
(1, '7148fa26ad6dd9ee953b6c3f5f30c99d', 'https://smartslider3.com/sample/programmer.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(2, '6681af77aa8c9f342a3f8a98939dca43', 'https://smartslider3.com/sample/free1.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(3, '2ebcc61fcb32c829e4927fbfd782ff7a', 'https://smartslider3.com/sample/photographer.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(4, '612063f4202bf496302a23323708c8f9', '$upload$/2019/11/image-1-1.png', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ==');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_section_storage`
--

CREATE TABLE `wp_nextend2_section_storage` (
  `id` int(11) NOT NULL,
  `application` varchar(20) NOT NULL,
  `section` varchar(128) NOT NULL,
  `referencekey` varchar(128) NOT NULL,
  `value` mediumtext NOT NULL,
  `system` int(11) NOT NULL DEFAULT 0,
  `editable` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_nextend2_section_storage`
--

INSERT INTO `wp_nextend2_section_storage` (`id`, `application`, `section`, `referencekey`, `value`, `system`, `editable`) VALUES
(10000, 'system', 'global', 'n2_ss3_version', '3.3.24r5418', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_smartslider3_generators`
--

CREATE TABLE `wp_nextend2_smartslider3_generators` (
  `id` int(11) NOT NULL,
  `group` varchar(254) NOT NULL,
  `type` varchar(254) NOT NULL,
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_smartslider3_sliders`
--

CREATE TABLE `wp_nextend2_smartslider3_sliders` (
  `id` int(11) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL,
  `params` mediumtext NOT NULL,
  `time` datetime NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_nextend2_smartslider3_sliders`
--

INSERT INTO `wp_nextend2_smartslider3_sliders` (`id`, `alias`, `title`, `type`, `params`, `time`, `thumbnail`, `ordering`) VALUES
(1, NULL, 'Sample Slider', 'simple', '{\"controlsScroll\":\"0\",\"controlsDrag\":\"1\",\"controlsTouch\":\"horizontal\",\"controlsKeyboard\":\"1\",\"thumbnail\":\"\",\"align\":\"normal\",\"backgroundMode\":\"fill\",\"animation\":\"horizontal\",\"animation-duration\":\"600\",\"animation-delay\":\"0\",\"animation-easing\":\"easeOutQuad\",\"animation-parallax-overlap\":\"0\",\"background-animation\":\"\",\"background-animation-speed\":\"normal\",\"animation-shifted-background-animation\":\"auto\",\"kenburns-animation\":\"50|*|50|*|\",\"kenburns-animation-speed\":\"default\",\"kenburns-animation-strength\":\"default\",\"carousel\":\"1\",\"background\":\"\",\"background-fixed\":\"0\",\"background-size\":\"cover\",\"backgroundVideoMp4\":\"\",\"backgroundVideoMuted\":\"1\",\"backgroundVideoLoop\":\"1\",\"backgroundVideoMode\":\"fill\",\"dynamic-height\":\"0\",\"loop-single-slide\":\"0\",\"padding\":\"0|*|0|*|0|*|0\",\"border-width\":\"0\",\"border-color\":\"3E3E3Eff\",\"border-radius\":\"0\",\"slider-preset\":\"\",\"slider-css\":\"\",\"slide-css\":\"\",\"width\":\"1200\",\"height\":\"600\",\"desktop-portrait-minimum-font-size\":\"1\",\"desktop-landscape\":\"0\",\"desktop-landscape-width\":\"1440\",\"desktop-landscape-height\":\"0\",\"desktop-landscape-minimum-font-size\":\"1\",\"fontsize\":\"16\",\"desktop\":\"1\",\"tablet\":\"1\",\"mobile\":\"1\",\"margin\":\"0|*|0|*|0|*|0\",\"tablet-portrait\":\"0\",\"tablet-portrait-width\":\"800\",\"tablet-portrait-height\":\"0\",\"tablet-portrait-minimum-font-size\":\"1\",\"tablet-landscape\":\"0\",\"tablet-landscape-width\":\"1024\",\"tablet-landscape-height\":\"0\",\"tablet-landscape-minimum-font-size\":\"1\",\"mobile-portrait\":\"0\",\"mobile-portrait-width\":\"440\",\"mobile-portrait-height\":\"0\",\"mobile-portrait-minimum-font-size\":\"1\",\"mobile-landscape\":\"0\",\"mobile-landscape-width\":\"740\",\"mobile-landscape-height\":\"0\",\"mobile-landscape-minimum-font-size\":\"1\",\"responsive-mode\":\"auto\",\"responsiveScaleDown\":\"1\",\"responsiveScaleUp\":\"1\",\"responsiveSliderHeightMin\":\"0\",\"responsiveSliderHeightMax\":\"3000\",\"responsiveSlideWidthMax\":\"3000\",\"autoplay\":\"1\",\"autoplayDuration\":\"8000\",\"autoplayStart\":\"1\",\"autoplayfinish\":\"0|*|loop|*|current\",\"autoplayAllowReStart\":\"0\",\"autoplayStopClick\":\"1\",\"autoplayStopMouse\":\"0\",\"autoplayStopMedia\":\"1\",\"autoplayResumeClick\":\"0\",\"autoplayResumeMouse\":\"0\",\"autoplayResumeMedia\":\"1\",\"playfirstlayer\":\"1\",\"playonce\":\"0\",\"layer-animation-play-in\":\"end\",\"layer-animation-play-mode\":\"skippable\",\"parallax-enabled\":\"1\",\"parallax-enabled-mobile\":\"0\",\"parallax-3d\":\"0\",\"parallax-animate\":\"1\",\"parallax-horizontal\":\"mouse\",\"parallax-vertical\":\"mouse\",\"parallax-mouse-origin\":\"slider\",\"parallax-scroll-move\":\"both\",\"perspective\":\"1000\",\"imageload\":\"0\",\"imageloadNeighborSlides\":\"0\",\"optimize\":\"0\",\"optimize-quality\":\"70\",\"optimize-background-image-custom\":\"0\",\"optimize-background-image-width\":\"800\",\"optimize-background-image-height\":\"600\",\"optimizeThumbnailWidth\":\"100\",\"optimizeThumbnailHeight\":\"60\",\"layer-image-optimize\":\"0\",\"layer-image-tablet\":\"50\",\"layer-image-mobile\":\"30\",\"layer-image-base64\":\"0\",\"layer-image-base64-size\":\"5\",\"playWhenVisible\":\"1\",\"fadeOnLoad\":\"1\",\"fadeOnScroll\":\"0\",\"spinner\":\"simpleWhite\",\"custom-spinner\":\"\",\"custom-spinner-width\":\"100\",\"custom-spinner-height\":\"100\",\"custom-display\":\"1\",\"dependency\":\"\",\"delay\":\"0\",\"is-delayed\":\"0\",\"randomize\":\"0\",\"randomizeFirst\":\"0\",\"randomize-cache\":\"1\",\"variations\":\"5\",\"maximumslidecount\":\"1000\",\"global-lightbox\":\"0\",\"global-lightbox-label\":\"0\",\"maintain-session\":\"0\",\"blockrightclick\":\"0\",\"overflow-hidden-page\":\"0\",\"bg-parallax-tablet\":\"1\",\"bg-parallax-mobile\":\"1\",\"callbacks\":\"\",\"widgetarrow\":\"imageEmpty\",\"widget-arrow-display-desktop\":\"1\",\"widget-arrow-display-tablet\":\"1\",\"widget-arrow-display-mobile\":\"1\",\"widget-arrow-exclude-slides\":\"\",\"widget-arrow-display-hover\":\"0\",\"widget-arrow-responsive-desktop\":\"1\",\"widget-arrow-responsive-tablet\":\"0.7\",\"widget-arrow-responsive-mobile\":\"0.5\",\"widget-arrow-previous-image\":\"\",\"widget-arrow-previous\":\"$ss$/plugins/widgetarrow/image/image/previous/thin-horizontal.svg\",\"widget-arrow-previous-color\":\"ffffffcc\",\"widget-arrow-previous-hover\":\"0\",\"widget-arrow-previous-hover-color\":\"ffffffcc\",\"widget-arrow-style\":\"\",\"widget-arrow-previous-position-mode\":\"simple\",\"widget-arrow-previous-position-area\":\"6\",\"widget-arrow-previous-position-stack\":\"1\",\"widget-arrow-previous-position-offset\":\"15\",\"widget-arrow-previous-position-horizontal\":\"left\",\"widget-arrow-previous-position-horizontal-position\":\"0\",\"widget-arrow-previous-position-horizontal-unit\":\"px\",\"widget-arrow-previous-position-vertical\":\"top\",\"widget-arrow-previous-position-vertical-position\":\"0\",\"widget-arrow-previous-position-vertical-unit\":\"px\",\"widget-arrow-next-position-mode\":\"simple\",\"widget-arrow-next-position-area\":\"7\",\"widget-arrow-next-position-stack\":\"1\",\"widget-arrow-next-position-offset\":\"15\",\"widget-arrow-next-position-horizontal\":\"left\",\"widget-arrow-next-position-horizontal-position\":\"0\",\"widget-arrow-next-position-horizontal-unit\":\"px\",\"widget-arrow-next-position-vertical\":\"top\",\"widget-arrow-next-position-vertical-position\":\"0\",\"widget-arrow-next-position-vertical-unit\":\"px\",\"widget-arrow-animation\":\"fade\",\"widget-arrow-mirror\":\"1\",\"widget-arrow-next-image\":\"\",\"widget-arrow-next\":\"$ss$/plugins/widgetarrow/image/image/next/thin-horizontal.svg\",\"widget-arrow-next-color\":\"ffffffcc\",\"widget-arrow-next-hover\":\"0\",\"widget-arrow-next-hover-color\":\"ffffffcc\",\"widgetbullet\":\"transition\",\"widget-bullet-display-desktop\":\"1\",\"widget-bullet-display-tablet\":\"1\",\"widget-bullet-display-mobile\":\"1\",\"widget-bullet-exclude-slides\":\"\",\"widget-bullet-display-hover\":\"0\",\"widget-bullet-thumbnail-show-image\":\"1\",\"widget-bullet-thumbnail-width\":\"120\",\"widget-bullet-thumbnail-height\":\"81\",\"widget-bullet-thumbnail-style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwODAiLCJwYWRkaW5nIjoiM3wqfDN8KnwzfCp8M3wqfHB4IiwiYm94c2hhZG93IjoiMHwqfDB8KnwwfCp8MHwqfDAwMDAwMGZmIiwiYm9yZGVyIjoiMHwqfHNvbGlkfCp8MDAwMDAwZmYiLCJib3JkZXJyYWRpdXMiOiIzIiwiZXh0cmEiOiJtYXJnaW46IDVweDsifV19\",\"widget-bullet-thumbnail-side\":\"before\",\"widget-bullet-position-mode\":\"simple\",\"widget-bullet-position-area\":\"12\",\"widget-bullet-position-stack\":\"1\",\"widget-bullet-position-offset\":\"10\",\"widget-bullet-position-horizontal\":\"left\",\"widget-bullet-position-horizontal-position\":\"0\",\"widget-bullet-position-horizontal-unit\":\"px\",\"widget-bullet-position-vertical\":\"top\",\"widget-bullet-position-vertical-position\":\"0\",\"widget-bullet-position-vertical-unit\":\"px\",\"widget-bullet-action\":\"click\",\"widget-bullet-style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwYWIiLCJwYWRkaW5nIjoiNXwqfDV8Knw1fCp8NXwqfHB4IiwiYm94c2hhZG93IjoiMHwqfDB8KnwwfCp8MHwqfDAwMDAwMGZmIiwiYm9yZGVyIjoiMHwqfHNvbGlkfCp8MDAwMDAwZmYiLCJib3JkZXJyYWRpdXMiOiI1MCIsImV4dHJhIjoibWFyZ2luOiA0cHg7In0seyJleHRyYSI6IiIsImJhY2tncm91bmRjb2xvciI6IjA5YjQ3NGZmIn1dfQ==\",\"widget-bullet-bar\":\"\",\"widget-bullet-bar-full-size\":\"0\",\"widget-bullet-align\":\"center\",\"widget-bullet-orientation\":\"auto\",\"widget-bullet-overlay\":\"0\",\"widgetautoplay\":\"disabled\",\"widget-autoplay-display-desktop\":\"1\",\"widget-autoplay-display-tablet\":\"1\",\"widget-autoplay-display-mobile\":\"1\",\"widget-autoplay-exclude-slides\":\"\",\"widget-autoplay-display-hover\":\"0\",\"widgetindicator\":\"disabled\",\"widget-indicator-display-desktop\":\"1\",\"widget-indicator-display-tablet\":\"1\",\"widget-indicator-display-mobile\":\"1\",\"widget-indicator-exclude-slides\":\"\",\"widget-indicator-display-hover\":\"0\",\"widgetbar\":\"disabled\",\"widget-bar-display-desktop\":\"1\",\"widget-bar-display-tablet\":\"1\",\"widget-bar-display-mobile\":\"1\",\"widget-bar-exclude-slides\":\"\",\"widget-bar-display-hover\":\"0\",\"widgetthumbnail\":\"disabled\",\"widget-thumbnail-display-desktop\":\"1\",\"widget-thumbnail-display-tablet\":\"1\",\"widget-thumbnail-display-mobile\":\"1\",\"widget-thumbnail-exclude-slides\":\"\",\"widget-thumbnail-display-hover\":\"0\",\"widget-thumbnail-show-image\":\"1\",\"widget-thumbnail-width\":\"100\",\"widget-thumbnail-height\":\"60\",\"widgetshadow\":\"disabled\",\"widget-shadow-display-desktop\":\"1\",\"widget-shadow-display-tablet\":\"1\",\"widget-shadow-display-mobile\":\"1\",\"widget-shadow-exclude-slides\":\"\",\"widgetfullscreen\":\"disabled\",\"widget-fullscreen-display-desktop\":\"1\",\"widget-fullscreen-display-tablet\":\"1\",\"widget-fullscreen-display-mobile\":\"1\",\"widget-fullscreen-exclude-slides\":\"\",\"widget-fullscreen-display-hover\":\"0\",\"widgethtml\":\"disabled\",\"widget-html-display-desktop\":\"1\",\"widget-html-display-tablet\":\"1\",\"widget-html-display-mobile\":\"1\",\"widget-html-exclude-slides\":\"\",\"widget-html-display-hover\":\"0\",\"widgets\":\"arrow\"}', '2015-11-01 14:14:20', '', 0),
(2, NULL, 'Slider', 'simple', '{\"aria-label\":\"Slider\",\"alias-id\":\"\",\"alias-smoothscroll\":\"\",\"alias-slideswitch\":\"\",\"controlsTouch\":\"horizontal\",\"controlsScroll\":\"0\",\"controlsKeyboard\":\"1\",\"thumbnail\":\"\",\"align\":\"normal\",\"backgroundMode\":\"fill\",\"animation\":\"horizontal\",\"animation-duration\":\"800\",\"background-animation\":\"\",\"background-animation-color\":\"333333ff\",\"background-animation-speed\":\"normal\",\"width\":\"1200\",\"height\":\"500\",\"margin\":\"0|*|0|*|0|*|0\",\"responsive-mode\":\"fullwidth\",\"responsiveSliderHeightMin\":\"0\",\"responsiveSliderHeightMax\":\"3000\",\"responsiveForceFull\":\"1\",\"responsiveForceFullOverflowX\":\"body\",\"responsiveForceFullHorizontalSelector\":\"body\",\"responsiveSliderOrientation\":\"width_and_height\",\"responsiveSlideWidth\":\"1\",\"responsiveSlideWidthMax\":\"3000\",\"responsiveSlideWidthDesktopLandscape\":\"0\",\"responsiveSlideWidthMaxDesktopLandscape\":\"1600\",\"responsiveSlideWidthTablet\":\"0\",\"responsiveSlideWidthMaxTablet\":\"3000\",\"responsiveSlideWidthTabletLandscape\":\"0\",\"responsiveSlideWidthMaxTabletLandscape\":\"1200\",\"responsiveSlideWidthMobile\":\"0\",\"responsiveSlideWidthMaxMobile\":\"480\",\"responsiveSlideWidthMobileLandscape\":\"0\",\"responsiveSlideWidthMaxMobileLandscape\":\"740\",\"responsiveSlideWidthConstrainHeight\":\"0\",\"autoplay\":\"0\",\"autoplayDuration\":\"8000\",\"autoplayStopClick\":\"1\",\"autoplayStopMouse\":\"0\",\"autoplayStopMedia\":\"1\",\"optimize\":\"0\",\"optimize-quality\":\"70\",\"optimize-background-image-custom\":\"0\",\"optimize-background-image-width\":\"800\",\"optimize-background-image-height\":\"600\",\"optimizeThumbnailWidth\":\"100\",\"optimizeThumbnailHeight\":\"60\",\"playWhenVisible\":\"1\",\"playWhenVisibleAt\":\"50\",\"dependency\":\"\",\"delay\":\"0\",\"is-delayed\":\"0\",\"overflow-hidden-page\":\"0\",\"clear-both\":\"0\",\"clear-both-after\":\"1\",\"media-query-hide-slider\":\"0\",\"media-query-under-over\":\"max-width\",\"media-query-width\":\"640\",\"responsiveFocusUser\":\"1\",\"custom-css-codes\":\"\",\"callbacks\":\"\",\"classes\":\"\",\"related-posts\":\"\",\"widgetarrow\":\"imageEmpty\",\"widget-arrow-display-hover\":\"0\",\"widget-arrow-previous\":\"$ss$\\/plugins\\/widgetarrow\\/image\\/image\\/previous\\/thin-horizontal.svg\",\"widget-arrow-previous-color\":\"ffffffcc\",\"widget-arrow-previous-hover\":\"0\",\"widget-arrow-previous-hover-color\":\"ffffffcc\",\"widget-arrow-style\":\"\",\"widget-arrow-previous-position-mode\":\"simple\",\"widget-arrow-previous-position-area\":\"6\",\"widget-arrow-previous-position-stack\":\"1\",\"widget-arrow-previous-position-offset\":\"15\",\"widget-arrow-previous-position-horizontal\":\"left\",\"widget-arrow-previous-position-horizontal-position\":\"0\",\"widget-arrow-previous-position-horizontal-unit\":\"px\",\"widget-arrow-previous-position-vertical\":\"top\",\"widget-arrow-previous-position-vertical-position\":\"0\",\"widget-arrow-previous-position-vertical-unit\":\"px\",\"widget-arrow-next-position-mode\":\"simple\",\"widget-arrow-next-position-area\":\"7\",\"widget-arrow-next-position-stack\":\"1\",\"widget-arrow-next-position-offset\":\"15\",\"widget-arrow-next-position-horizontal\":\"left\",\"widget-arrow-next-position-horizontal-position\":\"0\",\"widget-arrow-next-position-horizontal-unit\":\"px\",\"widget-arrow-next-position-vertical\":\"top\",\"widget-arrow-next-position-vertical-position\":\"0\",\"widget-arrow-next-position-vertical-unit\":\"px\",\"widget-arrow-previous-alt\":\"previous arrow\",\"widget-arrow-next-alt\":\"next arrow\",\"widget-arrow-base64\":\"1\",\"widgetbullet\":\"disabled\",\"widget-bullet-display-hover\":\"0\",\"widget-bullet-thumbnail-show-image\":\"0\",\"widget-bullet-thumbnail-width\":\"100\",\"widget-bullet-thumbnail-height\":\"60\",\"widget-bullet-thumbnail-style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwODAiLCJwYWRkaW5nIjoiM3wqfDN8KnwzfCp8M3wqfHB4IiwiYm94c2hhZG93IjoiMHwqfDB8KnwwfCp8MHwqfDAwMDAwMGZmIiwiYm9yZGVyIjoiMHwqfHNvbGlkfCp8MDAwMDAwZmYiLCJib3JkZXJyYWRpdXMiOiIzIiwiZXh0cmEiOiJtYXJnaW46IDVweDtiYWNrZ3JvdW5kLXNpemU6Y292ZXI7In1dfQ==\",\"widget-bullet-thumbnail-side\":\"before\",\"widgetautoplay\":\"disabled\",\"widget-autoplay-display-hover\":\"0\",\"widgetbar\":\"disabled\",\"widget-bar-display-hover\":\"0\",\"widgetthumbnail\":\"disabled\",\"widget-thumbnail-display-hover\":\"0\",\"widget-thumbnail-width\":\"100\",\"widget-thumbnail-height\":\"60\",\"widgetshadow\":\"disabled\",\"widgets\":\"arrow\"}', '2019-11-21 17:30:29', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_smartslider3_sliders_xref`
--

CREATE TABLE `wp_nextend2_smartslider3_sliders_xref` (
  `group_id` int(11) NOT NULL,
  `slider_id` int(11) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_nextend2_smartslider3_sliders_xref`
--

INSERT INTO `wp_nextend2_smartslider3_sliders_xref` (`group_id`, `slider_id`, `ordering`) VALUES
(0, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_smartslider3_slides`
--

CREATE TABLE `wp_nextend2_smartslider3_slides` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `slider` int(11) NOT NULL,
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `published` tinyint(1) NOT NULL,
  `first` int(11) NOT NULL,
  `slide` longtext DEFAULT NULL,
  `description` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `generator_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_nextend2_smartslider3_slides`
--

INSERT INTO `wp_nextend2_smartslider3_slides` (`id`, `title`, `slider`, `publish_up`, `publish_down`, `published`, `first`, `slide`, `description`, `thumbnail`, `params`, `ordering`, `generator_id`) VALUES
(1, 'Slide One', 1, '2015-11-01 12:27:34', '2025-11-11 12:27:34', 1, 0, '[{\"type\":\"content\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"10|*|10|*|10|*|10|*|px+\",\"desktopportraitselfalign\":\"inherit\",\"mobileportraitfontsize\":60,\"opened\":1,\"id\":null,\"class\":\"\",\"crop\":\"\",\"parallax\":0,\"adaptivefont\":1,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Content\",\"namesynced\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"layers\":[{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"10|*|0|*|10|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Martin Dwyer\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Martin Dwyer\",\"href\":\"#\",\"href-target\":\"_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"0\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6IjBiMGIwYmZmIiwic2l6ZSI6IjM2fHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxLjUiLCJib2xkIjowLCJpdGFsaWMiOjAsInVuZGVybGluZSI6MCwiYWxpZ24iOiJjZW50ZXIiLCJsZXR0ZXJzcGFjaW5nIjoiMTBweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6InVwcGVyY2FzZSJ9LHsiZXh0cmEiOiIifSx7ImV4dHJhIjoiIn1dfQ==\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJiYWNrZ3JvdW5kY29sb3IiOiJmZmZmZmZjYyIsIm9wYWNpdHkiOjEwMCwicGFkZGluZyI6IjAuNHwqfDF8KnwwLjR8KnwxfCp8ZW0iLCJib3hzaGFkb3ciOiIwfCp8MHwqfDB8KnwwfCp8MDAwMDAwZmYiLCJib3JkZXIiOiIwfCp8c29saWR8KnwwMDAwMDBmZiIsImJvcmRlcnJhZGl1cyI6IjAifSx7ImV4dHJhIjoiIn1dfQ==\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}},{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Application Developer\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Application Developer\",\"href\":\"#\",\"href-target\":\"_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"1\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6ImZmZmZmZmZmIiwic2l6ZSI6IjIyfHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxIiwiYm9sZCI6MCwiaXRhbGljIjowLCJ1bmRlcmxpbmUiOjAsImFsaWduIjoiY2VudGVyIiwibGV0dGVyc3BhY2luZyI6IjJweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6Im5vbmUifSx7ImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwY2MiLCJwYWRkaW5nIjoiMC44fCp8MXwqfDAuOHwqfDF8KnxlbSIsImJveHNoYWRvdyI6IjB8KnwwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImJvcmRlciI6IjB8Knxzb2xpZHwqfDAwMDAwMGZmIiwiYm9yZGVycmFkaXVzIjoiMCIsImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}}]}]', '', 'https://smartslider3.com/sample/developerthumbnail.jpg', '{\"background-type\":\"image\",\"backgroundVideoMp4\":\"\",\"backgroundVideoMuted\":\"1\",\"backgroundVideoLoop\":\"1\",\"preload\":\"auto\",\"backgroundVideoMode\":\"fill\",\"backgroundImage\":\"https://smartslider3.com/sample/programmer.jpg\",\"backgroundFocusX\":\"50\",\"backgroundFocusY\":\"50\",\"backgroundImageOpacity\":\"100\",\"backgroundImageBlur\":\"0\",\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundMode\":\"default\",\"background-animation\":\"\",\"background-animation-speed\":\"default\",\"kenburns-animation\":\"50|*|50|*|\",\"kenburns-animation-speed\":\"default\",\"kenburns-animation-strength\":\"default\",\"thumbnailType\":\"default\",\"href\":\"#\",\"href-target\":\"_self\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"first\":\"0\",\"static-slide\":\"0\",\"slide-duration\":\"0\",\"version\":\"3.2.0\"}', 0, 0),
(2, 'Slide Two', 1, '2015-11-01 12:27:34', '2025-11-11 12:27:34', 1, 0, '[{\"type\":\"content\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"10|*|10|*|10|*|10|*|px+\",\"desktopportraitselfalign\":\"inherit\",\"mobileportraitfontsize\":60,\"opened\":1,\"id\":null,\"class\":\"\",\"crop\":\"\",\"parallax\":0,\"adaptivefont\":1,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Content\",\"namesynced\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"layers\":[{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"10|*|0|*|10|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Rachel Wright\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Rachel Wright\",\"href\":\"#\",\"href-target\":\"_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"0\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6IjBiMGIwYmZmIiwic2l6ZSI6IjM2fHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxLjUiLCJib2xkIjowLCJpdGFsaWMiOjAsInVuZGVybGluZSI6MCwiYWxpZ24iOiJjZW50ZXIiLCJsZXR0ZXJzcGFjaW5nIjoiMTBweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6InVwcGVyY2FzZSJ9LHsiZXh0cmEiOiIifSx7ImV4dHJhIjoiIn1dfQ==\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJiYWNrZ3JvdW5kY29sb3IiOiJmZmZmZmZjYyIsIm9wYWNpdHkiOjEwMCwicGFkZGluZyI6IjAuNHwqfDF8KnwwLjR8KnwxfCp8ZW0iLCJib3hzaGFkb3ciOiIwfCp8MHwqfDB8KnwwfCp8MDAwMDAwZmYiLCJib3JkZXIiOiIwfCp8c29saWR8KnwwMDAwMDBmZiIsImJvcmRlcnJhZGl1cyI6IjAifSx7ImV4dHJhIjoiIn1dfQ==\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}},{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Art Director & Photographer\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Art Director & Photographer\",\"href\":\"#\",\"href-target\":\"_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"1\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6ImZmZmZmZmZmIiwic2l6ZSI6IjIyfHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxIiwiYm9sZCI6MCwiaXRhbGljIjowLCJ1bmRlcmxpbmUiOjAsImFsaWduIjoiY2VudGVyIiwibGV0dGVyc3BhY2luZyI6IjJweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6Im5vbmUifSx7ImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwY2MiLCJwYWRkaW5nIjoiMC44fCp8MXwqfDAuOHwqfDF8KnxlbSIsImJveHNoYWRvdyI6IjB8KnwwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImJvcmRlciI6IjB8Knxzb2xpZHwqfDAwMDAwMGZmIiwiYm9yZGVycmFkaXVzIjoiMCIsImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}}]}]', '', 'https://smartslider3.com/sample/artdirectorthumbnail.jpg', '{\"background-type\":\"image\",\"backgroundVideoMp4\":\"\",\"backgroundVideoMuted\":\"1\",\"backgroundVideoLoop\":\"1\",\"preload\":\"auto\",\"backgroundVideoMode\":\"fill\",\"backgroundImage\":\"https://smartslider3.com/sample/free1.jpg\",\"backgroundFocusX\":\"50\",\"backgroundFocusY\":\"50\",\"backgroundImageOpacity\":\"100\",\"backgroundImageBlur\":\"0\",\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundMode\":\"default\",\"background-animation\":\"\",\"background-animation-speed\":\"default\",\"kenburns-animation\":\"50|*|50|*|\",\"kenburns-animation-speed\":\"default\",\"kenburns-animation-strength\":\"default\",\"thumbnailType\":\"default\",\"href\":\"#\",\"href-target\":\"_self\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"first\":\"0\",\"static-slide\":\"0\",\"slide-duration\":\"0\",\"version\":\"3.2.0\"}', 1, 0),
(3, 'Slide Three', 1, '2015-11-01 12:27:34', '2025-11-11 12:27:34', 1, 0, '[{\"type\":\"content\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"10|*|10|*|10|*|10|*|px+\",\"desktopportraitselfalign\":\"inherit\",\"mobileportraitfontsize\":60,\"opened\":1,\"id\":null,\"class\":\"\",\"crop\":\"\",\"parallax\":0,\"adaptivefont\":1,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Content\",\"namesynced\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"layers\":[{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"10|*|0|*|10|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Andrew Butler\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Andrew Butler\",\"href\":\"#\",\"href-target\":\"_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"0\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6IjBiMGIwYmZmIiwic2l6ZSI6IjM2fHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxLjUiLCJib2xkIjowLCJpdGFsaWMiOjAsInVuZGVybGluZSI6MCwiYWxpZ24iOiJjZW50ZXIiLCJsZXR0ZXJzcGFjaW5nIjoiMTBweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6InVwcGVyY2FzZSJ9LHsiZXh0cmEiOiIifSx7ImV4dHJhIjoiIn1dfQ==\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJiYWNrZ3JvdW5kY29sb3IiOiJmZmZmZmZjYyIsIm9wYWNpdHkiOjEwMCwicGFkZGluZyI6IjAuNHwqfDF8KnwwLjR8KnwxfCp8ZW0iLCJib3hzaGFkb3ciOiIwfCp8MHwqfDB8KnwwfCp8MDAwMDAwZmYiLCJib3JkZXIiOiIwfCp8c29saWR8KnwwMDAwMDBmZiIsImJvcmRlcnJhZGl1cyI6IjAifSx7ImV4dHJhIjoiIn1dfQ==\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}},{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Photographer & Illustrator\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Photographer & Illustrator\",\"href\":\"#\",\"href-target\":\"_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"0\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6ImZmZmZmZmZmIiwic2l6ZSI6IjIyfHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxIiwiYm9sZCI6MCwiaXRhbGljIjowLCJ1bmRlcmxpbmUiOjAsImFsaWduIjoiY2VudGVyIiwibGV0dGVyc3BhY2luZyI6IjJweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6Im5vbmUifSx7ImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwY2MiLCJwYWRkaW5nIjoiMC44fCp8MXwqfDAuOHwqfDF8KnxlbSIsImJveHNoYWRvdyI6IjB8KnwwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImJvcmRlciI6IjB8Knxzb2xpZHwqfDAwMDAwMGZmIiwiYm9yZGVycmFkaXVzIjoiMCIsImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}}]}]', '', 'https://smartslider3.com/sample/photographerthumbnail.jpg', '{\"background-type\":\"image\",\"backgroundVideoMp4\":\"\",\"backgroundVideoMuted\":\"1\",\"backgroundVideoLoop\":\"1\",\"preload\":\"auto\",\"backgroundVideoMode\":\"fill\",\"backgroundImage\":\"https://smartslider3.com/sample/photographer.jpg\",\"backgroundFocusX\":\"50\",\"backgroundFocusY\":\"50\",\"backgroundImageOpacity\":\"100\",\"backgroundImageBlur\":\"0\",\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundMode\":\"default\",\"background-animation\":\"\",\"background-animation-speed\":\"default\",\"kenburns-animation\":\"50|*|50|*|\",\"kenburns-animation-speed\":\"default\",\"kenburns-animation-strength\":\"default\",\"thumbnailType\":\"default\",\"href\":\"#\",\"href-target\":\"_self\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"first\":\"0\",\"static-slide\":\"0\",\"slide-duration\":\"0\",\"version\":\"3.2.0\"}', 2, 0),
(4, 'image-1', 2, '2019-11-20 17:30:54', '2029-11-21 17:30:54', 1, 0, '[]', '', '$upload$/2019/11/image-1-1.png', '{\"backgroundImage\":\"$upload$\\/2019\\/11\\/image-1-1.png\",\"version\":\"3.3.24\"}', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://designflytheme.000webhostapp.com/wordpress', 'yes'),
(2, 'home', 'https://designflytheme.000webhostapp.com/wordpress', 'yes'),
(3, 'blogname', 'DesignFly', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'guptapratik12121996@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '1', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '2', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/archives/%post_id%', 'yes'),
(29, 'rewrite_rules', 'a:142:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:16:\"archives/book/?$\";s:24:\"index.php?post_type=book\";s:46:\"archives/book/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=book&feed=$matches[1]\";s:41:\"archives/book/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=book&feed=$matches[1]\";s:33:\"archives/book/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=book&paged=$matches[1]\";s:21:\"archives/portfolio/?$\";s:29:\"index.php?post_type=portfolio\";s:51:\"archives/portfolio/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=portfolio&feed=$matches[1]\";s:46:\"archives/portfolio/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=portfolio&feed=$matches[1]\";s:38:\"archives/portfolio/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=portfolio&paged=$matches[1]\";s:56:\"archives/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:51:\"archives/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:32:\"archives/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:44:\"archives/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:26:\"archives/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:53:\"archives/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:48:\"archives/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:29:\"archives/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:41:\"archives/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:23:\"archives/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:54:\"archives/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:49:\"archives/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:30:\"archives/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:42:\"archives/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:24:\"archives/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:60:\"archives/categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?portfolios=$matches[1]&feed=$matches[2]\";s:55:\"archives/categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?portfolios=$matches[1]&feed=$matches[2]\";s:36:\"archives/categories/([^/]+)/embed/?$\";s:43:\"index.php?portfolios=$matches[1]&embed=true\";s:48:\"archives/categories/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?portfolios=$matches[1]&paged=$matches[2]\";s:30:\"archives/categories/([^/]+)/?$\";s:32:\"index.php?portfolios=$matches[1]\";s:41:\"archives/book/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"archives/book/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"archives/book/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"archives/book/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"archives/book/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"archives/book/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"archives/book/([^/]+)/embed/?$\";s:37:\"index.php?book=$matches[1]&embed=true\";s:34:\"archives/book/([^/]+)/trackback/?$\";s:31:\"index.php?book=$matches[1]&tb=1\";s:54:\"archives/book/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?book=$matches[1]&feed=$matches[2]\";s:49:\"archives/book/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?book=$matches[1]&feed=$matches[2]\";s:42:\"archives/book/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?book=$matches[1]&paged=$matches[2]\";s:49:\"archives/book/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?book=$matches[1]&cpage=$matches[2]\";s:38:\"archives/book/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?book=$matches[1]&page=$matches[2]\";s:30:\"archives/book/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"archives/book/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"archives/book/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"archives/book/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"archives/book/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"archives/book/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"archives/book_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?book_category=$matches[1]&feed=$matches[2]\";s:58:\"archives/book_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?book_category=$matches[1]&feed=$matches[2]\";s:39:\"archives/book_category/([^/]+)/embed/?$\";s:46:\"index.php?book_category=$matches[1]&embed=true\";s:51:\"archives/book_category/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?book_category=$matches[1]&paged=$matches[2]\";s:33:\"archives/book_category/([^/]+)/?$\";s:35:\"index.php?book_category=$matches[1]\";s:58:\"archives/book_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?book_tag=$matches[1]&feed=$matches[2]\";s:53:\"archives/book_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?book_tag=$matches[1]&feed=$matches[2]\";s:34:\"archives/book_tag/([^/]+)/embed/?$\";s:41:\"index.php?book_tag=$matches[1]&embed=true\";s:46:\"archives/book_tag/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?book_tag=$matches[1]&paged=$matches[2]\";s:28:\"archives/book_tag/([^/]+)/?$\";s:30:\"index.php?book_tag=$matches[1]\";s:44:\"archives/portfolio/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"archives/portfolio/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"archives/portfolio/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"archives/portfolio/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"archives/portfolio/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"archives/portfolio/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"archives/portfolio/(.+?)/embed/?$\";s:42:\"index.php?portfolio=$matches[1]&embed=true\";s:37:\"archives/portfolio/(.+?)/trackback/?$\";s:36:\"index.php?portfolio=$matches[1]&tb=1\";s:57:\"archives/portfolio/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?portfolio=$matches[1]&feed=$matches[2]\";s:52:\"archives/portfolio/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?portfolio=$matches[1]&feed=$matches[2]\";s:45:\"archives/portfolio/(.+?)/page/?([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&paged=$matches[2]\";s:52:\"archives/portfolio/(.+?)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&cpage=$matches[2]\";s:41:\"archives/portfolio/(.+?)(?:/([0-9]+))?/?$\";s:48:\"index.php?portfolio=$matches[1]&page=$matches[2]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=24&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:56:\"archives/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:51:\"archives/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:32:\"archives/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:44:\"archives/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:26:\"archives/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:83:\"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:78:\"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:59:\"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:71:\"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:53:\"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:70:\"archives/date/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:65:\"archives/date/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:46:\"archives/date/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:58:\"archives/date/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:40:\"archives/date/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:57:\"archives/date/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:52:\"archives/date/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:33:\"archives/date/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:45:\"archives/date/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:27:\"archives/date/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:37:\"archives/[0-9]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"archives/[0-9]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"archives/[0-9]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"archives/[0-9]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"archives/[0-9]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"archives/[0-9]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"archives/([0-9]+)/embed/?$\";s:34:\"index.php?p=$matches[1]&embed=true\";s:30:\"archives/([0-9]+)/trackback/?$\";s:28:\"index.php?p=$matches[1]&tb=1\";s:50:\"archives/([0-9]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?p=$matches[1]&feed=$matches[2]\";s:45:\"archives/([0-9]+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?p=$matches[1]&feed=$matches[2]\";s:38:\"archives/([0-9]+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?p=$matches[1]&paged=$matches[2]\";s:45:\"archives/([0-9]+)/comment-page-([0-9]{1,})/?$\";s:41:\"index.php?p=$matches[1]&cpage=$matches[2]\";s:34:\"archives/([0-9]+)(?:/([0-9]+))?/?$\";s:40:\"index.php?p=$matches[1]&page=$matches[2]\";s:26:\"archives/[0-9]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"archives/[0-9]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"archives/[0-9]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"archives/[0-9]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"archives/[0-9]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"archives/[0-9]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:2;s:19:\"wp-book/wp-book.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:64:\"/var/www/designfly/wp-content/themes/designflytheme/css/demo.css\";i:1;s:66:\"/var/www/designfly/wp-content/themes/designflytheme/css/banner.css\";i:2;s:61:\"/var/www/designfly/wp-content/themes/designflytheme/style.css\";i:3;s:65:\"/var/www/designfly/wp-content/themes/designflytheme/functions.php\";i:4;s:70:\"/var/www/designfly/wp-content/themes/designflytheme/page-portfolio.php\";}', 'no'),
(40, 'template', 'designfly', 'yes'),
(41, 'stylesheet', 'designfly', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:3;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:3:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:10:\"Contact us\";s:4:\"text\";s:152:\"Street 21 Planet, A-11, dapibus tristique, 123 551\r\nTel: 123 4567890; Fax: 123 456789\r\nEmail: <a class=\"footer-link\" href=\"#\">contactus@dsignfly.com</a>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '24', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1589877645', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:69:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:7:\"nextend\";b:1;s:14:\"nextend_config\";b:1;s:19:\"nextend_visual_edit\";b:1;s:21:\"nextend_visual_delete\";b:1;s:11:\"smartslider\";b:1;s:18:\"smartslider_config\";b:1;s:16:\"smartslider_edit\";b:1;s:18:\"smartslider_delete\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:42:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:7:\"nextend\";b:1;s:14:\"nextend_config\";b:1;s:19:\"nextend_visual_edit\";b:1;s:21:\"nextend_visual_delete\";b:1;s:11:\"smartslider\";b:1;s:18:\"smartslider_config\";b:1;s:16:\"smartslider_edit\";b:1;s:18:\"smartslider_delete\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;s:9:\"show_date\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:3:{i:4;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}i:5;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:3;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:15:\"media_gallery-2\";i:1;s:10:\"archives-4\";i:2;s:15:\"book_category-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:14:\"recent-posts-2\";i:1;s:17:\"recent-comments-2\";i:2;s:10:\"archives-5\";}s:9:\"sidebar-3\";a:2:{i:0;s:12:\"categories-3\";i:1;s:6:\"meta-3\";}s:16:\"footer-sidebar-1\";a:1:{i:0;s:13:\"custom_html-2\";}s:16:\"footer-sidebar-2\";a:2:{i:0;s:6:\"text-2\";i:1;s:13:\"custom_html-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:6:{i:1577864463;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1577868062;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1577868063;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1577868096;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1577870530;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:2:{i:2;a:6:{s:5:\"title\";s:9:\"Portfolio\";s:3:\"ids\";a:4:{i:0;i:253;i:1;i:252;i:2;i:251;i:3;i:250;}s:7:\"columns\";i:3;s:4:\"size\";s:9:\"thumbnail\";s:9:\"link_type\";s:4:\"post\";s:14:\"orderby_random\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'nonce_key', 'jT--mH_g.bjN:*1FJliLxbLqMBpy}$,=0B&M`j023(4:)%G`?6 NHvD{^SxVNtyh', 'no'),
(111, 'nonce_salt', 'RK%yj5sMgznNd<_!?u:Q$JSk8fX?^}7Fh:QS`8}0D3U!{9ZF.O<9A-Tkll0)0ZDx', 'no'),
(112, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_custom_html', 'a:3:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:716:\"<div class=\"footer-container-item\">\r\n                <p class=\"para heading\">Welcome to D\'SIGNfly</p>\r\n                <p class=\"para content\">Lorem ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,\r\n                    sunt\r\n                    in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n                <a class=\"footer-link\" href=\"#\">Read More</a>\r\n            </div>\";}i:3;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:943:\"<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n<style>\r\n	.fa {\r\n		padding: 10px;\r\n		font-size: 20px;\r\n		width: 20px;\r\n		text-align: center;\r\n		text-decoration: none;\r\n		margin: 5px 2px;\r\n		border-radius: 50%;\r\n	}\r\n	.fa-facebook {\r\n  background: #3B5998;\r\n  color: white;\r\n}\r\n\r\n.fa-twitter {\r\n  background: #55ACEE;\r\n  color: white;\r\n}\r\n\r\n.fa-google {\r\n  background: #dd4b39;\r\n  color: white;\r\n}\r\n\r\n.fa-linkedin {\r\n  background: #007bb5;\r\n  color: white;\r\n}\r\n	\r\n	\r\n.fa-pinterest {\r\n  background: #cb2027;\r\n  color: white;\r\n}\r\n</style>\r\n<a href=\"https://www.facebook.com\" class=\"fa fa-facebook\"></a>\r\n<a href=\"https://accounts.google.com/signin\" class=\"fa fa-google\"></a>\r\n<a href=\"https://in.linkedin.com/\" class=\"fa fa-linkedin\"></a>\r\n<a href=\"https://in.pinterest.com/\" class=\"fa fa-pinterest\"></a>\r\n<a href=\"https://twitter.com/login?lang=en\" class=\"fa fa-twitter\"></a>\r\n\r\n\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'recovery_keys', 'a:2:{s:22:\"HaoNxHZ51k9W7dsRRzFz9O\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BM4MyqYQAr5dee.BeO/K73QyDIYPJx0\";s:10:\"created_at\";i:1577709771;}s:22:\"3fQJMMpmyffR3jUAqETDnR\";a:2:{s:10:\"hashed_key\";s:34:\"$P$Bs.Fm7W2fvHRkZraUmq/AmmWdIiUVf1\";s:10:\"created_at\";i:1577799244;}}', 'yes'),
(118, 'theme_mods_twentytwenty', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1577199364;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:14:\"recent-posts-2\";i:1;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:4:{i:0;s:15:\"media_gallery-2\";i:1;s:10:\"archives-4\";i:2;s:13:\"custom_html-2\";i:3;s:15:\"book_category-2\";}s:9:\"sidebar-2\";a:5:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";i:3;s:6:\"text-2\";i:4;s:13:\"custom_html-3\";}}}s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}}', 'yes'),
(124, 'auth_key', 'b=%-,Va}dF7$+Lx:tR;#fsi(>dH:Q=Cn_yRke&pm9X!98DhDG[& .&+_b+%E:S%X', 'no'),
(125, 'auth_salt', '_dX*)6r[9d$?_.Be+#/brs5#4vbQbZ Wklj1Y)Fi.WGn,v7 DuN]@/]isUyg:Z]6', 'no'),
(126, 'logged_in_key', '4fp[L<P;Woal}/hw*TU4H[&S12k^m61~Ojl{j*qY}kDduZ0]ck mU7;AhbF}5B7y', 'no'),
(127, 'logged_in_salt', '28:R6daXDMWNj}C837iZ4{j,dKO|IDpgme_<A&oYb)#JBHa!#I)kvy0Zo~gY]@C=', 'no'),
(151, 'theme_mods_designflytheme', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"Primary\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1575648231;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:14:\"recent-posts-2\";i:1;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:4:{i:0;s:15:\"media_gallery-2\";i:1;s:13:\"rpwe_widget-2\";i:2;s:14:\"yarpp_widget-2\";i:3;s:10:\"archives-4\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:9:\"sidebar-3\";a:0:{}s:16:\"footer-sidebar-1\";a:1:{i:0;s:13:\"custom_html-2\";}s:16:\"footer-sidebar-2\";a:2:{i:0;s:6:\"text-2\";i:1;s:13:\"custom_html-3\";}}}}', 'yes'),
(156, 'recently_activated', 'a:1:{s:69:\"ultimate-responsive-image-slider/ultimate-responsive-image-slider.php\";i:1577617827;}', 'yes'),
(163, 'acf_version', '5.8.7', 'yes'),
(165, 'current_theme', 'DESIGNfly', 'yes'),
(166, 'theme_switched', '', 'yes'),
(167, 'theme_switched_via_customizer', '', 'yes'),
(168, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(170, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(187, 'n2_ss3_version', '3.3.24r5418', 'yes'),
(188, 'widget_smartslider3', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(189, 'WRIS_Settings', 's:1203:\"a:31:{s:19:\"WRIS_L3_Title_Align\";i:2;s:19:\"WRIS_L3_Slide_Title\";i:1;s:23:\"WRIS_L3_Set_slide_Title\";i:0;s:22:\"WRIS_L3_Auto_Slideshow\";i:1;s:18:\"WRIS_L3_Transition\";i:1;s:24:\"WRIS_L3_Transition_Speed\";i:5000;s:21:\"WRIS_L3_Sliding_Arrow\";i:1;s:25:\"WRIS_L3_Slider_Navigation\";i:1;s:25:\"WRIS_L3_Navigation_Button\";i:1;s:20:\"WRIS_L3_Slider_Width\";s:4:\"1000\";s:21:\"WRIS_L3_Slider_Height\";s:3:\"500\";s:18:\"WRIS_L3_Font_Style\";s:5:\"Arial\";s:19:\"WRIS_L3_Title_Color\";s:7:\"#FFFFFF\";s:25:\"WRIS_L3_Slider_Scale_Mode\";s:5:\"cover\";s:25:\"WRIS_L3_Slider_Auto_Scale\";i:1;s:21:\"WRIS_L3_Title_BgColor\";s:7:\"#000000\";s:18:\"WRIS_L3_Desc_Color\";s:7:\"#FFFFFF\";s:20:\"WRIS_L3_Desc_BgColor\";s:7:\"#000000\";s:24:\"WRIS_L3_Navigation_Color\";s:7:\"#000000\";s:19:\"WRIS_L3_Fullscreeen\";i:1;s:18:\"WRIS_L3_Custom_CSS\";s:0:\"\";s:19:\"WRIS_L3_Slide_Order\";s:3:\"ASC\";s:27:\"WRIS_L3_Navigation_Position\";s:6:\"bottom\";s:22:\"WRIS_L3_Slide_Distance\";i:5;s:23:\"WRIS_L3_Thumbnail_Style\";s:6:\"border\";s:23:\"WRIS_L3_Thumbnail_Width\";i:120;s:24:\"WRIS_L3_Thumbnail_Height\";i:120;s:13:\"WRIS_L3_Width\";s:6:\"custom\";s:14:\"WRIS_L3_Height\";s:6:\"custom\";s:32:\"WRIS_L3_Navigation_Bullets_Color\";s:7:\"#000000\";s:32:\"WRIS_L3_Navigation_Pointer_Color\";s:7:\"#000000\";}\";', 'yes'),
(192, 'wpos_anylc_redirect', '', 'yes'),
(193, 'wpos_anylc_site_uid', '6e8d5aa94af51def4b4702e179869b82', 'yes'),
(194, 'wpos_anylc_pdt_25', 'a:1:{s:6:\"status\";i:2;}', 'yes'),
(195, 'wpsisac_slider-category_children', 'a:0:{}', 'yes'),
(199, 'category_children', 'a:0:{}', 'yes'),
(235, 'wd_bwg_version', '1.5.39', 'no'),
(236, 'wd_bwg_theme_version', '1.0.0', 'no'),
(237, 'widget_bwp_gallery', 'a:2:{i:2;a:10:{s:5:\"title\";s:9:\"Portfolio\";s:4:\"type\";s:7:\"gallery\";s:10:\"gallery_id\";s:1:\"0\";s:8:\"album_id\";s:1:\"0\";s:4:\"show\";s:6:\"random\";s:5:\"count\";s:1:\"8\";s:5:\"width\";s:2:\"75\";s:6:\"height\";s:2:\"75\";s:8:\"theme_id\";s:1:\"1\";s:9:\"view_type\";s:10:\"thumbnails\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(238, 'widget_bwp_gallery_slideshow', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(239, 'bwg_admin_notice', 'a:1:{s:15:\"two_week_review\";a:2:{s:5:\"start\";s:9:\"12/6/2019\";s:3:\"int\";i:14;}}', 'yes'),
(240, 'bwg_subscribe_done', '1', 'yes'),
(241, 'wd_bwg_options', '{\"images_directory\":\"wp-content\\/uploads\",\"resizable_thumbnails\":\"1\",\"upload_img_width\":\"1200\",\"upload_img_height\":\"1200\",\"upload_thumb_width\":\"500\",\"upload_thumb_height\":\"500\",\"image_quality\":\"75\",\"lazyload_images\":\"0\",\"preload_images\":\"1\",\"preload_images_count\":\"10\",\"show_hide_custom_post\":\"0\",\"noindex_custom_post\":\"1\",\"show_hide_post_meta\":\"0\",\"tags_filter_and_or\":\"0\",\"save_ip\":1,\"image_right_click\":\"0\",\"use_inline_stiles_and_scripts\":\"0\",\"enable_google_fonts\":\"1\",\"enable_wp_editor\":\"0\",\"enable_seo\":\"1\",\"read_metadata\":\"1\",\"auto_rotate\":0,\"front_ajax\":\"0\",\"developer_mode\":\"0\",\"thumb_width\":\"350\",\"thumb_height\":\"240\",\"image_column_number\":\"3\",\"image_enable_page\":\"1\",\"images_per_page\":\"15\",\"load_more_image_count\":\"30\",\"sort_by\":\"order\",\"order_by\":\"asc\",\"show_search_box\":\"0\",\"placeholder\":\"Search\",\"search_box_width\":\"330\",\"show_sort_images\":\"0\",\"show_tag_box\":\"0\",\"showthumbs_name\":\"0\",\"show_gallery_description\":\"0\",\"image_title_show_hover\":\"hover\",\"play_icon\":\"1\",\"gallery_download\":0,\"ecommerce_icon_show_hover\":\"none\",\"masonry\":\"vertical\",\"show_masonry_thumb_description\":0,\"masonry_thumb_size\":\"250\",\"masonry_image_column_number\":\"5\",\"masonry_image_enable_page\":\"1\",\"masonry_images_per_page\":\"30\",\"masonry_load_more_image_count\":\"30\",\"masonry_sort_by\":\"order\",\"masonry_order_by\":\"asc\",\"masonry_show_search_box\":\"0\",\"masonry_placeholder\":\"Search\",\"masonry_search_box_width\":\"180\",\"masonry_show_sort_images\":\"0\",\"masonry_show_tag_box\":\"0\",\"masonry_show_gallery_title\":\"0\",\"masonry_show_gallery_description\":\"0\",\"masonry_image_title\":\"none\",\"masonry_play_icon\":\"1\",\"masonry_gallery_download\":0,\"masonry_ecommerce_icon_show_hover\":\"none\",\"mosaic\":\"vertical\",\"resizable_mosaic\":0,\"mosaic_total_width\":100,\"mosaic_thumb_size\":\"250\",\"mosaic_image_enable_page\":\"1\",\"mosaic_images_per_page\":\"30\",\"mosaic_load_more_image_count\":\"30\",\"mosaic_sort_by\":\"order\",\"mosaic_order_by\":\"asc\",\"mosaic_show_search_box\":\"0\",\"mosaic_placeholder\":\"Search\",\"mosaic_search_box_width\":\"180\",\"mosaic_show_sort_images\":\"0\",\"mosaic_show_tag_box\":\"0\",\"mosaic_show_gallery_title\":\"0\",\"mosaic_show_gallery_description\":\"0\",\"mosaic_image_title_show_hover\":\"none\",\"mosaic_play_icon\":\"1\",\"mosaic_gallery_download\":0,\"mosaic_ecommerce_icon_show_hover\":\"none\",\"slideshow_type\":\"fade\",\"slideshow_interval\":\"5\",\"slideshow_width\":\"800\",\"slideshow_height\":\"500\",\"slideshow_sort_by\":\"order\",\"slideshow_order_by\":\"asc\",\"slideshow_enable_autoplay\":\"0\",\"slideshow_enable_shuffle\":\"0\",\"slideshow_enable_ctrl\":\"1\",\"autohide_slideshow_navigation\":\"1\",\"slideshow_enable_filmstrip\":1,\"slideshow_filmstrip_height\":90,\"slideshow_enable_title\":\"0\",\"slideshow_title_position\":\"top-right\",\"slideshow_title_full_width\":\"0\",\"slideshow_enable_description\":\"0\",\"slideshow_description_position\":\"bottom-right\",\"slideshow_enable_music\":\"0\",\"slideshow_audio_url\":\"\",\"slideshow_effect_duration\":\"0.1\",\"slideshow_gallery_download\":0,\"image_browser_width\":\"800\",\"image_browser_title_enable\":\"1\",\"image_browser_description_enable\":\"1\",\"image_browser_sort_by\":\"order\",\"image_browser_order_by\":\"asc\",\"image_browser_show_gallery_title\":\"0\",\"image_browser_show_gallery_description\":\"0\",\"image_browser_show_search_box\":\"0\",\"image_browser_show_sort_images\":\"0\",\"image_browser_show_tag_box\":\"0\",\"image_browser_placeholder\":\"Search\",\"image_browser_search_box_width\":\"180\",\"image_browser_gallery_download\":0,\"blog_style_width\":800,\"blog_style_title_enable\":1,\"blog_style_images_per_page\":5,\"blog_style_load_more_image_count\":\"5\",\"blog_style_enable_page\":1,\"blog_style_description_enable\":0,\"blog_style_sort_by\":\"order\",\"blog_style_order_by\":\"asc\",\"blog_style_show_gallery_title\":\"0\",\"blog_style_show_gallery_description\":\"0\",\"blog_style_show_search_box\":\"0\",\"blog_style_placeholder\":\"Search\",\"blog_style_search_box_width\":\"180\",\"blog_style_show_sort_images\":\"0\",\"blog_style_show_tag_box\":\"0\",\"blog_style_gallery_download\":0,\"carousel_interval\":5,\"carousel_width\":300,\"carousel_height\":300,\"carousel_image_column_number\":5,\"carousel_image_par\":\"0.75\",\"carousel_enable_title\":0,\"carousel_enable_autoplay\":0,\"carousel_r_width\":800,\"carousel_fit_containerWidth\":1,\"carousel_prev_next_butt\":1,\"carousel_play_pause_butt\":1,\"carousel_sort_by\":\"order\",\"carousel_order_by\":\"asc\",\"carousel_gallery_download\":0,\"album_column_number\":\"5\",\"album_thumb_width\":\"250\",\"album_thumb_height\":\"140\",\"album_image_column_number\":\"5\",\"album_image_thumb_width\":\"250\",\"album_image_thumb_height\":\"140\",\"album_enable_page\":\"1\",\"albums_per_page\":\"30\",\"album_images_per_page\":\"30\",\"compact_album_sort_by\":\"order\",\"compact_album_order_by\":\"asc\",\"album_sort_by\":\"order\",\"album_order_by\":\"asc\",\"album_show_search_box\":\"0\",\"album_placeholder\":\"Search\",\"album_search_box_width\":\"180\",\"album_show_sort_images\":\"0\",\"album_show_tag_box\":\"0\",\"show_album_name\":\"0\",\"album_show_gallery_description\":\"0\",\"album_title_show_hover\":\"hover\",\"album_view_type\":\"thumbnail\",\"album_image_title_show_hover\":\"none\",\"album_mosaic\":\"vertical\",\"album_resizable_mosaic\":0,\"album_mosaic_total_width\":100,\"album_play_icon\":\"1\",\"album_gallery_download\":0,\"album_ecommerce_icon_show_hover\":\"none\",\"album_masonry_column_number\":\"5\",\"album_masonry_thumb_width\":\"250\",\"album_masonry_image_column_number\":\"5\",\"album_masonry_image_thumb_width\":\"250\",\"album_masonry_enable_page\":\"1\",\"albums_masonry_per_page\":\"30\",\"album_masonry_images_per_page\":\"30\",\"masonry_album_sort_by\":\"order\",\"masonry_album_order_by\":\"asc\",\"album_masonry_sort_by\":\"order\",\"album_masonry_order_by\":\"asc\",\"album_masonry_show_search_box\":\"0\",\"album_masonry_placeholder\":\"Search\",\"album_masonry_search_box_width\":\"180\",\"album_masonry_show_sort_images\":\"0\",\"album_masonry_show_tag_box\":\"0\",\"show_album_masonry_name\":\"0\",\"album_masonry_show_gallery_description\":\"0\",\"album_masonry_image_title\":\"none\",\"album_masonry_gallery_download\":0,\"album_masonry_ecommerce_icon_show_hover\":\"none\",\"extended_album_column_number\":\"2\",\"extended_album_height\":\"160\",\"album_extended_thumb_width\":\"357\",\"album_extended_thumb_height\":\"201\",\"album_extended_image_column_number\":\"5\",\"album_extended_image_thumb_width\":\"357\",\"album_extended_image_thumb_height\":\"201\",\"album_extended_enable_page\":\"1\",\"albums_extended_per_page\":\"30\",\"album_extended_images_per_page\":\"30\",\"extended_album_sort_by\":\"order\",\"extended_album_order_by\":\"asc\",\"album_extended_sort_by\":\"order\",\"album_extended_order_by\":\"asc\",\"album_extended_show_search_box\":\"0\",\"album_extended_placeholder\":\"Search\",\"album_extended_search_box_width\":\"180\",\"album_extended_show_sort_images\":\"0\",\"album_extended_show_tag_box\":\"0\",\"show_album_extended_name\":\"0\",\"extended_album_description_enable\":\"1\",\"album_extended_show_gallery_description\":\"0\",\"album_extended_view_type\":\"thumbnail\",\"album_extended_image_title_show_hover\":\"none\",\"album_extended_mosaic\":\"vertical\",\"album_extended_resizable_mosaic\":0,\"album_extended_mosaic_total_width\":100,\"album_extended_play_icon\":\"1\",\"album_extended_gallery_download\":0,\"album_extended_ecommerce_icon_show_hover\":\"none\",\"thumb_click_action\":\"open_lightbox\",\"thumb_link_target\":\"1\",\"popup_fullscreen\":\"1\",\"popup_width\":\"800\",\"popup_height\":\"500\",\"popup_type\":\"fade\",\"popup_effect_duration\":\"0.1\",\"popup_autoplay\":\"0\",\"popup_interval\":\"2.5\",\"popup_enable_filmstrip\":1,\"popup_filmstrip_height\":60,\"popup_enable_ctrl_btn\":\"1\",\"popup_enable_fullscreen\":\"1\",\"popup_enable_comment\":1,\"popup_enable_email\":1,\"popup_enable_captcha\":0,\"comment_moderation\":0,\"popup_enable_info\":\"1\",\"popup_info_always_show\":\"0\",\"popup_info_full_width\":\"1\",\"autohide_lightbox_navigation\":\"0\",\"popup_hit_counter\":0,\"popup_enable_rate\":0,\"popup_enable_fullsize_image\":\"0\",\"popup_enable_download\":\"0\",\"show_image_counts\":\"0\",\"enable_loop\":\"1\",\"enable_addthis\":0,\"addthis_profile_id\":\"\",\"popup_enable_facebook\":1,\"popup_enable_twitter\":1,\"popup_enable_pinterest\":0,\"popup_enable_tumblr\":0,\"popup_enable_ecommerce\":1,\"autoupdate_interval\":30,\"instagram_access_token\":\"\",\"facebook_app_id\":\"\",\"facebook_app_secret\":\"\",\"permissions\":\"manage_options\",\"gallery_role\":0,\"album_role\":0,\"image_role\":0,\"watermark_type\":\"none\",\"watermark_position\":\"bottom-left\",\"watermark_width\":\"90\",\"watermark_height\":\"90\",\"watermark_url\":\"\",\"watermark_text\":\"10Web.io\",\"watermark_link\":\"https:\\/\\/10web.io\\/\",\"watermark_font_size\":\"20\",\"watermark_font\":\"Arial\",\"watermark_color\":\"FFFFFF\",\"watermark_opacity\":\"30\",\"built_in_watermark_type\":\"none\",\"built_in_watermark_position\":\"middle-center\",\"built_in_watermark_size\":\"15\",\"built_in_watermark_url\":\"\",\"built_in_watermark_text\":\"10Web.io\",\"built_in_watermark_font_size\":\"20\",\"built_in_watermark_font\":\"arial.ttf\",\"built_in_watermark_color\":\"FFFFFF\",\"built_in_watermark_opacity\":\"30\",\"upload_dir\":\"\\/var\\/www\\/designfly\\/wp-content\\/uploads\\/photo-gallery\",\"upload_url\":\"http:\\/\\/192.168.1.180\\/designfly\\/wp-content\\/uploads\\/photo-gallery\",\"old_images_directory\":\"wp-content\\/uploads\",\"jpeg_quality\":\"75\",\"png_quality\":2}', 'no'),
(282, 'recovery_mode_email_last_sent', '1577799244', 'yes'),
(291, 'widget_rpwe_widget', 'a:2:{i:2;a:32:{s:5:\"title\";s:12:\"Recent Posts\";s:9:\"title_url\";s:0:\"\";s:13:\"ignore_sticky\";b:1;s:15:\"exclude_current\";b:1;s:5:\"limit\";i:5;s:6:\"offset\";i:0;s:5:\"order\";s:4:\"DESC\";s:7:\"orderby\";s:4:\"date\";s:9:\"post_type\";a:1:{i:0;s:4:\"post\";}s:11:\"post_status\";s:7:\"publish\";s:3:\"cat\";N;s:3:\"tag\";N;s:8:\"taxonomy\";s:0:\"\";s:7:\"excerpt\";b:0;s:6:\"length\";i:10;s:4:\"date\";b:1;s:13:\"date_relative\";b:0;s:13:\"date_modified\";b:0;s:8:\"readmore\";b:0;s:13:\"readmore_text\";s:12:\"Read More »\";s:13:\"comment_count\";b:0;s:5:\"thumb\";b:1;s:12:\"thumb_height\";i:45;s:11:\"thumb_width\";i:45;s:13:\"thumb_default\";s:36:\"http://placehold.it/45x45/f0f0f0/ccc\";s:11:\"thumb_align\";s:14:\"rpwe-alignleft\";s:14:\"styles_default\";b:1;s:5:\"cssID\";s:0:\"\";s:9:\"css_class\";s:0:\"\";s:3:\"css\";s:1157:\".rpwe-block ul{\r\nlist-style: none !important;\r\nmargin-left: 0 !important;\r\npadding-left: 0 !important;\r\n}\r\n\r\n.rpwe-block li{\r\nborder-bottom: 1px solid #eee;\r\nmargin-bottom: 10px;\r\npadding-bottom: 10px;\r\nlist-style-type: none;\r\n}\r\n\r\n.rpwe-block a{\r\ndisplay: inline !important;\r\ntext-decoration: none;\r\n}\r\n\r\n.rpwe-block h3{\r\nbackground: none !important;\r\nclear: none;\r\nmargin-bottom: 0 !important;\r\nmargin-top: 0 !important;\r\nfont-weight: 400;\r\nfont-size: 12px !important;\r\nline-height: 1.5em;\r\n}\r\n\r\n.rpwe-thumb{\r\nborder: 1px solid #eee !important;\r\nbox-shadow: none !important;\r\nmargin: 2px 10px 2px 0;\r\npadding: 3px !important;\r\n}\r\n\r\n.rpwe-summary{\r\nfont-size: 12px;\r\n}\r\n\r\n.rpwe-time{\r\ncolor: #bbb;\r\nfont-size: 11px;\r\n}\r\n\r\n.rpwe-comment{\r\ncolor: #bbb;\r\nfont-size: 11px;\r\npadding-left: 5px;\r\n}\r\n\r\n.rpwe-alignleft{\r\ndisplay: inline;\r\nfloat: left;\r\n}\r\n\r\n.rpwe-alignright{\r\ndisplay: inline;\r\nfloat: right;\r\n}\r\n\r\n.rpwe-aligncenter{\r\ndisplay: block;\r\nmargin-left: auto;\r\nmargin-right: auto;\r\n}\r\n\r\n.rpwe-clearfix:before,\r\n.rpwe-clearfix:after{\r\ncontent: \"\";\r\ndisplay: table !important;\r\n}\r\n\r\n.rpwe-clearfix:after{\r\nclear: both;\r\n}\r\n\r\n.rpwe-clearfix{\r\nzoom: 1;\r\n}\r\n\";s:6:\"before\";s:0:\"\";s:5:\"after\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(295, 'widget_yarpp_widget', 'a:2:{i:2;a:6:{s:8:\"template\";b:0;s:5:\"title\";s:13:\"Related Posts\";s:18:\"thumbnails_heading\";s:14:\"Related posts:\";s:7:\"use_pro\";b:0;s:8:\"pro_dpid\";N;s:13:\"promote_yarpp\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(296, 'yarpp_pro', 'a:7:{s:6:\"active\";s:1:\"0\";s:3:\"aid\";N;s:2:\"st\";N;s:1:\"v\";N;s:4:\"dpid\";N;s:5:\"optin\";b:0;s:23:\"auto_display_post_types\";a:1:{i:0;s:4:\"post\";}}', 'yes'),
(297, 'yarpp', 'a:47:{s:9:\"threshold\";d:2;s:5:\"limit\";i:4;s:14:\"excerpt_length\";i:10;s:6:\"recent\";b:0;s:12:\"before_title\";s:4:\"<li>\";s:11:\"after_title\";s:5:\"</li>\";s:11:\"before_post\";s:8:\" <small>\";s:10:\"after_post\";s:8:\"</small>\";s:14:\"before_related\";s:27:\"<h3>Related posts:</h3><ol>\";s:13:\"after_related\";s:5:\"</ol>\";s:10:\"no_results\";s:24:\"<p>No related posts.</p>\";s:5:\"order\";s:10:\"score DESC\";s:9:\"rss_limit\";i:3;s:18:\"rss_excerpt_length\";i:10;s:16:\"rss_before_title\";s:4:\"<li>\";s:15:\"rss_after_title\";s:5:\"</li>\";s:15:\"rss_before_post\";s:8:\" <small>\";s:14:\"rss_after_post\";s:8:\"</small>\";s:18:\"rss_before_related\";s:27:\"<h3>Related posts:</h3><ol>\";s:17:\"rss_after_related\";s:5:\"</ol>\";s:14:\"rss_no_results\";s:24:\"<p>No related posts.</p>\";s:9:\"rss_order\";s:10:\"score DESC\";s:9:\"past_only\";b:0;s:12:\"show_excerpt\";b:0;s:16:\"rss_show_excerpt\";b:0;s:8:\"template\";b:0;s:12:\"rss_template\";b:0;s:14:\"show_pass_post\";b:0;s:12:\"cross_relate\";b:0;s:11:\"rss_display\";b:0;s:19:\"rss_excerpt_display\";b:1;s:13:\"promote_yarpp\";b:0;s:17:\"rss_promote_yarpp\";b:0;s:15:\"myisam_override\";b:0;s:7:\"exclude\";s:0:\"\";s:6:\"weight\";a:1:{s:3:\"tax\";a:2:{s:8:\"category\";i:1;s:8:\"post_tag\";i:1;}}s:11:\"require_tax\";a:0:{}s:5:\"optin\";b:0;s:18:\"thumbnails_heading\";s:14:\"Related posts:\";s:18:\"thumbnails_default\";s:101:\"http://192.168.1.180/designfly/wp-content/plugins/yet-another-related-posts-plugin/images/default.png\";s:22:\"rss_thumbnails_heading\";s:14:\"Related posts:\";s:22:\"rss_thumbnails_default\";s:101:\"http://192.168.1.180/designfly/wp-content/plugins/yet-another-related-posts-plugin/images/default.png\";s:12:\"display_code\";b:0;s:20:\"auto_display_archive\";b:0;s:23:\"auto_display_post_types\";a:1:{i:0;s:4:\"post\";}s:5:\"pools\";a:0:{}s:25:\"manually_using_thumbnails\";b:0;}', 'yes'),
(298, 'yarpp_fulltext_disabled', '1', 'yes'),
(299, 'yarpp_version', '5.1.2', 'yes'),
(301, 'yarpp_activate_timestamp', '1574425420', 'no'),
(1074, 'wpcf7-mce-post-id', '5829', 'no'),
(1075, 'wpcf7-mce-post-update', '2019-11-18T15:15:32', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1076, 'mce_conten_panel_master', '<p class=\"about-description\">Easier setup to get you up and running in no time. Please <a href=\"https://renzojohnson.com/contact\" target=\"_blank\" rel=\"noopener noreferrer\">lets us know</a> what kind of features you would like to see added <a href=\"https://renzojohnson.com/contact\" target=\"_blank\" rel=\"noopener noreferrer\">HERE</a>.</p>\n<div class=\"welcome-panel-column-container\">\n<div class=\"welcome-panel-column\">\n<h3>Get Started</h3>\n<p>Make sure it works as you expect <br /><a class=\"button button-primary button-hero load-customize\" href=\"/wp-admin/admin.php?page=wpcf7\">Review your settings <span alt=\"f111\" class=\"dashicons dashicons-admin-generic\" style=\"font-size: 17px;vertical-align: middle;\"> </span> </a></p>\n</div>\n<div class=\"welcome-panel-column\">\n<h3>Next Steps</h3>\n<p>Help me develop the plugin and provide support by <br /><a class=\"donate button button-primary button-hero load-customize\" href=\"https://www.paypal.me/renzojohnson\" target=\"_blank\" rel=\"noopener noreferrer\">Donating even a small sum <span alt=\"f524\" class=\"dashicons dashicons-tickets-alt\"> </span></a></p>\n</div>\n</div>\n', 'no'),
(1077, 'mce_conten_tittle_master', 'ChimpMatic Lite is now 0.5!', 'no'),
(1080, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.5\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1574664560;s:7:\"version\";s:5:\"5.1.5\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(1126, 'widget_media_audio-2_title', '', 'no'),
(1127, '_widget_media_audio-2_title', 'field_5ddb7d5c3158e', 'no'),
(1128, 'widget_media_audio-2_description', '', 'no'),
(1129, '_widget_media_audio-2_description', 'field_5ddb7d803158f', 'no'),
(1141, 'widget_custom_html-3_title', '', 'no'),
(1142, '_widget_custom_html-3_title', 'field_5ddb7d5c3158e', 'no'),
(1143, 'widget_custom_html-3_description', '', 'no'),
(1144, '_widget_custom_html-3_description', 'field_5ddb7d803158f', 'no'),
(1196, 'widget_text-2_title', '', 'no'),
(1197, '_widget_text-2_title', 'field_5ddb7d5c3158e', 'no'),
(1198, 'widget_text-2_description', '', 'no'),
(1199, '_widget_text-2_description', 'field_5ddb7d803158f', 'no'),
(1201, 'widget_custom_html-2_title', '', 'no'),
(1202, '_widget_custom_html-2_title', 'field_5ddb7d5c3158e', 'no'),
(1203, 'widget_custom_html-2_description', '', 'no'),
(1204, '_widget_custom_html-2_description', 'field_5ddb7d803158f', 'no'),
(1364, 'widget_media_gallery-2_title', '', 'no'),
(1365, '_widget_media_gallery-2_title', 'field_5ddb7d5c3158e', 'no'),
(1366, 'widget_media_gallery-2_description', '', 'no'),
(1367, '_widget_media_gallery-2_description', 'field_5ddb7d803158f', 'no'),
(1368, 'widget_archives-4_title', '', 'no'),
(1369, '_widget_archives-4_title', 'field_5ddb7d5c3158e', 'no'),
(1370, 'widget_archives-4_description', '', 'no'),
(1371, '_widget_archives-4_description', 'field_5ddb7d803158f', 'no'),
(1563, 'yarpp_version_info_timeout', '1574774089', 'no'),
(1635, 'db_upgraded', '', 'yes'),
(1636, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.5.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.5-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.5-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2.5-partial-3.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.5-rollback-3.zip\";}s:7:\"current\";s:5:\"5.2.5\";s:7:\"version\";s:5:\"5.2.5\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:5:\"5.2.3\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1577856585;s:15:\"version_checked\";s:5:\"5.2.3\";s:12:\"translations\";a:0:{}}', 'no'),
(1641, 'can_compress_scripts', '1', 'no'),
(1657, 'theme_mods_designflytheme2', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"Primary\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1577857920;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:14:\"recent-posts-2\";i:1;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:3:{i:0;s:15:\"media_gallery-2\";i:1;s:10:\"archives-4\";i:2;s:15:\"book_category-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-5\";i:1;s:12:\"categories-3\";i:2;s:6:\"meta-3\";}s:9:\"sidebar-3\";a:0:{}s:16:\"footer-sidebar-1\";a:1:{i:0;s:13:\"custom_html-2\";}s:16:\"footer-sidebar-2\";a:2:{i:0;s:6:\"text-2\";i:1;s:13:\"custom_html-3\";}}}}', 'yes'),
(1686, 'portfolios_children', 'a:0:{}', 'yes'),
(1733, 'widget_book_category', 'a:2:{i:2;a:2:{s:5:\"title\";s:13:\"book category\";s:20:\"select_book_category\";s:2:\"13\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1734, 'book_options', 'a:2:{s:19:\"book_field_currency\";s:3:\"aud\";s:16:\"book_field_pages\";s:2:\"50\";}', 'yes'),
(1739, 'book_category_children', 'a:0:{}', 'yes'),
(1800, 'theme_mods_twentyseventeen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1577518182;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:14:\"recent-posts-2\";i:1;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:4:{i:0;s:15:\"media_gallery-2\";i:1;s:10:\"archives-4\";i:2;s:13:\"custom_html-2\";i:3;s:15:\"book_category-2\";}s:9:\"sidebar-2\";a:5:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";i:3;s:6:\"text-2\";i:4;s:13:\"custom_html-3\";}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(1962, '_transient_twentyseventeen_categories', '1', 'yes'),
(2060, '_site_transient_timeout_browser_237aa6249591b6a7ad6962bc73492c77', '1578027291', 'no'),
(2061, '_site_transient_browser_237aa6249591b6a7ad6962bc73492c77', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"79.0.3945.88\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(2075, 'theme_mods_designfly_tarang_sir', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1577446065;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:14:\"recent-posts-2\";i:1;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:4:{i:0;s:15:\"media_gallery-2\";i:1;s:10:\"archives-4\";i:2;s:13:\"custom_html-2\";i:3;s:15:\"book_category-2\";}s:9:\"sidebar-2\";a:5:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";i:3;s:6:\"text-2\";i:4;s:13:\"custom_html-3\";}s:9:\"sidebar-3\";a:0:{}s:16:\"footer-sidebar-1\";a:0:{}s:16:\"footer-sidebar-2\";a:0:{}}}}', 'yes'),
(2116, 'theme_mods_designfly_underscores', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1577543269;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:14:\"recent-posts-2\";i:1;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:9:{i:0;s:15:\"media_gallery-2\";i:1;s:10:\"archives-4\";i:2;s:13:\"custom_html-2\";i:3;s:15:\"book_category-2\";i:4;s:10:\"archives-2\";i:5;s:12:\"categories-2\";i:6;s:6:\"meta-2\";i:7;s:6:\"text-2\";i:8;s:13:\"custom_html-3\";}}}}', 'yes'),
(2127, '_site_transient_timeout_php_check_b210b8aa09c12dbcb4a182813622790b', '1578159368', 'no'),
(2128, '_site_transient_php_check_b210b8aa09c12dbcb4a182813622790b', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(2257, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1577828153', 'no'),
(2258, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:1:{i:0;a:8:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:13:\"WordCamp Asia\";s:3:\"url\";s:31:\"https://2020.asia.wordcamp.org/\";s:6:\"meetup\";s:0:\"\";s:10:\"meetup_url\";s:0:\"\";s:4:\"date\";s:19:\"2020-02-21 00:00:00\";s:8:\"end_date\";s:19:\"2020-02-23 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:17:\"Bangkok, Thailand\";s:7:\"country\";s:2:\"TH\";s:8:\"latitude\";d:13.7248934;s:9:\"longitude\";d:100.492683;}}}}', 'no'),
(2317, '_site_transient_timeout_theme_roots', '1577859720', 'no'),
(2318, '_site_transient_theme_roots', 'a:5:{s:9:\"designfly\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(2319, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1577857920;s:7:\"checked\";a:5:{s:9:\"designfly\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(2320, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1577859311;s:7:\"checked\";a:2:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.7\";s:19:\"wp-book/wp-book.php\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"wp-book/wp-book.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/wp-book\";s:4:\"slug\";s:7:\"wp-book\";s:6:\"plugin\";s:19:\"wp-book/wp-book.php\";s:11:\"new_version\";s:5:\"1.0.0\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/wp-book/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/wp-book.1.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/wp-book/assets/icon-256x256.png?rev=2014680\";s:2:\"1x\";s:60:\"https://ps.w.org/wp-book/assets/icon-128x128.png?rev=2014680\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/wp-book/assets/banner-1544x500.png?rev=2014680\";s:2:\"1x\";s:62:\"https://ps.w.org/wp-book/assets/banner-772x250.png?rev=2014680\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(2322, '_site_transient_timeout_php_check_6b697d679328a3c033f27d9ce3f7f22b', '1578462712', 'no'),
(2323, '_site_transient_php_check_6b697d679328a3c033f27d9ce3f7f22b', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(2324, '_site_transient_timeout_community-events-50cc0c2a6dc235d69f24c105534feaae', '1577901116', 'no'),
(2325, '_site_transient_community-events-50cc0c2a6dc235d69f24c105534feaae', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";s:12:\"106.222.34.0\";}s:6:\"events\";a:6:{i:0;a:8:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:13:\"WordCamp Asia\";s:3:\"url\";s:31:\"https://2020.asia.wordcamp.org/\";s:6:\"meetup\";s:0:\"\";s:10:\"meetup_url\";s:0:\"\";s:4:\"date\";s:19:\"2020-02-21 00:00:00\";s:8:\"end_date\";s:19:\"2020-02-23 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:17:\"Bangkok, Thailand\";s:7:\"country\";s:2:\"TH\";s:8:\"latitude\";d:13.7248934;s:9:\"longitude\";d:100.492683;}}i:1;a:8:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:34:\"Bhubaneswar WordPress monthly meet\";s:3:\"url\";s:73:\"https://www.meetup.com/Bhubaneswar-WordPress-Meetup/events/wmrrdrybccbpb/\";s:6:\"meetup\";s:28:\"Bhubaneswar WordPress Meetup\";s:10:\"meetup_url\";s:52:\"https://www.meetup.com/Bhubaneswar-WordPress-Meetup/\";s:4:\"date\";s:19:\"2020-01-11 17:00:00\";s:8:\"end_date\";s:19:\"2020-01-11 19:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:18:\"Bhubaneswar, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:20.299217224121;s:9:\"longitude\";d:85.830772399902;}}i:2;a:8:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:34:\"Bhubaneswar WordPress monthly meet\";s:3:\"url\";s:73:\"https://www.meetup.com/Bhubaneswar-WordPress-Meetup/events/wmrrdrybcdblb/\";s:6:\"meetup\";s:28:\"Bhubaneswar WordPress Meetup\";s:10:\"meetup_url\";s:52:\"https://www.meetup.com/Bhubaneswar-WordPress-Meetup/\";s:4:\"date\";s:19:\"2020-02-08 17:00:00\";s:8:\"end_date\";s:19:\"2020-02-08 19:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:18:\"Bhubaneswar, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:20.299217224121;s:9:\"longitude\";d:85.830772399902;}}i:3;a:8:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:34:\"Bhubaneswar WordPress monthly meet\";s:3:\"url\";s:73:\"https://www.meetup.com/Bhubaneswar-WordPress-Meetup/events/wmrrdrybcfbsb/\";s:6:\"meetup\";s:28:\"Bhubaneswar WordPress Meetup\";s:10:\"meetup_url\";s:52:\"https://www.meetup.com/Bhubaneswar-WordPress-Meetup/\";s:4:\"date\";s:19:\"2020-03-14 17:00:00\";s:8:\"end_date\";s:19:\"2020-03-14 19:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:18:\"Bhubaneswar, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:20.299217224121;s:9:\"longitude\";d:85.830772399902;}}i:4;a:8:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:23:\"WordCamp Kolkata, India\";s:3:\"url\";s:34:\"https://2020.kolkata.wordcamp.org/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2020-03-22 00:00:00\";s:8:\"end_date\";s:19:\"2020-03-22 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:14:\"Kolkata, India\";s:7:\"country\";s:2:\"IN\";s:8:\"latitude\";d:22.5806455;s:9:\"longitude\";d:88.4761115;}}i:5;a:8:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:34:\"Bhubaneswar WordPress monthly meet\";s:3:\"url\";s:73:\"https://www.meetup.com/Bhubaneswar-WordPress-Meetup/events/wmrrdrybcgbpb/\";s:6:\"meetup\";s:28:\"Bhubaneswar WordPress Meetup\";s:10:\"meetup_url\";s:52:\"https://www.meetup.com/Bhubaneswar-WordPress-Meetup/\";s:4:\"date\";s:19:\"2020-04-11 17:00:00\";s:8:\"end_date\";s:19:\"2020-04-11 19:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:18:\"Bhubaneswar, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:20.299217224121;s:9:\"longitude\";d:85.830772399902;}}}}', 'no'),
(2326, '_transient_timeout_feed_9bbd59226dc36b9b26cd43f15694c5c3', '1577901116', 'no'),
(2327, '_transient_timeout_feed_mod_9bbd59226dc36b9b26cd43f15694c5c3', '1577901116', 'no'),
(2328, '_transient_feed_mod_9bbd59226dc36b9b26cd43f15694c5c3', '1577857916', 'no'),
(2329, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1577901116', 'no'),
(2330, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1577901116', 'no'),
(2331, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1577857916', 'no'),
(2332, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1577901116', 'no'),
(2333, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2019/12/wordpress-5-3-2-maintenance-release/\'>WordPress 5.3.2 Maintenance Release</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wptavern.com/reflecting-on-2019-the-year-in-review\'>WPTavern: Reflecting on 2019: The Year in Review</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/wordpress-theme-review-team-announces-alpha-color-picker-for-the-customizer\'>WPTavern: WordPress Theme Review Team Announces Alpha Color Picker for the Customizer</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/what-should-an-author-bio-block-look-like\'>WPTavern: What Should an Author Bio Block Look Like?</a></li></ul></div>', 'no'),
(2335, 'theme_mods_twentynineteen', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1577857930;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:14:\"recent-posts-2\";i:1;s:17:\"recent-comments-2\";i:2;s:13:\"custom_html-2\";i:3;s:6:\"text-2\";i:4;s:13:\"custom_html-3\";}s:9:\"sidebar-1\";a:6:{i:0;s:15:\"media_gallery-2\";i:1;s:10:\"archives-4\";i:2;s:15:\"book_category-2\";i:3;s:10:\"archives-5\";i:4;s:12:\"categories-3\";i:5;s:6:\"meta-3\";}}}}', 'yes'),
(2337, 'theme_mods_designfly', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"Primary\";i:3;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(2339, '_transient_timeout_plugin_slugs', '1577945745', 'no'),
(2340, '_transient_plugin_slugs', 'a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:19:\"wp-book/wp-book.php\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(9, 9, '_edit_last', '1'),
(10, 9, '_edit_lock', '1577858575:1'),
(11, 1, '_edit_lock', '1577723616:1'),
(27, 18, '_menu_item_type', 'custom'),
(28, 18, '_menu_item_menu_item_parent', '0'),
(29, 18, '_menu_item_object_id', '18'),
(30, 18, '_menu_item_object', 'custom'),
(31, 18, '_menu_item_target', ''),
(32, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(33, 18, '_menu_item_xfn', ''),
(34, 18, '_menu_item_url', 'http://192.168.1.180/designfly/'),
(35, 18, '_menu_item_orphaned', '1574340110'),
(36, 19, '_menu_item_type', 'post_type'),
(37, 19, '_menu_item_menu_item_parent', '0'),
(38, 19, '_menu_item_object_id', '2'),
(39, 19, '_menu_item_object', 'page'),
(40, 19, '_menu_item_target', ''),
(41, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(42, 19, '_menu_item_xfn', ''),
(43, 19, '_menu_item_url', ''),
(44, 19, '_menu_item_orphaned', '1574340112'),
(54, 21, '_menu_item_type', 'post_type'),
(55, 21, '_menu_item_menu_item_parent', '0'),
(56, 21, '_menu_item_object_id', '2'),
(57, 21, '_menu_item_object', 'page'),
(58, 21, '_menu_item_target', ''),
(59, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(60, 21, '_menu_item_xfn', ''),
(61, 21, '_menu_item_url', ''),
(62, 21, '_menu_item_orphaned', '1574340254'),
(63, 22, '_menu_item_type', 'custom'),
(64, 22, '_menu_item_menu_item_parent', '0'),
(65, 22, '_menu_item_object_id', '22'),
(66, 22, '_menu_item_object', 'custom'),
(67, 22, '_menu_item_target', ''),
(68, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(69, 22, '_menu_item_xfn', ''),
(70, 22, '_menu_item_url', 'http://192.168.1.180/designfly/'),
(71, 22, '_menu_item_orphaned', '1574340284'),
(72, 23, '_menu_item_type', 'post_type'),
(73, 23, '_menu_item_menu_item_parent', '0'),
(74, 23, '_menu_item_object_id', '2'),
(75, 23, '_menu_item_object', 'page'),
(76, 23, '_menu_item_target', ''),
(77, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(78, 23, '_menu_item_xfn', ''),
(79, 23, '_menu_item_url', ''),
(80, 23, '_menu_item_orphaned', '1574340285'),
(81, 24, '_edit_lock', '1574746640:1'),
(82, 24, '_wp_page_template', 'page-home.php'),
(83, 24, '_edit_last', '1'),
(84, 24, 'gallery_images', ''),
(85, 24, '_gallery_images', 'field_5dd67d4da3e0e'),
(86, 25, 'gallery_images', ''),
(87, 25, '_gallery_images', 'field_5dd67d4da3e0e'),
(88, 26, '_menu_item_type', 'post_type'),
(89, 26, '_menu_item_menu_item_parent', '0'),
(90, 26, '_menu_item_object_id', '24'),
(91, 26, '_menu_item_object', 'page'),
(92, 26, '_menu_item_target', ''),
(93, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(94, 26, '_menu_item_xfn', ''),
(95, 26, '_menu_item_url', ''),
(96, 26, '_menu_item_orphaned', '1574340749'),
(102, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(103, 27, '_menu_item_xfn', ''),
(104, 27, '_menu_item_url', ''),
(105, 27, '_menu_item_orphaned', '1574340750'),
(109, 29, '_edit_lock', '1575709784:1'),
(110, 29, '_edit_last', '1'),
(111, 29, 'gallery_images', ''),
(112, 29, '_gallery_images', 'field_5dd67d4da3e0e'),
(113, 30, 'gallery_images', ''),
(114, 30, '_gallery_images', 'field_5dd67d4da3e0e'),
(115, 31, '_edit_lock', '1575651985:1'),
(116, 31, '_edit_last', '1'),
(117, 31, 'gallery_images', ''),
(118, 31, '_gallery_images', 'field_5dd67d4da3e0e'),
(119, 32, 'gallery_images', ''),
(120, 32, '_gallery_images', 'field_5dd67d4da3e0e'),
(121, 33, '_edit_lock', '1576258022:1'),
(122, 33, '_edit_last', '1'),
(123, 33, 'gallery_images', ''),
(124, 33, '_gallery_images', 'field_5dd67d4da3e0e'),
(125, 34, 'gallery_images', ''),
(126, 34, '_gallery_images', 'field_5dd67d4da3e0e'),
(127, 35, '_edit_lock', '1574417080:1'),
(128, 35, '_edit_last', '1'),
(129, 35, 'gallery_images', ''),
(130, 35, '_gallery_images', 'field_5dd67d4da3e0e'),
(131, 36, 'gallery_images', ''),
(132, 36, '_gallery_images', 'field_5dd67d4da3e0e'),
(133, 37, '_menu_item_type', 'post_type'),
(134, 37, '_menu_item_menu_item_parent', '0'),
(135, 37, '_menu_item_object_id', '24'),
(136, 37, '_menu_item_object', 'page'),
(137, 37, '_menu_item_target', ''),
(138, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(139, 37, '_menu_item_xfn', ''),
(140, 37, '_menu_item_url', ''),
(141, 37, '_menu_item_orphaned', '1574340872'),
(142, 38, '_menu_item_type', 'post_type'),
(143, 38, '_menu_item_menu_item_parent', '0'),
(144, 38, '_menu_item_object_id', '33'),
(145, 38, '_menu_item_object', 'page'),
(146, 38, '_menu_item_target', ''),
(147, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(148, 38, '_menu_item_xfn', ''),
(149, 38, '_menu_item_url', ''),
(150, 38, '_menu_item_orphaned', '1574340874'),
(151, 39, '_menu_item_type', 'post_type'),
(152, 39, '_menu_item_menu_item_parent', '0'),
(153, 39, '_menu_item_object_id', '35'),
(154, 39, '_menu_item_object', 'page'),
(155, 39, '_menu_item_target', ''),
(156, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(157, 39, '_menu_item_xfn', ''),
(158, 39, '_menu_item_url', ''),
(159, 39, '_menu_item_orphaned', '1574340875'),
(160, 40, '_menu_item_type', 'post_type'),
(161, 40, '_menu_item_menu_item_parent', '0'),
(162, 40, '_menu_item_object_id', '31'),
(163, 40, '_menu_item_object', 'page'),
(164, 40, '_menu_item_target', ''),
(165, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(166, 40, '_menu_item_xfn', ''),
(167, 40, '_menu_item_url', ''),
(168, 40, '_menu_item_orphaned', '1574340876'),
(169, 41, '_menu_item_type', 'post_type'),
(170, 41, '_menu_item_menu_item_parent', '0'),
(171, 41, '_menu_item_object_id', '29'),
(172, 41, '_menu_item_object', 'page'),
(173, 41, '_menu_item_target', ''),
(174, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(175, 41, '_menu_item_xfn', ''),
(176, 41, '_menu_item_url', ''),
(177, 41, '_menu_item_orphaned', '1574340878'),
(178, 42, '_menu_item_type', 'post_type'),
(179, 42, '_menu_item_menu_item_parent', '0'),
(180, 42, '_menu_item_object_id', '24'),
(181, 42, '_menu_item_object', 'page'),
(182, 42, '_menu_item_target', ''),
(183, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(184, 42, '_menu_item_xfn', ''),
(185, 42, '_menu_item_url', ''),
(186, 42, '_menu_item_orphaned', '1574341318'),
(187, 43, '_menu_item_type', 'post_type'),
(188, 43, '_menu_item_menu_item_parent', '0'),
(189, 43, '_menu_item_object_id', '33'),
(190, 43, '_menu_item_object', 'page'),
(191, 43, '_menu_item_target', ''),
(192, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(193, 43, '_menu_item_xfn', ''),
(194, 43, '_menu_item_url', ''),
(195, 43, '_menu_item_orphaned', '1574341319'),
(196, 44, '_menu_item_type', 'post_type'),
(197, 44, '_menu_item_menu_item_parent', '0'),
(198, 44, '_menu_item_object_id', '35'),
(199, 44, '_menu_item_object', 'page'),
(200, 44, '_menu_item_target', ''),
(201, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(202, 44, '_menu_item_xfn', ''),
(203, 44, '_menu_item_url', ''),
(204, 44, '_menu_item_orphaned', '1574341321'),
(205, 45, '_menu_item_type', 'post_type'),
(206, 45, '_menu_item_menu_item_parent', '0'),
(207, 45, '_menu_item_object_id', '31'),
(208, 45, '_menu_item_object', 'page'),
(209, 45, '_menu_item_target', ''),
(210, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(211, 45, '_menu_item_xfn', ''),
(212, 45, '_menu_item_url', ''),
(213, 45, '_menu_item_orphaned', '1574341322'),
(214, 46, '_menu_item_type', 'post_type'),
(215, 46, '_menu_item_menu_item_parent', '0'),
(216, 46, '_menu_item_object_id', '29'),
(217, 46, '_menu_item_object', 'page'),
(218, 46, '_menu_item_target', ''),
(219, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(220, 46, '_menu_item_xfn', ''),
(221, 46, '_menu_item_url', ''),
(222, 46, '_menu_item_orphaned', '1574341323'),
(223, 47, '_menu_item_type', 'post_type'),
(224, 47, '_menu_item_menu_item_parent', '0'),
(225, 47, '_menu_item_object_id', '24'),
(226, 47, '_menu_item_object', 'page'),
(227, 47, '_menu_item_target', ''),
(228, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(229, 47, '_menu_item_xfn', ''),
(230, 47, '_menu_item_url', ''),
(232, 48, '_menu_item_type', 'post_type'),
(233, 48, '_menu_item_menu_item_parent', '0'),
(234, 48, '_menu_item_object_id', '33'),
(235, 48, '_menu_item_object', 'page'),
(236, 48, '_menu_item_target', ''),
(237, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(238, 48, '_menu_item_xfn', ''),
(239, 48, '_menu_item_url', ''),
(250, 50, '_menu_item_type', 'post_type'),
(251, 50, '_menu_item_menu_item_parent', '0'),
(252, 50, '_menu_item_object_id', '31'),
(253, 50, '_menu_item_object', 'page'),
(254, 50, '_menu_item_target', ''),
(255, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(256, 50, '_menu_item_xfn', ''),
(257, 50, '_menu_item_url', ''),
(270, 53, 'gallery_images', ''),
(271, 53, '_gallery_images', 'field_5dd67d4da3e0e'),
(286, 56, '_edit_last', '1'),
(287, 56, 'ris_all_photos_details', 'YTo0OntpOjA7YTo1OntzOjE2OiJycGdwX2ltYWdlX2xhYmVsIjtzOjc6InNsaWRlcjEiO3M6MTU6InJwZ3BfaW1hZ2VfZGVzYyI7czoxNzoidGhpcyBpcyBzbGlkZXIgMS4iO3M6MTQ6InJwZ3BfaW1hZ2VfdXJsIjtzOjcxOiJodHRwOi8vbG9jYWxob3N0L3dvcmRwcmVzcy93cC1jb250ZW50L3VwbG9hZHMvMjAxOS8xMS9zbGlkZXItaW1hZ2UyLnBuZyI7czoyMjoicnBnZ2FsbGVyeV9hZG1pbl90aHVtYiI7czo3OToiaHR0cDovL2xvY2FsaG9zdC93b3JkcHJlc3Mvd3AtY29udGVudC91cGxvYWRzLzIwMTkvMTEvc2xpZGVyLWltYWdlMi0zMDB4MzAwLnBuZyI7czoyMjoicnBnZ2FsbGVyeV9hZG1pbl9sYXJnZSI7czo3OToiaHR0cDovL2xvY2FsaG9zdC93b3JkcHJlc3Mvd3AtY29udGVudC91cGxvYWRzLzIwMTkvMTEvc2xpZGVyLWltYWdlMi01MDB4NDU2LnBuZyI7fWk6MTthOjU6e3M6MTY6InJwZ3BfaW1hZ2VfbGFiZWwiO3M6ODoic2xpZGVyIDIiO3M6MTU6InJwZ3BfaW1hZ2VfZGVzYyI7czoxNjoidGhpcyBpcyBzbGlkZXIgMiI7czoxNDoicnBncF9pbWFnZV91cmwiO3M6OTg6Imh0dHA6Ly9sb2NhbGhvc3Qvd29yZHByZXNzL3dwLWNvbnRlbnQvdXBsb2Fkcy8yMDE5LzExL2Q0ZDNhYzVkM2JhNTQ2OGQyYzc2NDMwM2NjNzZiMzczODA5MjVkNWUuanBnIjtzOjIyOiJycGdnYWxsZXJ5X2FkbWluX3RodW1iIjtzOjEwNjoiaHR0cDovL2xvY2FsaG9zdC93b3JkcHJlc3Mvd3AtY29udGVudC91cGxvYWRzLzIwMTkvMTEvZDRkM2FjNWQzYmE1NDY4ZDJjNzY0MzAzY2M3NmIzNzM4MDkyNWQ1ZS0zMDB4MzAwLmpwZyI7czoyMjoicnBnZ2FsbGVyeV9hZG1pbl9sYXJnZSI7czoxMDY6Imh0dHA6Ly9sb2NhbGhvc3Qvd29yZHByZXNzL3dwLWNvbnRlbnQvdXBsb2Fkcy8yMDE5LzExL2Q0ZDNhYzVkM2JhNTQ2OGQyYzc2NDMwM2NjNzZiMzczODA5MjVkNWUtNTAweDI4MS5qcGciO31pOjI7YTo1OntzOjE2OiJycGdwX2ltYWdlX2xhYmVsIjtzOjg6InNsaWRlciAzIjtzOjE1OiJycGdwX2ltYWdlX2Rlc2MiO3M6MTY6InRoaXMgaXMgc2xpZGVyIDMiO3M6MTQ6InJwZ3BfaW1hZ2VfdXJsIjtzOjk4OiJodHRwOi8vbG9jYWxob3N0L3dvcmRwcmVzcy93cC1jb250ZW50L3VwbG9hZHMvMjAxOS8xMS9jYTUyYTNiYjA3NWZlNjM4ODAxMjIwN2M0YzE5Mzk0YzNlZTQ2ZjBmLmpwZyI7czoyMjoicnBnZ2FsbGVyeV9hZG1pbl90aHVtYiI7czoxMDY6Imh0dHA6Ly9sb2NhbGhvc3Qvd29yZHByZXNzL3dwLWNvbnRlbnQvdXBsb2Fkcy8yMDE5LzExL2NhNTJhM2JiMDc1ZmU2Mzg4MDEyMjA3YzRjMTkzOTRjM2VlNDZmMGYtMzAweDMwMC5qcGciO3M6MjI6InJwZ2dhbGxlcnlfYWRtaW5fbGFyZ2UiO3M6MTA2OiJodHRwOi8vbG9jYWxob3N0L3dvcmRwcmVzcy93cC1jb250ZW50L3VwbG9hZHMvMjAxOS8xMS9jYTUyYTNiYjA3NWZlNjM4ODAxMjIwN2M0YzE5Mzk0YzNlZTQ2ZjBmLTUwMHgyODEuanBnIjt9aTozO2E6NTp7czoxNjoicnBncF9pbWFnZV9sYWJlbCI7czo4OiJzbGlkZXIgNCI7czoxNToicnBncF9pbWFnZV9kZXNjIjtzOjE2OiJ0aGlzIGlzIHNsaWRlciA0IjtzOjE0OiJycGdwX2ltYWdlX3VybCI7czo5ODoiaHR0cDovL2xvY2FsaG9zdC93b3JkcHJlc3Mvd3AtY29udGVudC91cGxvYWRzLzIwMTkvMTIvOTE3ZjJhODlkODAxZThmYzhhODg1NDgwOTY5ZTE3NDVjNDE4OTZmOC5qcGciO3M6MjI6InJwZ2dhbGxlcnlfYWRtaW5fdGh1bWIiO3M6MTA2OiJodHRwOi8vbG9jYWxob3N0L3dvcmRwcmVzcy93cC1jb250ZW50L3VwbG9hZHMvMjAxOS8xMi85MTdmMmE4OWQ4MDFlOGZjOGE4ODU0ODA5NjllMTc0NWM0MTg5NmY4LTMwMHgzMDAuanBnIjtzOjIyOiJycGdnYWxsZXJ5X2FkbWluX2xhcmdlIjtzOjEwNjoiaHR0cDovL2xvY2FsaG9zdC93b3JkcHJlc3Mvd3AtY29udGVudC91cGxvYWRzLzIwMTkvMTIvOTE3ZjJhODlkODAxZThmYzhhODg1NDgwOTY5ZTE3NDVjNDE4OTZmOC01MDB4MjgxLmpwZyI7fX0='),
(288, 56, 'ris_total_images_count', '4'),
(289, 56, 'WRIS_Gallery_Settings_63', 's:1257:\"a:31:{s:19:\"WRIS_L3_Title_Align\";s:1:\"2\";s:19:\"WRIS_L3_Slide_Title\";s:1:\"1\";s:23:\"WRIS_L3_Set_slide_Title\";s:1:\"0\";s:22:\"WRIS_L3_Auto_Slideshow\";s:1:\"1\";s:18:\"WRIS_L3_Transition\";s:1:\"1\";s:24:\"WRIS_L3_Transition_Speed\";s:4:\"5000\";s:21:\"WRIS_L3_Sliding_Arrow\";s:1:\"1\";s:25:\"WRIS_L3_Slider_Navigation\";s:1:\"1\";s:25:\"WRIS_L3_Navigation_Button\";s:1:\"1\";s:20:\"WRIS_L3_Slider_Width\";s:4:\"1000\";s:21:\"WRIS_L3_Slider_Height\";s:3:\"500\";s:18:\"WRIS_L3_Font_Style\";s:5:\"Arial\";s:19:\"WRIS_L3_Title_Color\";s:6:\"#00000\";s:25:\"WRIS_L3_Slider_Scale_Mode\";s:5:\"cover\";s:25:\"WRIS_L3_Slider_Auto_Scale\";s:1:\"1\";s:21:\"WRIS_L3_Title_BgColor\";s:7:\"#FFFFFF\";s:18:\"WRIS_L3_Desc_Color\";s:7:\"#FFFFFF\";s:20:\"WRIS_L3_Desc_BgColor\";s:6:\"#00000\";s:24:\"WRIS_L3_Navigation_Color\";s:7:\"#FFFFFF\";s:19:\"WRIS_L3_Fullscreeen\";s:1:\"1\";s:18:\"WRIS_L3_Custom_CSS\";s:0:\"\";s:19:\"WRIS_L3_Slide_Order\";s:3:\"ASC\";s:27:\"WRIS_L3_Navigation_Position\";s:6:\"bottom\";s:22:\"WRIS_L3_Slide_Distance\";s:1:\"5\";s:23:\"WRIS_L3_Thumbnail_Style\";s:6:\"border\";s:23:\"WRIS_L3_Thumbnail_Width\";s:3:\"120\";s:24:\"WRIS_L3_Thumbnail_Height\";s:3:\"120\";s:13:\"WRIS_L3_Width\";s:6:\"custom\";s:14:\"WRIS_L3_Height\";s:6:\"custom\";s:32:\"WRIS_L3_Navigation_Bullets_Color\";s:7:\"#000000\";s:32:\"WRIS_L3_Navigation_Pointer_Color\";s:7:\"#000000\";}\";'),
(290, 56, 'WRIS_Gallery_Settings_56', 's:1683:\"a:31:{s:19:\"WRIS_L3_Title_Align\";s:1:\"2\";s:19:\"WRIS_L3_Slide_Title\";s:1:\"0\";s:23:\"WRIS_L3_Set_slide_Title\";s:1:\"0\";s:22:\"WRIS_L3_Auto_Slideshow\";s:1:\"3\";s:18:\"WRIS_L3_Transition\";s:1:\"1\";s:24:\"WRIS_L3_Transition_Speed\";s:4:\"5000\";s:21:\"WRIS_L3_Sliding_Arrow\";s:1:\"1\";s:25:\"WRIS_L3_Slider_Navigation\";s:1:\"0\";s:25:\"WRIS_L3_Navigation_Button\";s:1:\"0\";s:20:\"WRIS_L3_Slider_Width\";s:4:\"1000\";s:21:\"WRIS_L3_Slider_Height\";s:3:\"544\";s:18:\"WRIS_L3_Font_Style\";s:5:\"Arial\";s:19:\"WRIS_L3_Title_Color\";s:6:\"#00000\";s:25:\"WRIS_L3_Slider_Scale_Mode\";s:5:\"cover\";s:25:\"WRIS_L3_Slider_Auto_Scale\";s:1:\"1\";s:21:\"WRIS_L3_Title_BgColor\";s:7:\"#FFFFFF\";s:18:\"WRIS_L3_Desc_Color\";s:7:\"#FFFFFF\";s:20:\"WRIS_L3_Desc_BgColor\";s:6:\"#00000\";s:24:\"WRIS_L3_Navigation_Color\";s:7:\"#FFFFFF\";s:19:\"WRIS_L3_Fullscreeen\";s:1:\"0\";s:18:\"WRIS_L3_Custom_CSS\";s:426:\".title-in, .desc-in{ background-color: transparent !important; opacity: 1 !important; } #example3_56 .title-in-bg{ font-size: 70px !important; font-weight: 700 !important; color: white; background: transparent !important; bottom: -50% !important;} #example3_56 .desc-in-bg{ font-size: 16px !important; font-weight: 500 !important; line-height: 24px; color: white; background: transparent !important; bottom: -50% !important; }\";s:19:\"WRIS_L3_Slide_Order\";s:3:\"ASC\";s:27:\"WRIS_L3_Navigation_Position\";s:6:\"bottom\";s:22:\"WRIS_L3_Slide_Distance\";s:1:\"5\";s:23:\"WRIS_L3_Thumbnail_Style\";s:6:\"border\";s:23:\"WRIS_L3_Thumbnail_Width\";s:3:\"120\";s:24:\"WRIS_L3_Thumbnail_Height\";s:3:\"120\";s:13:\"WRIS_L3_Width\";s:4:\"100%\";s:14:\"WRIS_L3_Height\";s:6:\"custom\";s:32:\"WRIS_L3_Navigation_Bullets_Color\";s:7:\"#000000\";s:32:\"WRIS_L3_Navigation_Pointer_Color\";s:7:\"#000000\";}\";'),
(291, 56, '_edit_lock', '1576260309:1'),
(292, 56, 'WRIS_Gallery_Settings_64', 's:1257:\"a:31:{s:19:\"WRIS_L3_Title_Align\";s:1:\"2\";s:19:\"WRIS_L3_Slide_Title\";s:1:\"1\";s:23:\"WRIS_L3_Set_slide_Title\";s:1:\"0\";s:22:\"WRIS_L3_Auto_Slideshow\";s:1:\"1\";s:18:\"WRIS_L3_Transition\";s:1:\"1\";s:24:\"WRIS_L3_Transition_Speed\";s:4:\"5000\";s:21:\"WRIS_L3_Sliding_Arrow\";s:1:\"1\";s:25:\"WRIS_L3_Slider_Navigation\";s:1:\"1\";s:25:\"WRIS_L3_Navigation_Button\";s:1:\"1\";s:20:\"WRIS_L3_Slider_Width\";s:4:\"1000\";s:21:\"WRIS_L3_Slider_Height\";s:3:\"500\";s:18:\"WRIS_L3_Font_Style\";s:5:\"Arial\";s:19:\"WRIS_L3_Title_Color\";s:6:\"#00000\";s:25:\"WRIS_L3_Slider_Scale_Mode\";s:5:\"cover\";s:25:\"WRIS_L3_Slider_Auto_Scale\";s:1:\"1\";s:21:\"WRIS_L3_Title_BgColor\";s:7:\"#FFFFFF\";s:18:\"WRIS_L3_Desc_Color\";s:7:\"#FFFFFF\";s:20:\"WRIS_L3_Desc_BgColor\";s:6:\"#00000\";s:24:\"WRIS_L3_Navigation_Color\";s:7:\"#FFFFFF\";s:19:\"WRIS_L3_Fullscreeen\";s:1:\"1\";s:18:\"WRIS_L3_Custom_CSS\";s:0:\"\";s:19:\"WRIS_L3_Slide_Order\";s:3:\"ASC\";s:27:\"WRIS_L3_Navigation_Position\";s:6:\"bottom\";s:22:\"WRIS_L3_Slide_Distance\";s:1:\"5\";s:23:\"WRIS_L3_Thumbnail_Style\";s:6:\"border\";s:23:\"WRIS_L3_Thumbnail_Width\";s:3:\"120\";s:24:\"WRIS_L3_Thumbnail_Height\";s:3:\"120\";s:13:\"WRIS_L3_Width\";s:6:\"custom\";s:14:\"WRIS_L3_Height\";s:6:\"custom\";s:32:\"WRIS_L3_Navigation_Bullets_Color\";s:7:\"#000000\";s:32:\"WRIS_L3_Navigation_Pointer_Color\";s:7:\"#000000\";}\";'),
(293, 65, 'gallery_images', ''),
(294, 65, '_gallery_images', 'field_5dd67d4da3e0e'),
(295, 67, 'gallery_images', ''),
(296, 67, '_gallery_images', 'field_5dd67d4da3e0e'),
(297, 69, 'gallery_images', ''),
(298, 69, '_gallery_images', 'field_5dd67d4da3e0e'),
(299, 71, '_edit_last', '1'),
(300, 71, '_edit_lock', '1574357756:1'),
(301, 71, 'wpsisac_slide_link', ''),
(302, 72, '_edit_last', '1'),
(303, 72, 'wpsisac_slide_link', ''),
(304, 72, '_edit_lock', '1574353749:1'),
(305, 73, 'gallery_images', ''),
(306, 73, '_gallery_images', 'field_5dd67d4da3e0e'),
(307, 75, 'gallery_images', ''),
(308, 75, '_gallery_images', 'field_5dd67d4da3e0e'),
(309, 77, '_edit_last', '1'),
(310, 77, '_edit_lock', '1574357769:1'),
(311, 77, 'wpsisac_slide_link', 'http://www.google.com'),
(312, 78, 'gallery_images', ''),
(313, 78, '_gallery_images', 'field_5dd67d4da3e0e'),
(314, 80, 'gallery_images', ''),
(315, 80, '_gallery_images', 'field_5dd67d4da3e0e'),
(316, 82, 'gallery_images', ''),
(317, 82, '_gallery_images', 'field_5dd67d4da3e0e'),
(318, 83, 'gallery_images', ''),
(319, 83, '_gallery_images', 'field_5dd67d4da3e0e'),
(320, 84, 'gallery_images', ''),
(321, 84, '_gallery_images', 'field_5dd67d4da3e0e'),
(322, 86, 'gallery_images', ''),
(323, 86, '_gallery_images', 'field_5dd67d4da3e0e'),
(324, 89, 'gallery_images', ''),
(325, 89, '_gallery_images', 'field_5dd67d4da3e0e'),
(328, 92, '_edit_lock', '1577723517:1'),
(331, 33, '_wp_page_template', 'home.php'),
(332, 95, 'gallery_images', ''),
(333, 95, '_gallery_images', 'field_5dd67d4da3e0e'),
(334, 96, 'gallery_images', ''),
(335, 96, '_gallery_images', 'field_5dd67d4da3e0e'),
(344, 102, 'gallery_images', ''),
(345, 102, '_gallery_images', 'field_5dd67d4da3e0e'),
(346, 103, 'gallery_images', ''),
(347, 103, '_gallery_images', 'field_5dd67d4da3e0e'),
(354, 108, '_edit_last', '1'),
(355, 108, '_edit_lock', '1574677346:1'),
(356, 113, 'gallery_images', ''),
(357, 113, '_gallery_images', 'field_5dd67d4da3e0e'),
(358, 116, 'gallery_images', ''),
(359, 116, '_gallery_images', 'field_5dd67d4da3e0e'),
(360, 118, 'gallery_images', ''),
(361, 118, '_gallery_images', 'field_5dd67d4da3e0e'),
(362, 121, 'gallery_images', ''),
(363, 121, '_gallery_images', 'field_5dd67d4da3e0e'),
(364, 123, 'gallery_images', ''),
(365, 123, '_gallery_images', 'field_5dd67d4da3e0e'),
(366, 125, 'gallery_images', ''),
(367, 125, '_gallery_images', 'field_5dd67d4da3e0e'),
(368, 128, 'gallery_images', ''),
(369, 128, '_gallery_images', 'field_5dd67d4da3e0e'),
(372, 132, 'gallery_images', ''),
(373, 132, '_gallery_images', 'field_5dd67d4da3e0e'),
(374, 133, 'gallery_images', ''),
(375, 133, '_gallery_images', 'field_5dd67d4da3e0e'),
(376, 135, 'gallery_images', ''),
(377, 135, '_gallery_images', 'field_5dd67d4da3e0e'),
(390, 142, 'gallery_images', ''),
(391, 142, '_gallery_images', 'field_5dd67d4da3e0e'),
(392, 144, 'gallery_images', ''),
(393, 144, '_gallery_images', 'field_5dd67d4da3e0e'),
(403, 1, '_thumbnail_id', '242'),
(406, 150, '_edit_lock', '1576258860:1'),
(407, 150, '_edit_last', '1'),
(408, 150, 'gallery_images', ''),
(409, 150, '_gallery_images', 'field_5dd67d4da3e0e'),
(410, 151, 'gallery_images', ''),
(411, 151, '_gallery_images', 'field_5dd67d4da3e0e'),
(412, 150, '_wp_page_template', 'page-single-blog.php'),
(415, 31, 'portfolio_gallery', 'a:20:{i:0;s:3:\"141\";i:1;s:3:\"140\";i:2;s:3:\"139\";i:3;s:3:\"138\";i:4;s:3:\"137\";i:5;s:3:\"136\";i:6;s:3:\"130\";i:7;s:2:\"55\";i:8;s:2:\"57\";i:9;s:2:\"58\";i:10;s:2:\"59\";i:11;s:2:\"60\";i:12;s:2:\"61\";i:13;s:2:\"62\";i:14;s:2:\"16\";i:15;s:2:\"15\";i:16;s:2:\"14\";i:17;s:2:\"13\";i:18;s:2:\"12\";i:19;s:2:\"11\";}'),
(416, 31, '_portfolio_gallery', 'field_5dd8aab88f0ba'),
(421, 158, '_menu_item_type', 'custom'),
(422, 158, '_menu_item_menu_item_parent', '0'),
(423, 158, '_menu_item_object_id', '158'),
(424, 158, '_menu_item_object', 'custom'),
(425, 158, '_menu_item_target', ''),
(426, 158, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(427, 158, '_menu_item_xfn', ''),
(428, 158, '_menu_item_url', '#'),
(430, 159, '_menu_item_type', 'custom'),
(431, 159, '_menu_item_menu_item_parent', '0'),
(432, 159, '_menu_item_object_id', '159'),
(433, 159, '_menu_item_object', 'custom'),
(434, 159, '_menu_item_target', ''),
(435, 159, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(436, 159, '_menu_item_xfn', ''),
(437, 159, '_menu_item_url', '#'),
(439, 31, '_wp_page_template', 'page-portfolio.php'),
(464, 166, 'gallery_images', ''),
(465, 166, '_gallery_images', 'field_5dd67d4da3e0e'),
(466, 166, 'portfolio_gallery', 'a:20:{i:0;s:3:\"141\";i:1;s:3:\"140\";i:2;s:3:\"139\";i:3;s:3:\"138\";i:4;s:3:\"137\";i:5;s:3:\"136\";i:6;s:3:\"130\";i:7;s:2:\"55\";i:8;s:2:\"57\";i:9;s:2:\"58\";i:10;s:2:\"59\";i:11;s:2:\"60\";i:12;s:2:\"61\";i:13;s:2:\"62\";i:14;s:2:\"16\";i:15;s:2:\"15\";i:16;s:2:\"14\";i:17;s:2:\"13\";i:18;s:2:\"12\";i:19;s:2:\"11\";}'),
(467, 166, '_portfolio_gallery', 'field_5dd8aab88f0ba'),
(470, 92, '_wp_page_template', 'default'),
(471, 92, '_edit_last', '1'),
(476, 1, '_wp_page_template', 'default'),
(477, 1, '_edit_last', '1'),
(480, 167, 'gallery_images', ''),
(481, 167, '_gallery_images', 'field_5dd67d4da3e0e'),
(482, 167, 'portfolio_gallery', 'a:20:{i:0;s:3:\"141\";i:1;s:3:\"140\";i:2;s:3:\"139\";i:3;s:3:\"138\";i:4;s:3:\"137\";i:5;s:3:\"136\";i:6;s:3:\"130\";i:7;s:2:\"55\";i:8;s:2:\"57\";i:9;s:2:\"58\";i:10;s:2:\"59\";i:11;s:2:\"60\";i:12;s:2:\"61\";i:13;s:2:\"62\";i:14;s:2:\"16\";i:15;s:2:\"15\";i:16;s:2:\"14\";i:17;s:2:\"13\";i:18;s:2:\"12\";i:19;s:2:\"11\";}'),
(483, 167, '_portfolio_gallery', 'field_5dd8aab88f0ba'),
(484, 168, 'gallery_images', ''),
(485, 168, '_gallery_images', 'field_5dd67d4da3e0e'),
(486, 168, 'portfolio_gallery', 'a:20:{i:0;s:3:\"141\";i:1;s:3:\"140\";i:2;s:3:\"139\";i:3;s:3:\"138\";i:4;s:3:\"137\";i:5;s:3:\"136\";i:6;s:3:\"130\";i:7;s:2:\"55\";i:8;s:2:\"57\";i:9;s:2:\"58\";i:10;s:2:\"59\";i:11;s:2:\"60\";i:12;s:2:\"61\";i:13;s:2:\"62\";i:14;s:2:\"16\";i:15;s:2:\"15\";i:16;s:2:\"14\";i:17;s:2:\"13\";i:18;s:2:\"12\";i:19;s:2:\"11\";}'),
(487, 168, '_portfolio_gallery', 'field_5dd8aab88f0ba'),
(488, 170, 'gallery_images', ''),
(489, 170, '_gallery_images', 'field_5dd67d4da3e0e'),
(490, 170, 'portfolio_gallery', 'a:20:{i:0;s:3:\"141\";i:1;s:3:\"140\";i:2;s:3:\"139\";i:3;s:3:\"138\";i:4;s:3:\"137\";i:5;s:3:\"136\";i:6;s:3:\"130\";i:7;s:2:\"55\";i:8;s:2:\"57\";i:9;s:2:\"58\";i:10;s:2:\"59\";i:11;s:2:\"60\";i:12;s:2:\"61\";i:13;s:2:\"62\";i:14;s:2:\"16\";i:15;s:2:\"15\";i:16;s:2:\"14\";i:17;s:2:\"13\";i:18;s:2:\"12\";i:19;s:2:\"11\";}'),
(491, 170, '_portfolio_gallery', 'field_5dd8aab88f0ba'),
(522, 176, 'gallery_images', ''),
(523, 176, '_gallery_images', 'field_5dd67d4da3e0e'),
(524, 178, 'gallery_images', ''),
(525, 178, '_gallery_images', 'field_5dd67d4da3e0e'),
(528, 180, '_edit_lock', '1574747228:1'),
(529, 180, '_edit_last', '1'),
(530, 180, 'gallery_images', ''),
(531, 180, '_gallery_images', 'field_5dd67d4da3e0e'),
(532, 181, 'gallery_images', ''),
(533, 181, '_gallery_images', 'field_5dd67d4da3e0e'),
(534, 180, '_wp_page_template', 'author.php'),
(535, 183, '_edit_lock', '1577802204:1'),
(536, 183, '_thumbnail_id', '253'),
(537, 185, '_edit_lock', '1576590641:1'),
(539, 187, '_edit_lock', '1576590602:1'),
(540, 187, '_thumbnail_id', '250'),
(541, 189, '_edit_lock', '1577812064:1'),
(542, 189, '_edit_last', '1'),
(543, 189, '_thumbnail_id', '251'),
(551, 197, 'gallery_images', ''),
(552, 197, '_gallery_images', 'field_5dd67d4da3e0e'),
(553, 200, '_edit_lock', '1577811757:1'),
(556, 200, '_edit_last', '2'),
(560, 202, '_edit_lock', '1577857547:1'),
(561, 202, '_edit_last', '1'),
(563, 205, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(564, 205, '_mail', 'a:8:{s:7:\"subject\";s:26:\"DesignFly \"[your-subject]\"\";s:6:\"sender\";s:35:\"DesignFly <wordpress@192.168.1.180>\";s:4:\"body\";s:178:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on DesignFly (http://192.168.1.180/designfly)\";s:9:\"recipient\";s:23:\"itw.abhisheks@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(565, 205, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:26:\"DesignFly \"[your-subject]\"\";s:6:\"sender\";s:35:\"DesignFly <wordpress@192.168.1.180>\";s:4:\"body\";s:120:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on DesignFly (http://192.168.1.180/designfly)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:33:\"Reply-To: itw.abhisheks@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(566, 205, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(567, 205, '_additional_settings', NULL),
(568, 205, '_locale', 'en_US'),
(588, 215, 'gallery_images', ''),
(589, 215, '_gallery_images', 'field_5dd67d4da3e0e'),
(592, 218, 'gallery_images', ''),
(593, 218, '_gallery_images', 'field_5dd67d4da3e0e'),
(596, 221, 'gallery_images', ''),
(597, 221, '_gallery_images', 'field_5dd67d4da3e0e'),
(598, 222, '_edit_lock', '1576590583:1'),
(599, 222, '_thumbnail_id', '252'),
(600, 223, '_edit_lock', '1576590594:1'),
(601, 223, '_thumbnail_id', '251'),
(602, 224, '_edit_lock', '1576593632:1'),
(603, 224, '_thumbnail_id', '249'),
(604, 225, '_edit_lock', '1576590623:1'),
(606, 226, '_edit_lock', '1576590633:1'),
(607, 226, '_thumbnail_id', '253'),
(608, 227, '_edit_lock', '1574764462:1'),
(609, 227, '_wp_page_template', 'category.php'),
(610, 227, '_edit_last', '1'),
(611, 227, 'gallery_images', ''),
(612, 227, '_gallery_images', 'field_5dd67d4da3e0e'),
(613, 228, 'gallery_images', ''),
(614, 228, '_gallery_images', 'field_5dd67d4da3e0e'),
(615, 229, '_edit_lock', '1574770664:1'),
(616, 229, '_wp_page_template', 'date.php'),
(617, 229, '_edit_last', '1'),
(618, 229, 'gallery_images', ''),
(619, 229, '_gallery_images', 'field_5dd67d4da3e0e'),
(620, 230, 'gallery_images', ''),
(621, 230, '_gallery_images', 'field_5dd67d4da3e0e'),
(624, 232, '_edit_lock', '1574762977:1'),
(625, 232, '_wp_page_template', 'tag.php'),
(626, 232, '_edit_last', '1'),
(627, 232, 'gallery_images', ''),
(628, 232, '_gallery_images', 'field_5dd67d4da3e0e'),
(629, 233, 'gallery_images', ''),
(630, 233, '_gallery_images', 'field_5dd67d4da3e0e'),
(640, 234, 'gallery_images', ''),
(641, 234, '_gallery_images', 'field_5dd67d4da3e0e'),
(642, 225, '_thumbnail_id', '248'),
(643, 236, '_wp_attached_file', '2019/11/16b1a43eb3ec896589e1f78691b57c30659c0665.jpg'),
(644, 236, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:52:\"2019/11/16b1a43eb3ec896589e1f78691b57c30659c0665.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"16b1a43eb3ec896589e1f78691b57c30659c0665-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"16b1a43eb3ec896589e1f78691b57c30659c0665-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:52:\"16b1a43eb3ec896589e1f78691b57c30659c0665-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:53:\"16b1a43eb3ec896589e1f78691b57c30659c0665-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"rpggallery_admin_thumb\";a:4:{s:4:\"file\";s:52:\"16b1a43eb3ec896589e1f78691b57c30659c0665-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"rpggallery_admin_large\";a:4:{s:4:\"file\";s:52:\"16b1a43eb3ec896589e1f78691b57c30659c0665-500x281.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:281;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"rpg_gallery_admin_thumb\";a:4:{s:4:\"file\";s:52:\"16b1a43eb3ec896589e1f78691b57c30659c0665-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"rpg_gallery_thumb\";a:4:{s:4:\"file\";s:52:\"16b1a43eb3ec896589e1f78691b57c30659c0665-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:53:\"16b1a43eb3ec896589e1f78691b57c30659c0665-1200x675.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:675;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(649, 242, '_wp_attached_file', '2019/11/ca52a3bb075fe6388012207c4c19394c3ee46f0f.jpg'),
(650, 242, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:52:\"2019/11/ca52a3bb075fe6388012207c4c19394c3ee46f0f.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"ca52a3bb075fe6388012207c4c19394c3ee46f0f-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"ca52a3bb075fe6388012207c4c19394c3ee46f0f-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:52:\"ca52a3bb075fe6388012207c4c19394c3ee46f0f-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:53:\"ca52a3bb075fe6388012207c4c19394c3ee46f0f-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"rpggallery_admin_thumb\";a:4:{s:4:\"file\";s:52:\"ca52a3bb075fe6388012207c4c19394c3ee46f0f-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"rpggallery_admin_large\";a:4:{s:4:\"file\";s:52:\"ca52a3bb075fe6388012207c4c19394c3ee46f0f-500x281.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:281;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"rpg_gallery_admin_thumb\";a:4:{s:4:\"file\";s:52:\"ca52a3bb075fe6388012207c4c19394c3ee46f0f-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"rpg_gallery_thumb\";a:4:{s:4:\"file\";s:52:\"ca52a3bb075fe6388012207c4c19394c3ee46f0f-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:53:\"ca52a3bb075fe6388012207c4c19394c3ee46f0f-1200x675.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:675;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(651, 243, '_wp_attached_file', '2019/11/d4d3ac5d3ba5468d2c764303cc76b37380925d5e.jpg'),
(652, 243, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:52:\"2019/11/d4d3ac5d3ba5468d2c764303cc76b37380925d5e.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"d4d3ac5d3ba5468d2c764303cc76b37380925d5e-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"d4d3ac5d3ba5468d2c764303cc76b37380925d5e-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:52:\"d4d3ac5d3ba5468d2c764303cc76b37380925d5e-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:53:\"d4d3ac5d3ba5468d2c764303cc76b37380925d5e-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"rpggallery_admin_thumb\";a:4:{s:4:\"file\";s:52:\"d4d3ac5d3ba5468d2c764303cc76b37380925d5e-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"rpggallery_admin_large\";a:4:{s:4:\"file\";s:52:\"d4d3ac5d3ba5468d2c764303cc76b37380925d5e-500x281.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:281;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"rpg_gallery_admin_thumb\";a:4:{s:4:\"file\";s:52:\"d4d3ac5d3ba5468d2c764303cc76b37380925d5e-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"rpg_gallery_thumb\";a:4:{s:4:\"file\";s:52:\"d4d3ac5d3ba5468d2c764303cc76b37380925d5e-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:53:\"d4d3ac5d3ba5468d2c764303cc76b37380925d5e-1200x675.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:675;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(655, 245, 'gallery_images', ''),
(656, 245, '_gallery_images', 'field_5dd67d4da3e0e'),
(657, 245, 'portfolio_gallery', 'a:20:{i:0;s:3:\"141\";i:1;s:3:\"140\";i:2;s:3:\"139\";i:3;s:3:\"138\";i:4;s:3:\"137\";i:5;s:3:\"136\";i:6;s:3:\"130\";i:7;s:2:\"55\";i:8;s:2:\"57\";i:9;s:2:\"58\";i:10;s:2:\"59\";i:11;s:2:\"60\";i:12;s:2:\"61\";i:13;s:2:\"62\";i:14;s:2:\"16\";i:15;s:2:\"15\";i:16;s:2:\"14\";i:17;s:2:\"13\";i:18;s:2:\"12\";i:19;s:2:\"11\";}'),
(658, 245, '_portfolio_gallery', 'field_5dd8aab88f0ba'),
(659, 246, '_wp_attached_file', '2019/12/feature-icons.png'),
(660, 246, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:172;s:6:\"height\";i:113;s:4:\"file\";s:25:\"2019/12/feature-icons.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"feature-icons-150x113.png\";s:5:\"width\";i:150;s:6:\"height\";i:113;s:9:\"mime-type\";s:9:\"image/png\";}s:23:\"rpg_gallery_admin_thumb\";a:4:{s:4:\"file\";s:25:\"feature-icons-150x113.png\";s:5:\"width\";i:150;s:6:\"height\";i:113;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"rpg_gallery_thumb\";a:4:{s:4:\"file\";s:25:\"feature-icons-150x113.png\";s:5:\"width\";i:150;s:6:\"height\";i:113;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(663, 248, '_wp_attached_file', '2019/12/image-1-1.png'),
(664, 248, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:214;s:4:\"file\";s:21:\"2019/12/image-1-1.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"image-1-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"image-1-1-300x214.png\";s:5:\"width\";i:300;s:6:\"height\";i:214;s:9:\"mime-type\";s:9:\"image/png\";}s:22:\"rpggallery_admin_thumb\";a:4:{s:4:\"file\";s:21:\"image-1-1-300x214.png\";s:5:\"width\";i:300;s:6:\"height\";i:214;s:9:\"mime-type\";s:9:\"image/png\";}s:23:\"rpg_gallery_admin_thumb\";a:4:{s:4:\"file\";s:21:\"image-1-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"rpg_gallery_thumb\";a:4:{s:4:\"file\";s:21:\"image-1-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(665, 249, '_wp_attached_file', '2019/12/image-2-1.png'),
(666, 249, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:372;s:4:\"file\";s:21:\"2019/12/image-2-1.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"image-2-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"image-2-1-300x233.png\";s:5:\"width\";i:300;s:6:\"height\";i:233;s:9:\"mime-type\";s:9:\"image/png\";}s:22:\"rpggallery_admin_thumb\";a:4:{s:4:\"file\";s:21:\"image-2-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:23:\"rpg_gallery_admin_thumb\";a:4:{s:4:\"file\";s:21:\"image-2-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"rpg_gallery_thumb\";a:4:{s:4:\"file\";s:21:\"image-2-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(667, 250, '_wp_attached_file', '2019/12/image-3-1.png'),
(668, 250, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:550;s:6:\"height\";i:550;s:4:\"file\";s:21:\"2019/12/image-3-1.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"image-3-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"image-3-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:22:\"rpggallery_admin_thumb\";a:4:{s:4:\"file\";s:21:\"image-3-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:22:\"rpggallery_admin_large\";a:4:{s:4:\"file\";s:21:\"image-3-1-500x500.png\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}s:23:\"rpg_gallery_admin_thumb\";a:4:{s:4:\"file\";s:21:\"image-3-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"rpg_gallery_thumb\";a:4:{s:4:\"file\";s:21:\"image-3-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(669, 251, '_wp_attached_file', '2019/12/image-4-1.png'),
(670, 251, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:305;s:6:\"height\";i:307;s:4:\"file\";s:21:\"2019/12/image-4-1.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"image-4-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"image-4-1-298x300.png\";s:5:\"width\";i:298;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:22:\"rpggallery_admin_thumb\";a:4:{s:4:\"file\";s:21:\"image-4-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:23:\"rpg_gallery_admin_thumb\";a:4:{s:4:\"file\";s:21:\"image-4-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"rpg_gallery_thumb\";a:4:{s:4:\"file\";s:21:\"image-4-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(671, 252, '_wp_attached_file', '2019/12/image-5-1.png'),
(672, 252, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:612;s:6:\"height\";i:612;s:4:\"file\";s:21:\"2019/12/image-5-1.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"image-5-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"image-5-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:22:\"rpggallery_admin_thumb\";a:4:{s:4:\"file\";s:21:\"image-5-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:22:\"rpggallery_admin_large\";a:4:{s:4:\"file\";s:21:\"image-5-1-500x500.png\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}s:23:\"rpg_gallery_admin_thumb\";a:4:{s:4:\"file\";s:21:\"image-5-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"rpg_gallery_thumb\";a:4:{s:4:\"file\";s:21:\"image-5-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(673, 253, '_wp_attached_file', '2019/12/image-6-1.png'),
(674, 253, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:313;s:6:\"height\";i:316;s:4:\"file\";s:21:\"2019/12/image-6-1.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"image-6-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"image-6-1-297x300.png\";s:5:\"width\";i:297;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:22:\"rpggallery_admin_thumb\";a:4:{s:4:\"file\";s:21:\"image-6-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:23:\"rpg_gallery_admin_thumb\";a:4:{s:4:\"file\";s:21:\"image-6-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"rpg_gallery_thumb\";a:4:{s:4:\"file\";s:21:\"image-6-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(675, 185, '_thumbnail_id', '252'),
(676, 256, '_edit_lock', '1577801110:1'),
(677, 256, '_edit_last', '1'),
(680, 264, '_edit_lock', '1577801112:1'),
(681, 264, '_edit_last', '1'),
(682, 266, '_edit_lock', '1577801112:1'),
(683, 266, '_edit_last', '1'),
(684, 268, '_edit_lock', '1577801113:1'),
(685, 268, '_edit_last', '1'),
(686, 270, '_edit_lock', '1577799978:1'),
(799, 342, '_edit_lock', '1577612610:1'),
(832, 270, '_thumbnail_id', '236'),
(925, 200, '_thumbnail_id', '243'),
(950, 416, '_wp_attached_file', '2019/12/f1775ff4377209347d1c486d3a619e7c75a3cbfb.jpg'),
(951, 416, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:52:\"2019/12/f1775ff4377209347d1c486d3a619e7c75a3cbfb.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"f1775ff4377209347d1c486d3a619e7c75a3cbfb-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"f1775ff4377209347d1c486d3a619e7c75a3cbfb-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:52:\"f1775ff4377209347d1c486d3a619e7c75a3cbfb-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:53:\"f1775ff4377209347d1c486d3a619e7c75a3cbfb-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:53:\"f1775ff4377209347d1c486d3a619e7c75a3cbfb-1200x675.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:675;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(954, 108, '_wp_trash_meta_status', 'publish'),
(955, 108, '_wp_trash_meta_time', '1577858723'),
(956, 108, '_wp_desired_post_slug', 'group_5dd7aa3d7bfc4'),
(957, 109, '_wp_trash_meta_status', 'publish'),
(958, 109, '_wp_trash_meta_time', '1577858723'),
(959, 109, '_wp_desired_post_slug', 'field_5dd7aa4ec89fc'),
(960, 9, '_wp_trash_meta_status', 'publish'),
(961, 9, '_wp_trash_meta_time', '1577858803'),
(962, 9, '_wp_desired_post_slug', 'group_5dd67ca6b8fcc'),
(963, 10, '_wp_trash_meta_status', 'publish'),
(964, 10, '_wp_trash_meta_time', '1577858803'),
(965, 10, '_wp_desired_post_slug', 'field_5dd67d4da3e0e');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-11-21 08:41:00', '2019-11-21 08:41:00', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-12-30 16:34:41', '2019-12-30 16:34:41', '', 0, 'http://localhost/designfly/?p=1', 0, 'post', '', 4),
(2, 1, '2019-11-21 08:41:00', '2019-11-21 08:41:00', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/designfly/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2019-11-21 12:53:20', '2019-11-21 12:53:20', '', 0, 'http://localhost/designfly/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-11-21 08:41:00', '2019-11-21 08:41:00', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/designfly.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-11-21 08:41:00', '2019-11-21 08:41:00', '', 0, 'http://localhost/designfly/?page_id=3', 0, 'page', '', 0),
(9, 1, '2019-11-21 12:03:56', '2019-11-21 12:03:56', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Gallery Images', 'gallery-images', 'trash', 'closed', 'closed', '', 'group_5dd67ca6b8fcc__trashed', '', '', '2020-01-01 06:06:43', '2020-01-01 06:06:43', '', 0, 'http://192.168.1.180/designfly/?post_type=acf-field-group&#038;p=9', 0, 'acf-field-group', '', 0),
(10, 1, '2019-11-21 12:05:12', '2019-11-21 12:05:12', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Gallery_images', 'gallery_images', 'trash', 'closed', 'closed', '', 'field_5dd67d4da3e0e__trashed', '', '', '2020-01-01 06:06:43', '2020-01-01 06:06:43', '', 9, 'http://192.168.1.180/designfly/?post_type=acf-field&#038;p=10', 0, 'acf-field', '', 0),
(18, 1, '2019-11-21 12:41:49', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-11-21 12:41:49', '0000-00-00 00:00:00', '', 0, 'http://192.168.1.180/designfly/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2019-11-21 12:41:51', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-11-21 12:41:51', '0000-00-00 00:00:00', '', 0, 'http://192.168.1.180/designfly/?p=19', 1, 'nav_menu_item', '', 0),
(21, 1, '2019-11-21 12:44:13', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-11-21 12:44:13', '0000-00-00 00:00:00', '', 0, 'http://192.168.1.180/designfly/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2019-11-21 12:44:43', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-11-21 12:44:43', '0000-00-00 00:00:00', '', 0, 'http://192.168.1.180/designfly/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2019-11-21 12:44:44', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-11-21 12:44:44', '0000-00-00 00:00:00', '', 0, 'http://192.168.1.180/designfly/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2019-11-21 12:50:17', '2019-11-21 12:50:17', '<!-- wp:acf/slider {\n    \"id\": \"block_5dd7b454bb76a\",\n    \"name\": \"acf\\/slider\",\n    \"data\": {\n        \"slides_0_image\": 219,\n        \"_slides_0_image\": \"field_5dd7aa76c89fd\",\n        \"slides_1_image\": 16,\n        \"_slides_1_image\": \"field_5dd7aa76c89fd\",\n        \"slides_2_image\": 130,\n        \"_slides_2_image\": \"field_5dd7aa76c89fd\",\n        \"slides\": 3,\n        \"_slides\": \"field_5dd7aa4ec89fc\"\n    },\n    \"align\": \"full\",\n    \"mode\": \"edit\"\n} /-->', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-11-25 09:21:54', '2019-11-25 09:21:54', '', 0, 'http://192.168.1.180/designfly/?page_id=24', 0, 'page', '', 0),
(25, 1, '2019-11-21 12:50:17', '2019-11-21 12:50:17', '', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-21 12:50:17', '2019-11-21 12:50:17', '', 24, 'http://192.168.1.180/designfly/2019/11/21/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2019-11-21 12:52:27', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-11-21 12:52:27', '0000-00-00 00:00:00', '', 0, 'http://192.168.1.180/designfly/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2019-11-21 12:52:29', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-11-21 12:52:29', '0000-00-00 00:00:00', '', 0, 'http://192.168.1.180/designfly/?p=27', 1, 'nav_menu_item', '', 0),
(29, 1, '2019-11-21 12:53:35', '2019-11-21 12:53:35', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2019-11-21 12:53:36', '2019-11-21 12:53:36', '', 0, 'http://192.168.1.180/designfly/?page_id=29', 0, 'page', '', 0),
(30, 1, '2019-11-21 12:53:35', '2019-11-21 12:53:35', '', 'Services', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2019-11-21 12:53:35', '2019-11-21 12:53:35', '', 29, 'http://192.168.1.180/designfly/2019/11/21/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2019-11-21 12:53:55', '2019-11-21 12:53:55', '<!-- wp:gallery {\"ids\":[160,161,162,163,164,165],\"linkTo\":\"media\",\"className\":\"columns-3 portfolio-gallery\"} -->\n<figure class=\"wp-block-gallery columns-3 is-cropped portfolio-gallery\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><a href=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-6-3.png\"><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-6-3.png\" alt=\"\" data-id=\"160\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-6-3.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-6-3/\" class=\"wp-image-160\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-5-4.png\"><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-5-4.png\" alt=\"\" data-id=\"161\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-5-4.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-5-4/\" class=\"wp-image-161\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-4-3.png\"><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-4-3.png\" alt=\"\" data-id=\"162\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-4-3.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-4-3/\" class=\"wp-image-162\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-3-3.png\"><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-3-3.png\" alt=\"\" data-id=\"163\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-3-3.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-3-3/\" class=\"wp-image-163\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-2-3.png\"><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-2-3.png\" alt=\"\" data-id=\"164\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-2-3.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-2-3/\" class=\"wp-image-164\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-1-3.png\"><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-1-3.png\" alt=\"\" data-id=\"165\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-1-3.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-1-3/\" class=\"wp-image-165\"/></a></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'Portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio', '', '', '2019-12-06 17:06:26', '2019-12-06 17:06:26', '', 0, 'http://192.168.1.180/designfly/?page_id=31', 0, 'page', '', 0),
(32, 1, '2019-11-21 12:53:55', '2019-11-21 12:53:55', '', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2019-11-21 12:53:55', '2019-11-21 12:53:55', '', 31, 'http://192.168.1.180/designfly/2019/11/21/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2019-11-21 12:54:13', '2019-11-21 12:54:13', '', 'Blog', '', 'publish', 'open', 'closed', '', 'blog', '', '', '2019-11-26 05:39:30', '2019-11-26 05:39:30', '', 0, 'http://192.168.1.180/designfly/?page_id=33', 0, 'page', '', 0),
(34, 1, '2019-11-21 12:54:13', '2019-11-21 12:54:13', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2019-11-21 12:54:13', '2019-11-21 12:54:13', '', 33, 'http://192.168.1.180/designfly/2019/11/21/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2019-11-21 12:54:25', '2019-11-21 12:54:25', '<!-- wp:acf/slider {\n    \"id\": \"block_5dd7b246389f5\",\n    \"name\": \"acf\\/slider\",\n    \"data\": {\n        \"slides_0_image\": 62,\n        \"_slides_0_image\": \"field_5dd7aa76c89fd\",\n        \"slides_1_image\": 61,\n        \"_slides_1_image\": \"field_5dd7aa76c89fd\",\n        \"slides_2_image\": 60,\n        \"_slides_2_image\": \"field_5dd7aa76c89fd\",\n        \"slides\": 3,\n        \"_slides\": \"field_5dd7aa4ec89fc\"\n    },\n    \"align\": \"full\",\n    \"mode\": \"preview\"\n} /-->\n\n<!-- wp:paragraph -->\n<p>Hello There</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-11-22 10:03:02', '2019-11-22 10:03:02', '', 0, 'http://192.168.1.180/designfly/?page_id=35', 0, 'page', '', 0),
(36, 1, '2019-11-21 12:54:25', '2019-11-21 12:54:25', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-11-21 12:54:25', '2019-11-21 12:54:25', '', 35, 'http://192.168.1.180/designfly/2019/11/21/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2019-11-21 12:54:31', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-11-21 12:54:31', '0000-00-00 00:00:00', '', 0, 'http://192.168.1.180/designfly/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2019-11-21 12:54:32', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-11-21 12:54:32', '0000-00-00 00:00:00', '', 0, 'http://192.168.1.180/designfly/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2019-11-21 12:54:34', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-11-21 12:54:34', '0000-00-00 00:00:00', '', 0, 'http://192.168.1.180/designfly/?p=39', 1, 'nav_menu_item', '', 0),
(40, 1, '2019-11-21 12:54:35', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-11-21 12:54:35', '0000-00-00 00:00:00', '', 0, 'http://192.168.1.180/designfly/?p=40', 1, 'nav_menu_item', '', 0),
(41, 1, '2019-11-21 12:54:36', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-11-21 12:54:36', '0000-00-00 00:00:00', '', 0, 'http://192.168.1.180/designfly/?p=41', 1, 'nav_menu_item', '', 0),
(42, 1, '2019-11-21 13:01:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-11-21 13:01:56', '0000-00-00 00:00:00', '', 0, 'http://192.168.1.180/designfly/?p=42', 1, 'nav_menu_item', '', 0),
(43, 1, '2019-11-21 13:01:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-11-21 13:01:58', '0000-00-00 00:00:00', '', 0, 'http://192.168.1.180/designfly/?p=43', 1, 'nav_menu_item', '', 0),
(44, 1, '2019-11-21 13:01:59', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-11-21 13:01:59', '0000-00-00 00:00:00', '', 0, 'http://192.168.1.180/designfly/?p=44', 1, 'nav_menu_item', '', 0),
(45, 1, '2019-11-21 13:02:01', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-11-21 13:02:01', '0000-00-00 00:00:00', '', 0, 'http://192.168.1.180/designfly/?p=45', 1, 'nav_menu_item', '', 0),
(46, 1, '2019-11-21 13:02:02', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-11-21 13:02:02', '0000-00-00 00:00:00', '', 0, 'http://192.168.1.180/designfly/?p=46', 1, 'nav_menu_item', '', 0),
(47, 1, '2019-11-21 13:11:41', '2019-11-21 13:11:41', ' ', '', 'Home', 'publish', 'closed', 'closed', '', '47', '', '', '2019-11-23 06:18:28', '2019-11-23 06:18:28', '', 0, 'http://192.168.1.180/designfly/?p=47', 1, 'nav_menu_item', '', 0),
(48, 1, '2019-11-21 13:11:42', '2019-11-21 13:11:42', ' ', '', 'Blog', 'publish', 'closed', 'closed', '', '48', '', '', '2019-11-23 06:18:29', '2019-11-23 06:18:29', '', 0, 'http://192.168.1.180/designfly/?p=48', 4, 'nav_menu_item', '', 0),
(50, 1, '2019-11-21 13:11:42', '2019-11-21 13:11:42', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2019-11-23 06:18:28', '2019-11-23 06:18:28', '', 0, 'http://192.168.1.180/designfly/?p=50', 3, 'nav_menu_item', '', 0),
(53, 1, '2019-11-21 15:58:39', '2019-11-21 15:58:39', '<!-- wp:nextend/smartslider3 {\"slider\":\"1\"} -->\n<div class=\"wp-block-nextend-smartslider3\">[smartslider3 slider=\"1\"]</div>\n<!-- /wp:nextend/smartslider3 -->', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-21 15:58:39', '2019-11-21 15:58:39', '', 24, 'http://192.168.1.180/designfly/2019/11/21/24-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2019-11-21 16:05:31', '2019-11-21 16:05:31', '', 'home page slider', '', 'publish', 'closed', 'closed', '', '56', '', '', '2019-12-07 06:03:22', '2019-12-07 06:03:22', '', 0, 'http://192.168.1.180/designfly/?post_type=ris_gallery&#038;p=56', 0, 'ris_gallery', '', 0),
(63, 1, '2019-11-21 16:05:31', '2019-11-21 16:05:31', '', '', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2019-11-21 16:05:31', '2019-11-21 16:05:31', '', 56, 'http://192.168.1.180/designfly/2019/11/21/56-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2019-11-21 16:05:51', '2019-11-21 16:05:51', '', 'home page slider', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2019-11-21 16:05:51', '2019-11-21 16:05:51', '', 56, 'http://192.168.1.180/designfly/2019/11/21/56-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2019-11-21 16:06:37', '2019-11-21 16:06:37', '<!-- wp:nextend/smartslider3 {\"slider\":\"1\"} -->\n<div class=\"wp-block-nextend-smartslider3\">[smartslider3 slider=\"1\"]</div>\n<!-- /wp:nextend/smartslider3 -->\n\n<!-- wp:paragraph -->\n<p>[URIS id=56]</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-21 16:06:37', '2019-11-21 16:06:37', '', 24, 'http://192.168.1.180/designfly/2019/11/21/24-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2019-11-21 16:09:45', '2019-11-21 16:09:45', '<!-- wp:paragraph -->\n<p>[URIS id=56]</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-11-21 16:09:45', '2019-11-21 16:09:45', '', 35, 'http://192.168.1.180/designfly/2019/11/21/35-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2019-11-21 16:13:10', '2019-11-21 16:13:10', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-11-21 16:13:10', '2019-11-21 16:13:10', '', 35, 'http://192.168.1.180/designfly/2019/11/21/35-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2019-11-21 16:25:28', '2019-11-21 16:25:28', '<img class=\"alignnone size-medium wp-image-62\" src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-6-1-297x300.png\" alt=\"\" width=\"297\" height=\"300\" /> <img class=\"alignnone size-medium wp-image-61\" src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-5-2-300x300.png\" alt=\"\" width=\"300\" height=\"300\" />', 'Home Slider', '', 'publish', 'closed', 'closed', '', 'home-slider', '', '', '2019-11-21 16:29:45', '2019-11-21 16:29:45', '', 0, 'http://192.168.1.180/designfly/?post_type=slick_slider&#038;p=71', 0, 'slick_slider', '', 0),
(72, 1, '2019-11-21 16:25:54', '2019-11-21 16:25:54', '<img class=\"alignnone size-medium wp-image-59\" src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-3-1-300x300.png\" alt=\"\" width=\"300\" height=\"300\" />', 'Home Page 2', '', 'publish', 'closed', 'closed', '', '72', '', '', '2019-11-21 16:30:04', '2019-11-21 16:30:04', '', 0, 'http://192.168.1.180/designfly/?post_type=slick_slider&#038;p=72', 0, 'slick_slider', '', 0),
(73, 1, '2019-11-21 16:27:11', '2019-11-21 16:27:11', '<!-- wp:paragraph -->\n<p>[slick-carousel-slider]</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-11-21 16:27:11', '2019-11-21 16:27:11', '', 35, 'http://192.168.1.180/designfly/2019/11/21/35-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2019-11-21 16:33:14', '2019-11-21 16:33:14', '<!-- wp:paragraph -->\n<p>[slick-slider]</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-11-21 16:33:14', '2019-11-21 16:33:14', '', 35, 'http://192.168.1.180/designfly/2019/11/21/35-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2019-11-21 16:34:01', '2019-11-21 16:34:01', '<img class=\"alignnone size-full wp-image-16\" src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-1.png\" alt=\"\" width=\"300\" height=\"214\" />', '3', '', 'publish', 'closed', 'closed', '', '3', '', '', '2019-11-21 16:41:48', '2019-11-21 16:41:48', '', 0, 'http://192.168.1.180/designfly/?post_type=slick_slider&#038;p=77', 0, 'slick_slider', '', 0),
(78, 1, '2019-11-21 16:36:29', '2019-11-21 16:36:29', '<!-- wp:table -->\n<figure class=\"wp-block-table\"><table class=\"\"><tbody><tr><td>[slick-carousel-slider]</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-11-21 16:36:29', '2019-11-21 16:36:29', '', 35, 'http://192.168.1.180/designfly/2019/11/21/35-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2019-11-21 16:37:25', '2019-11-21 16:37:25', '<!-- wp:table -->\n<figure class=\"wp-block-table\"><table class=\"\"><tbody><tr><td>[slick-carousel-slider category=\"4\"]</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-11-21 16:37:25', '2019-11-21 16:37:25', '', 35, 'http://192.168.1.180/designfly/2019/11/21/35-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2019-11-22 04:22:33', '2019-11-22 04:22:33', '<!-- wp:paragraph -->\n<p>[URIS id=56]</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-22 04:22:33', '2019-11-22 04:22:33', '', 24, 'http://192.168.1.180/designfly/2019/11/22/24-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2019-11-22 04:29:46', '2019-11-22 04:29:46', '<!-- wp:table -->\n<figure class=\"wp-block-table\"><table class=\"\"><tbody><tr><td>[URIS id=56]</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-11-22 04:29:46', '2019-11-22 04:29:46', '', 35, 'http://192.168.1.180/designfly/2019/11/22/35-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2019-11-22 04:32:03', '2019-11-22 04:32:03', '<!-- wp:shortcode -->\n[URIS id=56]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-22 04:32:03', '2019-11-22 04:32:03', '', 24, 'http://192.168.1.180/designfly/2019/11/22/24-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2019-11-22 04:40:43', '2019-11-22 04:40:43', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-11-22 04:40:43', '2019-11-22 04:40:43', '', 35, 'http://192.168.1.180/designfly/2019/11/22/35-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2019-11-22 04:58:19', '2019-11-22 04:58:19', '[Best_Wordpress_Gallery id=\"1\" gal_title=\"Image Gallery\"]', 'Image Gallery', '', 'publish', 'closed', 'closed', '', 'image-gallery', '', '', '2019-11-22 05:01:17', '2019-11-22 05:01:17', '', 0, 'http://192.168.1.180/designfly/bwg_gallery/image-gallery/', 0, 'bwg_gallery', '', 0),
(88, 1, '2019-11-22 04:58:37', '2019-11-22 04:58:37', '', 'Image', '', 'publish', 'closed', 'closed', '', 'image', '', '', '2019-11-22 04:58:37', '2019-11-22 04:58:37', '', 0, 'http://192.168.1.180/designfly/2019/11/22/image/', 0, 'bwg_share', '', 0),
(89, 1, '2019-11-22 05:00:09', '2019-11-22 05:00:09', '<!-- wp:tw/bwg {\"shortcode\":\"[Best_Wordpress_Gallery id=\\u00223\\u0022 gal_title=\\u0022Image Gallery\\u0022]\",\"popupOpened\":false,\"notInitial\":true,\"shortcode_id\":3} -->\n[Best_Wordpress_Gallery id=\"3\" gal_title=\"Image Gallery\"]\n<!-- /wp:tw/bwg -->', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2019-11-22 05:00:09', '2019-11-22 05:00:09', '', 31, 'http://192.168.1.180/designfly/2019/11/22/31-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2019-11-22 05:11:19', '2019-11-22 05:11:19', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque<br>\n                            laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi<br>\n                            architecto beatae vitae dicta sunt explicabo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Sample', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque', 'publish', 'open', 'open', '', 'sample', '', '', '2019-12-30 16:34:03', '2019-12-30 16:34:03', '', 0, 'http://192.168.1.180/designfly/?p=92', 0, 'post', '', 0),
(93, 1, '2019-11-22 05:11:19', '2019-11-22 05:11:19', '<!-- wp:paragraph -->\n<p>Sample post</p>\n<!-- /wp:paragraph -->', 'Sample', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2019-11-22 05:11:19', '2019-11-22 05:11:19', '', 92, 'http://192.168.1.180/designfly/2019/11/22/92-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2019-11-22 05:16:33', '2019-11-22 05:16:33', '<!-- wp:shortcode /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-22 05:16:33', '2019-11-22 05:16:33', '', 24, 'http://192.168.1.180/designfly/2019/11/22/24-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2019-11-22 05:17:02', '2019-11-22 05:17:02', '', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-22 05:17:02', '2019-11-22 05:17:02', '', 24, 'http://192.168.1.180/designfly/2019/11/22/24-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2019-11-22 05:44:18', '2019-11-22 05:44:18', '<!-- wp:paragraph -->\n<p>Sample post</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":62,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-6-1.png\" alt=\"\" class=\"wp-image-62\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>This is a sample blog </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Sample', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2019-11-22 05:44:18', '2019-11-22 05:44:18', '', 92, 'http://192.168.1.180/designfly/2019/11/22/92-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2019-11-22 06:09:27', '2019-11-22 06:09:27', '<!-- wp:paragraph -->\n<p>Sample post</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":62,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-6-1.png\" alt=\"\" class=\"wp-image-62\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>This is a sample blog </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Sample', 'This is ...', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2019-11-22 06:09:27', '2019-11-22 06:09:27', '', 92, 'http://192.168.1.180/designfly/2019/11/22/92-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2019-11-22 06:10:30', '2019-11-22 06:10:30', '<!-- wp:paragraph -->\n<p>Sample post</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":62,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-6-1.png\" alt=\"\" class=\"wp-image-62\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque<br>\n                            laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi<br>\n                            architecto beatae vitae dicta sunt explicabo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Sample', 'This is ...', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2019-11-22 06:10:30', '2019-11-22 06:10:30', '', 92, 'http://192.168.1.180/designfly/2019/11/22/92-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2019-11-22 06:10:47', '2019-11-22 06:10:47', '<!-- wp:paragraph -->\n<p>Sample post</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":62,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-6-1.png\" alt=\"\" class=\"wp-image-62\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque<br>\n                            laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi<br>\n                            architecto beatae vitae dicta sunt explicabo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Sample', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2019-11-22 06:10:47', '2019-11-22 06:10:47', '', 92, 'http://192.168.1.180/designfly/2019/11/22/92-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2019-11-22 06:14:36', '2019-11-22 06:14:36', '<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque<br>\n                            laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi<br>\n                            architecto beatae vitae dicta sunt explicabo.</p>\n<!-- /wp:paragraph -->', 'Blog', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2019-11-22 06:14:36', '2019-11-22 06:14:36', '', 33, 'http://192.168.1.180/designfly/2019/11/22/33-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2019-11-22 06:17:42', '2019-11-22 06:17:42', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2019-11-22 06:17:42', '2019-11-22 06:17:42', '', 33, 'http://192.168.1.180/designfly/2019/11/22/33-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2019-11-22 06:43:34', '2019-11-22 06:43:34', '<!-- wp:paragraph -->\n<p>Sample post</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":62,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-6-1.png\" alt=\"\" class=\"wp-image-62\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque<br>\n                            laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi<br>\n                            architecto beatae vitae dicta sunt explicabo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Sample', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2019-11-22 06:43:34', '2019-11-22 06:43:34', '', 92, 'http://192.168.1.180/designfly/92-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2019-11-22 09:30:09', '2019-11-22 09:30:09', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:5:\"block\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"acf/slider\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Block:Slider', 'blockslider', 'trash', 'closed', 'closed', '', 'group_5dd7aa3d7bfc4__trashed', '', '', '2020-01-01 06:05:23', '2020-01-01 06:05:23', '', 0, 'http://192.168.1.180/designfly/?post_type=acf-field-group&#038;p=108', 0, 'acf-field-group', '', 0),
(109, 1, '2019-11-22 09:30:09', '2019-11-22 09:30:09', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Slides', 'slides', 'trash', 'closed', 'closed', '', 'field_5dd7aa4ec89fc__trashed', '', '', '2020-01-01 06:05:23', '2020-01-01 06:05:23', '', 108, 'http://192.168.1.180/designfly/?post_type=acf-field&#038;p=109', 0, 'acf-field', '', 0),
(110, 1, '2019-11-22 09:30:09', '2019-11-22 09:30:09', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_5dd7aa76c89fd', '', '', '2019-11-23 06:27:34', '2019-11-23 06:27:34', '', 109, 'http://192.168.1.180/designfly/?post_type=acf-field&#038;p=110', 0, 'acf-field', '', 0),
(112, 1, '2019-11-22 09:47:58', '2019-11-22 09:47:58', '<!-- wp:acf/slider {\n    \"id\": \"block_5dd7aeb9ffcdc\",\n    \"name\": \"acf\\/slider\",\n    \"data\": {\n        \"slides_0_image\": 62,\n        \"_slides_0_image\": \"field_5dd7aa76c89fd\",\n        \"slides_1_image\": 61,\n        \"_slides_1_image\": \"field_5dd7aa76c89fd\",\n        \"slides_2_image\": 60,\n        \"_slides_2_image\": \"field_5dd7aa76c89fd\",\n        \"slides_3_image\": 59,\n        \"_slides_3_image\": \"field_5dd7aa76c89fd\",\n        \"slides\": 4,\n        \"_slides\": \"field_5dd7aa4ec89fc\"\n    },\n    \"align\": \"full\",\n    \"mode\": \"preview\"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-22 09:47:58', '2019-11-22 09:47:58', '', 24, 'http://192.168.1.180/designfly/24-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2019-11-22 09:47:59', '2019-11-22 09:47:59', '<!-- wp:acf/slider {\n    \"id\": \"block_5dd7aeb9ffcdc\",\n    \"name\": \"acf\\/slider\",\n    \"data\": {\n        \"slides_0_image\": 62,\n        \"_slides_0_image\": \"field_5dd7aa76c89fd\",\n        \"slides_1_image\": 61,\n        \"_slides_1_image\": \"field_5dd7aa76c89fd\",\n        \"slides_2_image\": 60,\n        \"_slides_2_image\": \"field_5dd7aa76c89fd\",\n        \"slides_3_image\": 59,\n        \"_slides_3_image\": \"field_5dd7aa76c89fd\",\n        \"slides\": 4,\n        \"_slides\": \"field_5dd7aa4ec89fc\"\n    },\n    \"align\": \"full\",\n    \"mode\": \"preview\"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-22 09:47:59', '2019-11-22 09:47:59', '', 24, 'http://192.168.1.180/designfly/24-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2019-11-22 10:00:28', '2019-11-22 10:00:28', '<!-- wp:acf/slider {\n    \"id\": \"block_5dd7aeb9ffcdc\",\n    \"name\": \"acf\\/slider\",\n    \"data\": {\n        \"slides_0_image\": 62,\n        \"_slides_0_image\": \"field_5dd7aa76c89fd\",\n        \"slides_1_image\": 61,\n        \"_slides_1_image\": \"field_5dd7aa76c89fd\",\n        \"slides_2_image\": 60,\n        \"_slides_2_image\": \"field_5dd7aa76c89fd\",\n        \"slides_3_image\": 59,\n        \"_slides_3_image\": \"field_5dd7aa76c89fd\",\n        \"slides\": 4,\n        \"_slides\": \"field_5dd7aa4ec89fc\"\n    },\n    \"align\": \"full\",\n    \"mode\": \"preview\"\n} /-->\n\n<!-- wp:acf/slider {\n    \"id\": \"block_5dd7b1a4bd4bd\",\n    \"name\": \"acf\\/slider\",\n    \"data\": {\n        \"slides_0_image\": 62,\n        \"_slides_0_image\": \"field_5dd7aa76c89fd\",\n        \"slides_1_image\": 61,\n        \"_slides_1_image\": \"field_5dd7aa76c89fd\",\n        \"slides_2_image\": 60,\n        \"_slides_2_image\": \"field_5dd7aa76c89fd\",\n        \"slides_3_image\": 59,\n        \"_slides_3_image\": \"field_5dd7aa76c89fd\",\n        \"slides\": 4,\n        \"_slides\": \"field_5dd7aa4ec89fc\"\n    },\n    \"align\": \"full\",\n    \"mode\": \"preview\"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-22 10:00:28', '2019-11-22 10:00:28', '', 24, 'http://192.168.1.180/designfly/24-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2019-11-22 10:00:28', '2019-11-22 10:00:28', '<!-- wp:acf/slider {\n    \"id\": \"block_5dd7aeb9ffcdc\",\n    \"name\": \"acf\\/slider\",\n    \"data\": {\n        \"slides_0_image\": 62,\n        \"_slides_0_image\": \"field_5dd7aa76c89fd\",\n        \"slides_1_image\": 61,\n        \"_slides_1_image\": \"field_5dd7aa76c89fd\",\n        \"slides_2_image\": 60,\n        \"_slides_2_image\": \"field_5dd7aa76c89fd\",\n        \"slides_3_image\": 59,\n        \"_slides_3_image\": \"field_5dd7aa76c89fd\",\n        \"slides\": 4,\n        \"_slides\": \"field_5dd7aa4ec89fc\"\n    },\n    \"align\": \"full\",\n    \"mode\": \"preview\"\n} /-->\n\n<!-- wp:acf/slider {\n    \"id\": \"block_5dd7b1a4bd4bd\",\n    \"name\": \"acf\\/slider\",\n    \"data\": {\n        \"slides_0_image\": 62,\n        \"_slides_0_image\": \"field_5dd7aa76c89fd\",\n        \"slides_1_image\": 61,\n        \"_slides_1_image\": \"field_5dd7aa76c89fd\",\n        \"slides_2_image\": 60,\n        \"_slides_2_image\": \"field_5dd7aa76c89fd\",\n        \"slides_3_image\": 59,\n        \"_slides_3_image\": \"field_5dd7aa76c89fd\",\n        \"slides\": 4,\n        \"_slides\": \"field_5dd7aa4ec89fc\"\n    },\n    \"align\": \"full\",\n    \"mode\": \"preview\"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-22 10:00:28', '2019-11-22 10:00:28', '', 24, 'http://192.168.1.180/designfly/24-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2019-11-22 10:01:59', '2019-11-22 10:01:59', '<!-- wp:acf/slider {\n    \"id\": \"block_5dd7aeb9ffcdc\",\n    \"name\": \"acf\\/slider\",\n    \"data\": {\n        \"slides_0_image\": 62,\n        \"_slides_0_image\": \"field_5dd7aa76c89fd\",\n        \"slides_1_image\": 61,\n        \"_slides_1_image\": \"field_5dd7aa76c89fd\",\n        \"slides_2_image\": 60,\n        \"_slides_2_image\": \"field_5dd7aa76c89fd\",\n        \"slides_3_image\": 59,\n        \"_slides_3_image\": \"field_5dd7aa76c89fd\",\n        \"slides\": 4,\n        \"_slides\": \"field_5dd7aa4ec89fc\"\n    },\n    \"align\": \"full\",\n    \"mode\": \"preview\"\n} /-->\n\n<!-- wp:acf/slider {\n    \"id\": \"block_5dd7b1a4bd4bd\",\n    \"name\": \"acf\\/slider\",\n    \"data\": {\n        \"slides_0_image\": 62,\n        \"_slides_0_image\": \"field_5dd7aa76c89fd\",\n        \"slides_1_image\": 61,\n        \"_slides_1_image\": \"field_5dd7aa76c89fd\",\n        \"slides_2_image\": 60,\n        \"_slides_2_image\": \"field_5dd7aa76c89fd\",\n        \"slides_3_image\": 59,\n        \"_slides_3_image\": \"field_5dd7aa76c89fd\",\n        \"slides\": 4,\n        \"_slides\": \"field_5dd7aa4ec89fc\"\n    },\n    \"align\": \"full\",\n    \"mode\": \"preview\"\n} /-->\n\n<!-- wp:paragraph -->\n<p>Hello There!!</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-22 10:01:59', '2019-11-22 10:01:59', '', 24, 'http://192.168.1.180/designfly/24-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2019-11-22 10:01:59', '2019-11-22 10:01:59', '<!-- wp:acf/slider {\n    \"id\": \"block_5dd7aeb9ffcdc\",\n    \"name\": \"acf\\/slider\",\n    \"data\": {\n        \"slides_0_image\": 62,\n        \"_slides_0_image\": \"field_5dd7aa76c89fd\",\n        \"slides_1_image\": 61,\n        \"_slides_1_image\": \"field_5dd7aa76c89fd\",\n        \"slides_2_image\": 60,\n        \"_slides_2_image\": \"field_5dd7aa76c89fd\",\n        \"slides_3_image\": 59,\n        \"_slides_3_image\": \"field_5dd7aa76c89fd\",\n        \"slides\": 4,\n        \"_slides\": \"field_5dd7aa4ec89fc\"\n    },\n    \"align\": \"full\",\n    \"mode\": \"preview\"\n} /-->\n\n<!-- wp:acf/slider {\n    \"id\": \"block_5dd7b1a4bd4bd\",\n    \"name\": \"acf\\/slider\",\n    \"data\": {\n        \"slides_0_image\": 62,\n        \"_slides_0_image\": \"field_5dd7aa76c89fd\",\n        \"slides_1_image\": 61,\n        \"_slides_1_image\": \"field_5dd7aa76c89fd\",\n        \"slides_2_image\": 60,\n        \"_slides_2_image\": \"field_5dd7aa76c89fd\",\n        \"slides_3_image\": 59,\n        \"_slides_3_image\": \"field_5dd7aa76c89fd\",\n        \"slides\": 4,\n        \"_slides\": \"field_5dd7aa4ec89fc\"\n    },\n    \"align\": \"full\",\n    \"mode\": \"preview\"\n} /-->\n\n<!-- wp:paragraph -->\n<p>Hello There!!</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-22 10:01:59', '2019-11-22 10:01:59', '', 24, 'http://192.168.1.180/designfly/24-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2019-11-22 10:02:55', '2019-11-22 10:02:55', '<!-- wp:acf/slider {\n    \"id\": \"block_5dd7b246389f5\",\n    \"name\": \"acf\\/slider\",\n    \"data\": {\n        \"slides_0_image\": 62,\n        \"_slides_0_image\": \"field_5dd7aa76c89fd\",\n        \"slides_1_image\": 61,\n        \"_slides_1_image\": \"field_5dd7aa76c89fd\",\n        \"slides_2_image\": 60,\n        \"_slides_2_image\": \"field_5dd7aa76c89fd\",\n        \"slides\": 3,\n        \"_slides\": \"field_5dd7aa4ec89fc\"\n    },\n    \"align\": \"full\",\n    \"mode\": \"preview\"\n} /-->', 'Contact', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-11-22 10:02:55', '2019-11-22 10:02:55', '', 35, 'http://192.168.1.180/designfly/35-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2019-11-22 10:02:56', '2019-11-22 10:02:56', '<!-- wp:acf/slider {\n    \"id\": \"block_5dd7b246389f5\",\n    \"name\": \"acf\\/slider\",\n    \"data\": {\n        \"slides_0_image\": 62,\n        \"_slides_0_image\": \"field_5dd7aa76c89fd\",\n        \"slides_1_image\": 61,\n        \"_slides_1_image\": \"field_5dd7aa76c89fd\",\n        \"slides_2_image\": 60,\n        \"_slides_2_image\": \"field_5dd7aa76c89fd\",\n        \"slides\": 3,\n        \"_slides\": \"field_5dd7aa4ec89fc\"\n    },\n    \"align\": \"full\",\n    \"mode\": \"preview\"\n} /-->', 'Contact', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-11-22 10:02:56', '2019-11-22 10:02:56', '', 35, 'http://192.168.1.180/designfly/35-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2019-11-22 10:03:02', '2019-11-22 10:03:02', '<!-- wp:acf/slider {\n    \"id\": \"block_5dd7b246389f5\",\n    \"name\": \"acf\\/slider\",\n    \"data\": {\n        \"slides_0_image\": 62,\n        \"_slides_0_image\": \"field_5dd7aa76c89fd\",\n        \"slides_1_image\": 61,\n        \"_slides_1_image\": \"field_5dd7aa76c89fd\",\n        \"slides_2_image\": 60,\n        \"_slides_2_image\": \"field_5dd7aa76c89fd\",\n        \"slides\": 3,\n        \"_slides\": \"field_5dd7aa4ec89fc\"\n    },\n    \"align\": \"full\",\n    \"mode\": \"preview\"\n} /-->\n\n<!-- wp:paragraph -->\n<p>Hello There</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-11-22 10:03:02', '2019-11-22 10:03:02', '', 35, 'http://192.168.1.180/designfly/35-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2019-11-22 10:03:02', '2019-11-22 10:03:02', '<!-- wp:acf/slider {\n    \"id\": \"block_5dd7b246389f5\",\n    \"name\": \"acf\\/slider\",\n    \"data\": {\n        \"slides_0_image\": 62,\n        \"_slides_0_image\": \"field_5dd7aa76c89fd\",\n        \"slides_1_image\": 61,\n        \"_slides_1_image\": \"field_5dd7aa76c89fd\",\n        \"slides_2_image\": 60,\n        \"_slides_2_image\": \"field_5dd7aa76c89fd\",\n        \"slides\": 3,\n        \"_slides\": \"field_5dd7aa4ec89fc\"\n    },\n    \"align\": \"full\",\n    \"mode\": \"preview\"\n} /-->\n\n<!-- wp:paragraph -->\n<p>Hello There</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-11-22 10:03:02', '2019-11-22 10:03:02', '', 35, 'http://192.168.1.180/designfly/35-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2019-11-22 10:03:03', '2019-11-22 10:03:03', '<!-- wp:acf/slider {\n    \"id\": \"block_5dd7b246389f5\",\n    \"name\": \"acf\\/slider\",\n    \"data\": {\n        \"slides_0_image\": 62,\n        \"_slides_0_image\": \"field_5dd7aa76c89fd\",\n        \"slides_1_image\": 61,\n        \"_slides_1_image\": \"field_5dd7aa76c89fd\",\n        \"slides_2_image\": 60,\n        \"_slides_2_image\": \"field_5dd7aa76c89fd\",\n        \"slides\": 3,\n        \"_slides\": \"field_5dd7aa4ec89fc\"\n    },\n    \"align\": \"full\",\n    \"mode\": \"preview\"\n} /-->\n\n<!-- wp:paragraph -->\n<p>Hello There</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '35-autosave-v1', '', '', '2019-11-22 10:03:03', '2019-11-22 10:03:03', '', 35, 'http://192.168.1.180/designfly/35-autosave-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(125, 1, '2019-11-22 10:07:51', '2019-11-22 10:07:51', '<!-- wp:paragraph -->\n<p>Hello </p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-22 10:07:51', '2019-11-22 10:07:51', '', 24, 'http://192.168.1.180/designfly/24-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2019-11-22 10:11:52', '2019-11-22 10:11:52', '<!-- wp:acf/slider {\n    \"id\": \"block_5dd7b454bb76a\",\n    \"name\": \"acf\\/slider\",\n    \"data\": {\n        \"slides_0_image\": 62,\n        \"_slides_0_image\": \"field_5dd7aa76c89fd\",\n        \"slides_1_image\": 61,\n        \"_slides_1_image\": \"field_5dd7aa76c89fd\",\n        \"slides_2_image\": 60,\n        \"_slides_2_image\": \"field_5dd7aa76c89fd\",\n        \"slides\": 3,\n        \"_slides\": \"field_5dd7aa4ec89fc\"\n    },\n    \"align\": \"full\",\n    \"mode\": \"preview\"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-22 10:11:52', '2019-11-22 10:11:52', '', 24, 'http://192.168.1.180/designfly/24-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2019-11-22 10:11:52', '2019-11-22 10:11:52', '<!-- wp:acf/slider {\n    \"id\": \"block_5dd7b454bb76a\",\n    \"name\": \"acf\\/slider\",\n    \"data\": {\n        \"slides_0_image\": 62,\n        \"_slides_0_image\": \"field_5dd7aa76c89fd\",\n        \"slides_1_image\": 61,\n        \"_slides_1_image\": \"field_5dd7aa76c89fd\",\n        \"slides_2_image\": 60,\n        \"_slides_2_image\": \"field_5dd7aa76c89fd\",\n        \"slides\": 3,\n        \"_slides\": \"field_5dd7aa4ec89fc\"\n    },\n    \"align\": \"full\",\n    \"mode\": \"preview\"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-22 10:11:52', '2019-11-22 10:11:52', '', 24, 'http://192.168.1.180/designfly/24-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2019-11-22 10:18:40', '2019-11-22 10:18:40', '<!-- wp:acf/slider {\n    \"id\": \"block_5dd7b454bb76a\",\n    \"name\": \"acf\\/slider\",\n    \"data\": {\n        \"slides_0_image\": 130,\n        \"_slides_0_image\": \"field_5dd7aa76c89fd\",\n        \"slides_1_image\": 130,\n        \"_slides_1_image\": \"field_5dd7aa76c89fd\",\n        \"slides_2_image\": 130,\n        \"_slides_2_image\": \"field_5dd7aa76c89fd\",\n        \"slides\": 3,\n        \"_slides\": \"field_5dd7aa4ec89fc\"\n    },\n    \"align\": \"full\",\n    \"mode\": \"preview\"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-22 10:18:40', '2019-11-22 10:18:40', '', 24, 'http://192.168.1.180/designfly/24-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2019-11-22 10:18:40', '2019-11-22 10:18:40', '<!-- wp:acf/slider {\n    \"id\": \"block_5dd7b454bb76a\",\n    \"name\": \"acf\\/slider\",\n    \"data\": {\n        \"slides_0_image\": 130,\n        \"_slides_0_image\": \"field_5dd7aa76c89fd\",\n        \"slides_1_image\": 130,\n        \"_slides_1_image\": \"field_5dd7aa76c89fd\",\n        \"slides_2_image\": 130,\n        \"_slides_2_image\": \"field_5dd7aa76c89fd\",\n        \"slides\": 3,\n        \"_slides\": \"field_5dd7aa4ec89fc\"\n    },\n    \"align\": \"full\",\n    \"mode\": \"preview\"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-22 10:18:40', '2019-11-22 10:18:40', '', 24, 'http://192.168.1.180/designfly/24-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2019-11-22 10:20:42', '2019-11-22 10:20:42', '<!-- wp:acf/slider {\n    \"id\": \"block_5dd7b454bb76a\",\n    \"name\": \"acf\\/slider\",\n    \"data\": {\n        \"slides_0_image\": 130,\n        \"_slides_0_image\": \"field_5dd7aa76c89fd\",\n        \"slides_1_image\": 130,\n        \"_slides_1_image\": \"field_5dd7aa76c89fd\",\n        \"slides_2_image\": 130,\n        \"_slides_2_image\": \"field_5dd7aa76c89fd\",\n        \"slides\": 3,\n        \"_slides\": \"field_5dd7aa4ec89fc\"\n    },\n    \"align\": \"full\",\n    \"mode\": \"preview\"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-22 10:20:42', '2019-11-22 10:20:42', '', 24, 'http://192.168.1.180/designfly/24-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2019-11-22 10:29:26', '2019-11-22 10:29:26', '<!-- wp:acf/slider {\n    \"id\": \"block_5dd7b454bb76a\",\n    \"name\": \"acf\\/slider\",\n    \"data\": {\n        \"slides_0_image\": 130,\n        \"_slides_0_image\": \"field_5dd7aa76c89fd\",\n        \"slides_1_image\": 130,\n        \"_slides_1_image\": \"field_5dd7aa76c89fd\",\n        \"slides_2_image\": 130,\n        \"_slides_2_image\": \"field_5dd7aa76c89fd\",\n        \"slides\": 3,\n        \"_slides\": \"field_5dd7aa4ec89fc\"\n    },\n    \"align\": \"full\",\n    \"mode\": \"preview\"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-22 10:29:26', '2019-11-22 10:29:26', '', 24, 'http://192.168.1.180/designfly/24-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2019-11-22 10:41:26', '2019-11-22 10:41:26', '<!-- wp:acf/slider {\n    \"id\": \"block_5dd7b454bb76a\",\n    \"name\": \"acf\\/slider\",\n    \"data\": {\n        \"slides_0_image\": 130,\n        \"_slides_0_image\": \"field_5dd7aa76c89fd\",\n        \"slides_1_image\": 130,\n        \"_slides_1_image\": \"field_5dd7aa76c89fd\",\n        \"slides_2_image\": 130,\n        \"_slides_2_image\": \"field_5dd7aa76c89fd\",\n        \"slides\": 3,\n        \"_slides\": \"field_5dd7aa4ec89fc\"\n    },\n    \"align\": \"full\",\n    \"mode\": \"preview\"\n} /-->\n\n<!-- wp:gallery {\"ids\":[136,137,138,139,140,141],\"linkTo\":\"attachment\"} -->\n<figure class=\"wp-block-gallery columns-3 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><a href=\"http://192.168.1.180/designfly/home/image-6-2-2/\"><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-6-2.png\" alt=\"\" data-id=\"136\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-6-2.png\" data-link=\"http://192.168.1.180/designfly/home/image-6-2-2/\" class=\"wp-image-136\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://192.168.1.180/designfly/home/image-5-3/\"><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-5-3.png\" alt=\"\" data-id=\"137\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-5-3.png\" data-link=\"http://192.168.1.180/designfly/home/image-5-3/\" class=\"wp-image-137\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://192.168.1.180/designfly/home/image-4-2-2/\"><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-4-2.png\" alt=\"\" data-id=\"138\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-4-2.png\" data-link=\"http://192.168.1.180/designfly/home/image-4-2-2/\" class=\"wp-image-138\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://192.168.1.180/designfly/home/image-3-2-2/\"><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-3-2.png\" alt=\"\" data-id=\"139\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-3-2.png\" data-link=\"http://192.168.1.180/designfly/home/image-3-2-2/\" class=\"wp-image-139\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://192.168.1.180/designfly/home/image-2-2-2/\"><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-2-2.png\" alt=\"\" data-id=\"140\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-2-2.png\" data-link=\"http://192.168.1.180/designfly/home/image-2-2-2/\" class=\"wp-image-140\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://192.168.1.180/designfly/home/image-1-2-2/\"><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-1-2.png\" alt=\"\" data-id=\"141\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-1-2.png\" data-link=\"http://192.168.1.180/designfly/home/image-1-2-2/\" class=\"wp-image-141\"/></a></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-22 10:41:26', '2019-11-22 10:41:26', '', 24, 'http://192.168.1.180/designfly/24-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2019-11-22 10:44:04', '2019-11-22 10:44:04', '<!-- wp:acf/slider {\n    \"id\": \"block_5dd7b454bb76a\",\n    \"name\": \"acf\\/slider\",\n    \"data\": {\n        \"slides_0_image\": 130,\n        \"_slides_0_image\": \"field_5dd7aa76c89fd\",\n        \"slides_1_image\": 130,\n        \"_slides_1_image\": \"field_5dd7aa76c89fd\",\n        \"slides_2_image\": 130,\n        \"_slides_2_image\": \"field_5dd7aa76c89fd\",\n        \"slides\": 3,\n        \"_slides\": \"field_5dd7aa4ec89fc\"\n    },\n    \"align\": \"full\",\n    \"mode\": \"preview\"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-22 10:44:04', '2019-11-22 10:44:04', '', 24, 'http://192.168.1.180/designfly/24-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2019-11-22 12:06:45', '2019-11-22 12:06:45', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-11-22 12:06:45', '2019-11-22 12:06:45', '', 1, 'http://192.168.1.180/designfly/1-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2019-11-22 13:04:50', '2019-11-22 13:04:50', '', 'Single blog', '', 'publish', 'closed', 'closed', '', 'single-blog', '', '', '2019-11-23 04:55:29', '2019-11-23 04:55:29', '', 0, 'http://192.168.1.180/designfly/?page_id=150', 0, 'page', '', 0),
(151, 1, '2019-11-22 13:04:50', '2019-11-22 13:04:50', '', 'Single blog', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2019-11-22 13:04:50', '2019-11-22 13:04:50', '', 150, 'http://192.168.1.180/designfly/150-revision-v1/', 0, 'revision', '', 0),
(155, 1, '2019-11-23 03:49:19', '2019-11-23 03:49:19', '<!-- wp:tw/bwg {\"shortcode\":\"[Best_Wordpress_Gallery id=\\u00223\\u0022 gal_title=\\u0022Image Gallery\\u0022]\",\"popupOpened\":false,\"notInitial\":true} -->\n[Best_Wordpress_Gallery id=\"3\" gal_title=\"Image Gallery\"]\n<!-- /wp:tw/bwg -->', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2019-11-23 03:49:19', '2019-11-23 03:49:19', '', 31, 'http://192.168.1.180/designfly/31-revision-v1/', 0, 'revision', '', 0),
(156, 1, '2019-11-23 03:49:20', '2019-11-23 03:49:20', '<!-- wp:tw/bwg {\"shortcode\":\"[Best_Wordpress_Gallery id=\\u00223\\u0022 gal_title=\\u0022Image Gallery\\u0022]\",\"popupOpened\":false,\"notInitial\":true} -->\n[Best_Wordpress_Gallery id=\"3\" gal_title=\"Image Gallery\"]\n<!-- /wp:tw/bwg -->', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2019-11-23 03:49:20', '2019-11-23 03:49:20', '', 31, 'http://192.168.1.180/designfly/31-revision-v1/', 0, 'revision', '', 0),
(158, 1, '2019-11-23 04:02:26', '2019-11-23 04:02:26', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2019-11-23 06:18:28', '2019-11-23 06:18:28', '', 0, 'http://192.168.1.180/designfly/?p=158', 2, 'nav_menu_item', '', 0),
(159, 1, '2019-11-23 04:02:27', '2019-11-23 04:02:27', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'menu-item', '', '', '2019-11-23 06:18:29', '2019-11-23 06:18:29', '', 0, 'http://192.168.1.180/designfly/?p=159', 5, 'nav_menu_item', '', 0),
(166, 1, '2019-11-23 04:21:27', '2019-11-23 04:21:27', '<!-- wp:tw/bwg {\"shortcode\":\"[Best_Wordpress_Gallery id=\\u00223\\u0022 gal_title=\\u0022Image Gallery\\u0022]\",\"popupOpened\":false,\"notInitial\":true} -->\n[Best_Wordpress_Gallery id=\"3\" gal_title=\"Image Gallery\"]\n<!-- /wp:tw/bwg -->\n\n<!-- wp:gallery {\"ids\":[160,161,162,163,164,165]} -->\n<figure class=\"wp-block-gallery columns-3 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-6-3.png\" alt=\"\" data-id=\"160\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-6-3.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-6-3/\" class=\"wp-image-160\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-5-4.png\" alt=\"\" data-id=\"161\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-5-4.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-5-4/\" class=\"wp-image-161\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-4-3.png\" alt=\"\" data-id=\"162\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-4-3.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-4-3/\" class=\"wp-image-162\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-3-3.png\" alt=\"\" data-id=\"163\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-3-3.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-3-3/\" class=\"wp-image-163\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-2-3.png\" alt=\"\" data-id=\"164\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-2-3.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-2-3/\" class=\"wp-image-164\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-1-3.png\" alt=\"\" data-id=\"165\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-1-3.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-1-3/\" class=\"wp-image-165\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2019-11-23 04:21:27', '2019-11-23 04:21:27', '', 31, 'http://192.168.1.180/designfly/31-revision-v1/', 0, 'revision', '', 0),
(167, 1, '2019-11-23 04:39:39', '2019-11-23 04:39:39', '<!-- wp:tw/bwg {\"shortcode\":\"[Best_Wordpress_Gallery id=\\u00223\\u0022 gal_title=\\u0022Image Gallery\\u0022]\",\"popupOpened\":false,\"notInitial\":true} -->\n[Best_Wordpress_Gallery id=\"3\" gal_title=\"Image Gallery\"]\n<!-- /wp:tw/bwg -->\n\n<!-- wp:gallery {\"ids\":[160,161,162,163,164,165],\"className\":\"portfolio-gallery\"} -->\n<figure class=\"wp-block-gallery columns-3 is-cropped portfolio-gallery\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-6-3.png\" alt=\"\" data-id=\"160\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-6-3.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-6-3/\" class=\"wp-image-160\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-5-4.png\" alt=\"\" data-id=\"161\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-5-4.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-5-4/\" class=\"wp-image-161\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-4-3.png\" alt=\"\" data-id=\"162\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-4-3.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-4-3/\" class=\"wp-image-162\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-3-3.png\" alt=\"\" data-id=\"163\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-3-3.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-3-3/\" class=\"wp-image-163\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-2-3.png\" alt=\"\" data-id=\"164\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-2-3.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-2-3/\" class=\"wp-image-164\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-1-3.png\" alt=\"\" data-id=\"165\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-1-3.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-1-3/\" class=\"wp-image-165\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2019-11-23 04:39:39', '2019-11-23 04:39:39', '', 31, 'http://192.168.1.180/designfly/31-revision-v1/', 0, 'revision', '', 0),
(168, 1, '2019-11-23 04:39:57', '2019-11-23 04:39:57', '<!-- wp:gallery {\"ids\":[160,161,162,163,164,165],\"className\":\"portfolio-gallery\"} -->\n<figure class=\"wp-block-gallery columns-3 is-cropped portfolio-gallery\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-6-3.png\" alt=\"\" data-id=\"160\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-6-3.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-6-3/\" class=\"wp-image-160\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-5-4.png\" alt=\"\" data-id=\"161\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-5-4.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-5-4/\" class=\"wp-image-161\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-4-3.png\" alt=\"\" data-id=\"162\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-4-3.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-4-3/\" class=\"wp-image-162\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-3-3.png\" alt=\"\" data-id=\"163\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-3-3.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-3-3/\" class=\"wp-image-163\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-2-3.png\" alt=\"\" data-id=\"164\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-2-3.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-2-3/\" class=\"wp-image-164\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-1-3.png\" alt=\"\" data-id=\"165\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-1-3.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-1-3/\" class=\"wp-image-165\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2019-11-23 04:39:57', '2019-11-23 04:39:57', '', 31, 'http://192.168.1.180/designfly/31-revision-v1/', 0, 'revision', '', 0),
(170, 1, '2019-11-23 04:50:16', '2019-11-23 04:50:16', '<!-- wp:gallery {\"ids\":[160,161,162,163,164,165],\"linkTo\":\"media\",\"className\":\"portfolio-gallery\"} -->\n<figure class=\"wp-block-gallery columns-3 is-cropped portfolio-gallery\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><a href=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-6-3.png\"><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-6-3.png\" alt=\"\" data-id=\"160\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-6-3.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-6-3/\" class=\"wp-image-160\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-5-4.png\"><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-5-4.png\" alt=\"\" data-id=\"161\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-5-4.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-5-4/\" class=\"wp-image-161\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-4-3.png\"><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-4-3.png\" alt=\"\" data-id=\"162\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-4-3.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-4-3/\" class=\"wp-image-162\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-3-3.png\"><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-3-3.png\" alt=\"\" data-id=\"163\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-3-3.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-3-3/\" class=\"wp-image-163\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-2-3.png\"><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-2-3.png\" alt=\"\" data-id=\"164\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-2-3.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-2-3/\" class=\"wp-image-164\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-1-3.png\"><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-1-3.png\" alt=\"\" data-id=\"165\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-1-3.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-1-3/\" class=\"wp-image-165\"/></a></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2019-11-23 04:50:16', '2019-11-23 04:50:16', '', 31, 'http://192.168.1.180/designfly/31-revision-v1/', 0, 'revision', '', 0),
(175, 1, '2019-11-23 06:20:59', '2019-11-23 06:20:59', '<!-- wp:acf/slider {\n    \"id\": \"block_5dd7b454bb76a\",\n    \"name\": \"acf\\/slider\",\n    \"data\": {\n        \"slides_0_image\": 130,\n        \"_slides_0_image\": \"field_5dd7aa76c89fd\",\n        \"slides_1_image\": 16,\n        \"_slides_1_image\": \"field_5dd7aa76c89fd\",\n        \"slides_2_image\": \"\",\n        \"_slides_2_image\": \"field_5dd7aa76c89fd\",\n        \"slides\": 3,\n        \"_slides\": \"field_5dd7aa4ec89fc\"\n    },\n    \"align\": \"full\",\n    \"mode\": \"preview\"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-23 06:20:59', '2019-11-23 06:20:59', '', 24, 'http://192.168.1.180/designfly/24-revision-v1/', 0, 'revision', '', 0),
(176, 1, '2019-11-23 06:20:59', '2019-11-23 06:20:59', '<!-- wp:acf/slider {\n    \"id\": \"block_5dd7b454bb76a\",\n    \"name\": \"acf\\/slider\",\n    \"data\": {\n        \"slides_0_image\": 130,\n        \"_slides_0_image\": \"field_5dd7aa76c89fd\",\n        \"slides_1_image\": 16,\n        \"_slides_1_image\": \"field_5dd7aa76c89fd\",\n        \"slides_2_image\": \"\",\n        \"_slides_2_image\": \"field_5dd7aa76c89fd\",\n        \"slides\": 3,\n        \"_slides\": \"field_5dd7aa4ec89fc\"\n    },\n    \"align\": \"full\",\n    \"mode\": \"preview\"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-23 06:20:59', '2019-11-23 06:20:59', '', 24, 'http://192.168.1.180/designfly/24-revision-v1/', 0, 'revision', '', 0),
(177, 1, '2019-11-23 07:00:00', '2019-11-23 07:00:00', '<!-- wp:acf/slider {\n    \"id\": \"block_5dd7b454bb76a\",\n    \"name\": \"acf\\/slider\",\n    \"data\": {\n        \"slides_0_image\": 130,\n        \"_slides_0_image\": \"field_5dd7aa76c89fd\",\n        \"slides_1_image\": 16,\n        \"_slides_1_image\": \"field_5dd7aa76c89fd\",\n        \"slides_2_image\": 130,\n        \"_slides_2_image\": \"field_5dd7aa76c89fd\",\n        \"slides\": 3,\n        \"_slides\": \"field_5dd7aa4ec89fc\"\n    },\n    \"align\": \"full\",\n    \"mode\": \"preview\"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-23 07:00:00', '2019-11-23 07:00:00', '', 24, 'http://192.168.1.180/designfly/24-revision-v1/', 0, 'revision', '', 0),
(178, 1, '2019-11-23 07:00:00', '2019-11-23 07:00:00', '<!-- wp:acf/slider {\n    \"id\": \"block_5dd7b454bb76a\",\n    \"name\": \"acf\\/slider\",\n    \"data\": {\n        \"slides_0_image\": 130,\n        \"_slides_0_image\": \"field_5dd7aa76c89fd\",\n        \"slides_1_image\": 16,\n        \"_slides_1_image\": \"field_5dd7aa76c89fd\",\n        \"slides_2_image\": 130,\n        \"_slides_2_image\": \"field_5dd7aa76c89fd\",\n        \"slides\": 3,\n        \"_slides\": \"field_5dd7aa4ec89fc\"\n    },\n    \"align\": \"full\",\n    \"mode\": \"preview\"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-23 07:00:00', '2019-11-23 07:00:00', '', 24, 'http://192.168.1.180/designfly/24-revision-v1/', 0, 'revision', '', 0),
(179, 1, '2019-11-23 07:10:37', '2019-11-23 07:10:37', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":62,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-6-1.png\" alt=\"\" class=\"wp-image-62\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque<br>\n                            laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi<br>\n                            architecto beatae vitae dicta sunt explicabo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Sample', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2019-11-23 07:10:37', '2019-11-23 07:10:37', '', 92, 'http://192.168.1.180/designfly/92-revision-v1/', 0, 'revision', '', 0),
(180, 1, '2019-11-23 09:24:42', '2019-11-23 09:24:42', '', 'Author Archive', '', 'publish', 'closed', 'closed', '', 'archive', '', '', '2019-11-25 04:30:02', '2019-11-25 04:30:02', '', 0, 'http://192.168.1.180/designfly/?page_id=180', 0, 'page', '', 0),
(181, 1, '2019-11-23 09:24:42', '2019-11-23 09:24:42', '', 'Archive', '', 'inherit', 'closed', 'closed', '', '180-revision-v1', '', '', '2019-11-23 09:24:42', '2019-11-23 09:24:42', '', 180, 'http://192.168.1.180/designfly/180-revision-v1/', 0, 'revision', '', 0),
(183, 1, '2019-11-24 11:10:04', '2019-11-24 11:10:04', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>\n<!-- /wp:paragraph -->', 'Advertising 1', '', 'publish', 'open', 'closed', '', 'advertising-1', '', '', '2019-12-29 09:56:32', '2019-12-29 09:56:32', '', 0, 'http://192.168.1.180/designfly/?post_type=portfolio&#038;p=183', 0, 'portfolio', '', 0),
(184, 1, '2019-11-24 11:09:36', '2019-11-24 11:09:36', '<!-- wp:paragraph -->\n<p>Advertising 1 Descripiton</p>\n<!-- /wp:paragraph -->', 'Advertising 1', '', 'inherit', 'closed', 'closed', '', '183-revision-v1', '', '', '2019-11-24 11:09:36', '2019-11-24 11:09:36', '', 183, 'http://192.168.1.180/designfly/183-revision-v1/', 0, 'revision', '', 0),
(185, 1, '2019-11-24 11:10:57', '2019-11-24 11:10:57', '<!-- wp:paragraph -->\n<p>Photography 1</p>\n<!-- /wp:paragraph -->', 'Photography 1', '', 'publish', 'open', 'closed', '', 'photography-1', '', '', '2019-12-17 13:53:04', '2019-12-17 13:53:04', '', 0, 'http://192.168.1.180/designfly/?post_type=portfolio&#038;p=185', 0, 'portfolio', '', 0),
(186, 1, '2019-11-24 11:10:57', '2019-11-24 11:10:57', '<!-- wp:paragraph -->\n<p>Photography 1</p>\n<!-- /wp:paragraph -->', 'Photography 1', '', 'inherit', 'closed', 'closed', '', '185-revision-v1', '', '', '2019-11-24 11:10:57', '2019-11-24 11:10:57', '', 185, 'http://192.168.1.180/designfly/185-revision-v1/', 0, 'revision', '', 0),
(187, 1, '2019-11-24 11:11:36', '2019-11-24 11:11:36', '<!-- wp:paragraph -->\n<p>Multimedia 1</p>\n<!-- /wp:paragraph -->', 'Multimedia 1', '', 'publish', 'open', 'closed', '', 'multimedia-1', '', '', '2019-12-17 13:52:24', '2019-12-17 13:52:24', '', 0, 'http://192.168.1.180/designfly/?post_type=portfolio&#038;p=187', 0, 'portfolio', '', 0),
(188, 1, '2019-11-24 11:11:36', '2019-11-24 11:11:36', '<!-- wp:paragraph -->\n<p>Multimedia 1</p>\n<!-- /wp:paragraph -->', 'Multimedia 1', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2019-11-24 11:11:36', '2019-11-24 11:11:36', '', 187, 'http://192.168.1.180/designfly/187-revision-v1/', 0, 'revision', '', 0),
(189, 1, '2019-11-24 14:09:28', '2019-11-24 14:09:28', '<!-- wp:paragraph -->\n<p>fdvcfvegc</p>\n<!-- /wp:paragraph -->', 'TEsting PortFolioo 4', '', 'publish', 'closed', 'closed', '', 'testing-portfolioo-4', '', '', '2019-12-31 17:04:24', '2019-12-31 17:04:24', '', 0, 'http://192.168.1.180/designfly/?post_type=portfolio&#038;p=189', 0, 'portfolio', '', 0),
(197, 1, '2019-11-25 04:21:24', '2019-11-25 04:21:24', '', 'Author Archive', '', 'inherit', 'closed', 'closed', '', '180-revision-v1', '', '', '2019-11-25 04:21:24', '2019-11-25 04:21:24', '', 180, 'http://192.168.1.180/designfly/180-revision-v1/', 0, 'revision', '', 0),
(200, 2, '2019-11-25 04:26:23', '2019-11-25 04:26:23', '<!-- wp:paragraph -->\n<p>Working with WordPress is a breeze, mainly because the architecture of the content management system is rock-solid and easy to understand but most importantly because the community is so big and can offer you solutions for all your needs, through themes and plugins. Those who run websites built on WordPress are using a series of plugins which can make their life easier and more productive but generally speaking, plugins affect the loading speed performances of your website and there are some cases which don`t require using a plugin.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":416} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wp-content/uploads/2019/12/f1775ff4377209347d1c486d3a619e7c75a3cbfb-1024x576.jpg\" alt=\"\" class=\"wp-image-416\"/></figure>\n<!-- /wp:image -->', 'New Author', '', 'publish', 'open', 'open', '', 'new-author', '', '', '2019-12-31 16:12:01', '2019-12-31 16:12:01', '', 0, 'http://192.168.1.180/designfly/?p=200', 0, 'post', '', 3),
(201, 2, '2019-11-25 04:26:23', '2019-11-25 04:26:23', '<!-- wp:paragraph -->\n<p>Working with WordPress is a breeze, mainly because the architecture of the content management system is rock-solid and easy to understand but most importantly because the community is so big and can offer you solutions for all your needs, through themes and plugins. Those who run websites built on WordPress are using a series of plugins which can make their life easier and more productive but generally speaking, plugins affect the loading speed performances of your website and there are some cases which don`t require using a plugin.</p>\n<!-- /wp:paragraph -->', 'New Author', '', 'inherit', 'closed', 'closed', '', '200-revision-v1', '', '', '2019-11-25 04:26:23', '2019-11-25 04:26:23', '', 200, 'http://192.168.1.180/designfly/200-revision-v1/', 0, 'revision', '', 0),
(202, 1, '2019-11-25 05:09:03', '2019-11-25 05:09:03', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"portfolios\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Category Field', 'category-field', 'publish', 'closed', 'closed', '', 'group_5ddb61383904d', '', '', '2019-11-25 05:09:04', '2019-11-25 05:09:04', '', 0, 'http://192.168.1.180/designfly/?post_type=acf-field-group&#038;p=202', 0, 'acf-field-group', '', 0),
(203, 1, '2019-11-25 05:09:04', '2019-11-25 05:09:04', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Category Image', 'category_image', 'publish', 'closed', 'closed', '', 'field_5ddb613b34a9a', '', '', '2019-11-25 05:09:04', '2019-11-25 05:09:04', '', 202, 'http://192.168.1.180/designfly/?post_type=acf-field&p=203', 0, 'acf-field', '', 0),
(205, 1, '2019-11-25 06:49:19', '2019-11-25 06:49:19', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nDesignFly \"[your-subject]\"\nDesignFly <wordpress@192.168.1.180>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on DesignFly (http://192.168.1.180/designfly)\nitw.abhisheks@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nDesignFly \"[your-subject]\"\nDesignFly <wordpress@192.168.1.180>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on DesignFly (http://192.168.1.180/designfly)\n[your-email]\nReply-To: itw.abhisheks@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2019-11-25 06:49:19', '2019-11-25 06:49:19', '', 0, 'http://192.168.1.180/designfly/?post_type=wpcf7_contact_form&p=205', 0, 'wpcf7_contact_form', '', 0),
(214, 1, '2019-11-25 09:16:49', '2019-11-25 09:16:49', '<!-- wp:acf/slider {\n    \"id\": \"block_5dd7b454bb76a\",\n    \"name\": \"acf\\/slider\",\n    \"data\": {\n        \"slides_0_image\": 130,\n        \"_slides_0_image\": \"field_5dd7aa76c89fd\",\n        \"slides_1_image\": 16,\n        \"_slides_1_image\": \"field_5dd7aa76c89fd\",\n        \"slides_2_image\": 130,\n        \"_slides_2_image\": \"field_5dd7aa76c89fd\",\n        \"slides\": 3,\n        \"_slides\": \"field_5dd7aa4ec89fc\"\n    },\n    \"align\": \"full\",\n    \"mode\": \"edit\"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-25 09:16:49', '2019-11-25 09:16:49', '', 24, 'http://192.168.1.180/designfly/24-revision-v1/', 0, 'revision', '', 0),
(215, 1, '2019-11-25 09:16:49', '2019-11-25 09:16:49', '<!-- wp:acf/slider {\n    \"id\": \"block_5dd7b454bb76a\",\n    \"name\": \"acf\\/slider\",\n    \"data\": {\n        \"slides_0_image\": 130,\n        \"_slides_0_image\": \"field_5dd7aa76c89fd\",\n        \"slides_1_image\": 16,\n        \"_slides_1_image\": \"field_5dd7aa76c89fd\",\n        \"slides_2_image\": 130,\n        \"_slides_2_image\": \"field_5dd7aa76c89fd\",\n        \"slides\": 3,\n        \"_slides\": \"field_5dd7aa4ec89fc\"\n    },\n    \"align\": \"full\",\n    \"mode\": \"edit\"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-25 09:16:49', '2019-11-25 09:16:49', '', 24, 'http://192.168.1.180/designfly/24-revision-v1/', 0, 'revision', '', 0),
(217, 1, '2019-11-25 09:17:57', '2019-11-25 09:17:57', '<!-- wp:acf/slider {\n    \"id\": \"block_5dd7b454bb76a\",\n    \"name\": \"acf\\/slider\",\n    \"data\": {\n        \"slides_0_image\": 216,\n        \"_slides_0_image\": \"field_5dd7aa76c89fd\",\n        \"slides_1_image\": 16,\n        \"_slides_1_image\": \"field_5dd7aa76c89fd\",\n        \"slides_2_image\": 130,\n        \"_slides_2_image\": \"field_5dd7aa76c89fd\",\n        \"slides\": 3,\n        \"_slides\": \"field_5dd7aa4ec89fc\"\n    },\n    \"align\": \"full\",\n    \"mode\": \"edit\"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-25 09:17:57', '2019-11-25 09:17:57', '', 24, 'http://192.168.1.180/designfly/24-revision-v1/', 0, 'revision', '', 0),
(218, 1, '2019-11-25 09:17:58', '2019-11-25 09:17:58', '<!-- wp:acf/slider {\n    \"id\": \"block_5dd7b454bb76a\",\n    \"name\": \"acf\\/slider\",\n    \"data\": {\n        \"slides_0_image\": 216,\n        \"_slides_0_image\": \"field_5dd7aa76c89fd\",\n        \"slides_1_image\": 16,\n        \"_slides_1_image\": \"field_5dd7aa76c89fd\",\n        \"slides_2_image\": 130,\n        \"_slides_2_image\": \"field_5dd7aa76c89fd\",\n        \"slides\": 3,\n        \"_slides\": \"field_5dd7aa4ec89fc\"\n    },\n    \"align\": \"full\",\n    \"mode\": \"edit\"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-25 09:17:58', '2019-11-25 09:17:58', '', 24, 'http://192.168.1.180/designfly/24-revision-v1/', 0, 'revision', '', 0),
(220, 1, '2019-11-25 09:21:53', '2019-11-25 09:21:53', '<!-- wp:acf/slider {\n    \"id\": \"block_5dd7b454bb76a\",\n    \"name\": \"acf\\/slider\",\n    \"data\": {\n        \"slides_0_image\": 219,\n        \"_slides_0_image\": \"field_5dd7aa76c89fd\",\n        \"slides_1_image\": 16,\n        \"_slides_1_image\": \"field_5dd7aa76c89fd\",\n        \"slides_2_image\": 130,\n        \"_slides_2_image\": \"field_5dd7aa76c89fd\",\n        \"slides\": 3,\n        \"_slides\": \"field_5dd7aa4ec89fc\"\n    },\n    \"align\": \"full\",\n    \"mode\": \"edit\"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-25 09:21:53', '2019-11-25 09:21:53', '', 24, 'http://192.168.1.180/designfly/24-revision-v1/', 0, 'revision', '', 0),
(221, 1, '2019-11-25 09:21:54', '2019-11-25 09:21:54', '<!-- wp:acf/slider {\n    \"id\": \"block_5dd7b454bb76a\",\n    \"name\": \"acf\\/slider\",\n    \"data\": {\n        \"slides_0_image\": 219,\n        \"_slides_0_image\": \"field_5dd7aa76c89fd\",\n        \"slides_1_image\": 16,\n        \"_slides_1_image\": \"field_5dd7aa76c89fd\",\n        \"slides_2_image\": 130,\n        \"_slides_2_image\": \"field_5dd7aa76c89fd\",\n        \"slides\": 3,\n        \"_slides\": \"field_5dd7aa4ec89fc\"\n    },\n    \"align\": \"full\",\n    \"mode\": \"edit\"\n} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-11-25 09:21:54', '2019-11-25 09:21:54', '', 24, 'http://192.168.1.180/designfly/24-revision-v1/', 0, 'revision', '', 0),
(222, 1, '2019-11-25 11:46:41', '2019-11-25 11:46:41', '<!-- wp:paragraph -->\n<p><br>Description</p>\n<!-- /wp:paragraph -->', 'Advertising 2', '', 'publish', 'closed', 'closed', '', 'advertising-2', '', '', '2019-12-17 13:52:06', '2019-12-17 13:52:06', '', 0, 'http://192.168.1.180/designfly/?post_type=portfolio&#038;p=222', 0, 'portfolio', '', 0),
(223, 1, '2019-11-25 11:47:12', '2019-11-25 11:47:12', '<!-- wp:paragraph -->\n<p>Multimedia 2</p>\n<!-- /wp:paragraph -->', 'Multimedia', '', 'publish', 'closed', 'closed', '', 'multimedia', '', '', '2019-12-17 13:52:15', '2019-12-17 13:52:15', '', 0, 'http://192.168.1.180/designfly/?post_type=portfolio&#038;p=223', 0, 'portfolio', '', 0),
(224, 1, '2019-11-25 11:47:39', '2019-11-25 11:47:39', '<!-- wp:paragraph -->\n<p>Photography 3</p>\n<!-- /wp:paragraph -->', 'Photography', '', 'publish', 'closed', 'closed', '', 'photography', '', '', '2019-12-17 13:52:35', '2019-12-17 13:52:35', '', 0, 'http://192.168.1.180/designfly/?post_type=portfolio&#038;p=224', 0, 'portfolio', '', 0),
(225, 1, '2019-11-25 11:48:00', '2019-11-25 11:48:00', '<!-- wp:paragraph -->\n<p>Photography 3</p>\n<!-- /wp:paragraph -->', 'Photography', '', 'publish', 'closed', 'closed', '', 'photography-2', '', '', '2019-12-17 13:52:45', '2019-12-17 13:52:45', '', 0, 'http://192.168.1.180/designfly/?post_type=portfolio&#038;p=225', 0, 'portfolio', '', 0),
(226, 1, '2019-11-25 11:49:42', '2019-11-25 11:49:42', '<!-- wp:paragraph -->\n<p>Photography 33</p>\n<!-- /wp:paragraph -->', 'Photography', '', 'publish', 'closed', 'closed', '', 'photography-3', '', '', '2019-12-17 13:52:55', '2019-12-17 13:52:55', '', 0, 'http://192.168.1.180/designfly/?post_type=portfolio&#038;p=226', 0, 'portfolio', '', 0),
(227, 1, '2019-11-26 04:05:23', '2019-11-26 04:05:23', '', 'Category Archive', '', 'publish', 'closed', 'closed', '', 'category-archive', '', '', '2019-11-26 04:05:24', '2019-11-26 04:05:24', '', 0, 'http://192.168.1.180/designfly/?page_id=227', 0, 'page', '', 0),
(228, 1, '2019-11-26 04:05:23', '2019-11-26 04:05:23', '', 'Category Archive', '', 'inherit', 'closed', 'closed', '', '227-revision-v1', '', '', '2019-11-26 04:05:23', '2019-11-26 04:05:23', '', 227, 'http://192.168.1.180/designfly/227-revision-v1/', 0, 'revision', '', 0),
(229, 1, '2019-11-26 04:54:57', '2019-11-26 04:54:57', '<!-- wp:archives {\"showPostCounts\":true} /-->', 'Date Archive', '', 'publish', 'closed', 'closed', '', 'date-archive', '', '', '2019-11-26 11:52:53', '2019-11-26 11:52:53', '', 0, 'http://192.168.1.180/designfly/?page_id=229', 0, 'page', '', 0),
(230, 1, '2019-11-26 04:54:57', '2019-11-26 04:54:57', '', 'Date Archive', '', 'inherit', 'closed', 'closed', '', '229-revision-v1', '', '', '2019-11-26 04:54:57', '2019-11-26 04:54:57', '', 229, 'http://192.168.1.180/designfly/229-revision-v1/', 0, 'revision', '', 0),
(232, 1, '2019-11-26 06:27:04', '2019-11-26 06:27:04', '', 'Tags', '', 'publish', 'closed', 'closed', '', 'tags', '', '', '2019-11-26 06:27:05', '2019-11-26 06:27:05', '', 0, 'http://192.168.1.180/designfly/?page_id=232', 0, 'page', '', 0),
(233, 1, '2019-11-26 06:27:04', '2019-11-26 06:27:04', '', 'Tags', '', 'inherit', 'closed', 'closed', '', '232-revision-v1', '', '', '2019-11-26 06:27:04', '2019-11-26 06:27:04', '', 232, 'http://192.168.1.180/designfly/232-revision-v1/', 0, 'revision', '', 0),
(234, 1, '2019-11-26 11:52:20', '2019-11-26 11:52:20', '<!-- wp:archives {\"showPostCounts\":true} /-->', 'Date Archive', '', 'inherit', 'closed', 'closed', '', '229-revision-v1', '', '', '2019-11-26 11:52:20', '2019-11-26 11:52:20', '', 229, 'http://192.168.1.180/designfly/229-revision-v1/', 0, 'revision', '', 0),
(236, 1, '2019-12-06 16:30:06', '2019-12-06 16:30:06', '', '16b1a43eb3ec896589e1f78691b57c30659c0665', '', 'inherit', 'open', 'closed', '', '16b1a43eb3ec896589e1f78691b57c30659c0665', '', '', '2019-12-06 16:30:06', '2019-12-06 16:30:06', '', 183, 'http://localhost/wordpress/wp-content/uploads/2019/11/16b1a43eb3ec896589e1f78691b57c30659c0665.jpg', 0, 'attachment', 'image/jpeg', 0),
(239, 1, '2019-12-06 16:33:12', '2019-12-06 16:33:12', '<!-- wp:paragraph -->\n<p>Working with WordPress is a breeze, mainly because the architecture of the content management system is rock-solid and easy to understand but most importantly because the community is so big and can offer you solutions for all your needs, through themes and plugins. Those who run websites built on WordPress are using a series of plugins which can make their life easier and more productive but generally speaking, plugins affect the loading speed performances of your website and there are some cases which don`t require using a plugin.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":238} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wp-content/uploads/2019/12/917f2a89d801e8fc8a885480969e1745c41896f8-1024x576.jpg\" alt=\"\" class=\"wp-image-238\"/></figure>\n<!-- /wp:image -->', 'New Author', '', 'inherit', 'closed', 'closed', '', '200-revision-v1', '', '', '2019-12-06 16:33:12', '2019-12-06 16:33:12', '', 200, 'http://localhost/wordpress/200-revision-v1/', 0, 'revision', '', 0),
(242, 1, '2019-12-06 16:38:22', '2019-12-06 16:38:22', '', 'ca52a3bb075fe6388012207c4c19394c3ee46f0f', '', 'inherit', 'open', 'closed', '', 'ca52a3bb075fe6388012207c4c19394c3ee46f0f', '', '', '2019-12-06 16:38:22', '2019-12-06 16:38:22', '', 56, 'http://localhost/wordpress/wp-content/uploads/2019/11/ca52a3bb075fe6388012207c4c19394c3ee46f0f.jpg', 0, 'attachment', 'image/jpeg', 0),
(243, 1, '2019-12-06 16:38:27', '2019-12-06 16:38:27', '', 'd4d3ac5d3ba5468d2c764303cc76b37380925d5e', '', 'inherit', 'open', 'closed', '', 'd4d3ac5d3ba5468d2c764303cc76b37380925d5e', '', '', '2019-12-06 16:38:27', '2019-12-06 16:38:27', '', 56, 'http://localhost/wordpress/wp-content/uploads/2019/11/d4d3ac5d3ba5468d2c764303cc76b37380925d5e.jpg', 0, 'attachment', 'image/jpeg', 0),
(245, 1, '2019-12-06 16:56:31', '2019-12-06 16:56:31', '<!-- wp:gallery {\"ids\":[160,161,162,163,164,165],\"linkTo\":\"media\",\"className\":\"columns-3 portfolio-gallery\"} -->\n<figure class=\"wp-block-gallery columns-3 is-cropped portfolio-gallery\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><a href=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-6-3.png\"><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-6-3.png\" alt=\"\" data-id=\"160\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-6-3.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-6-3/\" class=\"wp-image-160\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-5-4.png\"><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-5-4.png\" alt=\"\" data-id=\"161\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-5-4.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-5-4/\" class=\"wp-image-161\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-4-3.png\"><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-4-3.png\" alt=\"\" data-id=\"162\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-4-3.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-4-3/\" class=\"wp-image-162\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-3-3.png\"><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-3-3.png\" alt=\"\" data-id=\"163\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-3-3.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-3-3/\" class=\"wp-image-163\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-2-3.png\"><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-2-3.png\" alt=\"\" data-id=\"164\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-2-3.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-2-3/\" class=\"wp-image-164\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-1-3.png\"><img src=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-1-3.png\" alt=\"\" data-id=\"165\" data-full-url=\"http://192.168.1.180/designfly/wp-content/uploads/2019/11/image-1-3.png\" data-link=\"http://192.168.1.180/designfly/portfolio/image-1-3/\" class=\"wp-image-165\"/></a></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2019-12-06 16:56:31', '2019-12-06 16:56:31', '', 31, 'http://localhost/wordpress/31-revision-v1/', 0, 'revision', '', 0),
(246, 1, '2019-12-07 05:56:58', '2019-12-07 05:56:58', '', 'feature-icons', '', 'inherit', 'open', 'closed', '', 'feature-icons-2', '', '', '2019-12-07 05:56:58', '2019-12-07 05:56:58', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/12/feature-icons.png', 0, 'attachment', 'image/png', 0),
(248, 1, '2019-12-07 06:06:25', '2019-12-07 06:06:25', '', 'image-1', '', 'inherit', 'open', 'closed', '', 'image-1-4', '', '', '2019-12-07 06:06:25', '2019-12-07 06:06:25', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/12/image-1-1.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(249, 1, '2019-12-07 06:06:26', '2019-12-07 06:06:26', '', 'image-2', '', 'inherit', 'open', 'closed', '', 'image-2-4', '', '', '2019-12-07 06:06:26', '2019-12-07 06:06:26', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/12/image-2-1.png', 0, 'attachment', 'image/png', 0),
(250, 1, '2019-12-07 06:06:28', '2019-12-07 06:06:28', '', 'image-3', '', 'inherit', 'open', 'closed', '', 'image-3-3', '', '', '2019-12-07 06:06:28', '2019-12-07 06:06:28', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/12/image-3-1.png', 0, 'attachment', 'image/png', 0),
(251, 1, '2019-12-07 06:06:29', '2019-12-07 06:06:29', '', 'image-4', '', 'inherit', 'open', 'closed', '', 'image-4-2', '', '', '2019-12-07 06:06:29', '2019-12-07 06:06:29', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/12/image-4-1.png', 0, 'attachment', 'image/png', 0),
(252, 1, '2019-12-07 06:06:31', '2019-12-07 06:06:31', '', 'image-5', '', 'inherit', 'open', 'closed', '', 'image-5-5', '', '', '2019-12-07 06:06:31', '2019-12-07 06:06:31', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/12/image-5-1.png', 0, 'attachment', 'image/png', 0),
(253, 1, '2019-12-07 06:06:33', '2019-12-07 06:06:33', '', 'image-6', '', 'inherit', 'open', 'closed', '', 'image-6-4', '', '', '2019-12-07 06:06:33', '2019-12-07 06:06:33', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/12/image-6-1.png', 0, 'attachment', 'image/png', 0),
(256, 1, '2019-12-10 08:12:28', '2019-12-10 08:12:28', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Immortals of Maluha', '', 'publish', 'closed', 'closed', '', 'immortals-of-maluha', '', '', '2019-12-31 11:59:30', '2019-12-31 11:59:30', '', 0, 'http://localhost/wordpress/?post_type=book&#038;p=256', 0, 'book', '', 0),
(260, 1, '2019-12-20 11:11:20', '2019-12-20 11:11:20', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Immortals of Maluha', '', 'inherit', 'closed', 'closed', '', '256-revision-v1', '', '', '2019-12-20 11:11:20', '2019-12-20 11:11:20', '', 256, 'http://localhost/wordpress/archives/260', 0, 'revision', '', 0),
(264, 1, '2019-12-20 14:32:23', '2019-12-20 14:32:23', 'jdkjabidbiwBFKSJCBKJBDSJBV', 'book 2', '', 'publish', 'closed', 'closed', '', 'book-2', '', '', '2019-12-31 12:42:30', '2019-12-31 12:42:30', '', 0, 'http://localhost/wordpress/?post_type=book&#038;p=264', 0, 'book', '', 0),
(265, 1, '2019-12-20 14:32:23', '2019-12-20 14:32:23', 'jdkjabidbiwBFKSJCBKJBDSJBV', 'book 2', '', 'inherit', 'closed', 'closed', '', '264-revision-v1', '', '', '2019-12-20 14:32:23', '2019-12-20 14:32:23', '', 264, 'http://localhost/wordpress/archives/265', 0, 'revision', '', 0),
(266, 1, '2019-12-20 14:32:44', '2019-12-20 14:32:44', 'jfkjbfkwjbfjiewfweifnffkn', 'book 3', '', 'publish', 'closed', 'closed', '', 'book-3', '', '', '2019-12-31 09:50:57', '2019-12-31 09:50:57', '', 0, 'http://localhost/wordpress/?post_type=book&#038;p=266', 0, 'book', '', 0),
(267, 1, '2019-12-20 14:32:44', '2019-12-20 14:32:44', 'jfkjbfkwjbfjiewfweifnffkn', 'book 3', '', 'inherit', 'closed', 'closed', '', '266-revision-v1', '', '', '2019-12-20 14:32:44', '2019-12-20 14:32:44', '', 266, 'http://localhost/wordpress/archives/267', 0, 'revision', '', 0),
(268, 1, '2019-12-20 14:32:57', '2019-12-20 14:32:57', 'ndnknffwneion', 'book 4', '', 'publish', 'closed', 'closed', '', 'book-4', '', '', '2019-12-31 12:24:33', '2019-12-31 12:24:33', '', 0, 'http://localhost/wordpress/?post_type=book&#038;p=268', 0, 'book', '', 0),
(269, 1, '2019-12-20 14:32:57', '2019-12-20 14:32:57', 'ndnknffwneion', 'book 4', '', 'inherit', 'closed', 'closed', '', '268-revision-v1', '', '', '2019-12-20 14:32:57', '2019-12-20 14:32:57', '', 268, 'http://localhost/wordpress/archives/269', 0, 'revision', '', 0),
(270, 1, '2019-12-21 09:24:04', '2019-12-21 09:24:04', '<!-- wp:paragraph -->\n<p>[book category=\"novel\" author_name=\"abc\" publisher=\"abc\"  /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'publish', 'open', 'open', '', 'display-posts', '', '', '2019-12-31 13:48:03', '2019-12-31 13:48:03', '', 0, 'http://localhost/wordpress/?p=270', 0, 'post', '', 0),
(271, 1, '2019-12-21 09:24:04', '2019-12-21 09:24:04', '<!-- wp:paragraph -->\n<p>[display-posts]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-21 09:24:04', '2019-12-21 09:24:04', '', 270, 'http://localhost/wordpress/archives/271', 0, 'revision', '', 0),
(273, 1, '2019-12-21 09:42:49', '2019-12-21 09:42:49', '<!-- wp:paragraph -->\n<p>[book author=\"pratik gupta\"]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-21 09:42:49', '2019-12-21 09:42:49', '', 270, 'http://localhost/wordpress/archives/273', 0, 'revision', '', 0),
(274, 1, '2019-12-21 09:43:11', '2019-12-21 09:43:11', '<!-- wp:paragraph -->\n<p>[book author=\"pratik gupta\"][/book]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-21 09:43:11', '2019-12-21 09:43:11', '', 270, 'http://localhost/wordpress/archives/274', 0, 'revision', '', 0),
(275, 1, '2019-12-21 09:43:35', '2019-12-21 09:43:35', '<!-- wp:paragraph -->\n<p>[book author_name=\"pratik gupta\"][/book]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-21 09:43:35', '2019-12-21 09:43:35', '', 270, 'http://localhost/wordpress/archives/275', 0, 'revision', '', 0),
(276, 1, '2019-12-21 09:45:54', '2019-12-21 09:45:54', '<!-- wp:paragraph -->\n<p>[book][/book]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-21 09:45:54', '2019-12-21 09:45:54', '', 270, 'http://localhost/wordpress/archives/276', 0, 'revision', '', 0),
(277, 1, '2019-12-24 14:53:01', '2019-12-24 14:53:01', '<!-- wp:paragraph -->\n<p>[book]hello[/book]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-24 14:53:01', '2019-12-24 14:53:01', '', 270, 'http://localhost/wordpress/archives/277', 0, 'revision', '', 0),
(278, 1, '2019-12-24 15:02:39', '2019-12-24 15:02:39', '<!-- wp:paragraph -->\n<p>[book author_name = \"chetan bhagat\" ]hello[/book]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-24 15:02:39', '2019-12-24 15:02:39', '', 270, 'http://localhost/wordpress/archives/278', 0, 'revision', '', 0),
(279, 1, '2019-12-24 15:17:53', '2019-12-24 15:17:53', '<!-- wp:paragraph -->\n<p>[book author_name = \"Amish Tripathi\" ]hello[/book]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-24 15:17:53', '2019-12-24 15:17:53', '', 270, 'http://localhost/wordpress/archives/279', 0, 'revision', '', 0),
(280, 1, '2019-12-24 16:33:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-12-24 16:33:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=280', 0, 'post', '', 0),
(281, 1, '2019-12-24 16:40:02', '2019-12-24 16:40:02', '<!-- wp:paragraph -->\n<p>[book][/book]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-24 16:40:02', '2019-12-24 16:40:02', '', 270, 'http://localhost/wordpress/archives/281', 0, 'revision', '', 0),
(282, 1, '2019-12-24 17:01:01', '2019-12-24 17:01:01', '<!-- wp:paragraph -->\n<p>[book category=\"novel\" author_name = \"Amish Tripathi\" ]hello[/book]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-24 17:01:01', '2019-12-24 17:01:01', '', 270, 'http://localhost/wordpress/archives/282', 0, 'revision', '', 0),
(283, 1, '2019-12-24 17:02:14', '2019-12-24 17:02:14', '<!-- wp:paragraph -->\n<p>[book category_name=\"novel\" author_name = \"Amish Tripathi\" ]hello[/book]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-24 17:02:14', '2019-12-24 17:02:14', '', 270, 'http://localhost/wordpress/archives/283', 0, 'revision', '', 0),
(284, 1, '2019-12-24 17:03:37', '2019-12-24 17:03:37', '<!-- wp:paragraph -->\n<p>[book category_name=\"novel\"][/book]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-24 17:03:37', '2019-12-24 17:03:37', '', 270, 'http://localhost/wordpress/archives/284', 0, 'revision', '', 0),
(285, 1, '2019-12-24 17:05:07', '2019-12-24 17:05:07', '<!-- wp:paragraph -->\n<p>[book category=\"novel\"][/book]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-24 17:05:07', '2019-12-24 17:05:07', '', 270, 'http://localhost/wordpress/archives/285', 0, 'revision', '', 0),
(286, 1, '2019-12-24 17:05:41', '2019-12-24 17:05:41', '<!-- wp:paragraph -->\n<p>[book author_name = \"Amish Tripathi\" ]hello[/book]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-24 17:05:41', '2019-12-24 17:05:41', '', 270, 'http://localhost/wordpress/archives/286', 0, 'revision', '', 0),
(287, 1, '2019-12-24 17:10:17', '2019-12-24 17:10:17', '<!-- wp:paragraph -->\n<p>[book]hello[/book]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-24 17:10:17', '2019-12-24 17:10:17', '', 270, 'http://localhost/wordpress/archives/287', 0, 'revision', '', 0),
(288, 1, '2019-12-24 17:15:52', '2019-12-24 17:15:52', '<!-- wp:paragraph -->\n<p>[book taxonomy=\"novel\"]hello[/book]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-24 17:15:52', '2019-12-24 17:15:52', '', 270, 'http://localhost/wordpress/archives/288', 0, 'revision', '', 0),
(289, 1, '2019-12-24 17:16:08', '2019-12-24 17:16:08', '<!-- wp:paragraph -->\n<p>[book taxonomy=\"novel\" author_name = \"Amish Tripathi\" ]hello[/book]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-24 17:16:08', '2019-12-24 17:16:08', '', 270, 'http://localhost/wordpress/archives/289', 0, 'revision', '', 0),
(290, 1, '2019-12-24 17:27:09', '2019-12-24 17:27:09', '<!-- wp:paragraph -->\n<p>[book author_name = \"Amish Tripathi\" ]hello[/book]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-24 17:27:09', '2019-12-24 17:27:09', '', 270, 'http://localhost/wordpress/archives/290', 0, 'revision', '', 0),
(291, 1, '2019-12-24 17:28:45', '2019-12-24 17:28:45', '<!-- wp:paragraph -->\n<p>[book category=\"novel\" ]hello[/book]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-24 17:28:45', '2019-12-24 17:28:45', '', 270, 'http://localhost/wordpress/archives/291', 0, 'revision', '', 0),
(292, 1, '2019-12-24 17:40:06', '2019-12-24 17:40:06', '<!-- wp:paragraph -->\n<p>[book]hello[/book]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-24 17:40:06', '2019-12-24 17:40:06', '', 270, 'http://localhost/wordpress/archives/292', 0, 'revision', '', 0),
(294, 1, '2019-12-24 17:42:17', '2019-12-24 17:42:17', '<!-- wp:paragraph -->\n<p>[book]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-24 17:42:17', '2019-12-24 17:42:17', '', 270, 'http://localhost/wordpress/archives/294', 0, 'revision', '', 0),
(295, 1, '2019-12-24 17:48:20', '2019-12-24 17:48:20', '<!-- wp:paragraph -->\n<p>[book author_name=\"Amish Tripathi\"]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-24 17:48:20', '2019-12-24 17:48:20', '', 270, 'http://localhost/wordpress/archives/295', 0, 'revision', '', 0),
(296, 1, '2019-12-24 17:49:07', '2019-12-24 17:49:07', '<!-- wp:paragraph -->\n<p>[book author_name=\"Amish Tripathi\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-24 17:49:07', '2019-12-24 17:49:07', '', 270, 'http://localhost/wordpress/archives/296', 0, 'revision', '', 0),
(297, 1, '2019-12-24 17:51:54', '2019-12-24 17:51:54', '<!-- wp:paragraph -->\n<p>[book category=\"novel\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-24 17:51:54', '2019-12-24 17:51:54', '', 270, 'http://localhost/wordpress/archives/297', 0, 'revision', '', 0),
(298, 1, '2019-12-25 05:30:17', '2019-12-25 05:30:17', '<!-- wp:paragraph -->\n<p>[book/]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-25 05:30:17', '2019-12-25 05:30:17', '', 270, 'http://localhost/wordpress/archives/298', 0, 'revision', '', 0),
(299, 1, '2019-12-25 05:31:22', '2019-12-25 05:31:22', '<!-- wp:paragraph -->\n<p>[book author_name= \"Abhishek Sharma\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-25 05:31:22', '2019-12-25 05:31:22', '', 270, 'http://localhost/wordpress/archives/299', 0, 'revision', '', 0),
(300, 1, '2019-12-25 05:32:03', '2019-12-25 05:32:03', '<!-- wp:paragraph -->\n<p>[book category=\"uncategorized\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-25 05:32:03', '2019-12-25 05:32:03', '', 270, 'http://localhost/wordpress/archives/300', 0, 'revision', '', 0),
(301, 1, '2019-12-25 05:32:19', '2019-12-25 05:32:19', '<!-- wp:paragraph -->\n<p>[book category=\"novel\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-25 05:32:19', '2019-12-25 05:32:19', '', 270, 'http://localhost/wordpress/archives/301', 0, 'revision', '', 0),
(302, 1, '2019-12-25 05:32:32', '2019-12-25 05:32:32', '<!-- wp:paragraph -->\n<p>[book book_category=\"novel\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-25 05:32:32', '2019-12-25 05:32:32', '', 270, 'http://localhost/wordpress/archives/302', 0, 'revision', '', 0),
(303, 1, '2019-12-25 05:32:56', '2019-12-25 05:32:56', '<!-- wp:paragraph -->\n<p>[book category=\"novel\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-25 05:32:56', '2019-12-25 05:32:56', '', 270, 'http://localhost/wordpress/archives/303', 0, 'revision', '', 0),
(304, 1, '2019-12-25 05:33:33', '2019-12-25 05:33:33', '<!-- wp:paragraph -->\n<p>[book category_name=\"novel\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-25 05:33:33', '2019-12-25 05:33:33', '', 270, 'http://localhost/wordpress/archives/304', 0, 'revision', '', 0),
(305, 1, '2019-12-25 05:40:41', '2019-12-25 05:40:41', '<!-- wp:paragraph -->\n<p>[book author_name=\"Amish Tripathi\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-25 05:40:41', '2019-12-25 05:40:41', '', 270, 'http://localhost/wordpress/archives/305', 0, 'revision', '', 0),
(307, 1, '2019-12-25 05:52:13', '2019-12-25 05:52:13', '<!-- wp:paragraph -->\n<p>[book /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-25 05:52:13', '2019-12-25 05:52:13', '', 270, 'http://localhost/wordpress/archives/307', 0, 'revision', '', 0),
(308, 1, '2019-12-25 06:10:01', '2019-12-25 06:10:01', '<!-- wp:paragraph -->\n<p>[book category=\"novel\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-25 06:10:01', '2019-12-25 06:10:01', '', 270, 'http://localhost/wordpress/archives/308', 0, 'revision', '', 0),
(309, 1, '2019-12-25 06:15:38', '2019-12-25 06:15:38', '<!-- wp:paragraph -->\n<p>[book author_name=\"Amish Tripathi\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-25 06:15:38', '2019-12-25 06:15:38', '', 270, 'http://localhost/wordpress/archives/309', 0, 'revision', '', 0),
(311, 1, '2019-12-25 14:27:50', '2019-12-25 14:27:50', '<!-- wp:paragraph -->\n<p>[book category_name=\"novel\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-25 14:27:50', '2019-12-25 14:27:50', '', 270, 'http://localhost/wordpress/archives/311', 0, 'revision', '', 0),
(312, 1, '2019-12-25 16:46:30', '2019-12-25 16:46:30', '<!-- wp:paragraph -->\n<p>[book category_name=\"novel, romance\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-25 16:46:30', '2019-12-25 16:46:30', '', 270, 'http://localhost/wordpress/270-revision-v1/', 0, 'revision', '', 0),
(314, 1, '2019-12-25 16:48:08', '2019-12-25 16:48:08', '<!-- wp:paragraph -->\n<p>[book category_name=\"romance\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-25 16:48:08', '2019-12-25 16:48:08', '', 270, 'http://localhost/wordpress/270-revision-v1/', 0, 'revision', '', 0),
(315, 1, '2019-12-25 16:49:01', '2019-12-25 16:49:01', '<!-- wp:paragraph -->\n<p>[book /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-25 16:49:01', '2019-12-25 16:49:01', '', 270, 'http://localhost/wordpress/archives/315', 0, 'revision', '', 0),
(316, 1, '2019-12-25 17:00:27', '2019-12-25 17:00:27', '<!-- wp:paragraph -->\n<p>[book category_name=\"novel\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-25 17:00:27', '2019-12-25 17:00:27', '', 270, 'http://localhost/wordpress/archives/316', 0, 'revision', '', 0),
(318, 1, '2019-12-25 17:17:49', '2019-12-25 17:17:49', '<!-- wp:paragraph -->\n<p>[book category_name=\"god\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-25 17:17:49', '2019-12-25 17:17:49', '', 270, 'http://localhost/wordpress/archives/318', 0, 'revision', '', 0),
(319, 1, '2019-12-25 17:20:50', '2019-12-25 17:20:50', '<!-- wp:paragraph -->\n<p>[book category_name=\"novel\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-25 17:20:50', '2019-12-25 17:20:50', '', 270, 'http://localhost/wordpress/archives/319', 0, 'revision', '', 0),
(320, 1, '2019-12-25 17:21:08', '2019-12-25 17:21:08', '<!-- wp:paragraph -->\n<p>[book tag=\"god\" category_name=\"novel\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-25 17:21:08', '2019-12-25 17:21:08', '', 270, 'http://localhost/wordpress/archives/320', 0, 'revision', '', 0),
(321, 1, '2019-12-25 17:22:00', '2019-12-25 17:22:00', '<!-- wp:paragraph -->\n<p>[book tag=\"god\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-25 17:22:00', '2019-12-25 17:22:00', '', 270, 'http://localhost/wordpress/archives/321', 0, 'revision', '', 0),
(323, 1, '2019-12-25 17:27:07', '2019-12-25 17:27:07', '<!-- wp:paragraph -->\n<p>[book /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-25 17:27:07', '2019-12-25 17:27:07', '', 270, 'http://localhost/wordpress/archives/323', 0, 'revision', '', 0),
(324, 1, '2019-12-25 17:27:48', '2019-12-25 17:27:48', '<!-- wp:paragraph -->\n<p>[book category_name=\"novel\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-25 17:27:48', '2019-12-25 17:27:48', '', 270, 'http://localhost/wordpress/archives/324', 0, 'revision', '', 0),
(325, 1, '2019-12-25 17:28:35', '2019-12-25 17:28:35', '<!-- wp:paragraph -->\n<p>[book /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-25 17:28:35', '2019-12-25 17:28:35', '', 270, 'http://localhost/wordpress/archives/325', 0, 'revision', '', 0),
(326, 1, '2019-12-25 17:33:35', '2019-12-25 17:33:35', '<!-- wp:paragraph -->\n<p>[book category_name=\"novel\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-25 17:33:35', '2019-12-25 17:33:35', '', 270, 'http://localhost/wordpress/archives/326', 0, 'revision', '', 0),
(327, 1, '2019-12-26 06:13:38', '2019-12-26 06:13:38', '<!-- wp:paragraph -->\n<p>[book /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-26 06:13:38', '2019-12-26 06:13:38', '', 270, 'http://localhost/wordpress/archives/327', 0, 'revision', '', 0),
(328, 1, '2019-12-26 06:21:41', '2019-12-26 06:21:41', '<!-- wp:paragraph -->\n<p>[book category_name=\"novel\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-26 06:21:41', '2019-12-26 06:21:41', '', 270, 'http://localhost/wordpress/archives/328', 0, 'revision', '', 0),
(329, 1, '2019-12-26 06:22:02', '2019-12-26 06:22:02', '<!-- wp:paragraph -->\n<p>[book category_name=\"novel, romance\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-26 06:22:02', '2019-12-26 06:22:02', '', 270, 'http://localhost/wordpress/archives/329', 0, 'revision', '', 0),
(331, 1, '2019-12-26 06:58:01', '2019-12-26 06:58:01', '<!-- wp:paragraph -->\n<p>[book author_name=\"Amish Tripathi\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-26 06:58:01', '2019-12-26 06:58:01', '', 270, 'http://localhost/wordpress/archives/331', 0, 'revision', '', 0),
(332, 1, '2019-12-26 06:58:37', '2019-12-26 06:58:37', '<!-- wp:paragraph -->\n<p>[book author_name=\"pratik\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-26 06:58:37', '2019-12-26 06:58:37', '', 270, 'http://localhost/wordpress/archives/332', 0, 'revision', '', 0),
(333, 1, '2019-12-26 07:04:48', '2019-12-26 07:04:48', '<!-- wp:paragraph -->\n<p>[book /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-26 07:04:48', '2019-12-26 07:04:48', '', 270, 'http://localhost/wordpress/archives/333', 0, 'revision', '', 0),
(334, 1, '2019-12-26 14:39:33', '2019-12-26 14:39:33', '<!-- wp:paragraph -->\n<p>[book category=\"novel\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-26 14:39:33', '2019-12-26 14:39:33', '', 270, 'http://localhost/wordpress/archives/334', 0, 'revision', '', 0),
(335, 1, '2019-12-26 14:42:25', '2019-12-26 14:42:25', '<!-- wp:paragraph -->\n<p>[book category_name=\"novel\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-26 14:42:25', '2019-12-26 14:42:25', '', 270, 'http://localhost/wordpress/archives/335', 0, 'revision', '', 0),
(336, 1, '2019-12-26 14:42:59', '2019-12-26 14:42:59', '<!-- wp:paragraph -->\n<p>[book category_name=\"romance\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-26 14:42:59', '2019-12-26 14:42:59', '', 270, 'http://localhost/wordpress/archives/336', 0, 'revision', '', 0),
(337, 1, '2019-12-26 14:43:33', '2019-12-26 14:43:33', '<!-- wp:paragraph -->\n<p>[book category=\"romance\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-26 14:43:33', '2019-12-26 14:43:33', '', 270, 'http://localhost/wordpress/archives/337', 0, 'revision', '', 0),
(338, 1, '2019-12-26 14:43:53', '2019-12-26 14:43:53', '<!-- wp:paragraph -->\n<p>[book /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-26 14:43:53', '2019-12-26 14:43:53', '', 270, 'http://localhost/wordpress/archives/338', 0, 'revision', '', 0),
(339, 1, '2019-12-26 15:09:11', '2019-12-26 15:09:11', '<!-- wp:paragraph -->\n<p>[book category=\"novel\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-26 15:09:11', '2019-12-26 15:09:11', '', 270, 'http://localhost/wordpress/archives/339', 0, 'revision', '', 0),
(341, 1, '2019-12-27 17:30:17', '2019-12-27 17:30:17', '<!-- wp:paragraph -->\n<p>[book /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-27 17:30:17', '2019-12-27 17:30:17', '', 270, 'http://localhost/wordpress/archives/341', 0, 'revision', '', 0),
(342, 1, '2019-12-29 09:45:02', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-12-29 09:45:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=portfolio&p=342', 0, 'portfolio', '', 0),
(343, 1, '2019-12-30 11:18:38', '2019-12-30 11:18:38', '<!-- wp:paragraph -->\n<p>[book author_name=\"pratik\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-30 11:18:38', '2019-12-30 11:18:38', '', 270, 'http://localhost/wordpress/archives/343', 0, 'revision', '', 0),
(344, 1, '2019-12-30 11:20:37', '2019-12-30 11:20:37', '<!-- wp:paragraph -->\n<p>[book category=\"novel\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-30 11:20:37', '2019-12-30 11:20:37', '', 270, 'http://localhost/wordpress/archives/344', 0, 'revision', '', 0),
(345, 1, '2019-12-30 11:28:19', '2019-12-30 11:28:19', '<!-- wp:paragraph -->\n<p>[book author_name=\"abc\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-30 11:28:19', '2019-12-30 11:28:19', '', 270, 'http://localhost/wordpress/archives/345', 0, 'revision', '', 0),
(346, 1, '2019-12-30 11:36:35', '2019-12-30 11:36:35', '<!-- wp:paragraph -->\n<p>[book author_name=\"abc\"  category=\"novel\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-30 11:36:35', '2019-12-30 11:36:35', '', 270, 'http://localhost/wordpress/archives/346', 0, 'revision', '', 0),
(347, 1, '2019-12-30 11:36:53', '2019-12-30 11:36:53', '<!-- wp:paragraph -->\n<p>[book  category=\"novel\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-30 11:36:53', '2019-12-30 11:36:53', '', 270, 'http://localhost/wordpress/archives/347', 0, 'revision', '', 0),
(349, 1, '2019-12-30 11:43:47', '2019-12-30 11:43:47', '<!-- wp:paragraph -->\n<p>[book  author_name=\"abc\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-30 11:43:47', '2019-12-30 11:43:47', '', 270, 'http://localhost/wordpress/archives/349', 0, 'revision', '', 0),
(350, 1, '2019-12-30 13:19:44', '2019-12-30 13:19:44', '<!-- wp:paragraph -->\n<p>[book /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-30 13:19:44', '2019-12-30 13:19:44', '', 270, 'http://localhost/wordpress/archives/350', 0, 'revision', '', 0),
(352, 1, '2019-12-30 13:26:20', '2019-12-30 13:26:20', '<!-- wp:paragraph -->\n<p>[book author_name=\"mm\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-30 13:26:20', '2019-12-30 13:26:20', '', 270, 'http://localhost/wordpress/archives/352', 0, 'revision', '', 0),
(353, 1, '2019-12-30 13:27:19', '2019-12-30 13:27:19', '<!-- wp:paragraph -->\n<p>[book author_name=\"mn\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-30 13:27:19', '2019-12-30 13:27:19', '', 270, 'http://localhost/wordpress/archives/353', 0, 'revision', '', 0),
(354, 1, '2019-12-30 13:30:08', '2019-12-30 13:30:08', '<!-- wp:paragraph -->\n<p>[book author_name=\"abc\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-30 13:30:08', '2019-12-30 13:30:08', '', 270, 'http://localhost/wordpress/archives/354', 0, 'revision', '', 0),
(356, 1, '2019-12-30 13:33:52', '2019-12-30 13:33:52', '<!-- wp:paragraph -->\n<p>[book category=\"novel\" author_name=\"abc\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-30 13:33:52', '2019-12-30 13:33:52', '', 270, 'http://localhost/wordpress/archives/356', 0, 'revision', '', 0),
(357, 1, '2019-12-30 16:33:45', '2019-12-30 16:33:45', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque<br>\n                            laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi<br>\n                            architecto beatae vitae dicta sunt explicabo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Sample', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2019-12-30 16:33:45', '2019-12-30 16:33:45', '', 92, 'http://localhost/wordpress/archives/357', 0, 'revision', '', 0),
(358, 1, '2019-12-30 19:15:39', '2019-12-30 19:15:39', '<!-- wp:paragraph -->\n<p>[book author_name=\"abc\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-30 19:15:39', '2019-12-30 19:15:39', '', 270, 'http://localhost/wordpress/archives/358', 0, 'revision', '', 0),
(360, 1, '2019-12-30 19:46:00', '2019-12-30 19:46:00', '<!-- wp:paragraph -->\n<p>[book category = \"novel\" author_name=\"abc\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-30 19:46:00', '2019-12-30 19:46:00', '', 270, 'http://localhost/wordpress/archives/360', 0, 'revision', '', 0),
(361, 1, '2019-12-30 19:52:02', '2019-12-30 19:52:02', '<!-- wp:paragraph -->\n<p>[book author_name=\"abc\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-30 19:52:02', '2019-12-30 19:52:02', '', 270, 'http://localhost/wordpress/archives/361', 0, 'revision', '', 0),
(362, 1, '2019-12-30 19:55:35', '2019-12-30 19:55:35', '<!-- wp:paragraph -->\n<p>[book category = \"novel author_name=\"abc\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-30 19:55:35', '2019-12-30 19:55:35', '', 270, 'http://localhost/wordpress/archives/362', 0, 'revision', '', 0),
(363, 1, '2019-12-30 19:55:42', '2019-12-30 19:55:42', '<!-- wp:paragraph -->\n<p>[book category = \"novel\" author_name=\"abc\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-30 19:55:42', '2019-12-30 19:55:42', '', 270, 'http://localhost/wordpress/archives/363', 0, 'revision', '', 0),
(364, 1, '2019-12-30 19:57:18', '2019-12-30 19:57:18', '<!-- wp:paragraph -->\n<p>[book category = \"novel\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-30 19:57:18', '2019-12-30 19:57:18', '', 270, 'http://localhost/wordpress/archives/364', 0, 'revision', '', 0),
(365, 1, '2019-12-30 19:58:15', '2019-12-30 19:58:15', '<!-- wp:paragraph -->\n<p>[book category = \"novel\" author_name = \"abc\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-30 19:58:15', '2019-12-30 19:58:15', '', 270, 'http://localhost/wordpress/archives/365', 0, 'revision', '', 0),
(366, 1, '2019-12-30 20:06:27', '2019-12-30 20:06:27', '<!-- wp:paragraph -->\n<p>[book /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-30 20:06:27', '2019-12-30 20:06:27', '', 270, 'http://localhost/wordpress/archives/366', 0, 'revision', '', 0),
(367, 1, '2019-12-30 20:06:43', '2019-12-30 20:06:43', '<!-- wp:paragraph -->\n<p>[book publisher = \"abc\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-30 20:06:43', '2019-12-30 20:06:43', '', 270, 'http://localhost/wordpress/archives/367', 0, 'revision', '', 0),
(368, 1, '2019-12-30 20:07:27', '2019-12-30 20:07:27', '<!-- wp:paragraph -->\n<p>[book category=\"novel\" publisher = \"abc\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-30 20:07:27', '2019-12-30 20:07:27', '', 270, 'http://localhost/wordpress/archives/368', 0, 'revision', '', 0),
(369, 1, '2019-12-30 20:08:08', '2019-12-30 20:08:08', '<!-- wp:paragraph -->\n<p>[book category=\"novel\" publisher = \"abc\"  author_name=\"abc\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-30 20:08:08', '2019-12-30 20:08:08', '', 270, 'http://localhost/wordpress/archives/369', 0, 'revision', '', 0),
(370, 1, '2019-12-31 06:28:42', '2019-12-31 06:28:42', '<!-- wp:paragraph -->\n<p>[book category=\"novel\" publisher = \"abc\"  author_name=\"mn\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-31 06:28:42', '2019-12-31 06:28:42', '', 270, 'http://localhost/wordpress/archives/370', 0, 'revision', '', 0),
(371, 1, '2019-12-31 06:29:29', '2019-12-31 06:29:29', '<!-- wp:paragraph -->\n<p>[book category=\"novel\" author_name=\"mn\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-31 06:29:29', '2019-12-31 06:29:29', '', 270, 'http://localhost/wordpress/archives/371', 0, 'revision', '', 0),
(372, 1, '2019-12-31 06:29:54', '2019-12-31 06:29:54', '<!-- wp:paragraph -->\n<p>[book category=\"novel\" author_name=\"pratik\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-31 06:29:54', '2019-12-31 06:29:54', '', 270, 'http://localhost/wordpress/archives/372', 0, 'revision', '', 0),
(373, 1, '2019-12-31 09:35:38', '2019-12-31 09:35:38', '<!-- wp:paragraph -->\n<p>[book category=\"novel\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-31 09:35:38', '2019-12-31 09:35:38', '', 270, 'http://localhost/wordpress/archives/373', 0, 'revision', '', 0),
(374, 1, '2019-12-31 09:36:59', '2019-12-31 09:36:59', '<!-- wp:paragraph -->\n<p>[book category=\"novel\" author_name=\"abc\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-31 09:36:59', '2019-12-31 09:36:59', '', 270, 'http://localhost/wordpress/archives/374', 0, 'revision', '', 0),
(375, 1, '2019-12-31 09:37:41', '2019-12-31 09:37:41', '<!-- wp:paragraph -->\n<p>[book author_name=\"abc\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-31 09:37:41', '2019-12-31 09:37:41', '', 270, 'http://localhost/wordpress/archives/375', 0, 'revision', '', 0),
(376, 1, '2019-12-31 09:43:18', '2019-12-31 09:43:18', '<!-- wp:paragraph -->\n<p>[book category=\"novel\" author_name=\"abc\" publisher=\"abc\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-31 09:43:18', '2019-12-31 09:43:18', '', 270, 'http://localhost/wordpress/archives/376', 0, 'revision', '', 0),
(377, 1, '2019-12-31 09:51:31', '2019-12-31 09:51:31', '<!-- wp:paragraph -->\n<p>[book author_name=\"abc\" publisher=\"abc\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-31 09:51:31', '2019-12-31 09:51:31', '', 270, 'http://localhost/wordpress/archives/377', 0, 'revision', '', 0),
(379, 1, '2019-12-31 11:59:06', '2019-12-31 11:59:06', '<!-- wp:paragraph -->\n<p>[book category=\"novel\" author_name=\"abc\" publisher=\"abc\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-31 11:59:06', '2019-12-31 11:59:06', '', 270, 'http://localhost/wordpress/archives/379', 0, 'revision', '', 0),
(380, 1, '2019-12-31 12:05:44', '2019-12-31 12:05:44', '<!-- wp:paragraph -->\n<p>[book category=\"novel\" author_name=\"abc\" publisher=\"abc\" year=\"2004\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-31 12:05:44', '2019-12-31 12:05:44', '', 270, 'http://localhost/wordpress/archives/380', 0, 'revision', '', 0),
(382, 1, '2019-12-31 12:08:29', '2019-12-31 12:08:29', '<!-- wp:paragraph -->\n<p>[book category=\"novel\" author_name=\"abc\" publisher=\"abc\" year=\"2017\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-31 12:08:29', '2019-12-31 12:08:29', '', 270, 'http://localhost/wordpress/archives/382', 0, 'revision', '', 0),
(383, 1, '2019-12-31 12:31:26', '2019-12-31 12:31:26', '<!-- wp:paragraph -->\n<p>[book category=\"novel\" author_name=\"abc\" publisher=\"abc\" year=\"2004\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-31 12:31:26', '2019-12-31 12:31:26', '', 270, 'http://localhost/wordpress/archives/383', 0, 'revision', '', 0),
(384, 1, '2019-12-31 12:40:35', '2019-12-31 12:40:35', '<!-- wp:paragraph -->\n<p>[book category=\"novel\" author_name=\"abc\" publisher=\"abc\" year=\"2017\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-31 12:40:35', '2019-12-31 12:40:35', '', 270, 'http://localhost/wordpress/archives/384', 0, 'revision', '', 0),
(386, 1, '2019-12-31 12:42:45', '2019-12-31 12:42:45', '<!-- wp:paragraph -->\n<p>[book category=\"novel\" author_name=\"abc\" publisher=\"abc\" year=\"2004\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-31 12:42:45', '2019-12-31 12:42:45', '', 270, 'http://localhost/wordpress/archives/386', 0, 'revision', '', 0),
(387, 1, '2019-12-31 12:48:11', '2019-12-31 12:48:11', '<!-- wp:paragraph -->\n<p>[book category=\"novel\" author_name=\"abc\" publisher=\"abc\" year=\"2006\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-31 12:48:11', '2019-12-31 12:48:11', '', 270, 'http://localhost/wordpress/archives/387', 0, 'revision', '', 0),
(389, 1, '2019-12-31 12:51:18', '2019-12-31 12:51:18', '<!-- wp:paragraph -->\n<p>[book id = \"264\" category=\"novel\" author_name=\"abc\" publisher=\"abc\" year=\"2006\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-31 12:51:18', '2019-12-31 12:51:18', '', 270, 'http://localhost/wordpress/archives/389', 0, 'revision', '', 0),
(390, 1, '2019-12-31 12:51:40', '2019-12-31 12:51:40', '<!-- wp:paragraph -->\n<p>[book id = \"256\" category=\"novel\" author_name=\"abc\" publisher=\"abc\" year=\"2006\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-31 12:51:40', '2019-12-31 12:51:40', '', 270, 'http://localhost/wordpress/archives/390', 0, 'revision', '', 0),
(391, 1, '2019-12-31 12:53:45', '2019-12-31 12:53:45', '<!-- wp:paragraph -->\n<p>[book id = \"255\" category=\"novel\" author_name=\"abc\" publisher=\"abc\" year=\"2006\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-31 12:53:45', '2019-12-31 12:53:45', '', 270, 'http://localhost/wordpress/archives/391', 0, 'revision', '', 0),
(392, 1, '2019-12-31 12:58:07', '2019-12-31 12:58:07', '<!-- wp:paragraph -->\n<p>[book id = \"256\" category=\"novel\" author_name=\"abc\" publisher=\"abc\" year=\"2006\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-31 12:58:07', '2019-12-31 12:58:07', '', 270, 'http://localhost/wordpress/archives/392', 0, 'revision', '', 0),
(393, 1, '2019-12-31 12:59:33', '2019-12-31 12:59:33', '<!-- wp:paragraph -->\n<p>[book id = \"255\" category=\"novel\" author_name=\"abc\" publisher=\"abc\" year=\"2006\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-31 12:59:33', '2019-12-31 12:59:33', '', 270, 'http://localhost/wordpress/archives/393', 0, 'revision', '', 0),
(394, 1, '2019-12-31 13:00:53', '2019-12-31 13:00:53', '<!-- wp:paragraph -->\n<p>[book id = \"256\" category=\"novel\" author_name=\"abc\" publisher=\"abc\" year=\"2006\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-31 13:00:53', '2019-12-31 13:00:53', '', 270, 'http://localhost/wordpress/archives/394', 0, 'revision', '', 0),
(395, 1, '2019-12-31 13:01:10', '2019-12-31 13:01:10', '<!-- wp:paragraph -->\n<p>[book id = \"256\" category=\"novel\" author_name=\"abc\" publisher=\"abc\" year=\"2004\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-31 13:01:10', '2019-12-31 13:01:10', '', 270, 'http://localhost/wordpress/archives/395', 0, 'revision', '', 0),
(396, 1, '2019-12-31 13:03:23', '2019-12-31 13:03:23', '<!-- wp:paragraph -->\n<p>[book author_name=\"abc\" publisher=\"abc\" year=\"2004\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-31 13:03:23', '2019-12-31 13:03:23', '', 270, 'http://localhost/wordpress/archives/396', 0, 'revision', '', 0),
(397, 1, '2019-12-31 13:03:46', '2019-12-31 13:03:46', '<!-- wp:paragraph -->\n<p>[book author_name=\"abc\" publisher=\"abc\" year=\"2006\" /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-31 13:03:46', '2019-12-31 13:03:46', '', 270, 'http://localhost/wordpress/archives/397', 0, 'revision', '', 0),
(398, 1, '2019-12-31 13:04:08', '2019-12-31 13:04:08', '<!-- wp:paragraph -->\n<p>[book author_name=\"abc\" publisher=\"abc\"  /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-31 13:04:08', '2019-12-31 13:04:08', '', 270, 'http://localhost/wordpress/archives/398', 0, 'revision', '', 0),
(400, 1, '2019-12-31 13:19:23', '2019-12-31 13:19:23', '<!-- wp:paragraph -->\n<p>[book category=\"novel\" author_name=\"abc\" publisher=\"abc\"  /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-31 13:19:23', '2019-12-31 13:19:23', '', 270, 'http://localhost/wordpress/archives/400', 0, 'revision', '', 0),
(401, 1, '2019-12-31 13:45:44', '2019-12-31 13:45:44', '<!-- wp:paragraph -->\n<p>[book category=\"novel\" author_name=\"abc\" publisher=\"pqr\"  /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-31 13:45:44', '2019-12-31 13:45:44', '', 270, 'http://localhost/wordpress/archives/401', 0, 'revision', '', 0),
(402, 1, '2019-12-31 13:47:06', '2019-12-31 13:47:06', '<!-- wp:paragraph -->\n<p>[book category=\"novel\" author_name=\"abc\" publisher=\"abc\"  /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-31 13:47:06', '2019-12-31 13:47:06', '', 270, 'http://localhost/wordpress/archives/402', 0, 'revision', '', 0),
(403, 1, '2019-12-31 13:47:56', '2019-12-31 13:47:56', '<!-- wp:paragraph -->\n<p>[book category=\"novel\" author_name=\"abc\" publisher=\"pqr\"  /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-31 13:47:56', '2019-12-31 13:47:56', '', 270, 'http://localhost/wordpress/archives/403', 0, 'revision', '', 0),
(404, 1, '2019-12-31 13:48:03', '2019-12-31 13:48:03', '<!-- wp:paragraph -->\n<p>[book category=\"novel\" author_name=\"abc\" publisher=\"abc\"  /]</p>\n<!-- /wp:paragraph -->', 'display posts', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2019-12-31 13:48:03', '2019-12-31 13:48:03', '', 270, 'http://localhost/wordpress/archives/404', 0, 'revision', '', 0),
(405, 1, '2019-12-31 15:51:07', '2019-12-31 15:51:07', '<!-- wp:paragraph -->\n<p>Working with WordPress is a breeze, mainly because the architecture of the content management system is rock-solid and easy to understand but most importantly because the community is so big and can offer you solutions for all your needs, through themes and plugins. Those who run websites built on WordPress are using a series of plugins which can make their life easier and more productive but generally speaking, plugins affect the loading speed performances of your website and there are some cases which don`t require using a plugin.</p>\n<!-- /wp:paragraph -->', 'New Author', '', 'inherit', 'closed', 'closed', '', '200-revision-v1', '', '', '2019-12-31 15:51:07', '2019-12-31 15:51:07', '', 200, 'http://localhost/wordpress/archives/405', 0, 'revision', '', 0),
(406, 1, '2019-12-31 15:53:25', '2019-12-31 15:53:25', '<!-- wp:paragraph -->\n<p>Working with WordPress is a breeze, mainly because the architecture of the content management system is rock-solid and easy to understand but most importantly because the community is so big and can offer you solutions for all your needs, through themes and plugins. Those who run websites built on WordPress are using a series of plugins which can make their life easier and more productive but generally speaking, plugins affect the loading speed performances of your website and there are some cases which don`t require using a plugin.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":238} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wp-content/uploads/2019/12/917f2a89d801e8fc8a885480969e1745c41896f8-1024x576.jpg\" alt=\"\" class=\"wp-image-238\"/></figure>\n<!-- /wp:image -->', 'New Author', '', 'inherit', 'closed', 'closed', '', '200-revision-v1', '', '', '2019-12-31 15:53:25', '2019-12-31 15:53:25', '', 200, 'http://localhost/wordpress/archives/406', 0, 'revision', '', 0),
(407, 1, '2019-12-31 15:55:57', '2019-12-31 15:55:57', '<!-- wp:paragraph -->\n<p>Working with WordPress is a breeze, mainly because the architecture of the content management system is rock-solid and easy to understand but most importantly because the community is so big and can offer you solutions for all your needs, through themes and plugins. Those who run websites built on WordPress are using a series of plugins which can make their life easier and more productive but generally speaking, plugins affect the loading speed performances of your website and there are some cases which don`t require using a plugin.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":247} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wp-content/uploads/2019/11/slider-image2.png\" alt=\"\" class=\"wp-image-247\"/></figure>\n<!-- /wp:image -->', 'New Author', '', 'inherit', 'closed', 'closed', '', '200-revision-v1', '', '', '2019-12-31 15:55:57', '2019-12-31 15:55:57', '', 200, 'http://localhost/wordpress/archives/407', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(409, 1, '2019-12-31 15:57:22', '2019-12-31 15:57:22', '<!-- wp:paragraph -->\n<p>Working with WordPress is a breeze, mainly because the architecture of the content management system is rock-solid and easy to understand but most importantly because the community is so big and can offer you solutions for all your needs, through themes and plugins. Those who run websites built on WordPress are using a series of plugins which can make their life easier and more productive but generally speaking, plugins affect the loading speed performances of your website and there are some cases which don`t require using a plugin.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":408} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wp-content/uploads/2019/12/917f2a89d801e8fc8a885480969e1745c41896f8-1024x576.jpg\" alt=\"\" class=\"wp-image-408\"/></figure>\n<!-- /wp:image -->', 'New Author', '', 'inherit', 'closed', 'closed', '', '200-revision-v1', '', '', '2019-12-31 15:57:22', '2019-12-31 15:57:22', '', 200, 'http://localhost/wordpress/archives/409', 0, 'revision', '', 0),
(411, 1, '2019-12-31 16:02:27', '2019-12-31 16:02:27', '<!-- wp:paragraph -->\n<p>Working with WordPress is a breeze, mainly because the architecture of the content management system is rock-solid and easy to understand but most importantly because the community is so big and can offer you solutions for all your needs, through themes and plugins. Those who run websites built on WordPress are using a series of plugins which can make their life easier and more productive but generally speaking, plugins affect the loading speed performances of your website and there are some cases which don`t require using a plugin.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":410} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wp-content/uploads/2019/12/Capture10.jpg\" alt=\"\" class=\"wp-image-410\"/></figure>\n<!-- /wp:image -->', 'New Author', '', 'inherit', 'closed', 'closed', '', '200-revision-v1', '', '', '2019-12-31 16:02:27', '2019-12-31 16:02:27', '', 200, 'http://localhost/wordpress/archives/411', 0, 'revision', '', 0),
(412, 1, '2019-12-31 16:04:53', '2019-12-31 16:04:53', '<!-- wp:paragraph -->\n<p>Working with WordPress is a breeze, mainly because the architecture of the content management system is rock-solid and easy to understand but most importantly because the community is so big and can offer you solutions for all your needs, through themes and plugins. Those who run websites built on WordPress are using a series of plugins which can make their life easier and more productive but generally speaking, plugins affect the loading speed performances of your website and there are some cases which don`t require using a plugin.</p>\n<!-- /wp:paragraph -->', 'New Author', '', 'inherit', 'closed', 'closed', '', '200-revision-v1', '', '', '2019-12-31 16:04:53', '2019-12-31 16:04:53', '', 200, 'http://localhost/wordpress/archives/412', 0, 'revision', '', 0),
(414, 1, '2019-12-31 16:06:07', '2019-12-31 16:06:07', '<!-- wp:paragraph -->\n<p>Working with WordPress is a breeze, mainly because the architecture of the content management system is rock-solid and easy to understand but most importantly because the community is so big and can offer you solutions for all your needs, through themes and plugins. Those who run websites built on WordPress are using a series of plugins which can make their life easier and more productive but generally speaking, plugins affect the loading speed performances of your website and there are some cases which don`t require using a plugin.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":413} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wp-content/uploads/2019/12/917f2a89d801e8fc8a885480969e1745c41896f8-1024x576.jpg\" alt=\"\" class=\"wp-image-413\"/></figure>\n<!-- /wp:image -->', 'New Author', '', 'inherit', 'closed', 'closed', '', '200-revision-v1', '', '', '2019-12-31 16:06:07', '2019-12-31 16:06:07', '', 200, 'http://localhost/wordpress/archives/414', 0, 'revision', '', 0),
(415, 1, '2019-12-31 16:09:01', '2019-12-31 16:09:01', '<!-- wp:paragraph -->\n<p>Working with WordPress is a breeze, mainly because the architecture of the content management system is rock-solid and easy to understand but most importantly because the community is so big and can offer you solutions for all your needs, through themes and plugins. Those who run websites built on WordPress are using a series of plugins which can make their life easier and more productive but generally speaking, plugins affect the loading speed performances of your website and there are some cases which don`t require using a plugin.</p>\n<!-- /wp:paragraph -->', 'New Author', '', 'inherit', 'closed', 'closed', '', '200-revision-v1', '', '', '2019-12-31 16:09:01', '2019-12-31 16:09:01', '', 200, 'http://localhost/wordpress/archives/415', 0, 'revision', '', 0),
(416, 1, '2019-12-31 16:11:57', '2019-12-31 16:11:57', '', 'f1775ff4377209347d1c486d3a619e7c75a3cbfb', '', 'inherit', 'open', 'closed', '', 'f1775ff4377209347d1c486d3a619e7c75a3cbfb', '', '', '2019-12-31 16:11:57', '2019-12-31 16:11:57', '', 200, 'http://localhost/wordpress/wp-content/uploads/2019/12/f1775ff4377209347d1c486d3a619e7c75a3cbfb.jpg', 0, 'attachment', 'image/jpeg', 0),
(417, 1, '2019-12-31 16:12:01', '2019-12-31 16:12:01', '<!-- wp:paragraph -->\n<p>Working with WordPress is a breeze, mainly because the architecture of the content management system is rock-solid and easy to understand but most importantly because the community is so big and can offer you solutions for all your needs, through themes and plugins. Those who run websites built on WordPress are using a series of plugins which can make their life easier and more productive but generally speaking, plugins affect the loading speed performances of your website and there are some cases which don`t require using a plugin.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":416} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wp-content/uploads/2019/12/f1775ff4377209347d1c486d3a619e7c75a3cbfb-1024x576.jpg\" alt=\"\" class=\"wp-image-416\"/></figure>\n<!-- /wp:image -->', 'New Author', '', 'inherit', 'closed', 'closed', '', '200-revision-v1', '', '', '2019-12-31 16:12:01', '2019-12-31 16:12:01', '', 200, 'http://localhost/wordpress/archives/417', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(9, 9, 'category_image', ''),
(10, 9, '_category_image', 'field_5ddb613b34a9a'),
(11, 10, 'category_image', '246'),
(12, 10, '_category_image', 'field_5ddb613b34a9a'),
(13, 11, 'category_image', '246'),
(14, 11, '_category_image', 'field_5ddb613b34a9a'),
(15, 12, 'category_image', '246'),
(16, 12, '_category_image', 'field_5ddb613b34a9a');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(3, 'Menu 1', 'menu-1', 0),
(4, 'Home Page Slider', 'home-page-slider', 0),
(9, 'test', 'tedt', 0),
(10, 'Advertising', 'advertising', 0),
(11, 'Multimedia', 'multimedia', 0),
(12, 'Photography', 'photography', 0),
(13, 'Novel', 'novel', 0),
(14, 'Sci-Fi', 'sci-fi', 0),
(15, 'Romance', 'romance', 0),
(16, 'Mythology', 'mythology', 0),
(17, 'God', 'god', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(47, 3, 0),
(48, 3, 0),
(50, 3, 0),
(71, 4, 0),
(72, 4, 0),
(77, 4, 0),
(92, 1, 0),
(158, 3, 0),
(159, 3, 0),
(183, 10, 0),
(185, 12, 0),
(187, 11, 0),
(189, 10, 0),
(189, 11, 0),
(189, 12, 0),
(200, 1, 0),
(222, 10, 0),
(223, 11, 0),
(224, 12, 0),
(225, 12, 0),
(226, 12, 0),
(256, 13, 0),
(256, 16, 0),
(256, 17, 0),
(264, 15, 0),
(266, 13, 0),
(268, 13, 0),
(270, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 5),
(4, 4, 'wpsisac_slider-category', 'Home Page Slider', 0, 3),
(9, 9, 'portfolios', 'rrr', 0, 0),
(10, 10, 'portfolios', 'this is advertising.', 0, 3),
(11, 11, 'portfolios', 'this is multimedia', 0, 3),
(12, 12, 'portfolios', 'this is photography.', 0, 5),
(13, 13, 'book_category', '', 0, 3),
(14, 14, 'book_category', '', 0, 0),
(15, 15, 'book_category', '', 0, 1),
(16, 16, 'book_tag', '', 0, 1),
(17, 17, 'book_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', 'Pratik'),
(3, 1, 'last_name', 'Gupta'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice,text_widget_custom_html'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"c9f82804baf1acdaaf641b1f7de378d4a092e082f62f7d1b7767f68980a5d207\";a:4:{s:10:\"expiration\";i:1577877437;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36\";s:5:\"login\";i:1577704637;}s:64:\"a42ee00b7d96bdd75285f40075ee81c6c06aa9cbb42406eb95cc1cc713e61e33\";a:4:{s:10:\"expiration\";i:1578030711;s:2:\"ip\";s:13:\"106.222.34.26\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36\";s:5:\"login\";i:1577857911;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '280'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"106.222.34.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:0:{}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:0:{}'),
(21, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(22, 1, 'nav_menu_recently_edited', '3'),
(23, 1, 'closedpostboxes_page', 'a:1:{i:0;s:23:\"acf-group_5dd67ca6b8fcc\";}'),
(24, 1, 'metaboxhidden_page', 'a:0:{}'),
(25, 1, 'wp_user-settings', 'siteorigin_panels_setting_tab=welcome&libraryContent=browse&mfold=o&editor=html'),
(26, 1, 'wp_user-settings-time', '1575650423'),
(27, 1, 'closedpostboxes_slick_slider', 'a:1:{i:0;s:14:\"custom-metabox\";}'),
(28, 1, 'metaboxhidden_slick_slider', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(29, 1, 'bwg_photo_gallery', '1'),
(30, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:23:\"submitdiv,pageparentdiv\";s:6:\"normal\";s:83:\"acf-group_5dd67ca6b8fcc,revisionsdiv,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(31, 1, 'screen_layout_page', '2'),
(32, 1, 'enable_custom_fields', '1'),
(33, 1, 'acf_user_settings', 'a:1:{s:15:\"show_field_keys\";s:1:\"1\";}'),
(34, 1, 'closedpostboxes_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(35, 1, 'metaboxhidden_acf-field-group', 'a:0:{}'),
(36, 1, 'wp_yarpp_saw_optin', '1'),
(37, 1, 'edit_post_per_page', '20'),
(38, 2, 'nickname', 'abhisheks'),
(39, 2, 'first_name', 'Abhishek'),
(40, 2, 'last_name', 'Sharma'),
(41, 2, 'description', ''),
(42, 2, 'rich_editing', 'true'),
(43, 2, 'syntax_highlighting', 'true'),
(44, 2, 'comment_shortcuts', 'false'),
(45, 2, 'admin_color', 'fresh'),
(46, 2, 'use_ssl', '0'),
(47, 2, 'show_admin_bar_front', 'true'),
(48, 2, 'locale', ''),
(49, 2, 'wp_capabilities', 'a:1:{s:6:\"author\";b:1;}'),
(50, 2, 'wp_user_level', '2'),
(51, 2, 'dismissed_wp_pointers', ''),
(53, 2, 'wp_dashboard_quick_press_last_post_id', '199'),
(54, 2, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"192.168.1.0\";}'),
(55, 2, 'session_tokens', 'a:1:{s:64:\"7e7f44a78e93200744717e28ccdb97ee64bdfe775ee94a36aac7064b229d57d8\";a:4:{s:10:\"expiration\";i:1574845944;s:2:\"ip\";s:13:\"192.168.1.180\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:70.0) Gecko/20100101 Firefox/70.0\";s:5:\"login\";i:1574673144;}}'),
(56, 3, 'nickname', 'parthp'),
(57, 3, 'first_name', 'Patel'),
(58, 3, 'last_name', 'Parth'),
(59, 3, 'description', ''),
(60, 3, 'rich_editing', 'true'),
(61, 3, 'syntax_highlighting', 'true'),
(62, 3, 'comment_shortcuts', 'false'),
(63, 3, 'admin_color', 'fresh'),
(64, 3, 'use_ssl', '0'),
(65, 3, 'show_admin_bar_front', 'true'),
(66, 3, 'locale', ''),
(67, 3, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(68, 3, 'wp_user_level', '0'),
(69, 3, 'dismissed_wp_pointers', ''),
(70, 1, 'closedpostboxes_ris_gallery', 'a:0:{}'),
(71, 1, 'metaboxhidden_ris_gallery', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(72, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:38:\"dashboard_right_now,dashboard_activity\";s:4:\"side\";s:39:\"dashboard_quick_press,dashboard_primary\";s:7:\"column3\";s:30:\"book_category_dashboard_widget\";s:7:\"column4\";s:0:\"\";}'),
(73, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(74, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(75, 4, 'nickname', 'rtcamp'),
(76, 4, 'first_name', 'rtcamp'),
(77, 4, 'last_name', 'rtcamp'),
(78, 4, 'description', ''),
(79, 4, 'rich_editing', 'true'),
(80, 4, 'syntax_highlighting', 'true'),
(81, 4, 'comment_shortcuts', 'false'),
(82, 4, 'admin_color', 'fresh'),
(83, 4, 'use_ssl', '0'),
(84, 4, 'show_admin_bar_front', 'true'),
(85, 4, 'locale', ''),
(86, 4, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(87, 4, 'wp_user_level', '10'),
(88, 4, 'dismissed_wp_pointers', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BO.DxVo0UP/QTP3N/mntRvLcj0kMas.', 'admin', 'guptapratik12121996@gmail.com', '', '2019-11-21 08:40:58', '', 0, 'admin'),
(2, 'abhisheks', '$P$B7BpuBYijOur8PIpxDSfBsVvJr5Sqd1', 'abhisheks', 'abhi@gmail.com', 'http://abc.com', '2019-11-25 04:24:18', '1574655860:$P$BMG0DCDwKBLjfen7jqAqEc2tZjyp3Q.', 0, 'Abhishek Sharma'),
(3, 'parthp', '$P$BVMZiyw6Nr/asVmf4VKhYwHY6Z/KvA/', 'parthp', 'itw.parthp@gmail.com', '', '2019-12-03 07:26:07', '1575357969:$P$BQOT0E1aBXFoKQFYUmy01HlK26msFn/', 0, 'Patel Parth'),
(4, 'rtcamp', '$P$BB6EEw6GPxw9ZG1p9L8fBQOR3JRun6.', 'rtcamp', 'rtcamp@gmail.com', 'http://rtcamp.com', '2020-01-01 06:32:19', '', 0, 'rtcamp rtcamp');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yarpp_related_cache`
--

CREATE TABLE `wp_yarpp_related_cache` (
  `reference_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `score` float UNSIGNED NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yarpp_related_cache`
--

INSERT INTO `wp_yarpp_related_cache` (`reference_ID`, `ID`, `score`, `date`) VALUES
(1, 0, 0, '2019-11-23 05:33:57'),
(33, 0, 0, '2019-11-26 12:16:10'),
(92, 0, 0, '2019-11-23 07:14:06'),
(139, 0, 0, '2019-12-06 05:08:06'),
(140, 0, 0, '2019-11-25 08:29:24'),
(164, 0, 0, '2019-12-06 05:08:11'),
(200, 0, 0, '2019-11-25 04:44:03'),
(227, 0, 0, '2019-11-26 04:05:26'),
(232, 0, 0, '2019-11-26 06:27:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_bookmeta`
--
ALTER TABLE `wp_bookmeta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `wp_bwg_album`
--
ALTER TABLE `wp_bwg_album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_album_gallery`
--
ALTER TABLE `wp_bwg_album_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_file_paths`
--
ALTER TABLE `wp_bwg_file_paths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_gallery`
--
ALTER TABLE `wp_bwg_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_image`
--
ALTER TABLE `wp_bwg_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_image_comment`
--
ALTER TABLE `wp_bwg_image_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_image_rate`
--
ALTER TABLE `wp_bwg_image_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_image_tag`
--
ALTER TABLE `wp_bwg_image_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_shortcode`
--
ALTER TABLE `wp_bwg_shortcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_theme`
--
ALTER TABLE `wp_bwg_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_nextend2_image_storage`
--
ALTER TABLE `wp_nextend2_image_storage`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `wp_nextend2_section_storage`
--
ALTER TABLE `wp_nextend2_section_storage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `application` (`application`,`section`,`referencekey`),
  ADD KEY `application_2` (`application`,`section`);

--
-- Indexes for table `wp_nextend2_smartslider3_generators`
--
ALTER TABLE `wp_nextend2_smartslider3_generators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_nextend2_smartslider3_sliders`
--
ALTER TABLE `wp_nextend2_smartslider3_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_nextend2_smartslider3_sliders_xref`
--
ALTER TABLE `wp_nextend2_smartslider3_sliders_xref`
  ADD PRIMARY KEY (`group_id`,`slider_id`);

--
-- Indexes for table `wp_nextend2_smartslider3_slides`
--
ALTER TABLE `wp_nextend2_smartslider3_slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_yarpp_related_cache`
--
ALTER TABLE `wp_yarpp_related_cache`
  ADD PRIMARY KEY (`reference_ID`,`ID`),
  ADD KEY `score` (`score`),
  ADD KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_bookmeta`
--
ALTER TABLE `wp_bookmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `wp_bwg_album`
--
ALTER TABLE `wp_bwg_album`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bwg_album_gallery`
--
ALTER TABLE `wp_bwg_album_gallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bwg_file_paths`
--
ALTER TABLE `wp_bwg_file_paths`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_bwg_gallery`
--
ALTER TABLE `wp_bwg_gallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_bwg_image`
--
ALTER TABLE `wp_bwg_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `wp_bwg_image_comment`
--
ALTER TABLE `wp_bwg_image_comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bwg_image_rate`
--
ALTER TABLE `wp_bwg_image_rate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bwg_image_tag`
--
ALTER TABLE `wp_bwg_image_tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bwg_theme`
--
ALTER TABLE `wp_bwg_theme`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nextend2_image_storage`
--
ALTER TABLE `wp_nextend2_image_storage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_nextend2_section_storage`
--
ALTER TABLE `wp_nextend2_section_storage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10001;

--
-- AUTO_INCREMENT for table `wp_nextend2_smartslider3_generators`
--
ALTER TABLE `wp_nextend2_smartslider3_generators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nextend2_smartslider3_sliders`
--
ALTER TABLE `wp_nextend2_smartslider3_sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_nextend2_smartslider3_slides`
--
ALTER TABLE `wp_nextend2_smartslider3_slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2342;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=966;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=418;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
