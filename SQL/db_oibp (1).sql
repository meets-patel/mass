-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2021 at 01:00 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_oibp`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add subcategory', 8, 'add_subcategory'),
(30, 'Can change subcategory', 8, 'change_subcategory'),
(31, 'Can delete subcategory', 8, 'delete_subcategory'),
(32, 'Can view subcategory', 8, 'view_subcategory'),
(33, 'Can add contact', 9, 'add_contact'),
(34, 'Can change contact', 9, 'change_contact'),
(35, 'Can delete contact', 9, 'delete_contact'),
(36, 'Can view contact', 9, 'view_contact'),
(37, 'Can add role', 10, 'add_role'),
(38, 'Can change role', 10, 'change_role'),
(39, 'Can delete role', 10, 'delete_role'),
(40, 'Can view role', 10, 'view_role'),
(41, 'Can add state', 11, 'add_state'),
(42, 'Can change state', 11, 'change_state'),
(43, 'Can delete state', 11, 'delete_state'),
(44, 'Can view state', 11, 'view_state'),
(45, 'Can add city', 12, 'add_city'),
(46, 'Can change city', 12, 'change_city'),
(47, 'Can delete city', 12, 'delete_city'),
(48, 'Can view city', 12, 'view_city'),
(49, 'Can add innovator', 13, 'add_innovator'),
(50, 'Can change innovator', 13, 'change_innovator'),
(51, 'Can delete innovator', 13, 'delete_innovator'),
(52, 'Can view innovator', 13, 'view_innovator'),
(53, 'Can add profile', 14, 'add_profile'),
(54, 'Can change profile', 14, 'change_profile'),
(55, 'Can delete profile', 14, 'delete_profile'),
(56, 'Can view profile', 14, 'view_profile'),
(57, 'Can add idea', 15, 'add_idea'),
(58, 'Can change idea', 15, 'change_idea'),
(59, 'Can delete idea', 15, 'delete_idea'),
(60, 'Can view idea', 15, 'view_idea'),
(61, 'Can add order', 16, 'add_order'),
(62, 'Can change order', 16, 'change_order'),
(63, 'Can delete order', 16, 'delete_order'),
(64, 'Can view order', 16, 'view_order'),
(65, 'Can add feedback', 17, 'add_feedback'),
(66, 'Can change feedback', 17, 'change_feedback'),
(67, 'Can delete feedback', 17, 'delete_feedback'),
(68, 'Can view feedback', 17, 'view_feedback');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$5YFOmSwm8z5P$DhbxdP/ehw0db+6ziv8YXRIRqDO4KVEH+hGUlMwgdlQ=', '2021-03-31 09:58:22.756004', 1, 'admin', 'Alkesh', 'Kaba', 'kabaalkesh293@gmail.com', 1, 1, '2021-03-06 07:35:27.970831'),
(13, 'pbkdf2_sha256$216000$D8113w1HNwVl$EZXCRbh7UT4MZpkXYWAFrnTHdpJgE9n/Dia6/igcJ6I=', '2021-03-09 15:48:30.065320', 0, 'alkesh', 'Alkesh', 'Kaba', 'alkesh@gmail.com', 0, 1, '2021-03-07 02:42:03.576243'),
(14, 'pbkdf2_sha256$216000$ndNipTu8zSyP$FyRowmi4NKeZefp471IOcwIqM7vSl96X/NaEZ4Rfw00=', NULL, 0, 'nidhi', 'Nidhi', 'Patel', 'nidhi@gmail.com', 0, 1, '2021-03-07 03:01:38.041181'),
(15, 'pbkdf2_sha256$216000$QGjWNLvvly4d$64jNTGzhAKdhHC/MItR7wF/cjXwooTF6oVnkcKAd6wY=', '2021-03-07 10:28:27.601189', 0, 'umesh', 'Umesh', 'Agrawal', 'umesh@gmail.com', 0, 1, '2021-03-07 08:22:20.962218'),
(16, 'pbkdf2_sha256$216000$O0tE2C1W9UGS$z4d0pLQCkQnvrF3Wiot7+XjBsbx6MrxrwIE1+pGG3lE=', '2021-03-07 12:55:05.855340', 0, 'hiral', 'Hiral', 'Patel', 'hiral@gmail.com', 0, 1, '2021-03-07 11:04:29.665212'),
(17, 'pbkdf2_sha256$216000$sjTooheISFR6$bQEAtle//6OtwBsZxxfsex9ezdKY8AIGyJw96VHlgoU=', '2021-03-31 10:07:45.416071', 0, 'Nitish', 'Nitish', 'Jha', 'njha919930@gmail.com', 0, 1, '2021-03-09 15:52:10.938634'),
(18, 'pbkdf2_sha256$216000$Xr1exfduV6Qy$lr+qTwAlYbbn1MJYkor+C3y7XS4qMZuh6MfsoQF1AoU=', '2021-03-31 10:02:48.870007', 0, 'Dhananjay', 'Dhananjay', 'Joddha', 'dhananjayjoddha12@gmail.com', 0, 1, '2021-03-09 15:55:56.805726'),
(19, 'pbkdf2_sha256$216000$FNw66UOoBRqM$gdtF887GGYUE5xo5PD/nceHJOJpNmihO+m994h9+x3Y=', '2021-03-13 19:58:53.739283', 0, 'Jainish', 'jainish', 'purohit', 'jaipurohit123@gmail.com', 0, 1, '2021-03-13 16:59:04.935824'),
(21, 'pbkdf2_sha256$216000$mRBy3ZzdA3d6$M1WUEqPkr9neKpwFv+AUUZhltWKGet/5vxwQivSdJ6s=', NULL, 0, 'Nkumar', 'Nitish', 'Kumar', 'njha919930@gmail.com', 0, 1, '2021-03-13 17:02:51.379587'),
(22, 'pbkdf2_sha256$216000$ztrFWc69rNmw$YJuOV6ckjUqw1/Bu2D1eisPd+WpIqxAx3iXz+ozSXSU=', '2021-03-13 17:43:39.510976', 0, 'rajesh', 'Rajesh', 'Sardhara', 'rajesh@gmail.com', 0, 1, '2021-03-13 17:36:26.769246'),
(23, 'pbkdf2_sha256$216000$hkC2GUJNW5Fn$wDtzKOkUHdZIsZSlb6BG/dlYX7xKF13dWSlUI92uMY4=', NULL, 0, 'hetpatel', 'het', 'patel ', 'het@gmail.com', 0, 1, '2021-03-13 21:39:08.199149'),
(24, 'pbkdf2_sha256$216000$oy5dYwC3WI6i$x3D3TcaGrkcbpAt0ET194p62zKyL0qj8EXRgsWzFGfw=', NULL, 0, 'prince', 'prince', 'roy', 'proy456@gmail.com', 0, 1, '2021-03-15 17:56:04.587791'),
(25, 'pbkdf2_sha256$216000$dx8HGrG5VLwv$W5JneTBtYw4GGmaDZxpC6OtrIB2nWKv3z2ctwfphRfU=', '2021-03-16 06:03:37.554633', 0, 'h', 'helly', 'asdff', 'asd@jh.m', 0, 1, '2021-03-16 06:01:43.835340'),
(26, 'pbkdf2_sha256$216000$ka3md3mP78gY$eW7RsaInh24kv8GB9/tPt2WruXN5j9fHjZV2vA9YhGs=', NULL, 0, 'fjkgh', 'dhzgjkk', 'fjkghjkz', 'parth@gmail.com', 0, 1, '2021-03-16 12:30:53.300663');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat_name`) VALUES
(1, 'IT'),
(2, 'Catering Business'),
(4, 'Paying Guest Service'),
(8, 'small business'),
(9, '852'),
(10, '123');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `city_name` varchar(100) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `city_name`, `state_id`) VALUES
(1, 'Ahmedabad', 1),
(2, 'Gandhinagar', 1),
(3, 'Jaipur', 3),
(4, 'Udaipur', 3);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'customer', 'contact'),
(17, 'customer', 'feedback'),
(16, 'customer', 'order'),
(15, 'innovator', 'idea'),
(7, 'myadmin', 'category'),
(12, 'myadmin', 'city'),
(13, 'myadmin', 'innovator'),
(14, 'myadmin', 'profile'),
(10, 'myadmin', 'role'),
(11, 'myadmin', 'state'),
(8, 'myadmin', 'subcategory'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-03-06 07:34:40.025277'),
(2, 'auth', '0001_initial', '2021-03-06 07:34:45.871978'),
(3, 'admin', '0001_initial', '2021-03-06 07:34:54.809024'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-03-06 07:34:56.467907'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-03-06 07:34:56.528942'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-03-06 07:34:58.103610'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-03-06 07:34:59.591163'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-03-06 07:34:59.754858'),
(9, 'auth', '0004_alter_user_username_opts', '2021-03-06 07:34:59.814124'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-03-06 07:35:00.495993'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-03-06 07:35:00.534940'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-03-06 07:35:00.591572'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-03-06 07:35:00.729132'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-03-06 07:35:00.885728'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-03-06 07:35:01.213123'),
(16, 'auth', '0011_update_proxy_permissions', '2021-03-06 07:35:01.457886'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-03-06 07:35:01.602839'),
(18, 'sessions', '0001_initial', '2021-03-06 07:35:02.848220'),
(19, 'myadmin', '0001_initial', '2021-03-06 07:38:07.202797'),
(20, 'myadmin', '0002_subcategory', '2021-03-06 07:41:30.669438'),
(21, 'customer', '0001_initial', '2021-03-06 15:55:29.731828'),
(22, 'customer', '0002_auto_20210306_2153', '2021-03-06 16:23:52.331083'),
(23, 'myadmin', '0003_role', '2021-03-06 16:23:52.825323'),
(24, 'myadmin', '0004_city_state', '2021-03-06 17:11:02.899879'),
(25, 'myadmin', '0005_innovator', '2021-03-06 17:19:04.481355'),
(26, 'myadmin', '0006_auto_20210306_2250', '2021-03-06 17:20:33.818692'),
(27, 'myadmin', '0007_auto_20210307_0640', '2021-03-07 01:11:08.010754'),
(28, 'myadmin', '0008_auto_20210307_0804', '2021-03-07 02:34:16.550854'),
(29, 'myadmin', '0009_auto_20210307_0809', '2021-03-07 02:40:03.510659'),
(30, 'innovator', '0001_initial', '2021-03-07 03:27:07.112220'),
(31, 'innovator', '0002_auto_20210307_1022', '2021-03-07 04:52:38.943528'),
(32, 'innovator', '0003_auto_20210307_1201', '2021-03-07 06:31:27.506241'),
(33, 'customer', '0003_order', '2021-03-07 11:03:27.477447'),
(34, 'customer', '0004_feedback', '2021-03-07 13:13:01.731375'),
(35, 'customer', '0005_auto_20210307_1845', '2021-03-07 13:15:19.964213'),
(36, 'customer', '0006_order_innovator', '2021-03-31 10:05:32.804240');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('obqpvty32fk82vc9e7r5zzola31udip5', '.eJxVjEEOwiAQRe_C2pBCKKBL956BzDAzUjWQlHbVeHdt0oVu_3vvbyrBupS0dp7TROqijDr9bgj5yXUH9IB6bzq3uswT6l3RB-361ohf18P9OyjQy7cGJpEs6IYIiB4xQgj2DF48O2NoBBYHJM6SdREx5xD9EDHz6GAUUu8PNzs53w:1lM9oB:F5HqbeLK-iTybubF_A7U3axGClQ_pWJmopNNl8jFeCE', '2021-03-30 13:32:27.666913');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `rating` varchar(30) NOT NULL,
  `message` longtext NOT NULL,
  `date` date NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `rating`, `message`, `date`, `user_id`) VALUES
(1, '3', 'This is for Testing Demo', '2021-03-07', 16),
(2, '3', 'Hello Developer', '2021-03-07', 15),
(3, '5', 'nice', '2021-03-13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `idea`
--

CREATE TABLE `idea` (
  `id` int(11) NOT NULL,
  `title` varchar(254) NOT NULL,
  `small_description` longtext NOT NULL,
  `large_description` longtext NOT NULL,
  `setup_price` varchar(20) NOT NULL,
  `setup_duration` varchar(100) NOT NULL,
  `pdf` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `idea`
--

INSERT INTO `idea` (`id`, `title`, `small_description`, `large_description`, `setup_price`, `setup_duration`, `pdf`, `status`, `category_id`, `subcategory_id`, `user_id`) VALUES
(1, 'PHP PROGRAMMING', 'PHP PROGRAMMING  ccc', 'PHP PROGRAMMING  dd', '15000', '3 MOnth', 'uploads/MEET_PANDIT_1_yr_Node_js..pdf', 'active', 1, 3, 13),
(3, 'Alkesh Testing', 'Lorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing.', '50000', '3 MOnth', 'uploads/CamScanner_02-28-2021_22.00.39_dpZuWA4.pdf', 'active', 1, 3, 15),
(4, 'Organic Food Production & Delivery', 'Lorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing elitLorem ipsum dolor sit amet, consectetur adipisicing.', '15000', '2 Month', 'uploads/MEET_PANDIT_1_yr_Node_js._Lnis56U.pdf', 'active', 1, 1, 15),
(6, 'Start your own clothing line', 'If you have some designs in mind and a little bit of time on your hands, you can get your clothing company off the ground.\r\nIf you already own a Shopify store, you can set up your own clothing line using Oberlo, Printify, Printful, or a similar product sourcing app. Each automatically links your store to apparel printers and clothing manufacturers. They also handle every step of the retail fulfillment process for you, giving you the freedom to design and ship a wide range of pieces right out of the gate.', 'If you have some designs in mind and a little bit of time on your hands, you can get your clothing company off the ground.\r\nIf you already own a Shopify store, you can set up your own clothing line using Oberlo, Printify, Printful, or a similar product sourcing app. Each automatically links your store to apparel printers and clothing manufacturers. They also handle every step of the retail fulfillment process for you, giving you the freedom to design and ship a wide range of pieces right out of the gate.\r\nWhy start a clothing line?\r\n•	There’s nothing more satisfying than creating products that people will use every day.\r\n•	As soon as you build your Shopify store, you’ll be able to start selling instantly. Thanks to apps like Printify and Printful, the process of designing and delivering your own custom-made clothing has been streamlined and simplified.\r\n•	You’ll love the feeling of seeing your designs come to life by transforming your creativity into something real and profitable.', '5000', '1 Month', 'uploads/Start_your_own_clothing_line.pdf', 'active', 8, 9, 1),
(8, 'Build your website', 'If you want to start a business online, you need to have a website. And to generate online sales, you’ll need to incorporate payment processing functionality. First, choose a domain name and verify that it’s available. You can purchase a domain name for less than $20 a year in some cases. From there, you can build your own store on a platform like Shopify and start accepting payments from customers right away.', 'If you want to start a business online, you need to have a website. And to generate online sales, you’ll need to incorporate payment processing functionality. First, choose a domain name and verify that it’s available. You can purchase a domain name for less than $20 a year in some cases. From there, you can build your own store on a platform like Shopify and start accepting payments from customers right away.\r\nHere are a few other resources to help you get started with your ecommerce site:\r\n•	Ecommerce Business Blueprint: How to Build, Launch and Grow a Profitable Online Store\r\n•	Building a Beautiful Online Store: 15 Design Experts Share Their Tips and Advice', '10000', '15 Days', 'uploads/Build_your_website.pdf', 'active', 1, 3, 1),
(9, 'Create Handmade Goods', 'If you’re particularly crafty, you can try your hand at selling handmade products. Whether you make jewelry, picture frames, or furniture, one business idea is to monetize your craft skills and sell your creations online.\r\nWhile you can use platforms like Craigslist or Etsy, your own online store will give you more control and make it easier to track and fulfill orders.', 'If you’re particularly crafty, you can try your hand at selling handmade products. Whether you make jewelry, picture frames, or furniture, one business idea is to monetize your craft skills and sell your creations online.\r\nWhile you can use platforms like Craigslist or Etsy, your own online store will give you more control and make it easier to track and fulfill orders.\r\nWhy sell handmade goods?\r\n•	Devote as much or as little time as you want. It’s your choice on how big you want to grow.\r\n•	Create on your schedule. Make your handmade goods on a set schedule, when you have spare time, or whenever you want.\r\n•	Turn your passion into income. Like many of the online business ideas on this list, an entrepreneurial endeavor backed by passion leads to a more fulfilling experience.', '10000', 'Few Days', 'uploads/Create_handmade_goods.pdf', 'active', 8, 9, 1),
(11, 'Handcrafted Products', 'The internet and advent of technology have opened the doors for artisans to broaden their horizons by going from artists to professionals. Unlike retail stores that acquire their products from multiple sources, handcrafted businesses produce products in-house. Their primary focus is on providing a personal touch to the consumers that no other businesses can.\r\nWhether you make candles, soaps, pottery, and even sauces, you are in a position to start a unique business. Here, the product development and procurement are in your hands, quite literally.', 'The internet and advent of technology have opened the doors for artisans to broaden their horizons by going from artists to professionals. Unlike retail stores that acquire their products from multiple sources, handcrafted businesses produce products in-house. Their primary focus is on providing a personal touch to the consumers that no other businesses can.\r\nWhether you make candles, soaps, pottery, and even sauces, you are in a position to start a unique business. Here, the product development and procurement are in your hands, quite literally.\r\nFor instance, candles are no more used just during a power cut. Now, they are more of a home decor item and are widely used as gifts for different occasions as well. Consumers want to buy candles in various fragrances. They like to buy unique and customized products. Similar is the case with other items.\r\nYou can either start with a small batch or on a pre-order basis until you generate consistent sales.\r\n\r\n \r\n\r\n\r\n	India is the third-largest start-up center in the world. Over 1300 new start-ups, including 7 unicorns, were added in the year 2019 in India. The data shows the willingness of the people in India to start their own business.\r\n	With the low investment and high-profit business ideas, you can also consider starting your start-up. All that requires is a solid idea. And if executed well, you can be an owner of a successful business.', '5000', '1 Month', 'uploads/handcrafts.pdf', 'active', 8, 9, 1),
(13, 'Get Started With Affiliate Marketing', '•	Affiliate marketing is basically the process of earning a commission by promoting somebody else’s product.\r\n•	There are two main ways most people do affiliate marketing:\r\n•	Information products. You promote products like ebook, membership sites, video series, etc. This type of affiliate marketing can earn you up to 50% or more in commission, has relatively low barriers to entry, and it’s easy to find products to', '	Affiliate marketing is basically the process of earning a commission by promoting somebody else’s product.\r\n	There are two main ways most people do affiliate marketing:\r\n•	Information products. You promote products like ebook, membership sites, video series, etc. This type of affiliate marketing can earn you up to 50% or more in commission, has relatively low barriers to entry, and it’s easy to find products to Affiliate marketing is basically the process of earning a commission by promoting somebody else’s product.\r\n•	There are two main ways most people do affiliate marketing:\r\n•	Information products. You promote products like ebook, membership sites, video series, etc. This type of affiliate marketing can earn you up to 50% or more in commission, has relatively low barriers to entry, and it’s easy to find products to Affiliate marketing is basically the process of earning a commission by promoting somebody else’s product.', '5000', '15 Days', 'uploads/Get_Started_With_Affiliate_Marketing.pdf', 'active', 1, 1, 1),
(14, 'Hardware store', 'stores (in a number of countries, \"shops\"), sometimes known as DIY stores, sell household hardware for home improvement including: fasteners, building materials, hand tools, power tools, keys, locks, hinges, chains, plumbing supplies, electrical supplies, cleaning products, housewares, tools, utensils, paint, and lawn and garden products directly to consumers for use at home or for business. Many hardware stores have specialty departments unique to its region or its owner\'s interests. These departments include hunting and fishing supplies, plants and nursery products, marine and boating supplies, pet food and supplies, farm and ranch supplies including animal feed, swimming pool chemicals, homebrewing supplies and canning supplies.', 'stores (in a number of countries, \"shops\"), sometimes known as DIY stores, sell household hardware for home improvement including: fasteners, building materials, hand tools, power tools, keys, locks, hinges, chains, plumbing supplies, electrical supplies, cleaning products, housewares, tools, utensils, paint, and lawn and garden products directly to consumers for use at home or for business. Many hardware stores have specialty departments unique to its region or its owner\'s interests. These departments include hunting and fishing supplies, plants and nursery products, marine and boating supplies, pet food and supplies, farm and ranch supplies including animal feed, swimming pool chemicals, homebrewing supplies and canning supplies.[1][2][3] The five largest hardware retailers in the world are The Home Depot, Lowe\'s (both in the United States), Kingfisher of the United Kingdom, Obi of Germany, and Leroy Merlin of France[citation needed].', '50000', '1 Year', 'uploads/Hardware_store.pdf', 'active', 1, 1, 1),
(15, 'Get an Invoicing Software and start selling it', 'Invoicing software resolves numerous invoicing issues that companies face on day to day basis. Invoicing software are trending in the market. There are infinite agencies that require invoicing software for performing their important tasks to ease their invoicing as well as the payment process.', 'Invoicing software resolves numerous invoicing issues that companies face on day to day basis. Invoicing software are trending in the market. There are infinite agencies that require invoicing software for performing their important tasks to ease their invoicing as well as the payment process.', '1500', '3 Month', 'uploads/Python.pdf', 'active', 1, 3, 17);

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `subject` varchar(254) NOT NULL,
  `message` longtext NOT NULL,
  `inq_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inquiry`
--

INSERT INTO `inquiry` (`id`, `name`, `email`, `contact`, `subject`, `message`, `inq_date`) VALUES
(1, 'Alkesh Kaba', 'kabaalkesh293@gmail.com', '09016647480', 'BE 6th Sem Exam Updates', 'awerr', '2021-03-06'),
(2, 'awrere', 'alkesh@gmail.com', '9013455678', 'Lockdown Period is going to Over on 15th May', 'qwewqe', '2021-03-06'),
(3, 'Nitish Patel', 'njha919930@gmail.com', '9016647480', 'asdfasfdsf', 'sdfdsgsdg', '2021-03-13'),
(4, 'Alkesh', 'alkesh@gmail.com', '1234567890', 'hello', 'Testing purpose', '2021-03-16');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `duration` varchar(150) NOT NULL,
  `price` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `idea_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `innovator_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `title`, `duration`, `price`, `date`, `idea_id`, `user_id`, `innovator_id`) VALUES
(2, 'Alkesh Testing', '3 MOnth', '50000', '2021-03-07', 3, 16, NULL),
(3, 'Alkesh Testing', '3 MOnth', '50000', '2021-03-07', 3, 15, NULL),
(4, 'Start your own clothing line', '1 Month', '5000', '2021-03-13', 6, 18, NULL),
(5, 'Organic Food Production & Delivery', '2 Month', '15000', '2021-03-15', 4, 17, NULL),
(6, 'Organic Food Production & Delivery', '2 Month', '15000', '2021-03-15', 4, 17, NULL),
(7, 'Alkesh Testing', '3 MOnth', '50000', '2021-03-15', 3, 25, NULL),
(8, 'Start your own clothing line', '1 Month', '5000', '2021-03-16', 6, 18, NULL),
(9, 'Get an Invoicing Software and start selling it', '3 Month', '1500', '2021-03-31', 15, 18, 17);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `experience` varchar(10) DEFAULT NULL,
  `about` longtext DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `contact` varchar(15) DEFAULT NULL,
  `profile_photo` varchar(100) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `state_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `designation`, `experience`, `about`, `address`, `contact`, `profile_photo`, `city_id`, `role_id`, `state_id`, `user_id`) VALUES
(6, 'PHP DEVELOPER', NULL, NULL, 'Navarangpura', '9016647480', '', 1, 1, 1, 13),
(7, NULL, NULL, NULL, 'CGROAD\r\n', '9568642120', '', 2, 1, 2, 14),
(8, 'PHP DEVELOPER', '1', '																																							My Very Professional Persion\r\n												\r\n												\r\n												', '																																							Bhaktinaagar\r\n												\r\n												\r\n												', '56778', 'profiles/f9.jpg', 1, 2, 1, 15),
(9, NULL, NULL, NULL, NULL, NULL, '', NULL, 1, NULL, 16),
(10, 'Owner', '1', '													I am a passionate Enterprenaur\r\n												\r\n												', '																										None\r\n			I am a passionate Enterprenaur									\r\n												', '9016647480', 'profiles/WhatsApp_Image_2021-03-15_at_10.10.26_wOxI1fi.jpeg', 1, 2, 1, 17),
(11, NULL, NULL, NULL, NULL, NULL, '', NULL, 1, NULL, 18),
(12, NULL, NULL, NULL, NULL, NULL, '', NULL, 2, NULL, 19),
(13, NULL, NULL, NULL, NULL, NULL, '', NULL, 1, NULL, 21),
(14, NULL, NULL, NULL, NULL, NULL, '', 1, 2, 1, 22),
(15, NULL, NULL, NULL, NULL, NULL, '', NULL, 1, NULL, 23),
(16, NULL, NULL, NULL, NULL, NULL, '', NULL, 1, NULL, 24),
(17, NULL, NULL, NULL, NULL, NULL, '', NULL, 1, NULL, 25),
(18, NULL, NULL, NULL, NULL, NULL, '', NULL, 1, NULL, 26);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'customer'),
(2, 'innovator');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `state_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `state_name`) VALUES
(1, 'Gujarat'),
(2, 'Maharastra'),
(3, 'Rajasthan'),
(4, 'Kerala');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `subcat_name` varchar(30) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `subcat_name`, `category_id`) VALUES
(1, 'Hardware', 1),
(3, 'Software', 1),
(9, 'subsmall business', 8),
(10, 'ghfhjfkgh', 9),
(11, 'testting', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_state_id_b686921b_fk_state_id` (`state_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedback_user_id_0104a377_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `idea`
--
ALTER TABLE `idea`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idea_category_id_4a16d7d8_fk_category_id` (`category_id`),
  ADD KEY `idea_subcategory_id_b1f8c70b_fk_subcategory_id` (`subcategory_id`),
  ADD KEY `idea_user_id_f60d9009_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_idea_id_1bdefe6e_fk_idea_id` (`idea_id`),
  ADD KEY `order_user_id_e323497c_fk_auth_user_id` (`user_id`),
  ADD KEY `order_innovator_id_cc19bc84_fk_auth_user_id` (`innovator_id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `profile_city_id_ece7548c_fk_city_id` (`city_id`),
  ADD KEY `profile_state_id_c1224bf4_fk_state_id` (`state_id`),
  ADD KEY `profile_role_id_9bb7f33b` (`role_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategory_category_id_4b55556d_fk_category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `idea`
--
ALTER TABLE `idea`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_state_id_b686921b_fk_state_id` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_user_id_0104a377_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `idea`
--
ALTER TABLE `idea`
  ADD CONSTRAINT `idea_category_id_4a16d7d8_fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `idea_subcategory_id_b1f8c70b_fk_subcategory_id` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategory` (`id`),
  ADD CONSTRAINT `idea_user_id_f60d9009_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_idea_id_1bdefe6e_fk_idea_id` FOREIGN KEY (`idea_id`) REFERENCES `idea` (`id`),
  ADD CONSTRAINT `order_innovator_id_cc19bc84_fk_auth_user_id` FOREIGN KEY (`innovator_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `order_user_id_e323497c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `profile_city_id_ece7548c_fk_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  ADD CONSTRAINT `profile_role_id_9bb7f33b_fk_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `profile_state_id_c1224bf4_fk_state_id` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`),
  ADD CONSTRAINT `profile_user_id_2aeb6f6b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `subcategory_category_id_4b55556d_fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
