
-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `employee_id` int NOT NULL,
  `employee_name` varchar(50) NOT NULL,
  `gender` enum('M','F') DEFAULT NULL,
  `age` int DEFAULT NULL,
  `hire_date` date DEFAULT (curdate()),
  `designation` varchar(100) DEFAULT NULL,
  `department_id` int DEFAULT NULL,
  `location_id` int DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `department_id` (`department_id`),
  KEY `location_id` (`location_id`)
) ;

--
-- Truncate table before insert `employees`
--

TRUNCATE TABLE `employees`;
--
-- Dumping data for table `employees`
--

INSERT DELAYED INTO `employees` (`employee_id`, `employee_name`, `gender`, `age`, `hire_date`, `designation`, `department_id`, `location_id`, `salary`) VALUES
(1, 'John Doe', 'M', 28, '2020-05-14', 'Software Engineer', 2, 1, 65000.00),
(2, 'Jane Smith', 'F', 32, '2019-03-22', 'HR Manager', 1, 2, 72000.00),
(3, 'Ravi Kumar', 'M', 26, '2021-07-01', 'Data Analyst', 2, 3, 58000.00),
(4, 'Emily Brown', 'F', 24, '2022-01-10', 'Sales Executive', 4, 4, 45000.00),
(5, 'Michael Lee', 'M', 35, '2018-11-30', 'Finance Manager', 3, 5, 80000.00);
