-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 28, 2022 at 07:11 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fyp`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `blog_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon_class`, `is_active`, `created_at`, `updated_at`) VALUES
(3, 'IT & Software', 'IT-software', 'fa-laptop', 1, '2021-12-23 08:14:15', '2021-12-23 08:14:15'),
(4, 'test', 'test', 'fa-apple', 0, '2022-01-12 18:42:30', '2022-01-12 18:42:30'),
(5, 'test2', 'test2', 'fa-edit', 0, '2022-01-13 18:50:32', '2022-01-13 18:50:32');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `instructor_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `instruction_level_id` int(10) UNSIGNED NOT NULL,
  `course_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `overview` text COLLATE utf8mb4_unicode_ci,
  `course_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_video` int(10) UNSIGNED DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `strike_out_price` decimal(8,2) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `instructor_id`, `category_id`, `instruction_level_id`, `course_title`, `course_slug`, `keywords`, `overview`, `course_image`, `thumb_image`, `course_video`, `duration`, `price`, `strike_out_price`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 9, 9, 4, 'Photography - Become a Better Photographer', 'photography-become-a-better-photographer', 'Health,History,Coding,GK,Technology,Future,Space,IQ,IT & Software', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using , making it look like readable English.</p>\r\n                   <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don`t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>', '', 'course/1/thumb_1.jpg', NULL, '2 days', '0.00', '159.00', 1, '2021-12-23 08:14:18', '2021-12-23 08:14:18'),
(2, 1, 3, 1, 'Learn Ethical Hacking From Scratch', '21', 'Learn,Ethical, Hacking From Scratch', '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 14px; max-width: 118.4rem; color: #1c1d1f; font-family: \'sf pro text\', -apple-system, BlinkMacSystemFont, Roboto, \'segoe ui\', Helvetica, Arial, sans-serif, \'apple color emoji\', \'segoe ui emoji\', \'segoe ui symbol\';\">Welcome this comprehensive Ethical Hacking course! This course assumes&nbsp;you have&nbsp;<strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">NO&nbsp;prior knowledge</strong>&nbsp;and by the end of it you\'ll be able to&nbsp;<strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">hack systems like black-hat hackers</strong>&nbsp;and&nbsp;<strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">secure them like security experts!</strong></p>\r\n<p style=\"box-sizing: border-box; margin: 0.8rem 0px 0px; padding: 0px; font-size: 14px; max-width: 118.4rem; color: #1c1d1f; font-family: \'sf pro text\', -apple-system, BlinkMacSystemFont, Roboto, \'segoe ui\', Helvetica, Arial, sans-serif, \'apple color emoji\', \'segoe ui emoji\', \'segoe ui symbol\';\">This&nbsp;course is&nbsp;highly&nbsp;<strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">practical</strong>&nbsp;but it won\'t neglect the theory; we\'ll start with ethical hacking basics, breakdown the different penetration testing fields and install the needed software (on Windows, Linux and Mac OS X), then we\'ll dive and start hacking straight away. You\'ll&nbsp;<strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">learn everything by example</strong>, by analysing and exploiting different systems such as networks, servers, clients, websites .....etc. We\'ll never have any boring dry theoretical lectures.</p>', 'course/2/857010_8239_2.jpg', 'course/2/thumb_857010_8239_2.jpg', 25, '123', '10.00', '99.99', 0, '2022-01-01 23:44:57', '2022-01-27 22:32:52'),
(3, 3, 3, 2, 'Test', 'test', NULL, '<p><strong>Test</strong></p>', NULL, NULL, NULL, NULL, '1.00', '2.00', 1, '2022-01-13 17:25:16', '2022-01-13 17:25:16'),
(4, 1, 3, 1, 'Introduction to Computer Networks', 'introduction-to-computer-networks', 'Computer Networks', '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 14px; max-width: 118.4rem; color: #1c1d1f; font-family: \'sf pro text\', -apple-system, BlinkMacSystemFont, Roboto, \'segoe ui\', Helvetica, Arial, sans-serif, \'apple color emoji\', \'segoe ui emoji\', \'segoe ui symbol\';\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">***Course Overhauled &amp; Improved with 14.5 hours of Updated Content &amp;&nbsp;3.5 hours of New Content August 2021***</em></strong></p>\r\n<p style=\"box-sizing: border-box; margin: 0.8rem 0px 0px; padding: 0px; font-size: 14px; max-width: 118.4rem; color: #1c1d1f; font-family: \'sf pro text\', -apple-system, BlinkMacSystemFont, Roboto, \'segoe ui\', Helvetica, Arial, sans-serif, \'apple color emoji\', \'segoe ui emoji\', \'segoe ui symbol\';\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">LEARN COMPUTER NETWORKING FUNDAMENTALS FROM ONE OF UDEMY&rsquo;S TOP IT INSTRUCTORS</strong></p>\r\n<p style=\"box-sizing: border-box; margin: 0.8rem 0px 0px; padding: 0px; font-size: 14px; max-width: 118.4rem; color: #1c1d1f; font-family: \'sf pro text\', -apple-system, BlinkMacSystemFont, Roboto, \'segoe ui\', Helvetica, Arial, sans-serif, \'apple color emoji\', \'segoe ui emoji\', \'segoe ui symbol\';\">Are you a non-techie interested in learning about computer networks? Are you a business or aspiring IT professional that needs to better understand how networks work? Then you have come to the right place!</p>\r\n<p style=\"box-sizing: border-box; margin: 0.8rem 0px 0px; padding: 0px; font-size: 14px; max-width: 118.4rem; color: #1c1d1f; font-family: \'sf pro text\', -apple-system, BlinkMacSystemFont, Roboto, \'segoe ui\', Helvetica, Arial, sans-serif, \'apple color emoji\', \'segoe ui emoji\', \'segoe ui symbol\';\">In this 18-hour course, I\'ll show you step-by-step, the fundamentals of computer networking, teaching you essential computer networking core principles you need to know.</p>\r\n<p style=\"box-sizing: border-box; margin: 0.8rem 0px 0px; padding: 0px; font-size: 14px; max-width: 118.4rem; color: #1c1d1f; font-family: \'sf pro text\', -apple-system, BlinkMacSystemFont, Roboto, \'segoe ui\', Helvetica, Arial, sans-serif, \'apple color emoji\', \'segoe ui emoji\', \'segoe ui symbol\';\">If you&rsquo;re looking to advance or begin your career in Information Technology (IT), this course is a must!</p>', 'course/4/580876_a07a_2.jpg', 'course/4/thumb_580876_a07a_2.jpg', 26, '18h', '5.99', '9.99', 1, '2022-01-25 12:33:11', '2022-01-25 12:36:17'),
(5, 1, 3, 1, 'Computer Networks For Beginners', 'computer-networks-for-beginners', 'Computer Networks For Beginners', '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 14px; max-width: 118.4rem; color: #1c1d1f; font-family: \'sf pro text\', -apple-system, BlinkMacSystemFont, Roboto, \'segoe ui\', Helvetica, Arial, sans-serif, \'apple color emoji\', \'segoe ui emoji\', \'segoe ui symbol\';\">Computer network connects two or more autonomous computers. The computers can be geographically located anywhere. Computer networks have opened up an entire frontier in the world of computing called the&nbsp;<strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">client/server model.</strong></p>\r\n<p style=\"box-sizing: border-box; margin: 0.8rem 0px 0px; padding: 0px; font-size: 14px; max-width: 118.4rem; color: #1c1d1f; font-family: \'sf pro text\', -apple-system, BlinkMacSystemFont, Roboto, \'segoe ui\', Helvetica, Arial, sans-serif, \'apple color emoji\', \'segoe ui emoji\', \'segoe ui symbol\';\">By choosing this course, you will come to know about the basics of computer networks, types of network models, Types of layers in each model, types of devices, types of networks and what is internet etc. You will also learn about the history of internet, history of these computer networks and who are the scientist involved in developing these technologies.</p>', 'course/5/580876_a07a_2.jpg', 'course/5/thumb_580876_a07a_2.jpg', 27, '4h', NULL, '9.99', 1, '2022-01-25 12:37:10', '2022-01-25 12:37:51'),
(6, 1, 3, 2, 'Learn TCP/IP', 'learn-tcpip', 'TCP,IP', '<p><span style=\"color: #1c1d1f; font-family: \'sf pro text\', -apple-system, BlinkMacSystemFont, Roboto, \'segoe ui\', Helvetica, Arial, sans-serif, \'apple color emoji\', \'segoe ui emoji\', \'segoe ui symbol\'; font-size: 14px;\">Welcome to the Learn TCP/IP - Computer Networking Fundamentals course! This course will get you started with Networks and the TCP/IP Protocol suite. This course is for people who want to either get started with or improve upon existing network skills. In this course you will start of with a general introduction to the OSI Model which is the core of networking and then you will be introduced to more advanced topics such as Public Key Infrastructure, Encryption, Data hashing and WireShark network Analysis.</span></p>', 'course/6/857010_8239_2.jpg', 'course/6/thumb_857010_8239_2.jpg', 28, '2.5h', '1.99', '9.99', 1, '2022-01-25 12:38:48', '2022-01-25 12:39:24'),
(7, 1, 3, 1, 'Basics of Networking', 'basics-of-networking', 'Basics of Networking', '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 14px; max-width: 118.4rem; color: #1c1d1f; font-family: \'sf pro text\', -apple-system, BlinkMacSystemFont, Roboto, \'segoe ui\', Helvetica, Arial, sans-serif, \'apple color emoji\', \'segoe ui emoji\', \'segoe ui symbol\';\">Computer networks establish the connection between two or more computers to form a network that enables the exchange of data, files and other resources with each other. The connection link formed between computers is called nodes.</p>\r\n<p style=\"box-sizing: border-box; margin: 0.8rem 0px 0px; padding: 0px; font-size: 14px; max-width: 118.4rem; color: #1c1d1f; font-family: \'sf pro text\', -apple-system, BlinkMacSystemFont, Roboto, \'segoe ui\', Helvetica, Arial, sans-serif, \'apple color emoji\', \'segoe ui emoji\', \'segoe ui symbol\';\">This Basic Computer Networking Course will teach you all the fundamentals of Computer Networking. Understand the basic working of computer networks and their types, along with the comprehensive lectures on the TCP/IP model explaining the functioning of each layer. By discussing the practical application of the networking modules, this course will cover all the required practical aspects of networking.</p>', 'course/7/580876_a07a_2.jpg', 'course/7/thumb_580876_a07a_2.jpg', 29, '33min', NULL, NULL, 1, '2022-01-25 12:40:34', '2022-01-25 12:40:50'),
(8, 1, 3, 2, 'Ethernet from scratch', 'ethernet-from-scratch', 'Ethernet ,scratch,Ethernet from scratch', '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 14px; max-width: 118.4rem; color: #1c1d1f; font-family: \'sf pro text\', -apple-system, BlinkMacSystemFont, Roboto, \'segoe ui\', Helvetica, Arial, sans-serif, \'apple color emoji\', \'segoe ui emoji\', \'segoe ui symbol\';\">Ethernet is one on the used protocol in Automotive and recently most of the companies started to use in many applications instead of CAN.</p>\r\n<p style=\"box-sizing: border-box; margin: 0.8rem 0px 0px; padding: 0px; font-size: 14px; max-width: 118.4rem; color: #1c1d1f; font-family: \'sf pro text\', -apple-system, BlinkMacSystemFont, Roboto, \'segoe ui\', Helvetica, Arial, sans-serif, \'apple color emoji\', \'segoe ui emoji\', \'segoe ui symbol\';\">it is a new protocol for Automotive industry and unfortunately too many engineers don\'t have the required Ethernet knowledge.</p>\r\n<p style=\"box-sizing: border-box; margin: 0.8rem 0px 0px; padding: 0px; font-size: 14px; max-width: 118.4rem; color: #1c1d1f; font-family: \'sf pro text\', -apple-system, BlinkMacSystemFont, Roboto, \'segoe ui\', Helvetica, Arial, sans-serif, \'apple color emoji\', \'segoe ui emoji\', \'segoe ui symbol\';\">This course will teach you the Ethernet Protocol fundamental starting from scratch.</p>\r\n<p style=\"box-sizing: border-box; margin: 0.8rem 0px 0px; padding: 0px; font-size: 14px; max-width: 118.4rem; color: #1c1d1f; font-family: \'sf pro text\', -apple-system, BlinkMacSystemFont, Roboto, \'segoe ui\', Helvetica, Arial, sans-serif, \'apple color emoji\', \'segoe ui emoji\', \'segoe ui symbol\';\">In this course you will learn the network fundamental like addressing protocols and OSI&nbsp;Model.</p>\r\n<p style=\"box-sizing: border-box; margin: 0.8rem 0px 0px; padding: 0px; font-size: 14px; max-width: 118.4rem; color: #1c1d1f; font-family: \'sf pro text\', -apple-system, BlinkMacSystemFont, Roboto, \'segoe ui\', Helvetica, Arial, sans-serif, \'apple color emoji\', \'segoe ui emoji\', \'segoe ui symbol\';\">you will learn the Ethernet frame and how Ethernet is used in Automotive.</p>\r\n<p style=\"box-sizing: border-box; margin: 0.8rem 0px 0px; padding: 0px; font-size: 14px; max-width: 118.4rem; color: #1c1d1f; font-family: \'sf pro text\', -apple-system, BlinkMacSystemFont, Roboto, \'segoe ui\', Helvetica, Arial, sans-serif, \'apple color emoji\', \'segoe ui emoji\', \'segoe ui symbol\';\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0.8rem 0px 0px; padding: 0px; font-size: 14px; max-width: 118.4rem; color: #1c1d1f; font-family: \'sf pro text\', -apple-system, BlinkMacSystemFont, Roboto, \'segoe ui\', Helvetica, Arial, sans-serif, \'apple color emoji\', \'segoe ui emoji\', \'segoe ui symbol\';\">so Let\'s gt started.</p>', 'course/8/857010_8239_2.jpg', 'course/8/thumb_857010_8239_2.jpg', 30, '1.2h', '5.99', '9.99', 1, '2022-01-25 12:41:50', '2022-01-25 12:42:07'),
(9, 1, 3, 2, 'Ethernet 101', 'ethernet-101', 'Ethernet, 101,Ethernet 101', '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 14px; max-width: 118.4rem; color: #1c1d1f; font-family: \'sf pro text\', -apple-system, BlinkMacSystemFont, Roboto, \'segoe ui\', Helvetica, Arial, sans-serif, \'apple color emoji\', \'segoe ui emoji\', \'segoe ui symbol\';\">So much of all Internet packets, whether they are in corporate, home, datacenter, or even service provider networks are carried by the Ethernet protocol.&nbsp; Ethernet is a Layer 1 and Layer 2 protocol specified by the IEEE 802.3 working group.</p>\r\n<p style=\"box-sizing: border-box; margin: 0.8rem 0px 0px; padding: 0px; font-size: 14px; max-width: 118.4rem; color: #1c1d1f; font-family: \'sf pro text\', -apple-system, BlinkMacSystemFont, Roboto, \'segoe ui\', Helvetica, Arial, sans-serif, \'apple color emoji\', \'segoe ui emoji\', \'segoe ui symbol\';\">This course is an introduction to Ethernet principles and concepts.&nbsp; From understanding the structure of Ethernet Frames, to understanding how Ethernet behaves (including protocols like ARP and Spanning Tree), this course provides a solid understanding of Ethernet fundamentals.</p>', 'course/9/580876_a07a_2.jpg', 'course/9/thumb_580876_a07a_2.jpg', 31, '2h', '5.99', '9.99', 1, '2022-01-25 12:43:01', '2022-01-25 12:44:32'),
(10, 1, 3, 1, 'Concepts of Computer Networks', 'concepts-of-computer-networks', 'Computer Networks', '<p style=\"box-sizing: border-box; margin: 0.8rem 0px 0px; padding: 0px; font-size: 14px; max-width: 118.4rem; color: #1c1d1f; font-family: \'sf pro text\', -apple-system, BlinkMacSystemFont, Roboto, \'segoe ui\', Helvetica, Arial, sans-serif, \'apple color emoji\', \'segoe ui emoji\', \'segoe ui symbol\';\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Computer Network</strong>&nbsp;is an interconnection between computers or we can say computer network is group of computers linked to each other which enables one computer to communicate with another computer. It acts as basis of communication in Information Technology (IT). It is system of connected computing devices and shares information and resources between them. The devices in network are connected by communication links (wired/wireless) and share data by&nbsp;<strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Data Communication System</strong></p>\r\n<p style=\"box-sizing: border-box; margin: 0.8rem 0px 0px; padding: 0px; font-size: 14px; max-width: 118.4rem; color: #1c1d1f; font-family: \'sf pro text\', -apple-system, BlinkMacSystemFont, Roboto, \'segoe ui\', Helvetica, Arial, sans-serif, \'apple color emoji\', \'segoe ui emoji\', \'segoe ui symbol\';\">In general, we can see &ldquo;<strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Communication&rdquo; and &ldquo;Sharing&rdquo;,</strong>&nbsp;that is all networking is about in simple terms. It enables everything that we do today. In the current scenario, the business would not work without computer networking and our personal and social life will also feel like it has been stopped.</p>', 'course/10/857010_8239_2.jpg', 'course/10/thumb_857010_8239_2.jpg', NULL, '7h', NULL, NULL, 1, '2022-01-25 12:49:19', '2022-01-25 12:49:33');

-- --------------------------------------------------------

--
-- Table structure for table `course_files`
--

CREATE TABLE `course_files` (
  `id` int(11) NOT NULL,
  `file_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_type` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_tag` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploader_id` int(11) NOT NULL,
  `processed` int(11) NOT NULL DEFAULT '1' COMMENT '0-not processed,1-processed',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_files`
--

INSERT INTO `course_files` (`id`, `file_name`, `file_title`, `file_type`, `file_extension`, `file_size`, `duration`, `file_tag`, `uploader_id`, `processed`, `created_at`, `updated_at`) VALUES
(1, 'sample-15568160485135', 'samplemp3', 'mp3', 'mp3', '4113874', '00:02:49', 'curriculum', 1, 1, 1556816050, 1556816050),
(2, 'sample_15568166868011', 'sample.pdf', 'pdf', 'pdf', '164061', '11', 'curriculum', 1, 1, 1556816686, 1556816686),
(3, 'sample_15568167745496', 'sample.pdf', 'pdf', 'pdf', '164061', '11', 'curriculum_resource', 1, 1, 1556816774, 1556816774),
(4, 'http://www.google.com', 'Google Site', 'link', 'link', '', NULL, 'curriculum_resource_link', 1, 1, 1556816825, 1556816825),
(5, 'http://www.facebook.com', 'Facebook Resource', 'link', 'link', '', NULL, 'curriculum_resource_link', 1, 1, 1556816856, 1556816856),
(6, 'Quiz 2_B200189C_Lee Jing Wei_16415997872116', 'Quiz 2_B200189C_Lee Jing Wei.pdf', 'pdf', 'pdf', '24173', '1', 'curriculum_resource', 1, 1, 1641599787, 1641599787);

-- --------------------------------------------------------

--
-- Table structure for table `course_progress`
--

CREATE TABLE `course_progress` (
  `progress_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `lecture_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-incomplete,1-complete',
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_progress`
--

INSERT INTO `course_progress` (`progress_id`, `user_id`, `course_id`, `lecture_id`, `status`, `created_at`, `modified_at`) VALUES
(1, 1, 0, 25, 1, '2022-01-09 20:21:21', '2022-01-28 06:27:18'),
(2, 1, 0, 27, 1, '2022-01-09 20:21:28', '2022-01-09 20:21:28'),
(3, 5, 0, 25, 1, '2022-01-13 15:44:18', '2022-01-13 15:44:18');

-- --------------------------------------------------------

--
-- Table structure for table `course_ratings`
--

CREATE TABLE `course_ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `rating` decimal(8,1) NOT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_ratings`
--

INSERT INTO `course_ratings` (`id`, `user_id`, `course_id`, `rating`, `comments`, `created_at`, `updated_at`) VALUES
(2, 5, 2, '5.0', NULL, '2022-01-13 07:45:57', '2022-01-13 07:45:57'),
(3, 3, 2, '1.0', 'test', '2022-01-22 13:35:50', '2022-01-22 13:35:52'),
(4, 1, 2, '4.5', 'wow nice', '2022-01-13 11:29:50', '2022-01-27 22:27:35');

-- --------------------------------------------------------

--
-- Table structure for table `course_taken`
--

CREATE TABLE `course_taken` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_taken`
--

INSERT INTO `course_taken` (`id`, `user_id`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-12-23 08:14:20', '2021-12-23 08:14:20'),
(2, 1, 2, '2022-01-06 04:24:11', '2022-01-06 04:24:11'),
(3, 1, 2, '2022-01-09 00:52:39', '2022-01-09 00:52:39'),
(4, 5, 2, '2022-01-13 07:43:55', '2022-01-13 07:43:55'),
(5, 1, 2, '2022-01-13 11:13:07', '2022-01-13 11:13:07'),
(6, 1, 2, '2022-01-13 11:18:22', '2022-01-13 11:18:22'),
(7, 1, 3, '2022-01-13 17:35:19', '2022-01-13 17:35:19');

-- --------------------------------------------------------

--
-- Table structure for table `course_videos`
--

CREATE TABLE `course_videos` (
  `id` int(11) NOT NULL,
  `video_title` text COLLATE utf8mb4_unicode_ci,
  `video_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_type` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_name` text COLLATE utf8mb4_unicode_ci,
  `video_tag` text COLLATE utf8mb4_unicode_ci,
  `uploader_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `processed` int(11) NOT NULL DEFAULT '1' COMMENT '0-not processed,1-processed',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_videos`
--

INSERT INTO `course_videos` (`id`, `video_title`, `video_name`, `video_type`, `duration`, `image_name`, `video_tag`, `uploader_id`, `course_id`, `processed`, `created_at`, `updated_at`) VALUES
(1, 'raw_1556815948_sample-15568159421897', 'sample.mp4', 'mp4', '00:02:24', 'sample-15568159421897.jpg', 'curriculum', 1, 1, 1, 1556816856, 1556816856),
(2, 'raw_1641325922_184-16413259203897', '184.mp4', 'mp4', '00:00:00', 'raw_1641325922_184-16413259203897.jpg', 'curriculum', 1, 2, 1, 1641325922, 1641325922),
(3, 'raw_1641325947_2022-01-02-21-20-24-16413259476347', '2022-01-02_21-20-24.mp4', 'mp4', '00:10:48', 'raw_1641325947_2022-01-02-21-20-24-16413259476347.jpg', 'curriculum', 1, 2, 1, 1641325947, 1641325947),
(4, 'raw_1641327195_2022-01-02-21-20-24-16413271949977', '2022-01-02_21-20-24.mp4', 'mp4', '00:10:48', 'raw_1641327195_2022-01-02-21-20-24-16413271949977.jpg', 'curriculum', 1, 2, 1, 1641327195, 1641327195),
(5, 'raw_1641480169_2022-01-02-21-20-24-16414801632573', '2022-01-02_21-20-24.mp4', 'mp4', '00:10:48', 'raw_1641480169_2022-01-02-21-20-24-16414801632573.jpg', 'curriculum', 1, 2, 1, 1641480169, 1641480169),
(6, 'raw_1641519982_2022-01-02-21-20-24-16415199801742', '2022-01-02_21-20-24.mp4', 'mp4', '00:10:48', 'raw_1641519982_2022-01-02-21-20-24-16415199801742.jpg', 'curriculum', 1, 2, 1, 1641519982, 1641519982),
(7, 'raw_1641520027_2022-01-02-21-20-24-16415200274939', '2022-01-02_21-20-24.mp4', 'mp4', '00:10:48', 'raw_1641520027_2022-01-02-21-20-24-16415200274939.jpg', 'curriculum', 1, 2, 1, 1641520027, 1641520027),
(8, 'raw_1641520164_2022-01-02-21-20-24-1641520164500', '2022-01-02_21-20-24.mp4', 'mp4', '00:10:48', 'raw_1641520164_2022-01-02-21-20-24-1641520164500.jpg', 'curriculum', 1, 2, 1, 1641520164, 1641520164),
(9, 'raw_1641594578_2022-01-02-21-20-24-16415945755280', '2022-01-02_21-20-24.mp4', 'mp4', '00:10:48', 'raw_1641594578_2022-01-02-21-20-24-16415945755280.jpg', 'curriculum', 1, 2, 1, 1641594578, 1641594578),
(10, 'raw_1641594623_2022-01-02-21-20-24-16415946222201', '2022-01-02_21-20-24.mp4', 'mp4', '00:10:48', 'raw_1641594623_2022-01-02-21-20-24-16415946222201.jpg', 'curriculum', 1, 2, 1, 1641594623, 1641594623),
(11, 'raw_1641594877_img-5718-16415948772021', 'IMG_5718.mp4', 'mp4', '00:00:10', 'raw_1641594877_img-5718-16415948772021.jpg', 'curriculum', 1, 2, 1, 1641594877, 1641594877),
(12, 'raw_1641599768_img-5719-16415997666162', 'IMG_5719.mp4', 'mp4', '00:00:09', 'raw_1641599768_img-5719-16415997666162.jpg', 'curriculum', 1, 2, 1, 1641599768, 1641599768),
(13, 'raw_1643055633_c4msnpvb5xdfhheayrbucfeewy8cuk-16430556308764', 'c4mSnPvB5xdfHHeaYrBUcfEewy8CUk.mp4', 'mp4', '00:00:48', 'raw_1643055633_c4msnpvb5xdfhheayrbucfeewy8cuk-16430556308764.jpg', 'curriculum', 1, 2, 1, 1643055633, 1643055633),
(14, 'raw_1643056021_c4msnpvb5xdfhheayrbucfeewy8cuk-16430560219373', 'c4mSnPvB5xdfHHeaYrBUcfEewy8CUk.mp4', 'mp4', '00:00:48', 'raw_1643056021_c4msnpvb5xdfhheayrbucfeewy8cuk-16430560219373.jpg', 'curriculum', 1, 2, 1, 1643056021, 1643056021),
(15, 'raw_1643056070_c4msnpvb5xdfhheayrbucfeewy8cuk-16430560703503', 'c4mSnPvB5xdfHHeaYrBUcfEewy8CUk.mp4', 'mp4', '00:00:48', 'raw_1643056070_c4msnpvb5xdfhheayrbucfeewy8cuk-16430560703503.jpg', 'curriculum', 1, 2, 1, 1643056070, 1643056070),
(16, 'raw_1643056329_c4msnpvb5xdfhheayrbucfeewy8cuk-1643056329777', 'c4mSnPvB5xdfHHeaYrBUcfEewy8CUk.mp4', 'mp4', '00:00:48', 'raw_1643056329_c4msnpvb5xdfhheayrbucfeewy8cuk-1643056329777.jpg', 'curriculum', 1, 2, 1, 1643056329, 1643056329),
(17, 'raw_1643057294_c4msnpvb5xdfhheayrbucfeewy8cuk-164305729329', 'c4mSnPvB5xdfHHeaYrBUcfEewy8CUk.mp4', 'mp4', '00:00:48', 'raw_1643057294_c4msnpvb5xdfhheayrbucfeewy8cuk-164305729329.jpg', 'curriculum', 1, 2, 1, 1643057294, 1643057294),
(18, 'raw_1643098316_img-5718-16430983122030', 'IMG_5718.mp4', 'mp4', '00:00:10', 'raw_1643098316_img-5718-16430983122030.jpg', 'curriculum', 1, 2, 1, 1643098316, 1643098316),
(19, 'raw_1643098365_img-5718-16430983658452', 'IMG_5718.mp4', 'mp4', '00:00:10', 'raw_1643098365_img-5718-16430983658452.jpg', 'curriculum', 1, 2, 1, 1643098365, 1643098365),
(20, 'raw_1643098478_img-5718-16430984771256', 'IMG_5718.mp4', 'mp4', '00:00:10', 'raw_1643098478_img-5718-16430984771256.jpg', 'curriculum', 1, 2, 1, 1643098478, 1643098478),
(21, 'raw_1643098675_img-5718-16430986743181', 'IMG_5718.mp4', 'mp4', '00:00:10', 'raw_1643098675_img-5718-16430986743181.jpg', 'curriculum', 1, 2, 1, 1643098675, 1643098675),
(22, 'raw_1643098733_img-5747-16430987327074', 'IMG_5747.mp4', 'mp4', '00:00:08', 'raw_1643098733_img-5747-16430987327074.jpg', 'curriculum', 1, 2, 1, 1643098733, 1643098733),
(23, 'raw_1643101661_img-5718-16431016609643', 'IMG_5718.mp4', 'mp4', '00:00:10', 'raw_1643101661_img-5718-16431016609643.jpg', 'curriculum', 1, 2, 1, 1643101661, 1643101661),
(24, 'raw_1643101682_img-5718-16431016825587', 'IMG_5718.mp4', 'mp4', '00:00:10', 'raw_1643101682_img-5718-16431016825587.jpg', 'curriculum', 1, 2, 1, 1643101682, 1643101682),
(25, 'raw_1643142557_aolp-16431425462240', 'aolp.mp4', 'mp4', '00:05:56', 'raw_1643142557_aolp-16431425462240.jpg', 'curriculum', 1, 2, 1, 1643142557, 1643142557),
(26, 'raw_1643142830_aolp-16431428304213', 'aolp.mp4', 'mp4', '00:05:56', 'raw_1643142830_aolp-16431428304213.jpg', 'curriculum', 1, 4, 1, 1643142830, 1643142830),
(27, 'raw_1643143070_aolp-16431430707413', 'aolp.mp4', 'mp4', '00:05:56', 'raw_1643143070_aolp-16431430707413.jpg', 'curriculum', 1, 5, 1, 1643143070, 1643143070),
(28, 'raw_1643143162_aolp-16431431626459', 'aolp.mp4', 'mp4', '00:05:56', 'raw_1643143162_aolp-16431431626459.jpg', 'curriculum', 1, 6, 1, 1643143162, 1643143162),
(29, 'raw_1643143249_aolp-16431432493215', 'aolp.mp4', 'mp4', '00:05:56', 'raw_1643143249_aolp-16431432493215.jpg', 'curriculum', 1, 7, 1, 1643143249, 1643143249),
(30, 'raw_1643143326_aolp-16431433266372', 'aolp.mp4', 'mp4', '00:05:56', 'raw_1643143326_aolp-16431433266372.jpg', 'curriculum', 1, 8, 1, 1643143326, 1643143326),
(31, 'raw_1643143395_aolp-16431433954904', 'aolp.mp4', 'mp4', '00:05:56', 'raw_1643143395_aolp-16431433954904.jpg', 'curriculum', 1, 9, 1, 1643143395, 1643143395);

-- --------------------------------------------------------

--
-- Table structure for table `credits`
--

CREATE TABLE `credits` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaction_id` int(10) UNSIGNED NOT NULL,
  `instructor_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `credit` decimal(10,2) DEFAULT NULL,
  `credits_for` int(11) DEFAULT NULL COMMENT '1-course_cost,2-course_commission',
  `is_admin` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `credits`
--

INSERT INTO `credits` (`id`, `transaction_id`, `instructor_id`, `user_id`, `course_id`, `credit`, `credits_for`, `is_admin`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 1, 1, '0.00', 2, 1, '2021-12-23 08:14:20', '2021-12-23 08:14:20'),
(2, 16, 1, 1, 2, '98.40', 1, 0, '2022-01-06 04:24:11', '2022-01-06 04:24:11'),
(3, 16, 0, 1, 2, '24.60', 2, 1, '2022-01-06 04:24:11', '2022-01-06 04:24:11'),
(4, 17, 1, 1, 2, '98.40', 1, 0, '2022-01-09 00:52:39', '2022-01-09 00:52:39'),
(5, 17, 0, 1, 2, '24.60', 2, 1, '2022-01-09 00:52:39', '2022-01-09 00:52:39'),
(6, 20, 1, 5, 2, '98.40', 1, 0, '2022-01-13 07:43:55', '2022-01-13 07:43:55'),
(7, 20, 0, 5, 2, '24.60', 2, 1, '2022-01-13 07:43:55', '2022-01-13 07:43:55'),
(8, 21, 1, 1, 2, '98.40', 1, 0, '2022-01-13 11:13:06', '2022-01-13 11:13:06'),
(9, 21, 0, 1, 2, '24.60', 2, 1, '2022-01-13 11:13:06', '2022-01-13 11:13:06'),
(10, 23, 1, 1, 2, '98.40', 1, 0, '2022-01-13 11:18:22', '2022-01-13 11:18:22'),
(11, 23, 0, 1, 2, '24.60', 2, 1, '2022-01-13 11:18:22', '2022-01-13 11:18:22'),
(12, 25, 3, 1, 3, '0.80', 1, 0, '2022-01-13 17:35:19', '2022-01-13 17:35:19'),
(13, 25, 0, 1, 3, '0.20', 2, 1, '2022-01-13 17:35:19', '2022-01-13 17:35:19');

-- --------------------------------------------------------

--
-- Table structure for table `curriculum_lectures_quiz`
--

CREATE TABLE `curriculum_lectures_quiz` (
  `lecture_quiz_id` int(11) NOT NULL,
  `section_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `contenttext` text COLLATE utf8mb4_unicode_ci,
  `media` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_type` int(11) DEFAULT NULL COMMENT '0-video,1-audio,2-document,3-text',
  `sort_order` int(11) DEFAULT NULL,
  `publish` int(11) NOT NULL DEFAULT '0',
  `resources` text COLLATE utf8mb4_unicode_ci,
  `createdOn` datetime NOT NULL,
  `updatedOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `curriculum_lectures_quiz`
--

INSERT INTO `curriculum_lectures_quiz` (`lecture_quiz_id`, `section_id`, `type`, `title`, `description`, `contenttext`, `media`, `media_type`, `sort_order`, `publish`, `resources`, `createdOn`, `updatedOn`) VALUES
(1, 1, NULL, 'Installing a text editor', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don`t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text.</p>', '', '1', 0, 1, 1, '[3]', '2021-12-23 16:14:18', '2021-12-23 16:14:18'),
(2, 1, NULL, 'Adding real content', '<p>If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</p>', '', '1', 1, 2, 1, '[3]', '2021-12-23 16:14:18', '2021-12-23 16:14:18'),
(3, 1, NULL, 'Creating our index page', '<p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>', '', '2', 2, 3, 1, '[4]', '2021-12-23 16:14:18', '2021-12-23 16:14:18'),
(4, 1, NULL, 'Customizing the vendors', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p>', '<p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p><p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don`t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>', NULL, 3, 4, 1, '[5]', '2021-12-23 16:14:18', '2021-12-23 16:14:18'),
(5, 2, NULL, 'Installing a text editor', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don`t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text.</p>', '', '1', 0, 1, 1, '[3]', '2021-12-23 16:14:18', '2021-12-23 16:14:18'),
(6, 2, NULL, 'Adding real content', '<p>If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</p>', '', '1', 1, 2, 1, '[3]', '2021-12-23 16:14:18', '2021-12-23 16:14:18'),
(7, 2, NULL, 'Creating our index page', '<p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>', '', '2', 2, 3, 1, '[4]', '2021-12-23 16:14:18', '2021-12-23 16:14:18'),
(8, 2, NULL, 'Customizing the vendors', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p>', '<p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p><p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don`t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>', NULL, 3, 4, 1, '[5]', '2021-12-23 16:14:18', '2021-12-23 16:14:18'),
(9, 3, NULL, 'Installing a text editor', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don`t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text.</p>', '', '1', 0, 1, 1, '[3]', '2021-12-23 16:14:19', '2021-12-23 16:14:19'),
(10, 3, NULL, 'Adding real content', '<p>If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</p>', '', '1', 1, 2, 1, '[3]', '2021-12-23 16:14:19', '2021-12-23 16:14:19'),
(11, 3, NULL, 'Creating our index page', '<p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>', '', '2', 2, 3, 1, '[4]', '2021-12-23 16:14:19', '2021-12-23 16:14:19'),
(12, 3, NULL, 'Customizing the vendors', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p>', '<p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p><p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don`t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>', NULL, 3, 4, 1, '[5]', '2021-12-23 16:14:19', '2021-12-23 16:14:19'),
(13, 4, NULL, 'Installing a text editor', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don`t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text.</p>', '', '1', 0, 1, 1, '[3]', '2021-12-23 16:14:19', '2021-12-23 16:14:19'),
(14, 4, NULL, 'Adding real content', '<p>If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</p>', '', '1', 1, 2, 1, '[3]', '2021-12-23 16:14:19', '2021-12-23 16:14:19'),
(15, 4, NULL, 'Creating our index page', '<p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>', '', '2', 2, 3, 1, '[4]', '2021-12-23 16:14:19', '2021-12-23 16:14:19'),
(16, 4, NULL, 'Customizing the vendors', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p>', '<p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p><p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don`t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>', NULL, 3, 4, 1, '[5]', '2021-12-23 16:14:19', '2021-12-23 16:14:19'),
(17, 5, NULL, 'Installing a text editor', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don`t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text.</p>', '', '1', 0, 1, 1, '[3]', '2021-12-23 16:14:19', '2021-12-23 16:14:19'),
(18, 5, NULL, 'Adding real content', '<p>If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</p>', '', '1', 1, 2, 1, '[3]', '2021-12-23 16:14:19', '2021-12-23 16:14:19'),
(19, 5, NULL, 'Creating our index page', '<p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>', '', '2', 2, 3, 1, '[4]', '2021-12-23 16:14:19', '2021-12-23 16:14:19'),
(20, 5, NULL, 'Customizing the vendors', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p>', '<p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p><p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don`t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>', NULL, 3, 4, 1, '[5]', '2021-12-23 16:14:19', '2021-12-23 16:14:19'),
(21, 6, NULL, 'Installing a text editor', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don`t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text.</p>', '', '1', 0, 1, 1, '[3]', '2021-12-23 16:14:19', '2021-12-23 16:14:19'),
(22, 6, NULL, 'Adding real content', '<p>If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</p>', '', '1', 1, 2, 1, '[3]', '2021-12-23 16:14:20', '2021-12-23 16:14:20'),
(23, 6, NULL, 'Creating our index page', '<p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>', '', '2', 2, 3, 1, '[4]', '2021-12-23 16:14:20', '2021-12-23 16:14:20'),
(24, 6, NULL, 'Customizing the vendors', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p>', '<p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content, making it look like readable English.</p><p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don`t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn`t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>', NULL, 3, 4, 1, '[5]', '2021-12-23 16:14:20', '2021-12-23 16:14:20'),
(25, 7, 0, 'Introduction', '<p>This is a teaser lecture, in it I show you an example of the things you\'ll be able to do at the end of the course, in this lecture I show you how to hack into a Windows 10 machine and turn on its web cam without asking the user to do anything.</p>\n<p>As this is a teaser, I won\'t be going into details about how this is achieved, but don\'t worry about that as I will break this down to you through out the course and you will understand exactly how to do it.</p>\n<p>This is just one example, by the end of the course you\'ll learn much more attacks and you\'ll be able to target all operating systems.</p>', '<p>123123</p>', NULL, 3, 1, 1, '[6,\"3\"]', '2022-01-02 07:45:47', '2022-01-28 05:11:54'),
(27, 8, 0, 'Lab Overview', NULL, '<p><span style=\"text-decoration: underline;\"><em><strong>curriculum</strong></em></span></p>', NULL, 3, 2, 1, NULL, '2022-01-04 19:52:42', '2022-01-28 05:11:45'),
(28, 9, 0, 'Introduction', NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-01-25 20:33:55', '2022-01-25 20:33:55'),
(29, 10, 0, 'Introduction', NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-01-25 20:39:26', '2022-01-25 20:39:26');

-- --------------------------------------------------------

--
-- Table structure for table `curriculum_sections`
--

CREATE TABLE `curriculum_sections` (
  `section_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `createdOn` datetime NOT NULL,
  `updatedOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `curriculum_sections`
--

INSERT INTO `curriculum_sections` (`section_id`, `course_id`, `title`, `sort_order`, `createdOn`, `updatedOn`) VALUES
(1, 1, 'Introduction', 0, '2021-12-23 16:14:18', '2021-12-23 16:14:18'),
(2, 1, 'Introduction', 1, '2021-12-23 16:14:18', '2021-12-23 16:14:18'),
(3, 1, 'Introduction', 2, '2021-12-23 16:14:18', '2021-12-23 16:14:18'),
(4, 1, 'Introduction', 3, '2021-12-23 16:14:19', '2021-12-23 16:14:19'),
(5, 1, 'Introduction', 4, '2021-12-23 16:14:19', '2021-12-23 16:14:19'),
(6, 1, 'Introduction', 5, '2021-12-23 16:14:19', '2021-12-23 16:14:19'),
(7, 2, 'Start Here', 1, '2022-01-02 07:45:47', '2022-01-02 07:45:47'),
(8, 2, 'Setting Up A Hacking Lab', 2, '2022-01-02 07:49:34', '2022-01-28 05:11:31'),
(9, 4, 'Start Here', 1, '2022-01-25 20:33:55', '2022-01-25 20:33:55'),
(10, 6, 'Start Here', 1, '2022-01-25 20:39:26', '2022-01-25 20:39:26');

-- --------------------------------------------------------

--
-- Table structure for table `instruction_levels`
--

CREATE TABLE `instruction_levels` (
  `id` int(10) UNSIGNED NOT NULL,
  `level` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instruction_levels`
--

INSERT INTO `instruction_levels` (`id`, `level`) VALUES
(1, 'Introductory'),
(2, 'Intermediate'),
(3, 'Advanced'),
(4, 'Comprehensive');

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructor_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_googleplus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biography` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructor_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_credits` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`id`, `user_id`, `first_name`, `last_name`, `instructor_slug`, `contact_email`, `telephone`, `mobile`, `paypal_id`, `link_facebook`, `link_linkedin`, `link_twitter`, `link_googleplus`, `biography`, `instructor_image`, `total_credits`, `created_at`, `updated_at`) VALUES
(1, 3, 'Handsome', 'Guy', 'angela-yu', 'instructor@aolp.com', '+60 16-7999999', '+60 16-7999999', 'instructor@aolp.com', NULL, NULL, NULL, NULL, '<p>I\'m Handsome.</p>', 'instructor/1/andrew.jpg', '300.00', '2021-12-23 08:14:14', '2022-01-27 22:29:08'),
(3, 5, 'Kelvin', 'Li', 'kelvin-li', 'k88@gmail.com', '0123456789', '0123456789', 'k88@gmail.com', NULL, NULL, NULL, NULL, '<p>I\'m an <strong>Instructor</strong>.</p>', NULL, '450.80', '2022-01-13 11:39:52', '2022-01-13 18:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_12_25_030359_create_categories_table', 1),
(2, '2021_12_25_030359_create_course_files_table', 1),
(3, '2021_12_25_030359_create_course_videos_table', 1),
(4, '2021_12_25_030359_create_courses_table', 1),
(5, '2021_12_25_030359_create_curriculum_lectures_quiz_table', 1),
(6, '2021_12_25_030359_create_curriculum_sections_table', 1),
(7, '2021_12_25_030359_create_instruction_levels_table', 1),
(8, '2021_12_25_030359_create_password_resets_table', 1),
(9, '2021_12_25_030359_create_role_user_table', 1),
(10, '2021_12_25_030359_create_roles_table', 1),
(11, '2021_12_25_030359_create_users_table', 1),
(12, '2021_12_25_063348_create_instructors_table', 1),
(13, '2021_12_25_151526_create_payments_table', 1),
(14, '2021_12_25_084257_create_course_ratings', 1),
(15, '2021_12_25_072224_create_blogs_table', 1),
(16, '2021_12_26_201453_create_options_table', 1),
(17, '2021_12_26_072337_create_withdraw_requests_table', 1),
(18, '2021_12_26_145907_create_course_progress', 1);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `code`, `option_key`, `option_value`) VALUES
(1, 'pageHome', 'banner_title', 'An Online Learning Portal for Networking'),
(2, 'pageHome', 'banner_text', 'Learn every topic. On time. Everytime.'),
(3, 'pageHome', 'instructor_text', 'We have a lot of professional Instructors in our portal'),
(4, 'pageHome', 'learn_block_title', 'Learn every topic, everytime.'),
(5, 'pageHome', 'learn_block_text', NULL),
(6, 'pageAbout', 'content', '<article class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-12\">\r\n<h5 class=\"mt-3 underline-heading\">Changing Learning for the Better</h5>\r\n<p>Whether you want to learn or to share what you know, you&rsquo;ve come to the right place. As a global destination for online learning, we connect people through knowledge. </p>\r\n<hr />\r\n<h2 style=\"text-align: center;\"><strong><span style=\"color: #1c1d1f; font-family: \'Udemy Sans\', \'SF Pro Text\', -apple-system, BlinkMacSystemFont, Roboto, \'Segoe UI\', Helvetica, Arial, sans-serif; font-size: 19px; text-align: center;\">We help organizations of all types and sizes prepare for the path ahead &mdash; wherever it leads. Our curated collection of business and technical courses help companies, governments, and nonprofits go further by placing learning at the center of their strategies.</span></strong></h2>\r\n</div>\r\n</div>\r\n</article>\r\n<article class=\"count-block jumbotron\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-xl-3 col-lg-3 col-md-6 col-sm-6 col-6\">\r\n<h3 class=\"underline-heading\">150+</h3>\r\n<h6>COUNTRIES REACHED</h6>\r\n</div>\r\n<div class=\"col-xl-3 col-lg-3 col-md-6 col-sm-6 col-6\">\r\n<h3 class=\"underline-heading\">1000+</h3>\r\n<h6>COUNTRIES REACHED</h6>\r\n</div>\r\n<div class=\"col-xl-3 col-lg-3 col-md-6 col-sm-6 col-6\">\r\n<h3 class=\"underline-heading\">40000+</h3>\r\n<h6>PASSED GRADUATES</h6>\r\n</div>\r\n<div class=\"col-xl-3 col-lg-3 col-md-6 col-sm-6 col-6\">\r\n<h3 class=\"underline-heading\">100+</h3>\r\n<h6>COURSES PUBLISHED</h6>\r\n</div>\r\n</div>\r\n</div>\r\n</article>\r\n<article class=\"about-features-block\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-12 text-center seperator-head mt-3\">\r\n<h3>Why choose AOLP</h3>\r\n<p class=\"mt-3\">As educated and disposable citizens, they shy away from financing.</p>\r\n</div>\r\n</div>\r\n<div class=\"row mt-4 mb-5\">\r\n<div class=\"col-xl-3 col-lg-4 col-md-6 col-sm-6\">\r\n<div class=\"feature-box mx-auto text-center\"><main><i class=\"fas fa-file-signature\"></i>\r\n<div class=\"col-md-12\">\r\n<h6 class=\"instructor-title\">Hi-Tech Learning</h6>\r\n<p><span style=\"background-color: #f8f8f8; color: #767676; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Hi-Tech Learning teaches kids important skills they need in today&rsquo;s world through camps and after-school programs</span>.</p>\r\n</div>\r\n</main></div>\r\n</div>\r\n<div class=\"col-xl-3 col-lg-4 col-md-6 col-sm-6\">\r\n<div class=\"feature-box mx-auto text-center\"><main><i class=\"fas fa-users-cog\"></i>\r\n<div class=\"col-md-12\">\r\n<h6 class=\"instructor-title\">Course Discussion</h6>\r\n<p>Course discussions give you the opportunity to start conversations with other learners, ask questions that other learners or members of the course team can answer, and interact with other learners in the course.</p>\r\n</div>\r\n</main></div>\r\n</div>\r\n<div class=\"col-xl-3 col-lg-4 col-md-6 col-sm-6\">\r\n<div class=\"feature-box mx-auto text-center\"><main><i class=\"fas fa-chalkboard-teacher\"></i>\r\n<div class=\"col-md-12\">\r\n<h6 class=\"instructor-title\">Qualified teachers</h6>\r\n<p>AOLP instructors are real people who are passionate about what they know with students all over the world.</p>\r\n</div>\r\n</main></div>\r\n</div>\r\n<div class=\"col-xl-3 col-lg-4 col-md-6 col-sm-6\">\r\n<div class=\"feature-box mx-auto text-center\"><main><i class=\"fas fa-digital-tachograph\"></i>\r\n<div class=\"col-md-12\">\r\n<h6 class=\"instructor-title\">Advanced teaching</h6>\r\n<p>Advanced teaching roles enable highly effective teachers to advance their careers, expand their positive impact on student achievement and increase their compensation without leaving the classroom.</p>\r\n</div>\r\n</main></div>\r\n</div>\r\n</div>\r\n</div>\r\n</article>'),
(7, 'pageContact', 'telephone', '+60 12-3456789'),
(8, 'pageContact', 'email', 'abc@abc.com '),
(9, 'pageContact', 'address', 'PTD 64888, Jalan Selatan Utama km 15'),
(10, 'pageContact', 'map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4743.02326042306!2d103.68133112067672!3d1.5324828304359053!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da73c109632e0b%3A0x74cda51bf210c304!2sSouthern%20University%20College!5e0!3m2!1sen!2smy!4v1640880593738!5m2!1sen!2smy\" width=\"100%\" height=\"100%\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>'),
(11, 'settingGeneral', 'application_name', 'AOLP'),
(12, 'settingGeneral', 'meta_key', 'An Online Learning Portal'),
(13, 'settingGeneral', 'meta_description', 'aolp'),
(14, 'settingGeneral', 'admin_commission', '20'),
(15, 'settingGeneral', 'admin_email', 'aolp2022@gmail.com'),
(16, 'settingGeneral', 'minimum_withdraw', '50'),
(17, 'settingGeneral', 'header_logo', 'config/logo.png'),
(18, 'settingGeneral', 'fav_icon', 'config/favicon.ico'),
(19, 'settingGeneral', 'footer_logo', 'config/logo_footer.png'),
(20, 'settingPayment', 'username', 'jwei19943-facilitator_api1.gmail.com'),
(21, 'settingPayment', 'password', 'VJKLFC6M95C7SZYG'),
(22, 'settingPayment', 'signature', 'AcO7aGGtjJ7YOLxqKfdALOPoyKeLArtl7DEK5PhQLA5P0EiYhzrypYBI'),
(23, 'settingPayment', 'test_mode', '1'),
(24, 'settingPayment', 'is_active', '1'),
(25, 'settingEmail', 'smtp_host', NULL),
(26, 'settingEmail', 'smtp_port', NULL),
(27, 'settingEmail', 'smtp_secure', NULL),
(28, 'settingEmail', 'smtp_username', NULL),
(29, 'settingEmail', 'smtp_password', NULL),
(30, 'settingGeneral', 'old_header_logo', 'config/logo.png'),
(31, 'settingGeneral', 'old_footer_logo', 'config/logo_footer.png'),
(32, 'settingGeneral', 'old_fav_icon', 'config/favicon.ico');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('instructor@aolp.com', '$2y$10$d1.6MoPHmKsceoue/dMM2eT8XtEuQGn2XDRI9NviUZc066v3LqTmi', '2022-01-20 13:42:57');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'student', 'Student to learn course', '2021-12-23 08:14:13', '2021-12-23 08:14:13'),
(2, 'instructor', 'Instructor to manage course', '2021-12-23 08:14:14', '2021-12-23 08:14:14'),
(3, 'admin', 'Admin to manage the site', '2021-12-23 08:14:14', '2021-12-23 08:14:14');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`) VALUES
(1, 1, 1),
(2, 3, 2),
(3, 1, 3),
(4, 2, 3),
(5, 1, 4),
(6, 1, 5),
(7, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `course_id`, `amount`, `status`, `payment_method`, `order_details`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '0.00', 'completed', 'paypal_express_checkout', '{\"TOKEN\":\"success\",\"status\":\"succeeded\",\"Timestamp\":1561787415,\"ACK\":\"Success\"}', '2021-12-23 08:14:20', '2021-12-23 08:14:20'),
(2, 1, 2, '123.00', 'pending', 'paypal_express_checkout', NULL, '2022-01-01 23:50:09', '2022-01-01 23:50:09'),
(3, 1, 2, '123.00', 'pending', 'paypal_express_checkout', NULL, '2022-01-02 00:00:40', '2022-01-02 00:00:40'),
(4, 1, 2, '123.00', 'pending', 'paypal_express_checkout', NULL, '2022-01-05 04:39:17', '2022-01-05 04:39:17'),
(5, 1, 2, '123.00', 'pending', 'paypal_express_checkout', NULL, '2022-01-05 04:39:24', '2022-01-05 04:39:24'),
(6, 1, 2, '123.00', 'pending', 'paypal_express_checkout', NULL, '2022-01-05 05:58:00', '2022-01-05 05:58:00'),
(7, 1, 2, '123.00', 'pending', 'paypal_express_checkout', NULL, '2022-01-05 05:58:30', '2022-01-05 05:58:30'),
(8, 1, 2, '123.00', 'pending', 'paypal_express_checkout', NULL, '2022-01-05 05:58:42', '2022-01-05 05:58:42'),
(9, 1, 2, '123.00', 'pending', 'paypal_express_checkout', NULL, '2022-01-05 17:20:29', '2022-01-05 17:20:29'),
(10, 1, 2, '123.00', 'pending', 'paypal_express_checkout', NULL, '2022-01-05 18:06:07', '2022-01-05 18:06:07'),
(11, 1, 2, '123.00', 'pending', 'paypal_express_checkout', NULL, '2022-01-06 03:51:25', '2022-01-06 03:51:25'),
(12, 1, 2, '123.00', 'pending', 'paypal_express_checkout', NULL, '2022-01-06 04:19:01', '2022-01-06 04:19:01'),
(13, 1, 2, '123.00', 'pending', 'paypal_express_checkout', NULL, '2022-01-06 04:19:18', '2022-01-06 04:19:18'),
(14, 1, 2, '123.00', 'pending', 'paypal_express_checkout', NULL, '2022-01-06 04:22:32', '2022-01-06 04:22:32'),
(15, 1, 2, '123.00', 'pending', 'paypal_express_checkout', NULL, '2022-01-06 04:22:42', '2022-01-06 04:22:42'),
(16, 1, 2, '123.00', 'completed', 'paypal_express_checkout', '{\"TOKEN\":\"EC-9X257867J5567834S\",\"SUCCESSPAGEREDIRECTREQUESTED\":\"false\",\"TIMESTAMP\":\"2022-01-06T12:24:11Z\",\"CORRELATIONID\":\"c77eab1c3d456\",\"ACK\":\"Success\",\"VERSION\":\"119.0\",\"BUILD\":\"56144363\",\"INSURANCEOPTIONSELECTED\":\"false\",\"SHIPPINGOPTIONISDEFAULT\":\"false\",\"PAYMENTINFO_0_TRANSACTIONID\":\"8CK57364ME1543648\",\"PAYMENTINFO_0_TRANSACTIONTYPE\":\"expresscheckout\",\"PAYMENTINFO_0_PAYMENTTYPE\":\"instant\",\"PAYMENTINFO_0_ORDERTIME\":\"2022-01-06T12:24:09Z\",\"PAYMENTINFO_0_AMT\":\"123.00\",\"PAYMENTINFO_0_FEEAMT\":\"4.75\",\"PAYMENTINFO_0_TAXAMT\":\"0.00\",\"PAYMENTINFO_0_CURRENCYCODE\":\"USD\",\"PAYMENTINFO_0_EXCHANGERATE\":\"0.238392502550527\",\"PAYMENTINFO_0_PAYMENTSTATUS\":\"Pending\",\"PAYMENTINFO_0_PENDINGREASON\":\"paymentreview\",\"PAYMENTINFO_0_REASONCODE\":\"None\",\"PAYMENTINFO_0_PROTECTIONELIGIBILITY\":\"Ineligible\",\"PAYMENTINFO_0_PROTECTIONELIGIBILITYTYPE\":\"None\",\"PAYMENTINFO_0_SELLERPAYPALACCOUNTID\":\"jwei19943-facilitator@gmail.com\",\"PAYMENTINFO_0_SECUREMERCHANTACCOUNTID\":\"J6DSM9L7NDE94\",\"PAYMENTINFO_0_ERRORCODE\":\"0\",\"PAYMENTINFO_0_ACK\":\"Success\"}', '2022-01-06 04:23:25', '2022-01-06 04:24:11'),
(17, 1, 2, '123.00', 'completed', 'paypal_express_checkout', '{\"TOKEN\":\"EC-5SE860974J1244542\",\"SUCCESSPAGEREDIRECTREQUESTED\":\"false\",\"TIMESTAMP\":\"2022-01-09T08:52:38Z\",\"CORRELATIONID\":\"bb2982e8a5e63\",\"ACK\":\"Success\",\"VERSION\":\"119.0\",\"BUILD\":\"56144363\",\"INSURANCEOPTIONSELECTED\":\"false\",\"SHIPPINGOPTIONISDEFAULT\":\"false\",\"PAYMENTINFO_0_TRANSACTIONID\":\"9T543202BC789615K\",\"PAYMENTINFO_0_TRANSACTIONTYPE\":\"expresscheckout\",\"PAYMENTINFO_0_PAYMENTTYPE\":\"instant\",\"PAYMENTINFO_0_ORDERTIME\":\"2022-01-09T08:52:37Z\",\"PAYMENTINFO_0_AMT\":\"123.00\",\"PAYMENTINFO_0_FEEAMT\":\"4.75\",\"PAYMENTINFO_0_TAXAMT\":\"0.00\",\"PAYMENTINFO_0_CURRENCYCODE\":\"USD\",\"PAYMENTINFO_0_EXCHANGERATE\":\"0.238392502550527\",\"PAYMENTINFO_0_PAYMENTSTATUS\":\"Pending\",\"PAYMENTINFO_0_PENDINGREASON\":\"paymentreview\",\"PAYMENTINFO_0_REASONCODE\":\"None\",\"PAYMENTINFO_0_PROTECTIONELIGIBILITY\":\"Ineligible\",\"PAYMENTINFO_0_PROTECTIONELIGIBILITYTYPE\":\"None\",\"PAYMENTINFO_0_SELLERPAYPALACCOUNTID\":\"jwei19943-facilitator@gmail.com\",\"PAYMENTINFO_0_SECUREMERCHANTACCOUNTID\":\"J6DSM9L7NDE94\",\"PAYMENTINFO_0_ERRORCODE\":\"0\",\"PAYMENTINFO_0_ACK\":\"Success\"}', '2022-01-09 00:50:55', '2022-01-09 00:52:38'),
(18, 5, 2, '123.00', 'pending', 'paypal_express_checkout', NULL, '2022-01-13 07:43:11', '2022-01-13 07:43:11'),
(19, 5, 2, '123.00', 'pending', 'paypal_express_checkout', NULL, '2022-01-13 07:43:15', '2022-01-13 07:43:15'),
(20, 5, 2, '123.00', 'completed', 'paypal_express_checkout', '{\"TOKEN\":\"EC-0HF89050Y1227293V\",\"SUCCESSPAGEREDIRECTREQUESTED\":\"false\",\"TIMESTAMP\":\"2022-01-13T15:43:55Z\",\"CORRELATIONID\":\"6158983ff8be3\",\"ACK\":\"Success\",\"VERSION\":\"119.0\",\"BUILD\":\"56144363\",\"INSURANCEOPTIONSELECTED\":\"false\",\"SHIPPINGOPTIONISDEFAULT\":\"false\",\"PAYMENTINFO_0_TRANSACTIONID\":\"6AT781317S443974G\",\"PAYMENTINFO_0_TRANSACTIONTYPE\":\"expresscheckout\",\"PAYMENTINFO_0_PAYMENTTYPE\":\"instant\",\"PAYMENTINFO_0_ORDERTIME\":\"2022-01-13T15:43:53Z\",\"PAYMENTINFO_0_AMT\":\"123.00\",\"PAYMENTINFO_0_FEEAMT\":\"4.75\",\"PAYMENTINFO_0_TAXAMT\":\"0.00\",\"PAYMENTINFO_0_CURRENCYCODE\":\"USD\",\"PAYMENTINFO_0_EXCHANGERATE\":\"0.238392502550527\",\"PAYMENTINFO_0_PAYMENTSTATUS\":\"Pending\",\"PAYMENTINFO_0_PENDINGREASON\":\"paymentreview\",\"PAYMENTINFO_0_REASONCODE\":\"None\",\"PAYMENTINFO_0_PROTECTIONELIGIBILITY\":\"Ineligible\",\"PAYMENTINFO_0_PROTECTIONELIGIBILITYTYPE\":\"None\",\"PAYMENTINFO_0_SELLERPAYPALACCOUNTID\":\"jwei19943-facilitator@gmail.com\",\"PAYMENTINFO_0_SECUREMERCHANTACCOUNTID\":\"J6DSM9L7NDE94\",\"PAYMENTINFO_0_ERRORCODE\":\"0\",\"PAYMENTINFO_0_ACK\":\"Success\"}', '2022-01-13 07:43:20', '2022-01-13 07:43:55'),
(21, 1, 2, '123.00', 'completed', 'paypal_express_checkout', '{\"TOKEN\":\"EC-63196122T2262770W\",\"SUCCESSPAGEREDIRECTREQUESTED\":\"false\",\"TIMESTAMP\":\"2022-01-13T19:13:06Z\",\"CORRELATIONID\":\"e6032ad048efa\",\"ACK\":\"Success\",\"VERSION\":\"119.0\",\"BUILD\":\"56144363\",\"INSURANCEOPTIONSELECTED\":\"false\",\"SHIPPINGOPTIONISDEFAULT\":\"false\",\"PAYMENTINFO_0_TRANSACTIONID\":\"1XT994061U8489938\",\"PAYMENTINFO_0_TRANSACTIONTYPE\":\"expresscheckout\",\"PAYMENTINFO_0_PAYMENTTYPE\":\"instant\",\"PAYMENTINFO_0_ORDERTIME\":\"2022-01-13T19:13:05Z\",\"PAYMENTINFO_0_AMT\":\"123.00\",\"PAYMENTINFO_0_FEEAMT\":\"4.75\",\"PAYMENTINFO_0_TAXAMT\":\"0.00\",\"PAYMENTINFO_0_CURRENCYCODE\":\"USD\",\"PAYMENTINFO_0_EXCHANGERATE\":\"0.238392502550527\",\"PAYMENTINFO_0_PAYMENTSTATUS\":\"Pending\",\"PAYMENTINFO_0_PENDINGREASON\":\"paymentreview\",\"PAYMENTINFO_0_REASONCODE\":\"None\",\"PAYMENTINFO_0_PROTECTIONELIGIBILITY\":\"Ineligible\",\"PAYMENTINFO_0_PROTECTIONELIGIBILITYTYPE\":\"None\",\"PAYMENTINFO_0_SELLERPAYPALACCOUNTID\":\"jwei19943-facilitator@gmail.com\",\"PAYMENTINFO_0_SECUREMERCHANTACCOUNTID\":\"J6DSM9L7NDE94\",\"PAYMENTINFO_0_ERRORCODE\":\"0\",\"PAYMENTINFO_0_ACK\":\"Success\"}', '2022-01-13 11:12:45', '2022-01-13 11:13:06'),
(22, 1, 2, '123.00', 'failed', 'paypal_express_checkout', '{\"token\":\"EC-2K9874562T128505L\"}', '2022-01-13 11:13:21', '2022-01-13 11:13:30'),
(23, 1, 2, '123.00', 'completed', 'paypal_express_checkout', '{\"TOKEN\":\"EC-15G715889J956330C\",\"SUCCESSPAGEREDIRECTREQUESTED\":\"false\",\"TIMESTAMP\":\"2022-01-13T19:18:22Z\",\"CORRELATIONID\":\"7a8bf4f262908\",\"ACK\":\"Success\",\"VERSION\":\"119.0\",\"BUILD\":\"56144363\",\"INSURANCEOPTIONSELECTED\":\"false\",\"SHIPPINGOPTIONISDEFAULT\":\"false\",\"PAYMENTINFO_0_TRANSACTIONID\":\"04381156EH8236423\",\"PAYMENTINFO_0_TRANSACTIONTYPE\":\"expresscheckout\",\"PAYMENTINFO_0_PAYMENTTYPE\":\"instant\",\"PAYMENTINFO_0_ORDERTIME\":\"2022-01-13T19:18:21Z\",\"PAYMENTINFO_0_AMT\":\"123.00\",\"PAYMENTINFO_0_FEEAMT\":\"4.75\",\"PAYMENTINFO_0_TAXAMT\":\"0.00\",\"PAYMENTINFO_0_CURRENCYCODE\":\"USD\",\"PAYMENTINFO_0_EXCHANGERATE\":\"0.238392502550527\",\"PAYMENTINFO_0_PAYMENTSTATUS\":\"Pending\",\"PAYMENTINFO_0_PENDINGREASON\":\"paymentreview\",\"PAYMENTINFO_0_REASONCODE\":\"None\",\"PAYMENTINFO_0_PROTECTIONELIGIBILITY\":\"Ineligible\",\"PAYMENTINFO_0_PROTECTIONELIGIBILITYTYPE\":\"None\",\"PAYMENTINFO_0_SELLERPAYPALACCOUNTID\":\"jwei19943-facilitator@gmail.com\",\"PAYMENTINFO_0_SECUREMERCHANTACCOUNTID\":\"J6DSM9L7NDE94\",\"PAYMENTINFO_0_ERRORCODE\":\"0\",\"PAYMENTINFO_0_ACK\":\"Success\"}', '2022-01-13 11:18:07', '2022-01-13 11:18:22'),
(24, 1, 2, '123.00', 'failed', 'paypal_express_checkout', '{\"token\":\"EC-89X861689K279451G\"}', '2022-01-13 11:19:22', '2022-01-13 11:19:30'),
(25, 1, 3, '1.00', 'completed', 'paypal_express_checkout', '{\"TOKEN\":\"EC-36C3798141281542S\",\"SUCCESSPAGEREDIRECTREQUESTED\":\"false\",\"TIMESTAMP\":\"2022-01-14T01:35:19Z\",\"CORRELATIONID\":\"beb96841ec5a2\",\"ACK\":\"Success\",\"VERSION\":\"119.0\",\"BUILD\":\"56144363\",\"INSURANCEOPTIONSELECTED\":\"false\",\"SHIPPINGOPTIONISDEFAULT\":\"false\",\"PAYMENTINFO_0_TRANSACTIONID\":\"7Y592105FM518290V\",\"PAYMENTINFO_0_TRANSACTIONTYPE\":\"expresscheckout\",\"PAYMENTINFO_0_PAYMENTTYPE\":\"instant\",\"PAYMENTINFO_0_ORDERTIME\":\"2022-01-14T01:35:18Z\",\"PAYMENTINFO_0_AMT\":\"1.00\",\"PAYMENTINFO_0_FEEAMT\":\"0.35\",\"PAYMENTINFO_0_TAXAMT\":\"0.00\",\"PAYMENTINFO_0_CURRENCYCODE\":\"USD\",\"PAYMENTINFO_0_EXCHANGERATE\":\"0.238750270188171\",\"PAYMENTINFO_0_PAYMENTSTATUS\":\"Pending\",\"PAYMENTINFO_0_PENDINGREASON\":\"paymentreview\",\"PAYMENTINFO_0_REASONCODE\":\"None\",\"PAYMENTINFO_0_PROTECTIONELIGIBILITY\":\"Ineligible\",\"PAYMENTINFO_0_PROTECTIONELIGIBILITYTYPE\":\"None\",\"PAYMENTINFO_0_SELLERPAYPALACCOUNTID\":\"jwei19943-facilitator@gmail.com\",\"PAYMENTINFO_0_SECUREMERCHANTACCOUNTID\":\"J6DSM9L7NDE94\",\"PAYMENTINFO_0_ERRORCODE\":\"0\",\"PAYMENTINFO_0_ACK\":\"Success\"}', '2022-01-13 17:34:58', '2022-01-13 17:35:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `is_active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'JWEi', 'Lee', 'student@aolp.com', '$2y$10$OHVZkijRBMrs4E7pq2rKWOnUP0heV47zeXM7OnFn5jrw6tHMYo6ui', 1, NULL, '2021-12-23 08:14:14', '2021-12-23 08:14:14'),
(2, 'Admin', 'A', 'admin@aolp.com', '$2y$10$SYBwG96LZPTARYh5X7LuBudRd9HPP6RO69RzfUum53XoS/66kDoru', 1, NULL, '2021-12-23 08:14:14', '2021-12-23 08:14:14'),
(3, 'WK', 'Ng', 'instructor@aolp.com', '$2y$10$hdR1EccyzAS5K37Lw2EfhORTaR6BJWz8ONpuxeRYHmzp1Rn8jrKgy', 1, NULL, '2021-12-23 08:14:14', '2021-12-23 08:14:14'),
(4, 'A', 'Lee', 'ale@aolp.com', '$2y$10$HcLiUUgy0KZJAgajCb8DFuZIpvDew5EPn7vLXjhLjIrhKvDKRLrAu', 1, NULL, '2021-12-30 19:51:23', '2021-12-30 19:51:23'),
(5, 'Kelvin', 'Li', 'K88@gmail.com', '$2y$10$sFPhaJmz.rjq/EowyIOs..Fjo3FnKYEn0DEv8eoXiJYuVAUk4fw42', 1, NULL, '2022-01-13 07:41:53', '2022-01-13 07:41:53');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_requests`
--

CREATE TABLE `withdraw_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `paypal_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-pending,1-processed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw_requests`
--

INSERT INTO `withdraw_requests` (`id`, `instructor_id`, `paypal_id`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'instructor@aolp.com', '1000.00', 1, '2022-01-12 00:30:27', '2022-01-12 00:30:43'),
(2, 3, 'k88@gmail.com', '50.00', 1, '2022-01-13 17:32:22', '2022-01-13 18:56:47'),
(3, 1, 'instructor@aolp.com', '92.00', 1, '2022-01-26 05:12:57', '2022-01-26 05:17:46'),
(4, 1, 'instructor@aolp.com', '100.00', 1, '2022-01-27 22:25:49', '2022-01-27 22:29:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_files`
--
ALTER TABLE `course_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_progress`
--
ALTER TABLE `course_progress`
  ADD PRIMARY KEY (`progress_id`);

--
-- Indexes for table `course_ratings`
--
ALTER TABLE `course_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_taken`
--
ALTER TABLE `course_taken`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_videos`
--
ALTER TABLE `course_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credits`
--
ALTER TABLE `credits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `curriculum_lectures_quiz`
--
ALTER TABLE `curriculum_lectures_quiz`
  ADD PRIMARY KEY (`lecture_quiz_id`);

--
-- Indexes for table `curriculum_sections`
--
ALTER TABLE `curriculum_sections`
  ADD PRIMARY KEY (`section_id`);

--
-- Indexes for table `instruction_levels`
--
ALTER TABLE `instruction_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `course_files`
--
ALTER TABLE `course_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `course_progress`
--
ALTER TABLE `course_progress`
  MODIFY `progress_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `course_ratings`
--
ALTER TABLE `course_ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `course_taken`
--
ALTER TABLE `course_taken`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `course_videos`
--
ALTER TABLE `course_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `credits`
--
ALTER TABLE `credits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `curriculum_lectures_quiz`
--
ALTER TABLE `curriculum_lectures_quiz`
  MODIFY `lecture_quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `curriculum_sections`
--
ALTER TABLE `curriculum_sections`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `instruction_levels`
--
ALTER TABLE `instruction_levels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
