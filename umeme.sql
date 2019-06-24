-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2015 at 10:19 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `umeme`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE IF NOT EXISTS `answer` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer_option` varchar(11) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `answer_status` enum('correct','wrong') NOT NULL,
  `date_added` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `question_id`, `answer_option`, `answer`, `answer_status`, `date_added`) VALUES
(1, 1, 'A', 'Arrears Collection', 'wrong', 0),
(2, 1, 'B', 'Preloaded Units and Arrears collection', 'wrong', 0),
(3, 1, 'C', 'Work Charges and Energy Recovery Collection', 'wrong', 0),
(4, 1, 'D', 'All the above', 'correct', 0),
(5, 2, 'A', 'Meter was not on Schedule', 'wrong', 0),
(6, 2, 'B', 'The Account is on Code 20', 'wrong', 0),
(7, 2, 'C', 'Rotten Pole', 'wrong', 0),
(8, 2, 'D', '(A, (B and (C', 'correct', 0),
(9, 3, 'A', 'Immaculate Asiimwe', 'correct', 0),
(10, 3, 'B', 'Joseph Atuhura', 'wrong', 0),
(11, 3, 'C', 'Thomas Oryang', 'wrong', 0),
(12, 3, 'D', 'Amelo Ejalu', 'wrong', 0),
(13, 4, 'A', 'CTO', 'wrong', 0),
(14, 4, 'B', 'COO', 'wrong', 0),
(15, 4, 'C', 'CIO', 'correct', 0),
(16, 4, 'D', 'CFO', 'wrong', 0),
(17, 5, 'A', 'Cable ties', 'wrong', 0),
(18, 5, 'B', 'Straining Clamps', 'wrong', 0),
(19, 5, 'C', 'Pin Insulators', 'correct', 0),
(20, 5, 'D', 'DIN Rail', 'wrong', 0),
(21, 6, 'A', 'After conversion a Customer must come to Umeme office for Activation', 'wrong', 0),
(22, 6, 'B', 'A Customer Converted to Yaka should make first purchase of units at Umeme offices', 'wrong', 0),
(23, 6, 'C', 'A customer must have entered into a ?prepayment Meter Agreement? with Umeme to be converted to Yaka!', 'correct', 0),
(24, 6, 'D', 'A customer who refuses Yaka is disconnected', 'wrong', 0),
(25, 7, 'A', 'Umeme Offices', 'wrong', 0),
(26, 7, 'B', 'African Vending Systems (AVS)', 'correct', 0),
(27, 7, 'C', 'Mobile Money (MTN, Airtel, AfriCell, M-PesA', 'wrong', 0),
(28, 7, 'D', 'Banks', 'wrong', 0),
(29, 7, 'E', 'Ezee Money', 'wrong', 0),
(30, 8, 'A', 'All meters are sealed after installation', 'wrong', 0),
(31, 8, 'B', 'Only the prepayment boxes are sealed', 'wrong', 0),
(32, 8, 'C', 'All meters are sealed before installation', 'correct', 0),
(33, 8, 'D', 'Prepayment boxes and the meters are all sealed after installation', 'wrong', 0),
(34, 9, 'A', '#072#', 'wrong', 0),
(35, 9, 'B', '#100#', 'wrong', 0),
(36, 9, 'C', '#200#', 'correct', 0),
(37, 9, 'D', '#202#', 'wrong', 0),
(38, 10, 'A', 'Provides an indication of the rate of consumption', 'correct', 0),
(39, 10, 'B', 'Indicates Communication with the CIU', 'wrong', 0),
(40, 10, 'C', 'Will pulse 100 times for every KWH.', 'wrong', 0),
(41, 10, 'D', 'Meter ON Indicator', 'wrong', 0),
(42, 11, 'A', 'Borrow Yaka! units from any mobile network and pay back later', 'wrong', 0),
(43, 11, 'B', 'Share Units ?Me to You?', 'wrong', 0),
(44, 11, 'C', 'Enjoy discounted units when purchases are made ?off-peak hours?', 'wrong', 0),
(45, 11, 'D', 'Purchase using only MTN and Airtel Mobile money.', 'wrong', 0),
(46, 12, 'A', 'They are from the same manufacturer', 'wrong', 0),
(47, 12, 'B', 'They are all digital meters', 'wrong', 0),
(48, 12, 'C', 'They are all ?STS? meters', 'wrong', 0),
(49, 12, 'D', 'They are all class 1 Meters.', 'correct', 0),
(50, 13, 'A', 'BEC44 09', 'correct', 0),
(51, 13, 'B', 'BEC44 10', 'wrong', 0),
(52, 13, 'C', 'BEC 55 09', 'wrong', 0),
(53, 13, 'D', 'None of the above', 'wrong', 0),
(54, 14, 'A', '0 V and 110 v', 'wrong', 0),
(55, 14, 'B', '120V and 280v', 'correct', 0),
(56, 14, 'C', '20V and 240v', 'wrong', 0),
(57, 14, 'D', '110v and 300 V', 'wrong', 0),
(58, 15, 'A', 'The first easily accessible entrance into customer?s premises', 'wrong', 0),
(59, 15, 'B', 'It is Installed 150cm from the ground', 'wrong', 0),
(60, 15, 'C', 'It is Installed 30cm from the door', 'wrong', 0),
(61, 15, 'D', 'It?s dictated by the Customer', 'correct', 0),
(62, 16, 'A', 'GSM', 'correct', 0),
(63, 16, 'B', 'Power Line Carrier (PLC', 'wrong', 0),
(64, 16, 'C', 'Radio Frequency (RF', 'wrong', 0),
(65, 16, 'D', 'MBUS', 'wrong', 0),
(66, 17, 'A', 'Blue copy', 'wrong', 0),
(67, 17, 'B', 'Yellow copy', 'correct', 0),
(68, 17, 'C', 'Green copy', 'wrong', 0),
(69, 17, 'D', 'White copy', 'wrong', 0),
(70, 18, 'A', 'Clear tamper tokens', 'wrong', 0),
(71, 18, 'B', 'Free issue tokens', 'wrong', 0),
(72, 18, 'C', 'Key change tokens', 'correct', 0),
(73, 18, 'D', 'Engineering tokens', 'wrong', 0),
(74, 19, 'A', 'It has a customer?s meter number embossed on it', 'wrong', 0),
(75, 19, 'B', 'One can?t vend without it', 'correct', 0),
(76, 19, 'C', 'It can be used to get Customer details at on Vending system', 'wrong', 0),
(77, 19, 'D', 'It is meter specific', 'wrong', 0),
(78, 20, 'A', 'dddddddd', 'wrong', 0),
(79, 20, 'B', 'EEEEEE', 'wrong', 0),
(80, 20, 'C', 'AAAAAAA', 'correct', 0),
(81, 20, 'D', '000000000', 'wrong', 0),
(82, 21, 'A', 'Total amount Tendered', 'wrong', 0),
(83, 21, 'B', 'Tariff Index', 'wrong', 0),
(84, 21, 'C', 'Supply Group Code (SGC', 'wrong', 0),
(85, 21, 'D', 'Cashiers Name', 'correct', 0),
(86, 22, 'A', 'Voltage', 'wrong', 0),
(87, 22, 'B', 'Strong Magnetic field Recharge', 'correct', 0),
(88, 22, 'C', 'Current', 'wrong', 0),
(89, 22, 'D', 'Reverse Energy', 'wrong', 0),
(90, 23, 'A', 'True', 'wrong', 0),
(91, 23, 'B', 'False', 'correct', 0),
(92, 24, 'A', 'Citi (GT) Bank', 'correct', 0),
(93, 24, 'B', 'Eco Bank', 'wrong', 0),
(94, 24, 'C', 'Tropical Bank', 'wrong', 0),
(95, 24, 'D', 'Opportunity Bank', 'wrong', 0),
(96, 25, 'A', 'Enroll the customer', 'wrong', 0),
(97, 25, 'B', 'Issue a service Order', 'wrong', 0),
(98, 25, 'C', 'Update Ultima of the new meter change', 'correct', 0),
(99, 25, 'D', 'Activate the Work Charges Sub-account', 'wrong', 0),
(100, 26, 'A', 'The system will compute the 15 discounted units for that month only', 'wrong', 0),
(101, 26, 'B', 'The system will compute the discounted units for all the 7 months', 'correct', 0),
(102, 26, 'C', 'The customer will not be entitled to the discounted Units', 'wrong', 0),
(103, 26, 'D', 'The customer will get discounted Units for only 6 months', 'wrong', 0),
(104, 27, 'A', '20 digits', 'wrong', 0),
(105, 27, 'B', '40 digits', 'correct', 0),
(106, 27, 'C', '10 digits', 'wrong', 0),
(107, 27, 'D', '30 digits', 'wrong', 0),
(108, 28, 'A', '5%', 'wrong', 0),
(109, 28, 'B', '19%', 'correct', 0),
(110, 28, 'C', '0%', 'wrong', 0),
(111, 28, 'D', '2.47%', 'wrong', 0),
(112, 29, 'A', 'Stored.', 'wrong', 0),
(113, 29, 'B', 'New.', 'wrong', 0),
(114, 29, 'C', 'Received from customer premise.', 'wrong', 0),
(115, 29, 'D', 'Transfer for storage.', 'wrong', 0),
(116, 29, 'E', 'None of above', 'correct', 0),
(117, 30, 'A', 'Account open date.', 'wrong', 0),
(118, 30, 'B', 'Application date', 'wrong', 0),
(119, 30, 'C', 'Meter Open date', 'correct', 0),
(120, 30, 'D', 'Closing date', 'wrong', 0),
(121, 31, 'A', 'Account is not de-enrolled.', 'wrong', 0),
(122, 31, 'B', 'Post-paid meter not removed.', 'wrong', 0),
(123, 31, 'C', 'Service Point not edited.', 'correct', 0),
(124, 31, 'D', 'Prepayment meter not connected in UMS?', 'wrong', 0),
(125, 32, 'A', 'II and IV', 'wrong', 0),
(126, 32, 'B', 'III, II, I', 'wrong', 0),
(127, 32, 'C', 'I and II', 'correct', 0),
(128, 32, 'D', 'IV and I', 'wrong', 0),
(129, 33, 'A', 'Holding the communication cable in position', 'wrong', 0),
(130, 33, 'B', 'Holding prepayment boxes on the pole', 'correct', 0),
(131, 33, 'C', 'Holding the meter in position.', 'wrong', 0),
(132, 33, 'D', 'Holding the meter firmly in the box', 'wrong', 0),
(133, 34, 'A', 'Yaka! Empowers the customer to control and manage electricity usage', 'wrong', 0),
(134, 34, 'B', 'The service is made convenient by extending it to the customer', 'wrong', 0),
(135, 34, 'C', 'The customer gets more units for any amount than it would be if on post paid', 'correct', 0),
(136, 34, 'D', 'It enables the customer to buy electricity units in affordable quantities before use', 'wrong', 0),
(137, 35, 'A', 'Business efficiency', 'wrong', 0),
(138, 35, 'B', 'Customer Service delivery', 'wrong', 0),
(139, 35, 'C', 'Improved cash flows', 'wrong', 0),
(140, 35, 'D', 'A,B and C above', 'correct', 0),
(141, 35, 'D', 'A,B and C above', 'correct', 0),
(142, 35, 'E', 'All the above except B', 'wrong', 0),
(143, 36, 'A', 'The customer', 'wrong', 0),
(144, 36, 'B', 'Both Umeme &the customer', 'wrong', 0),
(145, 36, 'C', 'ERA', 'wrong', 0),
(146, 36, 'D', 'Umeme', 'correct', 0),
(147, 37, 'A', 'It?s the same', 'correct', 0),
(148, 37, 'B', 'Yes', 'wrong', 0),
(149, 37, 'C', 'No', 'wrong', 0),
(150, 38, 'A', 'Payway', 'wrong', 0),
(151, 38, 'B', 'All Banks', 'correct', 0),
(152, 38, 'C', 'Ezee money', 'wrong', 0),
(153, 38, 'D', 'All mobile money platforms (MTN, Airtel, Africell, UTL)', 'wrong', 0),
(154, 39, 'A', 'Offsets against the final bill.', 'correct', 0),
(155, 39, 'B', 'Refunded in form of cash from Umeme service centres', 'wrong', 0),
(156, 39, 'C', 'Not refundable to customers', 'wrong', 0),
(157, 39, 'D', 'None of the Above', 'wrong', 0),
(158, 40, 'A', 'Press #100# for an Itron meter', 'correct', 0),
(159, 40, 'B', 'Press #100# for a Conlog Meter', 'wrong', 0),
(160, 40, 'C', 'Press 100 Enter for an Itron Meter', 'wrong', 0),
(161, 40, 'D', 'Refer or use previous token vouchers to purchase', 'wrong', 0),
(162, 41, 'A', 'Call police', 'wrong', 0),
(163, 41, 'B', 'Buy  a new token', 'wrong', 0),
(164, 41, 'C', 'Press #100#', 'wrong', 0),
(165, 41, 'D', 'Call Umeme Contact Centre on toll free number 0800 285 285', 'correct', 0),
(166, 42, 'A', 'Through the Customer Interface Unit', 'wrong', 0),
(167, 42, 'B', 'Through Umeme Contact Centre', 'correct', 0),
(168, 42, 'C', 'From Third Party vendors', 'wrong', 0),
(169, 42, 'D', 'All the above', 'wrong', 0),
(170, 43, 'A', 'Service fee.', 'wrong', 0),
(171, 43, 'B', 'Discounted Units', 'wrong', 0),
(172, 43, 'C', 'First Purchases made in the month', 'wrong', 0),
(173, 43, 'D', 'Arrears', 'wrong', 0),
(174, 43, 'E', 'A and D', 'correct', 0),
(175, 43, 'F', 'B and C', 'wrong', 0),
(176, 43, 'E', 'Vending channel', 'correct', 0),
(177, 44, 'A', 'Communication Cable', 'wrong', 0),
(178, 44, 'B', 'Customer interface Unit (CIU)', 'wrong', 0),
(179, 44, 'C', 'Metering Unit (MU)', 'wrong', 0),
(180, 44, 'D', 'Insulating Piercing Connector (IPC', 'wrong', 0),
(181, 45, 'A', 'Conlog Meters', 'wrong', 0),
(182, 45, 'B', 'Landis & Gyr', 'wrong', 0),
(183, 45, 'C', 'Itron Meters', 'wrong', 0),
(184, 45, 'D', 'Hexing', 'wrong', 0),
(185, 45, 'E', 'A and C', 'correct', 0),
(186, 45, 'F', 'A and D', 'wrong', 0),
(187, 46, 'A', '1st June 2011', 'wrong', 0),
(188, 46, 'B', '28th July 2011', 'correct', 0),
(189, 46, 'C', '14th March 2011', 'wrong', 0),
(190, 46, 'D', '22nd August 2012', 'wrong', 0),
(191, 47, 'A', 'Muttico Technical Services Ltd.', 'wrong', 0),
(192, 47, 'B', 'Haso Engineers Ltd.', 'wrong', 0),
(193, 47, 'C', 'Megger Technical Services Ltd.', 'correct', 0),
(194, 47, 'D', 'All the three above', 'wrong', 0),
(195, 48, 'A', 'Grace Kiwanuka', 'wrong', 0),
(196, 48, 'B', 'Charles Nagimesi', 'wrong', 0),
(197, 48, 'C', 'David Lukoma', 'wrong', 0),
(198, 48, 'D', 'Thomas Namuyenga', 'wrong', 0),
(199, 48, 'E', 'All the four above', 'correct', 0),
(200, 49, 'A', 'Below 30kWh', 'wrong', 0),
(201, 49, 'B', 'Below 15kWh', 'correct', 0),
(202, 49, 'C', 'At 15kWh', 'wrong', 0),
(203, 49, 'D', 'At 30kWh', 'wrong', 0),
(204, 50, 'A', 'Token has already been used', 'correct', 0),
(205, 50, 'B', 'Meter coded to a default code', 'wrong', 0),
(206, 50, 'C', 'Token has been entered incorrectly', 'wrong', 0),
(207, 50, 'D', 'Token value too large to be entered', 'wrong', 0),
(208, 51, 'A', 'Different tariff index', 'wrong', 0),
(209, 51, 'B', 'The token is of another meter', 'wrong', 0),
(210, 51, 'C', 'Customer?s Account not activated', 'correct', 0),
(211, 51, 'D', 'Token is expired', 'wrong', 0),
(212, 51, 'E', 'Incorrectly entered token', 'wrong', 0),
(213, 52, 'A', 'When not set up on the Ultima system', 'correct', 0),
(214, 52, 'B', 'Purchased on wrong meter number', 'wrong', 0),
(215, 52, 'C', 'Meter swap', 'wrong', 0),
(216, 52, 'D', 'None of the above', 'wrong', 0),
(217, 53, 'A', 'Switch off the downstream MCB', 'wrong', 0),
(218, 53, 'B', 'Press #100#', 'wrong', 0),
(219, 53, 'C', 'Turn off the main switch and turn on again', 'wrong', 0),
(220, 53, 'D', 'Press and hold the ?Backspace? button for at least 5 seconds', 'correct', 0),
(221, 54, 'A', 'The CIU batteries are used up', 'wrong', 0),
(222, 54, 'B', 'There is a Communication failure between meter and CIU', 'correct', 0),
(223, 54, 'C', 'The Meter is in tamper mode', 'wrong', 0),
(224, 54, 'D', 'The Customer has seven minutes to be disconnected.', 'wrong', 0),
(225, 55, 'A', 'System Transport Standard', 'wrong', 0),
(226, 55, 'B', 'Standard Transfer Specification', 'wrong', 0),
(227, 55, 'C', 'Secure Technical Standard', 'correct', 0),
(228, 55, 'D', 'Specific Transfer Socket', 'wrong', 0),
(229, 56, 'A', 'Recovered by 10% deduction in OICS', 'wrong', 0),
(230, 56, 'B', 'They are bonus units given to the Customer', 'wrong', 0),
(231, 56, 'C', 'Recovered by 10% deduction in Ultima', 'wrong', 0),
(232, 56, 'D', 'They are 35 kWh', 'correct', 0),
(233, 56, 'E', 'They are worth Ugx18,500 for a domestic customer', 'wrong', 0),
(234, 57, 'A', 'Powering communities, and Industries in Uganda', 'wrong', 0),
(235, 57, 'B', 'Powering Uganda', 'wrong', 0),
(236, 57, 'C', 'Powering communities and industries for a prosperous Uganda', 'wrong', 0),
(237, 57, 'D', 'Powering communities, business and industries for a prosperous Uganda', 'correct', 0),
(238, 58, 'A', 'Call Umeme Centre on 285285', 'wrong', 0),
(239, 58, 'B', 'Reach Umeme via Whatsapp at 0772285285', 'wrong', 0),
(240, 58, 'C', 'Through the Umeme Website', 'correct', 0),
(241, 58, 'D', 'Through Umeme App', 'wrong', 0),
(242, 59, 'A', 'Auto Advanced Metering infrastructure', 'wrong', 0),
(243, 59, 'B', 'Automated Meter Reading', 'correct', 0),
(244, 59, 'C', 'Audio Modem Riser', 'wrong', 0),
(245, 59, 'D', 'Automated Meter Reversal', 'wrong', 0),
(246, 60, 'A', 'Domestic Single Phase', 'wrong', 0),
(247, 60, 'B', 'Small Commercial customers', 'wrong', 0),
(248, 60, 'C', 'Large Power users', 'correct', 0),
(249, 60, 'D', 'None of the above', 'wrong', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `ip_address` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `user_agent` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(40) COLLATE utf8_bin NOT NULL,
  `login` varchar(50) COLLATE utf8_bin NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(2, '::1', 'admin', '2015-12-11 08:02:05');

-- --------------------------------------------------------

--
-- Table structure for table `mosms`
--

CREATE TABLE IF NOT EXISTS `mosms` (
  `id` int(11) NOT NULL,
  `msisdn` varchar(25) DEFAULT NULL,
  `message` text,
  `receiver` varchar(25) DEFAULT NULL,
  `status` varchar(10) NOT NULL,
  `entry_date` datetime DEFAULT NULL,
  `response` text,
  `response_date` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mosms`
--

INSERT INTO `mosms` (`id`, `msisdn`, `message`, `receiver`, `status`, `entry_date`, `response`, `response_date`) VALUES
(1, '256752444904', 'Hello', NULL, 'invalid', '2015-12-11 00:29:52', NULL, '2015-12-11 00:29:52'),
(2, '256752444904', 'Hello', NULL, 'invalid', '2015-12-11 00:29:57', ' ', '2015-12-11 00:29:57'),
(3, '256752444904', 'hipipo Hipipo breakthrough artist of the year Rhoda k shelbie', NULL, 'invalid', '2015-12-11 00:30:12', ' ', '2015-12-11 00:30:12'),
(4, '256752444904', 'hello', NULL, 'invalid', '2015-12-11 00:30:40', ' ', '2015-12-11 00:30:40'),
(5, '256752444904', 'hello', NULL, 'invalid', '2015-12-11 00:31:57', 'Prefix You have earned 10 points.You now have 50 pts. Vote, WIN and Drive A Convertible Car. Type HiPipo <Space> Category <Space> Artist Name or Song and SEND to 6933', '2015-12-11 00:31:57'),
(6, '256752444904', 'hello', NULL, 'invalid', '2015-12-11 00:32:16', 'Prefix You have earned 10 points.You now have 60 pts. Vote, WIN and Drive A Convertible Car. Type HiPipo <Space> Category <Space> Artist Name or Song and SEND to 6933', '2015-12-11 00:32:17'),
(7, '256752444904', 'hello', NULL, 'invalid', '2015-12-11 00:33:29', 'Prefix ', '2015-12-11 00:33:29'),
(8, '256752444904', 'hello', NULL, 'invalid', '2015-12-11 00:38:18', 'Prefix In Prepayment Vending System sub accounts are used for:', '2015-12-11 00:38:18'),
(9, '256752444904', 'hello', NULL, 'invalid', '2015-12-11 00:40:25', 'In Prepayment Vending System sub accounts are used for:', '2015-12-11 00:40:25'),
(10, '256752444904', 'hello', NULL, 'invalid', '2015-12-11 00:43:17', 'In Prepayment Vending System sub accounts are used for: Array', '2015-12-11 00:43:17'),
(11, '256752444904', 'hello', NULL, 'invalid', '2015-12-11 00:43:30', 'In Prepayment Vending System sub accounts are used for: d) All the above', '2015-12-11 00:43:30'),
(12, '256752444904', 'hello', NULL, 'invalid', '2015-12-11 00:44:21', 'In Prepayment Vending System sub accounts are used for: a) Arrears Collectionb) Preloaded Units and Arrears collectionc) Work Charges and Energy Recovery Collectiond) All the above', '2015-12-11 00:44:21'),
(13, '256752444904', 'hello', NULL, 'invalid', '2015-12-11 00:50:54', 'In Prepayment Vending System sub accounts are used for: B a) Arrears CollectionC b) Preloaded Units and Arrears collectionD c) Work Charges and Energy Recovery CollectionE d) All the above', '2015-12-11 00:50:54'),
(14, '256752444904', 'hello', NULL, 'invalid', '2015-12-11 00:52:01', 'In Prepayment Vending System sub accounts are used for: A a) Arrears CollectionB b) Preloaded Units and Arrears collectionC c) Work Charges and Energy Recovery CollectionD d) All the above', '2015-12-11 00:52:01'),
(15, '256752444904', 'hello', NULL, 'invalid', '2015-12-11 00:52:17', 'In Prepayment Vending System sub accounts are used for: A. a) Arrears CollectionB. b) Preloaded Units and Arrears collectionC. c) Work Charges and Energy Recovery CollectionD. d) All the above', '2015-12-11 00:52:17'),
(16, '256752444904', 'hello', NULL, 'invalid', '2015-12-11 00:52:24', 'In Prepayment Vending System sub accounts are used for: A a) Arrears CollectionB b) Preloaded Units and Arrears collectionC c) Work Charges and Energy Recovery CollectionD d) All the above', '2015-12-11 00:52:24'),
(17, '256752444904', 'hello', NULL, 'invalid', '2015-12-11 01:28:50', 'In Prepayment Vending System sub accounts are used for:  A Arrears Collection B Preloaded Units and Arrears collection C Work Charges and Energy Recovery Collection D All the above', '2015-12-11 01:28:51'),
(18, '256752444904', 'hello', NULL, 'invalid', '2015-12-11 02:30:36', 'In Prepayment Vending System sub accounts are used for:  Arrears Collection Preloaded Units and Arrears collection Work Charges and Energy Recovery Collection All the above', '2015-12-11 02:30:36'),
(19, '256752444904', 'hello', NULL, 'invalid', '2015-12-11 02:31:12', 'In Prepayment Vending System sub accounts are used for:  - Arrears Collection - Preloaded Units and Arrears collection - Work Charges and Energy Recovery Collection - All the above', '2015-12-11 02:31:12'),
(20, '256752444904', 'hello', NULL, 'invalid', '2015-12-11 02:32:02', 'In Prepayment Vending System sub accounts are used for:  - Arrears Collection - Preloaded Units and Arrears collection - Work Charges and Energy Recovery Collection - All the above', '2015-12-11 02:32:02'),
(21, '256752444904', 'hello', NULL, 'invalid', '2015-12-11 02:32:15', 'In Prepayment Vending System sub accounts are used for: A - Arrears CollectionB - Preloaded Units and Arrears collectionC - Work Charges and Energy Recovery CollectionD - All the above', '2015-12-11 02:32:15'),
(22, '256752444904', 'hello', NULL, 'invalid', '2015-12-11 02:33:29', 'In Prepayment Vending System sub accounts are used for: <br>A - Arrears Collection<br>B - Preloaded Units and Arrears collection<br>C - Work Charges and Energy Recovery Collection<br>D - All the above', '2015-12-11 02:33:29'),
(23, '256752444904', 'hello', NULL, 'invalid', '2015-12-11 02:33:47', 'In Prepayment Vending System sub accounts are used for: \r\nA - Arrears Collection\r\nB - Preloaded Units and Arrears collection\r\nC - Work Charges and Energy Recovery Collection\r\nD - All the above', '2015-12-11 02:33:47'),
(24, '256752444904', 'hello', NULL, 'invalid', '2015-12-11 02:33:55', 'In Prepayment Vending System sub accounts are used for: \r\n <br>A - Arrears Collection\r\n <br>B - Preloaded Units and Arrears collection\r\n <br>C - Work Charges and Energy Recovery Collection\r\n <br>D - All the above', '2015-12-11 02:33:56'),
(25, '256752444904', 'hello', NULL, 'invalid', '2015-12-11 02:42:39', 'In Prepayment Vending System sub accounts are used for: \r\n <br>A - Arrears Collection\r\n <br>B - Preloaded Units and Arrears collection\r\n <br>C - Work Charges and Energy Recovery Collection\r\n <br>D - All the above', '2015-12-11 02:42:00'),
(26, '256752444904', 'hello', NULL, 'invalid', '2015-12-11 02:42:44', 'continue', '2015-12-11 02:42:00'),
(27, '256752444905', 'hello', NULL, 'valid', '2015-12-11 02:48:15', 'You have earned 10 points.You now have <POINTS> pts. Vote, WIN and Drive A Convertible Car. Type HiPipo <Space> Category <Space> Artist Name or Song and SEND to 6933', '2015-12-11 02:48:00'),
(28, '256752444905', 'hello', NULL, 'invalid', '2015-12-11 02:48:24', 'continue', '2015-12-11 02:48:00'),
(29, '256752444905', 'hello', NULL, 'invalid', '2015-12-11 02:48:27', 'continue', '2015-12-11 02:48:00'),
(30, '256752444915', 'hello', NULL, 'invalid', '2015-12-11 02:49:21', 'You have earned 10 points.You now have <POINTS> pts. Vote, WIN and Drive A Convertible Car. Type HiPipo <Space> Category <Space> Artist Name or Song and SEND to 6933', '2015-12-11 02:49:00'),
(31, '256752444915', 'hello', NULL, 'invalid', '2015-12-11 02:49:25', 'continue', '2015-12-11 02:49:00'),
(32, '256752444915', 'hello', NULL, 'invalid', '2015-12-11 03:44:57', 'continue', '2015-12-11 03:44:00'),
(33, '256752444915', 'hello', NULL, 'invalid', '2015-12-11 03:45:12', 'continue', '2015-12-11 03:45:00'),
(34, '256752434995', 'hello', NULL, '', '2015-12-11 04:07:56', NULL, NULL),
(35, '256752414995', 'hello', NULL, 'invalid', '2015-12-11 04:08:25', 'You have earned 10 points.You now have <POINTS> pts. Vote, WIN and Drive A Convertible Car. Type HiPipo <Space> Category <Space> Artist Name or Song and SEND to 6933', '2015-12-11 04:08:00'),
(36, '256752414995', 'hello', NULL, '', '2015-12-11 04:10:16', NULL, NULL),
(37, '256752414995', 'hello', NULL, 'invalid', '2015-12-11 04:10:33', 'Incorrect', '2015-12-11 04:10:00'),
(38, '256752414995', 'hello', NULL, 'invalid', '2015-12-11 04:11:00', 'Incorrect In Prepayment Vending System sub accounts are used for: \r\n <br>A - Arrears Collection\r\n <br>B - Preloaded Units and Arrears collection\r\n <br>C - Work Charges and Energy Recovery Collection\r\n <br>D - All the above', '2015-12-11 04:11:00'),
(39, '256752414995', 'hello', NULL, 'invalid', '2015-12-11 04:11:04', 'Incorrect In Prepayment Vending System sub accounts are used for: \r\n <br>A - Arrears Collection\r\n <br>B - Preloaded Units and Arrears collection\r\n <br>C - Work Charges and Energy Recovery Collection\r\n <br>D - All the above', '2015-12-11 04:11:00'),
(40, '256752414995', 'hello', NULL, 'invalid', '2015-12-11 04:11:06', 'Incorrect In Prepayment Vending System sub accounts are used for: \r\n <br>A - Arrears Collection\r\n <br>B - Preloaded Units and Arrears collection\r\n <br>C - Work Charges and Energy Recovery Collection\r\n <br>D - All the above', '2015-12-11 04:11:00'),
(41, '256752414995', 'hello', NULL, 'invalid', '2015-12-11 04:11:41', 'Incorrect All my neighbors were converted to Yaka what could be the reason why I was not converted? \r\n <br>A - Meter was not on Schedule\r\n <br>B - The Account is on Code 20\r\n <br>C - Rotten Pole\r\n <br>D - (A) (B) and ?', '2015-12-11 04:11:00'),
(42, '256752414995', 'hello', NULL, 'invalid', '2015-12-11 04:11:44', 'Incorrect Who is the Prepayment Manager? \r\n <br>A - Immaculate Asiimwe\r\n <br>B - Joseph Atuhura\r\n <br>C - Thomas Oryang\r\n <br>D - Amelo Ejalu', '2015-12-11 04:11:00'),
(43, '256752414995', 'hello', NULL, 'invalid', '2015-12-11 04:11:46', 'Incorrect Sorry Please Try again Later. Q_Application Down ', '2015-12-11 04:11:00'),
(44, '256752414995', 'hello', NULL, 'invalid', '2015-12-11 04:25:39', 'In Prepayment Vending System sub accounts are used for: \r\n <br>A - Arrears Collection\r\n <br>B - Preloaded Units and Arrears collection\r\n <br>C - Work Charges and Energy Recovery Collection\r\n <br>D - All the above', '2015-12-11 04:25:00'),
(45, '256752414995', 'hello', NULL, 'invalid', '2015-12-11 04:25:41', 'Incorrect All my neighbors were converted to Yaka what could be the reason why I was not converted? \r\n <br>A - Meter was not on Schedule\r\n <br>B - The Account is on Code 20\r\n <br>C - Rotten Pole\r\n <br>D - (A) (B) and ?', '2015-12-11 04:25:00'),
(46, '256752414995', 'hello', NULL, 'invalid', '2015-12-11 04:25:43', 'Incorrect Who is the Prepayment Manager? \r\n <br>A - Immaculate Asiimwe\r\n <br>B - Joseph Atuhura\r\n <br>C - Thomas Oryang\r\n <br>D - Amelo Ejalu', '2015-12-11 04:25:00'),
(47, '256752414995', 'hello', NULL, 'invalid', '2015-12-11 04:25:44', 'Incorrect Sorry Please Try again Later. Q_Application Down ', '2015-12-11 04:25:00'),
(48, '256752414995', 'hello', NULL, 'invalid', '2015-12-11 04:25:46', 'In Prepayment Vending System sub accounts are used for: \r\n <br>A - Arrears Collection\r\n <br>B - Preloaded Units and Arrears collection\r\n <br>C - Work Charges and Energy Recovery Collection\r\n <br>D - All the above', '2015-12-11 04:25:00'),
(49, '256752414995', 'hello', NULL, 'invalid', '2015-12-11 04:25:47', 'Incorrect All my neighbors were converted to Yaka what could be the reason why I was not converted? \r\n <br>A - Meter was not on Schedule\r\n <br>B - The Account is on Code 20\r\n <br>C - Rotten Pole\r\n <br>D - (A) (B) and ?', '2015-12-11 04:25:00'),
(50, '256752414995', 'hello', NULL, 'invalid', '2015-12-11 04:25:51', 'Incorrect Who is the Prepayment Manager? \r\n <br>A - Immaculate Asiimwe\r\n <br>B - Joseph Atuhura\r\n <br>C - Thomas Oryang\r\n <br>D - Amelo Ejalu', '2015-12-11 04:25:00'),
(51, '256752414995', 'hello', NULL, 'invalid', '2015-12-11 04:25:55', 'Incorrect Sorry Please Try again Later. Q_Application Down ', '2015-12-11 04:25:00'),
(52, '256752414995', 'hello', NULL, 'invalid', '2015-12-11 04:26:41', 'In Prepayment Vending System sub accounts are used for: \r\n <br>A - Arrears Collection\r\n <br>B - Preloaded Units and Arrears collection\r\n <br>C - Work Charges and Energy Recovery Collection\r\n <br>D - All the above', '2015-12-11 04:26:00'),
(53, '256752414995', 'hello', NULL, 'invalid', '2015-12-11 04:26:42', 'Incorrect All my neighbors were converted to Yaka what could be the reason why I was not converted? \r\n <br>A - Meter was not on Schedule\r\n <br>B - The Account is on Code 20\r\n <br>C - Rotten Pole\r\n <br>D - (A) (B) and ?', '2015-12-11 04:26:00'),
(54, '256752414995', 'hello', NULL, 'invalid', '2015-12-11 04:26:46', 'Incorrect Who is the Prepayment Manager? \r\n <br>A - Immaculate Asiimwe\r\n <br>B - Joseph Atuhura\r\n <br>C - Thomas Oryang\r\n <br>D - Amelo Ejalu', '2015-12-11 04:26:00'),
(55, '256752414995', 'hello', NULL, 'invalid', '2015-12-11 04:26:48', 'Incorrect Sorry Please Try again Later. Q_Application Down 4<0', '2015-12-11 04:26:00'),
(56, '256752414995', 'hello', NULL, 'invalid', '2015-12-11 04:27:41', 'In Prepayment Vending System sub accounts are used for: \r\n <br>A - Arrears Collection\r\n <br>B - Preloaded Units and Arrears collection\r\n <br>C - Work Charges and Energy Recovery Collection\r\n <br>D - All the above', '2015-12-11 04:27:00'),
(57, '256752414995', 'hello', NULL, 'invalid', '2015-12-11 04:27:43', 'Incorrect All my neighbors were converted to Yaka what could be the reason why I was not converted? \r\n <br>A - Meter was not on Schedule\r\n <br>B - The Account is on Code 20\r\n <br>C - Rotten Pole\r\n <br>D - (A) (B) and ?', '2015-12-11 04:27:00'),
(58, '256752414995', 'hello', NULL, 'invalid', '2015-12-11 04:27:48', 'Incorrect Who is the Prepayment Manager? \r\n <br>A - Immaculate Asiimwe\r\n <br>B - Joseph Atuhura\r\n <br>C - Thomas Oryang\r\n <br>D - Amelo Ejalu', '2015-12-11 04:27:00'),
(59, '256752414995', 'hello', NULL, 'invalid', '2015-12-11 04:27:49', 'Incorrect You have Exhousted all the Questions', '2015-12-11 04:27:00'),
(60, '256752414995', 'hello', NULL, 'invalid', '2015-12-11 04:27:51', 'In Prepayment Vending System sub accounts are used for: \r\n <br>A - Arrears Collection\r\n <br>B - Preloaded Units and Arrears collection\r\n <br>C - Work Charges and Energy Recovery Collection\r\n <br>D - All the above', '2015-12-11 04:27:00'),
(61, '256752414995', 'hello', NULL, 'invalid', '2015-12-11 04:27:53', 'Incorrect All my neighbors were converted to Yaka what could be the reason why I was not converted? \r\n <br>A - Meter was not on Schedule\r\n <br>B - The Account is on Code 20\r\n <br>C - Rotten Pole\r\n <br>D - (A) (B) and ?', '2015-12-11 04:27:00'),
(62, '256752414995', 'hello', NULL, 'invalid', '2015-12-11 04:27:54', 'Incorrect Who is the Prepayment Manager? \r\n <br>A - Immaculate Asiimwe\r\n <br>B - Joseph Atuhura\r\n <br>C - Thomas Oryang\r\n <br>D - Amelo Ejalu', '2015-12-11 04:27:00'),
(63, '256752414995', 'hello', NULL, 'invalid', '2015-12-11 04:27:55', 'Incorrect You have Exhousted all the Questions', '2015-12-11 04:27:00'),
(64, '256752414995', 'hello', NULL, 'invalid', '2015-12-11 04:32:26', 'In Prepayment Vending System sub accounts are used for: \r\n <br>A - Arrears Collection\r\n <br>B - Preloaded Units and Arrears collection\r\n <br>C - Work Charges and Energy Recovery Collection\r\n <br>D - All the above', '2015-12-11 04:32:00'),
(65, '256752414995', 'hello', NULL, 'invalid', '2015-12-11 04:33:29', 'Incorrect All my neighbors were converted to Yaka what could be the reason why I was not converted? \r\n <br>A - Meter was not on Schedule\r\n <br>B - The Account is on Code 20\r\n <br>C - Rotten Pole\r\n <br>D - (A) (B) and ?', '2015-12-11 04:33:29'),
(66, '256752414995', 'hello', NULL, 'invalid', '2015-12-11 04:35:47', 'Incorrect Who is the Prepayment Manager? \r\nA - Immaculate Asiimwe\r\nB - Joseph Atuhura\r\nC - Thomas Oryang\r\nD - Amelo Ejalu', '2015-12-11 04:35:47');

-- --------------------------------------------------------

--
-- Table structure for table `progress`
--

CREATE TABLE IF NOT EXISTS `progress` (
  `id` int(11) NOT NULL,
  `msisdn` varchar(25) DEFAULT NULL,
  `question_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `user_answer` varchar(10) NOT NULL,
  `status` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `id` int(11) NOT NULL,
  `question` varchar(100) DEFAULT NULL,
  `abbreviation` varchar(25) NOT NULL,
  `attemps` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `question`, `abbreviation`, `attemps`, `user_id`, `date_added`) VALUES
(1, '1 Prepayment Vending System, sub accounts are used for:', '', 0, NULL, NULL),
(2, '2. All my neighbors were converted to Yaka, what could be the reason why I was not converted?', '', 0, NULL, NULL),
(3, '3. Who is the Prepayment Manager?', '', 0, NULL, NULL),
(4, '4. Who is the Prepayment Project Sponsor?', '', 0, NULL, NULL),
(5, '5. The following are Materials used during prepayment Installation, except:', '', 0, NULL, NULL),
(6, '6. Which of the following is true of the prepayment conversion process and policy?', '', 0, NULL, NULL),
(7, '7. Which is the most used Yaka! Vending Channel?', '', 0, NULL, NULL),
(8, '8. Which of the following is true about the sealing process during installation.', '', 0, NULL, NULL),
(9, '9. A customer can retrieve the value (Units in kWh) of the last credit token entered by pressing on ', '', 0, NULL, NULL),
(10, '10. Which of the following is true about the Impulse Indicator (LED?', '', 0, NULL, NULL),
(11, '11. The Prepayment Metering system can allow the Customer to:', '', 0, NULL, NULL),
(12, '12. The Umeme Ultima Management and Vending system can support both Itron and Conlog Meters because:', '', 0, NULL, NULL),
(13, '13. Which versions of conlog single phase meter is in use for Umeme Customers:', '', 0, NULL, NULL),
(14, '14. What is the set default operating Voltage for Umeme prepaid meters?', '', 0, NULL, NULL),
(15, '15.   Which of the following is false about the installation standard of the prepaid Meter CIU?', '', 0, NULL, NULL),
(16, '16. The following are the different ways a Prepaid Meter can communicate with the CIU except:', '', 0, NULL, NULL),
(17, '17. Which color of Data Capture Form should be given to the customer after Installation?', '', 0, NULL, NULL),
(18, '18. Which one of these token is used to change the tariffs index?', '', 0, NULL, NULL),
(19, '19. Which of the following is not true about a Yaka! Swipe card?', '', 0, NULL, NULL),
(20, '20. Which of the following Conlog meter codes indicates a token entered incorrectly?', '', 0, NULL, NULL),
(21, '21. The following features are found on the Yaka! Prepayment receipt, except:', '', 0, NULL, NULL),
(22, '22. The prepaid meter can measure the following except one?', '', 0, NULL, NULL),
(23, '23. The Umeme construction standard for a single phase prepaid meter installation clearly states tha', '', 0, NULL, NULL),
(24, '24. Which of these banks can a Prepaid Customer Vend from?', '', 0, NULL, NULL),
(25, '25. What should be done on the system after a prepaid meter has been replaced in the field?', '', 0, NULL, NULL),
(26, '26. When a customer purchases a token with a sufficient amount after seven (7) months, how are the 1', '', 0, NULL, NULL),
(27, '27. How many digits does a Key Change Token have?', '', 0, NULL, NULL),
(28, '28. What is the most recent?percentage increase for a domestic tariff customer?', '', 0, NULL, NULL),
(29, '29. For a meter to be installed in OICS, it has to be in status:', '', 0, NULL, NULL),
(30, '30. In Ultima, which of the following affects the Service Charge ', '', 0, NULL, NULL),
(31, '31. Failed to obtain meter type for validation in ICS at meter installation level is an indication t', '', 0, NULL, NULL),
(32, '32. Which of the following options could bring the error ''''No Open Account in UVS (at activation in ', '', 0, NULL, NULL),
(33, '33. Buckles and straps are used for?', '', 0, NULL, NULL),
(34, '34. Which of the following is not a Yaka! Benefit?', '', 0, NULL, NULL),
(35, '35. What are the objectives of Yaka! Prepaid Metering?', '', 0, NULL, NULL),
(36, '36. Who meets the costs involved in converting a Customer to Yaka!', '', 0, NULL, NULL),
(37, '37. Is the Yaka! Prepaid metering system tariff cheaper than the post-paid one?', '', 0, NULL, NULL),
(38, '38. The following are Yaka! Vending channels except?', '', 0, NULL, NULL),
(39, '39. Which of the following statement is true about how security deposit is reimbursed after conversi', '', 0, NULL, NULL),
(40, '40. Which one of the statements below is false when attempting to retrieve a meter number from the m', '', 0, NULL, NULL),
(41, '41. What would a customer do when they have lost their Yaka! Token?', '', 0, NULL, NULL),
(42, '42. How can a Customer obtain a statement of his/her Yaka! Account?', '', 0, NULL, NULL),
(43, '43. The following will cause variation in the number of units obtained if the Customer purchases  in', '', 0, NULL, NULL),
(44, '44.  The following comprise of the standard split Meter currently used by Umeme, except:', '', 0, NULL, NULL),
(45, '45. What meter brands are currently being used in Yaka! Prepaid metering?', '', 0, NULL, NULL),
(46, '46. When was the first prepaid Meter installed by Umeme?', '', 0, NULL, NULL),
(47, '47. Which of the contactors below first installed Yaka! Prepaid meters?', '', 0, NULL, NULL),
(48, '48. Which of these Umeme staff members installed the first prepaid pilot meters in Kitintale distric', '', 0, NULL, NULL),
(49, '49. When does a Yaka! single phase Meter start alarming ?low credit??', '', 0, NULL, NULL),
(50, '50. What does the message ?dddddddddd ?observed on the CIU after keying in a token mean?', '', 0, NULL, NULL),
(51, '51. Which one of the following will not allow a customer to load a credit token?', '', 0, NULL, NULL),
(52, '52. Under what circumstances does a customer fail to get a token?', '', 0, NULL, NULL),
(53, '53. How can a customer silence a buzzer (beeping sounD on a Yaka! Meter?', '', 0, NULL, NULL),
(54, '54. What does error code E07 imply on a customer?s CIU?', '', 0, NULL, NULL),
(55, '55. What is ?STS? in full?', '', 0, NULL, NULL),
(56, '56. Which of these is true about Yaka! Conversion preloaded units?', '', 0, NULL, NULL),
(57, '57. Which of the following statements is true about Umeme?s Vision?', '', 0, NULL, NULL),
(58, '58. How do I access the balance on my account?', '', 0, NULL, NULL),
(59, '69.  What is AMR in full?', '', 0, NULL, NULL),
(60, '60. What customer base does AMR target?', '', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `id` int(11) NOT NULL,
  `msisdn` varchar(25) DEFAULT NULL,
  `language` varchar(25) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `msisdn`, `language`, `points`, `date_added`, `date_updated`) VALUES
(1, '256752444904', 'English', 260, NULL, NULL),
(2, '256752444905', 'English', 30, NULL, NULL),
(3, '256752444915', 'English', 40, NULL, NULL),
(4, '256752434995', 'English', 10, NULL, NULL),
(5, '256752414995', 'English', 320, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL,
  `attribute` varchar(50) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `attribute`, `value`, `date_added`) VALUES
(1, 'vote_response', 'Message', '2015-12-08 00:00:00'),
(2, 'no_vote_response', 'No vote', '2015-12-08 00:00:00'),
(3, 'message_prefix', 'Prefix', '0000-00-00 00:00:00'),
(4, 'message_postfix', 'Post fix', '2015-12-08 02:19:19'),
(5, 'Code', '6933', '2015-12-08 00:00:00'),
(6, 'welcome_response', 'Welcome to HiPipo awards, u have earned 10 points. Vote now and WIN A Convertible Car. Type HiPipo <Space> Category <Space> Artist Name or Song and SEND to 6933', '2015-12-08 00:00:00'),
(7, 'points_response', 'You have earned 10 points.You now have <POINTS> pts. Vote, WIN and Drive A Convertible Car. Type HiPipo <Space> Category <Space> Artist Name or Song and SEND to 6933', '2015-12-08 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '1',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `ban_reason` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `new_password_key` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `new_password_requested` datetime DEFAULT NULL,
  `new_email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `new_email_key` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `activated`, `banned`, `ban_reason`, `new_password_key`, `new_password_requested`, `new_email`, `new_email_key`, `last_ip`, `last_login`, `created`, `modified`) VALUES
(1, 'umeme', '$2a$08$aE3Wnxif3aQJQHc2zoIYi.hFFXOofzoYNxeOTjNJiClXmgH6Nxc6C', 'umeme@ug.com', 1, 0, NULL, NULL, NULL, NULL, NULL, '::1', '2015-12-11 09:02:21', '2015-12-10 23:57:12', '2015-12-11 08:02:21');

-- --------------------------------------------------------

--
-- Table structure for table `user_autologin`
--

CREATE TABLE IF NOT EXISTS `user_autologin` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_agent` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE IF NOT EXISTS `user_profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `country` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `user_id`, `country`, `website`) VALUES
(1, 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`), ADD KEY `fk_Qstanswer` (`question_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mosms`
--
ALTER TABLE `mosms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `progress`
--
ALTER TABLE `progress`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`), ADD KEY `fk_UserQuestion` (`user_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_autologin`
--
ALTER TABLE `user_autologin`
  ADD PRIMARY KEY (`key_id`,`user_id`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=250;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mosms`
--
ALTER TABLE `mosms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `progress`
--
ALTER TABLE `progress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
