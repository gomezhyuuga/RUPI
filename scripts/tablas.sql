SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema RUPI
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema RUPI
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `RUPI` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `RUPI` ;

-- -----------------------------------------------------
-- Table `RUPI`.`Vacunas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RUPI`.`Vacunas` (
  `id_vacuna` INT(5) NOT NULL AUTO_INCREMENT,
  `nombreV` VARCHAR(200) NULL,
  PRIMARY KEY (`id_vacuna`));


-- -----------------------------------------------------
-- Table `RUPI`.`Tratamiento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RUPI`.`Tratamiento` (
  `id_tratamiento` INT(5) NOT NULL AUTO_INCREMENT,
  `nombreT` VARCHAR(200) NULL,
  PRIMARY KEY (`id_tratamiento`));


-- -----------------------------------------------------
-- Table `RUPI`.`Medicamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RUPI`.`Medicamento` (
  `id_medicamento` INT(5) NOT NULL AUTO_INCREMENT,
  `nombreM` VARCHAR(200) NULL,
  PRIMARY KEY (`id_medicamento`));


-- -----------------------------------------------------
-- Table `RUPI`.`Especie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RUPI`.`Especie` (
  `id_especie` INT(5) NOT NULL AUTO_INCREMENT,
  `nombreE` VARCHAR(200) NULL,
  `origen` VARCHAR(200) NULL,
  PRIMARY KEY (`id_especie`));


-- -----------------------------------------------------
-- Table `RUPI`.`Adoptante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RUPI`.`Adoptante` (
  `id_adoptante` INT(5) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(200) NULL,
  `telefono` VARCHAR(10) NULL,
  `direccion` VARCHAR(500) NULL,
  PRIMARY KEY (`id_adoptante`));


-- -----------------------------------------------------
-- Table `RUPI`.`Estatus`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RUPI`.`Estatus` (
  `id_status` INT(5) NOT NULL AUTO_INCREMENT,
  `nombreS` VARCHAR(200) NULL,
  PRIMARY KEY (`id_status`));


-- -----------------------------------------------------
-- Table `RUPI`.`Raza`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RUPI`.`Raza` (
  `id_raza` INT(5) NOT NULL AUTO_INCREMENT,
  `nombreR` VARCHAR(200) NULL,
  `talla` VARCHAR(100) NULL,
  PRIMARY KEY (`id_raza`));


-- -----------------------------------------------------
-- Table `RUPI`.`Veterinario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RUPI`.`Veterinario` (
  `id_veterinario` INT(5) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(200) NULL,
  `apellido` VARCHAR(200) NULL,
  PRIMARY KEY (`id_veterinario`));


-- -----------------------------------------------------
-- Table `RUPI`.`Registro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RUPI`.`Registro` (
  `folio` INT(5) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(200) NULL,
  `id_especie` INT(5) NULL,
  `id_raza` INT(5) NULL,
  `sexo` CHAR(1) NULL,
  `color` VARCHAR(100) NULL,
  `peso` DECIMAL(6,2) NULL,
  `fecha_nacimiento` DATE NULL,
  `id_veterinario` INT(5) NULL,
  `id_status` INT(5) NULL,
  `observaciones` TEXT NULL,
  `id_adoptante` INT(5) NULL,
  `image` VARCHAR(300) NULL,
  INDEX `fk_especie` (`id_especie` ASC),
  INDEX `fk_raza` (`id_raza` ASC),
  INDEX `fk_veterinario` (`id_veterinario` ASC),
  INDEX `fk_status` (`id_status` ASC),
  INDEX `fk_adoptante` (`id_adoptante` ASC),
  PRIMARY KEY (`folio`),
  CONSTRAINT `fk_especie`
    FOREIGN KEY (`id_especie`)
    REFERENCES `RUPI`.`Especie` (`id_especie`),
  CONSTRAINT `fk_raza`
    FOREIGN KEY (`id_raza`)
    REFERENCES `RUPI`.`Raza` (`id_raza`),
  CONSTRAINT `fk_veterinario`
    FOREIGN KEY (`id_veterinario`)
    REFERENCES `RUPI`.`Veterinario` (`id_veterinario`),
  CONSTRAINT `fk_status`
    FOREIGN KEY (`id_status`)
    REFERENCES `RUPI`.`Estatus` (`id_status`),
  CONSTRAINT `fk_adoptante`
    FOREIGN KEY (`id_adoptante`)
    REFERENCES `RUPI`.`Adoptante` (`id_adoptante`))
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_spanish_ci;


-- -----------------------------------------------------
-- Table `RUPI`.`DetalleVacunas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RUPI`.`DetalleVacunas` (
  `folio` INT(5) NOT NULL,
  `id_vacuna` INT(5) NOT NULL,
  `fecha_aplicacion` DATE NOT NULL,
  `fecha_siguiente` DATE NULL,
  `id_veterinario` INT(5) NULL,
  INDEX `fk_vacuna_detalle_vacunas` (`id_vacuna` ASC),
  INDEX `fk_veterinario_vacunas` (`id_veterinario` ASC),
  PRIMARY KEY (`fecha_aplicacion`, `id_vacuna`, `folio`),
  CONSTRAINT `fk_folio_vacunas`
    FOREIGN KEY (`folio`)
    REFERENCES `RUPI`.`Registro` (`folio`),
  CONSTRAINT `fk_vacuna_detalle_vacunas`
    FOREIGN KEY (`id_vacuna`)
    REFERENCES `RUPI`.`Vacunas` (`id_vacuna`),
  CONSTRAINT `fk_veterinario_vacunas`
    FOREIGN KEY (`id_veterinario`)
    REFERENCES `RUPI`.`Veterinario` (`id_veterinario`));


-- -----------------------------------------------------
-- Table `RUPI`.`DetalleTratamiento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RUPI`.`DetalleTratamiento` (
  `id` INT(5) NOT NULL AUTO_INCREMENT,
  `folio` INT(5) NOT NULL,
  `id_tratamiento` INT(5) NOT NULL,
  `fecha_aplicacion` DATE NOT NULL,
  `id_veterinario` INT(5) NULL,
  INDEX `fk_tratamiento_detalle_tratamiento` (`id_tratamiento` ASC),
  INDEX `fk_veterinario_tratamiento` (`id_veterinario` ASC),
  PRIMARY KEY (`id`),
  CONSTRAINT UNIQUE (`folio`, `id_tratamiento`, `fecha_aplicacion`),
  CONSTRAINT `fk_folio_tratamiento`
    FOREIGN KEY (`folio`)
    REFERENCES `RUPI`.`Registro` (`folio`),
  CONSTRAINT `fk_tratamiento_detalle_tratamiento`
    FOREIGN KEY (`id_tratamiento`)
    REFERENCES `RUPI`.`Tratamiento` (`id_tratamiento`),
  CONSTRAINT `fk_veterinario_tratamiento`
    FOREIGN KEY (`id_veterinario`)
    REFERENCES `RUPI`.`Veterinario` (`id_veterinario`));


-- -----------------------------------------------------
-- Table `RUPI`.`DetalleMedicamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RUPI`.`DetalleMedicamento` (
  `folio` INT(5) NOT NULL,
  `id_medicamento` INT(5) NOT NULL,
  `fecha_suministro` DATE NOT NULL,
  `id_veterinario` INT(5) NULL,
  INDEX `fk_medicamento_detalle_medicamento` (`id_medicamento` ASC),
  INDEX `fk_veterinario_medicamento` (`id_veterinario` ASC),
  PRIMARY KEY (`fecha_suministro`, `id_medicamento`, `folio`),
  CONSTRAINT `fk_folio_medicamento`
    FOREIGN KEY (`folio`)
    REFERENCES `RUPI`.`Registro` (`folio`),
  CONSTRAINT `fk_medicamento_detalle_medicamento`
    FOREIGN KEY (`id_medicamento`)
    REFERENCES `RUPI`.`Medicamento` (`id_medicamento`),
  CONSTRAINT `fk_veterinario_medicamento`
    FOREIGN KEY (`id_veterinario`)
    REFERENCES `RUPI`.`Veterinario` (`id_veterinario`));


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
