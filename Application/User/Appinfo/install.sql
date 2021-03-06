/*
* tables for user
*
* author : zuweie
* verson : 0.1
*/

-- -------------------------------------
-- Table structure for `user`
-- -------------------------------------

DROP TABLE IF EXISTS `__PREFIX__user`;
CREATE TABLE `__PREFIX__user` (
	`uid` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Uid',
	`nickname` VARCHAR(255) DEFAULT NULL COMMENT 'nick name',
	`login` VARCHAR(255) DEFAULT NULL COMMENT 'account',
	`password` VARCHAR(255) DEFAULT NULL COMMENT 'password',
	`user_group` INT(11) DEFAULT 0 COMMENT 'user group id',
	`user_data`  INT(11) DEFAULT 0 COMMENT 'user detail information',
	`status`  TINYINT(1) DEFAULT 0 COMMENT 'user status',
	`ctime` INT(11) NOT NULL COMMENT 'create time'
)ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `__PREFIX__user_privilege`;
CREATE TABLE `__PREFIX__user_privilege` (
	`up_id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'id',
	`uid` INT(11) UNSIGNED NOT NULL COMMENT 'user id', 
	`privilege` INT(11) UNSIGNED NOT NULL COMMENT 'privilege'
)ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `__PREFIX__user_group`;
CREATE TABLE `__PREFIX__user_group` (
	`gid` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'gid',
	`title` VARCHAR(255) DEFAULT NULL COMMENT 'title',
	`uid` INT(11) DEFAULT 0 COMMENT 'owner id',
	`group_info` INT(11) DEFAULT 0 COMMENT 'group information',
	`status` TINYINT(1) DEFAULT 0 COMMENT 'status',
	`ctime` INT(11) COMMENT 'create time'
)ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `__PREFIX__group_privilege`;
CREATE TABLE `__PREFIX__group_privilege` (
	`gp_id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'id',
	`gid` INT(11) UNSIGNED NOT NULL COMMENT 'group id',
	`privilege` INT(11) UNSIGNED NOT NULL COMMENT 'privilege' comment 'privielge'
)ENGINE=MyISAM DEFAULT CHARSET=utf8;;

DROP TABLE IF EXISTS `__PREFIX__privilege`;
CREATE TABLE `__PREFIX__privilege` (
	`pid` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'pid',
	`title` VARCHAR (255) DEFAULT NULL COMMENT 'title',
	`privilege` TEXT DEFAULT NULL COMMENT 'privilege text'
)ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT  INTO `__PREFIX__privilege` VALUES ('1', 'ADMIN', 'admin:3;app:3;usr:3;privilege:3;sysapp:3;group:3');
INSERT  INTO `__PREFIX__privilege` VALUES ('2', 'GUEST_ADMIN', 'admin:3;app:1;usr:1;privilege:1');


