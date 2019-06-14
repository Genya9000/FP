-- MySQL Script generated by MySQL Workbench
-- Пнд 03 июн 2019 17:32:30
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema carriage
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema carriage
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `carriage` DEFAULT CHARACTER SET utf8 ;
USE `carriage` ;

-- -----------------------------------------------------
-- Table `carriage`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carriage`.`users` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = utf8;

ALTER TABLE `carriage`.`users` 
ADD UNIQUE INDEX `phone_UNIQUE` (`phone` ASC),
ADD UNIQUE INDEX `email_UNIQUE` (`email` ASC);
;



INSERT INTO `carriage`.`users` (`id`, `name`, `phone`, `email`, `password`) VALUES ('1', 'Masha', '0639814477', '12@i.com', '007007');
INSERT INTO `carriage`.`users` (`id`, `name`, `phone`, `email`, `password`) VALUES ('2', 'Masha2', '0639814478', '13@i.com', '007009');
INSERT INTO `carriage`.`users` (`id`, `name`, `phone`, `email`, `password`) VALUES ('3', 'Masha3', '0639814479', '14@i.com', '017009');
INSERT INTO `carriage`.`users` (`id`, `name`, `phone`, `email`, `password`) VALUES ('4', 'Masha4', '0639814470', '15@i.com', '027009');
INSERT INTO `carriage`.`users` (`id`, `name`, `phone`, `email`, `password`) VALUES ('5', 'Masha5', '0639814476', '16@i.com', '037009');
INSERT INTO `carriage`.`users` (`id`, `name`, `phone`, `email`, `password`) VALUES ('6', 'Masha6', '0639814475', '17@i.com', '047009');
INSERT INTO `carriage`.`users` (`id`, `name`, `phone`, `email`, `password`) VALUES ('7', 'Masha7', '0639814474', '18@i.com', '057009');
INSERT INTO `carriage`.`users` (`id`, `name`, `phone`, `email`, `password`) VALUES ('8', 'Masha8', '0639814473', '19@i.com', '067009');
INSERT INTO `carriage`.`users` (`id`, `name`, `phone`, `email`, `password`) VALUES ('9', 'Masha9', '0639814472', '20@i.com', '077009');
INSERT INTO `carriage`.`users` (`id`, `name`, `phone`, `email`, `password`) VALUES ('10', 'Masha11', '0639814471', '21@i.com', '087009');
INSERT INTO `carriage`.`users` (`id`, `name`, `phone`, `email`, `password`) VALUES ('11', 'Masha112', '0639814428', '22@i.com', '097009');




-- -----------------------------------------------------
-- Table `carriage`.`orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carriage`.`orders` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `userId` INT(11) NOT NULL,
  `type` VARCHAR(45) NOT NULL,
  `weight` INT(11) NOT NULL,
  `date` DATE NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_orders_1_idx` (`userId` ASC) VISIBLE,
  CONSTRAINT `fk_orders_1`
    FOREIGN KEY (`userId`)
    REFERENCES `carriage`.`users` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


INSERT INTO `carriage`.`orders` (`id`, `userId`, `type`, `weight`, `date`) VALUES ('1', '1', 'car', '999', '2019-01-25');
INSERT INTO `carriage`.`orders` (`id`, `userId`, `type`, `weight`, `date`) VALUES ('2', '2', 'car1', '998', '2019-01-23');
INSERT INTO `carriage`.`orders` (`id`, `userId`, `type`, `weight`, `date`) VALUES ('3', '3', 'car2', '998', '2019-01-23');
INSERT INTO `carriage`.`orders` (`id`, `userId`, `type`, `weight`, `date`) VALUES ('4', '4', 'car3', '998', '2019-01-23');
INSERT INTO `carriage`.`orders` (`id`, `userId`, `type`, `weight`, `date`) VALUES ('5', '5', 'car4', '998', '2019-01-23');
INSERT INTO `carriage`.`orders` (`id`, `userId`, `type`, `weight`, `date`) VALUES ('6', '6', 'car5', '998', '2019-01-23');
INSERT INTO `carriage`.`orders` (`id`, `userId`, `type`, `weight`, `date`) VALUES ('7', '7', 'car6', '998', '2019-01-23');
INSERT INTO `carriage`.`orders` (`id`, `userId`, `type`, `weight`, `date`) VALUES ('8', '8', 'car7', '998', '2019-01-23');
INSERT INTO `carriage`.`orders` (`id`, `userId`, `type`, `weight`, `date`) VALUES ('9', '9', 'car8', '998', '2019-01-23');
INSERT INTO `carriage`.`orders` (`id`, `userId`, `type`, `weight`, `date`) VALUES ('10', '10', 'car9', '998', '2019-01-23');
INSERT INTO `carriage`.`orders` (`id`, `userId`, `type`, `weight`, `date`) VALUES ('11', '11', 'car10', '998', '2019-01-23');




-- -----------------------------------------------------
-- Table `carriage`.`addresses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carriage`.`addresses` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `orderId` INT(11) NOT NULL,
  `addressSent` VARCHAR(100) NOT NULL,
  `deliveryAddress` VARCHAR(100) NOT NULL,
  `distance` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_addresses_1_idx` (`orderId` ASC) VISIBLE,
  CONSTRAINT `fk_addresses_1`
    FOREIGN KEY (`orderId`)
    REFERENCES `carriage`.`orders` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;



INSERT INTO `carriage`.`addresses` (`id`, `orderId`, `addressSent`, `deliveryAddress`, `distance`) VALUES ('1', '1', 'Sadova 31', 'Mira 49', '443');
INSERT INTO `carriage`.`addresses` (`id`, `orderId`, `addressSent`, `deliveryAddress`, `distance`) VALUES ('2', '2', 'Sadova 32', 'Mira 29', '445');
INSERT INTO `carriage`.`addresses` (`id`, `orderId`, `addressSent`, `deliveryAddress`, `distance`) VALUES ('3', '3', 'Sadova 33', 'Mira 19', '445');
INSERT INTO `carriage`.`addresses` (`id`, `orderId`, `addressSent`, `deliveryAddress`, `distance`) VALUES ('4', '4', 'Sadova 30', 'Mira 49', '445');
INSERT INTO `carriage`.`addresses` (`id`, `orderId`, `addressSent`, `deliveryAddress`, `distance`) VALUES ('5', '5', 'Sadova 34', 'Mira 69', '445');
INSERT INTO `carriage`.`addresses` (`id`, `orderId`, `addressSent`, `deliveryAddress`, `distance`) VALUES ('6', '6', 'Sadova 35', 'Mira 79', '445');
INSERT INTO `carriage`.`addresses` (`id`, `orderId`, `addressSent`, `deliveryAddress`, `distance`) VALUES ('7', '7', 'Sadova 23', 'Mira 89', '445');
INSERT INTO `carriage`.`addresses` (`id`, `orderId`, `addressSent`, `deliveryAddress`, `distance`) VALUES ('8', '8', 'Sadova 21', 'Mira 99', '445');
INSERT INTO `carriage`.`addresses` (`id`, `orderId`, `addressSent`, `deliveryAddress`, `distance`) VALUES ('9', '9', 'Sadova 37', 'Mira 31', '445');
INSERT INTO `carriage`.`addresses` (`id`, `orderId`, `addressSent`, `deliveryAddress`, `distance`) VALUES ('10', '10', 'Sadova 38', 'Mira 32', '445');
INSERT INTO `carriage`.`addresses` (`id`, `orderId`, `addressSent`, `deliveryAddress`, `distance`) VALUES ('11', '11', 'Sadova 39', 'Mira 33', '445');



-- -----------------------------------------------------
-- Table `carriage`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carriage`.`invoices` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `orderId` INT(11) NOT NULL,
  `sum` INT(11) NOT NULL,
  `state` VARCHAR(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_invoices_1_idx` (`orderId` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_1`
    FOREIGN KEY (`orderId`)
    REFERENCES `carriage`.`orders` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;



INSERT INTO `carriage`.`invoices` (`id`, `orderId`, `sum`, `state`) VALUES ('1', '1', '34', 'notpaid');
INSERT INTO `carriage`.`invoices` (`id`, `orderId`, `sum`, `state`) VALUES ('2', '2', '35', 'notpaid');
INSERT INTO `carriage`.`invoices` (`id`, `orderId`, `sum`, `state`) VALUES ('3', '3', '21', 'notpaid');
INSERT INTO `carriage`.`invoices` (`id`, `orderId`, `sum`, `state`) VALUES ('4', '4', '12', 'notpaid');
INSERT INTO `carriage`.`invoices` (`id`, `orderId`, `sum`, `state`) VALUES ('5', '5', '33', 'notpaid');
INSERT INTO `carriage`.`invoices` (`id`, `orderId`, `sum`, `state`) VALUES ('6', '6', '36', 'notpaid');
INSERT INTO `carriage`.`invoices` (`id`, `orderId`, `sum`, `state`) VALUES ('7', '7', '37', 'notpaid');
INSERT INTO `carriage`.`invoices` (`id`, `orderId`, `sum`, `state`) VALUES ('8', '8', '38', 'notpaid');
INSERT INTO `carriage`.`invoices` (`id`, `orderId`, `sum`, `state`) VALUES ('9', '9', '39', 'notpaid');
INSERT INTO `carriage`.`invoices` (`id`, `orderId`, `sum`, `state`) VALUES ('10', '10', '30', 'notpaid');
INSERT INTO `carriage`.`invoices` (`id`, `orderId`, `sum`, `state`) VALUES ('11', '11', '11', 'notpaid');


-- -----------------------------------------------------
-- Table `carriage`.`messages`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carriage`.`messages` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(45) NOT NULL,
  `message` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


INSERT INTO `carriage`.`messages` (`id`, `email`, `message`) VALUES ('1', '13@13.com', 'Call me back ');
INSERT INTO `carriage`.`messages` (`id`, `email`, `message`) VALUES ('2', '14@13.com', 'Call me back again ');
INSERT INTO `carriage`.`messages` (`id`, `email`, `message`) VALUES ('3', '13@13.com', 'Call me back1 ');
INSERT INTO `carriage`.`messages` (`id`, `email`, `message`) VALUES ('4', '13@13.com', 'Call me back2 ');
INSERT INTO `carriage`.`messages` (`id`, `email`, `message`) VALUES ('5', '13@13.com', 'Call me back3 ');
INSERT INTO `carriage`.`messages` (`id`, `email`, `message`) VALUES ('6', '13@13.com', 'Call me back4 ');
INSERT INTO `carriage`.`messages` (`id`, `email`, `message`) VALUES ('7', '13@13.com', 'Call me back5 ');
INSERT INTO `carriage`.`messages` (`id`, `email`, `message`) VALUES ('8', '13@13.com', 'Call me back6 ');
INSERT INTO `carriage`.`messages` (`id`, `email`, `message`) VALUES ('9', '13@13.com', 'Call me back7 ');
INSERT INTO `carriage`.`messages` (`id`, `email`, `message`) VALUES ('10', '13@13.com', 'Call me back8 ');
INSERT INTO `carriage`.`messages` (`id`, `email`, `message`) VALUES ('11', '13@13.com', 'Call me back9 ');


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;