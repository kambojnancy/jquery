-- Adminer 4.2.1 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `regis`;
CREATE TABLE `regis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8_swedish_ci NOT NULL,
  `email` varchar(25) COLLATE utf8_swedish_ci NOT NULL,
  `password` varchar(25) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

INSERT INTO `regis` (`id`, `name`, `email`, `password`) VALUES
(1,	'a',	'abc@gmail.com',	'password'),
(2,	'a',	'abc@gmail.com',	'password'),
(3,	'a',	'a@gmail.com',	'password'),
(4,	'a',	'a@gmail.com',	'password'),
(5,	'n',	'abc@gmail.com',	'password');

DROP TABLE IF EXISTS `time_stamp`;
CREATE TABLE `time_stamp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(25) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(25) COLLATE utf8_swedish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

INSERT INTO `time_stamp` (`id`, `title`, `description`, `created_at`) VALUES
(1,	'C++',	'jhgjkgjkgj',	'2019-05-24 12:36:24'),
(2,	'C++',	'jhgjkgjkgj',	'2019-05-24 12:42:05'),
(3,	'asdasd',	'asdasd',	'2019-05-24 07:29:46'),
(4,	'asdasd',	'asdasd',	'2019-05-24 07:30:28'),
(5,	'C++',	'jhgjkgjkgj',	'2019-05-24 07:54:04'),
(6,	'java',	'234rfgfgfg',	'2019-05-27 00:48:45'),
(7,	'abc',	'aabbcc',	'2019-05-27 02:09:27'),
(8,	'cc',	'44trgg',	'2019-05-27 02:41:57'),
(9,	'dddd',	'dddd',	'2019-05-27 02:53:41'),
(10,	'dddd',	'dddd',	'2019-05-27 02:56:51'),
(11,	'dddd',	'dddd',	'2019-05-27 02:57:20'),
(12,	'Kamlesh',	'PHP ',	'2019-05-27 02:59:16'),
(13,	'Kamlesh',	'PHP ',	'2019-05-27 03:01:57'),
(14,	'Kamlesh',	'PHP ',	'2019-05-27 03:02:31'),
(15,	'Kamlesh',	'PHP ',	'2019-05-27 03:03:25'),
(16,	'Kamlesh',	'PHP ',	'2019-05-27 03:03:28'),
(17,	'Kamlesh',	'PHP ',	'2019-05-27 03:03:42'),
(18,	'rrrr',	'rrrrrrrr',	'2019-05-27 03:55:53'),
(19,	'rrrr',	'rrrrrrrr',	'2019-05-27 03:55:53'),
(20,	'rrrr',	'rrrrrrrr',	'2019-05-27 03:57:06'),
(21,	'aaafgfff',	'KLJKJF',	'2019-05-27 04:03:28'),
(22,	'C++',	'jhgjkgjkgj',	'2019-05-27 04:07:23'),
(23,	'C++',	'jhgjkgjkgj',	'2019-05-27 04:09:24'),
(24,	'C++',	'jhgjkgjkgj',	'2019-05-27 04:09:32'),
(25,	'C++',	'jhgjkgjkgj',	'2019-05-27 04:09:56'),
(26,	'C++',	'jhgjkgjkgj',	'2019-05-27 04:11:51'),
(27,	'dsds',	'dsd',	'2019-05-27 04:21:40'),
(28,	'dsd',	'dsd',	'2019-05-27 04:53:12'),
(29,	'dsd',	'dsd',	'2019-05-27 04:53:41'),
(30,	'dsd',	'dsd',	'2019-05-27 04:53:52'),
(31,	'dsd',	'dsd',	'2019-05-27 04:55:16'),
(32,	'dsd',	'dsd',	'2019-05-27 04:55:56'),
(33,	'dsd',	'dsd',	'2019-05-27 05:19:06'),
(34,	'dsd',	'dsd',	'2019-05-27 05:19:49'),
(35,	'dsd',	'dsd',	'2019-05-27 05:20:16'),
(36,	'dsd',	'dsd',	'2019-05-27 05:23:08'),
(37,	'dsd',	'dsd',	'2019-05-27 05:25:28'),
(38,	'dsd',	'dsd',	'2019-05-27 05:29:22'),
(39,	'C++',	'erty',	'2019-05-27 05:45:48'),
(40,	'C++',	'erty',	'2019-05-27 05:47:07'),
(41,	'C++',	'jhgjkgjkgj',	'2019-05-27 05:48:28'),
(42,	'aaa',	'asdasf',	'2019-05-27 05:49:12'),
(43,	'x',	'xxx',	'2019-05-27 05:56:02');

DROP TABLE IF EXISTS `user_detail`;
CREATE TABLE `user_detail` (
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `DOB` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `user_detail` (`password`, `username`, `DOB`, `state`, `city`, `address`, `gender`, `phone`, `email`, `fname`, `id`) VALUES
('12345',	'nancy',	'haryana',	'karnal',	'sdfggg',	'female',	'2019-05-16',	'8899788333',	'nancy@gmail.com',	'nancy',	1),
('123456',	'abc',	'2019-05-17',	'haryana',	'karnal',	'fgfhgfs qhgsvfhgvsfx',	'male',	'9999996666',	'abc@gmail.com',	'abc',	2),
('1234567890',	'jagroopsingh',	'2019-05-16',	'punjab',	'chd',	'mohali',	'male',	'1234567890',	'jagroop@gmail.com',	'jagroop',	3),
('d54d1702ad0f8326224b817c796763c9',	'xyz',	'2019-05-17',	'haryana',	'karnal',	'gghjjhg ffg',	'female',	'7778788889',	'xyz@gmail.com',	'xyz',	4),
('81dc9bdb52d04dc20036dbd8313ed055',	'aaa',	'2019-05-17',	'haryana',	'ambala',	'wdfdfvdc dfgg',	'male',	'8899788333',	'aaa@gmail.com',	'aaa',	5),
('2051f43bd33c404e226ac700e7316095',	'rrr',	'2019-05-02',	'sdddf',	'sdc',	'asfgvgvg',	'',	'8899788333',	'rrr@gmail.com',	'nancy',	6),
('8458b460e91a0b3f73827e4ae8ba1dd3',	'ddd',	'2019-05-10',	'dfgdfddd',	'drfgdf',	'sadjvn',	'male',	'1111222333',	'ddd@gmail.com',	'nancy',	7);

-- 2019-05-29 09:46:05
