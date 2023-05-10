-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema 2 tp
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema 2 tp
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `2 tp` DEFAULT CHARACTER SET utf8mb3 ;
USE `2 tp` ;

-- -----------------------------------------------------
-- Table `2 tp`.`notas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `2 tp`.`notas` (
  `id` INT NOT NULL,
  `titulo` VARCHAR(100) NULL DEFAULT NULL,
  `fecha_de_creacion` DATE NULL DEFAULT NULL,
  `fecha_ultima_modificacion` DATE NULL DEFAULT NULL,
  `descripcion` TEXT NULL DEFAULT NULL,
  `Eliminacion` TINYINT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `2 tp`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `2 tp`.`usuarios` (
  `id` INT NOT NULL,
  `nombre` VARCHAR(25) NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `2 tp`.`usuarios_notas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `2 tp`.`usuarios_notas` (
  `usuario_id` INT NOT NULL,
  `notas_id` INT NULL DEFAULT NULL,
  INDEX `usuarios_idx` (`usuario_id` ASC) VISIBLE,
  INDEX `notas_idx` (`notas_id` ASC) VISIBLE,
  CONSTRAINT `notas`
    FOREIGN KEY (`notas_id`)
    REFERENCES `2 tp`.`notas` (`id`),
  CONSTRAINT `usuarios`
    FOREIGN KEY (`usuario_id`)
    REFERENCES `2 tp`.`usuarios` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
