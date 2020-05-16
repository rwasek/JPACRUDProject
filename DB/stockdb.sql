-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema stockdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `stockdb` ;

-- -----------------------------------------------------
-- Schema stockdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `stockdb` DEFAULT CHARACTER SET utf8 ;
USE `stockdb` ;

-- -----------------------------------------------------
-- Table `stock`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `stock` ;

CREATE TABLE IF NOT EXISTS `stock` (
  `id` INT NOT NULL,
  `symbol` VARCHAR(45) NOT NULL,
  `company_name` VARCHAR(45) NOT NULL,
  `exchange` VARCHAR(45) NOT NULL,
  `may_15_2020_price` DECIMAL(15,2) NOT NULL,
  `dividend_yield` DECIMAL(5,2) NULL,
  `52_week_high` DECIMAL(15,2) NOT NULL,
  `52_week_low` DECIMAL(15,2) NOT NULL,
  `analyst_price_target` DECIMAL(15,2) NULL,
  `analyst_price_target_upside` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS stockuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'stockuser'@'localhost' IDENTIFIED BY 'stockuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'stockuser'@'localhost';
GRANT ALL ON TABLE `stockdb`.`stock` TO 'stockuser'@'localhost';
GRANT ALL ON * TO 'stockuser'@'localhost';
GRANT SELECT ON TABLE * TO 'stockuser'@'localhost';
GRANT SELECT, INSERT, TRIGGER ON TABLE * TO 'stockuser'@'localhost';
GRANT ALL ON TABLE `stockdb`.`stock` TO 'stockuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `stock`
-- -----------------------------------------------------
START TRANSACTION;
USE `stockdb`;
INSERT INTO `stock` (`id`, `symbol`, `company_name`, `exchange`, `may_15_2020_price`, `dividend_yield`, `52_week_high`, `52_week_low`, `analyst_price_target`, `analyst_price_target_upside`) VALUES (1, 'AAL', 'American Airlines', 'NASDAQ', 9.04, 0.00, 34.99, 8.25, 16.88, '86.67% upside');
INSERT INTO `stock` (`id`, `symbol`, `company_name`, `exchange`, `may_15_2020_price`, `dividend_yield`, `52_week_high`, `52_week_low`, `analyst_price_target`, `analyst_price_target_upside`) VALUES (2, 'AAPL', 'Apple', 'NASDAQ', 307.71, 1.06, 327.85, 170.27, 299.24, '2.75% downside');
INSERT INTO `stock` (`id`, `symbol`, `company_name`, `exchange`, `may_15_2020_price`, `dividend_yield`, `52_week_high`, `52_week_low`, `analyst_price_target`, `analyst_price_target_upside`) VALUES (3, 'BA', 'Boeing', 'NYSE', 120.00, 0.00, 391.00, 89.00, 238.86, '99.05% upside');
INSERT INTO `stock` (`id`, `symbol`, `company_name`, `exchange`, `may_15_2020_price`, `dividend_yield`, `52_week_high`, `52_week_low`, `analyst_price_target`, `analyst_price_target_upside`) VALUES (4, 'AMD', 'Advanced Micro Devices', 'NASDAQ', 54.20, 0.00, 59.27, 26.03, 51.97, '4.11% downside');
INSERT INTO `stock` (`id`, `symbol`, `company_name`, `exchange`, `may_15_2020_price`, `dividend_yield`, `52_week_high`, `52_week_low`, `analyst_price_target`, `analyst_price_target_upside`) VALUES (5, 'DIS', 'The Walt Disney Company', 'NYSE', 109.05, 1.66, 153.41, 79.07, 127.61, '17.02% upside');
INSERT INTO `stock` (`id`, `symbol`, `company_name`, `exchange`, `may_15_2020_price`, `dividend_yield`, `52_week_high`, `52_week_low`, `analyst_price_target`, `analyst_price_target_upside`) VALUES (6, 'JPM', 'JPMorgan Chase & Co', 'NYSE', 85.90, 4.11, 141.10, 76.91, 108.36, '26.15% upside');
INSERT INTO `stock` (`id`, `symbol`, `company_name`, `exchange`, `may_15_2020_price`, `dividend_yield`, `52_week_high`, `52_week_low`, `analyst_price_target`, `analyst_price_target_upside`) VALUES (7, 'TSLA', 'Tesla', 'NASDAQ', 799.17, 0.00, 968.99, 176.99, 560.35, '29.88% downside');
INSERT INTO `stock` (`id`, `symbol`, `company_name`, `exchange`, `may_15_2020_price`, `dividend_yield`, `52_week_high`, `52_week_low`, `analyst_price_target`, `analyst_price_target_upside`) VALUES (8, 'NCLH', 'Norwegian Cruise Line', 'NASDAQ', 10.92, 0.00, 59.78, 7.03, 38.00, '247.99% upside');
INSERT INTO `stock` (`id`, `symbol`, `company_name`, `exchange`, `may_15_2020_price`, `dividend_yield`, `52_week_high`, `52_week_low`, `analyst_price_target`, `analyst_price_target_upside`) VALUES (9, 'UAL', 'United Continental', 'NASDAQ', 19.92, 0.00, 96.03, 17.80, 70.57, '254.27% upside');
INSERT INTO `stock` (`id`, `symbol`, `company_name`, `exchange`, `may_15_2020_price`, `dividend_yield`, `52_week_high`, `52_week_low`, `analyst_price_target`, `analyst_price_target_upside`) VALUES (10, 'MSFT', 'Microsoft', 'NASDAQ', 183.16, 1.13, 190.70, 119.01, 190.39, '3.95% upside');

COMMIT;

