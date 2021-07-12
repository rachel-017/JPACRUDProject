-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema magiranchdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `magiranchdb` ;

-- -----------------------------------------------------
-- Schema magiranchdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `magiranchdb` DEFAULT CHARACTER SET utf8 ;
USE `magiranchdb` ;

-- -----------------------------------------------------
-- Table `creature`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `creature` ;

CREATE TABLE IF NOT EXISTS `creature` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `species` VARCHAR(45) NULL DEFAULT 'unknown',
  `name` VARCHAR(45) NULL DEFAULT 'none',
  `age` INT NOT NULL,
  `gender` VARCHAR(45) NULL,
  `diet` VARCHAR(200) NULL,
  `housing` VARCHAR(45) NOT NULL,
  `personality` VARCHAR(200) NULL DEFAULT 'need more time with creature',
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS staffmember@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'staffmember'@'localhost' IDENTIFIED BY 'staffmember';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'staffmember'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `creature`
-- -----------------------------------------------------
START TRANSACTION;
USE `magiranchdb`;
INSERT INTO `creature` (`id`, `species`, `name`, `age`, `gender`, `diet`, `housing`, `personality`) VALUES (1, 'Griffin', 'Goat', 8, 'Male', 'Omnivorous ', 'Sky Hut', 'Bold, curious and outgoing');
INSERT INTO `creature` (`id`, `species`, `name`, `age`, `gender`, `diet`, `housing`, `personality`) VALUES (2, 'Pegasus', 'Pearl', 3, 'Female', 'Herbivore', 'Sky Hut', 'Shy, playful, and will do anything for apples');
INSERT INTO `creature` (`id`, `species`, `name`, `age`, `gender`, `diet`, `housing`, `personality`) VALUES (3, 'Chimaera', 'Callista', 407, 'Female', 'Carnivore ', 'Charm Barn', 'Aggressive when hungry, enjoys chin scritches');
INSERT INTO `creature` (`id`, `species`, `name`, `age`, `gender`, `diet`, `housing`, `personality`) VALUES (4, 'Dragon', 'Darth', 1338, 'Male', 'Carnivore', 'Illusion Lake', 'Friendly, and energetic');
INSERT INTO `creature` (`id`, `species`, `name`, `age`, `gender`, `diet`, `housing`, `personality`) VALUES (5, 'Phoenix', 'Pogo', 92, 'Male', 'Omnivorous', 'Sky Hut', 'Calm, talkative, and friendly');
INSERT INTO `creature` (`id`, `species`, `name`, `age`, `gender`, `diet`, `housing`, `personality`) VALUES (6, 'Basilisk', 'Birdie', 121, 'Female', 'Carnivore', 'Charm Barn', 'Sweet when sleepy, otherwise shy');
INSERT INTO `creature` (`id`, `species`, `name`, `age`, `gender`, `diet`, `housing`, `personality`) VALUES (7, 'Caladrius', 'Carol', 503, 'Female', 'Omnivorous', 'Sky Hut', 'Timid but friendly, calm and quiet');
INSERT INTO `creature` (`id`, `species`, `name`, `age`, `gender`, `diet`, `housing`, `personality`) VALUES (8, 'Unicorn', 'Ursa', 20, 'Female', 'Herbivore', 'Charm Barn', 'Outgoing and friendly');
INSERT INTO `creature` (`id`, `species`, `name`, `age`, `gender`, `diet`, `housing`, `personality`) VALUES (9, 'Dragon', 'Dolly', 986, 'Female', 'Carnivore', 'Sky Hut', 'Wise, calm when not playing');
INSERT INTO `creature` (`id`, `species`, `name`, `age`, `gender`, `diet`, `housing`, `personality`) VALUES (10, 'Griffin', 'Gerald', 27, 'Male', 'Omnivorous', 'Sky Hut', 'Talkative, and friendly, but thinks he can outsmart everyone');
INSERT INTO `creature` (`id`, `species`, `name`, `age`, `gender`, `diet`, `housing`, `personality`) VALUES (11, 'Unicorn', 'Ulysses', 155, 'Male', 'Herbivore', 'Charm Barn', 'Calm, friendly, and enjoys long walks');
INSERT INTO `creature` (`id`, `species`, `name`, `age`, `gender`, `diet`, `housing`, `personality`) VALUES (12, 'Sphinx', 'Samuel', 58, 'Male', 'Carnivore', 'Charm Barn', 'Cuddly, especially if you have fish');
INSERT INTO `creature` (`id`, `species`, `name`, `age`, `gender`, `diet`, `housing`, `personality`) VALUES (13, 'Pegasus', 'Prince', 23, 'Male', 'Herbivore', 'Sky Hut', 'Mostly reserved and calm, but get burst of energy after meal time');
INSERT INTO `creature` (`id`, `species`, `name`, `age`, `gender`, `diet`, `housing`, `personality`) VALUES (14, 'Unicorn', 'Uma', 82, 'Female', 'Herbivore', 'Charm Barn', 'Sweet, and outgoing. Loves playing with other creatures');

COMMIT;

