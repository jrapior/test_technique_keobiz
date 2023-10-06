# ************************************************************
# Sequel Pro SQL dump
# Version 5446
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 8.0.17)
# Database: keobiz_technical_test
# Generation Time: 2023-09-28 11:02:39 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table balance_sheets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `balance_sheets`;

CREATE TABLE `balance_sheets` (
  `year` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `result` decimal(10,2) NOT NULL,
  PRIMARY KEY (`year`,`client_id`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `balance_sheets_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `balance_sheets` WRITE;
/*!40000 ALTER TABLE `balance_sheets` DISABLE KEYS */;

INSERT INTO `balance_sheets` (`year`, `client_id`, `result`)
VALUES
	(2020,1,4099.42),
	(2020,3,-263.82),
	(2020,4,896.16),
	(2020,6,-545.69),
	(2020,7,3891.78),
	(2020,8,4082.13),
	(2020,9,-65.27),
	(2020,10,1960.36),
	(2020,11,2688.73),
	(2020,12,-1553.67),
	(2020,13,4304.97),
	(2020,14,-2546.61),
	(2020,15,2811.08),
	(2020,17,-4239.36),
	(2020,18,1960.36),
	(2020,19,1358.84),
	(2020,20,3.26),
	(2020,22,789.04),
	(2020,23,-4624.04),
	(2020,24,-4956.91),
	(2020,25,-263.82),
	(2020,26,-4235.80),
	(2021,1,3848.44),
	(2021,2,-4551.66),
	(2021,3,2056.85),
	(2021,4,-814.82),
	(2021,5,-1086.87),
	(2021,6,-1796.77),
	(2021,7,-3253.84),
	(2021,8,4472.47),
	(2021,9,2618.75),
	(2021,10,961.74),
	(2021,11,2758.75),
	(2021,12,3351.74),
	(2021,13,1186.95),
	(2021,14,633.78),
	(2021,15,-3757.00),
	(2021,16,-4985.44),
	(2021,17,-688.41),
	(2021,18,961.74),
	(2021,19,-4663.99),
	(2021,20,-3086.73),
	(2021,21,-3757.00),
	(2021,22,-1254.95),
	(2021,23,-2215.00),
	(2021,24,-3093.70),
	(2021,25,2056.85),
	(2021,26,-224.75),
	(2022,1,-3285.74),
	(2022,2,2460.75),
	(2022,3,-4817.31),
	(2022,4,3343.25),
	(2022,5,1937.78),
	(2022,6,-1146.05),
	(2022,7,4946.35),
	(2022,8,4426.75),
	(2022,9,2719.68),
	(2022,10,-717.21),
	(2022,11,-1298.32),
	(2022,12,-2229.21),
	(2022,13,-4456.74),
	(2022,14,-3094.83),
	(2022,15,4467.98),
	(2022,16,-1801.25),
	(2022,17,-4734.23),
	(2022,19,107.08),
	(2022,20,-145.64),
	(2022,21,4467.98),
	(2022,22,2645.41),
	(2022,23,-3816.99),
	(2022,24,1496.14),
	(2022,25,-4817.31),
	(2022,26,-3962.65),
	(2023,1,-1759.05),
	(2023,2,3951.81),
	(2023,3,2952.21),
	(2023,4,-2489.64),
	(2023,6,-2977.82),
	(2023,7,-2338.14),
	(2023,8,4220.42),
	(2023,9,1993.21),
	(2023,10,-3182.60),
	(2023,11,1916.55),
	(2023,12,167.40),
	(2023,13,-2823.55),
	(2023,14,2964.02),
	(2023,15,365.63),
	(2023,16,326.40),
	(2023,19,3399.79),
	(2023,20,-4213.82),
	(2023,21,365.63),
	(2023,22,3160.66),
	(2023,23,2710.02),
	(2023,24,-1475.19),
	(2023,25,2952.21);

/*!40000 ALTER TABLE `balance_sheets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table clients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `clients`;

CREATE TABLE `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;

INSERT INTO `clients` (`id`, `first_name`, `last_name`)
VALUES
	(1,'Jean','Dupont'),
	(2,'Marie','Martin'),
	(3,'Pierre','Bernard'),
	(4,'Jean','Dupont'),
	(5,'Isabelle','Thomas'),
	(6,'Michel','Dubois'),
	(7,'Michel','Dubois'),
	(8,'Catherine','Robert'),
	(9,'Philippe','Petit'),
	(10,'Sophie','Richard'),
	(11,'Jacques','Roux'),
	(12,'Nathalie','Lefebvre'),
	(13,'François','Girard'),
	(14,'Martine','Moreau'),
	(15,'Eric','Laurent'),
	(16,'Caroline','Simon'),
	(17,'Thierry','Leclerc'),
	(18,'Sophie','Richard'),
	(19,'Valérie','Lecomte'),
	(20,'Patrick','Fournier'),
	(21,'Eric','Laurent'),
	(22,'Eric','Laurent'),
	(23,'Sylvie','Mercier'),
	(24,'Sébastien','Garcia'),
	(25,'Pierre','Bernard'),
	(26,'Anne','David');

/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
