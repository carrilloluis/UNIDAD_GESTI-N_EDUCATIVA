
USE `gereduCusco`;
DROP TABLE IF EXISTS `LocalEducationalManagementUnit`;
DELIMITER //
CREATE TABLE IF NOT EXISTS `LocalEducationalManagementUnit` (
	`id` CHAR(8) CHARACTER SET ascii PRIMARY KEY,
	`nationalCode` MEDIUMINT UNSIGNED NULL,
	`nameOfUnit` VARCHAR(128) CHARACTER SET utf8 NOT NULL,
	-- `canBeEdited` BIT NOT NULL DEFAULT b'1',
	-- `isActive` BIT NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
//
DELIMITER ;

ALTER TABLE `LocalEducationalManagementUnit`
ADD CONSTRAINT UNIQUE KEY (`nationalCode`);

