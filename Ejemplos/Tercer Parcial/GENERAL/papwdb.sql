/*
Navicat MySQL Data Transfer

Source Server         : LocalMySQL
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : papwdb

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-04-16 17:43:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `idUser` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nameUser` varchar(255) NOT NULL,
  `imageUser` mediumblob NOT NULL,
  `Active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Procedure structure for AddUser
-- ----------------------------
DROP PROCEDURE IF EXISTS `AddUser`;
DELIMITER ;;
CREATE DEFINER=`admin`@`localhost` PROCEDURE `AddUser`(pNameUser VARCHAR(255), pImageUser MEDIUMBLOB)
BEGIN
	INSERT INTO User(nameUser,imageUser)
    VALUES(pNameUser,pImageUser);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for GetAllUsers
-- ----------------------------
DROP PROCEDURE IF EXISTS `GetAllUsers`;
DELIMITER ;;
CREATE DEFINER=`admin`@`localhost` PROCEDURE `GetAllUsers`(pActive tinyint)
BEGIN
	SELECT idUser, nameUser, imageUser, Active
	FROM User
	WHERE (Active = pActive OR -1 = pActive);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for GetImageUser
-- ----------------------------
DROP PROCEDURE IF EXISTS `GetImageUser`;
DELIMITER ;;
CREATE DEFINER=`admin`@`localhost` PROCEDURE `GetImageUser`(IN `pIdUser` int)
BEGIN
	SELECT imageUser
	FROM User
	WHERE idUser = pIdUser;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for RemoveUser
-- ----------------------------
DROP PROCEDURE IF EXISTS `RemoveUser`;
DELIMITER ;;
CREATE DEFINER=`admin`@`localhost` PROCEDURE `RemoveUser`(pIdUser INT)
BEGIN
	UPDATE User
    SET Active = 0
	WHERE idUser = pIdUser;
END
;;
DELIMITER ;
