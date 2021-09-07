-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 07, 2021 at 10:02 AM
-- Server version: 10.3.25-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shurapah_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_featured_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_featured_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_feature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_feature_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_feature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_feature_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `third_feature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `third_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `third_feature_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forth_feature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forth_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forth_feature_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `our_mission` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mission_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `our_vision` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vision_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `years_of_experience` int(11) DEFAULT NULL,
  `happy_client` int(11) DEFAULT NULL,
  `no_of_branch` int(11) DEFAULT NULL,
  `total_share` int(11) DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `title`, `description`, `cover_image`, `first_featured_image`, `second_featured_image`, `image_text`, `first_feature`, `first_description`, `first_feature_image`, `second_feature`, `second_description`, `second_feature_image`, `third_feature`, `third_description`, `third_feature_image`, `forth_feature`, `forth_description`, `forth_feature_image`, `our_mission`, `mission_image`, `our_vision`, `vision_image`, `years_of_experience`, `happy_client`, `no_of_branch`, `total_share`, `seo_title`, `seo_description`, `seo_keyword`, `created_at`, `updated_at`) VALUES
(1, 'About Shukrapath Multipurpose', '<p><strong>हाम्रो भिजन</strong></p>\r\n\r\n<p><strong>देश्माव्यापक रुपमा बढ्दै गएको मानिसहरुको सहकारी प्रतिको आकर्षण र सहकारी संघ संस्था हरुले जनमानसमा पुरयाएको योगदानहरुको पर्खालमा केहि इट्टाथप्ने हेतुका साथविक्रम संवत २०६७ साल चैत्र २५ गते तदनुसार २०११ अप्रिल ८ शुक्रवार विधिवत रुपमातत्कालीन&nbsp;डिभिजन सहकारी कार्यालयमा शुक्रपथ&nbsp;बचत तथा ऋण सहकारी संस्थाको नाममादर्ता भएको संस्थाहो&nbsp;| सुरुवातिक्रममा बचत तथा ऋण को कारोवार मात्र&nbsp; गर्ने गरि स्थापनाभएको भएतापनि सदस्यहरुको आवश्यकता र संस्था बहुउद्देशयीय प्रकृतिको कारोवार गर्ने संस्थाको रुपमा परिणत भएको छ |</strong></p>', 'public/AboutUs/YQSJQLNNvQnzM7EKpVyKunfmPp5bXZHYTd2WCpJ7.jpeg', 'public/AboutUs/V4vFXvDqnvYSfeTqBqFy1dkvJM57W5ILn9xncZ1F.png', 'public/AboutUs/VWoqsNYJ68HVvzIGyIlqBRg9Ejy30P49leUG9XGX.jpeg', 'आज, भोलि,सधै संगै', 'Experience', '<p><strong>10 years</strong>&nbsp;of experince in Creating futures through building&nbsp;preservation.</p>', '<i class=\"fas fa-gem\"></i>', 'Interest Rates', '<p><strong>Economic&nbsp;</strong>intrest rates through building preservation.</p>', '<i class=\"fas fa-rupee-sign\"></i>', 'Customer Support', '<p><strong>&quot;24 hour of customer support&nbsp;&quot; </strong>&nbsp;Customer service&nbsp;is meeting the needs and desires of any&nbsp;<strong>customer</strong>.</p>', '<i class=\"fas fa-handshake\"></i>', 'Development', '<p><strong>Nation Development</strong>&nbsp;investements through building&nbsp;preservation.</p>', '<i class=\"fas fa-university\"></i>', '<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>&nbsp;<em>&quot; Mission To Venus, Journey of Universe &quot;</em></strong></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Providing excellent customer services by offering personalized quality services&nbsp;and product</li>\r\n	<li>including modern technologies of banking that add value to customer services</li>\r\n	<li>enhancing shareholders value</li>\r\n	<li>providing challenging career and learning opportunities for our employees</li>\r\n	<li>promoting economic growth and becoming a caring corporate citizen</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', 'public/AboutUs/Pa2vd362KbFHDfyecBDllUAOEvgTf90CZk9JG74K.jpeg', '<p><strong>हाम्रो भिजन</strong></p>\r\n\r\n<p><strong>देश्माव्यापक रुपमा बढ्दै गएको मानिसहरुको सहकारी प्रतिको आकर्षण र सहकारी संघ संस्था हरुले जनमानसमा पुरयाएको योगदानहरुको पर्खालमा केहि इट्टाथप्ने हेतुका साथविक्रम संवत २०६७ साल चैत्र २५ गते तदनुसार २०११ अप्रिल ८ शुक्रवार विधिवत रुपमातत्कालीन&nbsp;डिभिजन सहकारी कार्यालयमा शुक्रपथ&nbsp;बचत तथा ऋण सहकारी संस्थाको नाममादर्ता भएको संस्थाहो&nbsp;| सुरुवातिक्रममा बचत तथा ऋण को कारोवार मात्र&nbsp; गर्ने गरि स्थापनाभएको भएतापनि सदस्यहरुको आवश्यकता र संस्था बहुउद्देशयीय प्रकृतिको कारोवार गर्ने संस्थाको रुपमा परिणत भएको छ |</strong></p>\r\n\r\n<p>&nbsp;</p>', 'public/AboutUs/CcDBkasoGUbgNll6Ly1AlXgrr7nJjtIELkZvG6az.jpeg', 11, 15680, 10, 220000, 'Sukrapath', 'Sukrapath', 'Sukrapath', NULL, '2021-08-23 11:16:43');

-- --------------------------------------------------------

--
-- Table structure for table `applies`
--

CREATE TABLE `applies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temporary_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grandfather_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grandmother_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spouse_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `citizenship_permanent_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `citizenship_zone_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `citizenship_district` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `citizenship_rm_mc_ward` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_district` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_rm_mc_ward` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_tole` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_district` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_rm_mc_ward` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_tole` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `citizenship_no` bigint(20) DEFAULT NULL,
  `citizenship_issued_district` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_no` bigint(20) DEFAULT NULL,
  `nationality` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_no_home` bigint(20) DEFAULT NULL,
  `contact_no_office` bigint(20) DEFAULT NULL,
  `mobile_no` bigint(20) DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_map` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applies`
--

INSERT INTO `applies` (`id`, `name`, `gender`, `phone`, `temporary_address`, `permanent_address`, `date_of_birth`, `email`, `description`, `created_at`, `updated_at`, `document`, `father_name`, `mother_name`, `grandfather_name`, `grandmother_name`, `spouse_name`, `citizenship_permanent_address`, `citizenship_zone_state`, `citizenship_district`, `citizenship_rm_mc_ward`, `permanent_state`, `permanent_district`, `permanent_rm_mc_ward`, `permanent_tole`, `present_state`, `present_district`, `present_rm_mc_ward`, `present_tole`, `citizenship_no`, `citizenship_issued_district`, `passport_no`, `nationality`, `occupation`, `contact_no_home`, `contact_no_office`, `mobile_no`, `photo`, `location_map`, `signature`, `document_photo`) VALUES
(5, 'madhukar wagle', 'male', '9851004149', 'tokha-9 kathmandu', 'madanpur-5 nuwakot', '1987-11-13', 'madhubhai26@gmail.com', 'i want to be a member of sukrapath coop', '2020-10-11 11:48:02', '2020-10-11 11:48:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'te', NULL, NULL, 'i', 'i', '1999-11-11', NULL, NULL, '2021-07-30 17:59:30', '2021-07-30 17:59:30', NULL, 'i', 'i', 'i', NULL, 'i', 'i', 'i', 'i', '1', 'i', 'i', '1', 'i', 'i', 'i', '1', 'i', 1235, 'i', 98512378909, 'i', 'i', 9851237890, 9851237890, 9851237890, 'public/document/nnB2OcyzPqOsNvLt2LVgVz79SELsHLqwWJOUcjPa.jpeg', 'public/document/JSbByX0WORYbnrkVku1Lds8Ax3lT1TACkq7ZXklB.jpeg', 'public/document/qAqstJNh7gGysLYR6kXLa3xnnpwB9G548neudHh4.jpeg', NULL),
(22, 'Karan Subedi', NULL, NULL, '01', '01', '1999-04-19', NULL, NULL, '2021-08-04 13:53:43', '2021-08-04 13:53:43', NULL, 'Hari Subedi', 'Anita Subedi', 'Meva Lal Subedi', NULL, NULL, '04', 'Gandaki', 'Syangja', '10', 'Gandaki', 'Syangja', '10', 'Bartung', 'Bagmati', 'Kathmandu', '10', 'Bindyabasini', 410, 'Syangja', 22, 'Nepali', 'Student', 9999999999, 9999999999, 9999999999, 'public/document/EcUB29I0wEGUAyqfpsiVtxjd1z7LA6ShsjkQBBuM.png', 'public/document/ffd3DlU97xWC03wjcfWHOCKoWDS3WOCJe2V4cM1M.png', 'public/document/f2xthWbDZPWYZzyweVlj9sTIJ71sOOQ5pP7BDkch.png', NULL),
(23, 'Ingrid Acevedo', NULL, NULL, 'Amet laboriosam de', 'Veritatis qui tempor', '2004-06-05', NULL, NULL, '2021-08-17 13:08:36', '2021-08-17 13:08:36', NULL, 'Steel Hebert', 'Kirestin Alston', 'Stacy Walter', NULL, 'Zachary Calhoun', 'Animi officia sint', 'Et ut dolor velit o', 'Architecto aute quae', 'Doloremque sapiente', 'Adipisicing aliqua', 'Dolores tempora nihi', 'Blanditiis labore ut', 'Sapiente exercitatio', 'Sapiente rerum nemo', 'Ut qui quae itaque m', 'Est autem ut volupta', 'Reprehenderit adipis', 74, 'Dolore consectetur', 67, 'In veniam sint esse', 'Alias sed ex accusan', 86, 80, 36, 'public/document/fEuBAU3ML4kJx2xfHWFZOKX3rx0Ie7SQKfux0r5y.jpeg', 'public/document/HHczSaittLmONucAQsyKCjiaczfEIpIYxFwToBYj.jpeg', 'public/document/1L94Qf9iFmtHz0p2dtq3Q9DvQnRunoA2iyHuCX0z.jpeg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `title`, `email`, `address`, `phone_no`, `order`, `created_at`, `updated_at`) VALUES
(4, 'Head Office', 'sukrapath@gmail.com', 'Sahakari Bhawan, Pyukha-22, Newroad Kathmandu', '01-5713311-5713391-5713455', 1, '2020-08-20 18:32:48', '2021-06-06 10:43:01'),
(5, 'Kalimati Office', 'sukrapath@gmail.com', 'Kalimati-13, Kathmandu', '01-5165032/5165042', 2, '2020-08-20 18:33:05', '2020-09-08 20:53:04'),
(6, 'Samakhusi Office', 'sukrapath@gmail.com', 'Samakhushi-26, Kathmandu', '01-4388161/4390823', 3, '2020-08-20 18:33:19', '2020-09-08 20:53:32'),
(7, 'Chabahil Office', 'sukrapath@gmail.com', 'Chabahil-07, Kathmandu', '01-4485297,4482128', 4, '2020-08-20 18:33:39', '2020-09-08 20:54:02'),
(8, 'Tinkune Office', 'sukrapath@gmail.com', 'Tinkune-32, Kathmandu', '01-4117993', 5, '2020-08-20 18:33:57', '2020-09-30 12:15:52'),
(9, 'lagankhel office', 'sukrapath@gmail.com', 'lagankhel-kathmandu', '01-5552748, 5551923', 6, '2020-09-15 15:04:38', '2021-03-25 11:43:15'),
(10, 'hattigauda office', 'sukrapath@gmail.com', 'hattigauda 08-kathmandu', '01-4376835', 7, '2020-09-15 15:05:18', '2021-03-25 11:43:04'),
(12, 'Bhaktapur office', 'sukrapath@gmail.com', 'suryabinayak-sundevi 05', '01-5708048', 9, '2021-03-21 11:21:10', '2021-03-25 11:43:47'),
(13, 'Chitwan Service-Center', NULL, 'Bharatpur Metropolitian -3, Lions Chowk , Joshi Bhawan', '01-56590311', 10, '2021-08-12 13:58:13', '2021-08-12 14:06:00');

-- --------------------------------------------------------

--
-- Table structure for table `calendars`
--

CREATE TABLE `calendars` (
  `id` int(11) NOT NULL,
  `month` varchar(191) DEFAULT NULL,
  `image` longtext DEFAULT NULL,
  `file` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calendars`
--

INSERT INTO `calendars` (`id`, `month`, `image`, `file`, `created_at`, `updated_at`) VALUES
(0, 'Sukrapath Calendar of Ashadh 2078', '<p><iframe align=\"middle\" frameborder=\"0\" height=\"720px\" scrolling=\"yes\" src=\"https://drive.google.com/file/d/1i9ahQrExO30OtZ-vvFKgPZoo7wTOWtO1/preview?usp=sharing\" width=\"100%\"></iframe></p>', 'public/file/bYw0YkG3R87j7DySjOPC4KLhtf2wVZYEZSun02y9.pdf', '2021-07-05 08:21:45', '2021-07-05 14:06:45');

-- --------------------------------------------------------

--
-- Table structure for table `contact_cruds`
--

CREATE TABLE `contact_cruds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `list` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cover_images`
--

CREATE TABLE `cover_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact_us_cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_us_seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_us_seo_keyword` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_us_seo_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_seo_keyword` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_seo_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cover_images`
--

INSERT INTO `cover_images` (`id`, `contact_us_cover_image`, `contact_us_seo_title`, `contact_us_seo_keyword`, `contact_us_seo_description`, `news_cover_image`, `news_seo_title`, `news_seo_keyword`, `news_seo_description`, `gallery_cover_image`, `team_cover_image`, `service_cover_image`, `created_at`, `updated_at`) VALUES
(1, 'public/coverImage/Qdf3I1BDHr7QVrzmWfGgMEszuyWL2QrEMAC7g5Fh.jpeg', 'Shukrapath Contact', 'Shukrapath Contact', 'Contact Shukrapath', 'public/coverImage/a4CX59qkwQdH9mI9Kht0I9YhAyDlBRnk1f2ztwgs.jpeg', 'News', 'Shukrapath News', 'Shukrapath News About Us and what is going on inside', 'public/coverImage/RMjEsooMbRh1MUVAuD5AbLHaXLeWPlEguqu3aQlA.jpeg', 'public/coverImage/7raoKbg4ikngmAUciRGDzpTltMDerQpl04zc4vgP.jpeg', 'public/coverImage/iQfrsf4iCXKMDIwxLFTdpy7v1SKYYk70XFtoBYH4.jpeg', NULL, '2021-03-31 13:17:16');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department_name`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Board Of Director Member', 1, '2020-08-20 08:47:05', '2021-02-10 14:56:21'),
(2, 'Team Member', 2, '2020-08-20 08:47:11', '2020-08-20 08:47:11'),
(5, 'Management Team', 3, '2020-10-02 14:02:52', '2020-10-02 14:02:52'),
(6, 'Service Center Incharge', 4, '2020-10-09 14:50:34', '2021-08-12 14:14:08'),
(12, 'Chief Executive Officer', 1, '2021-02-16 11:58:20', '2021-02-16 13:39:00');

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `id` bigint(20) NOT NULL,
  `title` varchar(191) NOT NULL,
  `file_name` varchar(191) NOT NULL,
  `original_name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `downloads`
--

INSERT INTO `downloads` (`id`, `title`, `file_name`, `original_name`, `created_at`, `updated_at`) VALUES
(19, 'Annual report of 2076/77', 'public/uploaded_file/pVLTRn59kejjFcv5yNvAEmlYOJpveRcxRJqw81KX.pdf', 'Sukrapath AMG Iner (2)(1).pdf', '2020-10-07 10:16:19', '2020-10-07 10:16:19'),
(27, 'Mobile Banking Registration Form', 'public/uploaded_file/X5pUo0KW6ATggWzIkV2RMLl7loifrdTAFZtPRkvG.pdf', 'registration pdf file.pdf', '2021-02-23 13:21:44', '2021-02-23 13:21:44'),
(28, 'Calendar of Year 2078', 'public/uploaded_file/XZ28g2iRDfPNKWVhZL5enoH1XQsUjfOyGsRFVkPB.pdf', 'Final Shukrapath Calendar 2078-A.pdf', '2021-04-20 11:01:11', '2021-04-20 11:01:11');

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

CREATE TABLE `enquiries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enquiries`
--

INSERT INTO `enquiries` (`id`, `name`, `phone`, `email`, `message`, `created_at`, `updated_at`) VALUES
(4, 'Eric Jones', '416-385-3200', 'eric@talkwithwebvisitor.com', 'My name’s Eric and I just found your site shukrapath.org.\r\n\r\nIt’s got a lot going for it, but here’s an idea to make it even MORE effective.\r\n\r\nTalk With Web Visitor – CLICK HERE http://www.talkwithwebvisitors.com for a live demo now.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nAnd once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation… and if they don’t take you up on your offer then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment. Don’t keep losing them. \r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=shukrapath.org', '2020-08-24 20:05:03', '2020-08-24 20:05:03'),
(5, 'madhukar wagle', '9851004149', 'madhubhai26@gmail.com', 'hi sukrapath', '2020-10-11 11:46:14', '2020-10-11 11:46:14'),
(6, 'sushmita thapa magar', '9808108564', 'shreetimagar@gmail.com', 'sukrapath multipurpose co-operative limited', '2020-10-11 12:26:18', '2020-10-11 12:26:18'),
(10, 'Ultrabyte IT', '9840356177', 'mukeshrai541@gmail.com', 'This is just a test message from the ultrabyte.', '2020-10-11 14:25:05', '2020-10-11 14:25:05'),
(11, 'Albert Scholl', '0324 8929210', 'albert.scholl@gmail.com', 'It is with great pleasure that we are announcing the public launch of UsualProspects.net, a solution to generate more leads.\r\n\r\nWe make lead generation much easier by giving you access to huge lists of leads that match your own criteria.\r\n\r\nBoost your company’s success by finding the right opportunities to grow within your own market.\r\n\r\nStart utilizing your newly generated lead data to convert your potential customers with easy to set up outreach campaigns.\r\n\r\nDiscover the power of better prospecting by trying Usual Prospects and see how much quicker you can generate prospects.\r\n\r\nLeave your competition far behind by finding the fresh opportunities in your market with Usual Prospects now.\r\n\r\nStart saving yourself hours a week by getting access to our tools at https://usualprospects.net', '2020-10-19 18:15:45', '2020-10-19 18:15:45'),
(12, 'Leonora Whitford', '0327 9008251', 'information@shukrapath.org', 'ATT: shukrapath.org / Sukrapath Cooperation| Homepage INTERNET SITE SOLUTIONS\r\nThis notice RUNS OUT ON: Oct 25, 2020\r\n\r\n\r\nWe have not gotten a payment from you.\r\nWe  have actually tried to contact you yet were unable to contact you.\r\n\r\n\r\nKindly Check Out: https://cutt.ly/Lgnkr54 .\r\n\r\nFor information and also to process a optional settlement for services.\r\n\r\n\r\n\r\n10252020141433.', '2020-10-26 00:28:37', '2020-10-26 00:28:37'),
(13, 'Eric Jones', '555-555-1212', 'ericjonesonline@outlook.com', 'Hi, Eric here with a quick thought about your website shukrapath.org...\r\n\r\nI’m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it – it’s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHere’s a solution for you…\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to talk with them literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business – and because you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately… and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE http://www.talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=shukrapath.org', '2020-11-10 19:31:28', '2020-11-10 19:31:28'),
(14, 'Eric Jones', '555-555-1212', 'ericjonesonline@outlook.com', 'Hey, this is Eric and I ran across shukrapath.org a few minutes ago.\r\n\r\nLooks great… but now what?\r\n\r\nBy that I mean, when someone like me finds your website – either through Search or just bouncing around – what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment.\r\n\r\nHere’s an idea…\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your site…\r\n \r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://www.talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYou’ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if you don’t close a deal right away, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nPretty sweet – AND effective.\r\n\r\nCLICK HERE http://www.talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=shukrapath.org', '2020-11-16 23:30:24', '2020-11-16 23:30:24'),
(15, 'Eric Jones', '555-555-1212', 'ericjonesonline@outlook.com', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found shukrapath.org after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE http://www.talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=shukrapath.org', '2020-11-17 09:45:48', '2020-11-17 09:45:48'),
(16, 'Herbert Travers', '306-745-1881', 'shukrapath.org@shukrapath.org', 'Your website/domain name: WWW.shukrapath.org\r\n\r\n\r\nThis announcement EXPIRES ON: Nov 21, 2020!.\r\n\r\n\r\nWe have not received a settlement from you.\r\nWe\'ve tried to contact you but were not able to reach you.\r\n\r\n\r\nPlease Browse Through:  https://cutt.ly/xhtjQdP\r\n\r\n\r\nFor info and also to process a discretionary payment for domain services.\r\n\r\n\r\n11212020202012643378972267964485347894', '2020-11-22 07:05:44', '2020-11-22 07:05:44'),
(17, 'Domenic Sceusa', '0474 53 46 05', 'domenic.sceusa46@gmail.com', 'Hi,\r\n\r\nWe\'re wondering if you\'ve considered taking the written content from shukrapath.org and converting it into videos to promote on Youtube? It\'s another method of generating traffic.\r\n\r\nThere\'s a 14 day free trial available to you at the following link: https://www.vidnami.com/c/Chal09-vn-freetrial\r\n\r\nRegards,\r\nDomenic', '2020-11-22 13:39:58', '2020-11-22 13:39:58'),
(18, 'Buster Medeiros', '859-885-7826', 'shukrapath.org@shukrapath.org', 'DOMAIN SERVICES EXPIRATION NOTICE FOR shukrapath.org\r\n\r\nDomain Notice Expiry ON: Dec 14, 2020\r\n\r\nWe have actually not obtained a payment from you.\r\nWe\'ve tried to call you however were not able to contact you.\r\n\r\n\r\nBrowse Through: https://cutt.ly/ihP1r2L\r\n\r\nFor info as well as to make a discretionary payment for your domain website solutions.\r\n\r\n\r\n\r\n\r\n\r\n121420202327073753688578798shukrapath.org', '2020-12-15 10:12:20', '2020-12-15 10:12:20'),
(19, 'Eric Jones', '555-555-1212', 'ericjonesonline@outlook.com', 'Hey, my name’s Eric and for just a second, imagine this…\r\n\r\n- Someone does a search and winds up at shukrapath.org.\r\n\r\n- They hang out for a minute to check it out.  “I’m interested… but… maybe…”\r\n\r\n- And then they hit the back button and check out the other search results instead. \r\n\r\n- Bottom line – you got an eyeball, but nothing else to show for it.\r\n\r\n- There they go.\r\n\r\nThis isn’t really your fault – it happens a LOT – studies show 7 out of 10 visitors to any site disappear without leaving a trace.\r\n\r\nBut you CAN fix that.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know right then and there – enabling you to call that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nPlus, now that you have their phone number, with our new SMS Text With Lead feature you can automatically start a text (SMS) conversation… so even if you don’t close a deal then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nStrong stuff.\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=shukrapath.org', '2021-01-02 17:21:19', '2021-01-02 17:21:19'),
(20, 'Eric Jones', '555-555-1212', 'ericjonesonline@outlook.com', 'My name’s Eric and I just found your site shukrapath.org.\r\n\r\nIt’s got a lot going for it, but here’s an idea to make it even MORE effective.\r\n\r\nTalk With Web Visitor – CLICK HERE http://www.talkwithcustomer.com for a live demo now.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nAnd once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation… and if they don’t take you up on your offer then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://www.talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment. Don’t keep losing them. \r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=shukrapath.org', '2021-01-08 00:35:57', '2021-01-08 00:35:57'),
(21, 'Hudson Elizabeth', '079 8746 8005', 'shukrapath.org@shukrapath.org', 'DOMAIN SERVICES EXPIRATION NOTICE FOR shukrapath.org\r\n\r\nDomain Notice Expiry ON: Jan 22, 2021\r\n\r\n\r\nWe have actually not received a settlement from you.\r\nWe have actually tried to contact you however were not able to contact you.\r\n\r\n\r\nCheck Out: https://bit.ly/3plQiIZ\r\n\r\nFor info and to post a discretionary payment for your domain website service.\r\n\r\n\r\n\r\n\r\n012220211532373753688578798shukrapath.org', '2021-01-23 02:17:50', '2021-01-23 02:17:50'),
(22, 'Erica Jackson', '05.42.62.12.87', 'ericajacksonmi0@yahoo.com', 'Hi, \r\n\r\nWe\'re wondering if you\'d be interested in a \'dofollow\' backlink to shukrapath.org from our DA50 website?\r\n\r\nOur website is dedicated to facts/education, and so can host articles on pretty much any topic.\r\n\r\nYou can either write a new article yourself, or we can link from existing content. The price is just $45 and you can pay once the article/link has been published. This is a one-time fee, so there are no extra charges.\r\n\r\nIf you\'re interested, please reply to this email, including the word \'interested\' in the Subject Field.\r\n\r\nNot sure what DA is? Have a read here: https://moz.com/learn/seo/domain-authority\r\n\r\nKind Regards,\r\nErica', '2021-01-24 06:09:54', '2021-01-24 06:09:54'),
(23, 'Steve Wilson', '077 4522 0058', 'putnam.duane@gmail.com', 'Hi,\r\n\r\nWe are wondering if you would be interested in our service, where we can provide you with a dofollow link from Amazon (DA 96) back to shukrapath.org?\r\n\r\nThe price is just $77 per link.\r\n\r\nIf you\'d be interested in learning more, such as what DA is and how it can benefit your site, and to view an existing example, please visit us at: http://www.backlinkfaq.xyz\r\n\r\nKind Regards,\r\nDuane', '2021-02-01 04:57:09', '2021-02-01 04:57:09'),
(24, 'Barbara Atyson', '08167 49 84 59', 'barbaratysonhw@yahoo.com', 'Hi,\r\n\r\nWe\'d like to introduce to you our explainer video service which we feel can benefit your site shukrapath.org.\r\n\r\nCheck out some of our existing videos here:\r\nhttps://www.youtube.com/watch?v=oYoUQjxvhA0\r\nhttps://www.youtube.com/watch?v=MOnhn77TgDE\r\nhttps://www.youtube.com/watch?v=NKY4a3hvmUc\r\n\r\nAll of our videos are in a similar animated format as the above examples and we have voice over artists with US/UK/Australian accents.\r\n\r\nThey can show a solution to a problem or simply promote one of your products or services. They are concise, can be uploaded to video such as Youtube, and can be embedded into your website or featured on landing pages.\r\n\r\nOur prices are as follows depending on video length:\r\n0-1 minutes = $189\r\n1-2 minutes = $279\r\n2-3 minutes = $389\r\n3-4 minutes = $489\r\n\r\n*All prices above are in USD and include a custom video, full script and a voice-over.\r\n\r\nIf this is something you would like to discuss further, don\'t hesitate to get in touch.\r\nIf you are not interested, simply delete this message and we won\'t contact you again.\r\n\r\nKind Regards,\r\nBarbara', '2021-02-15 10:51:32', '2021-02-15 10:51:32'),
(25, 'karan subedi', '9860927056', 'karansuvedi17@gmail.com', 'Query', '2021-02-22 10:42:36', '2021-02-22 10:42:36'),
(26, 'Brendan A.', '8102440753', 'adi@ndmails.com', 'Just wanted to ask if you would be interested in getting external help with graphic design? We do all design work like banners, advertisements, photo edits, logos, flyers, etc. for a fixed monthly fee. \r\n\r\nWe don\'t charge for each task. What kind of work do you need on a regular basis? Let me know and I\'ll share my portfolio with you.', '2021-03-17 13:10:20', '2021-03-17 13:10:20'),
(27, 'contactlzopri', '123456789', 'konoelkogeza1986@rambler.ru', 'Dear sir! \r\n \r\nSending newsletters via follow-up forms to the sites ofcompanies via any countries of the world in all languages.  \r\n \r\nwebsite =» xn----7sbb1bbndheurc1a.xn--p1ai \r\n \r\nThe Letter is sent to E-mail address \r\n of organization 100% will get to the incoming folder! \r\n \r\n4000 bases: \r\nPrice List =» xn----7sbb1bbndheurc1a.xn--p1ai/prajs-list/ \r\n \r\nTest: \r\ntwenty thousand messages on foreign zones to your email address - 20 dollars. \r\nWe need from You only electronic box, title and text of the letter. \r\n \r\nIn our price list there are more 800 databases for all domains of the world. \r\nCommon databases: \r\nAll Europe 44 countries 60726150 of sites - 1100$ \r\nAll European Union 28 countries 56752547 of domain names- 1000$ \r\nAll Asia 48 countries 14662004 of domain names - 300$ \r\nAll Africa 50 countries 1594390 of domain names - 200$ \r\nAll North and Central America in 35 countries 7441637 of domains - 300$ \r\nAll South America 14 countries 5826884 of domain names - 200$ \r\nNew domains from around the world registered 24-48 hours ago. (A cycle of 15 mailings during the month) - 500$ \r\nCompanies of RF 4025015 - 300$ \r\nUkraine 1114526 of sites - 100$ \r\nAll Russian-speaking countries minus Russian Federation are 14 countries and there are 1979217 of sites - 200$ \r\nNew domains of the Russia, registered 24-48 hours ago (A cycle of 15 mailings during the month) - 250$ \r\n \r\nDatabases for sending newsletters: \r\nWhois-service databases of domain names for all countries of the world. \r\nYou can purchase our databases separately from newsletter\'s service at the request. \r\n \r\nP.S. \r\nPls., do not respond to this offer from your electronic box, as it has been generated in automatic mode and will not get anywhere! \r\nContact Feedback form =» xn----7sbb1bbndheurc1a.xn--p1ai/to-order/ \r\n \r\nPRICE LIST: \r\n \r\nTest mailing: $20 – 20000 contact forms websites \r\n \r\nAll Europe 44 countries there are 60726150 websites – $1100 \r\n \r\nAll EU 28 countries there are 56752547 websites – $1000 \r\n \r\nAll Asia 48 countries there are 14662004 websites – $500 \r\n \r\nAll Africa 50 countries there are 1594390 websites – $200 \r\n \r\nAll North and Central America is 35 countries there are 7441637 websites – $300 \r\n \r\nAll South America 14 countries there are 5826884 websites – $200 \r\n \r\nTop 1 Million World’s Best websites – $100 \r\n \r\nTop 16821856 the most visited websites in the world – $300 \r\n \r\nNew websites from around the world registered 24-48 hours ago. (A cycle of 15 mailings during the month) – 500$ \r\n \r\nBusinesses and organizations of the Russian Federation – there are 4025015 websites – $300 \r\n \r\nAll Russian-speaking countries minus Russia – there are 14 countries and 2440822 websites – $200 \r\n \r\nNew websites of the Russian Federation, registered 24-48 hours ago. (A cycle of 15 mailings during the month) – 250$ \r\n \r\n1499203 of hosting websites around the world (there are selections for all countries, are excluded from databases for mailings) – $150 \r\n \r\n295285 websites of public authorities of all countries of the world (selections for all countries, are excluded from databases for mailings) – $100 \r\n \r\n3516251 websites online stores Worldwide – $250 \r\n \r\nCMS mailings: \r\n \r\n3dCart 14689 websites - $50 \r\nAdobe CQ5 133567 websites - $80 \r\nAdvance 17589 websites - $50 \r\nAdVantShop.NET 2453 websites - $30 \r\nALMA 7095 websites - $30 \r\nAmetys 2389 websites - $30 \r\nAmiro 29587 websites - $30 \r\nAngora 20357 websites - $50 \r\nAVS 1369 websites - $30 \r\nBbPress 1487 websites - $30 \r\nBESTWEB 2699 websites - $30 \r\nBigCommerce 78257 websites - $50 \r\nBitrix 319687 websites - $80 \r\nBlogger 658267 websites - $80 \r\nBlogspot 279865 websites - $80 \r\nBuddyPress 51477 websites - $50 \r\nBurning Board 4659 websites - $30 \r\nCatalyst Web 11689 websites - $50 \r\nClassiPress 11796 websites - $50 \r\nCMSimple 11052 websites - $30 \r\nConcrete5 72100 websites - $50 \r\nContao 110897 websites - $80 \r\nCONTENIDO 5069 websites - $30 \r\nConvio 2268 websites - $30 \r\nCoppermine Photo 1296 websites - $30 \r\nCS Cart 11400 websites - $30 \r\nDatalife Engine	42587 websites - $50 \r\nDede 230589 websites - $100 \r\nDedeEIMS 96068 websites - $50 \r\nDIAFAN 4058 websites - $30 \r\nDiscuz 47962 websites - $50 \r\nDjango 71167 websites - $50 \r\nDokuWiki 9588 websites - $30 \r\nDotnetnuke 82964 websites - $50 \r\nDrupal 978298 websites - $100 \r\nEasyBlog 1165978 websites - $100 \r\nEPiServer 29876 websites - $50 \r\nExpressionEngine 1769823 websites - $150 \r\neZ Publish 5367 websites - $30 \r\nF- 9356 websites - $30 \r\nFireBoard 1567 websites - $30 \r\nGeneral Blogs 2067 websites - $30 \r\nGetSimple 23094 websites - $50 \r\nHost 6871 websites - $30 \r\nHostCMS	5042 websites - $30 \r\nHubSpot 31762 websites - $50 \r\ni- 9438 websites - $30 \r\nImage 1368 websites - $30 \r\nInSales 14149 websites - $50 \r\nInSales	 11081 websites - $30 \r\nInstantCMS 4136 websites - $30 \r\nInteractiveBBS 32367 websites - $50 \r\nInvision Power Board 2430 websites - $30 \r\nIPBoard 2266 websites - $30 \r\nIT 15189 websites - $50 \r\njforum 1056 websites - $30 \r\njobberBase 3387 websites - $30 \r\nJoomla K2 154367 websites - $80 \r\nJoomla	 1906994 websites - $200 \r\nKoobi 3722 websites - $30 \r\nLiferay	 5137 websites - $30 \r\nMade Simple 20567 websites - $50 \r\nMagento	 369447 websites - $80 \r\nMediaMaxScript 103896 websites - $80 \r\nMediaWiki 41468 websites - $50 \r\nMicrosoft SharePoint 13198 \r\nMODx	 64023 websites - $50 \r\nMoodle 8195 websites - $30 \r\nMovable Type 13096 websites - $50 \r\nMyBB 4367 websites - $30 \r\nmyUPB 3397 websites - $30 \r\nNetCat	 7294 websites - $30 \r\nNG 18356 websites - $50 \r\nNING 3687 websites - $30 \r\nNopCommerce 18600 websites - $30 \r\nOpen 5916 websites - $30 \r\nOpenCart 667000 websites - $80 \r\nOsclass 4652 websites - $30 \r\nosCommerce 68468 websites - $50 \r\nOUR- 3096 websites - $30 \r\nOXID eShop 12200 websites - $50 \r\nOxwall 6800 websites - $30 \r\nParallels Plesk Sitebuilder 174216 websites - $80 \r\nphp 14367 websites - $50 \r\nphp Link 2298 websites - $30 \r\nphpBB	 24400 websites - $30 \r\nPHP-Fusion 2596 websites - $30 \r\nPHPMelody 2365 websites - $30 \r\nPHP-Nuke 2489 websites - $30 \r\nPHPShop 2667 websites - $30 \r\nPHPWeb 29789 websites - $50 \r\nPHPWind 4032 websites - $30 \r\nPlone 84962 websites - $50 \r\nPowerEasy 1697 websites - $30 \r\nPrestashop 434100 websites - $80 \r\nQuestion2Answer 5598 websites - $30 \r\nR 296498 websites - $80 \r\nReadyScript 6487682 websites - $80 \r\nS.Builder 394367 websites - $80 \r\nShopify	 6093709 sites websites - $400 \r\nShoutbox 145564 websites - $80 \r\nSilverStripe 31721 websites - $50 \r\nSimpla 17429 websites - $50 \r\nSitecore 74861 websites - $50 \r\nSitefinity 4183 websites - $30 \r\nSMF 8111 websites - $30 \r\nSocialGO 54267 websites - $50 \r\nSPIP 28269 websites - $50 \r\nSquarespace 1098231 websites - $100 \r\nStoreLand 8257 websites - $30 \r\nSupeSite 12367 websites - $50 \r\nTextpattern 10900 websites - $30 \r\nTikiWiki 1446 websites - $30 \r\nTilda 47396 websites - $50 \r\nTumblr 302357 websites - $80 \r\nTYPO3 845009 websites - $80 \r\nUmbraco 146064 websites - $80 \r\nUMI.CMS	 13191 websites - $50 \r\nVamShop 1737 websites - $30 \r\nvBulletin 14460 websites - $30 \r\nVolusion 16006 websites - $50 \r\nWallpaperSiteScript 2811 websites - $30 \r\nWeebly 191753 websites - $80 \r\nWix 3379081 sites websites - $250 \r\nWooCommerce 4459525 websites - $310 \r\nWordpress 35354537 websites - $650 \r\nXenForo 21105 websites - $30 \r\nXOOPS 20467 websites - $50 \r\nXpressEngine 8565 websites - $30 \r\nZen Cart 26524 websites - $30 \r\n \r\nCountry: \r\n \r\n.ae 200462 websites UAE - $50 \r\n.ae 1820 websites International zone UAE:.com .net .biz .info .name .tel \r\n.ag 11931 websites Antigua and Barbuda - $50 \r\n.ai 33130 websites Anguilla - $50 \r\n.am 21995 websites Armenia - $50 \r\n.am 1684 websites International zone Armenia:.com .net .biz .info .name .tel \r\n.ar 782608 websites Argentina - $80 \r\n.ar 75496 websites International zone Argentina:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.ar.com 135 websites - $30 \r\n.at 1356722 websites Austria - $100 \r\n.at 181907 websites International zone Austria :.com .net .biz .info .name \r\n.au 2432174 websites Australia - $150 \r\n.au 461279 websites International zone Australia:.com .net .biz .info .name \r\n.az 17855 websites Azerbaijan - $50 \r\n.az 2036 websites International zone Azerbaijan:.com .net .biz .info .name .tel .mobi .asia-$30 \r\n.ba 15725 websites Bosnia and Herzegovina - $30 \r\n.ba 2291 websites international zone Bosnia and Herzegovina:.com.net.biz.info.org.name.tel.mobi.asia-$30 \r\n.be 1349658 websites Belgium - $100 \r\n.be 1056248 websites International zone Belgium:.com .net .biz .info .name \r\n.bg 54418 websites Bulgaria - $50 \r\n.bg 50685 websites International zone Bulgaria:.com .net .biz .info .name \r\n.bo 2602 websites Bolivia - $30 \r\n.bo 29415 websites International zone Bolivia:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.br 3205100 websites Brazil - $200 \r\n.br 1230078 websites International zone Brazil:.com .net .biz .info .name . \r\n.by 99148 websites Belarus - $50 \r\n.by 1574 websites International zone Belarus:.com .net .biz .info .name .tel \r\n.ca 2587463 websites Canada - $150 \r\n.ca 288395 websites International zone Canada:.com .net .biz .info .name \r\n.cc 436396 websites - $80 \r\n.cc 1920589 websites Cocos Keeling Islands- $150 \r\n.cf 2461460 websites Central African Republic - $150 \r\n.cg 526 websites Congo - $30 \r\n.ch 1629450 websites Switzerland - $100 \r\n.ch 205292 websites International zone Switzerland:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.ci 5794 websites Cote d\'Ivoire - $30 \r\n.ci 112 websites International zone Cote d\'Ivoire:.com .net .biz .info .name \r\n.cl 590401 websites Chile - $80 \r\n.cl 65996 websites International zone Chile:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.cm 29221 websites Cameroon- $50 \r\n.cn 23160610 websites China - $600 \r\n.cn 1372416 websites International zone China:.com .net .biz .info .name .tel .mobi .asia-$100 \r\n.co 1878923 websites Colombia - $100 \r\n.co 10854 websites International zone Colombia:.com .net .biz .info .name .tel .mobi .asia-$30 \r\n.cx 15753 websites Christmas Island - $50 \r\n.cy 11092 websites Cyprus - $50 \r\n.cy 744 websites International zone Cyprus:.com .net .biz .info .name .tel .mobi .asia-$30 \r\n.cz 1001208 websites Czech Republic - $100 \r\n.cz 193400 websites International zone Czech Republic:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.de 15078512 websites Germany - $350 \r\n.de 3894156 websites International zone Germany:.com .net .biz .info .name .tel .mobi .asia-$150 \r\n.dk 1319155 websites Denmark - $100 \r\n.dk 148164 websites International zone Denmark:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.dm 23318 websites Dominica - $50 \r\n.dn.ua 1835 websites - $30 \r\n.do 5255 websites Dominican Republic- $30 \r\n.dy.fi 1112 websites - $30 \r\n.dz 5382 websites Algeria - $30 \r\n.ec 11731 websites Ecuador - $50 \r\n.ec 2897 websites International zone Ecuador:.com .net .biz .info .name .tel .mobi .asia-$30 \r\n.ee 131791 websites Estonia- $50 \r\n.ee 10490 websites International zone Estonia:.com .net .biz .info .name .tel .mobi .asia-$30 \r\n.es 1509048 websites Spain - $100 \r\n.es 683845 websites International zone Spain:.com .net .biz .info .name .tel .eu 3046076 websites Europe - $150 \r\n.eu 633384 websites International zone Europe:.com .net .biz .info .name .fi 361111 websites Finland - $80 \r\n.fi 69631 websites International zone Finland:.com .net .biz .info .name .fr 2810983 websites France - $150 \r\n.fr 639546 websites International zone France:.com .net .biz .info .name .ge 24598 websites Georgia - $50 \r\n.ge 1676 websites International zone Georgia:.com .net .biz .info .name .tel .gf 996 websites French Guiana - $30 \r\n.gg 10528 websites Guernsey islands - $50 \r\n.gh 703 websites Ghana - $30 \r\n.gi 981 websites Gibraltar - $30 \r\n.gp 2044 websites Guadeloupe - $30 \r\n.gq 2027422 websites Equatorial Guinea - $100 \r\n.gr 327215 websites Greece - $80 \r\n.gr 57984 websites International zone Greece:.com .net .biz .info .name .tel .mobi .asia-$150 \r\n.gt 15351 websites Guatemala - $50 \r\n.hk 116093 websites Hong Kong - $50 \r\n.hm 335 websites Heard & McDonald islands - $30 \r\n.hn 4732 websites Honduras - $30 \r\n.hr 75736 websites Croatia - $50 \r\n.hr 16592 websites International zone Croatia:.com .net .biz .info .name .tel .mobi .asia \r\n.ht 1299 websites Haiti - $30 \r\n.hu 53940 websites International zone Hungary:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.ie 209620 websites Ireland - $50 \r\n.ie 49861 websites International zone Ireland:.com .net .biz .info .name .il 196266 websites Israel - $80 \r\n.il 38537 websites International zone Israel:.com .net .biz .info .name .tel .in 1157482 websites India - $100 \r\n.in 266179 websites International zone India:.com .net .biz .info .name .tel .io 496216 websites British Indian Ocean - $80 \r\n.iq 2401 websites Iraq - $30 \r\n.ir 574258 websites Iran - $80 \r\n.ir 15487 websites International zone Iran:.com .net .biz .info .name .tel .mobi .asia \r\n.it 2410105 websites Italy – $150 \r\n.it 954040 websites International zone Italy:.com.net.biz.info.org.name.tel.mobi.asia-$100 \r\n.je 3016 websites Ireland - $30 \r\n.jp 1825219 websites Japan - $150 \r\n.jp 4683252 websites International zone Japan:.com.net.biz.info.org.name.tel.mobi.asia-$200 \r\n.jp.net 5170 websites - $30 \r\n.ke 14677 websites Kenya - $50 \r\n.kg 10350 websites Kyrgyzstan - $30 \r\n.kg 664 websites International zone Kyrgyzstan:.com .net .biz .info .name .tel .mobi .asia-$30 \r\n.ki 79 websites Kiribati - $30 \r\n.kn 3211 websites Saint Kitts and Nevis - $30 \r\n.kr 272463 websites Korea- $80 \r\n.kw 484 websites Kuwait - $30 \r\n.ky 5783 websites Cayman Islands - $30 \r\n.kz 113180 websites Kazakhstan - $80 \r\n.kz 5876 websites International zone Kazakhstan:.com .net .biz .info .name .tel .mobi .asia-$30 \r\n.lc 1121 websites Saint Lucia - $30 \r\n.lk 32654 websites Sri Lanka - $30 \r\n.lt 137666 websites Lithuania- $50 \r\n.lt 27710 websites International zone Lithuania:.com .net .biz .info .name .tel .mobi .asia- $50 \r\n.lu 74322 websites Luxembourg - $50 \r\n.lu 4125 websites International zone Luxembourg:.com .net .biz .info .name .tel .mobi .asia-$30 \r\n.lv 86593 websites Latvia - $50 \r\n.lv 8887 websites International zone Latvia:.com .net .biz .info .name .tel .mobi .asia-$30 \r\n.ma 59103 websites Morocco - $50 \r\n.mc 3046 websites Monaco - $30 \r\n.md 16730 websites Moldova - $50 \r\n.md 1293 websites International zone Moldova:.com .net .biz .info .name .tel .mobi .asia-$30 \r\n.me 761596 websites Montenegro - $80 \r\n.me 86897 websites International zone Montenegro:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.mg 3715 websites Madagascar- $30 \r\n.mk 13266 websites Macedonia - $50 \r\n.ml 2158835 websites Mali - $100 \r\n.mn 17044 websites Mongolia - $50 \r\n.mq 1112 websites Martinique (French) - $30 \r\n.mr 776 websites Mauritania - $30 \r\n.ms 7265 websites Montserrat - $30 \r\n.mt 1402 websites Malta - $30 \r\n.mu 6475 websites Maurifius - $30 \r\n.mv 1996 websites Maldives - $30 \r\n.mw 8579 websites Malawi - $30 \r\n.mx 670901 websites Mexico- $80 \r\n.mx 174571 websites International zone Mexico:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.my 143039 websites Malaysia- $50 \r\n.na 1094 websites - $30 \r\n.nc 3497 websites New Coledonia (French) - $30 \r\n.nl 3925784 websites Netherlands - $200 \r\n.nl 1019697 websites International zone Netherlands:.com .net .biz .info .name .tel .mobi .asia-$100 \r\n.no 620882 websites Norway - $80 \r\n.no 74318 websites International zone Norway:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.nu 255161 websites Niue- $50 \r\n.nz 593127 websites New Zealand - $80 \r\n.om 1701 websites Oman - $30 \r\n.pe 83224 websites Peru - $50 \r\n.pe 59157 websites International zone Peru:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.pk 44464 websites Pakistan - $50 \r\n.pl 1795299 websites Poland - $100 \r\n.pl 327587 websites International zone Poland:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.pr 1358 websites Puerto Rico - $30 \r\n.pt 263136 websites Portugal - $80 \r\n.pt 17691 websites International zone Portugal:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.py 5593 websites Paraguay - $30 \r\n.py 653 websites International zone Paraguay:.com .net .biz .info .name .tel .mobi .asia-$30 \r\n.re 15089 websites Reunion (French) - $50 \r\n.ro 424401 websites Romania - $80 \r\n.ro 42046 websites International zone Romania:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.rs 85503 websites Serbia - $50 \r\n.ru 5025331 websites Russian - $250 \r\n.ru 514668 websites International zone Russian:.com .net .biz .info .name .tel .mobi .asia-$80 \r\n.rw 3806 websites Rwanda - $30 \r\n.sa 20421 websites Saudi Arabia- $50 \r\n.sa 5064 websites International zone Saudi Arabia:.com .net .biz .info .name .tel .mobi .asia - $30 \r\n.sc 4442 websites Seychelles- $30 \r\n.se 1491677 websites Sweden - $100 \r\n.se 293316 websites International zone Sweden:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.sg 150351 websites Republic Of Singapore - $50 \r\n.sh 7560 websites Saint Helena - $30 \r\n.si 103778 websites Slovenia- $50 \r\n.si 12879 websites International zone Slovenia:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.sk 414198 websites Slovakia- $80 \r\n.sk 31572 websites International zone Slovakia:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.sm 8897 websites San Marino - $30 \r\n.sn 344 websites International zone Senegal:.com .net .biz .info .name .tel .mobi .asia-$30 \r\n.sn 4465 websites Senegal - $30 \r\n.sr 580 websites Suriname - $30 \r\n.sv 8432 websites Salvador- $30 \r\n.sx 2901 websites Sint Maarten - $30 \r\n.sy 2972 websites Syria - $30 \r\n.sz 321 websites Swaziland - $30 \r\n.tc 16384 websites Turks and Caicos Islands- $50 \r\n.tf 19841 websites French Sauthern Territory - $50 \r\n.tg 1230 websites Togo - $30 \r\n.th 22368 websites Kingdom Of Thailand- $50 \r\n.tj 6874 websites Tajikistan- $30 \r\n.tj 34 websites International zone Tajikistan:.com .net .biz .info .name .tel .mobi .asia \r\n.tk 20085806 websites Tokelau - $500 \r\n.tl 2748 websites East Timor - $30 \r\n.tm 6395 websites Turkmenistan- $30 \r\n.tm 44 websites International zone Turkmenistan:.com .net .biz .info .name .tel .mobi .asia \r\n.tr 243347 websites Turkey - $80 \r\n.tr 138818 International zone Turkey:.com .net .biz .info .name .tel .mobi .asia -$50 \r\n.tt 1017 websites Trinidad & Tobago  - $30 \r\n.ua 553216 websites Ukraina - $80 \r\n.ua 147202 websites International zone Ukraine:.com .net .biz .info .name .tel .mobi .asia-$50 \r\n.ug 3806 websites Uganda - $30 \r\n.ug 720 websites International zone Uganda:.com .net .biz .info .name .tel .mobi.asia-$30 \r\n.uk 5975887 websites United Kingdom - $250 \r\n.uk 3304606 websites International zone United Kingdom:.com .net .biz .info .name .tel .mobi .asia-$150 \r\n.us 3139563 websites USA - $200 \r\n.us 578927 websites International zone USA:.com .net .biz .info .name .tel .mobi .asia-$80 \r\n.uy 15571 websites Uruguay - $50 \r\n.uy 31812 websites International zone Uruguay:.com .net .biz .info .name .tel .mobi .asia-$30 \r\n.uz 38357 websites Uzbekistan - $50 \r\n.uz  365 websites International zone Uzbekistan:.com .net .biz .info .name .tel .mobi .asia \r\n.vc 18641 websites Saint Vincent & Grenadines - $50 \r\n.ve 14015 websites Venezuela - $50 \r\n.ve 2898 websites International zone Venezuela:.com .net .biz .info .name .tel .mobi .asia - $30 \r\n.vg 8389 websites Virgin Islands (British) - $50 \r\n.vi 109 websites Virgin Islands (US) - $30 \r\n.vn 436005 websites Vietnam - $80 \r\n.vn 161855 websites International zone Vietnam:.com .net .biz .info .name .tel .mobi .asia - $50 \r\n.vu 1051 websites Vanuatu - $30 \r\n.wf 1133 websites Wallis & Futuna Islands - $30 \r\n.ws 99308 websites Samoa - $80 \r\n.ye 18 websites Yemen - $30 \r\n.yt 2004 websites Mayotte - $30 \r\n.za 1008308 websites South Africa - $100', '2021-04-23 10:43:01', '2021-04-23 10:43:01'),
(28, 'Mike Bootman', '88641138841', 'no-reply@google.com', 'Hi there \r\n \r\nI have just took an in depth look on your  shukrapath.org for  the current search visibility and saw that your website could use an upgrade. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our services below, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart increasing your sales and leads with us, today! \r\n \r\nregards \r\nMike Bootman\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de', '2021-05-23 16:47:54', '2021-05-23 16:47:54'),
(29, 'Mohammed AL-Kuwari', '87641163389', 'investkuwari@email-checker.us', 'Greetings. \r\n \r\nI am looking to work with you to engage in profit oriented ventures in your country. \r\nI have the directive of Sheikh Mubarak AL-Thani to source for a partner abroad who can accommodate 350M USD and 150M USD for Investment. The sum is derived from a Supply Contract by a foreign company with Qatar Petroleum Company in Doha - Qatar. \r\n \r\nWe shall reassign the necessary documents to reflect your name and also ensure payment is done by Qatar Petroleum Company. \r\n \r\nI guarantee we shall implement this transaction under a legitimate arrangement without breaking the law. \r\n \r\nMore details will follow upon your reply to mohammedalkuwariinvestment01@gmail.com \r\n \r\nRegards, \r\n \r\nDr.Mohammed AL-Kuwari \r\nReply To: mohammedalkuwariinvestment01@gmail.com \r\nWhatsapp: +971554845309', '2021-05-26 02:01:03', '2021-05-26 02:01:03'),
(30, 'Aurelia Crump', '070 8527 3987', 'aurelia.crump@gmail.com', 'Hi,\r\n\r\nWe’re reaching out to ask if you’d be interested in featuring a guest post on your website. We believe we can add value to your audience on a few related topics that would resonate with your readers. \r\n\r\nIf our offer is of interest to you, please complete the form here: https://backlinkpro.club/add-your-site\r\n\r\nKind Regards,\r\nAurelia', '2021-05-27 16:03:48', '2021-05-27 16:03:48'),
(31, 'Mohammed AL-Kuwari', '88176235214', 'drmohammed@email-checker.us', 'Greetings. \r\n \r\nWe are an investment and loan company looking for new business opportunities. \r\n \r\nI am looking to work with you to engage in profit oriented ventures in your country. \r\n \r\nPresently I have the directive of Sheikh Mubarak AL-Thani to source for a partner abroad who can accommodate 350M USD and 150M USD for Investment. The sum is derived from a Supply Contract by a foreign company with Qatar Petroleum Company in Doha - Qatar. \r\n \r\nWe shall reassign the necessary documents to reflect your name and also ensure payment is done by Qatar Petroleum Company. \r\n \r\nI guarantee we shall implement this transaction under a legitimate arrangement without breaking the law. \r\n \r\nMore details will follow upon your reply to drmohammedalkuwari003@gmail.com \r\n \r\nRegards, \r\n \r\nDr.Mohammed AL-Kuwari \r\nWhatsapp: +971554845309 \r\ndrmohammedalkuwari003@gmail.com', '2021-07-01 05:09:32', '2021-07-01 05:09:32'),
(32, 'Michael Rajiv', '87632917911', 'amirakhanum01@gmail.com', 'Hello Dear, \r\n \r\nGreetings to you and I hope this email meet at your best, I am working directly with a private family portfolio that can provide funding for credible clients with feasible projects. Currently, we have investment funds for viable projects. \r\n \r\nThey are interested in the following: Institution, Library, Hospitals, Green energy, \r\nPower projects, Agriculture and Real Estate. They can also partner with your company on other projects of value. The interest rate and tenure are fantastic. \r\n \r\nYour response is most anticipated if this is of interest to you. Reach me on email: financial@eurocleargroups.email or rajiindian3@gmail.com. \r\n \r\n \r\nKind regards, \r\n \r\nMichael Rajiv \r\nFinancial Consultant \r\nWhatsApp@ +1(209)248 1965 \r\nEuroclear Groups \r\nfinancial@eurocleargroups.email \r\nUrl: http://euroclear.com', '2021-07-23 14:42:37', '2021-07-23 14:42:37'),
(33, 'Olivia Jackson', '0644-6183031', 'olivia@backlinkpro.club', 'Hi, \r\n\r\nWe\'re wondering if you\'d be interested in a \'dofollow\' backlink to shukrapath.org from our website that has a Moz Domain Authority of 50?\r\n\r\nOur website is dedicated to facts/education, and so can host articles on pretty much any topic.\r\n\r\nYou can either write a new article yourself, or we can link from existing content.\r\n\r\nThe price is just $30 to be paid via Paypal. This is a one-time fee, so there are no extra charges.\r\n\r\nAlso: Once the article has been published, and your backlink has been added, it will be shared out to almost 3 million social media followers (if it\'s educationally based). This means you aren\'t just getting the high valued backlink, you\'re also getting the potential of more traffic to your site.\r\n\r\nIf you\'re interested, please reply to this email, including the word \'interested\' in the Subject Field.\r\n\r\nKind Regards,\r\nOlivia', '2021-08-18 03:54:14', '2021-08-18 03:54:14'),
(34, 'JamesloP', '86743933789', 'no-replyMl@gmail.com', 'Good day!  shukrapath.org \r\n \r\nDo you know the best way to mention your merchandise or services? Sending messages exploitation contact forms can enable you to easily enter the markets of any country (full geographical coverage for all countries of the world).  The advantage of such a mailing  is that the emails which will be sent through it\'ll end up within the mailbox that is intended for such messages. Sending messages using Contact forms isn\'t blocked by mail systems, which suggests it is sure to reach the client. You will be ready to send your provide to potential customers who were previously unprocurable because of email filters. \r\nWe offer you to check our service at no cost. We are going to send up to 50,000 message for you. \r\nThe cost of sending one million messages is us $ 49. \r\n \r\nThis message is created automatically. Please use the contact details below to contact us. \r\n \r\nContact us. \r\nTelegram - @FeedbackMessages \r\nSkype  live:contactform_18 \r\nWhatsApp - +375259112693 \r\nWe only use chat.', '2021-08-18 18:08:59', '2021-08-18 18:08:59'),
(35, 'Awdhesh Kumar', '9803478714', 'sanjeev980347871459@gmail.com', 'Need to open new account, chabahil.', '2021-08-25 15:07:42', '2021-08-25 15:07:42');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `starting_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `order`, `created_at`, `updated_at`) VALUES
(6, 'What is Co-operative society?', '<p>A co-operative is an autonomous association of persons united voluntarily for the fullfillment of their common economic, social and cultural needs and aspiration through a jointly owned and democractically controlled enterprise.</p>', '1', '2020-10-07 10:08:30', '2020-10-11 12:32:54'),
(7, 'What is your relationship to the Co-operative Bank?', '<p>Our relationship with co-operative bank is very flexible and very good. We are working with some of the Co-operative Bank with having a fully needs and support.</p>', '2', '2020-10-14 12:16:20', '2021-01-08 11:29:39'),
(8, 'What is Co-operative and how do I get involved?', '<p>A Co-operative is &quot; an autonomous association of persons united voluntarily to meet their common economic,social, and cultural needs and aspirations through a jointly-owned and democratically-controlled enterprise &rdquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>&nbsp;get involved by these easy steps :</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Be a part of our co-operative by filling a application form such as ( account opening or share etc.)</div>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '3', '2020-10-14 12:25:29', '2020-10-14 13:34:42'),
(9, 'I want to invest, but how can i trust your co-operative?', '<p>We are providing this services since 10 years, as a better result co-operative is now operating 8 branches in kathmandu valley and also having a fully customer trust and support we are able to make our own startum in this tough competitive market . ThankYou</p>', '4', '2020-10-15 09:37:00', '2021-07-01 11:16:48');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `title`, `slug`, `description`, `subtitle`, `second_description`, `order`, `cover_image`, `featured_image`, `seo_title`, `seo_description`, `seo_keyword`, `created_at`, `updated_at`) VALUES
(8, 'Mobile Banking', 'mobile-banking', '<p><strong>&quot;Sukrapath Smart Mobile Banking &quot;</strong> is a product desgined for the purpose of online banking that enables you to have easy and safe acess to your bank account. With this service you save your time by carrying out banking transactions at any place and at any time, from your home or office, all you need is internet access.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>Transaction Limits</strong></div>\r\n\r\n<table align=\"center\" border=\"1\" bordercolor=\"#ccc\" cellpadding=\"5\" cellspacing=\"0\" style=\"border-collapse:collapse\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Services</strong></td>\r\n			<td><strong>Amount Per Transcation</strong></td>\r\n			<td><strong>Amount Per day</strong></td>\r\n			<td><strong>Amount Per Week</strong></td>\r\n			<td><strong>Amount Per Month</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Bank Transfer</strong></td>\r\n			<td>100</td>\r\n			<td>&nbsp;100000</td>\r\n			<td>&nbsp;500000</td>\r\n			<td>&nbsp;1000000</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Wallet Load&nbsp;</strong></td>\r\n			<td>&nbsp;50</td>\r\n			<td>&nbsp;25000</td>\r\n			<td>&nbsp;100000</td>\r\n			<td>&nbsp;300000</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>Trasaction Charges </strong><strong>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong></div>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Amount</strong></td>\r\n			<td><strong>Charges&nbsp;</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>100-1000</td>\r\n			<td>&nbsp;10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1000-10000</td>\r\n			<td>20</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10000-20000</td>\r\n			<td>30</td>\r\n		</tr>\r\n		<tr>\r\n			<td>20000-30000</td>\r\n			<td>40</td>\r\n		</tr>\r\n		<tr>\r\n			<td>30000-40000</td>\r\n			<td>50</td>\r\n		</tr>\r\n		<tr>\r\n			<td>40000-50000</td>\r\n			<td>60</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>Note: </strong> <em><strong> : </strong></em><strong>Transaction Charges are subject to vary</strong></div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>OFFER : <code>NOW GET YOUR TRANSACTION WITHOUT ANY DEDUCTION CHARGES</code> </strong></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', NULL, '<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>SPECIAL FEATURES OF SHUKRAPATH MOBILE BANKING :</strong></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Facility&nbsp;to check bank balance any time</li>\r\n	<li>Flight ticket booking at reasonable price</li>\r\n	<li>Make bill payments and fund transfer to other accounts</li>\r\n	<li>Topup balance</li>\r\n	<li>Facility to check your loan statement</li>\r\n	<li>Make bill payment such as&nbsp;(TV, ADSL, LANDLINE, KHANEPANI, NEA, INTERNET, BOOK FLIGHT,&nbsp;SCHOOL PAYMENT, INSURANCE PAYMENT etc)</li>\r\n	<li>Wallet load</li>\r\n	<li>Get easily deposit to your sukrapath account from wallet</li>\r\n	<li>You can payment your loan amount from sukrapath smart app</li>\r\n	<li>see your account transaction and history</li>\r\n	<li>know about market value, such as ( FOREX, GOLDSILVER, STOCK MARKET)</li>\r\n	<li>You can change language such as english or nepali</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>REQUIREMENTS ;</strong></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Completely filled mobile banking application form&nbsp;</li>\r\n	<li>Grab your service with service charge at only Rs 200/-</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>STEP BY STEP:</strong></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Step 1 &nbsp;&nbsp; </strong></p>\r\n\r\n<p><strong>&nbsp;&nbsp;&nbsp;&nbsp; </strong></p>\r\n\r\n<p><strong>&nbsp;&nbsp;&nbsp;&nbsp; </strong>&nbsp; &nbsp;<img alt=\"Shree Kutokodalo ACSL - Posts | Facebook\" src=\"data:image/jpeg;base64,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\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Download the <strong>SHUKRAPATH SMART</strong> or <strong>MDABALI</strong> app from play store or app store</li>\r\n	<li>Contact to the office for register or you can apply online from sukrapath smart app</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Step 2</strong></p>\r\n\r\n<ul>\r\n	<li>Go to the register option</li>\r\n	<li>fill up&nbsp;your mobile number and pin code</li>\r\n	<li>Accept the terms and condition</li>\r\n	<li>Complusary change&nbsp;your own pin code with 5 digit of number</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Step 3</strong></p>\r\n\r\n<ul>\r\n	<li>After changing your own pin code you can<strong>&nbsp;log in</strong>&nbsp;for next time as well&nbsp;&nbsp;</li>\r\n</ul>\r\n\r\n<p>&nbsp;<img alt=\"\" src=\"https://scontent.xx.fbcdn.net/v/t1.15752-0/p206x206/160922628_1118960711877453_6632707922857892011_n.jpg?_nc_cat=107&amp;ccb=1-3&amp;_nc_sid=58c789&amp;_nc_ohc=9yqTghhK1XcAX9kusot&amp;_nc_ad=z-m&amp;_nc_cid=0&amp;_nc_ht=scontent.xx&amp;tp=6&amp;oh=d7c7406771a5c326bab615da0852c6c9&amp;oe=60768BD6\" /></p>\r\n\r\n<p>&nbsp;</p>', 1, 'public/feature/LG06eEHbBCdAhHPH79AYWjVRC2W2Y2FYDo5VClx2.jpeg', 'public/feature/LBKbkXvcVkwU1ElPyaajpPFyMzCy3Whn90f4Myjy.png', 'E-banking of shukrapath multipurpose co-operative limited', 'E-banking of shukrapath multipurpose co-operative limited', 'E-banking of shukrapath multipurpose co-operative limited', '2020-09-30 17:20:03', '2021-07-10 11:59:10'),
(9, 'IME REMITTANCE', 'ime-remittance', '<p><strong>&quot; IME Remittance&nbsp;&quot; </strong>is in the business of remittance solutions specializing in the delivery of world class money transfer services to families and friends around the globe . A remittance product of<strong> &quot;Sukrapath Multipurpose Cooperative Limited&quot;</strong> is a premium,online,customer-focused Money Transfer Service designed to meet the need of customers to send/receive remittance from various places.</p>\r\n\r\n<p><img alt=\"IME Logo - Samudrapari.com\" src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqPM8tB1QVxPOTWDZGrkHuml5skn36zEyocA&amp;usqp=CAU\" style=\"height:80px; width:190px\" /></p>', NULL, '<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>Competitive features and benefits of SUKRAPATH :</strong></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Convenient, affordable, and accessible remittance service to take pride in happy customers.</li>\r\n	<li>Safe, secure, reliable, and fast means of transfer.</li>\r\n	<li>Competitive prices and exchange rates to the customer.</li>\r\n	<li>Topmost network coverage all over the places&nbsp;with dedicated payout agents.</li>\r\n	<li>Get easily transfer your money with your sukrapath account as well.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>REQUIREMENTS :</strong></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Completely filled ime remittance sender/reciever Form</li>\r\n	<li>Citizenship photocopy</li>\r\n	<li>maxmimum&nbsp;amount to be maintained rs 100000 (one lakh only)</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', 3, 'public/feature/hGfWM3Yn0eK4pBjH5JsfffvFDQnK8yELJ8CzGSyO.jpeg', 'public/feature/4MXRKyriextW8row9nuJQ1JcsddRL9SEk6sOqy5n.png', NULL, NULL, NULL, '2020-10-07 14:47:18', '2020-12-06 13:57:04'),
(10, 'CITY EXPRESS', 'city-express', '<p><strong>&quot;CITY EXPRESS&quot;&nbsp;&nbsp;</strong>is in the business of remittance solutions specializing in the delivery of world class money transfer services to families and friends around the globe . A express&nbsp;product of<strong>&nbsp;&quot; Sukrapath Multipurpose Co-operative Limited &quot;</strong>is a&nbsp;premium,online,customer-focused Money Transfer Service designed to meet the need of customers to send/receive remittance from various places.</p>\r\n\r\n<p><img alt=\"City Express – Money Transfer\" src=\"data:image/png;base64,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\" style=\"height:98px; width:400px\" /><img alt=\"City Express-Japan – City Express-Japan\" src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQp1YgthhVPPUDCoZJXyuK8YdGbmN8iYBII4g&amp;usqp=CAU\" style=\"height:146px; width:348px\" /></p>', NULL, '<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>Competitive features and benefits :</strong></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Convenient, affordable, and accessible remittance service to take pride in happy customers.</li>\r\n	<li>Safe, secure, reliable, and fast means of transfer.</li>\r\n	<li>Competitive prices and exchange rates to the customer.</li>\r\n	<li>Topmost network coverage all over the places&nbsp;with dedicated payout agents.</li>\r\n	<li>Get easily transfer your money with your sukrapath account as well.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>REQUIREMENTS ;</strong></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Completely filled city express&nbsp;sender/reciever Form</li>\r\n	<li>Citizenship photocopy</li>\r\n	<li>maxmimum&nbsp;amount to be maintained rs 100000 upto rs 150000</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', 4, 'public/feature/9UosZWybZzVVMefJTZB1RM9sMukApt3AraJhEtaV.jpeg', 'public/feature/pZ8jH2QtNRLz8rfiTg60smSVUINILvPBEeSScGzW.png', 'mobile banking (sukrapath multipurpose co-operative)', 'mobile banking (sukrapath multipurpose co-operative)', 'mobile banking (sukrapath multipurpose co-operative)', '2020-10-07 14:52:20', '2021-01-26 11:06:05'),
(11, 'TABLET BANKING (BLB)', 'tablet-banking-blb', '<p><strong>&quot;Tablet Banking</strong>&quot; system is a set of software product which provide facility of <strong>&quot; money deposit</strong> &quot; through tablet by at your own places at zero risk. Tablet/Branchless banking is meant for providing banking financial services which is integrated with Core Banking System (CBS) through online or ofline service. Our main target is to provide many more facilities to our customers so the<strong> TABLET BANKING</strong> is here for easier transaction. In other word it is an electronic deposit of modern technology also.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Common UI Issues\" src=\"https://docs.kony.com/konylibrary/visualizer/app_design_dev/Content/Resources/Images/WithOrientationalHandler.gif\" style=\"height:337.5px; margin:0px; width:525px\" /></p>', NULL, '<blockquote>\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>Competitive features and benefits :</strong></div>\r\n</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Easy and safe deposit</li>\r\n	<li>No risk</li>\r\n	<li>Exact up to date transaction</li>\r\n	<li>Know about your balance report</li>\r\n	<li>Save time</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 4, NULL, 'public/feature/ndRoLNc1zMndvbwC2txmWftqdhUBTHtGgjyCYpKS.png', NULL, NULL, NULL, '2020-10-18 11:19:16', '2021-01-20 12:22:05');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_categories_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `image`, `gallery_categories_id`, `created_at`, `updated_at`) VALUES
(20, 'public/Photos/PKg4FNpHATS0epN4JWl1GcunOG1fYBqKd2nKvhuZ.jpeg', 10, '2020-10-11 13:19:40', '2020-10-11 13:19:40'),
(21, 'public/Photos/N4TMWLSK2Chghl7JsML7wis2Ca7iJ7KdeO8d9tZT.jpeg', 10, '2020-10-11 13:19:49', '2020-10-11 13:19:49'),
(24, 'public/Photos/rz9RZNbgT3Vs3k7NihqVkjzGuKCKq1vzNAS0Dwob.jpeg', 10, '2020-10-11 13:20:14', '2020-10-11 13:20:14'),
(25, 'public/Photos/DtOAeHIL4UJexaSt3GUNzOkVUpdrbyuJoey71lD3.jpeg', 10, '2020-10-11 13:20:21', '2020-10-11 13:20:21'),
(26, 'public/Photos/ZSpurkucQNHMwambuhoqjYZjBC6t3LyMdwa57wkS.jpeg', 10, '2020-10-11 13:22:35', '2020-10-11 13:22:35'),
(27, 'public/Photos/DGMur33lhZPlPXr3SO8fPbeDX7mGYEHOVds906tz.jpeg', 10, '2020-10-11 13:22:45', '2020-10-11 13:22:45'),
(28, 'public/Photos/XwATw7XVNIe5GI5DwTKGmgvwgOpJYWxDdzWxwCE0.jpeg', 10, '2020-10-11 13:22:52', '2020-10-11 13:22:52'),
(29, 'public/Photos/59qOKWsVXAONGzN6m9BbKUPV77VpuQxGxBNi7613.jpeg', 10, '2020-10-11 13:23:03', '2020-10-11 13:23:03'),
(30, 'public/Photos/RLQL2wsqI4OU1CzdsO1gsV8jwO8KX2DbjcyN8WYD.jpeg', 11, '2020-10-11 13:33:07', '2020-10-11 13:33:07'),
(31, 'public/Photos/Gs9lguqWVRzauxq8TmtsepVLXjQUGVobHIuMUARb.jpeg', 11, '2020-10-11 13:34:07', '2020-10-11 13:34:07'),
(34, 'public/Photos/mtQCqoT9NcvGWZUaGMwMgMmLFR5mYP1trUo7y5VU.jpeg', 11, '2020-10-11 13:34:45', '2020-10-11 13:34:45'),
(35, 'public/Photos/5wFSRuFyHS6jzRbZtTWZnFirPy1kBPvXLZdeLkLn.jpeg', 11, '2020-10-11 13:34:58', '2020-10-11 13:34:58'),
(36, 'public/Photos/rKxclv5lOCpt6GCnK4xPUqM3bykTAH1lH8q1DkHM.jpeg', 11, '2020-10-11 13:37:21', '2020-10-11 13:37:21'),
(38, 'public/Photos/CefBsLIS7ZpzG6vxUSk8mWtqbj3zYurDcZABSZ7d.jpeg', 11, '2020-10-11 13:37:48', '2020-10-11 13:37:48'),
(39, 'public/Photos/loX9jJ3VgLXi0JhaJW11E9vp78z0DYQU5567PchS.jpeg', 12, '2020-10-11 15:52:29', '2020-10-11 15:52:29'),
(40, 'public/Photos/8sL2ytevlUYq9NHYoOrocoTreawcAlKTTQiNbJGo.jpeg', 12, '2020-10-11 15:52:39', '2020-10-11 15:52:39'),
(41, 'public/Photos/Yz8eerIHt8Uh2iTlCrE1pYRpuwKjAtzcfroUzOaQ.jpeg', 12, '2020-10-11 15:52:48', '2020-10-11 15:52:48'),
(42, 'public/Photos/PNKciKNP8Y8E1twZTlP0ZqPR6sYMgaWt6xYbUi9W.jpeg', 12, '2020-10-11 15:52:55', '2020-10-11 15:52:55'),
(44, 'public/Photos/gReu53P85ttV7ZLrn5LV80hAMPC1IHgRCe17vly2.jpeg', 12, '2020-10-11 15:53:08', '2020-10-11 15:53:08'),
(45, 'public/Photos/1SUibS3hlNYGl76c2Q1duSm1Dk2G0S9KHLA3wkYc.jpeg', 12, '2020-10-11 15:53:14', '2020-10-11 15:53:14'),
(46, 'public/Photos/fg2KQww9w6uZ7XRgLVeQd8aVIka5d5ClqvMGrTvE.jpeg', 12, '2020-10-11 15:53:22', '2020-10-11 15:53:22'),
(47, 'public/Photos/U3kqmof87zcfzUEVSuRB5SaeLBjs0yJcmS9fmZEL.jpeg', 12, '2020-10-11 15:53:30', '2020-10-11 15:53:30'),
(48, 'public/Photos/jetb2oXyCybiuxV0OKp6qVxIoAjoYvsMrFBh3odT.jpeg', 12, '2020-10-11 15:53:36', '2020-10-11 15:53:36'),
(85, 'public/Photos/gMHcs0sDfANZMc6aZZWWkzShFdCiV6v0MfW1em7u.jpeg', 13, '2020-10-12 11:07:08', '2020-10-12 11:07:08'),
(86, 'public/Photos/W19cSAl4EgluDgJHxWZeA9VPTM6d0oZ7GaKckCfB.jpeg', 13, '2020-10-12 11:07:29', '2020-10-12 11:07:29'),
(87, 'public/Photos/EqTAdddOExNcejXq7lqQvibD3qGt6G6EOuabSDIm.jpeg', 13, '2020-10-12 11:07:48', '2020-10-12 11:07:48'),
(88, 'public/Photos/nScQgWhmBW2n2EFUG9lBLcaObgV4Cqa5dQ04kqUq.jpeg', 13, '2020-10-12 11:08:06', '2020-10-12 11:08:06'),
(89, 'public/Photos/kc8oK99Q8JRjhohv9q4eVn9iTrgyExoOb5NcpTC2.jpeg', 13, '2020-10-12 11:08:20', '2020-10-12 11:08:20'),
(90, 'public/Photos/Tlxkqmh9a2iIhvwpZBcgttzQoZaTo2ak9ryWjBYU.jpeg', 13, '2020-10-12 11:08:37', '2020-10-12 11:08:37'),
(91, 'public/Photos/RaDK1iny3EAJ2QpeZCGANYTJwzdEwvcmfwZN72hk.jpeg', 13, '2020-10-12 11:08:47', '2020-10-12 11:08:47'),
(92, 'public/Photos/HW2QzHdcyvZSH2P5BkJjWiHNHpbZMxYJtdnZgqvu.jpeg', 13, '2020-10-12 11:09:05', '2020-10-12 11:09:05'),
(93, 'public/Photos/jfqKTinV9V8PR9Sh4vAEdYhUGjitv8sWhKBZbWQp.jpeg', 13, '2020-10-12 11:09:20', '2020-10-12 11:09:20'),
(95, 'public/Photos/laOin4TiktKAq3Vx5wgMA07YwdcPdWGGXYoagm6N.jpeg', 13, '2020-10-12 11:09:49', '2020-10-12 11:09:49'),
(96, 'public/Photos/5rkyDwxLTgD6c2u0BwtaIvWWVKoCDKFHLXcq3lbI.jpeg', 13, '2020-10-12 11:10:29', '2020-10-12 11:10:29'),
(97, 'public/Photos/8fuUBiRXycVNa2lZ1yBq0LT9vJGuGcVDPMiaGubF.jpeg', 13, '2020-10-12 11:10:30', '2020-10-12 11:10:30'),
(98, 'public/Photos/W5rK7fxDY5j5H1kIDo7zMpSQqkg6a4PuQQkFe5rN.jpeg', 13, '2020-10-12 11:10:30', '2020-10-12 11:10:30'),
(99, 'public/Photos/u13xN98oyehwObM6TDIPxhyvTkJPnhiwbo6ocbRP.jpeg', 13, '2020-10-12 11:10:30', '2020-10-12 11:10:30'),
(101, 'public/Photos/JMZf6rnb7QaiMceG3gMhIQ7YROldcI0OaezmoT3f.jpeg', 13, '2020-10-12 11:10:30', '2020-10-12 11:10:30'),
(102, 'public/Photos/FKfoZECkJVRW6IZ1vkrrPcQIe8iaQ3vPcPXEXk7t.jpeg', 13, '2020-10-12 11:10:30', '2020-10-12 11:10:30'),
(103, 'public/Photos/h1EhuyYG0BY829ot1qLE05i1KLU2iUF4ALjY5s79.jpeg', 13, '2020-10-12 11:10:30', '2020-10-12 11:10:30'),
(104, 'public/Photos/m9IsVD7hncolXQT8hvfl69hHkipFm5TZrASb4r4m.jpeg', 13, '2020-10-12 11:10:30', '2020-10-12 11:10:30'),
(105, 'public/Photos/d5cRDsUAJnvgqPb2QDET4HDtcMYCwbBL4z4Cti3H.jpeg', 13, '2020-10-12 11:10:30', '2020-10-12 11:10:30'),
(106, 'public/Photos/CRg51cSTFXiQctfyNP7PXEirhBBM0E1LRdI5PtFp.jpeg', 13, '2020-10-12 11:10:30', '2020-10-12 11:10:30'),
(107, 'public/Photos/Q9ZzRxgmwiHouGcH4R4bfU6HNhdYTeHhuLoonY2J.jpeg', 13, '2020-10-12 11:10:30', '2020-10-12 11:10:30'),
(108, 'public/Photos/juoNmHhYDqY1zsrckXgqp1ScWo3wKxRrS3gLQguU.jpeg', 13, '2020-10-12 11:10:30', '2020-10-12 11:10:30'),
(109, 'public/Photos/681r2IUbVZkqgh9yGl07ob1ieTVSdu60IhHh8M2E.jpeg', 13, '2020-10-12 11:10:36', '2020-10-12 11:10:36'),
(127, 'public/Photos/JYQjEuk1SHZ1vxhgce70bj26lTOlV6OQZW470CYd.jpeg', 14, '2020-10-12 15:17:03', '2020-10-12 15:17:03'),
(128, 'public/Photos/1nq10UkG5QtcjXDizyoyiCeFy49hg7I3tktraASJ.jpeg', 14, '2020-10-12 15:17:03', '2020-10-12 15:17:03'),
(129, 'public/Photos/3XbvZBoQMwNRM4j4yjd3jpLWwk4Tci4aacJ5JLhM.jpeg', 14, '2020-10-12 15:17:03', '2020-10-12 15:17:03'),
(131, 'public/Photos/vkOoAGIQfVsjyBQ59sXScWh8NYEKXOKIRRehLAoH.jpeg', 14, '2020-10-12 15:18:56', '2020-10-12 15:18:56'),
(132, 'public/Photos/NsY66XRdQptMwd6NmzINyGWY8vex86sLpILQKNho.jpeg', 14, '2020-10-12 15:18:56', '2020-10-12 15:18:56'),
(133, 'public/Photos/7GDTFFNlQN8I3XhPGngJLYx6r7MHYHiMygfaYN80.jpeg', 14, '2020-10-12 15:18:57', '2020-10-12 15:18:57'),
(134, 'public/Photos/TqXMXZrptBYnnwwDNOATcDMO4pB8dKwnXHNZP2mV.jpeg', 14, '2020-10-12 15:18:57', '2020-10-12 15:18:57'),
(135, 'public/Photos/wXJwjbD1Hskl7rPqKCXZQWoUUvpDhv4ePajBNsRR.jpeg', 14, '2020-10-12 15:18:58', '2020-10-12 15:18:58'),
(136, 'public/Photos/JKjfEr4beA5DQ52kSow9cF3yk5PJulk02tsdiCTe.jpeg', 14, '2020-10-12 15:18:58', '2020-10-12 15:18:58'),
(137, 'public/Photos/bXxTv0PmmTd28Hd0SoFlRSr8pRg7fiE5cgtZfWHB.jpeg', 14, '2020-10-12 15:18:59', '2020-10-12 15:18:59'),
(138, 'public/Photos/WGs7gTpVwkuRDFvuRc67AlDwNpOenQhQOL4yXQWg.jpeg', 14, '2020-10-12 15:18:59', '2020-10-12 15:18:59'),
(139, 'public/Photos/6FdnFJ7Dan3Vnp12B4KaRInFAWWPcVfycdGEjk0C.jpeg', 14, '2020-10-12 15:18:59', '2020-10-12 15:18:59'),
(140, 'public/Photos/R3o6gZ1TjVYUmbunFZNR2F9Q7QtVJSKacmZo8wSN.jpeg', 14, '2020-10-12 15:18:59', '2020-10-12 15:18:59'),
(141, 'public/Photos/1xcCamF3ILZDwlqa5ZzvSeyNfietid1GLcvAHuEV.jpeg', 14, '2020-10-12 15:18:59', '2020-10-12 15:18:59'),
(142, 'public/Photos/FhwEc376zPLoI59xjL4oSeZn6FOn8ng5TRFoIl93.jpeg', 14, '2020-10-12 15:18:59', '2020-10-12 15:18:59'),
(143, 'public/Photos/7vpLbYMTAUL75lvMoTeSvNVsGuqwb1ffQp6yxkSy.jpeg', 14, '2020-10-12 15:18:59', '2020-10-12 15:18:59'),
(144, 'public/Photos/jYuIvq8y8IZL7rBKbcQrZ2jn3oM9UyKzJxRdfM7j.jpeg', 14, '2020-10-12 15:19:00', '2020-10-12 15:19:00'),
(145, 'public/Photos/xoDDU2sStOEzQ8lU7gEOsAahFHpf5Yr14bMjYVj2.jpeg', 14, '2020-10-12 15:19:00', '2020-10-12 15:19:00'),
(146, 'public/Photos/4ROP8V2DEDE1JMc3Sz4IpeGC9LMXSozHn0NHK6mB.jpeg', 14, '2020-10-12 15:19:00', '2020-10-12 15:19:00'),
(147, 'public/Photos/aSi4bqrOpQiQhevfaK7DFoZi9xyDcLJTTUWWEcKx.jpeg', 15, '2020-10-12 15:35:18', '2020-10-12 15:35:18'),
(148, 'public/Photos/nNga7TYdsQ0smiNc47lY7PRzJydDKQZIuvypi05Y.jpeg', 15, '2020-10-12 15:35:18', '2020-10-12 15:35:18'),
(149, 'public/Photos/Wy4m4YDqaLNI3nsmCOEnEfSMEQDzDE6Y7mRZFoWr.jpeg', 15, '2020-10-12 15:35:19', '2020-10-12 15:35:19'),
(150, 'public/Photos/AB2upgXI0NceftpoFZzyx2OXkNPbdWRkffC7paxX.jpeg', 15, '2020-10-12 15:35:19', '2020-10-12 15:35:19'),
(151, 'public/Photos/KU8h9LkYWiIQRtwdlOIAZGrwpJjv3j7cSAHnew9j.jpeg', 15, '2020-10-12 15:35:19', '2020-10-12 15:35:19'),
(152, 'public/Photos/U09aebVei4NMOKNSWueeDfD2b9YxXlfe1avtXlMx.jpeg', 15, '2020-10-12 15:35:19', '2020-10-12 15:35:19'),
(153, 'public/Photos/vIOzup1Aj85KIci3bIQH7EQ5Mo6dFfBQMJmFwTov.jpeg', 15, '2020-10-12 15:35:19', '2020-10-12 15:35:19'),
(154, 'public/Photos/duILOhE1SciZqMP5bvOl97c9tL1pxzlmvx3D2ypz.jpeg', 15, '2020-10-12 15:35:19', '2020-10-12 15:35:19'),
(155, 'public/Photos/SAEivgp8viVCoqjdTrWxm1MzX7PnAiWGnov7cOKG.jpeg', 15, '2020-10-12 15:35:19', '2020-10-12 15:35:19'),
(156, 'public/Photos/kvMNifF5ftTNb76qywLCYUuytZ19cxs68JhBPbq9.jpeg', 15, '2020-10-12 15:35:19', '2020-10-12 15:35:19'),
(157, 'public/Photos/pOYiWL85gqpyygkgoCAmgklFn3rhEldQbEeZY7Gd.jpeg', 15, '2020-10-12 15:35:20', '2020-10-12 15:35:20'),
(158, 'public/Photos/UkgAqnviGcfcaLu6FPEITomlzwySIPUf85ZeHFYI.jpeg', 15, '2020-10-12 15:35:20', '2020-10-12 15:35:20'),
(159, 'public/Photos/Sj0TF8nTscA1IG3GGbs3LwPOlamayJv3U6B9hMCd.jpeg', 15, '2020-10-12 15:35:20', '2020-10-12 15:35:20'),
(160, 'public/Photos/PwOahJQwVZ3eI7SO1CUAR7wFjnOJeRySBE0oC7gf.jpeg', 15, '2020-10-12 15:35:20', '2020-10-12 15:35:20'),
(161, 'public/Photos/kn2R7DWVloWTyoOnZz9wByZ7nenrJ5DVvMKBvJo2.jpeg', 15, '2020-10-12 15:35:20', '2020-10-12 15:35:20'),
(162, 'public/Photos/8XvFB97fvmkV6GIPLqVtbT8gPQcnnXZuduggtjtJ.jpeg', 15, '2020-10-12 15:35:20', '2020-10-12 15:35:20'),
(163, 'public/Photos/A5TAIGg6VQ4jk7alPUU8Y6DsabsLzXDnHtC8VD5y.jpeg', 15, '2020-10-12 15:35:20', '2020-10-12 15:35:20'),
(164, 'public/Photos/bKEzK5xNyC5EbhBGqnb7StKtrpcOsC3sM8uQgTTX.jpeg', 15, '2020-10-12 15:35:21', '2020-10-12 15:35:21'),
(165, 'public/Photos/ER9ysts8OmPsCyCrSVdBHfFgydeMUk1i8aJJt0bq.jpeg', 15, '2020-10-12 15:35:21', '2020-10-12 15:35:21'),
(166, 'public/Photos/vOF5rihWd1pDAfCkMTYkqFHW6gc4e4uNT6f0UMO9.jpeg', 15, '2020-10-12 15:35:21', '2020-10-12 15:35:21'),
(167, 'public/Photos/khAOeICvb8zQAqaPJDrpNyMFt2qPbX3AM5BW41uq.jpeg', 15, '2020-10-12 15:35:35', '2020-10-12 15:35:35'),
(168, 'public/Photos/doClZYPym1oBkhDSiBB0XTsxaWUInr3A1bCleLR5.jpeg', 15, '2020-10-12 15:35:53', '2020-10-12 15:35:53'),
(169, 'public/Photos/nyI4odPFk2ChsC6JtbwEas8ZQhRrLrtDCbWBrR13.jpeg', 15, '2020-10-12 15:36:02', '2020-10-12 15:36:02'),
(170, 'public/Photos/u0KSyX2or5pHa83PVDgy2AaxU16utJ4oI95Qbwuo.jpeg', 15, '2020-10-12 15:36:14', '2020-10-12 15:36:14'),
(171, 'public/Photos/lSoUWLWvtFTSuPmnUDAMKVcAtJYCRNbh95RUydY6.jpeg', 15, '2020-10-12 15:36:22', '2020-10-12 15:36:22'),
(172, 'public/Photos/alvpO0oksZVivrNEU76D0kXhbMP1qB4STtt80Opn.jpeg', 15, '2020-10-12 15:36:32', '2020-10-12 15:36:32'),
(173, 'public/Photos/7gJ49eisoXDX3rDZddGDMRKqXgvTnZcXnFf1U3x4.jpeg', 10, '2020-10-14 12:03:45', '2020-10-14 12:03:45'),
(174, 'public/Photos/qkqKw7t9YSvFXwuYfT1dm8bqkbcVl7SOwNTHmiTO.jpeg', 10, '2020-10-14 12:03:52', '2020-10-14 12:03:52'),
(175, 'public/Photos/m3Q7kOAkaroDoLrcYuOeD4cKRXwrOaBr5JiiQnnR.jpeg', 16, '2020-11-02 14:12:48', '2020-11-02 14:12:48'),
(176, 'public/Photos/bGC3R2wsYunOOd53VLIgnmGrcdb7vMjVLyLjj2FU.jpeg', 16, '2020-11-02 14:12:49', '2020-11-02 14:12:49'),
(177, 'public/Photos/lqcG1JX5I5vefuZsv0xHxRc2okWP0wAafuQiWZnd.jpeg', 16, '2020-11-02 14:12:49', '2020-11-02 14:12:49'),
(178, 'public/Photos/FGQePTy0J0XKYeOXXyxrG8Avp1YEwz3rF8MRK9Lj.jpeg', 16, '2020-11-02 14:12:49', '2020-11-02 14:12:49'),
(179, 'public/Photos/ZEpgjUcvzHueYWX13QzY4o1ZNjYHPLjOLR22aQls.jpeg', 16, '2020-11-02 14:12:49', '2020-11-02 14:12:49'),
(180, 'public/Photos/ScAY3x8xQJYzzLiWFkdGZLamtKNlI6SYqs6BEscB.jpeg', 16, '2020-11-02 14:12:49', '2020-11-02 14:12:49'),
(181, 'public/Photos/TmoqEc7IOyeTxaTticzjPqCak2QX3Oje4hPSllbD.jpeg', 16, '2020-11-02 14:12:49', '2020-11-02 14:12:49'),
(182, 'public/Photos/9r1QgLPzfh9u6AF8EcMbySjlZwc1uEPpSda2wtsC.jpeg', 16, '2020-11-02 14:12:49', '2020-11-02 14:12:49'),
(183, 'public/Photos/Q8U9oK8Pvpmbu1ymRkX0leyxSZBw6giDHHnlNfTT.jpeg', 16, '2020-11-02 14:12:49', '2020-11-02 14:12:49'),
(184, 'public/Photos/6v5j4PaAqrQFIKJrvKvWu3lmXU6YNnzhvj3FsICs.jpeg', 16, '2020-11-02 14:12:50', '2020-11-02 14:12:50'),
(185, 'public/Photos/fEVNDuRFFiVDUsKV4uzKmtMCjyPZZ1474gG6bQ6i.jpeg', 16, '2020-11-02 14:12:50', '2020-11-02 14:12:50'),
(186, 'public/Photos/r6Gp2Cu2M3XghGllUWd3C19GeXF92zTV9Z2mMAYz.jpeg', 16, '2020-11-02 14:12:50', '2020-11-02 14:12:50'),
(187, 'public/Photos/gpqlQqBU4dRiBG0kWYblp2yJlJvYPss1kk3HziJl.jpeg', 17, '2020-11-02 14:24:43', '2020-11-02 14:24:43'),
(188, 'public/Photos/j9jrPe7EyVB1DloudlS6lKGCMYEE2kqimALfS29h.jpeg', 17, '2020-11-02 14:24:44', '2020-11-02 14:24:44'),
(190, 'public/Photos/43bDfOWRN0Q3OM8cMTVlN7Q0skndmGMbdf275oOE.jpeg', 18, '2020-11-02 16:26:26', '2020-11-02 16:26:26'),
(192, 'public/Photos/sjVgu6xdRiLgTEtlLnPW8JENwPdspx49PjDyj5m3.jpeg', 17, '2020-11-03 11:58:09', '2020-11-03 11:58:09'),
(193, 'public/Photos/j9joDP0LecBrg9tlvJrOEApG9g3BrL4OW39lKpbd.jpeg', 17, '2020-11-03 11:58:15', '2020-11-03 11:58:15'),
(194, 'public/Photos/OFXAnbqhd5z0KbCmqUfjjD9If085tLLVnSb9iL8e.jpeg', 17, '2020-11-03 11:58:24', '2020-11-03 11:58:24'),
(222, 'public/Photos/FQI7ArfhwZV0PjBD07zpUyPXSIUDwEFyoop7fhJI.jpeg', 20, '2020-11-03 12:18:00', '2020-11-03 12:18:00'),
(223, 'public/Photos/0z2ql9rfw4odncEa3xWNz70XdDllFOA3YL7GjDrB.jpeg', 20, '2020-11-03 12:18:13', '2020-11-03 12:18:13'),
(224, 'public/Photos/qgMPWQX56Ug4cYkYROqdq97MJGOovSvY5UAyyST3.jpeg', 20, '2020-11-03 12:18:24', '2020-11-03 12:18:24'),
(225, 'public/Photos/8ZrMjkBxtvYRFbypue6YpJrjzFGXbhZU112pNIRr.jpeg', 20, '2020-11-03 12:18:40', '2020-11-03 12:18:40'),
(226, 'public/Photos/lPUbYm54ws5N7cw4eJXvgRdqKHY5jKnbLfoUZd9g.jpeg', 20, '2020-11-03 12:19:11', '2020-11-03 12:19:11'),
(227, 'public/Photos/AUDv5rr0FvK9AOonEQ0MFEw6ogdSB5y1nudQ4rMN.jpeg', 20, '2020-11-03 12:19:11', '2020-11-03 12:19:11'),
(228, 'public/Photos/HlzNnKoVW247xpNmWkOrO9Q24NUo5gFq2NAdaErA.jpeg', 20, '2020-11-03 12:19:11', '2020-11-03 12:19:11'),
(229, 'public/Photos/eboOdrOadqoPJ58uQcPePab0dryA7RwEbeo23sEG.jpeg', 20, '2020-11-03 12:19:11', '2020-11-03 12:19:11'),
(230, 'public/Photos/g6rx28IXVqmyK3CITgANerVL4taLN0my2resDTPU.jpeg', 20, '2020-11-03 12:19:11', '2020-11-03 12:19:11'),
(231, 'public/Photos/bR9ntb8M7WQBYnYp3MRbDtK8wWWgpHYkgclJhx3M.jpeg', 20, '2020-11-03 12:19:11', '2020-11-03 12:19:11'),
(233, 'public/Photos/BOTbcWZtDMaGO4DWmR5cOqIMiOtR5FvEQQT8NQ6B.jpeg', 20, '2020-11-03 12:19:12', '2020-11-03 12:19:12'),
(234, 'public/Photos/onHkxpP4YTD8ElZXoss1l4A1mXkGU2nLU4oe0KOZ.jpeg', 20, '2020-11-03 12:19:12', '2020-11-03 12:19:12'),
(235, 'public/Photos/Y8nzmyVCxVaNGP006wJ89Dqb0RDvAfKfJmffu0hr.jpeg', 20, '2020-11-03 12:19:12', '2020-11-03 12:19:12'),
(236, 'public/Photos/k41UQCFY7Bs32ykcH7V0VuWBgtQXcnwmdyg48E57.jpeg', 20, '2020-11-03 12:19:12', '2020-11-03 12:19:12'),
(237, 'public/Photos/3VdgwWEmXNNg3XeS8sjutaT6jJZ2679Owfekb1q8.jpeg', 20, '2020-11-03 12:19:12', '2020-11-03 12:19:12'),
(238, 'public/Photos/VDej8CuuwYyDpt1Pispxxj1JJYtcH9WAgPAez68M.jpeg', 20, '2020-11-03 12:19:12', '2020-11-03 12:19:12'),
(239, 'public/Photos/h7edNaiuRiIfC3nSmmEeWKPWEqXbOTTXfiao4jZt.jpeg', 20, '2020-11-03 12:19:12', '2020-11-03 12:19:12'),
(240, 'public/Photos/UsKqcWnlyq6Cy7d1sCyjOWXDCjX6M1fAb6v1I9aG.jpeg', 20, '2020-11-03 12:19:12', '2020-11-03 12:19:12'),
(242, 'public/Photos/3XSUyX55AQteKs62iEBicHXgg1wnsJFR7RQwD4yv.jpeg', 20, '2020-11-03 12:19:12', '2020-11-03 12:19:12'),
(243, 'public/Photos/y4n6Jl0dmrVbTz12S2E3EhSzrEvHBEQR8MjbkL1n.jpeg', 20, '2020-11-03 12:19:13', '2020-11-03 12:19:13'),
(245, 'public/Photos/iSBsyzzxVjNXvuKJioYXfBxgy35gLBKoFyqvujrX.jpeg', 20, '2020-11-03 12:19:13', '2020-11-03 12:19:13'),
(246, 'public/Photos/280NTlyGjURDQFA4uhEuqdT24ApUX2ecJvySFiIa.jpeg', 20, '2020-11-03 12:21:39', '2020-11-03 12:21:39'),
(247, 'public/Photos/VbYxyMjUwc9HxslbaShbZUHx4juMr0IwHGqcEDff.jpeg', 12, '2020-11-03 12:28:13', '2020-11-03 12:28:13'),
(248, 'public/Photos/8AfxSe2eLHVwaKDgy0h7KussfLNdM4ykNo5rcLDh.jpeg', 12, '2020-11-03 12:28:13', '2020-11-03 12:28:13'),
(249, 'public/Photos/wnNQEcpqYmwCK65OLdyhmgikjqMvZ1GdYPWsLzoh.jpeg', 12, '2020-11-03 12:28:13', '2020-11-03 12:28:13'),
(250, 'public/Photos/AVaeNigf7L11QzPvzSkroGCprh03OrXNMca84BTK.jpeg', 12, '2020-11-03 12:28:31', '2020-11-03 12:28:31'),
(251, 'public/Photos/cQH6Vl73bWT0JLynOtRw5UaoRCIk67eCXf8I6wfT.jpeg', 12, '2020-11-03 12:28:31', '2020-11-03 12:28:31'),
(253, 'public/Photos/KLyltroTv1B3kFCretyT8tSesKZ7QbZOCuWK2jlE.jpeg', 19, '2020-11-03 12:39:44', '2020-11-03 12:39:44'),
(255, 'public/Photos/8dIWGvtvkLD7elInjoUJaoU1RyrLAPZrL7Gnuupg.jpeg', 19, '2020-11-03 12:46:10', '2020-11-03 12:46:10'),
(256, 'public/Photos/CqLo7804YAYeqXe63umXOiKmPBM5bjOaUDFjSJgX.jpeg', 19, '2020-11-03 12:46:24', '2020-11-03 12:46:24'),
(257, 'public/Photos/CuXELRRIpLyziccHuDvtSMHnDjYvSpAFoLmMWuDd.jpeg', 19, '2020-11-03 12:46:42', '2020-11-03 12:46:42'),
(258, 'public/Photos/RFNADAS6Fmaq4MhMHYpx432LRsImxaVAnjtxcSmi.jpeg', 19, '2020-11-03 12:46:42', '2020-11-03 12:46:42'),
(259, 'public/Photos/0kdrRBheTDJsRbH30YPOhhb4mShoKMfINTv0wK7e.jpeg', 19, '2020-11-03 12:46:42', '2020-11-03 12:46:42'),
(260, 'public/Photos/KB6mVneabhOWhCQvAjmcaoI7VnMkmEuynkBhpprf.jpeg', 19, '2020-11-03 12:47:00', '2020-11-03 12:47:00'),
(261, 'public/Photos/yeuqJbWJaz4yeI1ZFsj8WoW3EYsn7sz0v6zASapW.jpeg', 19, '2020-11-03 12:48:26', '2020-11-03 12:48:26'),
(262, 'public/Photos/AwFDxSDBRAjoahDlPBbNaIOHEnCgz98uVQSCufLd.jpeg', 19, '2020-11-03 12:48:26', '2020-11-03 12:48:26'),
(263, 'public/Photos/9HRFH7BUWJDdUhH8eRESxoTMR5nEY3rFn1lD9wWw.jpeg', 19, '2020-11-03 12:48:26', '2020-11-03 12:48:26'),
(264, 'public/Photos/zR9vaPq4Ns4jtv3kVKdiWtUwaxri91bY87DuO2ww.jpeg', 19, '2020-11-03 12:48:26', '2020-11-03 12:48:26'),
(265, 'public/Photos/Ct2z557YAuWENWSF5TiSJFc5mzmpm0WrziijLGKK.jpeg', 19, '2020-11-03 12:48:26', '2020-11-03 12:48:26'),
(266, 'public/Photos/4o2QaNg0JeVWmRzQJCWKnoU3avurEptBq5nePqKf.jpeg', 19, '2020-11-03 12:48:26', '2020-11-03 12:48:26'),
(267, 'public/Photos/4R1rpZTIUKN2WpYYs3JhkWAPBFW7oEdiXBcM4j3J.jpeg', 19, '2020-11-03 12:48:26', '2020-11-03 12:48:26'),
(268, 'public/Photos/kpYGm4HM0IcnKp4GrD48qRnIE1ql98SP1rjn6u31.jpeg', 19, '2020-11-03 12:48:26', '2020-11-03 12:48:26'),
(269, 'public/Photos/7ReFkzMhTr8ANZns1QcfBLhQKicJcWFahX0cQVfE.jpeg', 19, '2020-11-03 12:48:26', '2020-11-03 12:48:26'),
(271, 'public/Photos/iD6b8h5c4VxN6pIWodcNxfFMQgouuliZKqKfekKk.jpeg', 17, '2020-11-05 11:01:57', '2020-11-05 11:01:57'),
(273, 'public/Photos/HluOXo9GIEegr8umE9ZDcUdfhWP2gYhbL3FWdy58.jpeg', 18, '2020-11-05 11:11:34', '2020-11-05 11:11:34'),
(274, 'public/Photos/1H0RB6Fr0awdzdGpLXhBkeOjVuzDACPG2eIurmPv.jpeg', 18, '2020-11-05 11:27:56', '2020-11-05 11:27:56'),
(275, 'public/Photos/0NKHKYbMkqIp53jLgu0kwMj32xS0yX1EXv3A9d0M.jpeg', 18, '2020-11-05 11:27:56', '2020-11-05 11:27:56'),
(276, 'public/Photos/Iau4WLmnMHRsNhMG8gkAMgyrhIPq4HmGo8PIHUjv.jpeg', 18, '2020-11-05 11:27:56', '2020-11-05 11:27:56'),
(277, 'public/Photos/B0YpQyxN3HsUCvJ0avkX3Lw27iXm28xgJ4pSsFph.jpeg', 18, '2020-11-05 11:27:56', '2020-11-05 11:27:56'),
(278, 'public/Photos/mWCxzzdK1YJvoheDOjS02bETakOuyS3hewH4k0rt.jpeg', 18, '2020-11-05 11:27:56', '2020-11-05 11:27:56'),
(279, 'public/Photos/YIsJGmZzjiNsEoac0gtH8yxxNtBeXd3eGqbPenha.jpeg', 18, '2020-11-05 11:27:56', '2020-11-05 11:27:56'),
(280, 'public/Photos/ELzTNQG0P59m5pbuGPiwPYkWCWSlpYIDmneSqdT5.jpeg', 19, '2020-11-05 11:42:53', '2020-11-05 11:42:53'),
(281, 'public/Photos/QSpItIQaKLHFQlfGyncKKFC9HvJ6q7zqO1dhVcqt.jpeg', 19, '2020-11-05 11:42:54', '2020-11-05 11:42:54'),
(282, 'public/Photos/Ti6vrC4huFcJpWCDBFt9AfZxag1NVZ5zST5Ncsj6.jpeg', 19, '2020-11-05 11:42:54', '2020-11-05 11:42:54'),
(284, 'public/Photos/QEUFUuamS4IAqSLlmotc6Cv70p12wwgGIrYpQnVJ.jpeg', 19, '2020-11-05 11:42:54', '2020-11-05 11:42:54'),
(285, 'public/Photos/5v4Qpx2CXld4PxPHeb5IEqvsiRE3X7Es3ttfjTUQ.jpeg', 19, '2020-11-05 11:42:54', '2020-11-05 11:42:54'),
(286, 'public/Photos/z9GcQdGKE6IhbD3upun8PwByESdu2JfryVE8ezE3.jpeg', 19, '2020-11-05 11:42:54', '2020-11-05 11:42:54'),
(287, 'public/Photos/H83TbbAQYpDSwX2qc1wAh0oQemWh1SjcjecLLmNA.jpeg', 19, '2020-11-05 11:42:54', '2020-11-05 11:42:54'),
(288, 'public/Photos/qbccy3mNZTxEheEfIZygsZo5EtwATP9Et83Vrwd6.jpeg', 19, '2020-11-05 11:42:54', '2020-11-05 11:42:54'),
(289, 'public/Photos/mz4H2W25E3uSW93bOKlES9Ng2qyMtAxMbsLircnL.jpeg', 19, '2020-11-05 11:42:54', '2020-11-05 11:42:54'),
(291, 'public/Photos/xF4Iy9Dazmu5udKZdNnZEqTrYvYM6dMSNYPEPzk0.jpeg', 19, '2020-11-05 11:42:55', '2020-11-05 11:42:55'),
(292, 'public/Photos/Sha2BtSqZ0fcZx3Uq44c5Nh5uOpwOnS7zuMviZhW.jpeg', 19, '2020-11-05 11:42:55', '2020-11-05 11:42:55'),
(293, 'public/Photos/BMPpZd3B8tMGcijoO9EveSAzIPgBFHt7zI4w2kze.jpeg', 19, '2020-11-05 13:53:55', '2020-11-05 13:53:55'),
(294, 'public/Photos/cR8MIp4C5jb75xkUiLtNqloofrrQggcGpXTeoOzL.jpeg', 19, '2020-11-05 13:54:02', '2020-11-05 13:54:02'),
(295, 'public/Photos/cBigCvNUY4ER7Yj8MwQkrjV45xeQZdkKQ2HbHAsk.jpeg', 14, '2020-11-05 14:20:44', '2020-11-05 14:20:44'),
(296, 'public/Photos/5LBfdayZ1itCPU1snu0YkNWhrseT5uNRSOlbdjwC.jpeg', 14, '2020-11-05 14:20:44', '2020-11-05 14:20:44'),
(297, 'public/Photos/VP40y6LT7bcydWz7qrixYqOPz3wL2EYG1inUlCD3.jpeg', 14, '2020-11-05 14:20:44', '2020-11-05 14:20:44'),
(298, 'public/Photos/k3y14VV8nSWyJvn7kil4tDXjwmKMWnntnlPuqVWC.jpeg', 14, '2020-11-05 14:20:45', '2020-11-05 14:20:45'),
(299, 'public/Photos/grGWsIF9TSKrbL5Oz0uiEOXn8YZP3DpS0KXRjcQq.jpeg', 14, '2020-11-05 14:20:57', '2020-11-05 14:20:57'),
(300, 'public/Photos/blKxWvRnUB3dB2DK4XfN4gmO96DHe03PuBP4BSa6.jpeg', 14, '2020-11-05 14:20:58', '2020-11-05 14:20:58'),
(301, 'public/Photos/xuYT06DEtcOx8VujVISVD6VdtvZ4xggIQ6P7Hg5j.jpeg', 14, '2020-11-05 14:20:58', '2020-11-05 14:20:58'),
(302, 'public/Photos/2g9itSyzU0ZwrNhBOrDtMYabFCkiviU4tsVl3NAB.jpeg', 14, '2020-11-05 14:21:12', '2020-11-05 14:21:12'),
(303, 'public/Photos/IFNB5QcjdiPz8CrVxtrkW9KgME71ftbGOkIpqvJK.jpeg', 14, '2020-11-05 14:21:12', '2020-11-05 14:21:12'),
(304, 'public/Photos/OjnQL4DzyOk7PzGZFS7itybzFJvgfbEcx883nZIt.jpeg', 14, '2020-11-05 14:21:12', '2020-11-05 14:21:12'),
(305, 'public/Photos/HTJP7Tro9Hgvo2DjJPymQOXnflShyzCuMjxKDbKQ.jpeg', 14, '2020-11-05 14:21:12', '2020-11-05 14:21:12'),
(306, 'public/Photos/OtXBm6WfY9wdSKmNWFfmhbMdyIMCsPT6btYvmXDK.jpeg', 14, '2020-11-05 14:21:12', '2020-11-05 14:21:12'),
(307, 'public/Photos/bCnfzEZ6DmInM9stBQwLP66BH11qQeKRMWXYdxFt.jpeg', 14, '2020-11-05 14:21:12', '2020-11-05 14:21:12'),
(308, 'public/Photos/hEnhBxj4bgeDiBkRzng5jlkkWjzaAsJVjTU3tYVb.jpeg', 19, '2020-11-05 14:21:36', '2020-11-05 14:21:36'),
(309, 'public/Photos/zOlObAZl4Iy4n1XK7GBLpRhcsSv41KaYuHWcQrKw.jpeg', 11, '2020-11-05 14:22:20', '2020-11-05 14:22:20'),
(310, 'public/Photos/DGr7JS02v0wcAGgFOVYDtFpYZZRtcd1B5BE3ZjCj.jpeg', 18, '2020-11-12 12:08:43', '2020-11-12 12:08:43'),
(312, 'public/Photos/eHimHbyOtP7IwTk4bKVvVnOjQ3AQOvvBadKALf4J.jpeg', 18, '2020-11-12 12:20:56', '2020-11-12 12:20:56'),
(313, 'public/Photos/NecL0RGjyP8qlviQniWKc75RGSdQo7lsD3tMthet.jpeg', 18, '2020-11-12 12:22:00', '2020-11-12 12:22:00'),
(314, 'public/Photos/4Hu2Jg71KD5hdXVkwhyGU492x3HcCKq6UvdAZ6ev.jpeg', 11, '2020-11-13 11:30:50', '2020-11-13 11:30:50'),
(315, 'public/Photos/N8iBxhqxUNoBpUhiSKVMURsdno2ACJocIQ6wN2MO.jpeg', 11, '2020-11-13 11:30:50', '2020-11-13 11:30:50'),
(316, 'public/Photos/EdoU9GH7DptE9FDWV1bs54DmuLID3kDdEc9TovGW.jpeg', 14, '2020-11-13 11:31:51', '2020-11-13 11:31:51'),
(317, 'public/Photos/68z3cJzScBuDIbtjfXDZzJLL5a4qjBz9XOMaazuP.jpeg', 17, '2020-11-13 11:42:31', '2020-11-13 11:42:31'),
(318, 'public/Photos/DFUtZ1oJD4kX0NKRUe2J0ajd9tr3C6wzjP65WDgg.jpeg', 17, '2020-11-13 11:42:32', '2020-11-13 11:42:32'),
(319, 'public/Photos/fKF3KvM0uAkoIhW1CkjwQ7f3Gq5fbLaYL1eAJqX7.jpeg', 17, '2020-11-13 11:42:32', '2020-11-13 11:42:32'),
(320, 'public/Photos/fTWlaumRdyeqSpOT0M1Vljb0kOCd1rOMfOpY2dFT.jpeg', 17, '2020-11-13 11:42:32', '2020-11-13 11:42:32'),
(321, 'public/Photos/AjbJRVy82sl5zaeu0D88pq072IlCU47oc4u8K67P.jpeg', 17, '2020-11-13 11:42:32', '2020-11-13 11:42:32'),
(322, 'public/Photos/UPXyJUsFSqnP9KtQN3baxKEwb92Tl98gHKbZDRCU.jpeg', 17, '2020-11-13 11:42:33', '2020-11-13 11:42:33'),
(323, 'public/Photos/uRDL8qaeMliA9WpiQ5Ornpq7VTtUrnrnUqs1AmOk.jpeg', 17, '2020-11-13 11:42:33', '2020-11-13 11:42:33'),
(324, 'public/Photos/LvX6qfQumJdUswOeN8CBu42vjUqti9sbhJ7CBUGB.jpeg', 17, '2020-11-13 11:42:33', '2020-11-13 11:42:33'),
(325, 'public/Photos/tgmUi7aK3Ioc4v4qaChjcJwNAK5ZierWf5xmqAdR.jpeg', 17, '2020-11-13 11:42:33', '2020-11-13 11:42:33'),
(326, 'public/Photos/LRNFGqdwRGGHNf4aa13amYOCZhtmb31qsfBC9zXr.jpeg', 17, '2020-11-13 11:42:33', '2020-11-13 11:42:33'),
(327, 'public/Photos/Q3DkP4PLAXG838SqsdkkbGhtEjNfsOJ0iHSil4Kg.jpeg', 17, '2020-11-13 11:42:33', '2020-11-13 11:42:33'),
(328, 'public/Photos/WxC6lcov1NDANmzCdZqBPtRCi60F0R29csCYITXz.jpeg', 17, '2020-11-13 11:42:33', '2020-11-13 11:42:33'),
(329, 'public/Photos/tU02ljluyXOcfT1GWWBK6Up3rThpuh8b58twvE4q.jpeg', 17, '2020-11-13 11:42:34', '2020-11-13 11:42:34'),
(330, 'public/Photos/RTZXtL1MBe1LuVLDj6OCn7PMKykNQmfmwQ4j0XJx.jpeg', 17, '2020-11-13 11:42:34', '2020-11-13 11:42:34'),
(331, 'public/Photos/BOO1u08iZIWbURFuGSW3wyhu374i7gl3iE3YUAes.jpeg', 17, '2020-11-13 11:42:34', '2020-11-13 11:42:34'),
(332, 'public/Photos/pP1ZqjzWRCargKWYA9IKSeZgiMQpzvgO2tphOy4J.jpeg', 17, '2020-11-13 11:42:34', '2020-11-13 11:42:34'),
(333, 'public/Photos/wF4VL02ALfNZIGhI48IVIpYQPQKGou6Oq7SeHMZU.jpeg', 17, '2020-11-13 11:42:34', '2020-11-13 11:42:34'),
(335, 'public/Photos/LRAJzHv6NI32KMixskXdVQVGvnh6x0qCauUXNvVg.jpeg', 17, '2020-11-13 11:42:34', '2020-11-13 11:42:34'),
(336, 'public/Photos/PZe7rKkdevJOQd1vXxbBGKwJWCFjwP6xxeG1rWip.jpeg', 17, '2020-11-13 11:42:35', '2020-11-13 11:42:35'),
(337, 'public/Photos/QJHGIskPDpkwKcShWfydnYwbXE4lTMLacLoNL0Zq.jpeg', 17, '2020-11-13 11:43:50', '2020-11-13 11:43:50'),
(338, 'public/Photos/Y95tCOZd2XH1jGO8ZL9LMnlaHSVkYLaGfwZHhBnC.jpeg', 17, '2020-11-13 11:43:50', '2020-11-13 11:43:50'),
(339, 'public/Photos/gFS7tjgbztIAkFIwxNm9eY2HeapM28rKwXzUa0Lo.jpeg', 17, '2020-11-13 11:43:50', '2020-11-13 11:43:50'),
(341, 'public/Photos/VSTKiEFqCz377BHOWwwP7Bo1J1MIVaY8slUJjD7L.jpeg', 17, '2020-11-13 11:43:51', '2020-11-13 11:43:51'),
(342, 'public/Photos/sbw17HRUdVMYn39vcEVfsEVmeyEOztMAzYtL9KJV.jpeg', 17, '2020-11-13 11:43:51', '2020-11-13 11:43:51'),
(343, 'public/Photos/vCj4UBGkUEZwrEmInoVtEL0QfAxSykRqSFWcytur.jpeg', 17, '2020-11-13 11:43:51', '2020-11-13 11:43:51'),
(344, 'public/Photos/8qJeK0ltOQydPZx1eupe9iAijp2oLX7DZfN8VahV.jpeg', 17, '2020-11-13 11:43:51', '2020-11-13 11:43:51'),
(345, 'public/Photos/GhqHuFYsjfcEUXfx6tEoliLnIjUn0JnrhICwo2Vy.jpeg', 17, '2020-11-13 11:43:51', '2020-11-13 11:43:51'),
(346, 'public/Photos/Xf4xcs4ePxAXgZ0cDGh1POSIaelEkGfoytUggCBz.jpeg', 17, '2020-11-13 11:43:51', '2020-11-13 11:43:51'),
(347, 'public/Photos/CyYJpJcKeewIyU7WtQUNA2nTzfU1pP2ShFnZoNte.jpeg', 20, '2020-11-13 12:15:05', '2020-11-13 12:15:05'),
(348, 'public/Photos/A3zwcISweeXgTZfCV6Snzdpw5gAckSo59WTv49D7.jpeg', 14, '2020-11-13 12:27:46', '2020-11-13 12:27:46'),
(349, 'public/Photos/ruK1XQ5dVlSr6XIkMmrpBrwmxWoF7CcZN7K6kK6H.jpeg', 14, '2020-11-13 12:36:16', '2020-11-13 12:36:16'),
(350, 'public/Photos/cmSONCr4oCy9pHONOHJBRqMX7KCkSGU2KGcxOuVd.jpeg', 14, '2020-11-13 12:36:16', '2020-11-13 12:36:16'),
(351, 'public/Photos/V9H6qqwiEpDZxXLKecqmlRqK722DqqVuvWcDwKPV.jpeg', 14, '2020-11-13 12:36:16', '2020-11-13 12:36:16'),
(352, 'public/Photos/IrZNjaTETwaik9WwXGStCragqgLaOf5y16Zljz0e.jpeg', 14, '2020-11-13 12:36:17', '2020-11-13 12:36:17'),
(353, 'public/Photos/SIM445ATRAYRok4V5eHyKGqOAAJ3ydw7BSKBrJyu.jpeg', 14, '2020-11-13 12:36:17', '2020-11-13 12:36:17'),
(354, 'public/Photos/sG9AlFrKl1BEGWmXasduAbMsVRPCfobk011dRgaL.jpeg', 14, '2020-11-13 12:36:58', '2020-11-13 12:36:58'),
(355, 'public/Photos/F62mX2VhG1ZIqyCQEkjRG9ZoBtSyAUflfAAOwWkP.jpeg', 14, '2020-11-13 12:42:57', '2020-11-13 12:42:57'),
(356, 'public/Photos/pCle5dPHNnDbtsV9OWnhmj5pE8qX7YT64hZ8xbo2.jpeg', 14, '2020-11-13 12:42:57', '2020-11-13 12:42:57'),
(357, 'public/Photos/PlQmGH4wpy4gSSL7yojH2AF3Ie2MSAdpnxYjm9Q6.jpeg', 14, '2020-11-13 12:42:57', '2020-11-13 12:42:57'),
(358, 'public/Photos/KiYhZWEK1rePrftvNjL7Dll5pv8ji4hUlnFUOLXm.jpeg', 14, '2020-11-13 12:42:57', '2020-11-13 12:42:57'),
(359, 'public/Photos/u0mGzMYu4dcGo0gaH2emGabdVqtvacOilPa4pv3D.jpeg', 14, '2020-11-13 12:42:57', '2020-11-13 12:42:57'),
(360, 'public/Photos/cS5UJpbXkQJSzeg7aoI4hxPFQ1kJLsa8BbpNhOBt.jpeg', 14, '2020-11-13 12:42:57', '2020-11-13 12:42:57'),
(361, 'public/Photos/qlvzjw9qVskjxU6JkqpHxrr8JXjuoUhjzA3K35Bd.jpeg', 12, '2020-11-13 13:21:00', '2020-11-13 13:21:00'),
(362, 'public/Photos/wbh4BKa72SwexuDIZNrPadav5uSmqKM65oZqLVAN.jpeg', 12, '2020-11-13 13:21:00', '2020-11-13 13:21:00'),
(363, 'public/Photos/L0l6vMiOjzYkRWJ2dGN2t1SIoCDJmjOfp3bf39Tl.jpeg', 12, '2020-11-13 13:21:00', '2020-11-13 13:21:00'),
(364, 'public/Photos/2BuQXb1mYZ8rb56wvSGoc71qoboPAzp7qiC7mbar.jpeg', 12, '2020-11-13 13:21:01', '2020-11-13 13:21:01'),
(365, 'public/Photos/TKypzxoV0GlF2yp69cVnWfUgvN4aOoaqui7NvwDn.jpeg', 12, '2020-11-13 13:21:01', '2020-11-13 13:21:01'),
(366, 'public/Photos/LcKhi4Y4GT33pluyiDXuHKRATh5MInW2MQB7Anwv.jpeg', 12, '2020-11-13 13:21:02', '2020-11-13 13:21:02'),
(367, 'public/Photos/FqllwINVrfvBnVdJXp6DFb8xDxJYXnlyabHqJ0IK.jpeg', 12, '2020-11-13 13:21:02', '2020-11-13 13:21:02'),
(369, 'public/Photos/xbvIOTgo0dRMHyf0OxLgBqrDaqLWZcmSzosJV19W.jpeg', 12, '2020-11-13 13:21:03', '2020-11-13 13:21:03'),
(370, 'public/Photos/RgTVRMIJH5BCPz5VPcpQdJkahlX7UzYaHaW2kKva.jpeg', 18, '2021-01-08 11:36:08', '2021-01-08 11:36:08'),
(371, 'public/Photos/840cDkwExEdwD1uOZWsd3IRHLkiCRLgbjqeoboJb.jpeg', 18, '2021-01-08 11:36:16', '2021-01-08 11:36:16'),
(372, 'public/Photos/njpSgXMiwnPO2LNFWvYnfcaLvaAgBBVCsfw8UkLF.jpeg', 18, '2021-01-08 11:44:18', '2021-01-08 11:44:18'),
(373, 'public/Photos/Wsoy6xoAcfyUyVToUhradu2IIfOzs5ASPbNV8B17.jpeg', 18, '2021-01-08 11:44:18', '2021-01-08 11:44:18'),
(374, 'public/Photos/klcewqeWG7tY6ymZf2Wmz27KjSilWno2tBAEXI4O.jpeg', 18, '2021-01-08 11:44:18', '2021-01-08 11:44:18'),
(375, 'public/Photos/YUEPhXt5oweEDZNTJbkaFFz1I7O0CtjD1d7yu5sf.jpeg', 18, '2021-01-08 11:44:27', '2021-01-08 11:44:27'),
(376, 'public/Photos/JGhhqkG6idy1JpaB2BIoTvrhlu1HcjpObb35jtbu.jpeg', 18, '2021-02-16 11:37:47', '2021-02-16 11:37:47'),
(377, 'public/Photos/TDnRCb0xuz8TYWf2XoGsQeu5uEiVSpFJYM2xkSZa.jpeg', 18, '2021-02-16 11:37:47', '2021-02-16 11:37:47'),
(378, 'public/Photos/J91sX2Q30zHYvSvQUQG7jBxehfLz8MgaVLu9oggs.jpeg', 18, '2021-02-16 11:37:47', '2021-02-16 11:37:47'),
(379, 'public/Photos/7aynPt5mgPso7nonGL2WzzGtlDSoGn2G5p7pMPMZ.jpeg', 18, '2021-02-16 11:38:15', '2021-02-16 11:38:15'),
(380, 'public/Photos/AIfb7F51x02I07IyPEfuUWVBSA9wYOzXeGRitUC9.jpeg', 19, '2021-02-16 12:15:03', '2021-02-16 12:15:03'),
(381, 'public/Photos/XOoMqzPe4HTEpRsAPZWDnOsaZpwFtoEjmSiCE2ig.jpeg', 21, '2021-03-14 12:42:46', '2021-03-14 12:42:46'),
(382, 'public/Photos/0hinxiA99owtW7FswlDB1nFVtDpcxKXbowjKhXEg.jpeg', 21, '2021-03-14 12:42:46', '2021-03-14 12:42:46'),
(383, 'public/Photos/F5d0yyHVMNg3U39rxJtMocslqXLuR7kkQ6J2UDkm.jpeg', 21, '2021-03-14 12:42:46', '2021-03-14 12:42:46'),
(384, 'public/Photos/XbX84tG6le876be594YVkb793clA7vLyjgcWCy7X.jpeg', 21, '2021-03-14 12:42:46', '2021-03-14 12:42:46'),
(385, 'public/Photos/Q6dEG65GFgQoep8iiKsjPtsoDS84Ns2ugQpnzkkv.jpeg', 21, '2021-03-14 12:42:46', '2021-03-14 12:42:46'),
(386, 'public/Photos/WoBm6VdzbXsdGNFNtkNQfyl6fLTxu4T9JvNRlRF6.jpeg', 21, '2021-03-14 12:42:46', '2021-03-14 12:42:46'),
(387, 'public/Photos/rW9z1e2EfEWZRPVWhVbCII5i9InkOM1rAKyhCcZO.jpeg', 21, '2021-03-14 12:42:46', '2021-03-14 12:42:46'),
(388, 'public/Photos/IwgojH891NVvkvOUsjeTaGOdB8EXvCwqH6XLaIeM.jpeg', 21, '2021-03-14 12:42:46', '2021-03-14 12:42:46'),
(389, 'public/Photos/tGF8SVatqKnaM5PGS2ikYAa2j8UXQ0xcOFg1c1P0.jpeg', 21, '2021-03-14 12:43:08', '2021-03-14 12:43:08'),
(390, 'public/Photos/tgPx6hlnHZfw5DlQdsxnAz0pMuzQgELRT09S9lPu.jpeg', 21, '2021-03-14 12:47:57', '2021-03-14 12:47:57'),
(391, 'public/Photos/JNPaBdqadu5VSB0YHUr3Mw3WkHRWF2KTIVJuMvIB.jpeg', 21, '2021-03-14 12:56:03', '2021-03-14 12:56:03'),
(392, 'public/Photos/Ztsft0QcX9SXzPIureIN72zu4FapAGwKHSA5yNeT.jpeg', 11, '2021-03-16 10:48:29', '2021-03-16 10:48:29'),
(393, 'public/Photos/lzinRQOoTfqML6xhQw02SC1J626AgjacxRagdIjT.jpeg', 11, '2021-03-16 10:48:29', '2021-03-16 10:48:29'),
(394, 'public/Photos/DwMvmhjVGziCsfOrt2GGsYtBoujBzpXuXsSWAoDY.jpeg', 11, '2021-03-16 10:48:29', '2021-03-16 10:48:29'),
(395, 'public/Photos/NVJZxw2Qhxq2t5wd6zeGNyUYfe057gCmdahY5VwF.jpeg', 11, '2021-03-16 10:49:52', '2021-03-16 10:49:52'),
(396, 'public/Photos/eGJYFkxH0XMdRtZpptaQ6phNTLEACA2gBglGcx78.jpeg', 11, '2021-03-16 10:49:52', '2021-03-16 10:49:52'),
(397, 'public/Photos/0eCO936akeQE2uWxUGb0XCLqfvnGP6EqyCWdTU25.jpeg', 19, '2021-03-16 10:50:42', '2021-03-16 10:50:42'),
(398, 'public/Photos/heVU3AC379SwmHJS9K9PdLj9rH73vXUk17q56OZg.jpeg', 19, '2021-03-16 10:50:42', '2021-03-16 10:50:42'),
(399, 'public/Photos/0GFRVKmz9Od6HDwJas9jR2aG0BNCgkoWNo85y5H3.jpeg', 11, '2021-03-16 10:59:38', '2021-03-16 10:59:38'),
(400, 'public/Photos/pjBEx7J55yZkBTPU3doDmsFyWGbxSCTJohdkggxT.jpeg', 11, '2021-03-16 10:59:38', '2021-03-16 10:59:38'),
(401, 'public/Photos/IUlBBeUT9rOFYz6apat4ycJyxkXDgyqFmLenYDZb.jpeg', 11, '2021-03-16 10:59:38', '2021-03-16 10:59:38'),
(402, 'public/Photos/mzc24UDnMtYdIeazcFuepqtIHH41oFnuWrHUSo3g.jpeg', 23, '2021-04-08 16:45:59', '2021-04-08 16:45:59'),
(403, 'public/Photos/B4N5fYqL70Rt1F6qkD3gSTb7PPAXaPPo4BhDjTJy.jpeg', 23, '2021-04-08 16:52:21', '2021-04-08 16:52:21'),
(404, 'public/Photos/AirJ6pt8OuU4Gm29As4f6pFi6i8AvTF0ygfNLlvw.jpeg', 23, '2021-04-08 16:52:23', '2021-04-08 16:52:23'),
(405, 'public/Photos/wMDtKPPzIAp19t1XzKm6WO2fqgpbyNaAQyaC1LBP.jpeg', 23, '2021-04-08 16:52:51', '2021-04-08 16:52:51'),
(406, 'public/Photos/u1vEr8RpJtnHGI0AAqyXVCs5w0i5QzoJVUaSIeWl.jpeg', 23, '2021-04-08 16:53:03', '2021-04-08 16:53:03'),
(407, 'public/Photos/KDWjD6Zt9LQTC98a9tYYaJBbVKCCgpI6OORq4v9S.jpeg', 23, '2021-04-12 11:47:04', '2021-04-12 11:47:04'),
(408, 'public/Photos/Pe3BrJICYAeGabN1CszhhrMzzWIELyKStlWTUGGT.jpeg', 23, '2021-04-12 11:49:12', '2021-04-12 11:49:12'),
(409, 'public/Photos/mLHDjjHcQa7etfO374QsRlr0UXX3Uw51IgsVVO4J.jpeg', 23, '2021-04-12 11:49:57', '2021-04-12 11:49:57'),
(410, 'public/Photos/43DTcXz77UCpiQESzsTh7XmrkEzOoaYM2y6JeXkm.jpeg', 23, '2021-04-12 11:51:31', '2021-04-12 11:51:31'),
(411, 'public/Photos/ixFP4nfA2y2EiHnye2dhVePcpDspZyRFMShM3fCC.jpeg', 23, '2021-04-12 11:54:26', '2021-04-12 11:54:26'),
(412, 'public/Photos/ePeJyfWneOassya9Scig1gl5q4W7SN008AR1Ey1U.jpeg', 23, '2021-04-12 11:55:55', '2021-04-12 11:55:55'),
(413, 'public/Photos/pZv6qFKczifjGehtAddJYaDcuWtlqDJPxFnlfv6N.jpeg', 24, '2021-07-26 15:16:23', '2021-07-26 15:16:23'),
(414, 'public/Photos/CkNaD8GSTXEI5UBuFDcZXsl7ZajiS5qGU0wpqJX9.jpeg', 24, '2021-07-26 15:16:34', '2021-07-26 15:16:34'),
(415, 'public/Photos/6bLwuvI1yTSCYR3nY5eY50wXK9mZGxOer8LjE1dR.jpeg', 24, '2021-07-26 15:16:58', '2021-07-26 15:16:58'),
(416, 'public/Photos/HOinXL47TsVejtdUZYu9FXd6WVBlcXDsv8ZcDuwO.jpeg', 24, '2021-07-26 15:17:12', '2021-07-26 15:17:12'),
(417, 'public/Photos/qN4v7IbHIxnI6EcaOkb51MvjNg8LlRMLlCRBoTdk.jpeg', 24, '2021-07-26 15:17:29', '2021-07-26 15:17:29'),
(418, 'public/Photos/zQYmo8tpoOFIrxLKfSqgWogJ488XABmKresihd2F.jpeg', 24, '2021-07-26 15:17:51', '2021-07-26 15:17:51'),
(419, 'public/Photos/OGa5GJyzRRiIDXN3iMvF1mesUCM7UQLxqyvBOR8M.jpeg', 24, '2021-07-26 15:18:04', '2021-07-26 15:18:04'),
(420, 'public/Photos/l8xcWhCaGT0QeyQoiwCXbd71Hr7VX1AALHufqwW2.jpeg', 24, '2021-07-26 15:18:26', '2021-07-26 15:18:26'),
(421, 'public/Photos/LdDjXgqWlps7n27ikfL1iOUQwdYo1HuEoj96baCH.jpeg', 24, '2021-07-26 15:18:47', '2021-07-26 15:18:47'),
(422, 'public/Photos/xI5qQPmfHyvmQ7sjYyKrH2FPvrw7Vvk1FyrDhVm4.jpeg', 24, '2021-07-26 15:36:34', '2021-07-26 15:36:34');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_categories`
--

CREATE TABLE `gallery_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_categories`
--

INSERT INTO `gallery_categories` (`id`, `category_name`, `thumbnail_image`, `order`, `created_at`, `updated_at`) VALUES
(10, '10th Anuual General Meeting', 'public/category/ssbtdWX695L9IFfqS9dvZ1RjtEpAwW2zWvfY5IJv.jpeg', 2, '2020-10-11 13:04:02', '2020-11-03 12:14:14'),
(11, 'Traning program', 'public/category/N5xO5h7qmDLzh3mfF9c1lrkvY44S1jAXjM0onPFU.jpeg', 3, '2020-10-11 13:32:06', '2020-11-03 12:12:41'),
(12, 'Cleaning Campaign', 'public/category/xSj3vlarNLKmw0RHyIG20wM7H4m205H6a3wmAt0U.jpeg', 5, '2020-10-11 15:52:10', '2020-10-12 15:16:27'),
(13, 'Donation For (Gautam Buddha International Cricket Stadium)', 'public/category/KXplgUm9PNogUpOoWhW7dHe1gxUyFHX6GdAUlpCC.jpeg', 3, '2020-10-12 10:31:53', '2021-02-19 11:50:59'),
(14, 'Relief distribution', 'public/category/ErpEPMBsFam9f8ghYKYzM3Jn7QAE9BOzKTwZxBIN.jpeg', 4, '2020-10-12 15:01:52', '2020-10-12 15:15:59'),
(15, 'Blood Donation Programme', 'public/category/oiEltbeMlvXbz6EBM7oNnR6cB6t8yafrlYDmI9Qr.jpeg', 6, '2020-10-12 15:20:28', '2021-03-16 10:53:47'),
(16, 'Helping hand for Musahar communitiy (dhurmus suntali foundation)', 'public/category/3G9t2lQK4y2JFJpRYzZYcoH45OL77YmCEGG7Qnre.jpeg', 7, '2020-11-02 14:11:16', '2020-11-02 14:11:16'),
(17, 'Prize distribuition', 'public/category/yIFHL0j1PzBMDKBafDKKAjMYTP1VuXzcWQlz5Ooc.jpeg', 8, '2020-11-02 14:15:35', '2020-11-03 12:22:25'),
(18, 'Tihar Celebration', 'public/category/NPaHEejrX00xaXb6dj2xmoEiLGNvQJoJhw4wtqqq.jpeg', 9, '2020-11-02 14:30:48', '2020-11-02 15:09:59'),
(19, 'Tours And Travel Observation', 'public/category/z3MBwPcEzPi0Y1EA2YdUSLWHSgLu5PAUgNfXnZt7.jpeg', 10, '2020-11-03 11:57:21', '2020-11-03 14:04:18'),
(20, '9th Annual General Meeting', 'public/category/AbHXuyqiM7qBYd5ciqZBBTltvxUEOzqkSc44I9Oj.jpeg', 1, '2020-11-03 12:12:09', '2020-11-03 12:14:20'),
(21, 'Food and snacks distribution on the occasion of (MAHA SHIVRATRI)', 'public/category/fIzK7jr8CZahT1ztQ8n1ttbVgeKX1lKi2WgCgEbV.jpeg', 11, '2021-03-14 12:42:07', '2021-03-14 12:42:07'),
(23, 'Our 11 th Aniversary and Blood Donation Programme', 'public/category/9nZ7yF8zpMsWj663pPv0ZWZkXHr90cCAtd5NH23j.jpeg', 14, '2021-04-08 16:30:29', '2021-04-12 11:47:54'),
(24, 'Upcoming 4 Year Strategic Plan Discussion and Implementation Strategies', 'public/category/8xCG0gEX6lQzErU1PaicQBntXtUFiXzWQqefdhH9.jpeg', 14, '2021-07-26 15:15:05', '2021-07-26 15:19:18');

-- --------------------------------------------------------

--
-- Table structure for table `homepages`
--

CREATE TABLE `homepages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_button_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_button_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homepages`
--

INSERT INTO `homepages` (`id`, `title`, `description`, `cover_image`, `button_link`, `button_name`, `banner_image`, `banner_description`, `banner_button_link`, `banner_button_name`, `footer_description`, `seo_title`, `seo_description`, `seo_keyword`, `created_at`, `updated_at`) VALUES
(1, 'TOGETHER WE  ACHIEVE MORE', '<p><cite><tt><samp><big>&quot;Let&#39;s join <strong><span class=\"marker\"><kbd>together</kbd></span> </strong>today, to create a <span class=\"marker\">fabulous</span> <strong>tomorrow</strong>&quot;</big></samp></tt></cite></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>', 'public/homepage/hq82gB6Kmp4UnfAFeyiZnPrqrXQQXPExEUSSoQA3.jpeg', 'https://www.facebook.com/sukrapath/', 'Get in touch', 'public/homepage/5Qzz9ZzUcGBPEPsTplkUHUcV6BHc0cv5YmezvXsu.jpeg', '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'https://www.facebook.com/sukrapath/', 'Get in Touch', '<p><strong>Join Us On Our &quot;</strong><em><strong>Mission To Venus And Journey of Universe</strong></em><strong>&quot;</strong></p>\r\n\r\n<p>FIND US ON :&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt=\"Contact - Nigerian Association of Developmental Psychologists\" src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3SKCBcui3ykKshf_wqCfBMv1vtXkeCT1IJw&amp;usqp=CAU\" style=\"height:125px; width:233px\" /></p>', 'Sukrapath', 'Shukrapath News', 'Sukrapath Co-operative', NULL, '2021-08-23 11:08:42');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_20_100744_create_contact_cruds_table', 1),
(5, '2020_06_15_081911_create_permission_tables', 1),
(6, '2020_06_19_033758_create_testimonals_table', 1),
(7, '2020_06_19_040602_create_partners_table', 1),
(8, '2020_06_24_015304_create_gallery_categories_table', 1),
(9, '2020_06_24_053448_create_galleries_table', 1),
(10, '2020_06_24_111333_create_enquiries_table', 1),
(11, '2020_07_02_114334_create_departments_table', 1),
(12, '2020_07_23_114003_create_homepage_image_table', 1),
(13, '2020_08_07_094330_create_about_us_table', 1),
(14, '2020_08_10_061847_create_news_table', 1),
(15, '2020_08_10_170425_create_team_table', 1),
(16, '2020_08_12_120058_create_setting_migration', 1),
(17, '2020_08_12_152636_create_service_categories_table', 1),
(18, '2020_08_12_165338_create_services_table', 1),
(19, '2020_08_13_193621_create_pages_table', 1),
(20, '2020_08_14_105735_create_homepages_table', 1),
(21, '2020_08_14_121618_create_cover_images_table', 1),
(22, '2020_08_20_111538_create_about_us_table', 2),
(23, '2020_08_20_223251_create_features_table', 3),
(24, '2020_08_20_234013_create_branches_table', 4),
(25, '2020_08_21_002006_create_faqs_table', 5),
(26, '2020_08_21_003851_create_events_table', 6),
(27, '2020_08_21_190749_create_applies_table', 7),
(28, '2021_02_25_131132_create_sliders_table', 8),
(29, '2021_04_19_115123_create_calendars_table', 8),
(30, '2021_07_29_112914_add_fields_to_applies', 8);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\User', 1),
(2, 'App\\User', 2),
(2, 'App\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `news_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_paragraph` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `highlighted_news` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_paragraph` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `news_title`, `news_url`, `first_paragraph`, `cover_image`, `featured_image`, `seo_title`, `seo_description`, `seo_keyword`, `created_at`, `updated_at`, `highlighted_news`, `second_paragraph`) VALUES
(9, 'We Are Open 365 Days', 'we-are-open-365-days', '<blockquote>\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">&quot;shukrapath multipurpose co-operative limited has sucess to achive it own startum in this tough competitive market so we are here to provide many more services to our member for 365 days.&quot;</div>\r\n</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', NULL, 'public/news/oveJtXzQ7cOyuG6mnIXY4GUTXLsNbgBzwFbBQ9Fg.jpeg', 'We Are Open 365 Days', 'We Are Open 365 Days', 'We Are Open 365 Days', '2021-01-15 11:50:55', '2021-03-17 17:04:50', '<p><img alt=\"शुक्रपथ सहकारीको माघ १ गतेबाट ३६५ दिने सेवा सुरु :: Sahakari Akhabar\" src=\"https://external.fktm3-1.fna.fbcdn.net/safe_image.php?d=AQEn5jkUnFUyvFVE&amp;w=500&amp;h=261&amp;url=http%3A%2F%2Fwww.sahakariakhabar.com%2Fuploads%2Fnews%2Ffull%2F1610464911_shukrapath+01.jpg&amp;cfs=1&amp;ext=jpg&amp;_nc_cb=1&amp;_nc_hash=AQF7rNkyorTlkbKh\" style=\"height:261px; width:500px\" /></p>', '<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>Be a part of our member or a shareholder to grab your services for 365 days. ThankYou</strong></div>'),
(11, 'Loan on 14.75%', 'loan-on-1475', '<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>&quot;Shukrapath multipurpose co-operative limited&quot;</strong> provides only 14.75% rate of interest on each account. We have many more loan facilities at lower interest rate so hurry up fulfill your own dream at only 14.75%</div>', NULL, 'public/news/9QgAeEpZTMIZO1i67QUCzXWOw36irwsR8xpbYH9t.jpeg', NULL, NULL, NULL, '2021-02-18 10:56:57', '2021-03-09 15:39:49', '<p>Make a way for your dream with &quot;<strong>shukrapath multipurpose co-operative limited&quot;.<code>&nbsp;</code></strong><code>Cometitive Interest Rate at only 14.75%</code></p>', NULL),
(12, 'A message to members on (covid-19)', 'a-message-to-members-on-covid-19', '<p>As we traverse these turbulent times among the global Coronavirus (COVID-19) crisis, our hearts and prayers go out to those affected. This is an unsettling time for everyone. It impacts almost every aspect of our personal and professional lives. Each of us is grappling with how to contain the resulting risks on our employees and businesses. As our valued members, we make it our top priority to communicate with you to offer our best support.</p>\r\n\r\n<p>Allow me to share with you how we are leading through this pandemic. As a best co-operative with&nbsp;over more than 200 employees across 8 branches of valley and out of valley, we play a pivotal role in restricting the spread of COVID-19 within our communities. Once the outbreak sparked, we activated our Group and local crisis management teams to closely monitor the evolving situation and make timely critical decisions that are able to contain the situation.</p>\r\n\r\n<p>For us, this meant prioritising the health and safety of our employees. In doing so, we protect them and our wider communities while meeting members needs in new and innovative ways.&nbsp;In accordance with the guidance and actions of relevant authorities, we imposed travel restrictions to COVID-19 hotspots, increased our cleaning frequency, issued regular hygiene reminders, began screening temperatures of employees and visitors, limited event participation, encouraged virtual meetings and restricted contact overall.&nbsp;</p>\r\n\r\n<p><img alt=\"8,498 Stay Home Stay Safe Illustrations &amp;amp; Clip Art - iStock\" src=\"https://media.istockphoto.com/vectors/the-word-stay-home-save-you-by-coronavirus-vector-banner-with-the-vector-id1215677340?k=6&amp;m=1215677340&amp;s=612x612&amp;w=0&amp;h=5Y9fHZzjlW-FnlNwaryX5xHnloSqun1cOoVycBBovl8=\" style=\"height:89px; margin:0px; width:301px\" /></p>\r\n\r\n<p><strong>Contact for inquiry</strong></p>\r\n\r\n<p><img alt=\"Image result for contact cartoon image\" src=\"data:image/jpeg;base64,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\" style=\"height:126px; margin-left:-33px; margin-right:-34px; width:235px\" /></p>', 'public/news/vSFxnW2FCh1szy5a3GbMQBVhOWvJ8gFVPnO26L6H.jpeg', 'public/news/HtReWcqmE2X5Cj6OIIBnosTHBEH7HkijwW56ZMCg.jpeg', 'A message to members on (covid-19)', 'A message to members on (covid-19)', 'A message to members on (covid-19)', '2021-05-26 11:44:09', '2021-07-30 11:19:46', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>SN</strong></td>\r\n			<td><strong>OFFICE</strong></td>\r\n			<td><strong>CONTACT PERSON</strong></td>\r\n			<td><strong>MOBILE NO</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>management</td>\r\n			<td>Bhabanath ghorasaini</td>\r\n			<td>9801163680</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>management</td>\r\n			<td>Laba raj regmi</td>\r\n			<td>9801163862</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>Head office,newroad</td>\r\n			<td>Ramesh joshi</td>\r\n			<td>9801164801</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>service center,kalimati</td>\r\n			<td>Rashmi shrestha</td>\r\n			<td>9801163679</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>service center,gongabu</td>\r\n			<td>Shailaja wagle</td>\r\n			<td>9801163805</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>service center,chabahil</td>\r\n			<td>Indira kumari singh</td>\r\n			<td>9801164802</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>service center,tinkune</td>\r\n			<td>Nabin giri</td>\r\n			<td>9801164852</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>service center,lagankhel</td>\r\n			<td>Bhimsen khatri</td>\r\n			<td>9801163804</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>service center,hattigauda</td>\r\n			<td>Ramesh Acharya</td>\r\n			<td>9801164014</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>service center,bhaktapur</td>\r\n			<td>Dipak pandey</td>\r\n			<td>9801164817</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_title`, `page_url`, `featured_image`, `description`, `seo_title`, `seo_description`, `seo_keyword`, `created_at`, `updated_at`) VALUES
(1, 'privacy policy', 'privacy-policy', 'public/pages/CFKTyeD04wrnmaWaIuz8JtM8VK9ppoRteN206vFj.jpeg', '<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><code><span class=\"marker\">&quot;This privacy notice sets out details of the information we collect about you, how we may use it, how we ensure it&rsquo;s kept secure, who we share it with, and what rights you may have in respect of that information&quot;.</span></code></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1) We mainly use your personal information to provide our services to you, to meet our legal obligations, and to help improve our interests.</p>\r\n\r\n<p>2) We only want to hold as much personal information as we need to do the above.</p>\r\n\r\n<p>3) We want our personal information relationship to be reciprocal where we both benefit, not an exploitative one.</p>\r\n\r\n<p>4)Where we share your data, we only do so with organisations who have a right to see it and who will use it fairly.</p>\r\n\r\n<p>5)We take security seriously.</p>\r\n\r\n<p>6)You can contact us at anytime about anything relating to this notice or the information we hold about you.</p>\r\n\r\n<p><img alt=\"Image result for corporate image\" src=\"https://www.europeanceo.com/wp-content/uploads/2014/01/social-media-2.jpg\" style=\"height:150px; width:200px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><code>&quot;Where we need your information to do what we&rsquo;ve promised&quot;</code></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Our main use of your information is where it&rsquo;s necessary to supply you with our products and services, or where it&#39;s necessary as part of the management of our Membership programme.</p>\r\n\r\n<p>For example, we&rsquo;d need your name, address and payment details when you join as a Member so we can:</p>\r\n\r\n<p>1) register your share in the&nbsp;Co-op</p>\r\n\r\n<p>2) send your Membership card</p>', 'privacy policy (sukrapath multipurpose co-operative limited)', 'privacy policy (sukrapath multipurpose co-operative limited)', 'privacy policy (sukrapath multipurpose co-operative limited)', '2020-08-20 08:59:53', '2021-02-25 11:34:44'),
(2, 'terms of service', 'terms-of-service', 'public/pages/yYd6rby0PEAUk1n5RN1WDnTqBEHsaAdXkY2b7fT2.png', '<ul style=\"list-style-type:square\">\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>Deposits :</strong></div>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot; The co-operative will credit money paid into your Account in a currency we accept and in an amount equivalent to the cash deposit. We may charge you for certain methods of payments at rates which we will inform to you. The date the money is received as payment into your Account will depend on current market practice or as per our normal banking practice. &quot;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot; You represent and warrant that you have full legal title to such deposit and accept full responsibility for the authenticity, validity and correctness of signatures, endorsements and particulars appearing on the relevant Payment Instrument. &quot;</p>\r\n\r\n<p><img alt=\"Google Terms of Service – Privacy &amp; Terms – Google\" src=\"data:image/jpeg;base64,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\" style=\"height:169px; width:300px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://scontent.xx.fbcdn.net/v/t1.15752-0/p206x206/142558122_133478488594401_1955215627135702150_n.png?_nc_cat=110&amp;ccb=2&amp;_nc_sid=58c789&amp;_nc_ohc=k9HjAfLFtDwAX-smSJh&amp;_nc_ad=z-m&amp;_nc_cid=0&amp;_nc_ht=scontent.xx&amp;_nc_tp=30&amp;oh=fc053b7ff135b31f55d612bbcfd043da&amp;oe=603706F4\" /></p>\r\n\r\n<ul>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>Withdrawals and payments:</strong></div>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><big><code><span class=\"marker\">We will only allow a Withdrawal from an Account where:</span></code></big></p>\r\n\r\n<p>(a) If there are sufficient available funds in the Account for the Withdrawl (unless we decide, in our discretion, to allow an overdraft);</p>\r\n\r\n<p>(b) We may set limits on transferring or withdrawl funds (for example, on the amount to be transferred or on how often you use the Service)</p>\r\n\r\n<p>(c)&nbsp;We may not allow you to withdraw money from your Account if its closed or suspended.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'terms of service', 'terms of service', 'terms of service', '2020-08-20 09:00:06', '2021-02-28 13:52:23');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `title`, `description`, `order`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Disctrict Co-operative Union Limited', NULL, 1, 'public/partner/1XQtLqjJnbXAgS7UzS99XUEsdBKNMSfgnx9LB25l.jpeg', '2020-08-20 13:17:02', '2020-10-11 14:05:24'),
(2, 'National Co-operative Bank Limited', NULL, 2, 'public/partner/uGyr4HuW3mtztlNFTknqWFIsngGWKWEji5efkgiz.jpeg', '2020-08-20 13:17:14', '2020-10-11 14:06:20'),
(4, 'Nepal co-operative Federation of Nepal', NULL, 1, 'public/partner/sM3OO2d0Ju70pYhdv9liWEDrTIXBlcJxDtkDGSuy.jpeg', '2020-10-11 14:03:26', '2020-10-11 14:03:26'),
(5, 'KDMCU', NULL, 5, 'public/partner/e87pou9jBzUpf7d0woheXJT6cPT3WjxvGZ0D4eNs.jpeg', '2020-10-11 14:06:52', '2020-10-11 14:06:52'),
(6, 'National Co-operative Bank Limited', NULL, 5, 'public/partner/hNbFjT6s6Dv04BfM0tR3JhSIzFKugjr2NIlQU9lm.jpeg', '2020-10-11 14:07:14', '2020-10-11 14:07:14');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'editor', 'web', '2020-08-20 06:42:00', '2020-08-20 06:42:00'),
(2, 'admin', 'web', '2020-08-20 06:42:20', '2020-08-20 06:42:20');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `third_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_categories_id` bigint(20) UNSIGNED NOT NULL,
  `order` int(11) NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `slug`, `first_description`, `second_description`, `third_description`, `cover_image`, `featured_image`, `service_categories_id`, `order`, `seo_title`, `seo_description`, `seo_keyword`, `created_at`, `updated_at`) VALUES
(1, 'Normal Saving Deposit', 'normal-saving-deposit', '<p><strong>&quot; Normal saving A</strong><strong>ccount &quot;</strong> is a saving account which is operated for unspecified period of time and where customers are able to make deposit and withdrawal from any of the branches of the bank.</p>', '<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">BENEFITS ;</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Free cheque Book</li>\r\n	<li>Passbook is available without any deduction charges</li>\r\n	<li>Account statement available</li>\r\n	<li>interest bearing account which yield high retrun on deposit</li>\r\n	<li>Also mobile banking facilities available in this account</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">FEATURES ;</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Minimum Balance to be maintained NPR.500 (five hundres rupees only)</li>\r\n	<li>Mobile banking facilities</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '<ul>\r\n	<li>Completely filled Personal Account Opening Form</li>\r\n	<li>Citizenship photocopy</li>\r\n	<li>Two&nbsp;passport size photograph</li>\r\n	<li>To be a part of our shareholder (minimum balance starts with rs.1000 (one thousand rupees only) )</li>\r\n</ul>', 'public/project/OCZ0ttGIC00Af3MkBJrPLfzDNE8AFghOXr4JQlIV.jpeg', 'public/project/oa8zejc4NflxpkY9dNPhwZdSii4WWmOmjq7P85Ki.jpeg', 2, 4, 'Normal saving deposit (sukrapath multipurpose co-operative limited)', NULL, NULL, '2020-08-20 13:46:27', '2020-10-07 14:35:18'),
(2, 'Shukrapath Special Saving', 'shukrapath-special-saving', '<p>&quot;<strong>Sukrapath Special Saving account</strong> is desgined to satisfy the need of different customer groups having expectations of the wide range of facilities, our main target of this scheme is to provide easier transaction with more facilities for our customer.&quot; Also unspecified period of time and where customers are able to make deposit and withdrawal from any of the branches of the bank.</p>', '<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">BENEFIT ;</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Free passbook without any deduction charge</li>\r\n	<li>Free cheque book</li>\r\n	<li>High interest rate</li>\r\n	<li>Account statement available</li>\r\n	<li>Also mobile banking facilities available in this account</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">FEATURES ;</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Minimum Balance to be maintained NPR.5000 (five thousand rupees only)</li>\r\n	<li>Mobile banking facilities</li>\r\n</ul>', '<ul>\r\n	<li>Completely filled Personal Account Opening Form</li>\r\n	<li>Citizenship photocopy</li>\r\n	<li>Two&nbsp;passport size photograph</li>\r\n	<li>To be a part of our shareholder (minimum balance starts with rs.1000 (one thousand rupees only) )</li>\r\n</ul>', 'public/project/COsJkmJvsX826TgR91HKY3BCtnOY6UgUDHqv413Q.jpeg', 'public/project/ZUTJaqcZxgrfM8tZjx4AFTIXGHf0yoHX259zOwqq.jpeg', 2, 4, 'special saving (sukrapath multipurpose co-operative limited)', NULL, NULL, '2020-08-20 13:47:38', '2020-10-06 10:30:29'),
(3, 'Shukrapath Super Saving', 'shukrapath-super-saving', '<p>The <strong>Super Saving Account&nbsp;</strong>is the upgraded version of regular saving account.<strong> Super Savings Account</strong>&nbsp;pay interest but keep your funds easy to access, they&rsquo;re a good option for parking cash you&rsquo;ll want in the short-term or to cover an emergency.&nbsp;The amount you can withdraw/deposit&nbsp;from a <strong>Super&nbsp;</strong> <strong>Savings Account</strong> is generally unlimited with the purpose of high interest.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">BENEFITS ;</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Interest bearing account which yeild high return on deposit</li>\r\n	<li>Account statement availabe</li>\r\n	<li>Free passbook without any deduction charge</li>\r\n	<li>Free chequebook facility</li>\r\n	<li>Quarterly payment of interest&nbsp;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">FEATURES ;</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Minimum Balance to be maintained NPR.10000 (Ten&nbsp;thousand rupees only)</li>\r\n	<li>Also mobile banking facilities are available on this account</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', '<ul>\r\n	<li>Completely filled Personal Account Opening Form</li>\r\n	<li>Citizenship photocopy</li>\r\n	<li>Two&nbsp;passport size photograph</li>\r\n	<li>To be a part of our shareholder (minimum balance starts with rs.1000 (one thousand rupees only) )</li>\r\n</ul>', 'public/project/2EdZHYUIzUyMhQqr0mUEsXL8buQf7Sun9NgCyx8U.jpeg', 'public/project/3VfPHKQurdC2uQIWPBlT8cbCSaD2gt4bxk2MS9Y4.jpeg', 2, 4, 'super saving (sukrapath multipurpose co-operative limited)', NULL, NULL, '2020-08-20 13:48:30', '2020-10-06 10:21:18'),
(8, 'Shukrapath Business Saving', 'shukrapath-business-saving', '<p>The<strong>&nbsp;business&nbsp;Savings Account </strong>is a transactional interest bearing account where in a deposit is placed with the Bank for an unspecified period of time and the depositor can withdraw or transfer the funds whenever required through different means.The <strong>business</strong>&nbsp;<strong>Savings Account </strong>will help account holders earn attractive returns on idle money.</p>', '<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">BENEFITS;</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>High interest rate</li>\r\n	<li>Free passbook without any deduction charge</li>\r\n	<li>Free cheque book</li>\r\n	<li>Account statement available</li>\r\n	<li>Also mobile banking facilities are available in this account</li>\r\n	<li>Quarterly payment of interest&nbsp;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">FEATURES ;</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Minimum Balance to be maintained NPR.50000 (Fifty&nbsp;thousand rupees only)</li>\r\n	<li>Mobile banking facilities</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', '<ul>\r\n	<li>Completely filled Personal Account Opening Form</li>\r\n	<li>Citizenship photocopy</li>\r\n	<li>Two&nbsp;passport size photograph</li>\r\n	<li>To be a part of our shareholder (minimum balance starts with rs.1000 (One thousand rupees only) )</li>\r\n</ul>', 'public/project/FabWzLh9NHZXDUM3UcFuVLKmotlYvQvPkwBgg0lW.jpeg', 'public/project/kEpM7vA10FR21TESL0RgeiAkJi5TE7K6tU0jgZ7q.jpeg', 2, 3, NULL, NULL, NULL, '2020-09-08 21:09:40', '2020-10-06 10:30:04'),
(15, 'Business Loan', 'business-loan', '<p>Looking to get ahead in your career with your<strong> own business</strong>? Are you thinking of starting a business or growing an existing one?&nbsp; SUKRAPATH offer competitive Interest rates for our loan facilities and the interest will be determined based on assessment of your business profile. A&nbsp;<strong>business loan</strong>&nbsp;is a&nbsp;<strong>loan</strong>&nbsp;specifically intended for&nbsp;<strong>business</strong>&nbsp;purposes.</p>', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Competitive premium rate.</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Fast approval process.</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">we are providing business loan in only only 14.75<strong>% of interest</strong></div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Minimal paper work</div>\r\n	</li>\r\n</ul>', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Citizenship photocopy</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Amount should be hold 20% on your saving account</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">2 piece of passport size photo</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">PAN and latest tax paid receipt.</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Loan application.</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">License to conduct the business, where applicable.</div>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>For Nominee Requirement ;</strong></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Citizenship photocopy</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">&nbsp;passport size photo</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Signature of nominee</div>\r\n	</li>\r\n</ul>', 'public/project/O8mB2CtnCsWTMergZw7K0xP5vj3MrbNjsAjqIXAz.jpeg', 'public/project/HP9MzNLIyQW2w008R2WAU8x37Wm6DKaFivgAqbBu.jpeg', 3, 6, 'Business Loan', 'Business Loan', 'Business Loan', '2020-09-08 21:12:39', '2021-02-02 11:16:32'),
(16, 'Personal Loan', 'personal-loan', '<p>A <strong>&quot; personal loan &quot; </strong>is a loan taken by an individual to fund any personal expense like, for example a wedding,to make renovations to the home&nbsp;for a vacation or even a personal use. Unlike many other kinds of loan, there is no restriction on how the borrowed amount is finally used.&nbsp;&nbsp;<strong>Personal Loan </strong>is a short term loan where customer can use bit amount of money in certain time of period&nbsp;.Turn your dreams into reality with a <strong>Personal Loan</strong> from <strong>Sukrapath.</strong></p>', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">We provide only 14.75% of interest rate</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Quick disbursal</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Flexible <strong>Loan</strong> Amount.</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">flexible end use</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Minimal Documentation</div>\r\n	</li>\r\n</ul>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>&nbsp;</h2>', '<h3 style=\"color:#aaaaaa; font-style:italic\">&nbsp;</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Completely filled Personal Account Opening Form</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Amount should be hold 20% on your saving account</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Citizenship photocopy</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Two&nbsp;passport size photograph</div>\r\n	</li>\r\n</ul>', 'public/project/hIU1Q0KDiDTEWmtZpYViz1sEP52lk7HzQOsGFmw5.jpeg', 'public/project/RQMcZylUBjUspDRDRZwMF79AXWO0BlYjmypojMjB.jpeg', 3, 2, NULL, NULL, NULL, '2020-09-08 21:12:47', '2021-02-02 11:13:54'),
(17, 'Home Loan', 'home-loan', '<p>Our affordable and flexible home loans are designed to take you closer to your dream home. Our Home Loan affordability calculator is based on your requirements.&nbsp;Fulfil your dream of owning a home with the <strong>&quot;Sukrapath&nbsp;Home Loan</strong>&quot;</p>', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Attractive interest rate &mdash; Make your home loan affordable and easier on your pocket every month with attractive home loan interest rates.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>Tips to keep in mind while applying for a home loan</strong></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>If you apply for a high amount, the co-operative may not approve your loan. Also, once you know the loan amount you are eligible for you can plan for the rest of the down payment accordingly.</li>\r\n	<li>&nbsp;Be sure about how much you can afford through Equated Monthly Instalments (EMIs) because a home loan is a long term commitment.&nbsp;</li>\r\n</ul>', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Completely filled application form</li>\r\n	<li>Citizenship photocopy</li>\r\n	<li>Two&nbsp;passport size photograph</li>\r\n	<li>Complusary make your trustable person&nbsp;as a nominee</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th><strong>Do&rsquo;s</strong></th>\r\n			<th><strong>Don&rsquo;ts</strong></th>\r\n		</tr>\r\n		<tr>\r\n			<td><img src=\"https://www.axisbank.com/images/default-source/loans/a.png\" />&nbsp;&nbsp; Do your research about the home-property price, builder&rsquo;s background, clearances for the project, etc. Also do your research about the home loan - interest rate, processing charges, repayment schedule, etc</td>\r\n			<td><img src=\"https://www.axisbank.com/images/default-source/loans/b.png\" />&nbsp;&nbsp; Don&rsquo;t apply for loans on multiple aggregator websites as it indicates you are loan hungry and may reduce the chances of your application being approved</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img src=\"https://www.axisbank.com/images/default-source/loans/a.png\" />&nbsp;&nbsp; Know the amount you have to pay such as down payment amount, processing charges, stamp duty, registration fees and make provision for the same</td>\r\n			<td><img src=\"https://www.axisbank.com/images/default-source/loans/b.png\" />&nbsp;&nbsp; Don&rsquo;t take too many loans before you apply for a home loan-such as a personal loan or auto loan. As home loan amounts are big-ticket loans this will impact your eligibility.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img src=\"https://www.axisbank.com/images/default-source/loans/a.png\" />&nbsp;&nbsp; Ensure all documents are in place &ndash; salary slips, Income Tax Returns, property agreement, and registration, etc</td>\r\n			<td><img src=\"https://www.axisbank.com/images/default-source/loans/b.png\" />&nbsp; Don&rsquo;t delay your loan repayments as this will impact your credit score negatively</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img src=\"https://www.axisbank.com/images/default-source/loans/a.png\" />&nbsp;&nbsp; Take time to improve your credit history, if required before you apply for a home loan as there are chances that the Co-operative may offer you better terms and conditions</td>\r\n			<td><img src=\"https://www.axisbank.com/images/default-source/loans/b.png\" />&nbsp;&nbsp; Don&rsquo;t take a huge loan as you may find it difficult to repay. Affordability is key when it comes to home loan</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'public/project/JmbiIzMssT6YQQsqE2A0hiyE6nEvohjck1rbDQfn.jpeg', 'public/project/U9EhtZx4ntS8Qvy6KqTAVcWOAhfgssZYYDQRHBoc.jpeg', 3, 3, NULL, NULL, NULL, '2020-09-08 21:12:54', '2020-10-15 16:14:12'),
(18, 'Hire purchase loan', 'hire-purchase-loan', '<p>A <strong>&quot; hire purchase loan &quot; </strong> known as an installment plan, it is an arrangement whereby a customer agrees to a contract to acquire an asset by paying an initial installment and repays the balance of the price of the asset plus interest over a period of time.</p>', '<ul>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">We provide only 14.75<strong>% of interest rate</strong></div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Quick disbursal</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Flexible <strong>Loan</strong> <strong>Amount.</strong></div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">flexible end use</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Minimal Documentation</div>\r\n	</li>\r\n</ul>', '<ul>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><big>50% down payment on your disbursal amount </big></div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Completely filled Personal Account Opening Form</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Amount should be hold 20% on your saving account</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Citizenship photocopy</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Two&nbsp;passport size photograph</div>\r\n	</li>\r\n</ul>', 'public/project/FkrGj5ng4rjJMNNvGPKgWhJSiMYtCVOPz8LQHCZr.jpeg', 'public/project/Njeu5yPUbhZo8UjXXg2Wpl7Jz94qXRl9iYGAuvSH.jpeg', 3, 6, NULL, NULL, NULL, '2020-09-08 21:13:03', '2021-02-02 11:18:34'),
(20, 'business plus saving', 'business-plus-saving', '<p><strong>&quot; Business plus saving &quot; </strong> account is an investment account where money can deposit for a plus profit without having a particular length of time. <strong>Business plus saving </strong>account is specially for those who want to invest high and want to earn high rate of interest.</p>', '<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">BENEFITS :</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>High interest rate</li>\r\n	<li>Free passbook without any deduction charge</li>\r\n	<li>Free cheque book</li>\r\n	<li>Account statement available</li>\r\n	<li>Also mobile banking facilities are available</li>\r\n	<li>Quarterly payment of interest&nbsp;</li>\r\n</ul>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">FEATURES :</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Minimum Balance to be maintained NPR.500000 (Ten lakh rupees only)</li>\r\n	<li>Mobile banking facilities</li>\r\n</ul>', '<ul>\r\n	<li>Completely filled Personal Account Opening Form</li>\r\n	<li>Citizenship photocopy</li>\r\n	<li>Two copy of passport size photograph</li>\r\n	<li>To be a part of our shareholder (minimum balance starts with rs.1000 (One thousand rupees only) )</li>\r\n</ul>', 'public/project/Wc8WsYXlgPigXBqJ34kvp7LOuunob3esazfoa6rh.jpeg', 'public/project/JmnbuaNiMBLuoy1XrNYjVQvyNWLfe6MjTxPjbHo5.jpeg', 2, 11, 'shukrapath business plus saving', 'shukrapath business plus saving', 'shukrapath business plus saving', '2020-10-06 10:30:18', '2021-06-25 13:47:20'),
(21, 'Sukrapath Micro Loan', 'sukrapath-micro-loan', '<p><strong>&quot; Sukrapath Micro loans&nbsp;&quot;</strong> are small <strong>loans</strong> that are issued by individuals rather than other loans. Microloans are available through certain nonprofit, community-based organizations that are experienced in lending and business management assistance.&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Competitive premium rate.</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Fast approval process.</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">We provide only 14.75% of interest rate</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Minimal paper work</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">flexible end use</div>\r\n	</li>\r\n</ul>', '<h3 style=\"color:#aaaaaa; font-style:italic\">&nbsp;</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Citizenship photocopy</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Amount should be hold 20% on your saving account</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">2 piece of passport size photo</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">PAN and latest tax paid receipt.</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Loan application.</div>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', 'public/project/3bpjDK6L9Ecbqp6iLmiNP45qvKY8zMAUmxi60D88.jpeg', 'public/project/NMfYuQ1mhgU2xeo4TsmpejjzF7ptnas6o9iYAxTp.jpeg', 3, 6, NULL, NULL, NULL, '2020-10-13 10:54:20', '2021-02-02 11:14:22'),
(22, 'Periodic Deposit Against Loan', 'periodic-deposit-against-loan', '<p><strong>&quot; Periodic Deposit Against Loan&nbsp;&quot;</strong> is based on your periodic saving account which held <strong>90% of your saving amount&nbsp; you can proceed for loans.&nbsp; </strong> It is especially designed to help those who might not find funding in the private sector, such as women, low-income, veteran and minority entrepreneurs. The program also provides support in marketing and management as well as technical assistance for microloan borrowers and potential borrowers.</p>', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">We provide only 14.75<strong>% of interest rate</strong></div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Quick disbursal</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Flexible <strong>Loan</strong> <strong>Amount.</strong></div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Minimal Documentation</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Based on your periodic deposit amount</div>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Completely filled Personal Account Opening Form</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Amount should be hold 20% on your saving account</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Citizenship photocopy</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Two&nbsp;passport size photograph</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Nominee Required</div>\r\n	</li>\r\n</ul>', NULL, 'public/project/hSgMtm2GgXO4azfxId9DDGR5EnYunJ9lt5cAZy3k.jpeg', 3, 6, NULL, NULL, NULL, '2020-10-13 10:56:28', '2021-03-17 14:44:01'),
(23, 'Industrial Loan', 'industrial-loan', '<p>The purpose of the<strong>&nbsp;&quot; Industrial loan&nbsp;&quot;</strong> Program is to improve, develop, or finance business, industry, and employment and improve the economic and environmental climate in rural communities. This purpose is achieved by bolstering the existing private credit structure through the guarantee of quality loans which will provide lasting community benefits.</p>', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Competitive premium rate.</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Fast approval process.</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">we are providing industrial loan in only only 14.75<strong>% of interest</strong></div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Minimal paper work</div>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Purpose:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">To finance the Fixed Assets for establishment, expansion or diversification of the Industry.</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">To finance Working Capital need for expansion of Industry or for newly established Industry.</div>\r\n	</li>\r\n</ul>', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Citizenship photocopy</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Amount should be hold 20% on your saving account</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">2 piece of passport size photo</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">PAN and latest tax paid receipt.</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Loan application.</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">License to conduct the business, where applicable.</div>\r\n	</li>\r\n</ul>', 'public/project/jZpqjq9k3nAFaxh8GkcfDFQKngDm412MisUlL37N.jpeg', 'public/project/9tqTutOtCOkxeBEcIkbIAZFlQJUmwNNzlztdn0Oy.jpeg', 3, 6, NULL, NULL, NULL, '2020-10-13 10:59:19', '2021-02-02 11:52:14'),
(24, 'Sahuliyat Loan', 'sahuliyat-loan', '<p><strong>&quot; Sahuliyat Loan &quot;</strong> is especially desgine for easy, safe and fast approvial proceed loan for our member. In other word sahuliyat loan is<strong> OD LOAN (OVERDRAFET) </strong>.</p>\r\n\r\n<p>Overdraft is a financial instrument in which the money can still be withdrawn from the current or savings account, even if the account balance goes below zero. It is a type of extension of monetary limit offered by Co-operative and that money is said to be &lsquo;overdrawn&rsquo;. An authorized overdraft limit is assigned for each customer depending on their relationship with the Co-operative. The customer can withdraw money up till the assigned limit.Co-operative do charge interest rate on the money withdrawn in form of overdraft.</p>', '<ul>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Customers are required to pay interest only on the utilised amount with the freedom to repay the amount anytime without pre-closure charges.</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Competitive premium rate.</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Fast approval process.</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">We provide only 14.75<strong>% of interest rate</strong></div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Minimal paper work</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">flexible end use</div>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', '<ul>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">The facility is offered at minimal documentation and easy-repay <strong>feature</strong>.</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Citizenship photocopy</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">&nbsp;passport size photograph</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Loan application.</div>\r\n	</li>\r\n</ul>', 'public/project/NHKIlw3dBR0LILAvjDxSSbT4hblagdQShplr5RNb.jpeg', 'public/project/MuUvpZMYWpLkdL8BBBBhVZ2j2gDo1cGlz6RdrDUA.jpeg', 3, 6, 'sukrapath overdraft loan (sahuliyat loan)', 'sukrapath overdraft loan (sahuliyat loan)', NULL, '2020-10-13 10:59:42', '2021-02-02 11:14:42'),
(25, 'Foriegn Employement Loan', 'foriegn-employement-loan', '<p>For meet the needs of persons who are seeking / have secured<strong> &quot; foreign employment &quot;</strong>. The growing number of Nepalese going abroad for foreign employment, so our intension is to provide more facilities and be a helping hand for such persons and their family.</p>', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Easy repayment plan matching with the income of the client</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Personalized service</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Quick processing and decision shall be obtained</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Easy documentation</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">We provide only 14.75% of interest rate</div>\r\n	</li>\r\n</ul>', '<ul>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Valid<strong> visa </strong>and<strong> passport</strong> photocopy to be obtained</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Citizenship photocopy</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Amount should be hold 20% on your saving account</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">2 piece of passport size photo</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Loan application.</div>\r\n	</li>\r\n</ul>', 'public/project/ci7bmKucLXrIToDFpVCbwORLXWCiqCN0zZjH0ucL.jpeg', 'public/project/YMdtk0TUgtjWZoyVZ9bnca5EPKeJwZk7S9H8ljDB.jpeg', 3, 6, NULL, NULL, NULL, '2020-10-13 11:02:25', '2021-02-02 11:51:35'),
(26, 'Sukrapath Uddhamshil Karja', 'sukrapath-uddhamshil-karja', '<p><strong>&quot; Sukrapath Uddhamshil Karja &quot; </strong>is espicially for those who are seeking to promote small enterprises, Uddhamshil Karja has been customized to extend credit facilities to promote small enterprises operated or small industry.</p>\r\n\r\n<h2>&nbsp;</h2>', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Competitive premium rate.</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Fast approval process.</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">We provide only 14.75% of interest rate</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Minimal paper work</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">flexible end use</div>\r\n	</li>\r\n</ul>', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Citizenship photocopy</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Amount should be hold 20% on your saving account</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">2 piece of passport size photo</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">PAN and latest tax paid receipt.</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Loan application.</div>\r\n	</li>\r\n</ul>', 'public/project/S1E9mtfogIHoMdzF3bs4RI9yvXHLrggyKDSEhzMK.jpeg', 'public/project/7c4BtqWmyCSDZZMww9HjoO0yfAa6vFmhJpeT28vO.jpeg', 3, 6, NULL, NULL, NULL, '2020-10-13 11:02:58', '2021-02-02 11:51:12'),
(27, 'Group Guarantee Loan', 'group-guarantee-loan', '<p><strong>&quot; Group Guarantee Loan &quot;&nbsp;</strong> product is designed for those clients who come together, are trained, guarantee each other so as to be able to access credit facilities as individuals.</p>', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Competitive premium rate.</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Fast approval process.</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">We provide only 14.75% of interest rate</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Minimal paper work</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">flexible end use</div>\r\n	</li>\r\n</ul>', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Citizenship photocopy</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Amount should be hold 20% on your saving account</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">2 piece of passport size photo</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">PAN and latest tax paid receipt.</div>\r\n	</li>\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Loan application.</div>\r\n	</li>\r\n</ul>', 'public/project/u2txdsfykP9DzcumrAMO0hELbsBIDpZwRLE77zhS.jpeg', 'public/project/Jyzv4Bej5LJlacQ69u6C8UBYxUQgJDpnH3It3MNz.jpeg', 3, 11, 'group guarantee loan', 'group guarantee loan', 'group guarantee loan', '2020-10-13 11:20:28', '2021-02-02 11:15:36'),
(30, '1 YEAR FIXED DEPOSIT', '1-year-fixed-deposit', '<p><strong>One</strong>-<strong>year term deposit</strong> is a cash investment account that pays a <strong>fixed</strong> rate of interest on a principal sum over a 12-month period. And while the interest rate on a <strong>term deposit</strong> is <strong>fixed</strong>, the rate of return on your <strong>one</strong>-<strong>year term deposit</strong> will be dependent on a few variables.</p>\r\n\r\n<p><img alt=\"5 effective home deposit saving strategies that work | Pepper Money\" src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTjO4fYW-oobfmDQCPmdm6zKrBJFgD-4f1iJQ&amp;usqp=CAU\" style=\"height:172px; width:326px\" /></p>\r\n\r\n<p>&nbsp;</p>', '<ul>\r\n	<li>Interest income monthly, quarterly or annually</li>\r\n	<li>We have outstanding rate of interest in 1 year fixed deposit</li>\r\n	<li>Fixed deposit certiicate available</li>\r\n	<li>Guaranteed Returns</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Completely filled fixed Account Opening Form</li>\r\n	<li>Citizenship photocopy</li>\r\n	<li>passport size of&nbsp; photograph</li>\r\n</ul>', 'public/project/heS4Umm1UjhADuK98qqq4fXJeqdQegsGrW0m3cPx.jpeg', 'public/project/RolgHMY9xEdTI093eB93VuK7JuKe6oMSrRualVo5.jpeg', 4, 1, NULL, NULL, NULL, '2020-10-14 13:42:44', '2020-10-21 16:38:38'),
(31, '2 YEAR FIXED DEPOSIT', '2-year-fixed-deposit', '<p><strong>Two</strong>-<strong>year term deposit</strong> is a cash investment account that pays a <strong>fixed</strong> rate of interest on a principal sum over a 24-month period. And while the interest rate on a <strong>term deposit</strong> is <strong>fixed</strong>, the rate of return on your <strong>two</strong>-<strong>year term deposit</strong> will be dependent on a few variables.</p>', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Interest income monthly, quarterly or annually</li>\r\n	<li>Fixed deposit certiicate available</li>\r\n	<li>Guaranteed Returns</li>\r\n</ul>\r\n\r\n<p><img alt=\"Landbay reduces Special Edition two-year rates | BestAdvice\" src=\"data:image/jpeg;base64,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\" style=\"height:180px; width:270px\" /></p>', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Completely filled fixed Account Opening Form</li>\r\n	<li>Citizenship photocopy</li>\r\n	<li>passport size of&nbsp; photograph</li>\r\n</ul>', 'public/project/33xSqclCI1CTuoO6wmF9UbFmoeoqGorHR2niZypG.jpeg', 'public/project/lwWrjzPaqpuq10sCwoF16z4kFVzbtJlSX1vfex1b.jpeg', 4, 2, NULL, NULL, NULL, '2020-10-14 13:42:58', '2020-10-21 16:39:13');
INSERT INTO `services` (`id`, `title`, `slug`, `first_description`, `second_description`, `third_description`, `cover_image`, `featured_image`, `service_categories_id`, `order`, `seo_title`, `seo_description`, `seo_keyword`, `created_at`, `updated_at`) VALUES
(32, '3 YEAR FIXED DEPOSIT', '3-year-fixed-deposit', '<p><strong>Three</strong>-<strong>year term deposit</strong> is a cash investment account that pays a <strong>fixed</strong> rate of interest on a principal sum over a 36-month period. And while the interest rate on a <strong>term deposit</strong> is <strong>fixed</strong>, the rate of return on your <strong>three</strong>-<strong>year term deposit</strong> will be dependent on a few variables.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"saving deposit, Rendal Sahakari Bank Ltd.\" src=\"data:image/jpeg;base64,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\" style=\"height:109px; width:397px\" /></p>', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Interest income monthly, quarterly or annually</li>\r\n	<li>Fixed deposit certiicate available</li>\r\n	<li>Guaranteed Returns</li>\r\n</ul>', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Completely filled fixed Account Opening Form</li>\r\n	<li>Citizenship photocopy</li>\r\n	<li>passport size of&nbsp; photograph</li>\r\n</ul>', 'public/project/kBmimXFGOu8fh1Ulrxfaim5hS5MWnRuybGgrWlUR.jpeg', 'public/project/yrgy1jjdTCOqvUxYPSTWyW3JbL34ZfVTRjx4TPxl.jpeg', 4, 3, NULL, NULL, NULL, '2020-10-14 13:43:12', '2020-10-21 16:40:07'),
(33, '6 YEAR FIXED DEPOSIT', '6-year-fixed-deposit', '<p><strong>Six</strong>-<strong>year term deposit</strong> is a cash investment account that pays a <strong>fixed</strong> rate of interest on a principal sum over a 5 year period of time. And while the interest rate on a <strong>term deposit</strong> is <strong>fixed</strong>, the rate of return on your<strong> six</strong>-<strong>year term deposit</strong> will be dependent on a few variables.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"GUIDE: Five tips to start investing in the Philippine stock market |  Investing, Stock market, Start investing\" src=\"https://i.pinimg.com/originals/bd/a5/a8/bda5a816382cacf8ea4de4b4404f5e12.jpg\" /></p>', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Amount pay double at your mature time</li>\r\n	<li>Fixed deposit certiicate available</li>\r\n	<li>Guaranteed Returns</li>\r\n</ul>', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Completely filled fixed Account Opening Form</li>\r\n	<li>Citizenship photocopy</li>\r\n	<li>passport size of&nbsp; photograph</li>\r\n</ul>', 'public/project/1CpO8NZm1eshQTGH5xsQENu2ECjq9zVCrDwhgMxf.jpeg', 'public/project/mCxOB8RdLroDNDhbTn52Xc3hrqLJL4Nkx45BAiwa.jpeg', 4, 4, '6 YEAR FIXED DEPOSIT (sukrapath multipurpose co-operative limited)', '6 YEAR FIXED DEPOSIT (sukrapath multipurpose co-operative limited)', '6 YEAR FIXED DEPOSIT (sukrapath multipurpose co-operative limited)', '2020-10-14 13:43:35', '2020-12-06 13:52:54'),
(34, 'Compulsary Saving', 'compulsary-saving', '<p><strong>&quot; Compulsary Saving Account &quot; </strong>is a interest-bearing deposit account where customer can deposit on specified 1 year period of time and where customers are able to make unlimited deposit of amount.</p>', '<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>BENEFITS :</strong></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Passbook is available without any deduction charges</li>\r\n	<li>Account statement available</li>\r\n	<li>interest bearing account which yield high retrun on deposit</li>\r\n</ul>', '<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>Requirements ;</strong></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Completely filled Personal Account Opening Form</li>\r\n	<li>Citizenship photocopy</li>\r\n	<li>Two&nbsp;passport size photograph</li>\r\n	<li>To be a part of our shareholder (minimum balance starts with rs.1000 (one thousand rupees only)</li>\r\n</ul>', 'public/project/EwfjxTKecC9IBNbMZcPxjtWL2Tq287FlJ2m8GKla.jpeg', 'public/project/4pFwL2oMsiT3JUkFEZpRZ23LmySYWCjqWvescPLy.jpeg', 5, 2, 'sukrapath Compulsary Saving', 'sukrapath Compulsary Saving', 'sukrapath Compulsary Saving', '2020-10-15 11:31:58', '2020-12-18 14:13:06'),
(35, 'Nari Pewa Saving.', 'nari-pewa-saving', '<p><strong>&quot; Nari Pewa&nbsp;&quot; </strong>account is a varient of saving account, specifically desgined for the women who wants value for her money.&nbsp;Every woman is special and deserves the best. Nari pewa is developed for the women in Nepal to encourage savings and earn a high interest rate while experiencing the best banking facilities.&nbsp;</p>', '<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>BENEFITS; </strong></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>High interest rate</li>\r\n	<li>Free passbook without any deduction charge</li>\r\n	<li>Quarterly payment of interest&nbsp;</li>\r\n	<li>Withdraw facilities twice in 1 year</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>FEATURES ; </strong></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Minimum Balance: NPR. 100</li>\r\n	<li>Interest Calculation on Daily basis &nbsp;and payable quarterly</li>\r\n	<li>withdraw facilities twice in 1 year</li>\r\n</ul>', '<ul>\r\n	<li>Completely filled Personal Account Opening Form</li>\r\n	<li>Citizenship photocopy</li>\r\n	<li>Two&nbsp;passport size photograph</li>\r\n</ul>', 'public/project/WeIGutM1nOuCxNE5IwzJznltjflk9d1gheqfBLdZ.jpeg', 'public/project/QOcN9EWlrg4DzmMChJxJhaDvItQKVJntGfZOinYv.jpeg', 5, 11, 'sukrapath Nari Pewa Saving.', 'sukrapath Nari Pewa Saving.', 'sukrapath Nari Pewa Saving.', '2020-10-15 11:41:18', '2020-11-03 16:20:34'),
(37, 'Karnadhar Child Saving', 'karnadhar-child-saving', '<p><strong>&quot;Karnadhar Child Saving&quot;</strong> account is a variant of Savings Account, which can be opened in the name of children below 16 years of age, for their future savings.</p>', '<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>BENEFITS; </strong></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Higher interest rate</li>\r\n	<li><strong>Birthday cake</strong> on birthday special</li>\r\n	<li>Free passbook without any deduction charge</li>\r\n	<li>No minimum balace requirements</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>FEATURES ; </strong></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Free passbook without any deduction charge</li>\r\n	<li>No restrictions</li>\r\n</ul>', '<ul>\r\n	<li>Completely filled Personal Account Opening Form</li>\r\n	<li>Citizenship photocopy</li>\r\n	<li>Two&nbsp;passport size photograph</li>\r\n</ul>', 'public/project/0gLMgkS2XBfCXCnTknbqDS1mX7ydxzuL7PJu0U0E.jpeg', 'public/project/DBesvLGwqDHCxoY4G2MqjO5RuQeMMFkCnRt0wCG7.jpeg', 5, 11, NULL, NULL, NULL, '2020-10-15 11:50:13', '2020-11-04 13:58:00'),
(38, 'Sukrapath pension saving', 'sukrapath-pension-saving', '<p><strong>&quot;Pension account</strong>&quot; is an long term deposit retirement account. We have many more scheme with high returns on deposit.</p>\r\n\r\n<p><img alt=\"USDAW - Pensions\" src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3qz0SgXoTRunlk6B-GnGcbNwJlEtk_0QY0w&amp;usqp=CAU\" style=\"height:158px; width:320px\" /></p>', '<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>&quot;Pension account</strong>&quot; is an long term deposit retirement account which held ;</div>\r\n\r\n<p><strong>Sukrapath Pension Scheme</strong></p>\r\n\r\n<p><img alt=\"China able to pay old-age pension on time, in full: official - Xinhua Silk  Road\" src=\"data:image/jpeg;base64,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\" style=\"height:146px; width:217px\" /></p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"height:177px; width:519px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Monthly saving</strong></td>\r\n			<td><strong>total amount</strong></td>\r\n			<td><strong>pension amount</strong></td>\r\n			<td><strong>Total payment</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>1,000</td>\r\n			<td>3,00,000</td>\r\n			<td>12,000</td>\r\n			<td>12,00,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2,000</td>\r\n			<td>6,00,000</td>\r\n			<td>24,000</td>\r\n			<td>24,00,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2,500</td>\r\n			<td>7,50,000</td>\r\n			<td>30,000</td>\r\n			<td>30,00,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5,000</td>\r\n			<td>15,00,000</td>\r\n			<td>60,000</td>\r\n			<td>60,00,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10,000</td>\r\n			<td>30,00,000</td>\r\n			<td>1,20,000</td>\r\n			<td>1,20,00,000</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '<ul>\r\n	<li>Completely filled Personal Account Opening Form</li>\r\n	<li>Citizenship photocopy</li>\r\n	<li>Be a part of our share holder (Minimum balance starts with rs 1000 only)</li>\r\n</ul>\r\n\r\n<p><img alt=\"Mauritius Data Blog: Mauritius Pension Rates: New Rates for Old Age and  other basic pensions\" src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1IBz1YJU7Q1YICq-hCvMnEDcwaWcfSNvmIQ&amp;usqp=CAU\" style=\"height:281px; width:190px\" /></p>', 'public/project/kMTnq96drUbN94xwrznxWJdcAUVwu6NW9pPpnUWu.jpeg', 'public/project/ODniaKzXflrOTXaYtNxYJ548HGSHDCzARQlowYOj.jpeg', 5, 3, NULL, NULL, NULL, '2020-10-15 11:50:43', '2020-12-08 15:06:45'),
(39, 'Sukrapath monthly saving', 'sukrapath-monthly-saving', '<p><strong>&quot;Sukrapath Monthly Saving&quot;</strong> account is an scheme account&nbsp;&nbsp;where&nbsp;you can&nbsp; leave your money&nbsp;&nbsp;in an account&nbsp;for a particular length&nbsp;of time,&nbsp;in order o get a higher rate of interest.&nbsp; &nbsp;</p>\r\n\r\n<p>&quot;Here we have scheme for this account&quot;</p>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">&quot; Deposit thirteen month of installment&nbsp;to get extra 1month of installment&quot;</div>', '<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>BENEFITS ; </strong></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Interest bearing account which yeild high return on deposit</li>\r\n	<li>Free passbook without any deduction charge</li>\r\n	<li>Guaranteed Returns</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>FEATURES ; </strong></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Minimum balance to be maintained rs 100 (One hundred rupess only )</li>\r\n	<li>No Restriction</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n</ul>', '<ul>\r\n	<li>Completely filled Personal Account Opening Form</li>\r\n	<li>Citizenship photocopy</li>\r\n	<li>Two&nbsp;passport size photograph</li>\r\n</ul>', 'public/project/5Xt2m25gnoisQpohhZOwW2UlmLFVEYpNSxlfotvs.jpeg', 'public/project/epnzCTEbXCe5oPzauxUnBEWJebWldH3PL0aqjemE.jpeg', 5, 4, 'Sukrapath monthly saving', 'Sukrapath monthly saving', 'Sukrapath monthly saving', '2020-10-15 11:53:04', '2020-11-08 16:08:06'),
(40, '3month future saving', '3month-future-saving', '<p><strong>&quot;Sukrapath 3month Future Saving Account&quot; </strong>is a varient account specially for those who really want to deposit in a short term ways. In another way it is an fixed deposit.</p>', '<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>Benefits ;</strong></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Interest bearing account which yeild high return on deposit</li>\r\n	<li>Interest income quarterly</li>\r\n	<li>Free passbook without any deduction charge</li>\r\n	<li>No fixed amount to be maintained</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>Features ; </strong></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Minimum balance to be maintained rs 100 only</li>\r\n	<li>No restrictions</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', '<ul>\r\n	<li>Completely filled Personal Account Opening Form</li>\r\n	<li>Citizenship photocopy</li>\r\n	<li>Two&nbsp;passport size photograph</li>\r\n</ul>', 'public/project/fxfvSp4Yc4cYNWYeXWV2DLSGmABZkkQSeDLv4kq7.jpeg', 'public/project/V5cq2MrTIeYNgg7UEntLqVjjcOga24lWpiOHt1WE.jpeg', 5, 11, '3month future saving', '3month future saving', '3month future saving', '2020-10-15 12:28:19', '2020-11-10 11:24:34'),
(41, '6month future saving', '6month-future-saving', '<p><strong>&quot;Sukrapath 6month Future Saving Account&quot; </strong>is a varient account specially for those who really want to deposit in a short term ways. The advantage of depositing money in a 6month future saving is that give you a higher rate of return than a normal savings account.</p>', '<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>Benefits :</strong></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Interest bearing account which yeild high return on deposit</li>\r\n	<li>Easy to deposit</li>\r\n	<li>Interest income quarterly</li>\r\n	<li>Free passbook without any deduction charge</li>\r\n	<li>No fixed amount to be maintained</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>Features :</strong></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Minimum balance to be maintained rs 100 only</li>\r\n	<li>No restrictions</li>\r\n</ul>', '<ul>\r\n	<li>Completely filled Personal Account Opening Form</li>\r\n	<li>Citizenship photocopy</li>\r\n	<li>Two&nbsp;passport size photograph</li>\r\n</ul>', 'public/project/gZJzYhY6g78085D8KtsARAZ4gdqvwMSO7MrNYIQF.jpeg', 'public/project/ThTKtA4RKBwqt2vgD9nq3WmjxyjsFWDpC9nVyZa3.jpeg', 5, 11, '6month future saving', '6month future saving', '6month future saving', '2020-10-15 12:28:34', '2020-12-08 13:37:23'),
(42, 'Mero Dream Saving (MDS)', 'mero-dream-saving-mds', '<p><strong>&quot; Mero dream saving&nbsp;&quot;</strong> is an periodic saving account of 365 days. It is an special kind of term <strong>deposits </strong>which help people with regular incomes to <strong>deposit</strong> a fixed amount every day.</p>', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>High interest rate</li>\r\n	<li>Daily basis interest calculation</li>\r\n	<li>Loan against deposit</li>\r\n	<li>Minimum investment</li>\r\n</ul>', '<ul>\r\n	<li>Completely filled Personal Account Opening Form</li>\r\n	<li>Citizenship photocopy</li>\r\n	<li>Be a part of our share holder (Minimum balance starts with rs 1000 only)</li>\r\n</ul>', 'public/project/jKFH5HKZw3jvZSP6UopuT2KY3OKXi6xxmjY24wpC.jpeg', 'public/project/R37Jf9LY0hms9BKnBeknJ7ymL6bijtk0Yre6vWCS.jpeg', 5, 11, 'Mero Dream Saving (MDS)', 'Mero Dream Saving (MDS)', 'Mero Dream Saving (MDS)', '2020-10-15 12:28:54', '2020-11-08 14:32:17'),
(43, 'Mero Yojana Saving Account', 'mero-yojana-saving-account', '<p><strong>&quot;Mero yojana saving account&quot; </strong>is an scheme account where money can hold for particular length of time. It is an special kind of term <strong>deposits </strong>which help people with regular incomes to <strong>deposit</strong> a fixed amount every day.</p>', '<hr />\r\n<p><strong>&quot;Mero yojana saving account</strong>&quot; is an varient account with higher interest rates. Our main target in this account is to provide good return on each scheme which held :</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>550 days scheme (added 50 days scheme on return)</strong></li>\r\n	<li><strong>350 days scheme (added 20 days scheme on return)</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>High interest rate</li>\r\n	<li>Daily basis interest calculation</li>\r\n	<li>Loan against deposit</li>\r\n	<li>Minimum investment</li>\r\n</ul>', '<ul>\r\n	<li>Completely filled Personal Account Opening Form</li>\r\n	<li>Citizenship photocopy</li>\r\n	<li>Be a part of our share holder (Minimum balance starts with rs 1000 only)</li>\r\n</ul>', 'public/project/6XGdiatFKQqOKgZXqkx5wrEZsmo0NQl3GnDrcIIV.jpeg', 'public/project/C8c1Qzja3XGAY6ftWqNmBeK3eGRvExVGB9ozACBZ.jpeg', 5, 11, 'Mero Yojana Saving Account', 'Mero Yojana Saving Account', 'Mero Yojana Saving Account', '2020-12-02 12:10:13', '2020-12-18 14:14:00'),
(44, 'Surachhit Bhabishya Saving Account', 'surachhit-bhabishya-saving-account', '<p><strong>&quot;Surachhit Bhabishya Saving Account</strong>&quot; is an long term deposit account which held different kind of beneficial scheme in each saving. Also You can get more deatils from this brochure as well;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>monthly scheme</td>\r\n			<td>15 years saving amount</td>\r\n			<td>20 years saving amount</td>\r\n			<td>settelment after 15years</td>\r\n			<td>settelment after 20 years</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rs.500/-</td>\r\n			<td>Rs.10000/-</td>\r\n			<td>Rs.120000/-</td>\r\n			<td>Rs.200000/-</td>\r\n			<td>Rs.360000/-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rs.1000/-</td>\r\n			<td>Rs.180000/-</td>\r\n			<td>Rs.240000/-</td>\r\n			<td>Rs.400000/-</td>\r\n			<td>Rs.720000/-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rs.1500/-</td>\r\n			<td>Rs.270000/-</td>\r\n			<td>Rs.360000/-</td>\r\n			<td>Rs.600000/-</td>\r\n			<td>Rs.1080000/-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rs.2000/-</td>\r\n			<td>Rs.360000/-</td>\r\n			<td>Rs.480000/-</td>\r\n			<td>Rs.800000/-</td>\r\n			<td>Rs.1440000/-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rs.3000/-</td>\r\n			<td>Rs.540000/-</td>\r\n			<td>Rs.720000/-</td>\r\n			<td>Rs.1200000/-</td>\r\n			<td>Rs.2160000/-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rs.5000/-</td>\r\n			<td>Rs.900000/-</td>\r\n			<td>Rs.1200000/-</td>\r\n			<td>Rs.2000000/-</td>\r\n			<td>Rs.3600000/-</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '<ul>\r\n	<li>High interest rate</li>\r\n	<li>Good return on each scheme</li>\r\n	<li>minimum investment</li>\r\n	<li>Flexibility</li>\r\n</ul>', '<ul>\r\n	<li>Completely filled Personal Account Opening Form</li>\r\n	<li>Citizenship photocopy</li>\r\n	<li>Be a part of our share holder (Minimum balance starts with rs 1000 only)</li>\r\n</ul>', 'public/project/uNJ3SpZNuCS2GE1jnoaVjjQJh2DzL9F99UBSE1HS.jpeg', 'public/project/zajSHKKceBGdnaJfJBKbp3YW5wPCt652j468CkRD.jpeg', 5, 11, 'Surachhit Bhabishya Saving Account (shukrapath multipurpose co-opeartive limited)', 'Surachhit Bhabishya Saving Account (shukrapath multipurpose co-opeartive limited)', 'Surachhit Bhabishya Saving Account (shukrapath multipurpose co-opeartive limited)', '2020-12-02 12:41:08', '2021-02-24 14:12:00'),
(45, 'Sukrapath Best Deposit Saving', 'sukrapath-best-deposit-saving', '<p><strong>&quot;Sukrapath Best Deposit Saving&quot;&nbsp;</strong>is an investment account where money can deposit for a plus profit without having a particular length of time. <strong>Sukrapath Best Deposit </strong>account is specially for those who want to invest high and want to earn high rate of interest.</p>\r\n\r\n<p>&nbsp;</p>', '<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>Benefits :</strong></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>High Interest rate&nbsp;</li>\r\n	<li>Free passbook without any deduction charge</li>\r\n	<li>Ouarterly payment of interest</li>\r\n	<li>Interest base on daily minimum balance</li>\r\n	<li>Account statement available</li>\r\n	<li>Free cheque book</li>\r\n</ul>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>Features:</strong></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Minimum balance maintained rs 1000000/- only</li>\r\n	<li>satisfactory Interest rate</li>\r\n	<li>Mobile banking facilities</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', '<ul>\r\n	<li>Citizenship photocopy</li>\r\n	<li>2 copy&nbsp;of passport size photograph&nbsp;</li>\r\n	<li>To be a part of our shareholder (minimum balance maintained Rs 1000/- only)</li>\r\n</ul>', NULL, 'public/project/jh6JvW1CVR4lBG4XMbI5OeztBEgIbdfz1PuEE5zB.jpeg', 2, 11, 'Sukrapath Best Deposit Saving', 'Sukrapath Best Deposit Saving', 'Sukrapath Best Deposit Saving', '2021-02-24 13:34:41', '2021-06-29 12:10:29');

-- --------------------------------------------------------

--
-- Table structure for table `service_categories`
--

CREATE TABLE `service_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_categories`
--

INSERT INTO `service_categories` (`id`, `name`, `slug`, `order`, `created_at`, `updated_at`) VALUES
(2, 'Saving', 'saving', 1, '2020-08-20 13:29:27', '2020-09-16 09:48:18'),
(3, 'Loans', 'loans', 4, '2020-08-20 13:29:34', '2020-10-15 11:29:58'),
(4, 'Fixed Deposit', 'fixed-deposit', 3, '2020-08-20 13:29:40', '2020-10-15 11:30:28'),
(5, 'Periodic saving', 'periodic-saving', 2, '2020-10-15 11:28:43', '2020-10-15 11:29:42');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `institution_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution_phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution_mobile_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution_facebook_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution_twitter_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution_instagram_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution_linkedIn_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution_youtube_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution_google_plus_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution_google_map` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution_open_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `institution_logo`, `institution_name`, `institution_email`, `institution_phone_number`, `institution_mobile_number`, `institution_address`, `institution_facebook_link`, `institution_twitter_link`, `institution_instagram_link`, `institution_linkedIn_link`, `institution_youtube_link`, `institution_google_plus_link`, `institution_google_map`, `institution_open_time`, `created_at`, `updated_at`) VALUES
(1, 'public/logo/xTvfGOZebRyjrQHCNIYDJ9swac2EwykFOO5givSz.png', 'Shukrapath Co-operative', 'sukrapath@gmail.com', '01-5713311', '5713391,5713455', 'Sahakari Bhawan, Newroad, Kathmandu', 'https://www.facebook.com/sukrapath/', 'https://www.facebook.com/sukrapath/', 'https://www.facebook.com/sukrapath/', 'https://www.facebook.com/sukrapath/', 'https://www.youtube.com/c/SukrapathCooperative/', NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7064.880645486763!2d85.311414!3d27.703688!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xe7dde7ff67d2f2f6!2sSukrapath%20Multipurpose%20Co-operative%20Ltd.!5e0!3m2!1sen!2snp!4v1599581047489!5m2!1sen!2snp\" width=\"100%\" height=\"600\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', '10:00 AM TO 05:00 PM', NULL, '2021-08-23 16:41:26');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `button_caption` varchar(191) DEFAULT NULL,
  `button_link` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `image`, `order`, `button_caption`, `button_link`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'public/sliders/eBTREHkFSgs8Ym9W0SgGkKRPTWJ9yaPGxeZl341r.jpeg', 5, NULL, 'sukrapath', '2021-02-25 15:10:55', '2021-03-16 11:17:36'),
(7, NULL, '<p>&nbsp;</p>\r\n\r\n<h3><big>&nbsp; &nbsp; </big></h3>\r\n\r\n<h3><big>&nbsp;9th Annual General Meeting Honour With&nbsp;&nbsp;<strong><code><span class=\"marker\">Mrs</span></code> &nbsp;<code><span class=\"marker\">Anuradha Koirala</span></code></strong></big></h3>\r\n\r\n<p>&nbsp;</p>', 'public/sliders/bRogqLkIZX8Txjqt9enuqrlTiJ0bpHdkhOgiWGSl.jpeg', 3, NULL, NULL, '2021-03-07 11:39:56', '2021-07-26 15:39:57'),
(12, NULL, '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><big>9th Annual General Meeting honour With <strong><span class=\"marker\">Mrs</span></strong></big><code><big><strong><span class=\"marker\"> ANURADHA KOIRALA</span></strong></big></code></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'public/sliders/Eav3fgoqxuvWzRVCve30l9bJ5aRrDSuDZeomXkwb.jpeg', 4, NULL, NULL, '2021-03-09 13:41:02', '2021-04-12 12:06:07'),
(14, NULL, '<h3>&nbsp;</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><big><strong>Nepal&#39;s first co-operatives&ndash; <code>Bakhan Multi-purpose Co-operatives</code> Institute in Sharadanagar of Chitwan</strong></big></p>', 'public/sliders/lffw3zlRcaqc0WyyohMuCFlt47seHbbSv48CZhP5.jpeg', 6, NULL, NULL, '2021-03-09 13:52:54', '2021-06-29 12:54:48'),
(21, NULL, '<p>&nbsp;</p>\r\n\r\n<h3>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong> &nbsp; Happy 11th Anniversary of <code>Shukrapath multipupose co-operative limited</code></strong></h3>', 'public/sliders/SXvTjTnhByI46LB77rwZsuGIj52LLVeOb0VqYMpf.jpeg', 2, NULL, NULL, '2021-04-12 12:07:33', '2021-06-29 12:53:17'),
(22, NULL, '<h3>&nbsp;</h3>\r\n\r\n<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;Save<code> <span style=\"font-family:Comic Sans MS,cursive\"><span class=\"marker\">Today</span></span></code> For You and Yours <code><span style=\"font-family:Comic Sans MS,cursive\"><span class=\"marker\">Tommorrow</span></span></code>&quot;<img alt=\"yes\" src=\"https://cdn.ckeditor.com/4.13.0/full/plugins/smiley/images/thumbs_up.png\" style=\"height:23px; width:23px\" title=\"yes\" /></strong></p>\r\n\r\n<h3><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; </strong></h3>', 'public/sliders/BEQ35W78pmd5H24wAFVINikX5kRUs7EatwWxTHQg.jpeg', 7, NULL, NULL, '2021-05-09 10:52:12', '2021-07-10 11:02:41'),
(23, NULL, NULL, 'public/sliders/bWDV7ueyNulcvH48DDbCacFWXFPdE3kxVfcTo3v1.jpeg', 1, NULL, NULL, '2021-07-26 15:21:45', '2021-07-30 11:16:00');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `link_to_facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_to_twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_to_instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_to_linkedIn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `full_name`, `designation`, `image`, `order`, `department_id`, `link_to_facebook`, `link_to_twitter`, `link_to_instagram`, `link_to_linkedIn`, `created_at`, `updated_at`) VALUES
(21, 'Love Raj Regmi', 'Administration/Human Resource', 'public/team/HXTFiml7wNFTXrr06PKcTx1pbreD7clFwbVOwCI9.jpeg', '1', 5, 'https://www.facebook.com/labaraj.regmi', NULL, NULL, NULL, '2020-10-02 14:00:23', '2020-11-02 13:00:53'),
(23, 'Manoj Ghorasaini', 'Administration/Plan implementation', 'public/team/UzMbVOi2QKwPNIRXIeRyMmbKlcaSaLnqqQyFdpFi.jpeg', '2', 5, 'https://www.facebook.com/manoj.ghorsaini.7', NULL, NULL, NULL, '2020-10-08 11:15:03', '2020-10-14 15:37:57'),
(24, 'Pampa Karki', 'Team Member', 'public/team/MqewYQynzozPdvyXF0MBgVrySJcdDLRlFIAa6hmN.jpeg', '2', 2, NULL, NULL, NULL, NULL, '2020-10-08 13:42:02', '2020-11-05 14:44:48'),
(28, 'Tirtha Raj Upadhaya', 'Recovery Head', 'public/team/ArS9VM1xh0kqTdPDivkgo3yG9AnCQHXsqc21M6qR.jpeg', '6', 5, NULL, NULL, NULL, NULL, '2020-10-14 15:41:18', '2021-07-26 10:37:49'),
(34, 'Shailaja Wagle', 'Gongabu Service Center', 'public/team/CcL6PEz7Frj97O579FYG3bnGntSz5yY8nLA3TDvU.jpeg', '3', 6, 'https://www.facebook.com/wagle.shailaja/', NULL, NULL, NULL, '2020-11-01 15:27:40', '2021-08-02 13:33:24'),
(36, 'Nanju Tamang', 'Operating Department', 'public/team/6Fxgho0bRpMpW8ngCPPGA1c8brdSBKBoUweCOhG6.jpeg', '1', 5, NULL, NULL, NULL, NULL, '2020-11-02 11:01:13', '2021-07-26 10:34:02'),
(38, 'Jaya Bahadur Thapa', 'Nuwakot Service-Center', 'public/team/zYLGeeQwkj7b4aFMaMSUeeq60BRusmfbYEXQLLVg.jpeg', '9', 6, NULL, NULL, NULL, NULL, '2020-11-02 11:03:53', '2021-08-02 13:34:47'),
(39, 'Roshan Kumar Bist', 'Chitwan Service-Center', 'public/team/joGgGfP5wAfiRbTM9Qw5AzEyQUKruWlvPpQO1w62.jpeg', '10', 6, 'https://www.facebook.com/rn.bist.33', NULL, NULL, NULL, '2020-11-02 11:05:34', '2021-08-02 13:34:57'),
(41, 'Ramesh Prasad Acharya', 'Hattigauda Service-Center', 'public/team/P5umAFtGC787wbIDfREyBxhwSEZYMcwtA10Ms1N2.jpeg', '7', 6, 'https://www.facebook.com/ramesh.acharya.752487', NULL, NULL, NULL, '2020-11-02 11:12:30', '2021-08-02 13:34:28'),
(42, 'Rashmi Shrestha', 'Kalimati Service-Center', 'public/team/s2zHvMHQTjr8mELkJ7UpiUHLA7nr4U14S6tXJCHx.jpeg', '2', 6, 'https://www.facebook.com/tisha.shrestha.77', NULL, NULL, NULL, '2020-11-02 11:13:17', '2021-08-02 13:33:08'),
(43, 'Narendra Bista', 'Chairman', 'public/team/XsONqG6Hrn2u5AftqCuzhRHbTlCol1omiNPOJw1M.jpeg', '1', 1, 'https://www.facebook.com/narendra.bista.77', NULL, NULL, NULL, '2020-11-04 11:39:21', '2021-02-17 15:37:20'),
(48, 'Dev Prasad Ghimire', 'Team Member', 'public/team/wFf6gLglZuzIHWJlh5qhCZwyyUUFkRYTU5uvxRBA.jpeg', '8', 2, NULL, NULL, NULL, NULL, '2020-11-05 14:39:22', '2020-11-05 14:40:58'),
(68, 'Madhukar Wagle', 'chief executive officer (CEO)', 'public/team/rq4R4q8QNbqk3gtNxS9rJ06n8qQ7NMhg2GC8d7D3.jpeg', '9', 12, NULL, NULL, NULL, NULL, '2021-02-16 13:38:19', '2021-02-16 13:39:50'),
(71, 'Anand kumar Raut', 'Vice Chairman', 'public/team/RlqMLkAuuTTyYmRieQdMl1Wspc6funEykat9Agbw.jpeg', '10', 1, NULL, NULL, NULL, NULL, '2021-03-18 13:06:12', '2021-03-18 13:06:12'),
(72, 'Dipendra Kumar Shrestha', 'Treasurer', 'public/team/1Mbc5HL1cqozWnnJK3klTOCWiY69Zoigtoy0WS60.jpeg', '10', 1, NULL, NULL, NULL, NULL, '2021-03-18 13:08:47', '2021-03-18 13:08:47'),
(73, 'Nirhari Prasad Upadahaya', 'Bod Member', 'public/team/XWcVhmvUkhAgCn0q1bmfyGNYs3vdQA6dKUk0mDpB.jpeg', '10', 1, NULL, NULL, NULL, NULL, '2021-03-18 13:09:42', '2021-03-18 13:09:42'),
(74, 'Arjun Bishwokarma', 'Bod Member', 'public/team/OYUegE6iw7mn6KOG9CatUJ0OMwUaWBDOtEm6Idyf.jpeg', '10', 1, NULL, NULL, NULL, NULL, '2021-03-18 13:10:06', '2021-03-18 13:10:06'),
(75, 'Ramesh Joshi', 'NewRoad Service Center / Head Office', 'public/team/nXCCXyOPwOWMLhRIK6XhkYXHYoox2Qh9Dyidzd1m.jpeg', '1', 6, NULL, NULL, NULL, NULL, '2021-07-26 10:37:04', '2021-07-26 10:48:45'),
(76, 'Nabin Giri', 'Tinkune Service-Center', 'public/team/LoGf9xumr3k5A7muWerTihEyKFpOYDMCTwDuyp9g.jpeg', '5', 6, NULL, NULL, NULL, NULL, '2021-08-02 13:17:11', '2021-08-02 13:39:14'),
(77, 'Bhimsen Khatri', 'Lagankhel Service-Center', 'public/team/p7ajWtM4Cb3ZbME4kt5prIKyo7LxaWUSwKOLs7pV.jpeg', '6', 6, NULL, NULL, NULL, NULL, '2021-08-02 13:23:18', '2021-08-02 13:38:34'),
(78, 'Indira Singh', 'Chabhil Service-Center', 'public/team/gSO5oA3hsSLknrs5oXGXO9xKPDCCAudVQ6eUNz9y.png', '4', 6, NULL, NULL, NULL, NULL, '2021-08-02 13:29:42', '2021-08-02 13:33:44'),
(79, 'Deepak Pandey', 'Bhaktapur Service-Center', 'public/team/rtnv1QoeEM5ZV8MjK5v9uurIxrPgkLy4akMRazDy.jpeg', '8', 6, NULL, NULL, NULL, NULL, '2021-08-02 13:40:07', '2021-08-02 13:40:37');

-- --------------------------------------------------------

--
-- Table structure for table `testimonals`
--

CREATE TABLE `testimonals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `messege_from_chariman` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonals`
--

INSERT INTO `testimonals` (`id`, `author`, `designation`, `description`, `order`, `image`, `messege_from_chariman`, `created_at`, `updated_at`) VALUES
(1, 'Madhukar Wagle', 'Chief Executive Officer (CEO)', '<p><span style=\"font-family:Courier New,Courier,monospace\"><span style=\"font-size:14px\"><strong>Shukrapath Multipurpose Co-Operative Limited</strong>&nbsp;is providing member friendly services through its smart technology and 7 member service centers , 1 Head Office and 2 member service centers outside the Kathmandu Valley. As a better result Shukrapath has been able to achieve this milestone with the help of&nbsp;our <strong>Valuable Members , Well Wishers and HardWorking Employees</strong></span></span><span style=\"font-family:Courier New,Courier,monospace\"><span style=\"font-size:14px\"><strong>.</strong>&nbsp;Come Join Us on our &quot;<strong><em>Mission to Venus and Journey of Universe</em></strong>&quot;</span></span><span style=\"font-family:Courier New,Courier,monospace\"><span style=\"font-size:14px\">&nbsp;&nbsp;</span></span></p>', 2, 'public/testimonal/bA85DyvpcmphplxCEZ63bXZ4iMg8yHYtW8g1vbGD.jpeg', 1, '2020-08-20 09:50:17', '2021-07-11 14:43:42'),
(2, 'Lalit bahadur bhujel', 'member', '<p><strong>Shukrapath Multipurpose Co-operative Limited</strong> is one of the best co-operative i&#39;ve ever worked with. It gives us so many facilities with deposit higher interest rate and also loan facilities are good.I am so comfortable to work with this co-operative because of its friendly environment great&nbsp;team and management.</p>', 1, 'public/testimonal/TgP3Wihz4RS9VBAyhv05L8Ty7UPEDZPLCkd011WZ.jpeg', 0, '2020-08-20 09:50:48', '2020-10-07 09:48:47'),
(8, 'Narendra Bista', 'Chairman', '<p><strong>&quot; Shukrapath Multipurpose Co-operative limited&nbsp;&quot;</strong>&nbsp; was established in 2010 November 21. We are providing this services since 10 years, as a better result co-operative is now operating 7&nbsp;branches in kathmandu valley. We are thankful to one and all who are connected directly or indirectly with our co-operative.<br />\r\n&nbsp;</p>', 1, 'public/testimonal/3SyuivD9UdpqKSUb43uUmynLuC7ARi3HnGKVx1vj.jpeg', 1, '2020-09-30 12:22:03', '2020-11-04 11:03:10'),
(12, 'chandrak raj katuwal', 'member', '<p><strong>&quot;shukrapath&quot;</strong> is one of the trustable co-operative where i can easily invest without any hesitation. I am here since so long and like to be a part of this co-operative as always. Thankyou <strong>sukrapath</strong> for taking my problem as your own.</p>', 2, 'public/testimonal/ZJOVdDXN406FZ4ZHi8kIMjZNlMUe6TJUpEhPsrPQ.jpeg', 0, '2020-12-04 11:13:21', '2021-07-01 11:18:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mukesh', 'mukeshrai541@gmail.com', NULL, '$2y$10$9TgbuIT0Q/CN5oYYBcKko.eBFQ2PCTxr14.SnpG6ybGe6Wc6P6i4W', 'fajR7fj439ue3tsxaBI14bla3q12p9hDMeYduHjVNkDs5UX0f4miCCSDJUK2', NULL, NULL),
(2, 'sukrapath@gmail.com', 'sukrapath@gmail.com', NULL, '$2y$10$uXdjxfQW9FgGnpNT6tJKAuzbxTz8sy/TExEp73ueRFLYO4rHB/29O', 'mjEkWVsX17rrARO9hZdyu90v0Ty5nFd44tN8epjbqlwl4287hD0JKVnvchFF', '2020-09-14 12:55:11', '2020-09-15 10:52:42'),
(3, 'Narendra Bista', 'n@gmail.com', NULL, '$2y$10$GDE6GrcVpg7jH2XCAreQVOlMLt4MbaT2u2nw0V4wXWWNuDMnwha0m', 'nytrD3qG4EQu1acvMCHNUBImR4LizXUWzPQgG01O7Wacxa8drcQw6le5T9lQ', '2021-04-18 14:54:36', '2021-04-18 14:54:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applies`
--
ALTER TABLE `applies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calendars`
--
ALTER TABLE `calendars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_cruds`
--
ALTER TABLE `contact_cruds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cover_images`
--
ALTER TABLE `cover_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiries`
--
ALTER TABLE `enquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_gallery_categories_id_foreign` (`gallery_categories_id`);

--
-- Indexes for table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepages`
--
ALTER TABLE `homepages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_service_categories_id_foreign` (`service_categories_id`);

--
-- Indexes for table `service_categories`
--
ALTER TABLE `service_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_department_id_foreign` (`department_id`);

--
-- Indexes for table `testimonals`
--
ALTER TABLE `testimonals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `applies`
--
ALTER TABLE `applies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contact_cruds`
--
ALTER TABLE `contact_cruds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cover_images`
--
ALTER TABLE `cover_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `enquiries`
--
ALTER TABLE `enquiries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=423;

--
-- AUTO_INCREMENT for table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `homepages`
--
ALTER TABLE `homepages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `service_categories`
--
ALTER TABLE `service_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `testimonals`
--
ALTER TABLE `testimonals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_gallery_categories_id_foreign` FOREIGN KEY (`gallery_categories_id`) REFERENCES `gallery_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_service_categories_id_foreign` FOREIGN KEY (`service_categories_id`) REFERENCES `service_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teams`
--
ALTER TABLE `teams`
  ADD CONSTRAINT `teams_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
