-- MySQL Script generated by MySQL Workbench
-- Wed May 29 14:05:00 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`client_WT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `client_WT` (
  `idClient` INT NOT NULL AUTO_INCREMENT,
  `nomClient` VARCHAR(45) NULL,
  `adresseClient` VARCHAR(100) NULL,
  PRIMARY KEY (`idClient`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

INSERT INTO client_WT (idClient, nomClient, adresseClient)
 VALUES ('1', 'Adelin Gauthier', 'Lutiau 2')
 
CREATE USER 'servWeb'@'%' IDENTIFIED BY '';
CREATE USER 'employe'@'localhost' IDENTIFIED BY 'emp1';
CREATE USER 'maintenance'@'localhost' IDENTIFIED BY 'admin';
CREATE USER 'root'@'%' IDENTIFIED BY '';

GRANT ALL PRIVILEGES ON * . * TO 'servWeb'@'%';
GRANT ALL PRIVILEGES ON *.* TO 'maintenance'@'localhost';
GRANT ALL PRIVILEGES ON * . * TO 'root'@'%';
GRANT SELECT ON *.* TO 'employe'@'localhost';

FLUSH PRIVILEGES;
 
