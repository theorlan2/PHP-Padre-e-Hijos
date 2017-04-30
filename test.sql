-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.0.25-MariaDB-0ubuntu0.15.10.1 - (Ubuntu)
-- SO del servidor:              debian-linux-gnu
-- HeidiSQL Versión:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura para tabla test.padrehijos
CREATE TABLE IF NOT EXISTS `padrehijos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `padre` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla test.padrehijos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `padrehijos` DISABLE KEYS */;
INSERT INTO `padrehijos` (`id`, `nombre`, `padre`) VALUES
	(1, 'Serie T', 0),
	(2, 'Serie 2', 1),
	(3, 'Pelicula 1', 2),
	(4, 'Especial 1', 2),
	(5, 'Sub Especial 1', 3),
	(6, 'Serie 3', 0),
	(7, 'Serie Q', 1);
/*!40000 ALTER TABLE `padrehijos` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
