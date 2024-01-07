-- MySQL Script generated by MySQL Workbench
-- Sun Jan  7 14:21:38 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema DASHBOARD
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `DASHBOARD` ;

-- -----------------------------------------------------
-- Schema DASHBOARD
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `DASHBOARD` DEFAULT CHARACTER SET utf8 ;
USE `DASHBOARD` ;

-- -----------------------------------------------------
-- Table `DASHBOARD`.`PERSONAL_DATA`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DASHBOARD`.`PERSONAL_DATA` ;

CREATE TABLE IF NOT EXISTS `DASHBOARD`.`PERSONAL_DATA` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `NAME` VARCHAR(45) NULL,
  `JOB` VARCHAR(45) NULL,
  `EMAIL` VARCHAR(30) NULL,
  `PHONE` VARCHAR(12) NULL COMMENT 'El teléfono móvil con la extension del pais: +34 99 99 99',
  `CREATED_AT` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `ACTIVE` TINYINT NULL DEFAULT 1,
  `LANGUAGE` VARCHAR(2) NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `idPERSONAL_DATA_UNIQUE` (`ID` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DASHBOARD`.`SOCIAL_MEDIA`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DASHBOARD`.`SOCIAL_MEDIA` ;

CREATE TABLE IF NOT EXISTS `DASHBOARD`.`SOCIAL_MEDIA` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `NAME` VARCHAR(45) NULL,
  `URL` VARCHAR(100) NULL,
  `CREATED_AT` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `ACTIVE` TINYINT NULL DEFAULT 1,
  `ID_PERSONAL_DATA` INT NULL,
  `ICON` VARCHAR(45) NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `idSOCIAL_MEDIA_UNIQUE` (`ID` ASC) VISIBLE,
  INDEX `FK_SOCIAL_MEDIA_PERSONAL_DATA_idx` (`ID_PERSONAL_DATA` ASC) VISIBLE,
  CONSTRAINT `FK_SOCIAL_MEDIA_PERSONAL_DATA`
    FOREIGN KEY (`ID_PERSONAL_DATA`)
    REFERENCES `DASHBOARD`.`PERSONAL_DATA` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DASHBOARD`.`STUDY`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DASHBOARD`.`STUDY` ;

CREATE TABLE IF NOT EXISTS `DASHBOARD`.`STUDY` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `NAME` VARCHAR(45) NULL,
  `LOCATION` VARCHAR(45) NULL,
  `START_YEAR` INT(4) NULL,
  `END_YEAR` INT(4) NULL,
  `ICON` VARCHAR(45) NULL,
  `LANGUAGE` VARCHAR(2) NULL COMMENT 'es or en',
  `CREATED_AT` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `ACTIVE` TINYINT NULL DEFAULT 1,
  `ID_PERSONAL_DATA` INT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC) VISIBLE,
  INDEX `FK_STUDIES_PERSONAL_DATA_idx` (`ID_PERSONAL_DATA` ASC) VISIBLE,
  CONSTRAINT `FK_STUDY_PERSONAL_DATA`
    FOREIGN KEY (`ID_PERSONAL_DATA`)
    REFERENCES `DASHBOARD`.`PERSONAL_DATA` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DASHBOARD`.`EXPERIENCE`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DASHBOARD`.`EXPERIENCE` ;

CREATE TABLE IF NOT EXISTS `DASHBOARD`.`EXPERIENCE` (
  `ID` INT NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DASHBOARD`.`LANGUAGE`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DASHBOARD`.`LANGUAGE` ;

CREATE TABLE IF NOT EXISTS `DASHBOARD`.`LANGUAGE` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `NAME` VARCHAR(45) NULL,
  `VALUE` VARCHAR(45) NULL,
  `CREATED_AT` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `ACTIVE` TINYINT NULL DEFAULT 1,
  `ICON` VARCHAR(45) NULL,
  `ID_PERSONAL_DATA` INT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC) VISIBLE,
  INDEX `FK_LANGUAGE_PERSONAL_DATA_idx` (`ID_PERSONAL_DATA` ASC) VISIBLE,
  CONSTRAINT `FK_LANGUAGE_PERSONAL_DATA`
    FOREIGN KEY (`ID_PERSONAL_DATA`)
    REFERENCES `DASHBOARD`.`PERSONAL_DATA` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DASHBOARD`.`PROJECT`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DASHBOARD`.`PROJECT` ;

CREATE TABLE IF NOT EXISTS `DASHBOARD`.`PROJECT` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `NAME` VARCHAR(45) NULL,
  `DESCRIPTION` VARCHAR(45) NULL,
  `URL` VARCHAR(45) NULL,
  `CREATED_AT` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `ACTIVE` TINYINT NULL DEFAULT 1,
  `ID_PERSONAL_DATA` INT NULL,
  `ICON` VARCHAR(45) NULL DEFAULT 'faCode',
  `LANGUAGE` VARCHAR(2) NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC) VISIBLE,
  INDEX `FK_PROJECT_PERSONAL_DATA_idx` (`ID_PERSONAL_DATA` ASC) VISIBLE,
  CONSTRAINT `FK_PROJECT_PERSONAL_DATA`
    FOREIGN KEY (`ID_PERSONAL_DATA`)
    REFERENCES `DASHBOARD`.`PERSONAL_DATA` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DASHBOARD`.`PROGRAM`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DASHBOARD`.`PROGRAM` ;

CREATE TABLE IF NOT EXISTS `DASHBOARD`.`PROGRAM` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `NAME` VARCHAR(45) NULL,
  `VALUE` VARCHAR(45) NULL,
  `CREATED_AT` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `ACTIVE` TINYINT NULL DEFAULT 1,
  `ICON` VARCHAR(45) NULL,
  `ID_PERSONAL_DATA` INT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC) VISIBLE,
  INDEX `FK_LANGUAGE_PERSONAL_DATA_idx` (`ID_PERSONAL_DATA` ASC) VISIBLE,
  CONSTRAINT `FK_PROGRAM_PERSONAL_DATA`
    FOREIGN KEY (`ID_PERSONAL_DATA`)
    REFERENCES `DASHBOARD`.`PERSONAL_DATA` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DASHBOARD`.`IDIOM`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DASHBOARD`.`IDIOM` ;

CREATE TABLE IF NOT EXISTS `DASHBOARD`.`IDIOM` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `NAME` VARCHAR(45) NULL,
  `LEVEL` VARCHAR(45) NULL,
  `ICON` VARCHAR(45) NULL,
  `CREATED_AT` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `ACTIVE` TINYINT NULL DEFAULT 1,
  `ID_PERSONAL_DATA` INT NULL,
  `LANGUAGE` VARCHAR(2) NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC) VISIBLE,
  INDEX `FK_IDIOM_PERSONAL_DATA_idx` (`ID_PERSONAL_DATA` ASC) VISIBLE,
  CONSTRAINT `FK_IDIOM_PERSONAL_DATA`
    FOREIGN KEY (`ID_PERSONAL_DATA`)
    REFERENCES `DASHBOARD`.`PERSONAL_DATA` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DASHBOARD`.`AWARD`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DASHBOARD`.`AWARD` ;

CREATE TABLE IF NOT EXISTS `DASHBOARD`.`AWARD` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `NAME` VARCHAR(45) NULL,
  `DESCRIPTION` VARCHAR(250) NULL,
  `YEAR` INT NULL,
  `ICON` VARCHAR(45) NULL,
  `CREATED_AT` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `ACTIVE` TINYINT NULL DEFAULT 1,
  `ID_PERSONAL_DATA` INT NULL,
  `LANGUAGE` VARCHAR(2) NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC) VISIBLE,
  INDEX `FK_AWARD_PERSONAL_DATA_idx` (`ID_PERSONAL_DATA` ASC) VISIBLE,
  CONSTRAINT `FK_AWARD_PERSONAL_DATA`
    FOREIGN KEY (`ID_PERSONAL_DATA`)
    REFERENCES `DASHBOARD`.`PERSONAL_DATA` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DASHBOARD`.`ABOUT_ME`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DASHBOARD`.`ABOUT_ME` ;

CREATE TABLE IF NOT EXISTS `DASHBOARD`.`ABOUT_ME` (
  `ID` INT NOT NULL,
  `NAME` VARCHAR(45) NULL,
  `DESCRIPTION` VARCHAR(250) NULL,
  `ICON` VARCHAR(45) NULL,
  `CREATED_AT` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `ACTIVE` TINYINT NULL DEFAULT 1,
  `ID_PERSONAL_DATA` INT NULL,
  `LANGUAGE` VARCHAR(2) NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC) VISIBLE,
  INDEX `FK_ABOUT_ME_PERSONAL_DATA_idx` (`ID_PERSONAL_DATA` ASC) VISIBLE,
  CONSTRAINT `FK_ABOUT_ME_PERSONAL_DATA`
    FOREIGN KEY (`ID_PERSONAL_DATA`)
    REFERENCES `DASHBOARD`.`PERSONAL_DATA` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DASHBOARD`.`OTHER`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DASHBOARD`.`OTHER` ;

CREATE TABLE IF NOT EXISTS `DASHBOARD`.`OTHER` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `NAME` VARCHAR(45) NULL,
  `LOCATION` VARCHAR(45) NULL,
  `START_YEAR` DATETIME NULL,
  `END_YEAR` DATETIME NULL,
  `ICON` VARCHAR(45) NULL,
  `CREATED_AT` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `ACTIVE` TINYINT NULL DEFAULT 1,
  `ID_PERSONAL_DATA` INT NULL,
  `LANGUAGE` VARCHAR(2) NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC) VISIBLE,
  INDEX `FK_OTHER_PERSONAL_DATA_idx` (`ID_PERSONAL_DATA` ASC) VISIBLE,
  CONSTRAINT `FK_OTHER_PERSONAL_DATA`
    FOREIGN KEY (`ID_PERSONAL_DATA`)
    REFERENCES `DASHBOARD`.`PERSONAL_DATA` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
