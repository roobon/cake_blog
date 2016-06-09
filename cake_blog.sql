-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2016 at 09:02 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cake_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(8) NOT NULL,
  `topic_id` int(8) NOT NULL,
  `user_id` int(8) NOT NULL,
  `post_title` varchar(150) NOT NULL,
  `body` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `topic_id`, `user_id`, `post_title`, `body`, `created`, `modified`) VALUES
(1, 1, 0, 'Why Use CakePHP', 'When choosing a framework you''ll always want to make sure you''re making the right choice. If you''re not convinced that CakePHP is the best choice just because it has an awesome logo with a cake on it, then the following reasons might help.', '2016-06-05 12:30:26', '2016-06-05 12:30:26'),
(2, 1, 0, 'Development', 'CakePHP makes building web applications simpler, faster and require less code. With a lean MVC architecture, and a clear set of conventions to help the framework do most of the work, even application scaffolding and code generation tools to bake your code, it''s all about making the process easier. With support for major database vendors, such as MySQL, PostgreSQL, Microsoft SQL Server and SQLite, as well as support for caching engines such as Memcached or Redis, you can take on and scale any task.', '2016-06-05 12:32:36', '2016-06-05 12:32:36'),
(3, 1, 0, 'Security', 'The framework comes packed with some useful security features, such as input validation and data sanitization, protection against form tampering, cross site request forgery (CSRF) and cross site scripting (XSS) attacks, as well as SQL injection. It also provides a security utility which enables simplified access to hashing and encryption algorythms, such as SHA1, SHA256, MD5, Blowfish, Rijndael/AES-256, and some helper methods for common security tasks.', '2016-06-05 12:33:43', '2016-06-05 12:33:43'),
(4, 1, 0, 'Compatibility', 'Maintaining a migration path for developers has always been a priority, helping applications stay up-to-date and on the very latest and greatest version of the framework. This has always been a trademark of CakePHP. Not only are there clear outlines for the new features and updates expected between versions, but also migration tools, which handle most of the work for you.', '2016-06-05 13:03:12', '2016-06-05 13:03:12'),
(5, 1, 0, 'Documentation', 'It just so happens that CakePHP has some of the best documentation covering the full scope of the framework, as well as an extensive API reference, both of which are available online. And, as if that wasn''t enough, there are also hundreds of written and video tutorials available across the web. But if you want to skip the reading and watching, you can also sign up for an official training session, and once you''re well versed, prove your worth by going for official certification.', '2016-06-05 13:03:31', '2016-06-05 13:03:31'),
(6, 1, 0, 'Longevity', 'For 10 years now, CakePHP has been a leading contender in the PHP framework space, with well over 110 releases to date, spanning 3 major versions. It still remains in the top 5 most popular PHP projects on GitHub, out of some 130,000, and is featured under web application frameworks. With over 8 million visitors and 30 million page views across the project''s websites, and fueled by more than 17,000 commits through-out a decade, the project is more alive now than ever!', '2016-06-05 13:03:56', '2016-06-05 13:03:56'),
(7, 1, 0, 'License', 'All code for CakePHP is released as Open Source, and available free of charge under the MIT license, which allows for commercial use. The project itself is backed by the Cake Software Foundation, which is the legal entity that handles copyrights, legal and payments, as well as organizing professional training, developer certification, and events around the world.', '2016-06-05 13:04:13', '2016-06-05 13:04:13'),
(8, 1, 0, 'Community', 'One of the most attractive features of CakePHP is the huge community around the project. With some 11,000 followers on Twitter, over 14,000 likes on Facebook, and more than 18,000 members with 32,000 topics in the Google Group, there''s no doubting the incredible popularity of CakePHP. For the more technically oriented there are also 20,000 questions and counting on Stack Overflow, and consistently more that 100 users connected to the #cakephp IRC channel on Freenode.', '2016-06-05 13:11:40', '2016-06-05 13:11:40'),
(9, 1, 0, 'Support', 'Beyond the core contributors, there are over 270 developers around the world who have helped build, maintain and support the framework. That''s not including the more than 320 contributors who have helped create and moderate the online documentation, which is also open for anyone to extend and improve. The community effort around CakePHP is a strong sign of the support it has amongst developers, and a true demonstration of it''s position as a credible Open Source solution for web development.', '2016-06-05 13:11:57', '2016-06-05 13:11:57'),
(10, 2, 0, 'Fast', 'Check out the differences in how many RPS ( Requests per second)  other frameworks can process compared to yii. Check out the drastic difference when we enable the APC extension in php. Yii is very much known for its speed. Applications developed in yii loads very fast. It is  light weighted  and the code is very much optimized . The lazy loading technique improves the speed of Yii. It neither loads a class until its used   nor creates  an object until its accessed for the first time.', '2016-06-05 13:13:31', '2016-06-05 13:16:00'),
(11, 2, 0, 'CRUD Feature', 'Yii got the CRUD  feature. This literally saves heaps of time and makes our process much easier. For instance, If we are building a user creation form, we just need to create the User table and the required fields in the database. And using Gii(link)((a powerful tool of Yii to generate models and controllers) we can easily generate the User model and its CRUD.Thats all and we got the user create,update,delete and manage system all in two or three clicks', '2016-06-05 13:16:33', '2016-06-05 13:16:33');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(8) NOT NULL,
  `user_id` int(8) NOT NULL,
  `title` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `visible` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `user_id`, `title`, `created`, `modified`, `visible`) VALUES
(1, 0, 'CakePHP', '2016-06-05 12:20:44', '2016-06-05 13:01:42', 1),
(2, 0, 'YII Framework', '2016-06-05 12:22:40', '2016-06-05 12:22:40', 1),
(3, 0, 'CodeIgniter Framework', '2016-06-05 12:23:10', '2016-06-05 12:23:10', 1),
(4, 0, 'Magento', '2016-06-05 12:24:30', '2016-06-05 12:24:30', 1),
(5, 0, 'Wordpress', '2016-06-05 13:00:23', '2016-06-05 13:00:23', 1),
(6, 0, 'Joomla', '2016-06-05 13:00:31', '2016-06-05 13:00:31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `role` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `full_name`, `role`, `created`, `modified`) VALUES
(2, 'test', 'ee0939894808872f62c9442fb0a2133e7d0a1122', 'test', 1, '2016-06-05 18:04:13', '2016-06-05 18:04:13'),
(3, 'hasan', '0ea93b56786b753d9fa4031ecda80f0ad4a9de9e', 'Hasan', 1, '2016-06-05 21:00:14', '2016-06-05 21:00:14'),
(4, 'test1', 'ee0939894808872f62c9442fb0a2133e7d0a1122', 'Test', 1, '2016-06-05 21:01:36', '2016-06-05 21:01:36'),
(5, 'admin', 'caa33e0fd1207ea005f05d1d069d203e827b5a61', 'Admin User', 1, '2016-06-05 21:02:29', '2016-06-05 21:02:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
