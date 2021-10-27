-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2019 at 06:32 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.1.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `userauth`
--

-- --------------------------------------------------------

--
-- Table structure for table `app`
--

CREATE TABLE `app` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `date` text NOT NULL,
  `time` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `regtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app`
--

INSERT INTO `app` (`id`, `name`, `email`, `date`, `time`, `description`, `regtime`) VALUES
(16, 'Soumyadip QSONE', 'testUser@qsone.com', '6/20/2019', '10:00pm', 'Fever', '2019-06-08 12:22:26'),
(17, 'Soumyadip QSONE', 'testUser@qsone.com', '6/19/2019', '11:00pm', 'Fever', '2019-06-08 12:22:08'),
(18, 'Soumyadip QSONE', 'hello@qsone.com', '6/4/2019', '12:30am', 'Cold', '2019-06-08 13:04:17'),
(19, 'Soumyadip QSONE', 'abc@teamcg.com', '6/5/2019', '12:30am', 'Fever', '2019-06-14 11:40:45'),
(21, 'Soumyadip QSONE', 'testUser@qsone.com', '7/3/2019', '3:30am', 'Fever', '2019-07-03 08:36:17');

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(22),
(22);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `authority` varchar(255) DEFAULT NULL,
  `lastseen` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `confirmation_token`, `username`, `enabled`, `first_name`, `last_name`, `gender`, `password`, `authority`, `lastseen`) VALUES
(1, '36983cce-975b-4a92-bf73-a4f41978e01c', 'admin@qsone.com', b'1', 'ADMIN', 'QSONE', 'Male', 'admin2021', 'ROLE_ADMIN', 'Thu Aug 22 00:00:56 IST 2019'),
(2, 'ByAdmin-Panel', 'manager@qsone.com', b'1', 'Manager', 'QSONE', 'Male', 'manager2021', 'ROLE_MANAGER', 'Fri Jun 14 17:11:47 IST 2019'),
(3, 'ByAdmin-Panel', 'contractor@qsone.com', b'1', 'Contractor', 'QSONE', 'Male', 'contractor', 'ROLE_CONTRACTOR', 'Fri Jun 14 17:11:47 IST 2019'),
(4, 'ByAdmin-Panel', 'headoffice@qsone.com', b'1', 'Head Office', 'QSONE', 'Male', 'headoffice', 'ROLE_HEAD_OFFICE', 'Fri Jun 14 17:11:47 IST 2019'),
(5, 'a6866ee4-f568-47a9-9a23-2297ec37c293', 'john.doe@qsone.com', b'1', 'John', 'Doe', 'Male', 'client', 'ROLE_CLIENT', 'Wed Aug 21 23:57:20 IST 2019'),
(6, 'v8866ee4-f568-47a9-9a23-2297ec37c244', 'mary.doe@qsone.com', b'1', 'Mary', 'Doe', 'Female', 'client', 'ROLE_CLIENT', 'Wed Aug 21 23:57:20 IST 2019');


-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `owner` varchar(255) NOT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `mobile` varchar(25) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `propertyType` varchar(255) NOT NULL,
  `forAndBehalfOfOwner` varchar(255) DEFAULT NULL,
  `nameOfAuthorizedPerson` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `purchasePrice` varchar(25) NULL,
  `stampDuty` varchar(25) NULL,
  `legalCosts` varchar(25) NULL,
  `additionalExpenses` varchar(25) NULL,
  `originalBuildingCost` varchar(25) NULL,
  `constructionStart` timestamp NULL,
  `constructionEnd` timestamp NULL,
  `dateOfContractExchange` timestamp NULL,
  `dateSettlement` timestamp NULL,
  `firstLeaseDate` timestamp NULL,
  `firstTaxableEndDate` timestamp NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


--
-- Dumping data for table `user`
--

--INSERT INTO `property` (`id`, `owner`, `phone`, `mobile`, `email`, `propertyType`, `purchasePrice`, `stampDuty`, `legalCosts`, `additionalExpenses`, 
--`originalBuildingCost`, `forAndBehalfOfOwner`, `nameOfAuthorizedPerson`, `constructionStart`, `constructionEnd`, `dateOfContractExchange`, 
--`dateSettlement`, `firstLeaseDate`, `firstTaxableEndDate`) VALUES 
--(1, 'Jasmin Rose', '09323244232','23435334433', 'jasmin.rose@gmail.com', 'Flat', 300000.00, 350.00, 2350.00, 0.00, 234000.00, 
--'Jasmin Rose', 'Jasmin Rose', STR_TO_DATE('23-04-2011', '%d-%m-%Y'), STR_TO_DATE('05-02-2012', '%d-%m-%Y'),STR_TO_DATE('30-05-2012', '%d-%m-%Y'),STR_TO_DATE('30-05-2012', '%d-%m-%Y'), STR_TO_DATE('30-05-2016', '%d-%m-%Y'), STR_TO_DATE('30-06-2016', '%d-%m-%Y')),
--(2, 'Florance Dillon', '06326244266','63436534467', 'florance.dillon@gmail.com', 'Apartment', 600000.00, 650.00, 7350.00, 0.00, 634000.00,
--'Florance Dillon', 'Florance Dillon', STR_TO_DATE('23-04-2012', '%d-%m-%Y'), STR_TO_DATE('05-02-2013', '%d-%m-%Y'),STR_TO_DATE('30-05-2013', '%d-%m-%Y'),STR_TO_DATE('30-05-2013', '%d-%m-%Y'), STR_TO_DATE('30-05-2017', '%d-%m-%Y'), STR_TO_DATE('30-06-2017', '%d-%m-%Y'));

INSERT INTO `property` (`id`, `owner`, `phone`, `mobile`, `email`, `propertyType`, `purchasePrice`, `stampDuty`, `legalCosts`, `additionalExpenses`, 
`originalBuildingCost`, `forAndBehalfOfOwner`, `nameOfAuthorizedPerson`, `constructionStart`, `constructionEnd`, `dateOfContractExchange`, 
`dateSettlement`, `firstLeaseDate`, `firstTaxableEndDate`) VALUES 
(1, 'Jasmin Rose', '09323244232','23435334433', 'jasmin.rose@gmail.com', 'Flat', '300000.00', '350.00', '2350.00','30.00', '234000.00', 
'Jasmin Rose', 'Jasmin Rose', '2011-04-05 00:00:00', '2012-04-05 00:00:00','2012-05-05 00:00:00','2012-06-06 00:00:00', '2016-06-06 00:00:00', '2016-06-30 00:00:00'),
(2, 'Florance Dillon', '06326244266','63436534467', 'florance.dillon@gmail.com', 'Apartment', '600000.00', '650.00', '7350.00', '10.00', '634000.00',
'Florance Dillon', 'Florance Dillon', '2011-04-05 00:00:00', '2012-04-05 00:00:00','2012-05-05 00:00:00','2012-06-06 00:00:00', '2016-06-06 00:00:00', '2016-06-30 00:00:00');
--
-- Indexes for dumped tables
--

--
-- Indexes for table `app`
--
ALTER TABLE `app`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app`
--
ALTER TABLE `app`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;