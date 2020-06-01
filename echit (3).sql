-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2020 at 09:51 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `echit`
--

-- --------------------------------------------------------

--
-- Table structure for table `auctiondetails`
--

CREATE TABLE `auctiondetails` (
  `u_id` int(20) NOT NULL,
  `c_id` int(20) NOT NULL,
  `m_id` varchar(60) NOT NULL,
  `lot_auction` varchar(60) NOT NULL,
  `amount` int(60) NOT NULL,
  `l_no` varchar(20) NOT NULL,
  `time` time NOT NULL,
  `month` int(50) NOT NULL,
  `monthlypaymentamount` int(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auction_date`
--

CREATE TABLE `auction_date` (
  `id` int(11) NOT NULL,
  `cid` int(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `stime` varchar(50) NOT NULL,
  `endtime` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auction_date`
--

INSERT INTO `auction_date` (`id`, `cid`, `date`, `stime`, `endtime`, `status`) VALUES
(1, 2, '2020-04-01', '15:00', '15:30', 'finish');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(24, 'Can view session', 6, 'view_session');

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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bank_account`
--

CREATE TABLE `bank_account` (
  `acc_id` int(11) NOT NULL,
  `ui_d` varchar(50) NOT NULL,
  `balence` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_account`
--

INSERT INTO `bank_account` (`acc_id`, `ui_d`, `balence`, `date`) VALUES
(1, '', '5000', '2020-04-17'),
(2, '', '5000', '2020-04-17'),
(3, '', '5000', '2020-04-18'),
(4, '', '5000', '2020-04-18');

-- --------------------------------------------------------

--
-- Table structure for table `bid`
--

CREATE TABLE `bid` (
  `bid_id` int(11) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `cid` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `b_date` varchar(50) NOT NULL,
  `b_time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bid`
--

INSERT INTO `bid` (`bid_id`, `uid`, `cid`, `amount`, `b_date`, `b_time`) VALUES
(1, '16', '1', '3000', '2020:04:19', '01:49:14'),
(2, '17', '1', '2000', '2020:04:19', '01:50:37'),
(3, '16', '1', '1000', '2020:04:19', '01:52:37'),
(4, '2', '2', '5000', '2020:04:29', '09:06:45');

-- --------------------------------------------------------

--
-- Table structure for table `chitdetails`
--

CREATE TABLE `chitdetails` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `amount` varchar(60) NOT NULL,
  `monthly_pay_amount` varchar(40) NOT NULL,
  `duration` varchar(50) NOT NULL,
  `s_date` date NOT NULL,
  `time` time NOT NULL,
  `end_date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chitdetails`
--

INSERT INTO `chitdetails` (`c_id`, `c_name`, `type`, `amount`, `monthly_pay_amount`, `duration`, `s_date`, `time`, `end_date`) VALUES
(1, 'dhyathi', 'auction', '300000', '4500', '2yr', '2020-04-01', '15:33:00', '2020-03-09'),
(2, 'karma', 'auction', '100000', '1000', '10months', '2020-03-10', '11:00:00', '2020-03-09'),
(3, 'nakshathra', 'auction', '300000', '4500', '3yr', '2020-02-09', '10:00:00', '2020-03-09'),
(5, 'dheepam', 'auction', '500000', '3500', '20months', '2020-03-19', '08:00:00', '2020-03-09'),
(6, 'lakshmi', 'lot', '5000000', '4500', '15months', '2020-03-10', '11:01:00', '2020-03-09'),
(7, 'Bagyasree', 'auction', '3000000', '5000', '20months', '2020-03-10', '02:45:00', '2020-03-09'),
(8, 'karunnya', 'lot', '300000', '5000', '3 year', '2020-04-01', '10:00:00', '2020-03-09'),
(9, 'kkk', 'auction', '300000', '5000', '3 year', '2020-03-31', '10:10:00', '2023-03-31'),
(10, 'deepam', 'lot', '10000', '1000', '10 month', '2020-04-30', '10:10:00', '2020-04-17');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `comp_id` int(10) NOT NULL,
  `c_id` varchar(50) NOT NULL,
  `u_id` int(10) NOT NULL,
  `description` varchar(70) NOT NULL,
  `date` date NOT NULL,
  `replay` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`comp_id`, `c_id`, `u_id`, `description`, `date`, `replay`) VALUES
(1, 'dhyathi', 15, 'ggfgfgf', '2020-03-10', 'ok done'),
(3, 'lakshmi', 18, 'notification delay', '2020-03-12', 'sorry its our fault'),
(6, 'lakshmi', 18, 'confirmation error', '2020-03-12', 'pending'),
(7, 'lakshmi', 18, 'message delay', '2020-03-19', 'pending'),
(8, 'lakshmi', 17, 'confirmation delay', '2020-03-19', 'sorry ');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-03-08 11:00:50.980714'),
(2, 'auth', '0001_initial', '2020-03-08 11:00:51.308814'),
(3, 'admin', '0001_initial', '2020-03-08 11:00:52.136898'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-03-08 11:00:52.324397'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-03-08 11:00:52.355626'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-03-08 11:00:52.558732'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-03-08 11:00:52.589995'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-03-08 11:00:52.621225'),
(9, 'auth', '0004_alter_user_username_opts', '2020-03-08 11:00:52.652472'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-03-08 11:00:52.761839'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-03-08 11:00:52.761839'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-03-08 11:00:52.777464'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-03-08 11:00:52.808727'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-03-08 11:00:52.839959'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-03-08 11:00:52.855599'),
(16, 'auth', '0011_update_proxy_permissions', '2020-03-08 11:00:52.871224'),
(17, 'sessions', '0001_initial', '2020-03-08 11:00:52.918094');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('7x3irbz1trgcn0sl2pr7p30xdcfvwco7', 'ZjExZmU3YzdhM2U5MWJjNjEwYWJmMjAwNzM1MWM0NzU3NjczNzZhNzp7ImFkbWluIjo4ODgsImZhZG1pbiI6NTU1LCJ1c2VyIjoyfQ==', '2020-05-22 18:37:44.354593'),
('bwqsmbw535g7h6maelu3qnbxu0nlamav', 'OGM4NGUzY2Y4MGRmMDk0OGFhMGRkYzM3NGM3Y2M1MmUzZjNjNGQ0Yjp7InVzZXIiOjE1LCJhZG1pbiI6ODg4LCJmYWRtaW4iOjU1NX0=', '2020-04-06 16:43:59.829166'),
('crgxh9pjijnyfcz77wdetxphv023sxqf', 'YTk2NTc0YjQzMGU3ZWI4ZTZhZjhmYjNlYjUxZTQ0ZTAzNjhjMzZkNzp7InVzZXIiOjE1LCJmYWRtaW4iOjU1NX0=', '2020-03-24 07:50:27.133452'),
('d017qmqr1splxrycjk4ihkfuaqym2v0q', 'ZjAyMGFiZWQ3ZjVkNzg5NGNmZDZhMDRiOTkzNDFlNzU0OWUwNDBkZDp7ImFkbWluIjo4ODh9', '2020-05-17 08:30:32.496580'),
('f7wq2rz53f6sfmf2lnkd8h51qdf9k1aq', 'MGUyY2U0N2Y5ZWViMjI2OTA2NTU1ZGUxYzM2MDBjMDNmMTUwNmY2Yzp7ImFkbWluIjo4ODgsImZhZG1pbiI6NTU1LCJ1c2VyIjoyLCJjaWQiOiIyIn0=', '2020-05-16 11:04:44.610668'),
('h2lcxgly9knnmwynyibqntpv6erc5ep1', 'YTg2NGJjMWRkMTBhZTU5YjQxYTQxNWNlNjYyN2Y5YzQ4MTAwODVhYjp7ImFkbWluIjo4ODgsImNpZCI6IjIiLCJmYWRtaW4iOjU1NSwidXNlciI6Mn0=', '2020-06-12 19:50:12.132172'),
('i0c5b5fy4o552oyszd1w71y62esblz3y', 'NGRlZWUyODYxZGQxNWM5N2I4NDBjOWEzMzdjNzQ3ZTE0ZDZiM2NhYTp7ImFkbWluIjo4ODgsInVzZXIiOjE2LCJjaWQiOiIxIn0=', '2020-04-30 23:17:29.115174'),
('kp0alv19sdxnvwpjxm6u2fewfcjzncv6', 'MTBhYTY2Zjc4OTQ5ZmRlNDUwNmZiZjY0YzVjZWNhNzJlMzhhOGFkYjp7ImFkbWluIjo4ODgsImZhZG1pbiI6NTU1LCJ1c2VyIjoxNiwiY2lkIjoiMSJ9', '2020-04-14 01:35:50.057381'),
('m2aaqb9gdsac413enywhd039p4i4pdwv', 'MmRmNDdhZmFiMzBhYTBhZDYyYTUzN2FhNTVhMDk3ZTY0ZDZhMDdkMDp7ImZhZG1pbiI6NTU1fQ==', '2020-05-17 08:31:15.423788'),
('v1o9ttu6kg1imuafz36c3tgauuaq6zq8', 'NWFkYjEwMTc4YTYxNzE0N2RmZGNhMWVlMWRiM2MxMmUwOTAyN2I2MDp7ImFkbWluIjo4ODgsImZhZG1pbiI6NTU1LCJ1c2VyIjoxNn0=', '2020-05-06 00:29:23.080342'),
('zls3kgzf9jv7fz3g9ztc8bcw0oeti4px', 'NDU5ZTI3MzVmMjg2ZTc3NTVlNjliZmUxNWJiYjc0NmI5M2Y0ZTliMDp7ImFkbWluIjo4ODgsImZhZG1pbiI6NTU1LCJjaWQiOiIxIn0=', '2020-05-09 04:06:55.571398'),
('zph4aga1u36k15356i77hgnt62j65b85', 'OWE2ZTliOTdkZmZhNGZlYzNhOWUzN2E4ZTc3YmNhMWVkZGIzZmI1Yzp7InVzZXIiOjE2LCJjaWQiOiIxIiwiYWRtaW4iOjg4OCwiZmFkbWluIjo1NTV9', '2020-05-02 21:22:14.117783');

-- --------------------------------------------------------

--
-- Table structure for table `finace_agent`
--

CREATE TABLE `finace_agent` (
  `fid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finace_agent`
--

INSERT INTO `finace_agent` (`fid`, `name`, `contact`, `address`, `email`) VALUES
(1, 'akhil', '9656585230', 'asdfghjkl', 'akhilt@gmail.com'),
(2, 'akhil', '9645784542', 'bbbbbbb', 'akhilt@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `l_id` int(11) NOT NULL,
  `uid` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(55) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`l_id`, `uid`, `username`, `password`, `type`) VALUES
(1, 15, 'anus@gmail.com', '123', 'user'),
(2, 2, 'hari@gmail.com', 'hari', 'user'),
(3, 888, 'admin@gmail.com', 'admin123', 'admin'),
(4, 555, 'fadmin', 'admin123', 'fadmin'),
(5, 17, 'shashi@gmail.com', '9387', 'user'),
(6, 18, 'anjaya@gmail.com', 'anju', 'user'),
(7, 19, 'shilpa@gmail.com', 'shilpa', 'user'),
(8, 20, 'saju@gmail.com', 'saju', 'user'),
(9, 21, 'mala@gmail.com', 'mala', 'user'),
(10, 22, 'poorni@gmail.com', 'poorni', 'user'),
(11, 2, 'akhilt@gmail.com', 'akhil123', 'agent');

-- --------------------------------------------------------

--
-- Table structure for table `lot`
--

CREATE TABLE `lot` (
  `lot_id` int(11) NOT NULL,
  `cid` varchar(10) NOT NULL,
  `uid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `monthlypayment`
--

CREATE TABLE `monthlypayment` (
  `m_id` int(20) NOT NULL,
  `u_id` int(20) NOT NULL,
  `paymentdate` date NOT NULL,
  `amount` int(60) NOT NULL,
  `status` varchar(80) NOT NULL,
  `chit_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monthlypayment`
--

INSERT INTO `monthlypayment` (`m_id`, `u_id`, `paymentdate`, `amount`, `status`, `chit_id`) VALUES
(5, 15, '2020-04-22', 1000, 'pending', 2),
(6, 5, '2020-04-29', 1000, 'pending', 1),
(7, 1, '2020-04-10', 1000, 'pending', 1),
(8, 5, '2020-05-01', 3000, 'pending', 1),
(9, 5, '2020-04-28', 5000, 'pending', 1),
(10, 5, '2020-04-15', 2000, 'pending', 1),
(11, 5, '2020-05-08', 1000, 'pending', 1);

-- --------------------------------------------------------

--
-- Table structure for table `monthly_pay`
--

CREATE TABLE `monthly_pay` (
  `pay_id` int(11) NOT NULL,
  `cid` varchar(50) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `chit_count` varchar(50) NOT NULL,
  `chit_payed_count` varchar(50) NOT NULL,
  `fine` varchar(50) NOT NULL DEFAULT 'pending',
  `dt` varchar(50) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monthly_pay`
--

INSERT INTO `monthly_pay` (`pay_id`, `cid`, `uid`, `chit_count`, `chit_payed_count`, `fine`, `dt`) VALUES
(1, '1', '7', '2', '1', '', '2020-05-02');

-- --------------------------------------------------------

--
-- Table structure for table `monthly_pay_noti`
--

CREATE TABLE `monthly_pay_noti` (
  `n_id` int(11) NOT NULL,
  `cid` varchar(50) NOT NULL,
  `amount_details` varchar(500) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monthly_pay_noti`
--

INSERT INTO `monthly_pay_noti` (`n_id`, `cid`, `amount_details`, `date`) VALUES
(1, '1', '3000', '2020-05-02'),
(2, '2', '3000', '2020-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `n_id` int(10) NOT NULL,
  `description` varchar(70) NOT NULL,
  `date` date NOT NULL,
  `cid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`n_id`, `description`, `date`, `cid`) VALUES
(1, 'jhbdh', '2020-04-29', 3),
(2, 'hgdhfgvj', '2020-04-29', 2);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `u_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(55) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `occupation` varchar(50) NOT NULL,
  `accountnumber` varchar(60) NOT NULL,
  `nomineename` varchar(50) NOT NULL,
  `relationship` varchar(50) NOT NULL,
  `naddress` varchar(50) NOT NULL,
  `mobilenumber` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `aadharnumber` varchar(50) NOT NULL,
  `ifsccode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`u_id`, `name`, `address`, `gender`, `occupation`, `accountnumber`, `nomineename`, `relationship`, `naddress`, `mobilenumber`, `email`, `aadharnumber`, `ifsccode`) VALUES
(2, 'Hari', 'anayambadi', 'Male', 'accountant', '4567788990000', 'radha', 'm', 'ambalapadi', '9835002376', 'hari@gmail.com', '83634672889054', 'sbi94746421'),
(6, 'pallavi', 'qubbattes', 'Female', 'doctor', '5363737882', 'latha', 'mother', 'qubytresss', '9761236597', 'pal@gmail.com', '546373882', 'sbi5662727272'),
(7, 'abina', 'malathil', 'Female', 'kooli', '567689643222', 'reeja', 'mother', 'manathil', '9387312333', 'abi@gmail.com', '14356747', 'sbi32526272'),
(8, 'Anilkumar', 'malaparamb house\r\n', 'Male', 'bussiness', '34276488921', 'chithra', 'wife', 'malaparamb', '9387126631', 'anil@gmail.com', '2985638710459', 'sbi459832'),
(9, 'Devan', 'parabil basar', 'Male', 'kooli', '292762524', 'diji', 'son', 'parabil basar', '9835002356', 'dhev@gmail', '3453783999022', 'sbi5662727272'),
(11, 'Vishnu Raj', 'thaadambatu thazham\r\ncalicut', 'Male', 'event agent', '647392020208', 'thaku', 'father', 'thaadambatu thazham\r\ncalicut', '9387350317', 'vishn@gmail.com', '78392020286455', 'sbi644537289'),
(12, 'Vishnu Raj', 'thaadambatu thazham\r\ncalicut', 'Male', 'event agent', '647392020208', 'thaku', 'father', 'thaadambatu thazham\r\ncalicut', '9387350317', 'vishn@gmail.com', '78392020286455', 'sbi644537289'),
(13, 'jithin', 'thachadath house\r\nkollam', 'Male', 'maketing agent', '4735252672282', 'mohanan', 'father', 'thachadath house\r\nkollam', '9400369645', 'jithu@gmail', '56372823261', 'sbi536377382'),
(14, 'arsha', 'kakkodi', 'Female', 'engineer', '84490303973', 'rajith', 'father', 'kakkodi', '9400369645', 'arsha@gmail.com', '1536474849404', 'sbi947464545'),
(15, 'anusree', 'kalamad', 'Female', 'sales agent', '236377383839', 'hari', 'father', 'kalathod', '9835002397', 'anus@gmail.com', '1536474849404', 'sbi5662727272'),
(17, 'shashi', 'kakkayam\r\ncalicut', 'Male', 'kooli', '236377383', 'thaka', 'wife', 'kakkayam\r\ncalicut', '9835000673', 'shashi@gmail.com', '22223449876', 'sbi9474645400'),
(18, 'Anjaya', 'manathanath meethal', 'Female', 'software engineeer', '247911826252', 'shyji', 'mother', 'manathanath meethal', '9400358821', 'anjaya@gmail.com', '19867222525262', 'sbi536396544'),
(19, 'shilpa', 'kazhakadath house\r\nkakkodi', 'Female', 'sales executive', 'sb863398634562', 'raghu', 'father', 'kazhakadath house\r\nkakkodi', '8345679310', 'shilpa@gmail.com', '43216789076443', 'gb86426708654'),
(20, 'saju', 'edallathil', 'Male', 'kooli', 'sb863398634562', 'radha', 'wife', 'edallathil', '9356872312', 'saju@gmail.com', '19867444525267', 'sbi536391234'),
(21, 'mala', 'kalathil paramba', 'Female', 'event agent', '308736354276', 'kikuti', 'father', 'kalathil paramba', '8245879323', 'mala@gmail.com', '23423449876', 'sbi53639987'),
(22, 'poornima', 'kaakkand house\r\nmayanad', 'Female', 'house wife', '2363675383839', 'chandhran', 'father', 'kaakkand house\r\nmayanad', '9835032356', 'poorni@gmail.com', '290873449876', 'sbi5363912386');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `r_id` int(20) NOT NULL,
  `c_id` int(20) NOT NULL,
  `u_id` int(20) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date` varchar(20) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`r_id`, `c_id`, `u_id`, `status`, `date`, `type`) VALUES
(8, 1, 5, 'finish', '2020-02-27', 'lot'),
(9, 1, 7, 'pending', '2020-02-27', 'Auction'),
(10, 2, 2, 'finish', '2020-02-27', 'Auction'),
(12, 1, 1, 'finish', '2020-02-27', 'lot'),
(13, 1, 4, 'pending', '2020-02-27', 'lot'),
(15, 5, 8, 'pending', '2020-02-27', 'Auction'),
(16, 1, 9, 'pending', '2020-02-28', 'Auction'),
(19, 6, 9, 'pending', '2020-02-28', ''),
(20, 3, 9, 'pending', '2020-03-06', ''),
(23, 2, 88, 'pending', '2020-03-08', ''),
(24, 5, 15, 'pending', '2020-03-08', ''),
(28, 6, 18, 'pending', '2020-03-12', ''),
(29, 6, 19, 'pending', '2020-03-18', ''),
(31, 2, 19, 'pending', '2020-03-18', ''),
(32, 2, 20, 'pending', '2020-03-18', ''),
(33, 2, 21, 'pending', '2020-03-18', ''),
(34, 2, 22, 'pending', '2020-03-23', ''),
(35, 1, 16, 'pending', '2020:04:19', 'lot'),
(36, 1, 17, 'approve', '2020:04:20', 'lot');

-- --------------------------------------------------------

--
-- Table structure for table `resultdetails`
--

CREATE TABLE `resultdetails` (
  `auc_id` int(20) NOT NULL,
  `u_id` int(20) NOT NULL,
  `c_id` int(20) NOT NULL,
  `amount` int(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  `document` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resultdetails`
--

INSERT INTO `resultdetails` (`auc_id`, `u_id`, `c_id`, `amount`, `date`, `time`, `status`, `document`) VALUES
(4, 15, 2, 40000, '2020-03-25', '17:15:30', 'auction', 'finish'),
(9, 16, 1, 5000, '2020:04:17', '23:12:36', '', ''),
(10, 2, 2, 5000, '2020:04:29', '09:06:45', 'auction', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `total_payment`
--

CREATE TABLE `total_payment` (
  `tp_id` int(11) NOT NULL,
  `cid` int(50) NOT NULL,
  `uid` int(50) NOT NULL,
  `dt` varchar(50) NOT NULL,
  `balence` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uaccount_details`
--

CREATE TABLE `uaccount_details` (
  `accid` int(11) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `cid` varchar(50) NOT NULL,
  `dt` varchar(50) NOT NULL,
  `tm` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `account_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uaccount_details`
--

INSERT INTO `uaccount_details` (`accid`, `uid`, `cid`, `dt`, `tm`, `amount`, `status`, `account_no`) VALUES
(2, '15', ' 2', '2020:05:30', '00:57:56', '37500', ' auction', '55555');

-- --------------------------------------------------------

--
-- Table structure for table `verification`
--

CREATE TABLE `verification` (
  `m_id` int(30) NOT NULL,
  `cid` int(20) NOT NULL,
  `uid` int(20) NOT NULL,
  `document_type` varchar(90) NOT NULL,
  `documents` varchar(100) NOT NULL,
  `status` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verification`
--

INSERT INTO `verification` (`m_id`, `cid`, `uid`, `document_type`, `documents`, `status`) VALUES
(1, 1, 1, 'fffff', 'audiofusion.docx', 'verified'),
(2, 1, 1, 'fffff', 'attendence_og.docx', 'pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auctiondetails`
--
ALTER TABLE `auctiondetails`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `auction_date`
--
ALTER TABLE `auction_date`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `bank_account`
--
ALTER TABLE `bank_account`
  ADD PRIMARY KEY (`acc_id`);

--
-- Indexes for table `bid`
--
ALTER TABLE `bid`
  ADD PRIMARY KEY (`bid_id`);

--
-- Indexes for table `chitdetails`
--
ALTER TABLE `chitdetails`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`comp_id`);

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
-- Indexes for table `finace_agent`
--
ALTER TABLE `finace_agent`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `lot`
--
ALTER TABLE `lot`
  ADD PRIMARY KEY (`lot_id`);

--
-- Indexes for table `monthlypayment`
--
ALTER TABLE `monthlypayment`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `monthly_pay`
--
ALTER TABLE `monthly_pay`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `monthly_pay_noti`
--
ALTER TABLE `monthly_pay_noti`
  ADD PRIMARY KEY (`n_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`n_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `resultdetails`
--
ALTER TABLE `resultdetails`
  ADD PRIMARY KEY (`auc_id`);

--
-- Indexes for table `total_payment`
--
ALTER TABLE `total_payment`
  ADD PRIMARY KEY (`tp_id`);

--
-- Indexes for table `uaccount_details`
--
ALTER TABLE `uaccount_details`
  ADD PRIMARY KEY (`accid`);

--
-- Indexes for table `verification`
--
ALTER TABLE `verification`
  ADD PRIMARY KEY (`m_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auction_date`
--
ALTER TABLE `auction_date`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `bank_account`
--
ALTER TABLE `bank_account`
  MODIFY `acc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bid`
--
ALTER TABLE `bid`
  MODIFY `bid_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `chitdetails`
--
ALTER TABLE `chitdetails`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `comp_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `finace_agent`
--
ALTER TABLE `finace_agent`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `l_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `lot`
--
ALTER TABLE `lot`
  MODIFY `lot_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `monthlypayment`
--
ALTER TABLE `monthlypayment`
  MODIFY `m_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `monthly_pay`
--
ALTER TABLE `monthly_pay`
  MODIFY `pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `monthly_pay_noti`
--
ALTER TABLE `monthly_pay_noti`
  MODIFY `n_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `n_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `r_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `resultdetails`
--
ALTER TABLE `resultdetails`
  MODIFY `auc_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `total_payment`
--
ALTER TABLE `total_payment`
  MODIFY `tp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uaccount_details`
--
ALTER TABLE `uaccount_details`
  MODIFY `accid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `verification`
--
ALTER TABLE `verification`
  MODIFY `m_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
