-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema secao_03
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema secao_03
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `secao_03` DEFAULT CHARACTER SET utf8 ;
USE `secao_03` ;

-- -----------------------------------------------------
-- Table `secao_03`.`tipos_produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `secao_03`.`tipos_produto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `secao_03`.`produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `secao_03`.`produto` (
  `id` INT NOT NULL,
  `descricao` VARCHAR(45) NOT NULL,
  `preco` DECIMAL(8,2) NOT NULL,
  `id_tipos_produto` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_produto_1_idx` (`id_tipos_produto` ASC),
  CONSTRAINT `fk_produto_1`
    FOREIGN KEY (`id_tipos_produto`)
    REFERENCES `secao_03`.`tipos_produto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `secao_03`.`pacientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `secao_03`.`pacientes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  `endereco` VARCHAR(50) NOT NULL,
  `bairro` VARCHAR(40) NOT NULL,
  `estado` VARCHAR(2) NOT NULL,
  `CEP` VARCHAR(9) NOT NULL,
  `data_nascimento` DATE NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `secao_03`.`professores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `secao_03`.`professores` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `telefone` INT NOT NULL,
  `nome` CHAR(80) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `secao_03`.`turmas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `secao_03`.`turmas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `capacidade` INT NOT NULL,
  `id_professor` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_turmas_1_idx` (`id_professor` ASC),
  CONSTRAINT `fk_turmas_1`
    FOREIGN KEY (`id_professor`)
    REFERENCES `secao_03`.`professores` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
