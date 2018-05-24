# ************************************************************
# Sequel Pro SQL dump
# Versão 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.1.26-MariaDB)
# Base de Dados: play_autocomplete
# Tempo de Geração: 2018-05-23 12:59:09 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump da tabela products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `product_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) DEFAULT NULL,
  `product_price` decimal(10,2) DEFAULT NULL,
  `product_url` varchar(255) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` (`product_id`, `product_name`, `product_price`, `product_url`, `product_image`)
VALUES
	(1,'Tênis Nike',149.90,'tenis-nike','nike.jpg'),
	(2,'Tênis Reebok',299.90,'tenis-reebok','reebok.jpg'),
	(3,'Tênis Olympikus',229.90,'tenis-olympikus','olympikus.jpg'),
	(4,'Tênis Adidas',169.90,'tenis-adidas','adidas.jpg');

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
