CREATE SCHEMA `traffic` DEFAULT CHARACTER SET utf8 ;



CREATE TABLE `traffic`.`users` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `phone` VARCHAR(10) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `phone_UNIQUE` (`phone` ASC),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


CREATE TABLE `traffic`.`orders` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `tipe` VARCHAR(45) NOT NULL,
  `weight` INT(5) NOT NULL,
  `date` DATE NOT NULL,
  `user_mail` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  INDEX `email_idx` (`user_mail` ASC),
  CONSTRAINT `email`
    FOREIGN KEY (`user_mail`)
    REFERENCES `traffic`.`users` (`email`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;



CREATE TABLE `traffic`.`invoices` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `sum` INT UNSIGNED NOT NULL,
  `state` TINYINT NOT NULL DEFAULT 0,
  `orders_id` INT UNSIGNED NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_invoices_1_idx` (`orders_id` ASC),
  CONSTRAINT `fk_invoices_1`
    FOREIGN KEY (`orders_id`)
    REFERENCES `traffic`.`orders` (`id`)
     ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;



CREATE TABLE `traffic`.`cargo_adresses` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `city` VARCHAR(45) NOT NULL,
  `street` VARCHAR(45) NOT NULL,
  `house_number` INT(3) NOT NULL,
  `apartment_number` INT(4) NULL,
  `orders_id` INT UNSIGNED NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_cargo_adresses_1_idx` (`orders_id` ASC),
  CONSTRAINT `fk_cargo_adresses_1`
    FOREIGN KEY (`orders_id`)
    REFERENCES `traffic`.`orders` (`id`)
     ON DELETE CASCADE
    ON UPDATE CASCADE);



CREATE TABLE `traffic`.`destination_adresses` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `city` VARCHAR(45) NOT NULL,
  `street` VARCHAR(45) NOT NULL,
  `house_number` INT(3) NOT NULL,
  `apartment_number` INT(4) NULL,
  `distance` INT UNSIGNED NOT NULL,
  `cargo_adress_id` INT UNSIGNED NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_destination_adresses_1_idx` (`cargo_adress_id` ASC),
  CONSTRAINT `fk_destination_adresses_1`
    FOREIGN KEY (`cargo_adress_id`)
    REFERENCES `traffic`.`cargo_adresses` (`id`)
     ON DELETE CASCADE
    ON UPDATE CASCADE);




    ON UPDATE CASCADE);



