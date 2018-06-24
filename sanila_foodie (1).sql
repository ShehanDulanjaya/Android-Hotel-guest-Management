-- phpMyAdmin SQL Dump
-- version 4.0.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 20, 2017 at 11:18 PM
-- Server version: 5.5.52-MariaDB
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sanila_foodie`
--

-- --------------------------------------------------------

--
-- Table structure for table `160_customer_select_package_1`
--

CREATE TABLE IF NOT EXISTS `160_customer_select_package_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` varchar(100) NOT NULL,
  `customer_id` varchar(100) NOT NULL,
  `location_1` varchar(100) DEFAULT NULL,
  `location_2` varchar(100) DEFAULT NULL,
  `location_3` varchar(100) DEFAULT NULL,
  `location_4` varchar(100) DEFAULT NULL,
  `location_5` varchar(100) DEFAULT NULL,
  `location_6` varchar(100) DEFAULT NULL,
  `location_7` varchar(100) DEFAULT NULL,
  `location_8` varchar(100) DEFAULT NULL,
  `location_9` varchar(100) DEFAULT NULL,
  `location_10` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;

--
-- Dumping data for table `160_customer_select_package_1`
--

INSERT INTO `160_customer_select_package_1` (`id`, `package_id`, `customer_id`, `location_1`, `location_2`, `location_3`, `location_4`, `location_5`, `location_6`, `location_7`, `location_8`, `location_9`, `location_10`) VALUES
(72, '8', '5013', 'Temple of Tooth', 'Ambalangoda', '', 'Victoria Golf and Country Resort ', 'golden ground', 'null', 'Kothmale', 'Hanthana ', 'Galle', 'null'),
(73, '28', '5002', 'l1', 'l2', 'l3', 'l4', 'l5', 'l6', 'null', 'l8', 'l9', 'null'),
(74, '27', '5011', 'Adisham Bungalow', 'Ambewela', 'null', 'Nuwara Eliya Golf Club', 'Lake Gregory', 'Hakgala Botanical Garden', 'Hatton', 'Horton Plains', 'null', 'null'),
(75, '25', '5003', 'Gadaladeniya', 'Bahirawa kande', 'Hanthana', 'Temple of the Tooth', 'Lankathilaka', 'Ambuluwawa', 'Pinnawala', 'null', 'null', 'null'),
(66, '20', '6699', '', 'Ambalangoda', '', 'Victoria Golf and Country Resort ', 'golden ground', '', 'Kothmale', 'Hanthana ', '', 'null'),
(77, '25', '5009', 'Gadaladeniya', 'Bahirawa kande', 'Hanthana', 'Temple of the Tooth', 'Lankathilaka', 'Ambuluwawa', 'null', 'null', 'null', 'null'),
(76, '27', '5006', 'Adisham Bungalow', 'Ambewela', 'Ella', 'null', 'Lake Gregory', 'Hakgala Botanical Garden', 'null', 'Horton Plains', 'Mackwoods', 'null'),
(70, '8', '9999', 'Temple of Tooth', 'Ambalangoda', 'Devon Falls', 'Victoria Golf and Country Resort ', 'golden ground', 'Yala National Park', 'Kothmale', 'Hanthana ', 'Galle', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `artistdetails`
--

CREATE TABLE IF NOT EXISTS `artistdetails` (
  `artistID` varchar(50) NOT NULL,
  `artistName` varchar(500) NOT NULL,
  `email` varchar(300) NOT NULL,
  PRIMARY KEY (`artistID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artistdetails`
--

INSERT INTO `artistdetails` (`artistID`, `artistName`, `email`) VALUES
('123', 'sdfsfsds', 'sfsdds');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE IF NOT EXISTS `attendance` (
  `Att_id` int(11) NOT NULL AUTO_INCREMENT,
  `empid` int(11) NOT NULL,
  `Indate` text NOT NULL,
  `Outdate` text,
  `In_time` text NOT NULL,
  `Out_time` text,
  `OTh` int(11) DEFAULT '0',
  `Status` int(11) DEFAULT '0',
  PRIMARY KEY (`Att_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`Att_id`, `empid`, `Indate`, `Outdate`, `In_time`, `Out_time`, `OTh`, `Status`) VALUES
(21, 1, '11/20/2017', '11/20/2017', '22:49:57', '22:50:33', 0, 0),
(22, 2, '11/20/2017', NULL, '23:06:49', NULL, 0, 1),
(23, 4, '11/20/2017', '11/20/2017', '23:07:01', '23:15:03', 0, 0),
(24, 18, '11/20/2017', NULL, '23:12:46', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cusphon`
--

CREATE TABLE IF NOT EXISTS `cusphon` (
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `nicpass` varchar(100) NOT NULL,
  `connum` varchar(100) NOT NULL,
  `checkin` varchar(100) NOT NULL,
  `checkout` varchar(100) NOT NULL,
  `noppl` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cusphon`
--

INSERT INTO `cusphon` (`fname`, `lname`, `nicpass`, `connum`, `checkin`, `checkout`, `noppl`) VALUES
('upul', 'fernando', '987456324v', '0778991445', '2017-09-16', '2017-09-23', '4'),
('kamal', 'perera', '741852963v', '0112325456', '2017-09-16', '2017-09-27', '5'),
('sunil', 'perera', '987123654v', '0312225456', '2017-09-15', '2017-09-27', '6'),
('sumathipala', 'fernando', '741456852v', '0771123556', '2017-09-19', '2017-09-29', '3'),
('james', 'fernando', '789147258v', '0778556552', '2017-09-19', '2017-09-29', '3');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customerID` int(20) NOT NULL AUTO_INCREMENT,
  `fname` varchar(500) NOT NULL,
  `lname` varchar(500) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `address` varchar(500) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `NIC` varchar(15) NOT NULL,
  `DOB` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5023 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `fname`, `lname`, `telephone`, `address`, `gender`, `NIC`, `DOB`, `email`, `password`) VALUES
(1001, 'akila', 'sachin', '0112345678', 'asfdfda', 'male', '123456789v', '1990-05-11', 'a@gmail.com', '123'),
(5001, 'rodrick', 'james', '0775226881', '54/b\nzonders road\ncolombo', 'Male', '963258741v', '1983-03-23', 'b@gmail.com', '123'),
(5002, 'nimal', 'fernando', '0112223456', '9th avenue\ncolombo 10', 'Female', '987456123v', '1986-03-15', 'c@gmail.com', '1234'),
(5003, 'james', 'arthur', '0778529661', 'royal avenue\ncolombo 7', 'Female', '837456214v', '1983-03-15', '', ''),
(5004, 'jessica', 'alba', '0116589547', '9th avenue\ncolombo', 'Female', '423456789v', '1986-02-11', '', ''),
(5005, 'ava', 'lorence', '0112345678', '5th avenue\ncolombo', 'Male', '423446789v', '1995-02-27', '', ''),
(5006, 'kamal', 'fernando', '0112345678', '9b, lake road,\nathurugiriya\n', 'Male', '423456689v', '1983-03-23', '', ''),
(5007, 'jhony', 'singer', '0768552443', 'sir. james road\ncolombo 10', 'Male', '741258963v', '1983-09-06', '', ''),
(5008, 'dean', 'winchester', '0764552998', 'anderson road\nnegombo', 'Male', '963123852v', '1976-06-14', '', ''),
(5009, 'shenaya', 'fernando', '0758446221', '3rd avenue\ncolombo', 'Female', '741456852v', '1974-05-10', '', ''),
(5010, 'christina', 'archula', '0758446332', 'st.peters road\ncolombo 7', 'Female', '963456741v', '1991-10-16', '', ''),
(5011, 'Doolitha', 'Samaranayaka', '0112744243', 'siripala mawatha\ncolombo', 'Female', '963573022v', '1991-10-16', 'doo@gmail.com', '123'),
(5012, 'sanuka', 'perera', '0778991446', 'lakshaman road\nnegombo0', 'Male', '950780177v', '1995-03-18', '', ''),
(5013, 'sunil', 'fernanado', '0778991446', 'lake road \nnegombo', 'Male', '123456999v', '2017-09-23', '', ''),
(5016, 'Akila', 'sliit', '0703342253', '', '', '963573022v', '', 'akila.jayasinghe@my.sliit.lk', '123'),
(5018, 'ad', 'asdasd', '0711234567', '', '', '963573022v', '', 'razorsl1995@gmail.com', '123'),
(5019, 'nimal', 'sirirpla', '14523', '', '', '975661717v', '', 'akilaf95@gmail.com', 'akila123'),
(5020, 'redda', 'samaranayaka', '0715523659', '', '', '123456789v', '', 'mithila210@gmail.com', '123123123'),
(5021, 'Rezor', 'Kenway', '0740512256', '', '', '999999999V', '', 'rezorkenway@Gmail.com', '123456789'),
(5022, 'kkamal', 'somap', '0778991440', 'gjgjvgjg', 'Male', '651256785v', '2017-11-20', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `decorationevent`
--

CREATE TABLE IF NOT EXISTS `decorationevent` (
  `item` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  PRIMARY KEY (`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `decorationevent`
--

INSERT INTO `decorationevent` (`item`, `price`) VALUES
('Balloon Decorations', '3000'),
('Candles for night Functions', '3000'),
('Chair Decorations ', '5000'),
('Discolights', '7000'),
('Flower Decorations', '7000'),
('Indoor Carpet', '5000'),
('Outdoor Carpet', '5000'),
('Settee Back', '15000'),
('Table Decorations', '5000');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE IF NOT EXISTS `delivery` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `customerID` varchar(100) DEFAULT NULL,
  `itemName` varchar(500) DEFAULT NULL,
  `itemNo` varchar(100) DEFAULT NULL,
  `roomNo` varchar(100) DEFAULT NULL,
  `qty` varchar(100) DEFAULT NULL,
  `unitprice` varchar(100) DEFAULT NULL,
  `cost` varchar(500) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `reqDate` varchar(100) DEFAULT NULL,
  `reqTime` varchar(100) DEFAULT NULL,
  `delivery` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`ID`, `customerID`, `itemName`, `itemNo`, `roomNo`, `qty`, `unitprice`, `cost`, `description`, `reqDate`, `reqTime`, `delivery`) VALUES
(23, '1001', 'cheese', '14', '1001', '5', '260', '1300.0', 'DFDF', 'Thu Oct 15 00:00:00 IST 2020', '2.00PM', 'Done'),
(35, '1001', 'CAKE', '36', '1001', '3', '200', '600.0', 'SD', '2017-11-20', '1.00', 'Waiting');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE IF NOT EXISTS `email` (
  `subscribeid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(150) NOT NULL,
  PRIMARY KEY (`subscribeid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`subscribeid`, `email`) VALUES
(40, 'razorsl1995@gmail.com'),
(43, 'chathusara96@gmail.com'),
(45, 'sanav4@gmail.com'),
(46, 'akila.jayasinghe@my.sliit.lk'),
(47, 'mithila@210gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `empdetails`
--

CREATE TABLE IF NOT EXISTS `empdetails` (
  `empid` int(11) NOT NULL AUTO_INCREMENT,
  `nic` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dob` text,
  `gender` varchar(15) NOT NULL,
  `address` varchar(200) NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `job` varchar(100) NOT NULL,
  `bsal` varchar(15) NOT NULL,
  `doj` text NOT NULL,
  `Shift` varchar(6) NOT NULL,
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`empid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `empdetails`
--

INSERT INTO `empdetails` (`empid`, `nic`, `name`, `dob`, `gender`, `address`, `contact_number`, `email`, `job`, `bsal`, `doj`, `Shift`, `image`) VALUES
(1, '901212123v', 'Vinura ', '1990-01-01', 'Male', 'matara', '0771231231', 'abc@gmail.com', 'Assistant', '10000', '2017-01-01', 'Day', 'null'),
(2, '923434342v', 'Sahan S', '1980-01-01', 'Male', 'Galle', '0781231231', 'abc@yahoo.com', 'Security', '8000', '2017-02-01', 'Night', 'C:@Users@Akila Sachin@Documents@NetBeansProjects@HMS@src@Employee@eimages@face3m.jpg'),
(4, '950123123v', 'Kumara', '1980-01-01', 'Male', '12A,Colombo Road,Maradana', '0771234561', 'ksam@yahoo.com', 'Cook', '9000', '2017-02-01', 'Day', 'C:@Users@Akila Sachin@Documents@NetBeansProjects@HMS@src@Employee@eimages@face4m.jpeg'),
(5, '984333333v', 'Samaranayake', '1970-01-01', 'Female', 'Malabe', '0781112223', 'dsam@yahoo.com', 'Receptionist', '12000', '2017-02-01', 'Day', 'C:@Users@Akila Sachin@Documents@NetBeansProjects@HMS@src@Employee@eimages@face5f.jpg'),
(6, '884333333v', 'Kamala', '1990-05-01', 'Female', 'Malabe', '0781114443', 'kl@gmail.com', 'Housekeeping Supervisor', '10000', '2015-02-01', 'Day', 'null'),
(7, '784333333v', 'Sunil', '1990-05-01', 'Male', '12b,Wattala', '0781124443', 's45@gmail.com', 'Security', '8000', '2015-02-01', 'Day', 'null'),
(8, '901212125V', 'Malinda ', '1980-05-08', 'Male', 'Colombo road,Maradana', '0991231231', 'abc@gmail.com', 'House Keeping', '11000', '2017-01-01', 'Day', 'null'),
(14, '902334567V', 'Kusal A', '1990-04-23', 'Male', '45,Malabe', '0981231231', 'deg@gmail.com', 'Event Planner', '11000', '2017-03-12', 'Night', 'null'),
(15, '802334567V', 'Mendis', '1992-04-23', 'Male', '45,Malabe', '0981231231', 'mendis92@gmail.com', 'House Keeping', '11000', '2015-03-12', 'Night', 'null'),
(16, '902334547V', 'Tom', '1990-04-23', 'Male', '45,kadawatha', '0981231231', 'deg@gmail.com', 'Room Boy', '11000', '2017-03-12', 'Day', 'null'),
(17, '345654366v', 'Nimal', '1990-04-23', 'Male', '45,kadawatha', '0966644453', 'nimal90@gmail.com', 'Room Boy', '11000', '2017-03-12', 'Day', 'null'),
(18, '822334567V', 'Nimala', '1992-04-23', 'Female', '45,Malabe', '0981231231', 'abcee@gmail.com', 'House Keeping', '11000', '2015-03-12', 'Day', 'null'),
(19, '820334567V', 'Kamal', '1992-04-23', 'Male', '15a,wattala road', '0981231231', 'abcee@gmail.com', 'Porter', '8000', '2017-03-12', 'Day', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `emp_all_payments`
--

CREATE TABLE IF NOT EXISTS `emp_all_payments` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `paid_date` varchar(100) NOT NULL,
  `empid` varchar(11) NOT NULL,
  `OT_Rate` varchar(10) NOT NULL,
  `Total_OTh` varchar(5) NOT NULL DEFAULT '0',
  `Total_OT_Amount` varchar(10) NOT NULL,
  `DateOf_Join` varchar(10) NOT NULL,
  `Medical` varchar(10) DEFAULT '0',
  `Bonus` varchar(10) DEFAULT '0',
  `Service_Charge` varchar(10) DEFAULT '0',
  `Travel` varchar(10) DEFAULT '0',
  `Rent` varchar(10) DEFAULT '0',
  `Other` varchar(10) DEFAULT '0',
  `epf` varchar(10) NOT NULL,
  `etf` varchar(10) NOT NULL,
  `Nopay` varchar(10) DEFAULT '0',
  `Insurance` varchar(10) DEFAULT '0',
  `Death_donations` varchar(10) DEFAULT '0',
  `Lateness` varchar(10) DEFAULT '0',
  `Gloss_Salary` varchar(10) DEFAULT NULL,
  `Total_Deductions` varchar(10) DEFAULT NULL,
  `Net_Salary` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `emp_all_payments`
--

INSERT INTO `emp_all_payments` (`p_id`, `paid_date`, `empid`, `OT_Rate`, `Total_OTh`, `Total_OT_Amount`, `DateOf_Join`, `Medical`, `Bonus`, `Service_Charge`, `Travel`, `Rent`, `Other`, `epf`, `etf`, `Nopay`, `Insurance`, `Death_donations`, `Lateness`, `Gloss_Salary`, `Total_Deductions`, `Net_Salary`) VALUES
(1, '11/24/2017', '17', '625.0', '0', '0.0', '2017-01-01', '500.0', '0.0', '0.0', '0.0', '0.0', '0.0', '8000.0', '3000.0', '0.0', '0.0', '0.0', '0.0', '100500.0', '11000.0', '89500.0'),
(2, '09/24/2017', '17', '625.0', '0', '0.0', '2017-01-01', '500.0', '0.0', '0.0', '0.0', '0.0', '0.0', '8000.0', '3000.0', '0.0', '0.0', '0.0', '0.0', '100500.0', '11000.0', '89500.0'),
(3, '11/20/2017', '1', '62.5', '0', '0.0', '2017-01-01', '0', '0', '0', '0', '0', '0', '800.0', '300.0', '0', '0', '0', '0', '10000.0', '1100.0', '8900.0'),
(4, '11/20/2017', '4', '56.25', '0', '0.0', '2017-02-01', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '720.0', '270.0', '0.0', '0.0', '0.0', '0.0', '9000.0', '990.0', '8010.0'),
(5, '11/20/2017', '5', '75.0', '0', '0.0', '2017-02-01', '0', '0', '0', '0', '0', '0', '960.0', '360.0', '0', '0', '0', '0', '12000.0', '1320.0', '10680.0');

-- --------------------------------------------------------

--
-- Table structure for table `emp_assign_and_room_status`
--

CREATE TABLE IF NOT EXISTS `emp_assign_and_room_status` (
  `RDRNo` int(11) NOT NULL AUTO_INCREMENT,
  `roomID` varchar(20) NOT NULL,
  `empID` varchar(50) NOT NULL,
  `chkedOutDate` varchar(100) NOT NULL,
  `assDate` varchar(100) NOT NULL,
  `reportedDate` varchar(100) DEFAULT NULL,
  `roomStatus` varchar(100) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`RDRNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `emp_payment`
--

CREATE TABLE IF NOT EXISTS `emp_payment` (
  `A_id` int(11) NOT NULL AUTO_INCREMENT,
  `empid` varchar(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Job` varchar(50) DEFAULT NULL,
  `Basic_Salary` varchar(10) DEFAULT NULL,
  `OT_Rate` varchar(10) DEFAULT NULL,
  `Total_OTh` varchar(5) NOT NULL DEFAULT '0',
  `Total_OT_Amount` varchar(10) DEFAULT NULL,
  `DateOf_Join` varchar(10) DEFAULT NULL,
  `Medical` varchar(10) DEFAULT '0',
  `Bonus` varchar(10) DEFAULT '0',
  `Service_Charge` varchar(10) DEFAULT '0',
  `Travel` varchar(10) DEFAULT '0',
  `Rent` varchar(10) DEFAULT '0',
  `Other` varchar(10) DEFAULT '0',
  `epf` varchar(10) NOT NULL,
  `etf` varchar(10) NOT NULL,
  `Nopay` varchar(10) DEFAULT '0',
  `Insurance` varchar(10) DEFAULT '0',
  `Death_donations` varchar(10) DEFAULT '0',
  `Lateness` varchar(10) DEFAULT '0',
  `Gloss_Salary` varchar(10) DEFAULT NULL,
  `Total_Deductions` varchar(10) DEFAULT NULL,
  `Net_Salary` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`A_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `emp_payment`
--

INSERT INTO `emp_payment` (`A_id`, `empid`, `Name`, `Job`, `Basic_Salary`, `OT_Rate`, `Total_OTh`, `Total_OT_Amount`, `DateOf_Join`, `Medical`, `Bonus`, `Service_Charge`, `Travel`, `Rent`, `Other`, `epf`, `etf`, `Nopay`, `Insurance`, `Death_donations`, `Lateness`, `Gloss_Salary`, `Total_Deductions`, `Net_Salary`) VALUES
(6, '20', NULL, NULL, NULL, '69.44', '0', '0.0', '2017-11-03', '0', '0', '0', '0', '0', '0', '888.88', '333.33', '0', '0', '0', '0', '         ', '         ', '         '),
(7, '1', NULL, NULL, NULL, '62.5', '0', '0.0', '2017-01-01', '0', '0', '0', '0', '0', '0', '800.0', '300.0', '0', '0', '0', '0', '10000.0', '1100.0', '8900.0'),
(8, '4', NULL, NULL, NULL, '56.25', '0', '0.0', '2017-02-01', '0', '0', '0', '0', '0', '0', '720.0', '270.0', '0', '0', '0', '0', '9000.0', '990.0', '8010.0'),
(9, '5', NULL, NULL, NULL, '75.0', '0', '0.0', '2017-02-01', '0', '0', '0', '0', '0', '0', '960.0', '360.0', '0', '0', '0', '0', '12000.0', '1320.0', '10680.0');

-- --------------------------------------------------------

--
-- Table structure for table `eventdeco`
--

CREATE TABLE IF NOT EXISTS `eventdeco` (
  `evid` int(10) NOT NULL,
  `decoration` varchar(400) NOT NULL,
  `dprice` varchar(400) NOT NULL,
  PRIMARY KEY (`evid`,`decoration`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eventdeco`
--

INSERT INTO `eventdeco` (`evid`, `decoration`, `dprice`) VALUES
(1, 'Chair Decorations', '5000.00');

-- --------------------------------------------------------

--
-- Table structure for table `eventlocation`
--

CREATE TABLE IF NOT EXISTS `eventlocation` (
  `locationID` varchar(100) NOT NULL,
  `eventID` varchar(100) NOT NULL,
  PRIMARY KEY (`locationID`,`eventID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventmenue`
--

CREATE TABLE IF NOT EXISTS `eventmenue` (
  `evid` int(11) NOT NULL,
  `food` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  PRIMARY KEY (`evid`,`food`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eventmenue`
--

INSERT INTO `eventmenue` (`evid`, `food`, `type`, `price`) VALUES
(1, 'Vegetable Chopsy', 'curry', '200'),
(1, 'Prawn Curry', 'curry', '350'),
(1, 'Fanta', 'beverage', '150'),
(1, 'Lime', 'drink', '200'),
(1, 'Chicken Fried Rice', 'rice', '400');

-- --------------------------------------------------------

--
-- Table structure for table `extradeco`
--

CREATE TABLE IF NOT EXISTS `extradeco` (
  `did` int(10) NOT NULL AUTO_INCREMENT,
  `dname` varchar(400) NOT NULL,
  `dprice` varchar(400) NOT NULL,
  PRIMARY KEY (`did`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `extradeco`
--

INSERT INTO `extradeco` (`did`, `dname`, `dprice`) VALUES
(1, 'Flower Decorations', '7000.00'),
(2, 'Table Decorations', '5000.00'),
(3, 'Chair Decorations', '5000.00'),
(4, 'Balloon Decorations', '3000.00'),
(5, 'Settee Back', '15000.00'),
(6, 'Indoor Carpet', '5000.00'),
(7, 'Outdoor Carpet', '5000.00');

-- --------------------------------------------------------

--
-- Table structure for table `extra_items_info`
--

CREATE TABLE IF NOT EXISTS `extra_items_info` (
  `itemNo` varchar(50) NOT NULL,
  `item_type` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL,
  `cost` varchar(100) NOT NULL,
  PRIMARY KEY (`itemNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `extra_items_info`
--

INSERT INTO `extra_items_info` (`itemNo`, `item_type`, `description`, `cost`) VALUES
('IT01', 'Light furniture', 'Stools,Pilows,Chairs', '850'),
('IT02', 'Heavy Furniture', 'Sofa,Arm-Chair', '1500'),
('IT03', 'Electrical Appliances', 'Table Lamp,Extension cord,TV', '1500'),
('IT04', 'Internet - Package 1', '1 GB', '250'),
('IT05', 'Internet - Package 2', 'More than 2 GB', '550'),
('IT06', 'Other', 'Furniture arrangement / Decoration change in room(Labor cost)', '1000');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `fkuserID` varchar(50) NOT NULL,
  `q1` varchar(50) NOT NULL,
  `q2` varchar(50) NOT NULL,
  `q3` varchar(50) NOT NULL,
  `comment` varchar(250) NOT NULL DEFAULT 'no comment',
  `roomNo` int(11) NOT NULL,
  PRIMARY KEY (`fkuserID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fkuserID`, `q1`, `q2`, `q3`, `comment`, `roomNo`) VALUES
('1', '3.5', '3.5', '3.5', 'Best service ever', 0),
('5008', '3.0', '3.0', '4.0', 'Nice place to stay.', 0),
('5003', '4.0', '4.0', '4.0', 'Perfect accommodation and service experience', 0),
('5028', '3.5', '4.0', '4.5', 'A++++ services', 0),
('1001', '0.0', '0.0', '0.0', 'no comment', 1001);

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE IF NOT EXISTS `food` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `customerID` varchar(200) DEFAULT NULL,
  `foodName` varchar(500) DEFAULT NULL,
  `category` varchar(500) DEFAULT NULL,
  `reqDate` varchar(100) DEFAULT NULL,
  `reqTime` varchar(100) DEFAULT NULL,
  `roomNo` varchar(100) DEFAULT NULL,
  `qty` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `totcost` varchar(100) DEFAULT NULL,
  `delivery` varchar(100) DEFAULT NULL,
  `foodID` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=117 ;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`ID`, `customerID`, `foodName`, `category`, `reqDate`, `reqTime`, `roomNo`, `qty`, `price`, `totcost`, `delivery`, `foodID`) VALUES
(58, '5012', 'Vegetable Fried Rice', 'Breakfast', '2017-11-15', '3.00PM', '1004', '4', '300', '1200.0', 'Done', '3'),
(59, '5012', 'Chicken Fried Rice', 'Breakfast', '2017-11-15', '3.00PM', '1004', '4', '400', '1600.0', 'Done', '5'),
(67, '1001', 'Mutton Fried Rice', 'Breakfast', 'Mon Nov 20 00:00:00 IST 2017', '12.00PM', '1001', '6', '500', '3000.0', 'Waiting', '35'),
(68, '1001', 'Portello', 'Breakfast', '2017-11-20', '1.00PM', '1001', '2', '150', '300.0', 'Waiting', '22'),
(70, '1001', 'Fruit Salad', 'lunch', '2017-11-20', '1.00', '1001', '3', '200', '600.0', 'Waiting', '29'),
(113, '1001', 'Pudding', 'Breakfast', 'Mon Nov 20 00:00:00 IST 2017', '1.00pm', '1001', '4', '250', '1000.0', 'Waiting', '26'),
(114, '1001', 'White Rice', 'Breakfast', 'Mon Nov 20 00:00:00 IST 2017', 'not updated', '1001', '4', '300', '1200.0', 'Waiting', '2'),
(115, '1001', 'Egg Fried Rice', 'rice', '2017-11-20', 'not updated', '1001', '1', '350', '350', 'Waiting', '4');

-- --------------------------------------------------------

--
-- Table structure for table `foodmenu`
--

CREATE TABLE IF NOT EXISTS `foodmenu` (
  `fid` int(100) NOT NULL AUTO_INCREMENT,
  `fname` varchar(400) NOT NULL,
  `type` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL DEFAULT 'Not yet',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `foodmenu`
--

INSERT INTO `foodmenu` (`fid`, `fname`, `type`, `price`, `description`) VALUES
(1, 'Red Rice', 'rice', '300', 'Srilankan style red rice'),
(2, 'White Rice', 'rice', '300', 'Basmathi white rice'),
(3, 'Vegetable Fried Rice', 'rice', '300', 'Four vegetable with samba rice'),
(4, 'Egg Fried Rice', 'rice', '350', 'Samba rice'),
(5, 'Chicken Fried Rice', 'rice', '400', 'Basmathi rice with chilly paste'),
(6, 'Chicken Biriyani', 'rice', '450', 'Basmathi rice'),
(7, 'Nassiguran', 'rice', '700', 'Jumbo sausage with Nassiguran'),
(8, 'Vegetable Curry', 'curry', '200', 'with four vegetables'),
(9, 'Omlet', 'curry', '150', 'for 2 person'),
(10, 'Fried Sausages(4pcs)', 'curry', '200', 'Jumbo chicken sausage'),
(11, 'Chicken Curry', 'curry', '200', 'For two person'),
(12, 'Lamb Curry', 'curry', '500', 'For two person'),
(13, 'Crab Curry', 'curry', '350', 'For two person'),
(14, 'Lobster Curry', 'curry', '400', 'For two person'),
(15, 'Water', 'drink', '100', '500ml'),
(16, 'Black Majito', 'drink', '200', 'For one person'),
(17, 'Chocolate/Vanilla Shake', 'drink', '250', 'For one person'),
(18, 'Faluda', 'drink', '250', 'For one person'),
(19, 'Sweet Lassi', 'drink', '300', 'For one person'),
(20, 'Black Berry', 'drink', '500', 'For one person'),
(21, 'Ginger Beer', 'beverage', '150', '500ml'),
(22, 'Portello', 'beverage', '150', '500ml'),
(23, 'Fanta', 'beverage', '150', '500ml'),
(24, 'Sprite', 'beverage', '150', '500ml'),
(25, 'Ice Cream', 'dessert', '200', 'For one person'),
(26, 'Pudding', 'dessert', '250', 'For one person'),
(27, 'Flavoured Jelly', 'dessert', '250', 'For one person'),
(28, 'Watalappan', 'dessert', '250', 'For one person'),
(29, 'Fruit Salad', 'dessert', '200', 'For one person'),
(30, 'Mixed Ice Cream', 'dessert', '250', 'For one person'),
(31, 'Egg Biriyani', 'rice', '400', 'Four eggs ,chilly paste with samba rice '),
(32, 'Beef Fried Rice', 'rice', '500', 'Chilly paste with samba rice'),
(33, 'Pork Fried Rice', 'rice', '500', 'Chilly paste with samba rice'),
(34, 'Beef Biriyani', 'rice', '550', 'Chilly paste with Basmathi rice'),
(35, 'Mutton Fried Rice', 'rice', '500', 'Chilly paste with Basmathi rice'),
(36, 'Sea Food Fried Rice', 'rice', '600', 'Chilly paste with Basmathi rice'),
(37, 'Mongolian Black Rice', 'rice', '700', 'Chilly paste with Basmathi red rice'),
(38, 'Lamb Fried Rice', 'rice', '800', 'Chiily paste with Basmathi rice'),
(39, 'Steamed Vegetable', 'curry', '200', 'For one person'),
(40, 'Vegetable Chopsy', 'curry', '200', 'For one person'),
(41, 'Chrispy Chicken', 'curry', '250', 'For one person'),
(42, 'Beef Curry', 'curry', '250', 'For one person'),
(43, 'Pork Curry', 'curry', '300', 'For one person'),
(44, 'Fish Curry', 'curry', '250', 'For one person'),
(45, 'Prawn Curry', 'curry', '350', 'For one person'),
(46, 'CuttleFish Curry', 'curry', '350', 'For one person'),
(47, 'Fried Cheesy Lamb', 'curry', '700', 'For one person'),
(48, 'Lime', 'drink', '200', 'For one person'),
(49, 'Fruit Juice', 'drink', '200', 'For one person'),
(50, 'Doorian ', 'drink', '350', 'For one person'),
(51, 'Peach', 'drink', '400', 'For one person'),
(52, 'Raspberry', 'drink', '500', 'For one person'),
(53, 'Soda', 'beverage', '100', '500ml'),
(54, 'Cream Soda', 'beverage', '100', '500ml'),
(55, 'Coca Cola', 'beverage', '150', '500ml'),
(56, 'Custard Pudding', 'dessert', '250', 'For one person'),
(57, 'Chocolate Pudding', 'dessert', '250', 'For one person'),
(58, 'Biscuit Pudding', 'dessert', '250', 'For one person'),
(59, 'Chocolate Strawberry Ice Cream', 'dessert', '200', 'For one person'),
(60, 'Blueberry Ice Cream', 'dessert', '300', 'For one person'),
(61, 'Mixed Fried Rice', 'rice', '550', 'Chilly paste,vegitables with samba rice');

-- --------------------------------------------------------

--
-- Table structure for table `foodmenu1`
--

CREATE TABLE IF NOT EXISTS `foodmenu1` (
  `fid` int(100) NOT NULL,
  `fname` varchar(400) NOT NULL,
  `type` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `foodmenu1`
--

INSERT INTO `foodmenu1` (`fid`, `fname`, `type`, `price`) VALUES
(1, 'Red Rice', 'rice', '300'),
(2, 'White Rice', 'rice', '300'),
(3, 'Vegetable Fried Rice', 'rice', '300'),
(4, 'Egg Fried Rice', 'rice', '350'),
(5, 'Chicken Fried Rice', 'rice', '400'),
(6, 'Chicken Biriyani', 'rice', '450'),
(7, 'Nassiguran', 'rice', '700'),
(8, 'Vegetable Curry', 'curry', '200'),
(9, 'Omlet', 'curry', '150'),
(10, 'Fried Sausages(4pcs)', 'curry', '200'),
(11, 'Chicken Curry', 'curry', '200'),
(12, 'Lamb Curry', 'curry', '500'),
(13, 'Crab Curry', 'curry', '350'),
(14, 'Lobster Curry', 'curry', '400'),
(15, 'Water', 'drink', '100'),
(16, 'Black Majito', 'drink', '200'),
(17, 'Chocolate/Vanilla Shake', 'drink', '250'),
(18, 'Faluda', 'drink', '250'),
(19, 'Sweet Lassi', 'drink', '300'),
(20, 'Black Berry', 'drink', '500'),
(21, 'Ginger Beer', 'beverage', '150'),
(22, 'Portello', 'beverage', '150'),
(23, 'Fanta', 'beverage', '150'),
(24, 'Sprite', 'beverage', '150'),
(25, 'Ice Cream', 'dessert', '200'),
(26, 'Pudding', 'dessert', '250'),
(27, 'Flavoured Jelly', 'dessert', '250'),
(28, 'Watalappan', 'dessert', '250'),
(29, 'Fruit Salad', 'dessert', '200'),
(30, 'Mixed Ice Cream', 'dessert', '250'),
(31, 'Egg Biriyani', 'rice', '400'),
(32, 'Beef Fried Rice', 'rice', '500'),
(33, 'Pork Fried Rice', 'rice', '500'),
(34, 'Beef Biriyani', 'rice', '550'),
(35, 'Mutton Fried Rice', 'rice', '500'),
(36, 'Sea Food Fried Rice', 'rice', '600'),
(37, 'Mongolian Black Rice', 'rice', '700'),
(38, 'Lamb Fried Rice', 'rice', '800'),
(39, 'Steamed Vegetable', 'curry', '200'),
(40, 'Vegetable Chopsy', 'curry', '200'),
(41, 'Chrispy Chicken', 'curry', '250'),
(42, 'Beef Curry', 'curry', '250'),
(43, 'Pork Curry', 'curry', '300'),
(44, 'Fish Curry', 'curry', '250'),
(45, 'Prawn Curry', 'curry', '350'),
(46, 'CuttleFish Curry', 'curry', '350'),
(47, 'Fried Cheesy Lamb', 'curry', '700'),
(48, 'Lime', 'drink', '200'),
(49, 'Fruit Juice', 'drink', '200'),
(50, 'Doorian ', 'drink', '350'),
(51, 'Peach', 'drink', '400'),
(52, 'Raspberry', 'drink', '500'),
(53, 'Soda', 'beverage', '100'),
(54, 'Cream Soda', 'beverage', '100'),
(55, 'Coca Cola', 'beverage', '150'),
(56, 'Custard Pudding', 'dessert', '250'),
(57, 'Chocolate Pudding', 'dessert', '250'),
(58, 'Biscuit Pudding', 'dessert', '250'),
(59, 'Chocolate Strawberry Ice Cream', 'dessert', '200'),
(60, 'Blueberry Ice Cream', 'dessert', '300'),
(61, 'Mixed Fried Rice', 'rice', '550');

-- --------------------------------------------------------

--
-- Table structure for table `foodorder`
--

CREATE TABLE IF NOT EXISTS `foodorder` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `food_desc` varchar(200) NOT NULL,
  `fk_user_id` varchar(100) NOT NULL,
  `order_quantity` int(11) NOT NULL,
  `fk_food_id` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `price` varchar(100) NOT NULL,
  `roomno` varchar(60) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=328 ;

--
-- Dumping data for table `foodorder`
--

INSERT INTO `foodorder` (`order_id`, `food_desc`, `fk_user_id`, `order_quantity`, `fk_food_id`, `status`, `price`, `roomno`, `date`) VALUES
(321, 'Red Rice', '1001', 1, '1', 0, '300', '1001', '2017-11-20 16:02:20'),
(322, 'White Rice', '1001', 1, '2', 0, '300', '1001', '2017-11-20 16:02:20'),
(323, 'Lamb Fried Rice', '1001', 1, '38', 0, '800', '1001', '2017-11-20 16:02:20'),
(324, 'Omlet', '1001', 1, '9', 0, '150', '1001', '2017-11-20 16:02:20'),
(325, 'Flavoured Jelly', '1001', 1, '27', 0, '250', '1001', '2017-11-20 16:02:20');

-- --------------------------------------------------------

--
-- Table structure for table `Gbook`
--

CREATE TABLE IF NOT EXISTS `Gbook` (
  `bid` int(11) NOT NULL,
  `bname` varchar(100) NOT NULL,
  `auth` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Gbook`
--

INSERT INTO `Gbook` (`bid`, `bname`, `auth`) VALUES
(1, 'soma', 'gura'),
(2, 'surangi', 'gura');

-- --------------------------------------------------------

--
-- Table structure for table `Glogin`
--

CREATE TABLE IF NOT EXISTS `Glogin` (
  `cusid` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  PRIMARY KEY (`cusid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Glogin`
--

INSERT INTO `Glogin` (`cusid`, `user`, `pass`) VALUES
(1, 'gura', '12');

-- --------------------------------------------------------

--
-- Table structure for table `guest_check_out`
--

CREATE TABLE IF NOT EXISTS `guest_check_out` (
  `CONo` int(100) NOT NULL AUTO_INCREMENT,
  `guestID` varchar(200) NOT NULL,
  `guestName` varchar(400) NOT NULL,
  `roomID` varchar(100) NOT NULL,
  `checkOutDate` varchar(500) NOT NULL,
  `cost` varchar(500) NOT NULL,
  PRIMARY KEY (`CONo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `guest_check_out`
--

INSERT INTO `guest_check_out` (`CONo`, `guestID`, `guestName`, `roomID`, `checkOutDate`, `cost`) VALUES
(1, 'cu1', 'c j', 'r001', '', '25000');

-- --------------------------------------------------------

--
-- Table structure for table `guider`
--

CREATE TABLE IF NOT EXISTS `guider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `rate` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `specilify` varchar(100) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `4tos_name` varchar(200) DEFAULT NULL,
  `pat_cost` varchar(200) NOT NULL,
  `4n` varchar(10) NOT NULL,
  `image` varchar(1000) DEFAULT 'NO',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `guider`
--

INSERT INTO `guider` (`id`, `name`, `rate`, `type`, `cost`, `specilify`, `comment`, `4tos_name`, `pat_cost`, `4n`, `image`) VALUES
(13, 'saranga bandara', '4', 'Normal', '5000', 'kandy', '****************', NULL, '1000', '071556852', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@icon@Untitled-8.jpg'),
(11, 'palitha samaranayaka', '4', 'VIP', '6000', 'all', '*****************\n******************\n************\n***********\n***********', NULL, '1000', '0715589562', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@gu@g1.jpg'),
(16, 'sadasidu bandara', '2', 'VIP', '6000', 'kandy', '*******\n************\n************\n*************\n*************\n************\n***************', NULL, '2000', '071558264', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@gu@g3.jpg'),
(14, 'suriya kunmara ', '4', 'VIP', '5000', 'kandy', '****************\n****************\n*****************\n**************', NULL, '1000', '071552685', 'C:@Users@acer@Desktop@Untitled-8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `it160_customer_selection_package_2`
--

CREATE TABLE IF NOT EXISTS `it160_customer_selection_package_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer__id` varchar(100) NOT NULL,
  `package_id` varchar(100) NOT NULL,
  `vehicle_id` varchar(100) NOT NULL,
  `guider` varchar(100) NOT NULL,
  `A_cost` varchar(100) NOT NULL,
  `addtional_cost` varchar(100) NOT NULL DEFAULT '0',
  `payment` varchar(100) NOT NULL DEFAULT 'NO',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `it160_customer_selection_package_2`
--

INSERT INTO `it160_customer_selection_package_2` (`id`, `customer__id`, `package_id`, `vehicle_id`, `guider`, `A_cost`, `addtional_cost`, `payment`) VALUES
(31, '5009', '25', 'DS-6571', 'null', '30550.0', '0', 'NO'),
(30, '5006', '27', 'DWS-6523', 'null', '46000.0', '0', 'NO'),
(27, '5002', '28', 'DS-6571', '11', '2558620.0', '0', 'NO'),
(28, '5011', '27', '56-6532', 'null', '41000.0', '0', 'NO'),
(20, '6699', '20', '56-6532', 'null', '33000.0', '0', 'NO'),
(24, '9999', '8', 'DWS-6523', '11', '78000.0', '0', 'NO'),
(29, '5003', '25', '56-6532', 'null', '35000.0', '0', 'NO'),
(26, '5013', '8', 'DS-6571', '11', '57550.0', '0', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `it160_package_location_history`
--

CREATE TABLE IF NOT EXISTS `it160_package_location_history` (
  `package_id` varchar(100) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_1` varchar(100) NOT NULL,
  `location_2` varchar(100) NOT NULL,
  `location_3` varchar(100) NOT NULL,
  `location_4` varchar(100) NOT NULL,
  `location_5` varchar(100) NOT NULL,
  `location_6` varchar(100) NOT NULL,
  `location_7` varchar(100) NOT NULL,
  `location_8` varchar(100) NOT NULL,
  `location_9` varchar(100) NOT NULL,
  `location_10` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `it160_package_location_history`
--

INSERT INTO `it160_package_location_history` (`package_id`, `id`, `location_1`, `location_2`, `location_3`, `location_4`, `location_5`, `location_6`, `location_7`, `location_8`, `location_9`, `location_10`) VALUES
('21', 28, 'Udawalawe National Park', 'Anuradhapura', 'Anuradhapura', 'Victoria Golf and Country Resort ', 'golden ground', 'Yala National Park', 'Kothmale', 'Kothmale', 'Udawalawa National Park', 'Udawalawe National Park'),
('20', 17, 'katharagama', 'Udawalawe National Park ', 'Kandy', 'kurunagala', 'Galle', 'Kithulgala', 'piduruthalaga', 'Sigiriya', 'Yala National Park', 'Ampara'),
('7', 27, 'Temple of Tooth', 'Hanthana ', 'piduruthalaga', 'Kothmale', 'Devon Falls', 'golden ground', 'Victoria Golf and Country Resort ', 'Gadaladeniya Rajamaha Viharaya', 'Udawalawe National Park', 'Sigiriya'),
('25', 30, 'Gadaladeniya', 'Bahirawa kande', 'Hanthana', 'Temple of the Tooth', 'Lankathilaka', 'Ambuluwawa', 'Pinnawala', 'KCC', 'Peradeniya', ''),
('8', 24, 'Temple of Tooth', 'Ambalangoda', 'Devon Falls', 'Victoria Golf and Country Resort ', 'golden ground', 'Yala National Park', 'Kothmale', 'Hanthana ', 'Galle', 'Udawalawe National Park'),
('25', 31, 'Temple of the Tooth', 'Ambuluwawa', 'Bahirawa kande', 'Gadaladeniya', 'Hanthana', 'KCC', 'Lankathilaka', 'Peradeniya', 'Pinnawala', 'Ambewela'),
('27', 32, 'Adisham Bungalow', 'Ambewela', 'Ella', 'Nuwara Eliya Golf Club', 'Lake Gregory', 'Hakgala Botanical Garden', 'Hatton', 'Horton Plains', 'Mackwoods', 'St-Clair-Falls'),
('28', 33, 'Bundala National Park', 'Habarana', 'Minneriya National Park', 'Pigeon Island National Park', 'Sinharaja Forest ', 'Sigiriya', 'Udawalawe', 'Wilpattu National Park', 'Yala National Park', 'St-Clair-Falls');

-- --------------------------------------------------------

--
-- Table structure for table `it160_package_vehicle_history`
--

CREATE TABLE IF NOT EXISTS `it160_package_vehicle_history` (
  `pachage_id` varchar(100) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_1` varchar(100) NOT NULL,
  `vehicle_2` varchar(100) NOT NULL,
  `vehicle_3` varchar(100) NOT NULL,
  `vehicle_4` varchar(100) NOT NULL,
  `vehicle_5` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `it160_package_vehicle_history`
--

INSERT INTO `it160_package_vehicle_history` (`pachage_id`, `id`, `vehicle_1`, `vehicle_2`, `vehicle_3`, `vehicle_4`, `vehicle_5`) VALUES
('3636', 1, 'sfsdfs+989+8+8', 'sfsdfs+989+8+8', 'sfsdfs+989+8+8', 'sfsdfs+989+8+8', 'sfsdfs+989+8+8'),
('f', 2, '878sdadasd', '878sdadasd', '878sdadasd', '878sdadasd', '878sdadasd'),
('', 3, 'xdfsdf545656', 'xdfsdf545656', 'xdfsdf545656', 'xdfsdf545656', 'xdfsdf545656'),
('', 4, 'xdfsdf545656', 'xdfsdf545656', 'xdfsdf545656', 'xdfsdf545656', 'xdfsdf545656'),
('', 5, 'xdfsdf545656', 'xdfsdf545656', 'xdfsdf545656', 'xdfsdf545656', 'xdfsdf545656');

-- --------------------------------------------------------

--
-- Table structure for table `laundry_info`
--

CREATE TABLE IF NOT EXISTS `laundry_info` (
  `LINo` varchar(100) NOT NULL,
  `laundryType` varchar(200) NOT NULL,
  `cost` varchar(200) NOT NULL,
  PRIMARY KEY (`LINo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laundry_info`
--

INSERT INTO `laundry_info` (`LINo`, `laundryType`, `cost`) VALUES
('L01', '<5', '750.00'),
('L02', '<2kg', '1000.00'),
('L03', '<5kg', '1250'),
('L04', '>5kg', '1500');

-- --------------------------------------------------------

--
-- Table structure for table `laundry_orders`
--

CREATE TABLE IF NOT EXISTS `laundry_orders` (
  `LAUNo` int(100) NOT NULL AUTO_INCREMENT,
  `roomID` varchar(200) NOT NULL,
  `guestID` varchar(200) NOT NULL,
  `qty` varchar(200) NOT NULL,
  `orderDate` varchar(200) NOT NULL,
  `estDate` varchar(200) NOT NULL,
  `washType` varchar(200) NOT NULL,
  `cost` varchar(30) NOT NULL,
  `Sname` varchar(100) NOT NULL DEFAULT 'Laundry Service',
  PRIMARY KEY (`LAUNo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `laundry_orders`
--

INSERT INTO `laundry_orders` (`LAUNo`, `roomID`, `guestID`, `qty`, `orderDate`, `estDate`, `washType`, `cost`, `Sname`) VALUES
(17, '1001', '1001', '<5', '2017-11-20', '2017-11-22', 'dryClean', '2750.0', 'Laundry Service'),
(18, '1004', '5012', '<5', '2017-11-20', '2017-11-23', 'normal', '750.0', 'Laundry Service'),
(19, '1001', '1001', '<5kg', '2017-11-20', '2017-11-27', 'seperateHandwash', '2250.0', 'Laundry Service'),
(20, '1006', '5001', '<5', '2017-11-20', '2017-11-22', 'normal', '750.0', 'Laundry Service'),
(21, '1001', '5016', '<2kg', '2017-11-20', '2017-11-22', 'normal', '1000.0', 'Laundry Service');

-- --------------------------------------------------------

--
-- Table structure for table `left_emp_details`
--

CREATE TABLE IF NOT EXISTS `left_emp_details` (
  `empid` int(11) NOT NULL,
  `nic` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dob` text,
  `gender` varchar(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `job` varchar(20) NOT NULL,
  `bsal` varchar(11) NOT NULL,
  `doj` text NOT NULL,
  `Shift` varchar(15) NOT NULL,
  `ldate` varchar(200) NOT NULL,
  PRIMARY KEY (`empid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `left_emp_details`
--

INSERT INTO `left_emp_details` (`empid`, `nic`, `name`, `dob`, `gender`, `address`, `contact_number`, `email`, `job`, `bsal`, `doj`, `Shift`, `ldate`) VALUES
(20, '961123454v', 'Ajith', '2017-11-01', 'Male', '17,colombo', '0712345673', 'abc@gh.com', 'House Keeping', '10000', '2017-11-03', 'Night', '11/20/2017');

-- --------------------------------------------------------

--
-- Table structure for table `locationinfo`
--

CREATE TABLE IF NOT EXISTS `locationinfo` (
  `CustomerId` varchar(500) NOT NULL,
  `crowd` varchar(100) NOT NULL,
  `payment` varchar(100) NOT NULL,
  `locationID` varchar(50) NOT NULL,
  `Date` varchar(50) NOT NULL,
  PRIMARY KEY (`locationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locationinfo`
--

INSERT INTO `locationinfo` (`CustomerId`, `crowd`, `payment`, `locationID`, `Date`) VALUES
('2001', '100', '5000', '101', 'Thu Jan 18 00:00:00 IST 2018'),
('2004', '150', '7500', '103', 'Thu Nov 16 00:00:00 IST 2017'),
('2005', '100', '9000', '104', 'Thu Nov 30 00:00:00 IST 2017'),
('2003', '30', '8000', '201', 'Thu Oct 12 00:00:00 IST 2017'),
('2007', '60', '5000', '206', 'Mon Jan 08 00:00:00 IST 2018'),
('2002', '110', '5000', '301', 'Tue Dec 12 00:00:00 IST 2017'),
('2010', '10', '7000', '306', 'Sat Sep 30 00:00:00 IST 2017'),
('2008', '20', '6000', '308', 'Wed Nov 08 00:00:00 IST 2017'),
('2006', '309', '309', '6800', 'Fri Sep 15 00:00:00 IST 2017');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_info`
--

CREATE TABLE IF NOT EXISTS `maintenance_info` (
  `MID` int(200) NOT NULL AUTO_INCREMENT,
  `main_Type` varchar(200) NOT NULL,
  `objectName` varchar(300) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `startDate` varchar(100) NOT NULL,
  `est_Finish_Date` varchar(100) NOT NULL,
  `actualFinishDate` varchar(100) NOT NULL,
  `availability` varchar(100) NOT NULL,
  PRIMARY KEY (`MID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `maintenance_info`
--

INSERT INTO `maintenance_info` (`MID`, `main_Type`, `objectName`, `cost`, `startDate`, `est_Finish_Date`, `actualFinishDate`, `availability`) VALUES
(1, 'Annual maintenence', 'A/C', '2000', '2017/05/12', '2017/05/13', '2017/05/12', 'On-Going');

-- --------------------------------------------------------

--
-- Table structure for table `massages`
--

CREATE TABLE IF NOT EXISTS `massages` (
  `cid` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `message` varchar(1000) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `massages`
--

INSERT INTO `massages` (`cid`, `name`, `email`, `telephone`, `message`) VALUES
(5, 'kamal', 'kama@gmail.com', '', 'where is this '),
(6, 'adooo', 'akila.jayasinghe@my.sliit.lk', '1234567890', 'sfsdf');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `price` varchar(100) NOT NULL,
  `crowd` int(50) NOT NULL,
  `Amount` varchar(50) NOT NULL,
  `Payment` varchar(50) NOT NULL,
  `EventID` int(50) NOT NULL,
  PRIMARY KEY (`EventID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`price`, `crowd`, `Amount`, `Payment`, `EventID`) VALUES
('400', 150, '60000', '10000', 20),
('5600.0', 50, '', '', 33);

-- --------------------------------------------------------

--
-- Table structure for table `menulist`
--

CREATE TABLE IF NOT EXISTS `menulist` (
  `menuID` varchar(50) NOT NULL,
  `rices` varchar(100) NOT NULL,
  `curries` varchar(100) NOT NULL,
  `desert` varchar(100) NOT NULL,
  `drinks` varchar(100) NOT NULL,
  `beverages` varchar(100) NOT NULL,
  `totalPayment` varchar(100) NOT NULL,
  PRIMARY KEY (`menuID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menuselected`
--

CREATE TABLE IF NOT EXISTS `menuselected` (
  `EID` varchar(20) NOT NULL,
  `price` varchar(20) NOT NULL,
  `crowd` varchar(20) NOT NULL,
  `amount` varchar(20) NOT NULL,
  PRIMARY KEY (`EID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menuselected`
--

INSERT INTO `menuselected` (`EID`, `price`, `crowd`, `amount`) VALUES
('201', '1850.0', '50', '92500.0'),
('6010', '1850.0', '50', '92500.0');

-- --------------------------------------------------------

--
-- Table structure for table `mobilelogin`
--

CREATE TABLE IF NOT EXISTS `mobilelogin` (
  `cusid` varchar(100) NOT NULL,
  `nic` varchar(100) NOT NULL,
  `roomid` varchar(10) NOT NULL,
  PRIMARY KEY (`cusid`,`roomid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mobilelogin`
--

INSERT INTO `mobilelogin` (`cusid`, `nic`, `roomid`) VALUES
('1001', '12', '1001'),
('5003', '123456789v3', '1010'),
('5004', '741852963v', '1012'),
('5008', '123456789v', '1014'),
('5013', '123456789v', '1013'),
('5021', '741852963v', '1009');

-- --------------------------------------------------------

--
-- Table structure for table `mobi_cart`
--

CREATE TABLE IF NOT EXISTS `mobi_cart` (
  `cartID` int(11) NOT NULL AUTO_INCREMENT,
  `fk_food_id` int(11) NOT NULL,
  `food_desc` varchar(200) NOT NULL,
  `fk_user_id` varchar(100) NOT NULL,
  `order_quantity` int(11) NOT NULL,
  `price` varchar(100) NOT NULL,
  `roomno` varchar(60) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`cartID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `mobi_cart`
--

INSERT INTO `mobi_cart` (`cartID`, `fk_food_id`, `food_desc`, `fk_user_id`, `order_quantity`, `price`, `roomno`, `date`, `type`) VALUES
(40, 26, 'Pudding', '1001', 2, '250', '1001', '2017-11-20 16:28:43', 'dessert'),
(41, 2, 'White Rice', '1001', 2, '300', '1001', '2017-11-20 17:23:19', 'rice'),
(42, 4, 'Egg Fried Rice', '1001', 1, '350', '1001', '2017-11-20 17:23:30', 'rice'),
(43, 5, 'Chicken Fried Rice', '1001', 1, '400', '1001', '2017-11-20 17:32:02', 'rice');

-- --------------------------------------------------------

--
-- Table structure for table `onlinebooking1`
--

CREATE TABLE IF NOT EXISTS `onlinebooking1` (
  `email` varchar(100) NOT NULL,
  `checkin` varchar(100) NOT NULL,
  `checkout` varchar(100) NOT NULL,
  `personcount` varchar(10) NOT NULL,
  `rcount` varchar(10) NOT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlinebooking1`
--

INSERT INTO `onlinebooking1` (`email`, `checkin`, `checkout`, `personcount`, `rcount`, `type`) VALUES
('rezorkenway@Gmail.com', '2017-11-09', '2017-11-22', '1', '1', 'Premium');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `orderID` int(50) NOT NULL AUTO_INCREMENT,
  `productName` varchar(300) NOT NULL,
  `supplierName` varchar(200) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `unitprice` varchar(500) NOT NULL,
  `totpayment` varchar(500) NOT NULL,
  `orderDate` varchar(100) NOT NULL,
  `paymentStatus` varchar(100) NOT NULL,
  `recivDate` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`orderID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderID`, `productName`, `supplierName`, `qty`, `unitprice`, `totpayment`, `orderDate`, `paymentStatus`, `recivDate`) VALUES
(7, 'rice', 'piyumi Ishara', '10', '65', '650.0', '2017-00-06', 'Done', NULL),
(8, 'fish(kg)', 'shehan', '12', '450', '5400.0', '2017-14-14', 'Waiting', NULL),
(9, 'chicken(kg)', 'kasun', '10', '345', '3450.0', '2017-14-13', 'Waiting', NULL),
(10, 'bed sheets', 'mithila', '10', '350', '3500.0', '2017-17-14', 'Waiting', NULL),
(11, 'eggs', 'chathuranga', '30', '20', '600.0', '2017-23-15', 'Done', NULL),
(12, 'vegetables(kg)', 'sanduni sachintha', '2', '45', '90.0', '2017-28-17', 'Done', NULL),
(13, 'friuts', 'Akila Sachin', '20', '230', '4600.0', '2019-00-18', 'Waiting', NULL),
(14, 'electic items', 'pipuni wijesighe', '1', '1200', '1200.0', '2017-32-20', 'Waiting', NULL),
(15, 'sweets(kg)', 'supun hettigoda', '4', '250', '1000.0', '2017-33-21', 'Done', NULL),
(16, 'Cloths', 'Akila Fernando', '3', '569', '1707.0', '2017-34-22', 'Waiting', NULL),
(17, 'rice', 'piyumi', '20', '34', '680.0', 'Tue Aug 13 00:00:00 IST 2019', 'Done', NULL),
(20, 'Bed sheets', 'Mithila Gunawardhana', '3', '200', '600.0', '2017-11-20', 'Waiting', NULL),
(21, 'Bed sheets', 'Mithila Gunawardhana', '30', '120', '3600.0', '2017-19-20', 'Waiting', NULL),
(22, 'electric item', 'pipuni wijeesighe', '3', '400', '1200.0', '2017-51-20', 'Waiting', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `otherreqlist`
--

CREATE TABLE IF NOT EXISTS `otherreqlist` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `customerID` varchar(100) DEFAULT NULL,
  `itemName` varchar(100) DEFAULT NULL,
  `itemNo` varchar(100) DEFAULT NULL,
  `roomNo` varchar(100) DEFAULT NULL,
  `qty` varchar(100) DEFAULT NULL,
  `unitprice` varchar(100) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `reqDate` varchar(100) DEFAULT NULL,
  `reqTime` varchar(100) DEFAULT NULL,
  `delivery` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE IF NOT EXISTS `package` (
  `package_ID` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `rate` int(5) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `image` varchar(1000) DEFAULT 'NO',
  PRIMARY KEY (`package_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`package_ID`, `name`, `rate`, `type`, `description`, `image`) VALUES
(27, 'Nuwara Eliya', 5, 'VIP', 'Nuwara Eliya is a city in the\n tea country hills of central\n Sri Lanka.', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@nuwara eliya@nuwaraeliya.jpg'),
(28, 'Safari', 4, 'VIP', 'bdfbdfbdfbdb', 'C://Users//Akila Sachin//Desktop//terra//FInal Final//PACKAGE p//safari//safari.jpg'),
(25, 'Kandy', 5, 'Normal', 'major city in\n Sri Lanka located in the\n Central Province.\n It was the last capital \nof the ancient kings era\n of Sri Lanka.', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@kandy@kandy.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `LPayment` varchar(20) NOT NULL,
  `LRest` varchar(20) NOT NULL,
  `FullPayment` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`LPayment`, `LRest`, `FullPayment`) VALUES
('5000', '500.0', '100500.0'),
('6000', '1500.0', '101500.0'),
('6000', '500.0', '101500.0'),
('6800', '1300.0', '102300.0'),
('5000', '1500.0', '97500.0'),
('25000', '17000.0', '120500.0');

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE IF NOT EXISTS `place` (
  `place_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `rate` varchar(5) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `Description` varchar(250) NOT NULL,
  `image` varchar(1000) DEFAULT 'NO',
  PRIMARY KEY (`place_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=77 ;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`place_id`, `name`, `type`, `rate`, `cost`, `Description`, `image`) VALUES
(58, 'Ella', 'Normal', '3', '5000', 'small town in the Badulla\n District of Uva Province, \nSri Lanka governed by an \nUrban Council. It is approximately \n200 kilometres (120 mi)\n east of Colombo and is\n situated at an elevation of 1,041 metres ', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@nuwara eliya@Ella.jpg'),
(48, 'Bahirawa kande', 'Normal ', '4', '4000', 'The Sri Maha Bodhi\n Viharaya at Bahirawa kanda\n is a very attractive\n and hilly place in the\n Kandy town. ', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@kandy@bahirawakande.jpg'),
(49, 'Gadaladeniya', 'Normal', '4', '4000', 'Gadaladeniya Viharaya is an ancient\nBuddhist temple.', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@kandy@gadaladeniya.jpg'),
(50, 'Hanthana', 'Normal', '5', '6000', 'Hanthana Mountain Range lies in central Sri Lanka,\nsouth-west of the city of Kandy.\nIt was declared as an environmental protection area.\n', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@kandy@hanthana.jpg'),
(51, 'Temple of the Tooth', 'Normal', '5', '5000', 'Sri Dalada Maligawa or the\n Temple of the Sacred Tooth \nRelic is a Buddhist temple\n in the city of Kandy, \nSri Lanka. It is located in \nthe royal palace complex \nof the former Kingdom of \nKandy, which houses the \nrelic of the tooth of the Buddha.', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@kandy@templetooth.jpg'),
(52, 'KCC', 'Normal', '4', '4000', 'Kandy City Center is the most \nmodern commercial and shopping \ncomplex in Dalada Veediya, Kandy. ', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@kandy@kcc.jpg'),
(53, 'Lankathilaka', 'Normal', '4', '4000', 'Lankathilaka Viharaya is \nan ancient Buddhist temple\n situated in Udunuwara of\n Kandy', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@kandy@lankathiake.jpg'),
(59, 'Adisham Bungalow', 'Normal', '3', '5000', 'Adisham Hall, or Adisham Bungalow is a country house near Haputale,\n in the Badulla District,\n Sri Lanka. At present,\n it houses the Adisham \nmonastery of Saint Benedict. ', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@nuwara eliya@addisonbunglow.jpg'),
(57, 'Pinnawala', 'Normal', '4', '6000', 'Pinnawala Elephant Orphanage, nursery and \ncaptive breeding ground for wild Asian elephants \nlocated at Pinnawala village.\n', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@kandy@pinnawala.jpg'),
(55, 'Peradeniya', 'Normal', '4', '6000', 'Royal Botanical Gardens, Peradeniya is situated in \nthe west of the city of kandy in the  Central Province.\nIt is near the Mahaweli River.And also it is renowned\nfor its collection of orchids\n', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@kandy@peradeniya.JPG'),
(47, 'Ambuluwawa', 'normal', '3', '5000', 'Ambuluwawa mountain hosts a hill top tourist spot that\nhouses a biodiversity complex celebrating environmentalism \nand cultural and religious diversity.', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@kandy@ambuluwawa.jpg'),
(60, 'Ambewela', 'Normal', '5', '6000', 'Ambewela is a small town,\n or a hill station, located in\n the Nuwara Eliya District of \nSri Lanka. The area is also\n sometimes called "Little New\n Zealand".', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@nuwara eliya@ambewela.jpg'),
(61, 'Nuwara Eliya Golf Club', 'VIP', '5', '4000', 'The Nuwara Eliya\n Golf Club is one of the\n oldest Golf Clubs in Sri\n Lanka. Established in the\n late 19th century, it is located in the hill station of Nuwara Eliya.', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@nuwara eliya@golf.jpg'),
(62, 'Lake Gregory', 'Normal', '5', '3000', 'Lake Gregory is a reservoir in \nheart of the tea country hill city,\n Nuwara Eliya, Sri Lanka.', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@nuwara eliya@gregorylake.jpg'),
(63, 'Hakgala Botanical Garden', 'Normal', '5', '3000', 'Hakgala Botanical Garden is \none of the five botanical\n gardens in Sri Lanka.', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@nuwara eliya@hakgala.jpg'),
(64, 'Hatton', 'Normal', '5', '5000', 'Hatton is a town in the Nuwara Eliya District \nof Central Province, Sri Lanka \ngoverned by the Hatton-Dickoya Urban\n Council.', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@nuwara eliya@hatton.jpg'),
(65, 'Horton Plains', 'Normal', '4', '4000', 'Horton Plains National Park is \na protected area in the central highlands \nof Sri Lanka and is covered by montane grassland\n and cloud forest. ', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@nuwara eliya@hortonplace.jpg'),
(66, 'Mackwoods', 'VIP', '3', '5000', 'Mackwoods is a historical tea factory covering \nover 27,000 acres of tea and \nrubber plantations.', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@nuwara eliya@macwood.jpg'),
(67, 'St-Clair-Falls', 'Normal', '3', '4000', 'Devon Falls is a waterfall in Sri Lanka, \nsituated 6 km west of Talawakele, \nNuwara Eliya District on A7 highway.', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@nuwara eliya@St-Clair-Falls.jpg'),
(68, 'Bundala National Park', 'Normal', '1', '5000', 'Bundala National Park is an internationally important wintering ground for migratory water birds in Sri Lanka.', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@safari@bundala.jpg'),
(69, 'Habarana', 'Normal', '1', '5000', 'Habarana is a small city in the Anuradhapura District of Sri Lanka. The location has some mid-range and up hotels aimed at package tourists', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@safari@habarana.jpg'),
(70, 'Minneriya National Park', 'VIP', '1', '4000', 'Minneriya National Park is a national park in North Central Province of Sri Lanka', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@safari@minneriya.jpg'),
(71, 'Pigeon Island National Park', 'vip', '3', '3500', 'Pigeon Island National Park is one of the two marine national parks of Sri Lanka. The national park is situated 1 km off the coast of Nilaveli,', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@safari@pigeon island.jpg'),
(72, 'Sinharaja Forest ', 'VIP', '3', '4000', 'Sinharaja Forest Reserve is a national park and a biodiversity hotspot in Sri Lanka.', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@safari@Sinharaja.jpg'),
(73, 'Sigiriya', 'NormaL', '3', '4000', 'Sigiriya or Sinhagiri is an ancient rock fortress located in the northern Matale District near the town of Dambulla in the Central Province, Sri Lanka.', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@safari@sisgiriya.jpg'),
(74, 'Udawalawe', 'Normal', '2', '3500', 'Udawalawe is a small town located in the southern part of the Ratnapura District in Sri Lanka.', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@safari@udawalawa.jpg'),
(75, 'Wilpattu National Park', 'VIP', '4', '4500', 'Wilpattu National Park is a park located on the island of Sri Lanka. The unique feature of this park ', 'C://Users//Akila Sachin//Desktop//terra//FInal Final//PACKAGE p//safari//wilpattu.jpg'),
(76, 'Yala National Park', 'Normal', '5', '4000', 'Yala National Park is the most visited and second largest national park in Sri Lanka, bordering the Indian Ocean.', 'C://Users//Akila Sachin//Desktop//terra//FInal Final//PACKAGE p//safari//yala.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `quatation`
--

CREATE TABLE IF NOT EXISTS `quatation` (
  `listID` varchar(20) NOT NULL,
  `quatationID` varchar(20) NOT NULL,
  `supplier` varchar(500) NOT NULL,
  `recievedDate` varchar(100) NOT NULL,
  `validPeriod` varchar(100) NOT NULL,
  `itemName` varchar(500) NOT NULL,
  `brand` varchar(500) NOT NULL,
  `unitPrice` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `totPrice` varchar(100) NOT NULL,
  PRIMARY KEY (`quatationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `Name` varchar(50) NOT NULL,
  `customerID` varchar(20) NOT NULL,
  `contactNo` varchar(100) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `SelectedEvent` varchar(20) NOT NULL,
  `EventID` varchar(20) NOT NULL,
  PRIMARY KEY (`customerID`,`EventID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`Name`, `customerID`, `contactNo`, `Email`, `address`, `Gender`, `SelectedEvent`, `EventID`) VALUES
('Sandu', '0001', '0717428831', 's@gmail.com', 'Battaramulla', 'Female', 'Party', '6001'),
('Madhusanka', '0002', '0774883343', 'm@gmail.com', 'Ambalangoda', 'Male', 'Wedding', '6002'),
('Amila', '0003', '0772018640', 'a@gmail.com', 'Tangalle', 'Male', 'Conference', '6003'),
('Nimmi', '0004', '0772018641', 'n@gmail.com', 'Negambo', 'Female', 'Wedding', '6004'),
('Buddhika', '0005', '0773155165', 'b@gmail.com', 'Colombo', 'Male', 'Party', '6005'),
('Abeysinghe', '0006', '0711012020', 'c@gmail.com', 'Piliyandala', 'Female', 'Conference', '6006'),
('Nadeeka', '0007', '0770678863', 'd@gmail.com', 'Nugegoda', 'Female', 'Conference', '6007'),
('Jayasundara', '0008', '0718181775', 'j@gmail.com', 'Battaramulla', 'Male', 'Wedding', '6008'),
('Chinthaka', '0009', '0716008090', 'h@gmail.com', 'Negambo', 'Male', 'Party', '6009'),
('Sayuri', '0010', '0112365231', 'y@gmail.com', 'Matara', 'Female', 'Party', '6010');

-- --------------------------------------------------------

--
-- Table structure for table `reqfoodlist`
--

CREATE TABLE IF NOT EXISTS `reqfoodlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomNo` varchar(100) DEFAULT NULL,
  `customerID` varchar(100) DEFAULT NULL,
  `foodID` varchar(100) DEFAULT NULL,
  `foodName` varchar(100) DEFAULT NULL,
  `reqDate` varchar(100) DEFAULT 'not updated',
  `qty` varchar(100) DEFAULT NULL,
  `unitprice` varchar(100) DEFAULT NULL,
  `reqTime` varchar(100) DEFAULT 'not updated',
  `category` varchar(100) DEFAULT NULL,
  `totcost` varchar(100) DEFAULT NULL,
  `delivery` varchar(100) DEFAULT 'Waiting',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=120 ;

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE IF NOT EXISTS `reservation` (
  `reservationID` int(100) NOT NULL AUTO_INCREMENT,
  `customerID` varchar(100) NOT NULL,
  `checkindate` varchar(100) NOT NULL,
  `checkoutdate` varchar(100) NOT NULL,
  `deposit` varchar(100) NOT NULL,
  `roomid` varchar(100) NOT NULL,
  `reservprice` varchar(100) NOT NULL,
  PRIMARY KEY (`reservationID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=150 ;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`reservationID`, `customerID`, `checkindate`, `checkoutdate`, `deposit`, `roomid`, `reservprice`) VALUES
(100, '1001', '2017-10-22', '2017-11-16', '2000', '1001', '4'),
(103, '5001', '2017-11-14', '2017-11-18', '1000', '1006', '35600.00'),
(105, '5003', '2017-12-19', '2017-12-29', '1000', '1002', '32000.00'),
(108, '5001', '2017-11-22', '2017-11-28', '1000', '1024', '48000.00'),
(112, '5007', '2017-11-22', '2017-11-30', '1000', '1023', '130500.00'),
(113, '5002', '2017-12-04', '2017-12-20', '1000', '1023', '139200.00'),
(114, '5002', '2017-11-24', '2017-12-21', '1000', '1020', '148500.00'),
(115, '5002', '2017-12-20', '2017-12-30', '1000', '1001', '32000.00'),
(116, '5004', '2017-11-30', '2017-12-28', '1000', '1004', '154000.00'),
(131, '5020', '2017-11-06', '2017-11-30', '62304', '1006', '311520'),
(132, '5020', '2017-11-06', '2017-11-30', '0', '1006', '311520'),
(133, '5004', '2017-11-30', '2017-12-01', '1000', '1011', '3700.0'),
(134, '5004', '2017-11-30', '2017-12-01', '1000', '1012', '3700.0'),
(137, '5022', '2017-11-20', '2017-12-20', '1000', '1014', '153700.0'),
(139, '5022', '2017-11-20', '2017-12-20', '100', '1018', '159000.0'),
(140, '5009', '2017-07-20', '2017-07-25', '1000', '1011', '16000.0'),
(141, '5009', '2017-07-20', '2017-07-25', '1000', '1015', '16000.0'),
(142, '5010', '2017-02-20', '2017-08-20', '1000', '1004', '324500.0'),
(143, '5011', '2016-12-20', '2017-08-20', '1000', '1018', '333000.0'),
(144, '5011', '2016-12-20', '2017-09-20', '1000', '1008', '333000.0'),
(146, '5012', '2017-02-20', '2017-08-13', '1000', '1005', '192400.0'),
(147, '5012', '2017-02-20', '2017-08-13', '1000', '1021', '192400.0'),
(148, '5012', '2017-02-20', '2017-08-13', '1000', '1011', '192400.0'),
(149, '5012', '2017-02-20', '2017-08-13', '1000', '1012', '192400.0');

-- --------------------------------------------------------

--
-- Table structure for table `reservation_history`
--

CREATE TABLE IF NOT EXISTS `reservation_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerID` varchar(100) NOT NULL,
  `Billdate` varchar(100) NOT NULL,
  `roomid` varchar(100) NOT NULL,
  `roomrent` varchar(100) NOT NULL,
  `roomarrang` varchar(100) NOT NULL,
  `food` varchar(100) NOT NULL,
  `other` varchar(100) NOT NULL,
  `laundary` varchar(100) NOT NULL,
  `security` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `deposit` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5013 ;

--
-- Dumping data for table `reservation_history`
--

INSERT INTO `reservation_history` (`id`, `customerID`, `Billdate`, `roomid`, `roomrent`, `roomarrang`, `food`, `other`, `laundary`, `security`, `discount`, `deposit`, `total`) VALUES
(5012, '5007', '2017-11-20', 'null,1004', '33000.0', '1100.0', '2800.0', '2400.0', '1000.0', '200.0', '0', '2000', '38500.0');

-- --------------------------------------------------------

--
-- Table structure for table `reservelocation`
--

CREATE TABLE IF NOT EXISTS `reservelocation` (
  `CustomerId` varchar(20) NOT NULL,
  `event` varchar(20) NOT NULL,
  `locationId` varchar(20) NOT NULL,
  `crowd` varchar(20) NOT NULL,
  `Date` varchar(200) NOT NULL,
  `Payment` varchar(20) NOT NULL,
  PRIMARY KEY (`CustomerId`,`locationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reservelocation`
--

INSERT INTO `reservelocation` (`CustomerId`, `event`, `locationId`, `crowd`, `Date`, `Payment`) VALUES
('0001', 'Party', '303', '75', 'Sat Dec 16 00:00:00 IST 2017', '6500'),
('0002', 'Wedding', '101', '100', 'Wed Nov 15 00:00:00 IST 2017', '9000'),
('0003', 'Conference', '202', '20', 'Sun Jan 14 00:00:00 IST 2018', '5000'),
('0004', 'Wedding', '104', '150', 'Sun Nov 05 00:00:00 IST 2017', '6000'),
('0005', 'Party', '301', '80', 'Wed Feb 28 00:00:00 IST 2018', '7000'),
('0006', 'Conference', '201', '20', 'Thu Mar 01 00:00:00 IST 2018', '5000'),
('0007', 'Conference', '203', '45', 'Tue Apr 17 00:00:00 IST 2018', '3000'),
('0008', 'Wedding', '103', '100', 'Wed Nov 15 00:00:00 IST 2017', '3000'),
('0009', 'Party', '302', '100', 'Sat Oct 21 00:00:00 IST 2017', '5000'),
('0010', 'Conference', '102', '25', 'Fri Apr 13 00:00:00 IST 2018', '8000');

-- --------------------------------------------------------

--
-- Table structure for table `reserveticket`
--

CREATE TABLE IF NOT EXISTS `reserveticket` (
  `Name` varchar(20) NOT NULL,
  `CID` varchar(20) NOT NULL,
  `EventID` varchar(20) NOT NULL,
  `ContactNo` varchar(20) NOT NULL,
  `Price` varchar(20) NOT NULL,
  `Tickets` varchar(20) NOT NULL,
  `Payment` varchar(20) NOT NULL,
  PRIMARY KEY (`CID`,`EventID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reserveticket`
--

INSERT INTO `reserveticket` (`Name`, `CID`, `EventID`, `ContactNo`, `Price`, `Tickets`, `Payment`) VALUES
('Supun', '3001', '701', '0710806136', '500', '6', '3000.0'),
('Hiruni', '3002', '706', '0725364256', '200', '2', '400.0'),
('Indra', '3003', '701', '0721536524', '250', '3', '750.0'),
('Sayuri', '3004', '704', '07712536425', '350', '1', '350.0'),
('Madhusa', '3005', '703', '0714523654', '450', '3', '1350.0'),
('Sriyani', '3006', '702', '0112365236', '250', '4', '1000.0'),
('Sachi', '3007', '705', '0112536489', '350', '5', '1750.0'),
('Isuri', '3008', '706', '0725362452', '200', '3', '600.0'),
('Sanduni', '3009', '705', '0775236521', '350', '8', '2800.0'),
('Shalika', '3010', '703', '0112356254', '300', '2', '600.0');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `roomID` varchar(20) NOT NULL,
  `type` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `it1` varchar(100) NOT NULL DEFAULT '',
  `it2` varchar(100) NOT NULL,
  `it3` varchar(100) NOT NULL,
  `it4` varchar(100) NOT NULL,
  `it5` varchar(100) NOT NULL,
  `it6` varchar(100) NOT NULL,
  `it7` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`roomID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`roomID`, `type`, `number`, `price`, `it1`, `it2`, `it3`, `it4`, `it5`, `it6`, `it7`, `status`) VALUES
('1001', 'Standard', '2', '3200.0', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'No', 'Unvailable'),
('1002', 'Standard', '2', '3200.0', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'No', 'Unvailable'),
('1003', 'Premium', '3', '5500.0', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Available'),
('1004', 'Premium', '4', '5500.0', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Available'),
('1005', 'Premium', '3', '5500.0', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Available'),
('1006', 'Apartment', '6', '8900.0', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Available'),
('1007', 'Standard', '2', '3700.0', 'Yes', 'No', 'No', 'Yes', 'Yes', 'No', 'No', 'Unvailable'),
('1008', 'Apartment', '3', '8700.0', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Available'),
('1009', 'Standard', '2', '3200.0', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'No', 'Unvailable'),
('1010', 'Standard', '2', '3200.0', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'No', 'Unvailable'),
('1011', 'Standard', '2', '3200.0', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'No', 'Available'),
('1012', 'Standard', '2', '3700.0', 'Yes', 'No', 'No', 'Yes', 'Yes', 'No', 'No', 'Available'),
('1013', 'Standard', '2', '3700.0', 'Yes', 'No', 'No', 'Yes', 'Yes', 'No', 'No', 'Unavailable'),
('1014', 'Standard', '2', '3700.0', 'Yes', 'No', 'No', 'Yes', 'Yes', 'No', 'No', 'Unavailable'),
('1015', 'Standard', ' 2', '3200.0', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'No', 'Available'),
('1016', 'Standard', '2', '3200.0', 'No', 'No', 'No', 'Yes', 'Yes', 'No', 'No', 'Unavailable'),
('1017', 'Standard', '2', '3500.0', 'No', 'No', 'Yes', 'Yes', 'No', 'No', 'No', 'Available'),
('1018', 'Premium', ' 3', '5300.0', 'Yes', 'No', 'Yes', 'Yes', 'No', 'No', 'Yes', 'Available'),
('1019', 'Premium', ' 3', '5000.0', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', 'Yes', 'Unavailable'),
('1020', 'Premium', '3', '5500.0', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Available'),
('1021', 'Premium', '3', '4800.0', 'No', 'No', 'Yes', 'Yes', 'No', 'No', 'Yes', 'Available'),
('1023', 'Apartment', '6', '8700.0', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Available'),
('1024', 'Apartment', '6', '8000.0', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', 'Yes', 'Available'),
('1025', 'Apartment', '6', '8900.0', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Unavailable'),
('1026', 'Standard', '2', '3700.0', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', 'Unavailable');

-- --------------------------------------------------------

--
-- Table structure for table `room_arr`
--

CREATE TABLE IF NOT EXISTS `room_arr` (
  `RANo` int(11) NOT NULL AUTO_INCREMENT,
  `guestID` varchar(30) NOT NULL,
  `roomID` varchar(30) NOT NULL,
  `description` varchar(400) NOT NULL,
  `cost` varchar(30) NOT NULL,
  `checkIN` varchar(30) NOT NULL,
  `checkOUT` varchar(30) NOT NULL,
  `Sname` varchar(50) NOT NULL DEFAULT 'Room Arrangement',
  PRIMARY KEY (`RANo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `room_arr`
--

INSERT INTO `room_arr` (`RANo`, `guestID`, `roomID`, `description`, `cost`, `checkIN`, `checkOUT`, `Sname`) VALUES
(9, '5009', '1001', ' Light Furniture, Heavy Furniture, ', '2350.0', '2017-11-30', '2017-12-01', 'Room Arrangement'),
(10, '5009', '1015', ' Light Furniture, Heavy Furniture, Internet-Package 1, Other, ', '1250.0', '2017-07-20', '2017-07-25', 'Room Arrangement'),
(11, '5010', '1004', ' Light Furniture, Heavy Furniture, Internet-Package 1, Other, Light Furniture, Internet-Package 2, ', '1400.0', '2017-11-30', '2017-12-28', 'Room Arrangement'),
(12, '5011', '1018', ' Light Furniture, Heavy Furniture, Internet-Package 1, Other, Light Furniture, Internet-Package 2, Light Furniture, Heavy Furniture, Other, ', '3350.0', '2017-11-20', '2017-12-20', 'Room Arrangement'),
(13, '5011', '1008', ' Light Furniture, Heavy Furniture, Internet-Package 1, Other, Light Furniture, Internet-Package 2, Light Furniture, Heavy Furniture, Other, Internet-Package 1, Other, ', '1250.0', '2016-12-20', '2017-09-20', 'Room Arrangement');

-- --------------------------------------------------------

--
-- Table structure for table `sa_nosafe_info`
--

CREATE TABLE IF NOT EXISTS `sa_nosafe_info` (
  `SANo` varchar(50) NOT NULL,
  `size` varchar(500) NOT NULL,
  `availability` varchar(500) NOT NULL,
  PRIMARY KEY (`SANo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `security_details`
--

CREATE TABLE IF NOT EXISTS `security_details` (
  `LSNo` varchar(20) NOT NULL,
  `type` varchar(100) NOT NULL,
  `size` varchar(100) NOT NULL,
  `availability` varchar(100) NOT NULL,
  `cost` varchar(100) NOT NULL,
  PRIMARY KEY (`LSNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `security_details`
--

INSERT INTO `security_details` (`LSNo`, `type`, `size`, `availability`, `cost`) VALUES
('LK01', 'Locker', '70*12*12', 'Not available', '200'),
('LK02', 'Locker', '70*12*15', 'Available', '200'),
('LK03', 'Locker', '70*12*18', 'Not available', '200'),
('LK04', 'Locker', '15*15*15', 'Not available', '100'),
('LK05', 'Locker', '70*15*15', 'Not available', '200'),
('SF01', 'Safe', '9*11*8', 'Available', '250'),
('SF02', 'Safe', '8*12*16', 'Available', '250'),
('SF03', 'Safe', '9*18*16', 'Available', '250'),
('SF04', 'Safe', '12*20*18', 'Not available', '400'),
('SF05', 'Safe', '24*60*22', 'Available', '400');

-- --------------------------------------------------------

--
-- Table structure for table `security_info`
--

CREATE TABLE IF NOT EXISTS `security_info` (
  `SINo` int(11) NOT NULL AUTO_INCREMENT,
  `guestID` varchar(20) NOT NULL,
  `roomID` varchar(20) NOT NULL,
  `LSNo` varchar(20) NOT NULL,
  `reservedDate` varchar(100) NOT NULL,
  `estReturnDate` varchar(100) NOT NULL,
  `normalDuration` varchar(20) NOT NULL,
  `extraDuration` varchar(20) DEFAULT NULL,
  `cost` varchar(30) NOT NULL,
  `Sname` varchar(100) NOT NULL DEFAULT 'Security Service',
  PRIMARY KEY (`SINo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `security_info`
--

INSERT INTO `security_info` (`SINo`, `guestID`, `roomID`, `LSNo`, `reservedDate`, `estReturnDate`, `normalDuration`, `extraDuration`, `cost`, `Sname`) VALUES
(4, '1001', '1001', 'LK05', '2017-11-20', '2017-11-22', '2', '0', '400.0', 'Security Service'),
(5, '1001', '1001', 'SF04', '2017-11-23', '2017-11-28', '5', '0', '2000.0', 'Security Service'),
(6, '1001', '1001', 'LK01', '2017-11-25', '2017-11-27', '2', '0', '400.0', 'Security Service'),
(7, '5009', '1011', 'LK03', '2017-11-24', '2017-11-25', '1', '0', '200.0', 'Security Service'),
(8, '5009', '1015', 'LK04', '2017-11-20', '2017-11-23', '3', '0', '300.0', 'Security Service');

-- --------------------------------------------------------

--
-- Table structure for table `selectedevent`
--

CREATE TABLE IF NOT EXISTS `selectedevent` (
  `customerID` varchar(50) NOT NULL,
  `customerName` varchar(300) NOT NULL,
  `locationID` varchar(50) NOT NULL,
  `selectedDate` varchar(100) NOT NULL,
  `selectedEvent` varchar(300) NOT NULL,
  `selectedLocation` varchar(300) NOT NULL,
  `crowd` varchar(100) NOT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `servicemobil`
--

CREATE TABLE IF NOT EXISTS `servicemobil` (
  `Sname` varchar(100) NOT NULL,
  `comment` varchar(1000) NOT NULL DEFAULT 'no comment',
  `roomID` varchar(100) NOT NULL,
  `sID` int(11) NOT NULL,
  PRIMARY KEY (`sID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `cusid` varchar(70) NOT NULL,
  `room` varchar(50) NOT NULL,
  `serviceId` int(11) NOT NULL AUTO_INCREMENT,
  `serName` varchar(250) NOT NULL,
  `comment` varchar(250) NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`serviceId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`cusid`, `room`, `serviceId`, `serName`, `comment`, `date`) VALUES
('1', '0', 1, 'loundry', 'not yet attached', NULL),
('1', '0', 2, 'lunch', 'i need lunch on 1.30pm', NULL),
('1', '0', 3, 'dinner', 'want dinner at 8pm', NULL),
('1', '0', 4, 'breakfast', 'got it', NULL),
('1', '0', 5, 'ion', 'i need ion to my room', NULL),
('1', '0', 6, 'shampoo', 'needt iy', NULL),
('1', '202', 8, 'dinner', 'cxcxc', NULL),
('1', '202', 9, 'ghjh', 'gjg', NULL),
('1', '555', 10, 'ccf', 'yyy', NULL),
('1', '202', 11, 'fhf', 'fghg', '2017-09-13'),
('1', '555', 12, 'ccf', 'yyy', '2017-09-13'),
('1', '101', 13, 'new', 'towel', '2017-09-13'),
('0', '58', 14, 'as gsgs', 'hshshs', '2017-09-19'),
('5003', '101', 15, 'shdgdh', 'gdhdhd\n', '2017-09-19'),
('1001', '2001', 16, 'dff', 'tty', '2017-09-25'),
('1001', '2001', 17, 'yy', 'ty', '2017-09-25'),
('1001', '2001', 18, 'rtt', 'ffgg', '2017-09-25'),
('1001', '1001', 19, 'rgh', 'add\n', '2017-11-18'),
('1001', '1001', 20, 'kamma', 'need it', '2017-11-18'),
('1001', '1001', 21, 'rtt', 'ggh', '2017-11-18'),
('1001', '1001', 22, 'akilaya', 'dont delete\n', '2017-11-19'),
('1001', '1001', 23, 'ffsgshushbs', 'uhscevsgshsh', '2017-11-19'),
('1001', '1001', 27, 'ffggss', 'xxsgs', '2017-11-20');

-- --------------------------------------------------------

--
-- Table structure for table `service_info`
--

CREATE TABLE IF NOT EXISTS `service_info` (
  `serviceID` int(11) NOT NULL AUTO_INCREMENT,
  `guestID` varchar(20) NOT NULL,
  `roomID` varchar(20) DEFAULT NULL,
  `serviceType` varchar(200) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `comments` varchar(400) DEFAULT NULL,
  `cost` varchar(100) NOT NULL,
  `extraCost` varchar(100) DEFAULT NULL,
  `total` varchar(100) NOT NULL,
  PRIMARY KEY (`serviceID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `service_info`
--

INSERT INTO `service_info` (`serviceID`, `guestID`, `roomID`, `serviceType`, `description`, `comments`, `cost`, `extraCost`, `total`) VALUES
(1, '1001', NULL, 'Security', 'LK02 Locker:LK05 Safe:SF04 Locker:LK01', NULL, '3000.0', '0.0', '3000.0'),
(2, '5001', '1001', 'RoomArrangement', 'IT01:Light Furniture IT04:Internet Package-1 ', '', '0', '0', '1100.0'),
(3, '5001', NULL, 'Security', 'Locker:LK04', NULL, '200', '0', '200.0'),
(4, '1001', NULL, 'Laundry', '<5:normal <5:dryClean <5kg:seperateHandwash', NULL, '0', '0', '5750.0'),
(5, '1001', '1001', 'RoomArrangement', ' Light Furniture, Internet-Package 1, ', '', '0', '0', '1100.0'),
(6, '5012', NULL, 'Laundry', '<5:normal', NULL, '0', '0', '750.0'),
(7, '5012', '1001', 'RoomArrangement', ' Light Furniture, Internet-Package 1, ', '', '0', '0', '1100.0'),
(8, '5020', '1006', 'RoomArrangement', ' Light Furniture, ', '', '0', '0', '850.0'),
(9, '5001', NULL, 'Laundry', '<5:normal', NULL, '0', '0', '750.0'),
(10, '5016', NULL, 'Laundry', '<2kg:normal', NULL, '0', '0', '1000.0'),
(11, '5009', '1011', 'RoomArrangement', ' Light Furniture, Heavy Furniture, ,  Light Furniture, Heavy Furniture, Internet-Package 1, Other, ', ';', '0', '0', '3600.0'),
(12, '5010', '1004', 'RoomArrangement', ' Light Furniture, Heavy Furniture, Internet-Package 1, Other, Light Furniture, Internet-Package 2, ', '', '0', '0', '1400.0'),
(13, '5011', '1018', 'RoomArrangement', ' Light Furniture, Heavy Furniture, Internet-Package 1, Other, Light Furniture, Internet-Package 2, Light Furniture, Heavy Furniture, Other, ,  Light Furniture, Heavy Furniture, Internet-Package 1, Other, Light Furniture, Internet-Package 2, Light Furniture, Heavy Furniture, Other, Internet-Package 1, Other, ', ';', '0', '0', '4600.0'),
(14, '5009', NULL, 'Security', 'Locker:LK03 Locker:LK04', NULL, '500.0', '0.0', '500.0');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `productID` varchar(100) NOT NULL DEFAULT '',
  `productName` varchar(500) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `qty` varchar(100) NOT NULL,
  `manuName` varchar(100) NOT NULL,
  `mesure` varchar(100) DEFAULT NULL,
  `unitprice` varchar(100) DEFAULT NULL,
  `cost` int(200) DEFAULT NULL,
  `finalcost` int(200) DEFAULT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stock_maintaince`
--

CREATE TABLE IF NOT EXISTS `stock_maintaince` (
  `productID` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `MFD` varchar(200) NOT NULL,
  `EXP` varchar(200) NOT NULL,
  `manuName` varchar(200) NOT NULL,
  `FillDate` varchar(200) NOT NULL,
  `unitprice` varchar(200) NOT NULL,
  `addqty` varchar(100) NOT NULL,
  `Finalqty` varchar(200) NOT NULL,
  `mesure` varchar(100) NOT NULL,
  `Issueqty` varchar(200) NOT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `stock_maintaince`
--

INSERT INTO `stock_maintaince` (`productID`, `productName`, `category`, `MFD`, `EXP`, `manuName`, `FillDate`, `unitprice`, `addqty`, `Finalqty`, `mesure`, `Issueqty`) VALUES
(36, 'cake', 'Other', 'Fri Jul 07 00:00:00 IST 2017', 'Sun Jul 29 00:00:00 IST 2018', 'fab', 'Sun Aug 20 00:00:00 IST 2017', '200', '', '3', 'kilo', '2'),
(37, 'towel', 'Vegetable', '2017-11-07', '2017-11-22', 'aa', '2017-10-13', '230', '20', '20', 'kilo', ''),
(38, 'llkj', 'Vegetable', '2017-11-05', '2017-11-14', 'hyu', '2017-11-20', '340', '40', '40', 'kilo', '0'),
(39, 'tytr', 'Vegetable', '2017-11-01', '2018-11-29', 'eeee', '2017-11-20', '340', '40', '40', 'kilo', '0'),
(40, 'qwe', 'Vegetable', '2017-11-07', '2018-11-16', 'ddd', '2017-11-20', '120', '20', '20', 'kilo', '0'),
(41, 'HG', 'Vegetable', 'Tue Nov 07 00:00:00 IST 2017', 'Thu Nov 30 00:00:00 IST 2017', 'HHH', 'Mon Nov 20 00:00:00 IST 2017', '200', '', '35', 'kilo', '5');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `supplierID` int(20) NOT NULL AUTO_INCREMENT,
  `supplierName` varchar(500) NOT NULL,
  `supplyItem` varchar(200) NOT NULL,
  `contactNo` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `email` varchar(200) NOT NULL,
  `fax` varchar(15) NOT NULL,
  PRIMARY KEY (`supplierID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplierID`, `supplierName`, `supplyItem`, `contactNo`, `address`, `email`, `fax`) VALUES
(33, 'Piyumi ishara', 'rice', '0112678954', '41,hanwella', 'piu@gmail.com', '0114567234'),
(34, 'Akila Fernando', 'Cloths', '0773451189', '23,negombo', 'akf@yahoo.com', '0112345001'),
(35, 'Akila Sachin', 'Friuts', '0779971230', '45,Athurugiriya', 'sachin @gmai.com', '0112995410'),
(36, 'Sheha Sachith', 'Fish', '0112673303', '67/B,Chillaw', 'sheha@gmail.com', '0112871234'),
(37, 'Sanduni Sachintha', 'vegetables', '011269587', '23,Baththaramulla', 'san@yahoo.com', '0115468214'),
(38, 'Chathuranga Jayanatha', 'eggs', '0775689945', '123/C,Rajagiriya', 'chath@gmail.com', '0112589463'),
(39, 'Mithila Gunawardhana', 'Bed sheets', '0701234568', '456/A,kiribathgoda', 'mithila@gmail.com', '0112456877'),
(40, 'Kasun Kuruppu', 'chicken', '0775469823', '112,Homagama', 'kasun@yahoo.com', ''),
(41, 'doolitha samaranayake', 'pork', '0775689234', '102,Ragama', 'doolitha@yahoo.com', '0112456983'),
(42, 'Supun hettigoda', 'sweets', '0775489362', '123/B,Galle', 'supun@yahoo.com', ''),
(43, 'pipuni wijeesighe', 'electric item', '0712354761', '345,Kollupitiya123', 'pipu@gmail.com', '0112657436'),
(47, 'Manel', 'cake', '12345', 'No:23/Hanwella', 'piuishara@gmail.com', '1234567898');

-- --------------------------------------------------------

--
-- Table structure for table `tempstock`
--

CREATE TABLE IF NOT EXISTS `tempstock` (
  `ID` int(11) NOT NULL,
  `productID` varchar(100) DEFAULT NULL,
  `productName` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `qty` varchar(100) DEFAULT NULL,
  `mesure` varchar(100) DEFAULT NULL,
  `unitprice` varchar(100) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `finalcost` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `test1`
--

CREATE TABLE IF NOT EXISTS `test1` (
  `fid` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `custid` int(11) NOT NULL,
  KEY `fname` (`fname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test1`
--

INSERT INTO `test1` (`fid`, `fname`, `custid`) VALUES
(1, 'sdd', 5),
(1, 'sdd', 5),
(1, 'sdd', 5),
(1, 'sdd', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE IF NOT EXISTS `tickets` (
  `user_id` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`user_id`, `user_name`, `count`) VALUES
('123456v', 'Manuja curtains', 0),
('12345v', 'Westfield fashion', 0),
('1234v', 'Singer homes', 0),
('123v', 'Shehan', 0),
('199930210160v', 'Ashen Sing', 0),
('200008103899v', 'Kavish', 0),
('830902058v', 'Jiwaka', 10),
('911823020v', 'Sanka', 10),
('912471624v', 'Dula', 0),
('922061688v', 'Gihan', 40),
('937270097v', 'Dewmi', 0),
('937541325v', 'Chamini', 0),
('942890354v', 'Niruda', 0),
('950151196v', 'Ramesh', 0),
('961300592v', 'Chanuka KR', 0),
('967823694v', 'Roshni', 0),
('968063308v', 'Suddi', 7),
('975850528v', 'Lakna', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Tlogin`
--

CREATE TABLE IF NOT EXISTS `Tlogin` (
  `cusid` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`cusid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `Tlogin`
--

INSERT INTO `Tlogin` (`cusid`, `user`, `pass`, `name`) VALUES
(1, '123v', '123', 'sheha'),
(2, '911823020v', 'kudamadu123', 'Sanka'),
(3, '937541325v', 'kudamadu123', 'Chamini'),
(4, '937270097v', 'kudamadu123', 'Dewmi'),
(5, '830902058v', 'kudamadu123', 'Jiwaka'),
(6, ' 200008103899v', 'kudamadu123', 'Kavish'),
(7, '942890354v', 'kudamadu123', 'Niruda'),
(8, '912471624v', 'kudamadu123', 'Dula'),
(9, '967823694v', 'kudamadu123', 'Roshni'),
(10, '975850528v', 'kudamadu123', 'Lakna'),
(11, ' 950151196v', 'kudamadu123', 'Ramesh'),
(12, '199930210160v', 'kudamadu123', 'Ashen Sing'),
(13, '922061688v', 'kudamadu123', 'Gihan'),
(14, '961300592v', 'kudamadu123', 'Chanuka'),
(15, '968063308v', 'kudamadu123', 'Suddi');

-- --------------------------------------------------------

--
-- Table structure for table `upcominginfo`
--

CREATE TABLE IF NOT EXISTS `upcominginfo` (
  `upcomingEvents` varchar(500) NOT NULL,
  `date` varchar(100) NOT NULL,
  `ticket` varchar(100) NOT NULL,
  `eventID` varchar(50) NOT NULL,
  `artistID` varchar(500) NOT NULL,
  PRIMARY KEY (`eventID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=102 ;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`uid`, `name`, `position`, `username`, `password`) VALUES
(100, 'akila', 'admin', 'admin', '123'),
(101, 'sahan', 'receptionist', 'rep', '123');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE IF NOT EXISTS `vehicle` (
  `vehicle_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `rate` varchar(100) NOT NULL,
  `fuel_type` varchar(100) NOT NULL,
  `ac_cost` varchar(100) NOT NULL,
  `per_km_cost` varchar(100) NOT NULL,
  `sunroof` varchar(11) NOT NULL,
  `driver_l` varchar(100) NOT NULL,
  `driver_number` varchar(10) DEFAULT NULL,
  `image` varchar(1000) DEFAULT 'NO',
  PRIMARY KEY (`vehicle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicle_id`, `name`, `type`, `rate`, `fuel_type`, `ac_cost`, `per_km_cost`, `sunroof`, `driver_l`, `driver_number`, `image`) VALUES
('56-6532', 'Nissan bus', 'VIP', '1', 'Petrol', '3000', '75', 'YES', 'ls5555', '0715255563', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@vehicle@v3.jpg'),
('DWS-6523', 'cub', 'Amila', '2', 'Petrol', '6000', '45', 'NO', 'B69582345', '0715642895', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@vehicle@v2.jpg'),
('DS-6571', 'sera', 'samantha', '5', 'Petrol', '2550', '60', 'NO', 'B12564836', '0771536985', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@vehicle@v44.jpg'),
('HD-6666', 'presia', 'normal', '2', 'Petrol', '5000', '45', 'YES', 'ls66666', '0175842685', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@vehicle@v10.jpg'),
('nghnghn', 'nghngn', 'gnghnghn', '1', 'Petrol', '12', '121', 'NO', 'S12345678', '0717355231', 'C:@Users@Akila Sachin@Desktop@terra@FInal Final@PACKAGE p@vehicle@100.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_booking_date`
--

CREATE TABLE IF NOT EXISTS `vehicle_booking_date` (
  `vehicle_id` varchar(100) NOT NULL,
  `in_date` varchar(100) NOT NULL,
  `to_date` varchar(100) NOT NULL,
  `customer_id` varchar(100) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `drive_l` varchar(100) DEFAULT NULL,
  `state` varchar(100) NOT NULL DEFAULT 'yes',
  `guider_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `vehicle_booking_date`
--

INSERT INTO `vehicle_booking_date` (`vehicle_id`, `in_date`, `to_date`, `customer_id`, `id`, `drive_l`, `state`, `guider_id`) VALUES
('DS-6571', '2017-11-20', '2017-11-20', '5002', 26, 'B12564836', 'yes', '11'),
('56-6532', '2017-11-20', '2017-11-20', '5003', 28, 'ls5555', 'yes', 'null'),
('DWS-6523', '2017-11-20', '2017-11-20', '5006', 29, 'B69582345', 'yes', 'null'),
('DS-6571', '2017-12-30', '2017-12-30', '5009', 30, 'B12564836', 'yes', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_driver`
--

CREATE TABLE IF NOT EXISTS `vehicle_driver` (
  `vehicle_id` varchar(100) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `4tos` varchar(100) NOT NULL,
  `rate` varchar(100) NOT NULL,
  `4n` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vehicle_driver`
--

INSERT INTO `vehicle_driver` (`vehicle_id`, `id`, `4tos`, `rate`, `4n`) VALUES
('th', 1, 'nghngn', '2', '2144'),
('', 2, '', '1', ''),
('hghh', 3, '', '1', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
