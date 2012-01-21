/*
Source Server         : Wow-Attitude
Date: 2012-01-16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `game_event`
-- ----------------------------
DROP TABLE IF EXISTS `game_event`;
CREATE TABLE `game_event` (
  `entry` mediumint(8) unsigned NOT NULL COMMENT 'Entry of the game event',
  `start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Absolute start date, the event will never start before',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Absolute end date, the event will never start afler',
  `occurence` bigint(20) unsigned NOT NULL DEFAULT '5184000' COMMENT 'Delay in minutes between occurences of the event',
  `length` bigint(20) unsigned NOT NULL DEFAULT '2592000' COMMENT 'Length in minutes of the event',
  `holiday` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Client side holiday id',
  `description` varchar(255) DEFAULT NULL COMMENT 'Description of the event displayed in console',
  `world_event` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '0 if normal event, 1 if world event',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='CTDB Game events';

-- ----------------------------
-- Records of game_event
-- ----------------------------
INSERT INTO `game_event` VALUES ('1', '2011-06-20 20:00:00', '2020-12-29 20:00:00', '525600', '20160', '341', 'Solstice d\'&eacute;t&eacute; : la fete du Feu', '0');
INSERT INTO `game_event` VALUES ('2', '2011-12-15 02:00:00', '2020-12-30 16:00:00', '525600', '25920', '141', 'La f&ecirc;te du Voile d\'hiver', '0');
INSERT INTO `game_event` VALUES ('3', '2011-08-06 18:01:00', '2020-12-30 13:00:00', '131040', '8639', '376', 'La foire de Sombrelune (Foret de Terrokar)', '0');
INSERT INTO `game_event` VALUES ('4', '2011-06-04 18:01:00', '2020-12-30 13:00:00', '131040', '8639', '374', 'La foire de Sombrelune (Elwynn)', '0');
INSERT INTO `game_event` VALUES ('5', '2011-07-02 18:01:00', '2020-12-30 13:00:00', '131040', '8639', '375', 'La foire de Sombrelune (Mulgore)', '0');
INSERT INTO `game_event` VALUES ('6', '2010-12-31 16:00:00', '2020-12-30 16:00:00', '525600', '120', '0', 'Le nouvel an', '0');
INSERT INTO `game_event` VALUES ('7', '2011-01-23 02:00:00', '2020-12-30 16:00:00', '525600', '30240', '327', 'La fete lunaire', '0');
INSERT INTO `game_event` VALUES ('8', '2011-02-05 20:00:00', '2020-12-20 14:00:00', '525600', '18778', '335', 'De l\'amour dans l\'air', '0');
INSERT INTO `game_event` VALUES ('9', '2011-04-23 20:00:00', '2020-12-30 16:00:00', '525600', '10078', '181', 'Le jardin des nobles', '0');
INSERT INTO `game_event` VALUES ('10', '2011-04-30 20:00:00', '2020-12-30 16:00:00', '525600', '10078', '201', 'La semaine des enfants', '0');
INSERT INTO `game_event` VALUES ('11', '2011-09-05 18:01:00', '2020-12-29 20:00:00', '525600', '10080', '321', 'La fete des moissons', '0');
INSERT INTO `game_event` VALUES ('12', '2011-10-17 19:00:00', '2020-12-31 03:00:00', '525600', '20160', '324', 'La Sanssaint', '0');
INSERT INTO `game_event` VALUES ('22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '482400', '43200', '0', 'L\'effort de guerre d\'Ahn Qiraj', '0');
INSERT INTO `game_event` VALUES ('17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '525600', '28800', '0', 'L\'invasion du fleau', '0');
INSERT INTO `game_event` VALUES ('13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '525600', '28800', '0', 'Invasions d\'elementaux', '0');
INSERT INTO `game_event` VALUES ('14', '2011-01-01 08:00:00', '2020-12-30 10:00:00', '10080', '1620', '0', 'Annonce du concours de p&ecirc;che de Strangleronce', '0');
INSERT INTO `game_event` VALUES ('16', '2010-11-30 18:00:00', '2020-12-30 13:00:00', '180', '120', '0', 'Le coffre pirate de Gurubashi', '0');
INSERT INTO `game_event` VALUES ('15', '2011-01-02 08:00:00', '2020-12-27 10:00:00', '10080', '120', '301', 'Concours de p&ecirc;che de Strangleronce', '0');
INSERT INTO `game_event` VALUES ('18', '2010-10-21 18:01:00', '2020-12-30 16:00:00', '60480', '5758', '283', 'L\'appel aux armes : vall&eacute;e d\'Alterac !', '0');
INSERT INTO `game_event` VALUES ('19', '2010-09-16 18:01:00', '2020-12-30 16:00:00', '60480', '5758', '284', 'L\'appel aux armes : goulet des Chanteguerres !', '0');
INSERT INTO `game_event` VALUES ('20', '2010-10-07 18:01:00', '2020-12-30 16:00:00', '60480', '5758', '285', 'L\'appel aux armes : bassin d\'Arathi !', '0');
INSERT INTO `game_event` VALUES ('21', '2010-10-14 18:01:00', '2020-12-30 16:00:00', '60480', '5758', '353', 'L\'appel aux armes : l\'oeil du cyclone !', '0');
INSERT INTO `game_event` VALUES ('24', '2009-03-05 22:05:00', '2020-12-30 19:00:00', '7200', '60', '0', 'Attaque des loups : Orgrimmar !', '0');
INSERT INTO `game_event` VALUES ('23', '2009-03-06 01:00:00', '2020-12-30 19:00:00', '1440', '60', '0', 'Attaque des loups : Orgrimmar !', '0');
INSERT INTO `game_event` VALUES ('26', '2011-09-19 20:00:00', '2020-12-30 14:00:00', '525600', '24478', '372', 'F&ecirc;te des Brasseurs', '0');
INSERT INTO `game_event` VALUES ('28', '2007-08-12 15:59:59', '2020-12-30 19:00:00', '7200', '60', '0', 'La L&eacute;gion de la mort attaque Hurlevent (Attaque des morts-vivants)', '0');
INSERT INTO `game_event` VALUES ('25', '2007-08-12 10:00:07', '2020-12-30 19:00:00', '7200', '60', '0', 'Les grunts d\'Orgrimmar se pr&eacute;pare a d&eacute;fendre!', '0');
INSERT INTO `game_event` VALUES ('34', '2010-09-18 08:00:00', '2019-12-31 18:00:00', '10080', '5', '0', 'L70ETC Concert', '0');
INSERT INTO `game_event` VALUES ('35', '2010-09-05 18:01:00', '2020-12-30 16:00:00', '80640', '20160', '0', 'L\'antre de la folie, Gri\'lek', '0');
INSERT INTO `game_event` VALUES ('36', '2010-09-19 18:01:00', '2020-12-30 16:00:00', '80640', '20160', '0', 'L\'antre de la folie, Hazza\'rah', '0');
INSERT INTO `game_event` VALUES ('37', '2010-10-03 18:01:00', '2020-12-30 16:00:00', '80640', '20160', '0', 'L\'antre de la folie, Renataki', '0');
INSERT INTO `game_event` VALUES ('38', '2010-10-17 18:01:00', '2020-12-30 16:00:00', '80640', '20160', '0', 'L\'antre de la folie, Wushoolay', '0');
INSERT INTO `game_event` VALUES ('29', '2010-12-01 15:00:00', '2020-12-30 16:00:00', '1440', '540', '0', 'La nuit tombe en Azeroth', '0');
INSERT INTO `game_event` VALUES ('32', '2011-09-18 18:01:00', '2020-12-30 16:00:00', '525600', '1440', '398', 'Jour des Pirates', '0');
INSERT INTO `game_event` VALUES ('40', '2011-10-31 22:00:00', '2020-12-30 16:00:00', '525600', '1440', '409', 'Jour des mort', '0');
INSERT INTO `game_event` VALUES ('41', '2011-11-20 21:00:00', '2020-12-30 16:00:00', '545760', '10019', '404', 'Bienfaits du pelerin', '0');
INSERT INTO `game_event` VALUES ('42', '2010-09-30 18:01:00', '2020-12-30 16:00:00', '60480', '5758', '420', 'L\'appel aux armes : l\'ile des Conquerants!', '0');
INSERT INTO `game_event` VALUES ('43', '2010-11-30 18:15:00', '2020-12-30 16:00:00', '60', '5', '0', 'Attaque sur le Tr&eacute;pas d\'Orgrim ', '0');
INSERT INTO `game_event` VALUES ('44', '2010-11-30 18:00:00', '2020-12-30 16:00:00', '5', '5', '0', 'Attaque des demons : Thrallmar !', '0');
INSERT INTO `game_event` VALUES ('45', '2011-01-03 07:00:00', '2020-12-30 23:00:00', '10080', '180', '0', 'Concours de p&ecirc;che Kalu\'ak ouvert!', '0');
INSERT INTO `game_event` VALUES ('30', '2010-09-23 18:01:00', '2020-12-30 14:00:00', '60480', '5758', '400', 'L\'appel aux armes : Rivage des Anciens!', '0');
INSERT INTO `game_event` VALUES ('124', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5184000', '2592000', '0', 'Arena Season 1', '0');
INSERT INTO `game_event` VALUES ('125', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5184000', '2592000', '0', 'Arena Season 2', '0');
INSERT INTO `game_event` VALUES ('126', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5184000', '2592000', '0', 'Arena Season 3', '0');
INSERT INTO `game_event` VALUES ('127', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5184000', '2592000', '0', 'Arena Season 4', '0');
INSERT INTO `game_event` VALUES ('128', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5184000', '2592000', '0', 'Arena Season 5', '0');
INSERT INTO `game_event` VALUES ('129', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5184000', '2592000', '0', 'Arena Season 6', '0');
INSERT INTO `game_event` VALUES ('130', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5184000', '2592000', '0', 'Arena Season 7', '0');
INSERT INTO `game_event` VALUES ('131', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5184000', '2592000', '0', 'Arena Season 8', '0');
INSERT INTO `game_event` VALUES ('50', '2009-12-31 18:01:00', '2020-01-31 17:59:00', '525600', '44640', '0', 'Janvier', '0');
INSERT INTO `game_event` VALUES ('51', '2010-01-31 18:01:00', '2020-02-29 17:59:00', '525600', '40320', '0', 'F&eacute;vrier', '0');
INSERT INTO `game_event` VALUES ('52', '2010-02-28 18:01:00', '2020-03-31 17:59:00', '525600', '44640', '0', 'Mars', '0');
INSERT INTO `game_event` VALUES ('53', '2010-03-31 18:01:00', '2020-04-30 17:59:00', '525600', '43200', '0', 'Avril', '0');
INSERT INTO `game_event` VALUES ('54', '2010-04-30 18:01:00', '2020-05-31 17:59:00', '525600', '11700', '0', 'Mai', '0');
INSERT INTO `game_event` VALUES ('55', '2010-05-31 18:01:00', '2020-06-30 17:59:00', '525600', '43200', '0', 'Juin', '0');
INSERT INTO `game_event` VALUES ('56', '2010-06-30 18:01:00', '2020-07-31 17:59:00', '525600', '44640', '0', 'Juillet', '0');
INSERT INTO `game_event` VALUES ('57', '2010-07-31 18:01:00', '2020-08-31 17:59:00', '525600', '44640', '0', 'Août', '0');
INSERT INTO `game_event` VALUES ('58', '2010-08-31 18:01:00', '2020-09-30 17:59:00', '525600', '43200', '0', 'Septembre', '0');
INSERT INTO `game_event` VALUES ('59', '2010-09-30 18:01:00', '2020-10-31 18:59:00', '525600', '44640', '0', 'Octobre', '0');
INSERT INTO `game_event` VALUES ('60', '2010-10-31 19:01:00', '2020-11-30 17:59:00', '525600', '43200', '0', 'Novembre', '0');
INSERT INTO `game_event` VALUES ('61', '2010-11-30 18:01:00', '2020-12-31 17:59:00', '525600', '44640', '0', 'D&eacute;cembre', '0');
INSERT INTO `game_event` VALUES ('46', '2010-09-07 18:00:01', '2011-09-07 18:00:01', '86400', '432000', '0', 'La chute de Zalazane', '0');
INSERT INTO `game_event` VALUES ('47', '2010-09-07 18:00:01', '2011-09-07 18:00:01', '86400', '432000', '0', 'Op&eacute;ration: Gnomeregan', '0');
INSERT INTO `game_event` VALUES ('64', '2010-09-22 18:01:00', '2020-12-30 16:00:00', '525600', '256320', '0', 'P&ecirc;che (saison hivernale)', '0');
INSERT INTO `game_event` VALUES ('65', '2011-03-19 19:01:00', '2020-12-30 16:00:00', '525600', '269280', '0', 'P&ecirc;che (saison estivale)', '0');
INSERT INTO `game_event` VALUES ('66', '2010-10-31 19:00:00', '2020-12-30 16:00:00', '1440', '360', '0', 'P&ecirc;che (00.00-06.00)', '0');
INSERT INTO `game_event` VALUES ('67', '2010-11-01 01:00:00', '2020-12-30 16:00:00', '1440', '360', '0', 'P&ecirc;che (06.00-12.00)', '0');
INSERT INTO `game_event` VALUES ('68', '2010-11-01 07:00:00', '2020-12-30 16:00:00', '1440', '360', '0', 'P&ecirc;che (12.00-18.00)', '0');
INSERT INTO `game_event` VALUES ('69', '2010-11-01 13:00:00', '2020-12-30 16:00:00', '1440', '360', '0', 'P&ecirc;che (18.00-00.00)', '0');
INSERT INTO `game_event` VALUES ('48', '2011-10-31 19:00:01', '2020-12-06 18:00:01', '86400', '432000', '0', 'Twilight\'s Cult & Invasions d\'&eacute;lementaux', '0');
INSERT INTO `game_event` VALUES ('27', '2010-12-05 18:10:00', '2020-12-30 17:00:00', '30', '10', '0', 'Chef de Jin\'Alai, Kutube\'sa', '0');
INSERT INTO `game_event` VALUES ('33', '2010-12-05 18:20:00', '2020-12-30 17:00:00', '30', '10', '0', 'Chef de Jin\'Alai, Gawanil', '0');
INSERT INTO `game_event` VALUES ('39', '2010-12-05 18:30:00', '2020-12-30 17:00:00', '30', '10', '0', 'Chef de  Jin\'Alai, Chulo', '0');
INSERT INTO `game_event` VALUES ('49', '2011-12-24 23:00:00', '2020-12-30 23:00:00', '525600', '11700', '0', 'Voile d\'Hiver: Cadeau', '0');
INSERT INTO `game_event` VALUES ('62', '2010-12-31 20:48:00', '2020-12-30 18:00:00', '180', '24', '0', 'Taverne d\'extr&eacute;mit&eacute; du monde - Perry Gatner annonce', '0');
INSERT INTO `game_event` VALUES ('63', '2010-12-31 21:00:00', '2020-12-30 18:00:00', '180', '5', '0', 'Taverne d\'extr&eacute;mit&eacute; du monde - Perry Gatner fait la com&eacute;die', '0');
INSERT INTO `game_event` VALUES ('70', '2010-12-31 21:48:00', '2020-12-30 18:00:00', '180', '24', '0', 'Taverne d\'extr&eacute;mit&eacute; du monde- L70ETC Concert Announce', '0');
INSERT INTO `game_event` VALUES ('71', '2010-12-31 22:00:00', '2020-12-30 18:00:00', '180', '5', '0', 'Taverne d\'extr&eacute;mit&eacute; du monde - L70ETC Concert', '0');
INSERT INTO `game_event` VALUES ('72', '2010-12-31 18:58:00', '2020-12-30 18:00:00', '30', '10', '0', 'Hurlevent - Pallissades de la prison bris&eacute;', '0');
INSERT INTO `game_event` VALUES ('73', '2011-01-02 08:00:00', '2020-12-30 23:00:00', '10080', '180', '0', 'Concours de p&ecirc;che de Strangrelonce ouvert', '0');
INSERT INTO `game_event` VALUES ('74', '2011-01-03 08:00:00', '2020-12-30 23:00:00', '10080', '60', '0', 'Concours de p&ecirc;che Kaluak', '0');
INSERT INTO `game_event` VALUES ('111', '2008-11-01 00:00:00', '2020-12-30 17:00:00', '23040', '1440', '0', 'Daily Heroic Underbog', '0');
INSERT INTO `game_event` VALUES ('113', '2008-11-02 00:00:00', '2020-12-30 17:00:00', '23040', '1440', '0', 'Daily Heroic Botanica', '0');
INSERT INTO `game_event` VALUES ('112', '2008-11-02 23:00:00', '2020-12-30 17:00:00', '23040', '1440', '0', 'Daily Heroic BlackMorass', '0');
INSERT INTO `game_event` VALUES ('114', '2008-11-03 23:00:00', '2020-12-30 17:00:00', '23040', '1440', '0', 'Daily Heroic ShatteredHalls', '0');
INSERT INTO `game_event` VALUES ('107', '2008-11-04 23:00:00', '2020-12-30 17:00:00', '23040', '1440', '0', 'Daily Heroic BloodFurnace', '0');
INSERT INTO `game_event` VALUES ('105', '2008-11-05 23:00:00', '2020-12-30 17:00:00', '23040', '1440', '0', 'Daily Heroic ShadowLabyrinth', '0');
INSERT INTO `game_event` VALUES ('101', '2008-11-06 23:00:00', '2020-12-30 17:00:00', '23040', '1440', '0', 'Daily Heroic HellfireRamparts', '0');
INSERT INTO `game_event` VALUES ('108', '2008-11-07 23:00:00', '2020-12-30 17:00:00', '23040', '1440', '0', 'Daily Heroic Mechanar', '0');
INSERT INTO `game_event` VALUES ('102', '2008-11-08 23:00:00', '2020-12-30 17:00:00', '23040', '1440', '0', 'Daily Heroic Mana-Tombs', '0');
INSERT INTO `game_event` VALUES ('103', '2008-11-09 23:00:00', '2020-12-30 17:00:00', '23040', '1440', '0', 'Daily Heroic OldHillsbrad', '0');
INSERT INTO `game_event` VALUES ('100', '2008-11-10 23:00:00', '2020-12-30 17:00:00', '23040', '1440', '0', 'Daily Heroic AuchenaiCrypts', '0');
INSERT INTO `game_event` VALUES ('104', '2008-11-11 23:00:00', '2020-12-30 17:00:00', '23040', '1440', '0', 'Daily Heroic SethekkHalls', '0');
INSERT INTO `game_event` VALUES ('109', '2008-11-12 23:00:00', '2020-12-30 17:00:00', '23040', '1440', '0', 'Daily Heroic SlavePens', '0');
INSERT INTO `game_event` VALUES ('106', '2008-11-13 23:00:00', '2020-12-30 17:00:00', '23040', '1440', '0', 'Daily Heroic Arcatraz', '0');
INSERT INTO `game_event` VALUES ('115', '2008-11-14 23:00:00', '2020-12-30 17:00:00', '23040', '1440', '0', 'Daily Heroic MagistersTerrace', '0');
INSERT INTO `game_event` VALUES ('110', '2008-11-15 23:00:00', '2020-12-30 17:00:00', '23040', '1440', '0', 'Daily Heroic Steamvault', '0');
INSERT INTO `game_event` VALUES ('121', '2008-11-01 00:00:00', '2020-12-30 17:00:00', '11520', '1440', '0', 'Daily Arcatraz', '0');
INSERT INTO `game_event` VALUES ('116', '2008-11-15 23:00:00', '2020-12-30 17:00:00', '11520', '1440', '0', 'Daily Steamvault', '0');
INSERT INTO `game_event` VALUES ('122', '2008-11-01 00:00:00', '2020-12-30 17:00:00', '11520', '1440', '0', 'Daily Shadow Labyrinth', '0');
INSERT INTO `game_event` VALUES ('120', '2008-11-15 23:00:00', '2020-12-30 17:00:00', '11520', '1440', '0', 'Daily Black Morass', '0');
INSERT INTO `game_event` VALUES ('117', '2008-11-01 00:00:00', '2020-12-30 17:00:00', '11520', '1440', '0', 'Daily Shattered Halls', '0');
INSERT INTO `game_event` VALUES ('123', '2008-11-15 23:00:00', '2020-12-30 17:00:00', '11520', '1440', '0', 'Daily Magisters Terrace', '0');
INSERT INTO `game_event` VALUES ('119', '2008-11-01 00:00:00', '2020-12-30 17:00:00', '11520', '1440', '0', 'Daily Botanica', '0');
INSERT INTO `game_event` VALUES ('118', '2008-11-15 23:00:00', '2020-12-30 17:00:00', '11520', '1440', '0', 'Daily Mechanar', '0');
