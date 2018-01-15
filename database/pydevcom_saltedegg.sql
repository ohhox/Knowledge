-- phpMyAdmin SQL Dump
-- version 4.4.15
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 15, 2018 at 09:33 PM
-- Server version: 10.1.20-MariaDB
-- PHP Version: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pydevcom_saltedegg`
--

-- --------------------------------------------------------

--
-- Table structure for table `file_download`
--

CREATE TABLE IF NOT EXISTS `file_download` (
  `file_id` int(11) NOT NULL,
  `file_display_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `file_download_count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file_download`
--

INSERT INTO `file_download` (`file_id`, `file_display_name`, `file_name`, `file_date`, `file_download_count`) VALUES
(7, 'เอกสาร Fullwordzzz', 'docx-201801081610255082.docx', '2018-01-08 11:39:43', 0);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `news_id` int(11) NOT NULL,
  `news_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `news_title` text COLLATE utf8_unicode_ci NOT NULL,
  `news_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `news_images` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_type` int(11) NOT NULL,
  `news_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `news_status` int(11) NOT NULL,
  `news_view` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_name`, `news_title`, `news_detail`, `news_images`, `news_type`, `news_date`, `news_status`, `news_view`) VALUES
(1, 'บุคลากรสำนักวิทยบริการและเทคโนโลยีสารสนเทศ ร่วมกันสวัสดีปีใหม่ 2561 ผศ.ดร.กิตติศักดิ์ สมุทธารักษ์ รองอธิการบดี มหาวิทยาลัยราชภัฏลำปาง', '', '<p>วันที่ 5 มกราคม 2561 ผศ.ไพจิตร สุขสมบูรณ์ ผู้อำนวยการสำนักวิทยบริการฯ อ.ชลาพันธ์ อุปกิจ&nbsp;อ.ศักดิ์ชัย ศรีมากรณ์ รองผู้อำนวยการ และบุคลากรสำนักวิทยบริการและเทคโนโลยีสารสนเทศ ได้ร่วมกันสวัสดีปีใหม่ 2561 ผศ.ดร.กิตติศักดิ์ สมุทธารักษ์ รองอธิการบดี มหาวิทยาลัยราชภัฏลำปาง ณ ชั้น 9 อาคารโอฬารโรจน์หิรัญ ทั้งนี้ ท่านรองอธิการบดีได้ให้พรปีใหม่แก่บุคลากร</p>\r\n', '2264161515035079.jpeg', 2, '2018-01-04 03:04:39', 0, 4),
(2, 'บุคลากรสำนักวิทยบริการและเทคโนโลยีสารสนเทศ ร่วมกันสวัสดีปีใหม่ 2561 ผศ.นพนันท์ สุขสมบูรณ์ รองอธิการบดี ฝ่ายวางแผนและพัฒนาระบบกายภาพ มหาวิทยาลัยราชภัฏลำปาง', '', '<p>วันที่ 4 มกราคม 2561 ผศ.ไพจิตร สุขสมบูรณ์ ผู้อำนวยการสำนักวิทยบริการฯ อ.ชลาพันธ์ อุปกิจ&nbsp;อ.ศักดิ์ชัย ศรีมากรณ์ รองผู้อำนวยการ และบุคลากรสำนักวิทยบริการและเทคโนโลยีสารสนเทศ ได้ร่วมกันสวัสดีปีใหม่ 2561 ผศ.นพนันท์ สุขสมบูรณ์ รองอธิการบดี ฝ่ายวางแผนและพัฒนาระบบกายภาพ มหาวิทยาลัยราชภัฏลำปาง ณ ชั้น 9 อาคารโอฬารโรจน์หิรัญ ทั้งนี้ ท่านรองอธิการบดีได้ให้พรปีใหม่แก่บุคลากร</p>\r\n', '2149371515469658.jpg', 2, '2018-01-09 03:47:37', 0, 25),
(3, 'ปลูกพืชให้ได้ผลผลิตที่ดี ต้องรู้จักดิน รู้จักโครงสร้างของดิน', 'การจะปลูกพืชให้ได้ผลดีสิ่งที่สำคัญที่สุดก็คือดินหรือโครงสร้างของดิน ไม่ใช่ปุ๋ยและปุ๋ยก็ไม่ใช่แค่ธาตุอาหารหลักอย่าง NPK การให้ปุ๋ยซึ่งเป็นธาตุหลักอย่างเดียว บางครั้งพืชก็ไม่สามารถนำธาตุหลักไปใช้ประโยชน์ได้', '<p>การจะปลูกพืชให้ได้ผลดีสิ่งที่สำคัญที่สุดก็คือดินหรือโครงสร้างของดิน ไม่ใช่ปุ๋ยและปุ๋ยก็ไม่ใช่แค่ธาตุอาหารหลักอย่าง NPK การให้ปุ๋ยซึ่งเป็นธาตุหลักอย่างเดียว บางครั้งพืชก็ไม่สามารถนำธาตุหลักไปใช้ประโยชน์ได้</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>หากขาดธาตุรองที่ส่งเสริมกัน ใส่ปุ๋ยไนโตรเจน (N) ใส่อย่างไรก็ไม่เขียว หรือ พืชไม่โต เพราะอะไร เพราะยังมีปัจจัยเรืองธาตุรองที่เกียวข้องกัน ในเรืองความสามารถในการดูดไนโตรเจนขึ้นไปใช้อีก&nbsp;แต่ที่สำคัญหลักๆเลยต้องพิจารณาเรืองดินเป็นหลักก่อน ดินที่เรารู้จักส่วนใหญ่ จะมีแค่ ดินเหนียว ดินร่วน และ ดินทราย แต่ยังมีเนื้อดินที่มีลักษณะผสมกันอีกหลายแบบ</p>\r\n\r\n<h3><strong>1. ดินเหนียว</strong></h3>\r\n\r\n<p>- ดินเหนียวสีดำ ดินแบบนี้มักจะปลูกพืชไร่ได้ผลมาก เช่น ถั่วลิสง ข้าวโพด ข้าวฟ่าง เพราะในดินเหนียวสีดำนี้ จะมีธาตุอาหารหลัก โปแทสเซี่ยมและฟอสฟอรัส ค่อนข้างสูง แต่จะไม่เก็บธาตุไนโตรเจน ดินแบบนี้พบมากแถบจังหวัดที่เคยเป็นลุ่มน้ำมาก่อน หรือติดกับแม่น้ำ อย่าง กาญจนบุรี , นครสวรรค์ , โคราช, เพชรบูรณ์ ลพบุรี หรือพื้นที่มีภูเขา จะมีอินทรีย์วัตถุในดินสูงและเก็บความชื้นได้ดี ปลูกพืชไร่ได้ผลสูงโดยที่แทบไม่ต้องใส่เคมี ตัว PK เลย (แต่ต้องดูว่าดินผ่านการปลูกพืชกี่รอบแล้ว ยังเหลือธาตุอาหารอยู่เยอะหรือไม่ด้วย)<br />\r\n<br />\r\n- ดินเหนียวที่มีสีแดง หรือออกสีน้ำตาลแดง ดินแบบนี้มักจะมีหินลูกรังปนอยู่มาก พบมากในที่ราบเชิงเขา ดินแบบนี้มีลักษณะเหมือนดินเหนียวสีดำแต่จะมีธาตุอาหารน้อยกว่า โดยเฉพาะตัว N ถ้าพบดินแบบนี้ปลูกพืชส่วนใหญ่จะไม่ค่อยเขียว หรือโตไม่ดี หากดินปนลูกรังแบบนี้แนะนำให้ปลูกพืชรากสั้น หากินไม่กว้างมาก อย่างสัปรด จะชอบดินแบบนี้ พบมากแถบภาคกลาง อย่าง อุทัยธานี กำแพงเพชร แพร่ น่าน โคราช แถบ อำเภอโชคชัย ปากช่อง สูงเนิน&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<h3><strong>2. ดินร่วน</strong></h3>\r\n\r\n<p>- ดินร่วนปนเหนียวสีน้ำตาล เป็นดินที่มีความอุดมสมบูรณใกล้เคียงกับดินเหนียวสีดำ แต่ปลูกพืชได้หลากหลายกว่า อ้อยและมันสำปะหลัง จะเจริญเติบโตดีในสภาพดินแบบนี้ ดินแบบนี้พบมากที่จังหวัด กาญจนบุรี ราชบุรี นครปฐม พิษณุโลก อุทัยธานี และจังหวัดรอบๆ<br />\r\n&nbsp;</p>\r\n\r\n<h3><strong>3. ดินทราย+ร่วนทราย</strong></h3>\r\n\r\n<p>เป็นดินที่พบมากทางภาคอิสาน เหมาะกับการปลูกข้าว และพืชอายุสั้น หมุนเร็ว ดินแบบนี้จะมีธาตุอาหารค่อนข้างต่ำ โดยเฉพาะตัวโพแทสเซี่ยม และมีอินทรียวัตถุในดินน้อยมากๆ เพราะไม่เกิดการทับถมของตะกอนจากแม่น้ำ และมักจะพบดินเป็นกรดค่อนข้างมากเลย หรือที่อิสานเราจะเรียกว่า ดินเป็นเอียด หรือเป็นกรด เวลาปลูกข้าว หรือพืชอื่น จะตายเป็นเวิ้งๆ เป็นโซน เป็นดินหัวโล้นไปเลย ปลูกอะไรก็ไม่ขึ้นแม้แต่หญ้าในบริเวณนั้น<br />\r\n<br />\r\nดังนั้นดินแบบนี้ เวลาจะปลูกข้าว หรือพืชหมุนเร็ว ต้องเน้นปุ๋ยทุกอย่างเลย การปรับโครงสร้างของดินด้วยอินทรียวัตถุอย่าง ขี้วัวขี้ควาย การปลูกปอเทิอง การปลูกพืชตระกูลถั่ว จะช่วยปรับดินให้ลดความเป็นกรดและเพิ่มความสมบูรณ์ของดินให้ดีได้ จากนั้นค่อยใส่ธาตุหลัก NPK ให้กับพืช จะทำให้ผลผลิตของพืชเพิ่มขึ้นมาได้ค่ะ มันสำปะหลัง ก็สามารถปลูกในดินแบบนี้ได้ ทำให้หัวมันสำปะหลังแทงไปได้ดี แต่ต้องใส่ปุ๋ยให้มากโดยเฉพาะตัว K ที่เป็นอาหารจำเป็นสำหรับการสร้างหัวและแป้ง<br />\r\nแต่หากอยากทราบธาตุอาหารในดินที่แน่นอน แนะนำให้ตรวจดินก่อนปลูกพืชจะตอบโจทย์ที่สุด&nbsp;เพราะธาตุอาหารไม่ว่าจะเป็น ธาตุหลัก NPK หรือธาตุรอง มองไม่เห็นด้วยตาเปล่า นอกจากการวิเคราะห์จากลักษณะของพืชที่ปลูก แต่พบข้อผิดพลาดมาก</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>ขอบคุณข้อมูลจาก&nbsp;<a href="http://farmkaset.blogspot.com/">http://farmkaset.blogspot.com</a></p>\r\n', '1781281516026755.jpg', 1, '2018-01-15 05:21:24', 0, 20);

-- --------------------------------------------------------

--
-- Table structure for table `news_image_gallery`
--

CREATE TABLE IF NOT EXISTS `news_image_gallery` (
  `nig_id` int(11) NOT NULL,
  `file_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_image_gallery`
--

INSERT INTO `news_image_gallery` (`nig_id`, `file_name`, `news_id`) VALUES
(3, '152971515035095.jpeg', 1),
(4, '8171651515035095.jpeg', 1),
(5, '2146491515035095.jpg', 1),
(6, '6001541515035095.jpg', 1),
(7, '9727321515035095.jpg', 1),
(8, '4393741515035095.jpg', 1),
(9, '2824511515035095.jpg', 1),
(10, '7920901515035095.jpg', 1),
(11, '2013301515471860.jpeg', 2),
(12, '5019411515471861.jpeg', 2),
(13, '639891515471861.jpeg', 2),
(14, '5839171515471862.jpg', 2),
(15, '3988941515471863.jpg', 2),
(16, '7059781515471863.jpg', 2),
(17, '4699661515471863.jpg', 2),
(18, '6609181515471863.jpg', 2),
(19, '1816231515471863.jpg', 2),
(20, '6989771515993685.jpg', 3),
(21, '2192301515993685.jpg', 3),
(22, '9062761515993685.jpg', 3),
(23, '8464331515993685.jpg', 3),
(24, '2716771515993685.jpg', 3),
(25, '6238401515993686.jpg', 3),
(26, '5032531515993687.jpg', 3),
(27, '2186971515993688.jpg', 3),
(28, '8941941515993688.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `publicnews`
--

CREATE TABLE IF NOT EXISTS `publicnews` (
  `news_id` int(11) NOT NULL,
  `news_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `news_detail` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `news_date` date NOT NULL,
  `view` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publicnews`
--

INSERT INTO `publicnews` (`news_id`, `news_title`, `news_detail`, `news_date`, `view`) VALUES
(14, 'ประกาศมหาวิทยาลัยราชภัฏลำปาง เรื่อง การยืมคืนอุปกรณ์เชื่อมต่อเครือข่ายอินเทอร์เน็ตของบุคลากร พ.ศ.2560', '<p>ประกาศมหาวิทยาลัยราชภัฏลำปาง เรื่อง การยืมคืนอุปกรณ์เชื่อมต่อเครือข่ายอินเทอร์เน็ตของบุคลากร พ.ศ.2560ประกาศมหาวิทยาลัยราชภัฏลำปาง เรื่อง การยืมคืนอุปกรณ์เชื่อมต่อเครือข่ายอินเทอร์เน็ตของบุคลากร พ.ศ.2560ประกาศมหาวิทยาลัยราชภัฏลำปาง เรื่อง การยืมคืนอุปกรณ์เชื่อมต่อเครือข่ายอินเทอร์เน็ตของบุคลากร พ.ศ.2560ประกาศมหาวิทยาลัยราชภัฏลำปาง เรื่อง การยืมคืนอุปกรณ์เชื่อมต่อเครือข่ายอินเทอร์เน็ตของบุคลากร พ.ศ.2560ประกาศมหาวิทยาลัยราชภัฏลำปาง เรื่อง การยืมคืนอุปกรณ์เชื่อมต่อเครือข่ายอินเทอร์เน็ตของบุคลากร พ.ศ.2560ประกาศมหาวิทยาลัยราชภัฏลำปาง เรื่อง การยืมคืนอุปกรณ์เชื่อมต่อเครือข่ายอินเทอร์เน็ตของบุคลากร พ.ศ.2560ประกาศมหาวิทยาลัยราชภัฏลำปาง เรื่อง การยืมคืนอุปกรณ์เชื่อมต่อเครือข่ายอินเทอร์เน็ตของบุคลากร พ.ศ.2560ประกาศมหาวิทยาลัยราชภัฏลำปาง เรื่อง การยืมคืนอุปกรณ์เชื่อมต่อเครือข่ายอินเทอร์เน็ตของบุคลากร พ.ศ.2560ประกาศมหาวิทยาลัยราชภัฏลำปาง เรื่อง การยืมคืนอุปกรณ์เชื่อมต่อเครือข่ายอินเทอร์เน็ตของบุคลากร พ.ศ.2560ประกาศมหาวิทยาลัยราชภัฏลำปาง เรื่อง การยืมคืนอุปกรณ์เชื่อมต่อเครือข่ายอินเทอร์เน็ตของบุคลากร พ.ศ.2560ประกาศมหาวิทยาลัยราชภัฏลำปาง เรื่อง การยืมคืนอุปกรณ์เชื่อมต่อเครือข่ายอินเทอร์เน็ตของบุคลากร พ.ศ.2560ประกาศมหาวิทยาลัยราชภัฏลำปาง เรื่อง การยืมคืนอุปกรณ์เชื่อมต่อเครือข่ายอินเทอร์เน็ตของบุคลากร พ.ศ.2560ประกาศมหาวิทยาลัยราชภัฏลำปาง เรื่อง การยืมคืนอุปกรณ์เชื่อมต่อเครือข่ายอินเทอร์เน็ตของบุคลากร พ.ศ.2560ประกาศมหาวิทยาลัยราชภัฏลำปาง เรื่อง การยืมคืนอุปกรณ์เชื่อมต่อเครือข่ายอินเทอร์เน็ตของบุคลากร พ.ศ.2560ประกาศมหาวิทยาลัยราชภัฏลำปาง เรื่อง การยืมคืนอุปกรณ์เชื่อมต่อเครือข่ายอินเทอร์เน็ตของบุคลากร พ.ศ.2560ประกาศมหาวิทยาลัยราชภัฏลำปาง เรื่อง การยืมคืนอุปกรณ์เชื่อมต่อเครือข่ายอินเทอร์เน็ตของบุคลากร พ.ศ.2560ประกาศมหาวิทยาลัยราชภัฏลำปาง เรื่อง การยืมคืนอุปกรณ์เชื่อมต่อเครือข่ายอินเทอร์เน็ตของบุคลากร พ.ศ.2560ประกาศมหาวิทยาลัยราชภัฏลำปาง เรื่อง การยืมคืนอุปกรณ์เชื่อมต่อเครือข่ายอินเทอร์เน็ตของบุคลากร พ.ศ.2560ประกาศมหาวิทยาลัยราชภัฏลำปาง เรื่อง การยืมคืนอุปกรณ์เชื่อมต่อเครือข่ายอินเทอร์เน็ตของบุคลากร พ.ศ.2560ประกาศมหาวิทยาลัยราชภัฏลำปาง เรื่อง การยืมคืนอุปกรณ์เชื่อมต่อเครือข่ายอินเทอร์เน็ตของบุคลากร พ.ศ.2560ประกาศมหาวิทยาลัยราชภัฏลำปาง เรื่อง การยืมคืนอุปกรณ์เชื่อมต่อเครือข่ายอินเทอร์เน็ตของบุคลากร พ.ศ.2560ประกาศมหาวิทยาลัยราชภัฏลำปาง เรื่อง การยืมคืนอุปกรณ์เชื่อมต่อเครือข่ายอินเทอร์เน็ตของบุคลากร พ.ศ.2560ประกาศมหาวิทยาลัยราชภัฏลำปาง เรื่อง การยืมคืนอุปกรณ์เชื่อมต่อเครือข่ายอินเทอร์เน็ตของบุคลากร พ.ศ.2560ประกาศมหาวิทยาลัยราชภัฏลำปาง เรื่อง การยืมคืนอุปกรณ์เชื่อมต่อเครือข่ายอินเทอร์เน็ตของบุคลากร พ.ศ.2560ประกาศมหาวิทยาลัยราชภัฏลำปาง เรื่อง การยืมคืนอุปกรณ์เชื่อมต่อเครือข่ายอินเทอร์เน็ตของบุคลากร พ.ศ.2560ประกาศมหาวิทยาลัยราชภัฏลำปาง เรื่อง การยืมคืนอุปกรณ์เชื่อมต่อเครือข่ายอินเทอร์เน็ตของบุคลากร พ.ศ.2560</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2018-01-04', 2);

-- --------------------------------------------------------

--
-- Table structure for table `publicnews_file`
--

CREATE TABLE IF NOT EXISTS `publicnews_file` (
  `file_id` int(11) NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `filename_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `news_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publicnews_file`
--

INSERT INTO `publicnews_file` (`file_id`, `filename`, `filename_path`, `news_id`) VALUES
(28, 'วิธีติดตั้ง Office 2016 ฉบับละเอียด.pdf', '197181515035126.pdf', 14);

-- --------------------------------------------------------

--
-- Table structure for table `research`
--

CREATE TABLE IF NOT EXISTS `research` (
  `research_id` int(11) NOT NULL,
  `research_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `student_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `research_year` int(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `research`
--

INSERT INTO `research` (`research_id`, `research_name`, `student_name`, `file`, `research_year`) VALUES
(2, 'การลดการใช้สารเคมีเพื่อป้องกันกำจัดศัตรูพืชหลังการเก็บเกี่ยว', 'รังสิมา เก่งการพานิช, พรทิพย์ วิสารทานนท์, อมรา ชินภูติ', 'pdf-2018011216294913878.pdf', 2558),
(3, 'การวิจัยภาวะการณ์เปลี่ยนแปลงภูมิอากาศกับระบบการผลิตภาคเกษตร', 'สมชาย บุญประดับx', 'pdf-2018011216313913648.pdf', 2558);

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE IF NOT EXISTS `slide` (
  `img_id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`img_id`, `file`) VALUES
(32, '6335151516025677.png');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `student_id` int(11) NOT NULL,
  `sy_id` int(11) NOT NULL,
  `student_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `student_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `student_degree` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `student_work` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `student_university` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `student_year` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `student_position` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `student_image` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `sy_id`, `student_code`, `student_name`, `student_degree`, `student_work`, `student_university`, `student_year`, `student_position`, `student_image`) VALUES
(4, 2, '52122660111', 'นายประวิทย์ ย่านเจริญกิจ', 'วทบ.', 'มหาวิทยาลัยราชภัฏลำปาง', 'มหาวิทยาลัยราชภัฏลำปาง', '2556', 'นักวิชาการคอมพิวเตอร์', '6356461515563126.jpg'),
(7, 2, '52122660102', 'นายกันตภณ สุโพธิ์', 'วทบ.', 'มหาวิทยาลัยราชภัฏลำปาง', 'มหาวิทยาลัยราชภัฏลำปาง', '2556', 'นักวิชาการคอมพิวเตอร์', '2076061515563021.jpg'),
(8, 2, '52122660103', 'นายกาจบดินทร์ เสาร์คำ', '', '', '', '', '', '7229661515558055.jpg'),
(9, 1, '60851070101', 'น.ส.กชกร   จินะโสต', '', '', '', '', '', '58691515992778.jpg'),
(10, 1, '60851070102', 'น.ส.มณีรัตน์  แก้วสุก', '', '', '', '', '', '4375891515992909.jpg'),
(11, 1, '60851070103', 'น.ส.ขนิษฐา  ติ๊บแสน', '', '', '', '', '', '4371921515993494.jpg'),
(12, 1, '60851070104', 'น.ส.ขวัญฤทัย  สูตรเลข', '', '', '', '', '', '6525011516000325.jpg'),
(13, 1, '60851070105', 'นางธัญญาศิริ  วงค์ปวง', '', '', '', '', '', '5255151516000837.jpg'),
(14, 1, '60851070106', 'น.ส.ธิดารัตน์  ชัชวาลพงศ์', '', '', '', '', '', '5286021516001081.jpg'),
(15, 1, '60851070107', 'น.ส.ปจรีย์นัฐ   ท่าจันทร์', '', '', '', '', '', '4901431516001135.jpg'),
(16, 1, '60851070108', 'นายพงษ์ประพันธ์  ตุ่นแจ้', '', '', '', '', '', '7236811516001203.jpg'),
(17, 1, '60851070109', 'น.ส.ภัคมน  รัตนากรานต์', '', '', '', '', '', '8561871516001289.jpg'),
(18, 1, '60851070110', 'น.ส.รัติกาล  สำเนียง', '', '', '', '', '', '8444491516001460.jpg'),
(19, 1, '60851070111', 'น.ส.ลำดวน  สาระวงศ์', '', '', '', '', '', '5568591516001508.jpg'),
(20, 1, '60851070112', 'น.ส.สุพรรษา  ดัดงอน', '', '', '', '', '', '9701531516001552.jpg'),
(21, 1, '60851070115', 'น.ส.เกศดา  โปทา', '', '', '', '', '', '2167391516001661.jpg'),
(22, 1, '60851070116', 'นายกิติภพ   ปินทิโย', '', '', '', '', '', '1962151516001718.jpg'),
(23, 1, '60851070117', 'นายณัฎฐโภคิณ  ภูริวัฒนภูวดล', '', '', '', '', '', '7979621516001769.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `student_year`
--

CREATE TABLE IF NOT EXISTS `student_year` (
  `sy_id` int(11) NOT NULL,
  `sy_year` varchar(10) NOT NULL,
  `sy_code` varchar(10) NOT NULL,
  `sy_gen` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_year`
--

INSERT INTO `student_year` (`sy_id`, `sy_year`, `sy_code`, `sy_gen`) VALUES
(1, '2560', '60122660', '1');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `teacher_id` int(11) NOT NULL,
  `teacher_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `teacher_image` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `teacher_position` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `order_num` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `teacher_name`, `teacher_image`, `teacher_position`, `order_num`) VALUES
(1, 'อาจารย์ ดร.ดุษฏี  สีตลวรางค์', '9876001515984832.jpg', 'อาจารย์ประจำหลักสูตร', 1),
(3, 'ผศ.ดร.จรีรัตน์   สุวรรณ์', '4738601515984865.jpg', 'อาจารย์ประจำหลักสูตร', 1),
(4, 'ผศ.ดร.ดวงจันทร์   เดี่ยววิไล', '3402321515984506.jpg', 'หัวหน้าหลักสูตร', 0),
(5, 'อาจารย์ปริตต์  สายสี', '4478741515984923.jpg', 'อาจารย์ประจำหลักสูตร', 1),
(6, 'อาจารย์สุภาภรณ์  มาชัยวงศ์', '8628591515984952.jpg', 'อาจารย์ประจำหลักสูตร', 1),
(7, 'อาจารย์ ดร. ปริญญาภาษ  สีทอง', '6837531515984996.jpg', 'อาจารย์ประจำหลักสูตร', 2),
(8, 'อาจารย์ ดร. เกษทิพย์  ศิริชัยศิลป์', '7201971515985032.jpg', 'อาจารย์ประจำหลักสูตร', 2),
(9, 'อาจารย์ ดร.สุจิตรา ปันดี', '4578541515985165.jpg', 'อาจารย์ประจำหลักสูตร', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateadd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `name`, `dateadd`) VALUES
(3, 'wit00685', '000685', 'Prawit Yancharoenkit', '2018-01-04 03:06:19'),
(4, 'admin', '1234', 'admin', '2018-01-08 09:22:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `file_download`
--
ALTER TABLE `file_download`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `news_image_gallery`
--
ALTER TABLE `news_image_gallery`
  ADD PRIMARY KEY (`nig_id`);

--
-- Indexes for table `publicnews`
--
ALTER TABLE `publicnews`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `publicnews_file`
--
ALTER TABLE `publicnews_file`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `research`
--
ALTER TABLE `research`
  ADD PRIMARY KEY (`research_id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`img_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_year`
--
ALTER TABLE `student_year`
  ADD PRIMARY KEY (`sy_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `file_download`
--
ALTER TABLE `file_download`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `news_image_gallery`
--
ALTER TABLE `news_image_gallery`
  MODIFY `nig_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `publicnews`
--
ALTER TABLE `publicnews`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `publicnews_file`
--
ALTER TABLE `publicnews_file`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `research`
--
ALTER TABLE `research`
  MODIFY `research_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `student_year`
--
ALTER TABLE `student_year`
  MODIFY `sy_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
