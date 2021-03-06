/*
* tables for Demo
*
* author : zuweie
* verson : 0.1
*/

DROP TABLE IF EXISTS `__PREFIX__demo`;
CREATE TABLE `__PREFIX__demo` (
	`demo_id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'id',
	`title` VARCHAR(255) DEFAULT NULL COMMENT 'title',
	`img` VARCHAR(255) DEFAULT NULL COMMENT 'img',
	`file` VARCHAR(255) DEFAULT NULL COMMENT 'file',
	`text`  TEXT DEFAULT NULL COMMENT 'text'
)ENGINE=MyISAM DEFAULT CHARSET=utf8; 
