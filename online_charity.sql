-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2023 at 05:27 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_charity`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `album_id` int(10) NOT NULL,
  `album_title` varchar(50) NOT NULL,
  `album_description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`album_id`, `album_title`, `album_description`, `status`) VALUES
(1, 'Interior of Charity', 'Interior of Charity', 'Active'),
(3, 'Events', 'News & Events', 'Active'),
(5, 'Guest Visit', 'Guest Visited to Abhaya Ashraya Charity', 'Active'),
(6, 'Ladies Block', 'Ladies Block', 'Active'),
(7, 'Gents Block', 'Gents Area', 'Active'),
(8, 'Children Block', 'Children Area', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointment_id` int(10) NOT NULL,
  `appointment_title` varchar(25) NOT NULL,
  `donor_id` int(10) NOT NULL,
  `staff_id` int(10) NOT NULL,
  `reason_for_appoinment` text NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` time NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `appointment_title`, `donor_id`, `staff_id`, `reason_for_appoinment`, `appointment_date`, `appointment_time`, `status`) VALUES
(13, 'Birthday Party', 15, 0, 'We want to celebrate our child birthday in your orphanage', '2023-09-18', '19:22:00', 'Pending'),
(14, 'Tour', 19, 0, 'xyz', '2023-09-17', '21:23:00', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `child_adoption`
--

CREATE TABLE `child_adoption` (
  `child_adoption_id` int(11) NOT NULL,
  `donor_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `child_adoption` text NOT NULL,
  `child_adoption_status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `child_adoption`
--

INSERT INTO `child_adoption` (`child_adoption_id`, `donor_id`, `member_id`, `child_adoption`, `child_adoption_status`) VALUES
(13, 19, 8, 'a:11:{s:9:\"member_id\";s:1:\"8\";s:13:\"maleapplicant\";s:6:\"Bhavya\";s:15:\"femaleapplicant\";s:5:\"Geeta\";s:10:\"workingfor\";s:6:\"Google\";s:12:\"annualincome\";s:8:\"10000000\";s:11:\"designation\";s:7:\"Manager\";s:4:\"pfno\";s:3:\"123\";s:9:\"childname\";s:7:\"Bhargav\";s:22:\"applicationprocessdate\";s:10:\"2023-09-17\";s:17:\"reasonforadoption\";s:12:\"Want a child\";s:8:\"anynotes\";s:0:\"\";}', 'Pending'),
(14, 19, 4, 'a:11:{s:9:\"member_id\";s:1:\"4\";s:13:\"maleapplicant\";s:3:\"xyz\";s:15:\"femaleapplicant\";s:3:\"abc\";s:10:\"workingfor\";s:3:\"qwe\";s:12:\"annualincome\";s:2:\"12\";s:11:\"designation\";s:3:\"asd\";s:4:\"pfno\";s:3:\"123\";s:9:\"childname\";s:3:\"zxc\";s:22:\"applicationprocessdate\";s:10:\"2023-09-17\";s:17:\"reasonforadoption\";s:1:\"h\";s:8:\"anynotes\";s:0:\"\";}', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `donor_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(25) NOT NULL,
  `pin_code` varchar(10) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `profile_img` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`donor_id`, `name`, `address`, `city`, `pin_code`, `email_id`, `password`, `contact_no`, `profile_img`, `status`) VALUES
(19, 'Bhavya Doshi', 'zxc', 'bbh', '400078', 'doshibhavya961@gmail.com', '456', '9619903912', '185018486820230825_155003.heic', 'Active'),
(20, 'Sahil', '', '', '', 'sahil@gmail.com', '123', '9619903912', '', 'Active'),
(21, 'Bhavya Doshi', '', '', '', 'db@gmail', '123', '9619903912', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `food_donor`
--

CREATE TABLE `food_donor` (
  `food_donor_id` int(10) NOT NULL,
  `donor_id` int(10) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(25) NOT NULL,
  `pin_code` varchar(10) NOT NULL,
  `datetime` datetime NOT NULL,
  `food_item_detail` text NOT NULL,
  `quantity` int(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `food_donor`
--

INSERT INTO `food_donor` (`food_donor_id`, `donor_id`, `staff_id`, `address`, `city`, `pin_code`, `datetime`, `food_item_detail`, `quantity`, `status`) VALUES
(10, 19, 0, 'Bhandup west', 'Mumbai', '400078', '2023-09-17 19:20:00', 'Sandwich', 12, 'Rejected');

-- --------------------------------------------------------

--
-- Table structure for table `fund_collection`
--

CREATE TABLE `fund_collection` (
  `fund_collection_id` int(10) NOT NULL,
  `fund_raiser_id` int(10) NOT NULL,
  `donor_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `paid_amt` float(10,2) NOT NULL,
  `paid_date` date NOT NULL,
  `payment_type` varchar(25) NOT NULL,
  `payment_detail` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `fund_collection`
--

INSERT INTO `fund_collection` (`fund_collection_id`, `fund_raiser_id`, `donor_id`, `name`, `paid_amt`, `paid_date`, `payment_type`, `payment_detail`, `status`) VALUES
(31, 9, 19, 'Bhavya Doshi', 1000.00, '2023-09-17', 'MASTER CARD', 'a:4:{i:0;s:18:\"Bhavya Ketan Doshi\";i:1;s:16:\"1234567891234567\";i:2;s:7:\"2023-09\";i:3;s:3:\"123\";}', 'Active'),
(32, 10, 19, 'Geeta Doshi', 1000.00, '2023-09-17', 'MASTER CARD', 'a:4:{i:0;s:11:\"Geeta Doshi\";i:1;s:16:\"1234567891234567\";i:2;s:7:\"2023-09\";i:3;s:3:\"123\";}', 'Active'),
(33, 9, 21, 'Bhavya Doshi', 100000.00, '2023-10-02', 'VISA', 'a:4:{i:0;s:6:\"Bhavya\";i:1;s:16:\"1234567891234567\";i:2;s:7:\"2023-10\";i:3;s:3:\"122\";}', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `fund_raiser`
--

CREATE TABLE `fund_raiser` (
  `fund_raiser_id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `banner_img` varchar(100) NOT NULL,
  `fund_raiser_description` text NOT NULL,
  `fund_amount` float(10,2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `fund_raiser`
--

INSERT INTO `fund_raiser` (`fund_raiser_id`, `title`, `banner_img`, `fund_raiser_description`, `fund_amount`, `start_date`, `end_date`, `status`) VALUES
(9, 'Help provide basic amenities', 'amenities.jpg', '<p>The Becoming I Foundation - VIT chapter is a Non-Governmental Organization of roughly 200 students from Vellore Institute of Technology, Vellore, Tamil Nadu. We believe that education is at the forefront of creating productive change and ensuring wellness for our society. Our aim is to contribute, to the best of our abilities, by teaching English and Mathematics to the children of government schools in and around Vellore. Additionally, we provide peer support to children who have been diagnosed with cancer. In doing this, we hope to not only influence the lives of the lesser privileged, but also encourage our fellow peers to realize that change starts with themselves. We aim to make sure that education is within the reach of everyone we can help by making it accessible to them. The best part is that we get to have fun while doing so! BIF has organized various events and sessions thoroughout its run, such as teaching sessions in nearby cancer care centers, government and tribal schools consisting of 4 sessions every week, on-campus events for the school kids and their families - the most popular one being \"Smile\" and \"Umang\", and providing our services and support, just to name a few. To maintain this successful run, we require contributions from your end, and together, we at BIF can continue to shine our light and help out those in need. Details for direct bank transfer / UPI</p>', 200000.00, '2023-09-17', '2023-09-17', 'Active'),
(10, 'Shelter', 'streetkids.jpg', '<p>That&rsquo;s when Moitrayee and her team started teaching these kids in a temporary shed, they don&rsquo;t even have a classroom. Initially they were not keen on coming, but once they started providing them with food, the kids started coming regularly. These are not little kids, they are 12-13 year old teens, who have never learned to read and write, and are ashamed to go to schools. They feel they&rsquo;ll be made fun of and even the schools don&rsquo;t want to take them in.</p>', 250000.00, '2023-10-04', '2023-10-18', 'Active'),
(11, '1 year old Udhaynidhi Needs Your Help Fight Apert Syndrome', 'syndrome.jpg', '<p>My name is Shanjeev M and I am here to raise funds for my son Udhaynidhi SH who is 1 year old. I am working as a private employee. I\'m working at a Consulting Service Company. Udhaynidhi SH lives in Hosur, Tamil Nadu with us. He is suffering from Apert syndrome for more than a year. He is receiving medication and physiotherapy in Sparsh Children Hospital but not yet admitted. Until now, we\'ve spent about Rs. 250000. We\'ve arranged the amount from savings &amp; selling assets. In the next 30 days, we need Rs.600,000.00 more for operation and treatment. Please come forward to support my cause. Any contribution will be of immense help. Do contribute and share this campaign link with your friends and family.\'</p>', 100000.00, '2023-10-03', '2023-10-31', 'Active'),
(12, 'Help The People Of Backward Areas To Rise From Extreme Poverty', 'area.jpg', '<p>There are nearly 109 districts in India which are backward and underdeveloped. We have started our journey from Bundelkhand region as this region tops among the list. Project Srishtipath aims to develop all these areas by providing them with a self-sustaining model. One campaign is for a single area as we will be covering all the 109 districts in 109 Phases. This is phase 1 of Project Srishtipath.</p>', 250000.00, '2023-10-11', '2023-10-25', 'Active'),
(13, 'Funds Required For Orphanage Kids For School Books And Supplies', 'boks.jpg', '<p>&bull;Trustees / Management of orphanage arrange funds for school supplies through their Own funds or Donations from other donors. &bull;It puts burden on their finances. &bull; Sometimes Old books / used school bags / dresses are used by orphanage kids.</p>', 550000.00, '2023-10-10', '2023-10-31', 'Active'),
(14, 'Fundraising to help physically disabled children', 'mktg_1456740369.jpg', '<p>There are nearly 109 districts in India which are backward and underdeveloped. We have started our journey from Bundelkhand region as this region tops among the list. Project Srishtipath aims to develop all these areas by providing them with a self-sustaining model. One campaign is for a single area as we will be covering all the 109 districts in 109 Phases. This is phase 1 of Project Srishtipath. Paraplegic brave heart, Arjuna awarded and padmashree Malathi K.Holla, afflicted by polio at infancy, stands tall in the world of paraplegic sports in india by sheer grit and determination and has won medals around the world.This 45 year old Bank Manager has launched the \"Mathru Fountation\" to serve the physically challenged with motherly care. Lending her a helping hand are the former International sprinter Ashwini Nachappa, International Cricketer Venkatesh Prasad, Krishna Reddy H.T. and Dr.Sridhar M.K. both physically challenged and Anantha Bhat M., a leading advocate.</p>', 680000.00, '2023-10-17', '2023-10-29', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(10) NOT NULL,
  `member_type_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `contact_no` varchar(10) NOT NULL,
  `id_proof` varchar(100) NOT NULL,
  `adress_proof` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `member_type_id`, `name`, `image`, `address`, `contact_no`, `id_proof`, `adress_proof`, `description`, `status`) VALUES
(3, 1, 'Chaitra', '10435Koala.jpg', '3rd floor, city light building', '9740073178', '30016WeCare Table Design.docx', '7289Table structure .docx', 'Chaitra is the oldest girl in the group and likes to help her younger sisters with everyday tasks and help care of them.', 'Adopted'),
(4, 1, 'Kavitha', '1040IMG-20200104-WA0007 (1).jpg', '3rd floor, city light building', '9740073178', '19209IMG_20200115_150257_426.jpg', '24846IMG-20200109-WA0001.jpg', 'Kavitha is more independent but enjoys spending time with her siblings. ', 'Active'),
(5, 1, 'Ranjan', '11726Infy-bali1-1580900815063.png', '3rd floor, city light building', '9740073188', '29935watch.jpg', '19452redmi note7.jpeg', 'He is a respectful, loving, and smart boy who cares deeply for his siblings. ', 'Active'),
(6, 1, 'Poornima', '28939Jellyfish.jpg', '3rd floor, city light building', '9740073178', '11240Lighthouse.jpg', '4609Hydrangeas.jpg', 'Poornima enjoys listening to rap music, playing on a tablet pc, doing flips and cartwheels, watching cartoon, Thunder Cats, and Patriots games, and dancing.', 'Active'),
(7, 1, 'Santhosh Kumar', 'santhosh.png', '', '', '31260', '13861', 'He is a great leader and shares his wants and needs for himself, as well as for his sisters.', 'Active'),
(8, 1, 'Akul kumar', '589238096.jpg', '', '', '3499', '7176', 'Akul kumar share a close bond with each other, as they are also close in age and enjoy the same interest in sports and music. ', 'Active'),
(9, 1, 'Kavan', 'Child-labour-India-3.jpg', '', '', '3499', '7176', 'Kavan  enjoy visiting and going on outings.', 'Active'),
(10, 1, 'Rakshith', '3ba.jpg', '', '', '3499', '7176', 'Rakshith have happy, shy, and sweet personalities that mesh well great with one another.', 'Active'),
(11, 1, 'Ahanth', '020-95f6-434f-bcc5-4de6af07c502.jpg', '', '', '3499', '7176', 'Ananth is a leader in the group and will occasionally teach Sunday School classes. ', 'Active'),
(12, 1, 'Radhe', '1470186857images.jpg', 'Amer road,\r\nBangalore', '7894561230', '304487500staff-id-card-500x500.jpg', '1519055387aadhaar-card_1535118724.jpeg', 'Lost parents after Heavy rain fall', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `member_type`
--

CREATE TABLE `member_type` (
  `member_type_id` int(10) NOT NULL,
  `member_type` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `member_type`
--

INSERT INTO `member_type` (`member_type_id`, `member_type`, `description`, `status`) VALUES
(1, 'Homeless Child', 'Homeless Child', 'Active'),
(2, 'Blind', 'Blind', 'Active'),
(3, 'Cancer', 'Cancer', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `photo_id` int(10) NOT NULL,
  `album_id` int(10) NOT NULL,
  `photo_title` varchar(50) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `photo_description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`photo_id`, `album_id`, `photo_title`, `photo`, `photo_description`, `status`) VALUES
(3, 5, 'Guest Visit', '1994Tulips.jpg', 'Guest Visit', 'Active'),
(4, 2, 'Charity Outdoor Campus', '2259Chrysanthemum.jpg', 'Charity Outdoor Campus', 'Active'),
(15, 1, 'Guest Visit', '27749Tulips.jpg', 'Guest Visit', 'Active'),
(16, 3, 'Leaders Meet', '7482Jellyfish.jpg', 'Leaders Meet', 'Active'),
(17, 8, 'Children at Classroom', '28830Chrysanthemum.jpg', 'Children at Classroom', 'Active'),
(18, 1, 'Dinning Table Room', '1003812693010_DinningHall.jpg', 'Dinning Table Room', 'Active'),
(19, 1, 'Kitchen Room', '1752408235012_Kitchen.jpg', 'Kitchen Room', 'Active'),
(20, 1, 'Event Hall', '497138507020_ConferenceHall.jpg', 'Event Hall', 'Active'),
(21, 2, 'Ourdoor Walking Area', '1011139216aa3.jpg', 'Ourdoor Walking Area', 'Active'),
(22, 2, 'Building Side view', '12735952AA-BuildingSideView.jpg', 'Building Side view', 'Active'),
(23, 8, 'Children Prayer Activities', '1298357379AA-ChildrenPrayer.jpg', 'Children Prayer Activities', 'Active'),
(24, 8, 'Children with School uniform', '643567775AA-ChildrenToSchoolMarch.jpg', 'Children with School uniform', 'Active'),
(25, 7, 'Gents Block', '951957504AA-Gentsblock.jpg', 'Gents Block', 'Active'),
(26, 6, 'Ladies Living Room Area', '1139901574AA-WomensBlock.jpg', 'Ladies Living Room Area', 'Active'),
(27, 3, 'Tushara Gowri presented her 132nd Programme', '2121325912Tushara Gowri presented her 132nd Programm.jpg', 'Tushara Gowri presented her 132nd Programme', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(10) NOT NULL,
  `staff_type` varchar(20) NOT NULL,
  `staff_name` varchar(56) NOT NULL,
  `login_id` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_type`, `staff_name`, `login_id`, `password`, `status`) VALUES
(2, 'Admin', 'admin', 'admin', 'adminadmin', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`album_id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Indexes for table `child_adoption`
--
ALTER TABLE `child_adoption`
  ADD PRIMARY KEY (`child_adoption_id`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`donor_id`);

--
-- Indexes for table `food_donor`
--
ALTER TABLE `food_donor`
  ADD PRIMARY KEY (`food_donor_id`);

--
-- Indexes for table `fund_collection`
--
ALTER TABLE `fund_collection`
  ADD PRIMARY KEY (`fund_collection_id`);

--
-- Indexes for table `fund_raiser`
--
ALTER TABLE `fund_raiser`
  ADD PRIMARY KEY (`fund_raiser_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `member_type`
--
ALTER TABLE `member_type`
  ADD PRIMARY KEY (`member_type_id`);

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`photo_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `album_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `child_adoption`
--
ALTER TABLE `child_adoption`
  MODIFY `child_adoption_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `donor_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `food_donor`
--
ALTER TABLE `food_donor`
  MODIFY `food_donor_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `fund_collection`
--
ALTER TABLE `fund_collection`
  MODIFY `fund_collection_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `fund_raiser`
--
ALTER TABLE `fund_raiser`
  MODIFY `fund_raiser_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `member_type`
--
ALTER TABLE `member_type`
  MODIFY `member_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `photo_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
