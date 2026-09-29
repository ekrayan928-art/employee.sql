
-- --------------------------------------------------------

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE IF NOT EXISTS `location` (
  `location_id` int NOT NULL AUTO_INCREMENT,
  `location` varchar(30) NOT NULL,
  PRIMARY KEY (`location_id`),
  UNIQUE KEY `location` (`location`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Truncate table before insert `location`
--

TRUNCATE TABLE `location`;
--
-- Dumping data for table `location`
--

INSERT DELAYED INTO `location` (`location_id`, `location`) VALUES
(1, 'New York'),
(2, 'London'),
(3, 'Bangalore'),
(4, 'Toronto'),
(5, 'Singapore');
