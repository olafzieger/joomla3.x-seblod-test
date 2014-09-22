-- phpMyAdmin SQL Dump
-- version 3.5.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 22. Sep 2014 um 13:18
-- Server Version: 5.5.27
-- PHP-Version: 5.4.24

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `joomla3.x-seblod-test`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_assets`
--

CREATE TABLE IF NOT EXISTS `joom_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=114 ;

--
-- Daten für Tabelle `joom_assets`
--

INSERT INTO `joom_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 225, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 38, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 39, 40, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 41, 42, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 43, 44, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 45, 46, 1, 'com_login', 'com_login', '{}'),
(13, 1, 47, 48, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 49, 50, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 51, 52, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 53, 54, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 55, 56, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 57, 102, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 103, 106, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 107, 108, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 109, 110, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 111, 112, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 113, 114, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 115, 118, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 119, 122, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 123, 124, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 25, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 104, 105, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 120, 121, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 116, 117, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 125, 126, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 127, 128, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 129, 130, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 131, 132, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 133, 134, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 135, 136, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 58, 59, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 18, 60, 61, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 62, 63, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 64, 65, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 66, 67, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 68, 69, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 70, 71, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 72, 73, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 74, 75, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 76, 77, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 78, 79, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 80, 81, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 18, 82, 83, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 18, 84, 85, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 86, 87, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 1, 137, 220, 1, 'com_cck', 'com_cck', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.delete.own":{"6":1},"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(55, 18, 88, 89, 2, 'com_modules.module.87', 'mod_cck_menu', ''),
(56, 18, 90, 91, 2, 'com_modules.module.88', 'mod_cck_quickadd', ''),
(57, 18, 92, 93, 2, 'com_modules.module.89', 'mod_cck_quickicon', ''),
(58, 18, 94, 95, 2, 'com_modules.module.90', 'mod_cck_breadcrumbs', ''),
(59, 18, 96, 97, 2, 'com_modules.module.91', 'mod_cck_form', ''),
(60, 18, 98, 99, 2, 'com_modules.module.92', 'mod_cck_list', ''),
(61, 18, 100, 101, 2, 'com_modules.module.93', 'mod_cck_search', ''),
(62, 8, 26, 27, 2, 'com_content.category.8', 'Users', '{"core.create":{"1":0},"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(63, 8, 28, 29, 2, 'com_content.category.9', 'User Groups', '{"core.create":{"1":0},"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(64, 54, 138, 139, 2, 'com_cck.folder.1', 'Quick Folder', '{"core.create":[],"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(65, 54, 140, 219, 2, 'com_cck.folder.2', 'Top', '{"core.create":[],"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(66, 65, 141, 144, 3, 'com_cck.folder.3', 'Core', '{"core.create":[],"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(67, 65, 145, 204, 3, 'com_cck.folder.5', 'JOOMLA', '{"core.create":[],"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(68, 67, 146, 167, 4, 'com_cck.folder.10', 'Article', '{"core.create":[],"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(69, 68, 147, 148, 5, 'com_cck.folder.22', 'Base', '{"core.create":[],"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(70, 68, 149, 150, 5, 'com_cck.folder.16', 'Basic', '{"core.create":[],"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(71, 68, 151, 152, 5, 'com_cck.folder.28', 'Images & Links', '{"core.create":[],"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(72, 68, 153, 154, 5, 'com_cck.folder.17', 'Metadata', '{"core.create":[],"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(73, 68, 155, 156, 5, 'com_cck.folder.15', 'Publishing', '{"core.create":[],"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(74, 67, 168, 185, 4, 'com_cck.folder.11', 'Category', '{"core.create":[],"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(75, 74, 169, 170, 5, 'com_cck.folder.23', 'Base', '{"core.create":[],"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(76, 74, 171, 172, 5, 'com_cck.folder.19', 'Basic', '{"core.create":[],"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(77, 74, 173, 174, 5, 'com_cck.folder.20', 'Metadata', '{"core.create":[],"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(78, 74, 175, 176, 5, 'com_cck.folder.18', 'Publishing', '{"core.create":[],"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(79, 67, 186, 197, 4, 'com_cck.folder.13', 'User', '{"core.create":[],"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(80, 79, 187, 188, 5, 'com_cck.folder.24', 'Base', '{"core.create":[],"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(81, 79, 189, 190, 5, 'com_cck.folder.21', 'Basic', '{"core.create":[],"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(82, 79, 191, 192, 5, 'com_cck.folder.29', 'Profile', '{"core.create":[],"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(83, 67, 198, 203, 4, 'com_cck.folder.14', 'User Group', '{"core.create":[],"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(84, 83, 199, 200, 5, 'com_cck.folder.26', 'Base', '{"core.create":[],"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(85, 65, 205, 210, 3, 'com_cck.folder.6', 'SEBLOD', '{"core.create":[],"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(86, 85, 206, 207, 4, 'com_cck.folder.7', 'Apps', '{"core.create":[],"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(87, 85, 208, 209, 4, 'com_cck.folder.8', 'Demo', '{"core.create":[],"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(88, 68, 157, 158, 5, 'com_cck.form.1', 'Article', '{"core.create":[],"core.create.max.parent":{"8":0},"core.create.max.parent.author":{"8":0},"core.create.max.author":{"8":0},"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.own":[]}'),
(89, 74, 177, 178, 5, 'com_cck.form.5', 'Category', '{"core.create":[],"core.create.max.parent":{"8":0},"core.create.max.parent.author":{"8":0},"core.create.max.author":{"8":0},"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.own":[]}'),
(90, 79, 193, 194, 5, 'com_cck.form.8', 'User', '{"core.create":{"1":1,"2":0},"core.create.max.parent":{"8":0},"core.create.max.parent.author":{"8":0},"core.create.max.author":{"8":0},"core.delete":[],"core.delete.own":[],"core.edit":{"4":0},"core.edit.own":{"2":1}}'),
(91, 83, 201, 202, 5, 'com_cck.form.11', 'User Group', '{"core.create":[],"core.create.max.parent":{"8":0},"core.create.max.parent.author":{"8":0},"core.create.max.author":{"8":0},"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.own":[]}'),
(92, 68, 159, 160, 5, 'com_cck.form.20', 'Article Grp Publishing', '{"core.create":[],"core.create.max.parent":{"8":0},"core.create.max.parent.author":{"8":0},"core.create.max.author":{"8":0},"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.own":[]}'),
(93, 68, 161, 162, 5, 'com_cck.form.21', 'Article Grp Basic', '{"core.create":[],"core.create.max.parent":{"8":0},"core.create.max.parent.author":{"8":0},"core.create.max.author":{"8":0},"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.own":[]}'),
(94, 68, 163, 164, 5, 'com_cck.form.22', 'Article Grp Metadata', '{"core.create":[],"core.create.max.parent":{"8":0},"core.create.max.parent.author":{"8":0},"core.create.max.author":{"8":0},"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.own":[]}'),
(95, 74, 179, 180, 5, 'com_cck.form.25', 'Category Grp Publishing', '{"core.create":[],"core.create.max.parent":{"8":0},"core.create.max.parent.author":{"8":0},"core.create.max.author":{"8":0},"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.own":[]}'),
(96, 74, 181, 182, 5, 'com_cck.form.26', 'Category Grp Basic', '{"core.create":[],"core.create.max.parent":{"8":0},"core.create.max.parent.author":{"8":0},"core.create.max.author":{"8":0},"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.own":[]}'),
(97, 74, 183, 184, 5, 'com_cck.form.27', 'Category Grp Metadata', '{"core.create":[],"core.create.max.parent":{"8":0},"core.create.max.parent.author":{"8":0},"core.create.max.author":{"8":0},"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.own":[]}'),
(98, 79, 195, 196, 5, 'com_cck.form.28', 'User Grp Basic', '{"core.create":[],"core.create.max.parent":{"8":0},"core.create.max.parent.author":{"8":0},"core.create.max.author":{"8":0},"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.own":[]}'),
(99, 68, 165, 166, 5, 'com_cck.form.30', 'Article Grp Images & Links', '{"core.create":[],"core.create.max.parent":{"8":0},"core.create.max.parent.author":{"8":0},"core.create.max.author":{"8":0},"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.own":[]}'),
(100, 66, 142, 143, 4, 'com_cck.form.35', 'Button Grp (Form)', '{"core.create":[],"core.create.max.parent":{"8":0},"core.create.max.parent.author":{"8":0},"core.create.max.author":{"8":0},"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.own":[]}'),
(101, 65, 211, 214, 3, 'com_cck.folder.500', 'Tutorial', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.delete.own":[],"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1},"core.export":[],"core.process":[]}'),
(102, 101, 212, 213, 4, 'com_cck.form.500', 'Pferdedatenblatt', '{"core.create":[],"core.create.max.parent":{"8":0},"core.create.max.parent.author":{"8":0},"core.create.max.author":{"8":0},"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.own":[]}'),
(103, 27, 19, 20, 3, 'com_content.article.1', 'Mister Ed', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(104, 1, 221, 222, 1, '#__content.1', '#__content.1', ''),
(105, 27, 21, 22, 3, 'com_content.article.2', 'test', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(106, 65, 215, 218, 3, 'com_cck.folder.501', 'Ferienhaus Datenbank', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.delete.own":[],"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1},"core.export":[],"core.process":[]}'),
(107, 106, 216, 217, 4, 'com_cck.form.501', 'Ferienhaussuche', '{"core.create":[],"core.create.max.parent":{"8":0},"core.create.max.parent.author":{"8":0},"core.create.max.author":{"8":0},"core.delete":[],"core.delete.own":[],"core.edit":[],"core.edit.own":[]}'),
(108, 27, 23, 24, 3, 'com_content.article.3', 'Meine Hütte', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(109, 1, 223, 224, 1, '#__ucm_content.1', '#__ucm_content.1', '[]'),
(110, 8, 30, 37, 2, 'com_content.category.10', 'Ferienhäueser', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(111, 110, 31, 32, 3, 'com_content.article.4', 'Haus am Meer', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(112, 110, 33, 34, 3, 'com_content.article.5', 'fdsgsg', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(113, 110, 35, 36, 3, 'com_content.article.6', 'Haus in den Bergen', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_associations`
--

CREATE TABLE IF NOT EXISTS `joom_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_banners`
--

CREATE TABLE IF NOT EXISTS `joom_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_banner_clients`
--

CREATE TABLE IF NOT EXISTS `joom_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `joom_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_categories`
--

CREATE TABLE IF NOT EXISTS `joom_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Daten für Tabelle `joom_categories`
--

INSERT INTO `joom_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 19, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 62, 1, 13, 14, 1, 'users', 'com_content', 'Users', 'users', '', '', 1, 0, '0000-00-00 00:00:00', 2, '', '', '', '', 129, '2014-09-17 12:59:31', 129, '2014-09-17 12:59:31', 0, '*', 1),
(9, 63, 1, 15, 16, 1, 'user-groups', 'com_content', 'User Groups', 'user-groups', '', '', 1, 0, '0000-00-00 00:00:00', 2, '', '', '', '', 129, '2014-09-17 12:59:31', 129, '2014-09-17 12:59:31', 0, '*', 1),
(10, 110, 1, 17, 18, 1, 'ferienhaeueser', 'com_content', 'Ferienhäueser', 'ferienhaeueser', '', '::cck::4::/cck::<br />::description::::/description::', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 129, '2014-09-22 10:35:27', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_cck_core`
--

CREATE TABLE IF NOT EXISTS `joom_cck_core` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cck` varchar(50) NOT NULL,
  `pk` int(11) NOT NULL,
  `pkb` int(11) NOT NULL,
  `storage_location` varchar(50) NOT NULL,
  `storage_table` varchar(100) NOT NULL,
  `author_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `app` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cck` (`cck`),
  KEY `idx_pk` (`pk`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Daten für Tabelle `joom_cck_core`
--

INSERT INTO `joom_cck_core` (`id`, `cck`, `pk`, `pkb`, `storage_location`, `storage_table`, `author_id`, `parent_id`, `store_id`, `date_time`, `app`) VALUES
(1, 'pferdedatenblatt', 1, 0, 'joomla_article', '', 129, 2, 0, '2014-09-19 14:46:19', ''),
(2, 'article', 2, 0, 'joomla_article', '', 129, 2, 0, '2014-09-19 16:19:52', ''),
(3, 'ferienhaus_datenbank', 3, 0, 'joomla_article', '', 129, 2, 0, '2014-09-22 09:54:32', ''),
(4, 'category', 10, 0, 'joomla_category', '', 129, 1, 0, '2014-09-22 10:35:27', ''),
(5, 'ferienhaus_datenbank', 4, 0, 'joomla_article', '', 129, 10, 0, '2014-09-22 10:49:06', ''),
(6, 'ferienhaus_datenbank', 5, 0, 'joomla_article', '', 129, 10, 0, '2014-09-22 10:51:12', ''),
(7, 'ferienhaus_datenbank', 6, 0, 'joomla_article', '', 129, 10, 0, '2014-09-22 10:58:30', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_cck_core_activities`
--

CREATE TABLE IF NOT EXISTS `joom_cck_core_activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `folder` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `idx_category` (`folder`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=500 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_cck_core_downloads`
--

CREATE TABLE IF NOT EXISTS `joom_cck_core_downloads` (
  `id` int(11) NOT NULL,
  `field` varchar(50) NOT NULL,
  `collection` varchar(50) NOT NULL,
  `x` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  PRIMARY KEY (`id`,`field`,`collection`,`x`),
  KEY `idx_contentid` (`id`),
  KEY `idx_item` (`field`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_cck_core_fields`
--

CREATE TABLE IF NOT EXISTS `joom_cck_core_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `folder` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `description` varchar(5120) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `label` varchar(50) NOT NULL,
  `selectlabel` varchar(50) NOT NULL,
  `display` int(11) NOT NULL DEFAULT '0',
  `required` varchar(50) NOT NULL,
  `validation` varchar(50) NOT NULL,
  `defaultvalue` varchar(2048) NOT NULL,
  `options` text NOT NULL COMMENT 'string-formated options',
  `options2` text NOT NULL COMMENT 'json-formated options',
  `minlength` int(11) NOT NULL DEFAULT '0',
  `maxlength` int(11) NOT NULL DEFAULT '255',
  `size` int(11) NOT NULL DEFAULT '32',
  `cols` int(11) NOT NULL,
  `rows` int(11) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `divider` varchar(50) NOT NULL,
  `bool` tinyint(4) NOT NULL,
  `location` varchar(255) NOT NULL,
  `extended` varchar(50) NOT NULL,
  `style` varchar(512) NOT NULL,
  `script` text NOT NULL,
  `bool2` tinyint(4) NOT NULL DEFAULT '0',
  `bool3` tinyint(4) NOT NULL DEFAULT '0',
  `bool4` tinyint(4) NOT NULL DEFAULT '0',
  `bool5` tinyint(4) NOT NULL DEFAULT '0',
  `bool6` tinyint(4) NOT NULL DEFAULT '0',
  `bool7` tinyint(4) NOT NULL DEFAULT '0',
  `bool8` tinyint(4) NOT NULL DEFAULT '1',
  `css` varchar(255) NOT NULL,
  `attributes` varchar(512) NOT NULL,
  `storage` varchar(50) NOT NULL,
  `storage_location` varchar(50) NOT NULL,
  `storage_table` varchar(100) NOT NULL,
  `storage_field` varchar(50) NOT NULL,
  `storage_field2` varchar(50) NOT NULL,
  `storage_params` varchar(2048) NOT NULL,
  `storages` varchar(2048) NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `idx_type` (`type`),
  KEY `idx_folder` (`folder`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5009 ;

--
-- Daten für Tabelle `joom_cck_core_fields`
--

INSERT INTO `joom_cck_core_fields` (`id`, `title`, `name`, `folder`, `type`, `description`, `published`, `label`, `selectlabel`, `display`, `required`, `validation`, `defaultvalue`, `options`, `options2`, `minlength`, `maxlength`, `size`, `cols`, `rows`, `ordering`, `sorting`, `divider`, `bool`, `location`, `extended`, `style`, `script`, `bool2`, `bool3`, `bool4`, `bool5`, `bool6`, `bool7`, `bool8`, `css`, `attributes`, `storage`, `storage_location`, `storage_table`, `storage_field`, `storage_field2`, `storage_params`, `storages`, `checked_out`, `checked_out_time`) VALUES
(1, 'CCK', 'cck', 3, 'select_dynamic', '', 1, 'Type', ' ', 3, '', '', '', '', '{"query":"","table":"#__cck_core_types","name":"title","where":"published=1","value":"name","orderby":"title","orderby_direction":"ASC","limit":"","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'free', '#__cck_core', 'cck', '', '', '', 0, '0000-00-00 00:00:00'),
(10, 'Core Label', 'core_label', 3, 'text', '', 0, 'Label', '', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'label', '', '', '', 0, '0000-00-00 00:00:00'),
(11, 'Core Size', 'core_size', 3, 'text', '', 0, 'Size', '', 3, '', '', '32', '', '', 0, 3, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'size', '', '', '', 0, '0000-00-00 00:00:00'),
(12, 'Core DefaultValue', 'core_defaultvalue', 3, 'text', '', 0, 'Default Value', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'defaultvalue', '', '', '', 0, '0000-00-00 00:00:00'),
(13, 'Core Minlength', 'core_minlength', 3, 'text', '', 0, 'Minlength', '', 3, '', '', '0', '', '', 0, 50, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'minlength', '', '', '', 0, '0000-00-00 00:00:00'),
(14, 'Core Maxlength', 'core_maxlength', 3, 'text', '', 0, 'Maxlength', ' ', 3, '', '', '255', '', '', 0, 50, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'maxlength', '', '', '', 0, '0000-00-00 00:00:00'),
(15, 'Core Sorting', 'core_sorting', 3, 'select_simple', '', 0, 'Ordering', ' ', 3, '', '', '0', 'Following Options=0||Alphabetical AZ=1||Alphabetical ZA=2', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'sorting', '', '', '', 0, '0000-00-00 00:00:00'),
(16, 'Core Selectlabel', 'core_selectlabel', 3, 'text', '', 0, 'Select Label', '', 3, '', '', 'Select an Option', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'selectlabel', '', '', '', 0, '0000-00-00 00:00:00'),
(17, 'Core Options', 'core_options', 3, 'field_x', '', 0, 'Options', ' ', 3, '', '', '', '', '', 1, 255, 32, 0, 2, 0, 0, '', 0, '', 'core_option', '', '', 1, 1, 1, 0, 0, 0, 0, '', '', 'dev', '', '', 'string[options]', '', '', '', 0, '0000-00-00 00:00:00'),
(18, 'Core Rows', 'core_rows', 3, 'text', '', 0, 'Rows', ' ', 3, '', '', '0', '', '', 0, 50, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'rows', '', '', '', 0, '0000-00-00 00:00:00'),
(19, 'Core Columns', 'core_columns', 3, 'text', '', 0, 'Columns', ' ', 3, '', '', '25', '', '', 0, 50, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'cols', '', '', '', 0, '0000-00-00 00:00:00'),
(20, 'Core Options Format', 'core_options_format', 3, 'text', '', 0, 'Format', ' ', 3, 'required', '', 'Y-m-d', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[options2][format]', '', '', '', 0, '0000-00-00 00:00:00'),
(21, 'Core Color', 'core_color', 3, 'colorpicker', '', 0, 'Color', ' ', 3, '', '', '', '', '', 0, 50, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'color', '', '', '', 0, '0000-00-00 00:00:00'),
(23, 'Core Introchar', 'core_introchar', 3, 'text', '', 0, 'Character', '', 3, '', '', '', '', '', 0, 2, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'introchar', '', '', '', 0, '0000-00-00 00:00:00'),
(22, 'Core Colorchar', 'core_colorchar', 3, 'colorpicker', '', 0, 'Character Color', ' ', 3, '', '', '#ffffff', '', '', 0, 50, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'colorchar', '', '', '', 0, '0000-00-00 00:00:00'),
(24, 'Core Type (Template)', 'core_type_template', 3, 'select_simple', '', 0, 'Type', ' ', 3, '', '', '0', 'Content Form=0||List=2', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', 'tabindex="3"', 'dev', '', '', 'mode', '', '', '', 0, '0000-00-00 00:00:00'),
(25, 'Core Extended', 'core_extended', 3, 'text', '', 0, 'Field', '', 3, 'required', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'extended', '', '', '', 0, '0000-00-00 00:00:00'),
(26, 'Core Required', 'core_required', 3, 'select_simple', '', 0, 'Required', ' ', 3, '', '', '0', 'No=||Yes=required', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'required', '', '', '', 0, '0000-00-00 00:00:00'),
(27, 'Core Title (Field)', 'core_title_field', 3, 'text', '', 0, 'Title', ' ', 3, 'required', '', '', '', '', 0, 50, 28, 0, 0, 0, 0, '', 0, '', '', '', '$("#title").live("change", function() {\r\n  if ( !$("#name").val() ) {\r\n    JCck.Dev.transliterateName();\r\n  }\r\n}); if( !$("#title").val() ) { $("#title").focus(); }', 0, 0, 0, 0, 0, 0, 0, '', 'tabindex="1"', 'dev', '', '', 'title', '', '', '', 0, '0000-00-00 00:00:00'),
(28, 'Core Storage Mode', 'core_storage_mode', 3, '42', '', 0, 'Mode', ' ', 3, '', '', 'custom', '', '{"preparecontent":"","prepareform":"$value = ( $value ) ? $value : ''custom'';\\r\\n$options = array();\\r\\n$options[] = JHtml::_( ''select.option'', ''none'', ''- ''.JText::_( ''COM_CCK_NONE'' ).'' -'', ''value'', ''text'' );\\r\\n$my = JFactory::getUser();\\r\\n$iAmSuperAdmin = $my->authorise( ''core.admin'' );\\r\\nif ( ( JCck::getConfig_Param( ''storage_dev'', ''0'' ) == 1 && $iAmSuperAdmin === TRUE ) || ( $value == ''dev'' ) ) { $options[] = JHtml::_( ''select.option'', ''dev'', JText::_ ( ''COM_CCK_DEVELOPMENT'' ), ''value'', ''text'' );\\r\\n}\\r\\n$options = array_merge( $options, Helper_Admin::getPluginOptions( ''storage'', ''cck_'', false, false, true ) );\\r\\n$form = JHtml::_( ''select.genericlist'', $options, $name, ''class=\\"inputbox select\\" size=\\"1\\" ''.$field->attributes, ''value'', ''text'', $value );","preparestore":""}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'storage', '', '', '', 0, '0000-00-00 00:00:00'),
(319, 'Article Created By Alias', 'art_created_by_alias', 15, 'text', '', 1, 'Created By Alias', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_article', '#__content', 'created_by_alias', '', '', '', 0, '0000-00-00 00:00:00'),
(300, 'Category Id', 'art_catid', 10, 'jform_category', '', 1, 'Category', ' ', 3, '', '', '', '', '{"extension":""}', 0, 50, 32, 0, 0, 3, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_article', '#__cck_store_item_content', 'art_catid', '', '', '', 0, '0000-00-00 00:00:00'),
(29, 'Core Storage Table', 'core_storage_table', 3, 'select_dynamic', '', 0, 'Table', 'Select a Table', 3, '', '', '', '', '{"query":"SHOW TABLES"}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 1, 0, 0, 0, 0, 0, 1, '', 'style="max-width:200px;"', 'dev', '', '', 'storage_table', '', '', '', 0, '0000-00-00 00:00:00'),
(301, 'Article State', 'art_state', 10, 'select_simple', '', 1, 'Status', ' ', 3, '', '', '1', 'Published=1||Unpublished=0||Archived=2||Trashed=-2', '', 0, 50, 32, 0, 0, 4, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'joomla_article', '#__content', 'state', '', '', '', 0, '0000-00-00 00:00:00'),
(30, 'Core Validation Alert', 'core_validation_alert', 3, 'text', '', 0, 'Alert', '', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'alert', '', '', '', 0, '0000-00-00 00:00:00'),
(31, 'Core Validation Field', 'core_validation_field', 3, 'text', '', 0, 'Field', '', 3, 'required', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'field', '', '', '', 0, '0000-00-00 00:00:00'),
(32, 'Core Script', 'core_script', 3, 'textarea', '', 0, 'Script', ' ', 3, '', '', '', '', '', 0, 0, 32, 92, 5, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'script', '', '', '', 0, '0000-00-00 00:00:00'),
(33, 'Core Storage', 'core_storage', 3, 'storage', '', 0, 'Storage', '', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'storage', '', '', '', 0, '0000-00-00 00:00:00'),
(34, 'Core Storage Field', 'core_storage_field', 3, 'text', '', 0, 'Field', ' ', 3, '', '', '', '', '', 0, 50, 26, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'storage_field', '', '', '', 0, '0000-00-00 00:00:00'),
(302, 'Objekttitel', 'art_title', 501, 'text', '', 1, 'Objekttitel', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 1, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_article', '#__content', 'title', '', '', '', 0, '0000-00-00 00:00:00'),
(45, 'Core Folder Filter', 'core_folder_filter', 3, '42', '', 0, 'App Folder', ' ', 3, '', '', '', '', '{"preparecontent":"","prepareform":"$class = $field->css ? '' ''.$field->css : '''';\\r\\n$options = Helper_Admin::getFolderOptions( true, true, true, true, $config[''vName''] );\\r\\n$form = JHtml::_( ''select.genericlist'', $options, $name, ''class=\\"inputbox select''.$class.''\\" size=\\"1\\" ''.$field->attributes, ''value'', ''text'', $value, $id );","preparestore":""}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', 'onchange="this.form.submit()"', 'dev', '', '', 'filter_folder', '', '', '', 0, '0000-00-00 00:00:00'),
(35, 'Core Name (Template)', 'core_name_template', 3, 'select_dynamic', '', 0, 'Name', 'Select Template', 3, 'required', '', '', '', '{"query":"","table":"#__extensions","name":"name","where":"type=\\"template\\" AND name NOT IN (\\"atomic\\",\\"beez5\\",\\"beez_20\\",\\"bluestork\\",\\"hathor\\")","value":"name","orderby":"name","orderby_direction":"ASC","limit":"","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', 'tabindex="2"', 'dev', '', '', 'name', '', '', '', 0, '0000-00-00 00:00:00'),
(36, 'Core Name (Field)', 'core_name_field', 3, 'text', '', 0, 'Name', ' ', 3, 'required', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', 'tabindex="2"', 'dev', '', '', 'name', '', '', '', 0, '0000-00-00 00:00:00'),
(37, 'Core Title (Template)', 'core_title_template', 3, 'text', '', 0, 'Title', ' ', 3, 'required', '', '', '', '', 0, 50, 28, 0, 0, 0, 0, '', 0, '', '', '', 'if(!$("#title").val()){ $("#title").focus(); }', 0, 0, 0, 0, 0, 0, 0, '', 'tabindex="1"', 'dev', '', '', 'title', '', '', '', 0, '0000-00-00 00:00:00'),
(38, 'Core Title (Type)', 'core_title_type', 3, 'text', '', 0, 'Title', ' ', 3, 'required', '', '', '', '', 0, 50, 28, 0, 0, 0, 0, '', 0, '', '', '', '$("#title").live("change", function() {\r\n  if ( !$("#name").val() ) {\r\n    JCck.Dev.transliterateName();\r\n  }\r\n}); if( !$("#title").val() ) { $("#title").focus(); }', 0, 0, 0, 0, 0, 0, 0, '', 'tabindex="1"', 'dev', '', '', 'title', '', '', '', 0, '0000-00-00 00:00:00'),
(39, 'Core Title (Search)', 'core_title_search', 3, 'text', '', 0, 'Title', ' ', 3, 'required', '', '', '', '', 0, 50, 28, 0, 0, 0, 0, '', 0, '', '', '', '$("#title").live("change", function() {\r\n  if ( !$("#name").val() ) {\r\n    JCck.Dev.transliterateName();\r\n  }\r\n}); if( !$("#title").val() ) { $("#title").focus(); }', 0, 0, 0, 0, 0, 0, 0, '', 'tabindex="1"', 'dev', '', '', 'title', '', '', '', 0, '0000-00-00 00:00:00'),
(40, 'Core Description', 'core_description', 3, 'wysiwyg_editor', '', 0, 'Description', ' ', 3, '', '', '', '', '{"editor":"","import":""}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'description', '', '', '', 0, '0000-00-00 00:00:00'),
(41, 'Core Folder', 'core_folder', 3, '42', '', 0, 'App Folder', ' ', 3, '', '', '', '', '{"preparecontent":"","prepareform":"$options = Helper_Admin::getFolderOptions( false, true, false, true, $config[''vName''] );\\r\\n$class = $field->css ? '' ''.$field->css : '''';\\r\\n$form = JHtml::_( ''select.genericlist'', $options, $name, ''class=\\"inputbox select''.$class.''\\" size=\\"1\\"'', ''value'', ''text'', $value, $id );","preparestore":""}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', 'tabindex="4"', 'dev', '', '', 'folder', '', '', '', 0, '0000-00-00 00:00:00'),
(42, 'Core State Filter', 'core_state_filter', 3, 'select_simple', '', 0, 'Status', ' ', 3, '', '', '', 'All Status SL=-1||On=1||Off=0', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', 'onchange="this.form.submit()"', 'dev', '', '', 'filter_state', '', '', '', 0, '0000-00-00 00:00:00'),
(43, 'Core State', 'core_state', 3, 'radio', '', 0, 'clear', ' ', 3, '', '', '', 'On=1||Off=0', '{"options":[]}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 'btn-group btn-group-yesno', '', 'dev', '', '', 'published', '', '', '', 0, '0000-00-00 00:00:00'),
(44, 'Core Attributes', 'core_attributes', 3, 'textarea', '', 0, 'Attributes', ' ', 3, '', '', '', '', '', 0, 512, 32, 92, 1, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'attributes', '', '', '', 0, '0000-00-00 00:00:00'),
(46, 'Core Location Filter', 'core_location_filter', 3, '42', '', 0, 'Location', ' ', 3, '', '', '', '', '{"preparecontent":"","prepareform":"$options = Helper_Admin::getLocationOptions();\\r\\n$class = $field->css ? '' ''.$field->css : '''';\\r\\n$form = JHtml::_( ''select.genericlist'', $options, $name, ''class=\\"inputbox select''.$class.''\\" size=\\"1\\" ''.$field->attributes, ''value'', ''text'', $value, $id );","preparestore":""}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 'hidden-phone', '', 'dev', '', '', 'filter_location', '', '', '', 0, '0000-00-00 00:00:00'),
(47, 'Core Type Filter (Template)', 'core_type_filter_template', 3, 'select_simple', '', 0, 'Type', ' ', 3, '', '', '', 'All Types SL=||Content Form=0||List=2', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', 'onchange="this.form.submit()"', 'dev', '', '', 'filter_mode', '', '', '', 0, '0000-00-00 00:00:00'),
(48, 'Core Type Filter', 'core_type_filter', 3, '42', '', 0, 'Type', ' ', 3, '', '', '', '', '{"preparecontent":"","prepareform":"$class = $field->css ? '' ''.$field->css : '''';\\r\\n$options = Helper_Admin::getPluginOptions( ''field'', ''cck_'', true, false, true );\\r\\n$form = JHtml::_( ''select.genericlist'', $options, $name, ''class=\\"inputbox select''.$class.''\\" size=\\"1\\" ''.$field->attributes, ''value'', ''text'', $value, $id );","preparestore":""}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', 'onchange="this.form.submit()"', 'dev', '', '', 'filter_type', '', '', '', 0, '0000-00-00 00:00:00'),
(49, 'Core Type', 'core_type', 3, '42', '', 0, 'Type', ' ', 3, '', '', '', '', '{"preparecontent":"","prepareform":"$options = Helper_Admin::getPluginOptions( ''field'', ''cck_'', false, false, true );\\r\\n$form = JHtml::_( ''select.genericlist'', $options, $name, ''class=\\"inputbox select\\" size=\\"1\\" ''.$field->attributes, ''value'', ''text'', $value, $id );","preparestore":""}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', 'tabindex="3"', 'dev', '', '', 'type', '', '', '', 0, '0000-00-00 00:00:00'),
(50, 'Core Folder (Folder)', 'core_folder_folder', 3, '42', '', 0, 'Parent', ' ', 3, '', '', '', '', '{"preparecontent":"","prepareform":"if ( @$config[''item'']->id == 1 || @$config[''item'']->id == 2 ) {\\r\\n $options = array();\\r\\n $options[] = JHtml::_( ''select.option'',  0, ''#'', ''value'', ''text'' );\\r\\n $disabled = '' disabled=\\"disabled\\" '';\\r\\n} else {\\r\\n $options = Helper_Admin::getFolderOptions( false, false, true );\\r\\n $disabled = '''';\\r\\n}\\r\\n$form = JHtml::_( ''select.genericlist'', $options, $name, ''class=\\"inputbox select\\" size=\\"1\\" ''.$disabled.$field->attributes, ''value'', ''text'', $value, $id );","preparestore":""}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'parent_id', '', '', '', 0, '0000-00-00 00:00:00'),
(51, 'Core Title (Folder)', 'core_title_folder', 3, 'text', '', 0, 'Title', ' ', 3, 'required', '', '', '', '', 0, 50, 28, 0, 0, 0, 0, '', 0, '', '', '', 'if(!$("#title").val()){ $("#title").focus(); }', 0, 0, 0, 0, 0, 0, 0, '', 'tabindex="1"', 'dev', '', '', 'title', '', '', '', 0, '0000-00-00 00:00:00'),
(52, 'Core Template Admin', 'core_template_admin', 3, 'select_dynamic', '', 0, 'Style', ' ', 3, '', '', '', '', '{"query":"","table":"#__template_styles","name":"title","where":"","value":"id","orderby":"","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', 'style="max-width:190px;"', 'dev', '', '', 'template_admin', '', '', '', 0, '0000-00-00 00:00:00'),
(53, 'Core Template Site', 'core_template_site', 3, 'select_dynamic', '', 0, 'Style', ' ', 3, '', '', '', '', '{"query":"","table":"#__template_styles","name":"title","where":"","value":"id","orderby":"","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', 'style="max-width:190px;"', 'dev', '', '', 'template_site', '', '', '', 0, '0000-00-00 00:00:00'),
(54, 'Core Template Content', 'core_template_content', 3, 'select_dynamic', '', 0, 'Style', ' ', 3, '', '', '', '', '{"query":"","table":"#__template_styles","name":"title","where":"","value":"id","orderby":"","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', 'style="max-width:190px;"', 'dev', '', '', 'template_content', '', '', '', 0, '0000-00-00 00:00:00'),
(55, 'Core Template Params', 'core_template_params', 3, 'text', '', 0, 'Params', '', 3, '', '', '', '', '', 0, 0, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'template_params', '', '', '', 0, '0000-00-00 00:00:00'),
(56, 'Core Template', 'core_template', 3, 'select_dynamic', '', 0, 'Template', ' ', 3, '', '', '', '', '{"query":"SELECT DISTINCT a.template AS value, CONCAT(b.title,\\" - \\",b.name) AS text FROM #__template_styles AS a LEFT JOIN #__cck_core_templates AS b ON b.name = a.template WHERE b.id AND b.mode=0 ORDER BY b.title","table":"","name":"","where":"","value":"","orderby":"","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 1, 0, 0, 0, 0, 0, 1, '', 'onchange="JCck.Dev.doSubmit();" style="max-width:190px;"', 'dev', '', '', 'template', '', '', '', 0, '0000-00-00 00:00:00'),
(57, 'Core Layer', 'core_layer', 3, '42', '', 0, 'Layer', ' ', 3, '', '', '', '', '{"preparecontent":"","prepareform":"$checked1 = ( $config[''item'']->layer == ''configuration'' ) ? ''checked=\\"checked\\"'' : '''';\\r\\n$checked2 = ( $config[''item'']->layer == ''fields'' ) ? ''checked=\\"checked\\"'' : '''';\\r\\n$checked3 = ( $config[''item'']->layer == ''template'' ) ? ''checked=\\"checked\\"'' : '''';\\r\\n$selected1 = ( $config[''item'']->layer == ''configuration'' ) ? ''selected'' : '''';\\r\\n$selected2 = ( $config[''item'']->layer == ''fields'' ) ? ''selected'' : '''';\\r\\n$selected3 = ( $config[''item'']->layer == ''template'' ) ? ''selected'' : '''';\\r\\n\\r\\n$form = ''<fieldset id=\\"layer\\" class=\\"toggle\\">''\\r\\n      . ''<input type=\\"radio\\" id=\\"layer1\\" name=\\"layer\\" value=\\"configuration\\" ''\\r\\n      . ''style=\\"display: none\\" ''.$checked1.'' \\/>''\\r\\n      . ''<input type=\\"radio\\" id=\\"layer2\\" name=\\"layer\\" value=\\"fields\\" ''\\r\\n      . ''style=\\"display: none\\" ''.$checked2.'' \\/>''\\r\\n      . ''<input type=\\"radio\\" id=\\"layer3\\" name=\\"layer\\" value=\\"template\\" ''\\r\\n      . ''style=\\"display: none\\" ''.$checked3.'' \\/>''\\r\\n      . ''<label id=\\"layer1_label\\" for=\\"layer1\\" class=\\"toggle first ''.$selected1.''\\">''\\r\\n      . JText::_( ''COM_CCK_CONFIG'' ).''<\\/label>''\\r\\n      . ''<label id=\\"layer2_label\\" for=\\"layer2\\" class=\\"toggle ''.$selected2.''\\">''\\r\\n      . JText::_( ''COM_CCK_FIELDS'' ).''<\\/label>''\\r\\n      . ''<label id=\\"layer3_label\\" for=\\"layer3\\" class=\\"toggle last ''.$selected3.''\\">''\\r\\n      . JText::_( ''COM_CCK_TEMPLATE'' ).''<\\/label>''\\r\\n      . ''<div align=\\"center\\" class=\\"subtabs\\">''\\r\\n      . ''<div id=\\"subtab4\\"><\\/div>''\\r\\n      . ''<div id=\\"subtab5\\">''.JText::_( ''COM_CCK_OPTIONS'' ).''<\\/div>''\\r\\n      . ''<div id=\\"subtab6\\"><\\/div>''\\r\\n      . ''<\\/div>''\\r\\n      . ''<\\/fieldset>'';","preparestore":""}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '$("fieldset#layer").on("click", "label", function() {\r\n $("#layer label").removeClass(''selected''); $(this).addClass(''selected'');\r\n var current = $("#"+$(this).attr(''for''));\r\n if (current.prop("checked") != true) {\r\n  $("#layer input").removeAttr("checked"); current.attr("checked", "checked"); $(".layers").slideUp();  $("#layer_"+current.val()).slideDown();\r\n }\r\n});', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'layer', '', '', '', 0, '0000-00-00 00:00:00'),
(58, 'Core Content Type', 'core_content_type', 3, 'select_dynamic', '', 0, 'Content Type', 'Select', 3, '', '', '', '', '{"query":"","table":"#__cck_core_types","name":"title","where":"published = 1 AND location != \\"admin\\" AND location != \\"none\\" AND storage_location != \\"none\\"","value":"name","orderby":"title","orderby_direction":"ASC","limit":"","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', 'var e="type"; var elem="#jform_trigger_"+e;\r\nvar file="file=administrator/components/com_cck/helpers/scripts/list_live.php";\r\n$(elem).change(function() {\r\nif (!$("#jform_title").val()) {\r\n$("#jform_title").val($(elem+" option[value=\\''"+$(elem).val()+"\\'']").text());\r\n}\r\nvar type = "&e_name="+$(elem).val();\r\nvar live = "&live="+$("#jform_params_live").val();\r\nvar variat = "&variat="+$("#jform_params_variation").val();\r\n $.ajax({\r\n  cache: false, data: file+type+live+variat+"&elem="+e, type: "POST",\r\n  url: "index.php?option=com_cck&task=ajax&format=raw",\r\n  success: function(response){ $("#list_live_show").html(response); } });\r\n});\r\nvar type = "&e_name="+$(elem).val();\r\nvar live = "&live="+$("#jform_params_live").val();\r\nvar variat = "&variat="+$("#jform_params_variation").val();\r\n $.ajax({\r\n  cache: false, data: file+type+live+variat+"&elem="+e, type: "POST",\r\n  url: "index.php?option=com_cck&task=ajax&format=raw",\r\n  success: function(response){ $("#list_live_show").html(response); } });', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'type', '', '', '', 0, '0000-00-00 00:00:00'),
(59, 'Core Search Type', 'core_search_type', 3, 'select_dynamic', '', 0, 'Search Type', 'Select', 3, '', '', '', '', '{"query":"","table":"#__cck_core_searchs","name":"title","where":"published=1","value":"name","orderby":"title","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', 'var e="search"; var elem="#jform_trigger_"+e;\r\nvar file="file=administrator/components/com_cck/helpers/scripts/list_live.php";\r\n$(elem).change(function() {\r\nif (!$("#jform_title").val()) {\r\n$("#jform_title").val($(elem+" option[value=\\''"+$(elem).val()+"\\'']").text());\r\n}\r\nvar type = "&e_name="+$(elem).val();\r\nvar live = "&live="+$("#jform_params_live").val();\r\nvar variat = "&variat="+$("#jform_params_variation").val();\r\n $.ajax({\r\n  cache: false, data: file+type+live+variat+"&elem="+e, type: "POST",\r\n  url: "index.php?option=com_cck&task=ajax&format=raw",\r\n  success: function(response){ $("#list_live_show").html(response); } });\r\n});\r\nvar type = "&e_name="+$(elem).val();\r\nvar live = "&live="+$("#jform_params_live").val();\r\nvar variat = "&variat="+$("#jform_params_variation").val();\r\n $.ajax({\r\n  cache: false, data: file+type+live+variat+"&elem="+e, type: "POST",\r\n  url: "index.php?option=com_cck&task=ajax&format=raw",\r\n  success: function(response){ $("#list_live_show").html(response); } });', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'search', '', '', '', 0, '0000-00-00 00:00:00'),
(308, 'User Name', 'user_name', 13, 'text', '', 1, 'Name', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 1, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user', '#__users', 'name', '', '', '', 0, '0000-00-00 00:00:00'),
(309, 'User Username', 'user_username', 13, 'text', '', 1, 'Login Name', ' ', 3, '', '', '', '', '', 0, 150, 32, 0, 0, 2, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user', '#__users', 'username', '', '', '', 0, '0000-00-00 00:00:00'),
(307, 'Article Created By', 'art_created_by', 15, 'jform_user', '', 1, 'Created By', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_article', '#__content', 'created_by', '', '', '', 0, '0000-00-00 00:00:00'),
(310, 'User Email', 'user_email', 13, 'text', '', 1, 'Email', ' ', 3, '', '', '', '', '', 0, 100, 32, 0, 0, 5, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user', '#__users', 'email', '', '', '', 0, '0000-00-00 00:00:00'),
(311, 'User Password', 'user_password', 13, 'password', '', 1, 'Password', ' ', 3, '', '', '', '', '', 6, 20, 32, 0, 0, 3, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user', '#__users', 'password', '', '', '', 0, '0000-00-00 00:00:00'),
(60, 'Core Options Math', 'core_options_math', 3, 'select_simple', '', 0, 'Math', ' ', 3, '', '', '0', 'Sum=0||Product=1||Difference=2||Quotient=3', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'json[options2][math]', '', '', '', 0, '0000-00-00 00:00:00'),
(61, 'Core Options Last', 'core_options_last', 3, 'text', '', 0, 'Last Optional', ' ', 3, '', '', '', '', '', 0, 50, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[options2][last]', '', '', '', 0, '0000-00-00 00:00:00'),
(62, 'Core Options End', 'core_options_end', 3, 'text', '', 0, 'End', ' ', 3, 'required', '', '', '', '', 0, 50, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[options2][end]', '', '', '', 0, '0000-00-00 00:00:00'),
(63, 'Core Options Step', 'core_options_step', 3, 'text', '', 0, 'Step', ' ', 3, 'required', '', '', '', '', 0, 50, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[options2][step]', '', '', '', 0, '0000-00-00 00:00:00'),
(64, 'Core Options Start', 'core_options_start', 3, 'text', '', 0, 'Start', ' ', 3, 'required', '', '', '', '', 0, 50, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[options2][start]', '', '', '', 0, '0000-00-00 00:00:00'),
(65, 'Core Options First', 'core_options_first', 3, 'text', '', 0, 'First Optional', ' ', 3, '', '', '', '', '', 0, 50, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[options2][first]', '', '', '', 0, '0000-00-00 00:00:00'),
(67, 'Core Client (Type)', 'core_client_type', 3, '42', '', 0, 'Client', ' ', 3, '', '', '', '', '{"preparecontent":"","prepareform":"$uix = JCck::getUIX();\\r\\n$checked1 = ( $config[''item'']->client == ''admin'' ) ? ''checked=\\"checked\\"'' : '''';\\r\\n$checked2 = ( $config[''item'']->client == ''site'' ) ? ''checked=\\"checked\\"'' : '''';\\r\\n$selected1 = ( $config[''item'']->client == ''admin'' ) ? ''selected'' : '''';\\r\\n$selected2 = ( $config[''item'']->client == ''site'' ) ? ''selected'' : '''';\\r\\nif ( $uix == ''full'' ) {\\r\\n  $checked3 = ( $config[''item'']->client == ''intro'' ) ? ''checked=\\"checked\\"'' : '''';\\r\\n  $checked4 = ( $config[''item'']->client == ''content'' ) ? ''checked=\\"checked\\"'' : '''';\\r\\n  $selected3 = ( $config[''item'']->client == ''intro'' ) ? ''selected'' : '''';\\r\\n  $selected4 = ( $config[''item'']->client == ''content'' ) ? ''selected'' : '''';\\r\\n}\\r\\n\\r\\n$form = ''<fieldset id=\\"client\\" class=\\"toggle\\">''\\r\\n      . ''<input type=\\"radio\\" id=\\"client1\\" name=\\"client\\" value=\\"admin\\" ''\\r\\n      . ''style=\\"display: none\\" ''.$checked1.'' \\/>''\\r\\n      . ''<input type=\\"radio\\" id=\\"client2\\" name=\\"client\\" value=\\"site\\" ''\\r\\n      . ''style=\\"display: none\\" ''.$checked2.'' \\/>'';\\r\\nif ( $uix == ''full'' ) {\\r\\n   $form .= ''<input type=\\"radio\\" id=\\"client3\\" name=\\"client\\" value=\\"intro\\" ''\\r\\n         .  ''style=\\"display: none\\" ''.$checked3.'' \\/>''\\r\\n         .  ''<input type=\\"radio\\" id=\\"client4\\" name=\\"client\\" value=\\"content\\" ''\\r\\n         .  ''style=\\"display: none\\" ''.$checked4.'' \\/>'';\\r\\n}\\r\\n$form .= ''<label for=\\"client1\\" class=\\"toggle first ''.$selected1.''\\">''\\r\\n      .  JText::_( ''COM_CCK_ADMIN_FORM'' ).''<\\/label>''\\r\\n      .  ''<label for=\\"client2\\" class=\\"toggle ''.$selected2.''\\">''\\r\\n      .  JText::_( ''COM_CCK_SITE_FORM'' ).''<\\/label>'';\\r\\nif ( $uix == ''full'' ) {\\r\\n   $form .= ''<label for=\\"client3\\" class=\\"toggle ''.$selected3.''\\">''\\r\\n         .  JText::_( ''COM_CCK_INTRO'' ).''<\\/label>''\\r\\n         .  ''<label for=\\"client4\\" class=\\"toggle last ''.$selected4.''\\">''\\r\\n         .  JText::_( ''COM_CCK_CONTENT'' ).''<\\/label>'';\\r\\n}\\r\\n$form .= ''<div align=\\"center\\" class=\\"subtabs\\">''\\r\\n      .  ''<div id=\\"subtab1\\"><\\/div>''\\r\\n      .  ''<div id=\\"subtab2\\">''.JText::_( ''COM_CCK_VIEWS'' ).''<\\/div>''\\r\\n      .  ''<div id=\\"subtab3\\"><\\/div>''\\r\\n      .  ''<\\/div>''\\r\\n      .  ''<\\/fieldset>'';","preparestore":""}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'client', '', '', '', 0, '0000-00-00 00:00:00'),
(66, 'Core Storage Location', 'core_storage_location', 3, '42', '', 0, 'Storage Location', ' ', 3, '', '', 'joomla_article', '', '{"preparecontent":"","prepareform":"$value = ( $value ) ? $value : ''joomla_article'';\\r\\n$options = array();\\r\\n$options = array_merge( $options, Helper_Admin::getPluginOptions( ''storage_location'', ''cck_'', false, false, true ) );\\r\\n\\r\\n$attr = ''data-cck'';\\r\\n$base = JPATH_SITE.''\\/plugins\\/cck_storage_location'';\\r\\nif ( count( $options ) ) {\\r\\n  foreach ( $options as $o ) {\\r\\n    if ( $o->value == ''<OPTGROUP>'' || $o->value == ''<\\/OPTGROUP>'' ) {\\r\\n      continue;\\r\\n    }\\r\\n    $pp = array( ''custom'' );\\r\\n    if ( is_file( $base.''\\/''.$o->value.''\\/''.$o->value.''.php'' ) ) {\\r\\n      require_once $base.''\\/''.$o->value.''\\/''.$o->value.''.php'';\\r\\n      $pp = JCck::callFunc( ''plgCCK_Storage_Location''.$o->value,''getStaticProperties'',$pp );\\r\\n      $v  = $pp[''custom''];\\r\\n    } else {\\r\\n      $v  = '''';\\r\\n    }\\r\\n    $o->$attr = ''data-custom=\\"''.$v.''\\"'';\\r\\n  }\\r\\n}\\r\\n\\r\\n$attr = ''class=\\"inputbox select\\" size=\\"1\\" ''.$field->attributes;\\r\\n$attr = array( ''id''=>$id,\\r\\n               ''list.attr''=>$attr,\\r\\n               ''list.select''=>$value,\\r\\n               ''list.translate''=>FALSE,\\r\\n               ''option.attr''=>''data-cck'',\\r\\n               ''option.key''=>''value'',\\r\\n               ''option.text''=>''text''\\r\\n        );\\r\\n$form = JHtml::_( ''select.genericlist'', $options, $name, $attr );","preparestore":""}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'storage_location', '', '', '', 0, '0000-00-00 00:00:00'),
(312, 'User Password2', 'user_password2', 13, 'password', '', 1, 'Confirm Password', ' ', 3, '', '', '', '', '', 6, 20, 32, 0, 0, 4, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user', '#__users', 'password2', '', '', '', 0, '0000-00-00 00:00:00'),
(68, 'Core Client (Search)', 'core_client_search', 3, '42', '', 0, 'Client', ' ', 3, '', '', '', '', '{"preparecontent":"","prepareform":"$checked1 = ( $config[''item'']->client == ''search'' ) ? ''checked=\\"checked\\"'' : '''';\\r\\n$checked2 = ( $config[''item'']->client == ''filter'' ) ? ''checked=\\"checked\\"'' : '''';\\r\\n$checked3 = ( $config[''item'']->client == ''order'' ) ? ''checked=\\"checked\\"'' : '''';\\r\\n$checked4 = ( $config[''item'']->client == ''list'' ) ? ''checked=\\"checked\\"'' : '''';\\r\\n$checked5 = ( $config[''item'']->client == ''item'' ) ? ''checked=\\"checked\\"'' : '''';\\r\\n$selected1 = ( $config[''item'']->client == ''search'' ) ? ''selected'' : '''';\\r\\n$selected2 = ( $config[''item'']->client == ''filter'' ) ? ''selected'' : '''';\\r\\n$selected3 = ( $config[''item'']->client == ''order'' ) ? ''selected'' : '''';\\r\\n$selected4 = ( $config[''item'']->client == ''list'' ) ? ''selected'' : '''';\\r\\n$selected5 = ( $config[''item'']->client == ''item'' ) ? ''selected'' : '''';\\r\\n\\r\\n$form = ''<fieldset id=\\"client\\" class=\\"toggle\\">''\\r\\n      . ''<input type=\\"radio\\" id=\\"client1\\" name=\\"client\\" value=\\"search\\" ''\\r\\n      . ''style=\\"display: none\\" ''.$checked1.'' \\/>''\\r\\n      \\/\\/. ''<input type=\\"radio\\" id=\\"client2\\" name=\\"client\\" value=\\"filter\\" ''\\r\\n      \\/\\/. ''style=\\"display: none\\" ''.$checked2.'' \\/>''\\r\\n      . ''<input type=\\"radio\\" id=\\"client3\\" name=\\"client\\" value=\\"order\\" ''\\r\\n      . ''style=\\"display: none\\" ''.$checked3.'' \\/>''\\r\\n      . ''<input type=\\"radio\\" id=\\"client4\\" name=\\"client\\" value=\\"list\\" ''\\r\\n      . ''style=\\"display: none\\" ''.$checked4.'' \\/>''\\r\\n      . ''<input type=\\"radio\\" id=\\"client5\\" name=\\"client\\" value=\\"item\\" ''\\r\\n      . ''style=\\"display: none\\" ''.$checked5.'' \\/>''\\r\\n      . ''<label id=\\"client1_label\\" for=\\"client1\\" class=\\"toggle first ''.$selected1.''\\">''\\r\\n      . JText::_( ''COM_CCK_SEARCH_FORM'' ).''<\\/label>''\\r\\n      \\/\\/. ''<label id=\\"client2_label\\" for=\\"client2\\" class=\\"toggle ''.$selected2.''\\">''\\r\\n      \\/\\/. JText::_( ''COM_CCK_FILTER_FORM'' ).''<\\/label>''\\r\\n      . ''<label id=\\"client3_label\\" for=\\"client3\\" class=\\"toggle ''.$selected3.''\\">''\\r\\n      . JText::_( ''COM_CCK_ORDERING'' ).''<\\/label>''\\r\\n      . ''<label id=\\"client4_label\\" for=\\"client4\\" class=\\"toggle ''.$selected4.''\\">''\\r\\n      . JText::_( ''COM_CCK_LIST'' ).''<\\/label>''\\r\\n      . ''<label id=\\"client5_label\\" for=\\"client5\\" class=\\"toggle last ''.$selected5.''\\">''\\r\\n      . JText::_( ''COM_CCK_ITEM'' ).''<\\/label>''\\r\\n      . ''<div align=\\"center\\" class=\\"subtabs\\">''\\r\\n      . ''<div id=\\"subtab1\\"><\\/div>''\\r\\n      . ''<div id=\\"subtab2\\">''.JText::_( ''COM_CCK_VIEWS'' ).''<\\/div>''\\r\\n      . ''<div id=\\"subtab3\\"><\\/div>''\\r\\n      . ''<\\/div>''\\r\\n      . ''<\\/fieldset>'';"}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'client', '', '', '', 0, '0000-00-00 00:00:00'),
(313, 'Category Title', 'cat_title', 11, 'text', '', 1, 'Title', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 1, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_category', '#__categories', 'title', '', '', '', 0, '0000-00-00 00:00:00'),
(314, 'Category State', 'cat_state', 11, 'select_simple', '', 1, 'Status', ' ', 3, '', '', '', 'Published=1||Unpublished=0||Archived=2||Trashed=-2', '', 0, 50, 32, 0, 0, 5, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'joomla_category', '#__categories', 'published', '', '', '', 0, '0000-00-00 00:00:00'),
(315, 'Category Parent Id', 'cat_parent_id', 11, 'jform_category', '', 1, 'Parent', 'No Parent', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 4, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_category', '#__categories', 'parent_id', '', '', '', 0, '0000-00-00 00:00:00'),
(316, 'Article Introtext', 'art_introtext', 22, 'wysiwyg_editor', '', 1, 'Introtext', ' ', 3, '', '', '', '', '{"editor":"","width":"100%","height":"280","import":"1"}', 0, 0, 32, 25, 3, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'custom', 'joomla_article', '#__content', 'introtext', 'introtext', '', '', 0, '0000-00-00 00:00:00'),
(317, 'Article Access', 'art_access', 10, 'jform_accesslevel', '', 1, 'Access', ' ', 3, '', '', '1', '', '', 0, 50, 32, 0, 0, 5, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_article', '#__content', 'access', '', '', '', 0, '0000-00-00 00:00:00'),
(318, 'Category Description', 'cat_description', 23, 'wysiwyg_editor', '', 1, 'Description', ' ', 3, '', '', '', '', '{"editor":"","import":"1"}', 0, 50, 32, 25, 3, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'custom', 'joomla_category', '#__categories', 'description', 'description', '', '', 0, '0000-00-00 00:00:00'),
(395, 'Article Grp Metadata', 'art_grp_metadata', 22, 'group', '', 1, 'Metadata Options', ' ', 3, '', '', '', '', '', 1, 1, 32, 0, 1, 0, 0, '', 0, '', 'article_grp_metadata', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'none', '', '', 'art_grp_metadata', '', '', '', 0, '0000-00-00 00:00:00'),
(69, 'Core Elements', 'core_elements', 3, 'checkbox', '', 0, 'Elements', ' ', 3, '', '', 'type,field,search,template', 'Content Type=type||Field=field||Search Type=search||Template=template', '', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'elements', '', '', '', 0, '0000-00-00 00:00:00'),
(2, 'CCK Storage Location', 'cck_storage_location', 3, 'select_dynamic', '', 1, 'Storage Location', ' ', 3, '', '', '', '', '{"query":"","table":"#__extensions","name":"element","where":"folder=\\"cck_storage_location\\" AND enabled=1","value":"element","orderby":"element","orderby_direction":"ASC","limit":"","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'free', '#__cck_core', 'storage_location', '', '', '', 0, '0000-00-00 00:00:00'),
(392, 'Category Permissions', 'cat_rules', 23, 'jform_rules', '', 1, 'Permissions', ' ', 3, '', '', '', '', '{"extension":"com_content","section":"category"}', 0, 50, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_category', '#__categories', 'rules', '', '', '', 0, '0000-00-00 00:00:00'),
(320, 'Article Show Title', 'art_show_title', 16, 'select_simple', '', 1, 'Show Title', 'Use Global', 3, '', '', '', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', 'joomla_article', '#__content', 'attribs', 'show_title', '', '', 0, '0000-00-00 00:00:00'),
(394, 'Article Grp Publishing', 'art_grp_publishing', 22, 'group', '', 1, 'Publishing Options', ' ', 3, '', '', '', '', '', 1, 1, 32, 0, 1, 0, 0, '', 0, '', 'article_grp_publishing', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'none', '', '', 'art_grp_publishing', '', '', '', 0, '0000-00-00 00:00:00'),
(81, 'Core Query', 'core_query', 3, 'select_simple', '', 0, 'Query', ' ', 3, '', '', '0', 'Construction=0||Free=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'bool2', '', '', '', 0, '0000-00-00 00:00:00'),
(79, 'Core Options Where', 'core_options_where', 3, 'text', '', 0, 'Where', ' ', 3, '', '', '', '', '', 0, 0, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[options2][where]', '', '', '', 0, '0000-00-00 00:00:00'),
(78, 'Core Options Name', 'core_options_name', 3, 'text', '', 0, 'Options Name', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[options2][name]', '', '', '', 0, '0000-00-00 00:00:00'),
(77, 'Core Options Value', 'core_options_value', 3, 'text', '', 0, 'Options Value', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[options2][value]', '', '', '', 0, '0000-00-00 00:00:00'),
(322, 'User Block', 'user_block', 24, 'radio', '', 1, 'Block this User', ' ', 3, '', '', '0', 'No=0||Yes=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'joomla_user', '#__users', 'block', '', '', '', 0, '0000-00-00 00:00:00'),
(321, 'User Groups', 'user_groups', 24, 'jform_usergroups', '', 1, 'User Groups', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user', '#__users', 'groups', '', '', '', 0, '0000-00-00 00:00:00'),
(70, 'Core Depth Filter', 'core_depth_filter', 3, 'select_numeric', '', 0, 'Depth', ' ', 3, '', '', '', '', '{"math":"0","first":"#","start":"1","step":"1","end":"10","last":""}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', 'onchange="this.form.submit()"', 'dev', '', '', 'filter_depth', '', '', '', 0, '0000-00-00 00:00:00'),
(323, 'Article Grp Basic', 'art_grp_basic', 22, 'group', '', 1, 'Basic Options', ' ', 3, '', '', '', '', '', 1, 1, 32, 0, 1, 0, 0, '', 0, '', 'article_grp_basic', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'none', 'joomla_article', '', 'art_grp_basic', '', '', '', 0, '0000-00-00 00:00:00'),
(71, 'Core Bool', 'core_bool', 3, 'select_simple', '', 0, 'clear', ' ', 3, '', '', '0', 'No=0||Yes=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'bool', '', '', '', 0, '0000-00-00 00:00:00'),
(72, 'Core Bool2', 'core_bool2', 3, 'select_simple', '', 0, 'clear', ' ', 3, '', '', '0', 'No=0||Yes=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'bool2', '', '', '', 0, '0000-00-00 00:00:00'),
(73, 'Core Bool3', 'core_bool3', 3, 'select_simple', '', 0, 'clear', ' ', 3, '', '', '0', 'No=0||Yes=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'bool3', '', '', '', 0, '0000-00-00 00:00:00'),
(74, 'Core Bool4', 'core_bool4', 3, 'select_simple', '', 0, 'clear', ' ', 3, '', '', '0', 'No=0||Yes=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'bool4', '', '', '', 0, '0000-00-00 00:00:00'),
(75, 'Core Storage Alter', 'core_storage_alter', 3, 'checkbox', '', 0, 'Alter', ' ', 3, '', '', '0', 'Alter=1', '', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'storage_alter', '', '', '', 0, '0000-00-00 00:00:00'),
(76, 'Core Storage Alter Type', 'core_storage_alter_type', 3, 'select_simple', '', 0, 'Alter', 'Select', 3, '', '', 'VARCHAR(255)', 'Datetime=DATETIME||Decimal 10 2=DECIMAL(10,2)||Decimal 10 3=DECIMAL(10,3)||Decimal 10 4=DECIMAL(10,4)||Int 11=INT(11)||Varchar 7=VARCHAR(7)||Varchar 50=VARCHAR(50)||Varchar 255=VARCHAR(255)||Varchar 512=VARCHAR(512)||Varchar 1024=VARCHAR(1024)||Varchar 2048=VARCHAR(2048)||Text=TEXT||Timestamp=TIMESTAMP||Tinyint 3=TINYINT(3)', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'storage_alter_type', '', '', '', 0, '0000-00-00 00:00:00'),
(399, 'User Grp Basic', 'user_grp_basic', 24, 'group', '', 1, 'Basic Options', ' ', 3, '', '', '', '', '', 1, 1, 32, 0, 1, 0, 0, '', 0, '', 'user_grp_basic', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'none', '', '', 'user_grp_basic', '', '', '', 0, '0000-00-00 00:00:00'),
(80, 'Core Options Table', 'core_options_table', 3, 'text', '', 0, 'Table', ' ', 3, '', '', '#__content', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[options2][table]', '', '', '', 0, '0000-00-00 00:00:00'),
(82, 'Core Options Query', 'core_options_query', 3, 'textarea', '', 0, 'SQL Query', ' ', 3, '', '', '', '', '', 0, 0, 50, 92, 4, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[options2][query]', '', '', '', 0, '0000-00-00 00:00:00'),
(324, 'Article Id', 'art_id', 22, 'text', '', 1, 'ID', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_article', '#__content', 'id', '', '', '', 0, '0000-00-00 00:00:00'),
(325, 'Article Readmore', 'art_readmore', 16, 'text', '', 1, 'Read More Text', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', 'joomla_article', '#__content', 'attribs', 'alternative_readmore', '', '', 0, '0000-00-00 00:00:00'),
(326, 'Article Author', 'art_author', 17, 'text', '', 1, 'Author', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', 'joomla_article', '#__content', 'metadata', 'author', '', '', 0, '0000-00-00 00:00:00'),
(327, 'Article External Reference', 'art_xreference', 17, 'text', '', 1, 'External Reference', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', 'joomla_article', '#__content', 'metadata', 'xreference', '', '', 0, '0000-00-00 00:00:00'),
(328, 'Article Alias', 'art_alias', 10, 'text', '', 1, 'Alias', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 2, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_article', '#__content', 'alias', '', '', '', 0, '0000-00-00 00:00:00'),
(329, 'Article Language', 'art_language', 22, 'jform_contentlanguage', '', 1, 'Language', ' ', 3, '', '', '*', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_article', '#__content', 'language', '', '', '', 0, '0000-00-00 00:00:00'),
(330, 'Article Link Titles', 'art_link_titles', 16, 'select_simple', '', 1, 'Linked Titles', 'Use Global', 3, '', '', '', 'No=0||Yes=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', 'joomla_article', '#__content', 'attribs', 'link_titles', '', '', 0, '0000-00-00 00:00:00'),
(331, 'Article Show Intro', 'art_show_intro', 16, 'select_simple', '', 1, 'Show Intro Text', 'Use Global', 3, '', '', '', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', 'joomla_article', '#__content', 'attribs', 'show_intro', '', '', 0, '0000-00-00 00:00:00'),
(332, 'Article Show Category', 'art_show_category', 16, 'select_simple', '', 1, 'Show Category', 'Use Global', 3, '', '', '', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', 'joomla_article', '#__content', 'attribs', 'show_category', '', '', 0, '0000-00-00 00:00:00'),
(333, 'Article Link Category', 'art_link_category', 16, 'select_simple', '', 1, 'Link Category', 'Use Global', 3, '', '', '', 'No=0||Yes=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', 'joomla_article', '#__content', 'attribs', 'link_category', '', '', 0, '0000-00-00 00:00:00'),
(334, 'Article Show Parent Category', 'art_show_prent_category', 16, 'select_simple', '', 1, 'Show Parent', 'Use Global', 3, '', '', '', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', 'joomla_article', '#__content', 'attribs', 'show_parent_category', '', '', 0, '0000-00-00 00:00:00'),
(335, 'Article Link Parent Category', 'art_link_parent_category', 16, 'select_simple', '', 1, 'Link Parent', 'Use Global', 3, '', '', '', 'No=0||Yes=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', 'joomla_article', '#__content', 'attribs', 'link_parent_category', '', '', 0, '0000-00-00 00:00:00'),
(336, 'Article Show Author', 'art_show_author', 16, 'select_simple', '', 1, 'Show Author', 'Use Global', 3, '', '', '', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', 'joomla_article', '#__content', 'attribs', 'show_author', '', '', 0, '0000-00-00 00:00:00'),
(337, 'Article Link Author', 'art_link_author', 16, 'select_simple', '', 1, 'Link Author', 'Use Global', 3, '', '', '', 'No=0||Yes=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', 'joomla_article', '#__content', 'attribs', 'link_author', '', '', 0, '0000-00-00 00:00:00'),
(338, 'Article Show Create Date', 'art_show_create_date', 16, 'select_simple', '', 1, 'Show Create Date', 'Use Global', 3, '', '', '', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', 'joomla_article', '#__content', 'attribs', 'show_create_date', '', '', 0, '0000-00-00 00:00:00'),
(339, 'Article Show Modify Date', 'art_show_modify_date', 16, 'select_simple', '', 1, 'Show Modify Date', 'Use Global', 3, '', '', '', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', 'joomla_article', '#__content', 'attribs', 'show_modify_date', '', '', 0, '0000-00-00 00:00:00');
INSERT INTO `joom_cck_core_fields` (`id`, `title`, `name`, `folder`, `type`, `description`, `published`, `label`, `selectlabel`, `display`, `required`, `validation`, `defaultvalue`, `options`, `options2`, `minlength`, `maxlength`, `size`, `cols`, `rows`, `ordering`, `sorting`, `divider`, `bool`, `location`, `extended`, `style`, `script`, `bool2`, `bool3`, `bool4`, `bool5`, `bool6`, `bool7`, `bool8`, `css`, `attributes`, `storage`, `storage_location`, `storage_table`, `storage_field`, `storage_field2`, `storage_params`, `storages`, `checked_out`, `checked_out_time`) VALUES
(340, 'Article Show Publish Date', 'art_show_publish_date', 16, 'select_simple', '', 1, 'Show Publish Date', 'Use Global', 3, '', '', '', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', 'joomla_article', '#__content', 'attribs', 'show_publish_date', '', '', 0, '0000-00-00 00:00:00'),
(341, 'Article Show Item Navigation', 'art_show_item_navigation', 16, 'select_simple', '', 1, 'Show Navigation', 'Use Global', 3, '', '', '', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', 'joomla_article', '#__content', 'attribs', 'show_item_navigation', '', '', 0, '0000-00-00 00:00:00'),
(342, 'Article Show Icons', 'art_show_icons', 16, 'select_simple', '', 1, 'Show Icons', 'Use Global', 3, '', '', '', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', 'joomla_article', '#__content', 'attribs', 'show_icons', '', '', 0, '0000-00-00 00:00:00'),
(343, 'Article Show Print Icon', 'art_show_print_icon', 16, 'select_simple', '', 1, 'Show Print Icon', 'Use Global', 3, '', '', '', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', 'joomla_article', '#__content', 'attribs', 'show_print_icon', '', '', 0, '0000-00-00 00:00:00'),
(344, 'Article Show Email Icon', 'art_show_email_icon', 16, 'select_simple', '', 1, 'Show Email Icon', 'Use Global', 3, '', '', '', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', 'joomla_article', '#__content', 'attribs', 'show_email_icon', '', '', 0, '0000-00-00 00:00:00'),
(345, 'Article Show Vote', 'art_show_vote', 16, 'select_simple', '', 1, 'Show Voting', 'Use Global', 3, '', '', '', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', 'joomla_article', '#__content', 'attribs', 'show_vote', '', '', 0, '0000-00-00 00:00:00'),
(346, 'Article Show Hits', 'art_show_hits', 16, 'select_simple', '', 1, 'Show Hits', 'Use Global', 3, '', '', '', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', 'joomla_article', '#__content', 'attribs', 'show_hits', '', '', 0, '0000-00-00 00:00:00'),
(347, 'Article Show Unauthorised', 'art_show_noauth', 16, 'select_simple', '', 1, 'Show Unauthorised Links', 'Use Global', 3, '', '', '', 'No=0||Yes=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', 'joomla_article', '#__content', 'attribs', 'show_noauth', '', '', 0, '0000-00-00 00:00:00'),
(348, 'Article Featured', 'art_featured', 22, 'select_simple', '', 1, 'Featured', ' ', 3, '', '', '', 'No=0||Yes=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'joomla_article', '#__content', 'featured', '', '', '', 0, '0000-00-00 00:00:00'),
(349, 'Article Robots', 'art_robots', 17, 'select_simple', '', 1, 'Robots', 'Use Global', 3, '', '', '', 'Index Follow=index, follow||No index follow=noindex, follow||Index No follow=index, nofollow||No index no follow=noindex, nofollow', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', 'joomla_article', '#__content', 'metadata', 'robots', '', '', 0, '0000-00-00 00:00:00'),
(393, 'Article Permissions', 'art_rules', 22, 'jform_rules', '', 1, 'Permissions', ' ', 3, '', '', '', '', '{"extension":"com_content","section":"article"}', 0, 50, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_article', '#__content', 'rules', '', '', '', 0, '0000-00-00 00:00:00'),
(350, 'Article Created', 'art_created', 15, 'calendar', '', 1, 'Created Date', ' ', 3, '', '', '', '', '{"format":"Y-m-d H:i:s","dates":"0","storage_format":"0","time":"12","time_pos":"right","default_hour":"00","default_min":"00","default_sec":"00","theme":"steel","week_numbers":"0"}', 0, 50, 27, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_article', '#__content', 'created', '', '', '', 0, '0000-00-00 00:00:00'),
(351, 'Article Publish Up', 'art_publish_up', 15, 'calendar', '', 1, 'Start Publishing', ' ', 3, '', '', '', '', '{"format":"Y-m-d H:i:s","dates":"0","storage_format":"0","time":"12","time_pos":"right","default_hour":"00","default_min":"00","default_sec":"00","theme":"steel","week_numbers":"0"}', 0, 50, 27, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_article', '#__content', 'publish_up', '', '', '', 0, '0000-00-00 00:00:00'),
(352, 'Article Publish Down', 'art_publish_down', 15, 'calendar', '', 1, 'Finish Publishing', ' ', 3, '', '', '', '', '{"format":"Y-m-d H:i:s","dates":"0","storage_format":"0","time":"12","time_pos":"right","default_hour":"00","default_min":"00","default_sec":"00","theme":"steel","week_numbers":"0"}', 0, 50, 27, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_article', '#__content', 'publish_down', '', '', '', 0, '0000-00-00 00:00:00'),
(353, 'Article Meta Description', 'art_metadesc', 17, 'textarea', '', 1, 'Meta Description', ' ', 3, '', '', '', '', '', 0, 0, 32, 50, 5, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_article', '#__content', 'metadesc', '', '', '', 0, '0000-00-00 00:00:00'),
(354, 'Article Meta Keywords', 'art_metakey', 17, 'textarea', '', 1, 'Meta Keywords', ' ', 3, '', '', '', '', '', 0, 0, 32, 50, 5, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_article', '#__content', 'metakey', '', '', '', 0, '0000-00-00 00:00:00'),
(355, 'Article Rights', 'art_rights', 17, 'textarea', '', 1, 'Content Rights', ' ', 3, '', '', '', '', '', 0, 0, 32, 25, 3, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', 'joomla_article', '#__content', 'metadata', 'rights', '', '', 0, '0000-00-00 00:00:00'),
(356, 'Article Layout', 'art_layout', 16, 'jform_componentlayout', '', 1, 'Alternative Layout', ' ', 3, '', '', '', '', '{"extension":"com_content","view":"article"}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', 'joomla_article', '#__content', 'attribs', 'article_layout', '', '', 0, '0000-00-00 00:00:00'),
(357, 'Article Modified', 'art_modified', 15, 'calendar', '', 1, 'Modified Date', ' ', 3, '', '', '', '', '{"format":"Y-m-d H:i:s","dates":"0","storage_format":"0","time":"12","time_pos":"right","default_hour":"00","default_min":"00","default_sec":"00","theme":"steel","week_numbers":"0"}', 0, 50, 27, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_article', '#__content', 'modified', '', '', '', 0, '0000-00-00 00:00:00'),
(359, 'Article Modified By', 'art_modified_by', 15, 'jform_user', '', 1, 'Modified by', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_article', '#__content', 'modified_by', '', '', '', 0, '0000-00-00 00:00:00'),
(362, 'User Registration Date', 'user_register_date', 24, 'calendar', '', 1, 'Registration Date', ' ', 3, '', '', '', '', '{"format":"Y-m-d H:i:s","dates":"0","storage_format":"0","time":"12","time_pos":"right","default_hour":"00","default_min":"00","default_sec":"00","theme":"steel","week_numbers":"0"}', 0, 50, 27, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user', '#__users', 'registerDate', '', '', '', 0, '0000-00-00 00:00:00'),
(363, 'User Last Visit Date', 'user_lastvisit_date', 24, 'calendar', '', 1, 'Last Visit Date', ' ', 3, '', '', '', '', '{"format":"Y-m-d H:i:s","dates":"0","storage_format":"0","time":"12","time_pos":"right","default_hour":"00","default_min":"00","default_sec":"00","theme":"steel","week_numbers":"0"}', 0, 50, 27, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user', '#__users', 'lastvisitDate', '', '', '', 0, '0000-00-00 00:00:00'),
(364, 'User Send Email', 'user_send_email', 24, 'radio', '', 1, 'Receive System emails', ' ', 3, '', '', '0', 'No=0||Yes=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'joomla_user', '#__users', 'sendEmail', '', '', '', 0, '0000-00-00 00:00:00'),
(365, 'User Id', 'user_id', 24, 'text', '', 1, 'ID', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user', '#__users', 'id', '', '', '', 0, '0000-00-00 00:00:00'),
(366, 'User Admin Style', 'user_admin_style', 21, 'jform_templatestyle', '', 1, 'Backend Template Style', ' ', 3, '', '', '', 'Bluestork - Default=2||Hathor - Default=5', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', 'joomla_user', '#__users', 'params', 'admin_style', '', '', 0, '0000-00-00 00:00:00'),
(367, 'User Admin Language', 'user_admin_language', 21, 'select_dynamic', '', 1, 'Backend Language', 'Use Default', 3, '', '', '', '', '{"query":"","table":"#__extensions","name":"name","where":"type =\\"language\\" AND enabled = 1 AND client_id = 1 AND state = 0","value":"element","orderby":"name","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', 'joomla_user', '#__users', 'params', 'admin_language', '', '', 0, '0000-00-00 00:00:00'),
(368, 'User Language', 'user_language', 21, 'select_dynamic', '', 1, 'Frontend Language', 'Use Default', 3, '', '', '', '', '{"query":"","table":"#__extensions","name":"name","where":"type =\\"language\\" AND enabled = 1 AND client_id = 0 AND state = 0","value":"element","orderby":"name","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', 'joomla_user', '#__users', 'params', 'language', '', '', 0, '0000-00-00 00:00:00'),
(369, 'User Editor', 'user_editor', 21, 'jform_editors', '', 1, 'Editor', ' ', 3, '', '', '', 'Editor - CodeMirror=codemirror||Editor - None=none||Editor - TinyMCE=tinymce', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', 'joomla_user', '#__users', 'params', 'editor', '', '', 0, '0000-00-00 00:00:00'),
(370, 'User Helpsite', 'user_helpsite', 21, 'jform_helpsite', '', 1, 'Help Site', '', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', 'joomla_user', '#__users', 'params', 'helpsite', '', '', 0, '0000-00-00 00:00:00'),
(371, 'User Timezone', 'user_timezone', 21, 'jform_timezone', '', 1, 'Time Zone', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', 'joomla_user', '#__users', 'params', 'timezone', '', '', 0, '0000-00-00 00:00:00'),
(372, 'Category Id', 'cat_id', 23, 'text', '', 1, 'ID', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_category', '#__categories', 'id', '', '', '', 0, '0000-00-00 00:00:00'),
(373, 'Category Alias', 'cat_alias', 11, 'text', '', 1, 'Alias', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 2, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_category', '#__categories', 'alias', '', '', '', 0, '0000-00-00 00:00:00'),
(374, 'Category Access', 'cat_access', 11, 'jform_accesslevel', '', 1, 'Access', ' ', 3, '', '', '1', '', '', 0, 50, 32, 0, 0, 6, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_category', '#__categories', 'access', '', '', '', 0, '0000-00-00 00:00:00'),
(375, 'Category Language', 'cat_language', 23, 'jform_contentlanguage', '', 1, 'Language', ' ', 3, '', '', '*', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_category', '#__categories', 'language', '', '', '', 0, '0000-00-00 00:00:00'),
(376, 'Category Created By', 'cat_created_by', 18, 'jform_user', '', 1, 'Created by', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_category', '#__categories', 'created_user_id', '', '', '', 0, '0000-00-00 00:00:00'),
(377, 'Category Layout', 'cat_layout', 19, 'jform_componentlayout', '', 1, 'Alternative Layout', ' ', 3, '', '', '', '', '{"extension":"com_content","view":"category"}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', 'joomla_category', '#__categories', 'params', 'category_layout', '', '', 0, '0000-00-00 00:00:00'),
(378, 'Category Image', 'cat_image', 19, 'jform_media', '', 1, 'Image', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', 'joomla_category', '#__categories', 'params', 'image', '', '', 0, '0000-00-00 00:00:00'),
(379, 'Category Note', 'cat_note', 19, 'text', '', 1, 'Note', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_category', '#__categories', 'note', '', '', '', 0, '0000-00-00 00:00:00'),
(380, 'Category Meta Description', 'cat_metadesc', 20, 'textarea', '', 1, 'Meta Description', ' ', 3, '', '', '', '', '', 0, 0, 32, 50, 5, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_category', '#__categories', 'metadesc', '', '', '', 0, '0000-00-00 00:00:00'),
(381, 'Category Meta Keywords', 'cat_metakey', 20, 'textarea', '', 1, 'Meta Keywords', ' ', 3, '', '', '', '', '', 0, 0, 32, 50, 5, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_category', '#__categories', 'metakey', '', '', '', 0, '0000-00-00 00:00:00'),
(382, 'Category Author', 'cat_author', 20, 'text', '', 1, 'Author', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', 'joomla_category', '#__categories', 'metadata', 'author', '', '', 0, '0000-00-00 00:00:00'),
(383, 'Category Robots', 'cat_robots', 20, 'select_simple', '', 1, 'Robots', 'Use Global', 3, '', '', '', 'Index Follow=index, follow||No index follow=noindex, follow||Index No follow=index, nofollow||No index no follow=noindex, nofollow', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', 'joomla_category', '#__categories', 'metadata', 'robots', '', '', 0, '0000-00-00 00:00:00'),
(384, 'Article Version', 'art_version', 15, 'text', '', 1, 'Revision', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_article', '#__content', 'version', '', '', '', 0, '0000-00-00 00:00:00'),
(385, 'Article Hits', 'art_hits', 15, 'text', '', 1, 'Hits', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_article', '#__content', 'hits', '', '', '', 0, '0000-00-00 00:00:00'),
(386, 'Category Created', 'cat_created', 18, 'calendar', '', 1, 'Created Date', ' ', 3, '', '', '', '', '{"format":"Y-m-d H:i:s","dates":"0","storage_format":"0","time":"12","time_pos":"right","default_hour":"00","default_min":"00","default_sec":"00","theme":"steel","week_numbers":"0"}', 0, 50, 27, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_category', '#__categories', 'created_time', '', '', '', 0, '0000-00-00 00:00:00'),
(387, 'Category Modified By', 'cat_modifed_by', 18, 'jform_user', '', 1, 'Modified by', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_category', '#__categories', 'modified_user_id', '', '', '', 0, '0000-00-00 00:00:00'),
(388, 'Category Modified', 'cat_modified', 18, 'calendar', '', 1, 'Modified Date', ' ', 3, '', '', '', '', '{"format":"Y-m-d H:i:s","dates":"0","storage_format":"0","time":"12","time_pos":"right","default_hour":"00","default_min":"00","default_sec":"00","theme":"steel","week_numbers":"0"}', 0, 50, 27, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_category', '#__categories', 'modified_time', '', '', '', 0, '0000-00-00 00:00:00'),
(391, 'User Group Title', 'user_group_title', 14, 'text', '', 1, 'Title', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 1, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user_group', '#__usergroups', 'title', '', '', '', 0, '0000-00-00 00:00:00'),
(390, 'User Group Parent Id', 'user_group_parent_id', 14, 'jform_groupparent', '', 1, 'Parent', ' ', 3, '', '', '1', '', '', 0, 255, 32, 0, 0, 2, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user_group', '#__usergroups', 'parent_id', '', '', '', 0, '0000-00-00 00:00:00'),
(389, 'User Group Id', 'user_group_id', 26, 'text', '', 1, 'ID', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user_group', '#__usergroups', 'id', '', '', '', 0, '0000-00-00 00:00:00'),
(398, 'Category Grp Metadata', 'cat_grp_metadata', 23, 'group', '', 1, 'Metadata Options', ' ', 3, '', '', '', '', '', 1, 1, 32, 0, 1, 0, 0, '', 0, '', 'category_grp_metadata', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'none', '', '', 'cat_grp_metadata', '', '', '', 0, '0000-00-00 00:00:00'),
(397, 'Category Grp Basic', 'cat_grp_basic', 23, 'group', '', 1, 'Basic Options', ' ', 3, '', '', '', '', '', 1, 1, 32, 0, 1, 0, 0, '', 0, '', 'category_grp_basic', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'none', '', '', 'cat_grp_basic', '', '', '', 0, '0000-00-00 00:00:00'),
(396, 'Category Grp Publishing', 'cat_grp_publishing', 23, 'group', '', 1, 'Publishing Options', ' ', 3, '', '', '', '', '', 1, 1, 32, 0, 1, 0, 0, '', 0, '', 'category_grp_publishing', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'none', '', '', 'cat_grp_publishing', '', '', '', 0, '0000-00-00 00:00:00'),
(83, 'Core Orientation', 'core_orientation', 3, 'select_simple', '', 0, 'Orientation', ' ', 3, '', '', '0', 'Horizontal=0||Vertical=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'bool', '', '', '', 0, '0000-00-00 00:00:00'),
(84, 'Core Option', 'core_option', 3, 'text', '', 0, 'Option', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 2, 0, 0, '', 0, '', 'core_options', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'options', '', '', '', 0, '0000-00-00 00:00:00'),
(85, 'Core Separator', 'core_separator', 3, 'text', '', 0, 'Separator', ' ', 3, '', '', ',', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'divider', '', '', '', 0, '0000-00-00 00:00:00'),
(86, 'Core Field Orientation', 'core_field_orientation', 3, 'select_simple', '', 0, 'Orientation', ' ', 3, '', '', 'vertical', 'Horizontal=horizontal||Vertical=vertical', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'field_orientation', '', '', '', 0, '0000-00-00 00:00:00'),
(87, 'Core Field Label Width', 'core_field_label_width', 3, 'text', '', 0, 'Width', ' ', 3, '', '', '145px', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'field_label_width', '', '', '', 0, '0000-00-00 00:00:00'),
(88, 'Core Background Color', 'core_background_color', 3, 'colorpicker', '', 0, 'Background Color', ' ', 3, '', '', 'none', '', '', 0, 50, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'background_color', '', '', '', 0, '0000-00-00 00:00:00'),
(89, 'Core Border Color', 'core_border_color', 3, 'colorpicker', '', 0, 'Border Color', ' ', 3, '', '', '#dedede', '', '', 0, 50, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'border_color', '', '', '', 0, '0000-00-00 00:00:00'),
(90, 'Core Border Size', 'core_border_size', 3, 'select_numeric', '', 0, 'Border Size', ' ', 3, '', '', '0', '', '{"math":"0","first":"0","start":"1","step":"1","end":"10","last":""}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'border_size', '', '', '', 0, '0000-00-00 00:00:00'),
(91, 'Core Border Radius', 'core_border_radius', 3, 'select_numeric', '', 0, 'Border Radius', ' ', 3, '', '', '5', '', '{"math":"0","first":"0","start":"1","step":"1","end":"10","last":""}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'border_radius', '', '', '', 0, '0000-00-00 00:00:00'),
(92, 'Core Legend Align', 'core_legend_align', 3, 'select_simple', '', 0, 'Align', ' ', 3, '', '', 'left', 'Center=center||Left=left||Right=right', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', 'joomla_article', '', 'legend_align', '', '', '', 0, '0000-00-00 00:00:00'),
(93, 'Core Legend Typo', 'core_legend_typo', 3, 'select_simple', '', 0, 'Typo', 'Default', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', 'joomla_article', '#__content', 'legend_typo', '', '', '', 0, '0000-00-00 00:00:00'),
(94, 'Core Position Left', 'core_position_left', 3, 'text', '', 0, 'Left Column Width', ' ', 3, '', '', '0', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'position_left', '', '', '', 0, '0000-00-00 00:00:00'),
(95, 'Core Position Right', 'core_position_right', 3, 'text', '', 0, 'Right Column Width', ' ', 3, '', '', '400', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'position_right', '', '', '', 0, '0000-00-00 00:00:00'),
(96, 'Core Position Top', 'core_position_top', 3, 'select_simple', '', 0, 'Top Line', ' ', 3, '', '', '1', 'No=0||Height=optgroup||Auto=1||Deepest=2', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'position_top', '', '', '', 0, '0000-00-00 00:00:00'),
(97, 'Core Position Bottom', 'core_position_bottom', 3, 'select_simple', '', 0, 'Bottom Line', ' ', 3, '', '', '1', 'No=0||Height=optgroup||Auto=1||Deepest=2', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'position_bottom', '', '', '', 0, '0000-00-00 00:00:00'),
(98, 'Core Position Header', 'core_position_header', 3, 'select_simple', '', 0, 'Header Line', ' ', 3, '', '', '0', 'No=0||Height=optgroup||Auto=1||Deepest=2', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'position_header', '', '', '', 0, '0000-00-00 00:00:00'),
(99, 'Core Position Footer', 'core_position_footer', 3, 'select_simple', '', 0, 'Footer Line', ' ', 3, '', '', '0', 'No=0||Height=optgroup||Auto=1||Deepest=2', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'position_footer', '', '', '', 0, '0000-00-00 00:00:00'),
(100, 'Core Position Left Variation', 'core_position_left_variation', 3, 'text', '', 0, 'Left Column Variation', ' ', 3, '', '', '', '', '', 0, 255, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'position_left_variation', '', '', '', 0, '0000-00-00 00:00:00'),
(101, 'Core Position Right Variation', 'core_position_right_variation', 3, 'text', '', 0, 'Right Column Variation', ' ', 3, '', '', '', '', '', 0, 255, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'position_right_variation', '', '', '', 0, '0000-00-00 00:00:00'),
(102, 'Core Position Top Variation', 'core_position_top_variation', 3, 'text', '', 0, 'Top Line Variation', ' ', 3, '', '', '', '', '', 0, 255, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'position_top_variation', '', '', '', 0, '0000-00-00 00:00:00'),
(103, 'Core Position Bottom Variation', 'core_position_bottom_variation', 3, 'text', '', 0, 'Bottom Line Variation', ' ', 3, '', '', '', '', '', 0, 255, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'position_bottom_variation', '', '', '', 0, '0000-00-00 00:00:00'),
(104, 'Core Position Header Variation', 'core_position_header_variation', 3, 'text', '', 0, 'Header Line Variation', ' ', 3, '', '', '', '', '', 0, 255, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'position_header_variation', '', '', '', 0, '0000-00-00 00:00:00'),
(105, 'Core Positon Footer Variation', 'core_position_footer_variation', 3, 'text', '', 0, 'Position Footer Variation', ' ', 3, '', '', '', '', '', 0, 255, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'position_footer_variation', '', '', '', 0, '0000-00-00 00:00:00'),
(106, 'Core Linkage', 'core_linkage', 3, '42', '', 0, 'Storage', ' ', 3, '', '', '1', '', '{"preparecontent":"","prepareform":"$value = $field->defaultvalue;\\r\\nif ( $value == ''0'' ) {\\r\\n $c0 = ''checked=\\"checked\\"''; $c1 = ''''; $class = ''unlinked'';\\r\\n} else {\\r\\n $c0 = ''''; $c1 = ''checked=\\"checked\\"''; $class = ''linked'';\\r\\n}\\r\\n$desc = JText::_( ''COM_CCK_STORAGE_DESC_SHORT'' );\\r\\n$form = ''<input type=\\"radio\\" id=\\"''.$name.''0\\" name=\\"''.$name.''\\" value=\\"0\\" ''.$c0\\r\\n      . '' style=\\"display:none;\\" \\/>''\\r\\n      . ''<input type=\\"radio\\" id=\\"''.$name.''1\\" name=\\"''.$name.''\\" value=\\"1\\" ''.$c1\\r\\n      . '' style=\\"display:none;\\" \\/>''\\r\\n      . ''<a href=\\"javascript: void(0);\\" id=\\"''.$name.''\\" class=\\"switch qtip_cck\\" title=\\"''\\r\\n      . $desc.''\\">''\\r\\n      . ''<span class=\\"''.$name.'' ''.$class.''\\">''\\r\\n      . ''<\\/span>''\\r\\n      . ''<\\/a>'';","preparestore":""}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'linkage', '', '', '', 0, '0000-00-00 00:00:00'),
(107, 'Core Variation', 'core_variation', 3, '42', '', 0, 'Variation', ' ', 3, '', '', '', '', '{"preparecontent":"","prepareform":"require_once JPATH_ADMINISTRATOR.''\\/components\\/com_cck\\/helpers\\/helper_workshop.php'';\\r\\n$options = Helper_Workshop::getPositionVariations( @$config[''item'']->template, false );\\r\\n$attr = ''class=\\"inputbox\\" size=\\"1\\"'';\\r\\n$form = JHtml::_( ''select.genericlist'', $options, $name, $attr, ''value'', ''text'', $value, $id );","preparestore":""}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'variation', '', '', '', 0, '0000-00-00 00:00:00'),
(109, 'Core Place', 'core_place', 3, 'select_simple', '', 0, 'Mode', ' ', 3, '', '', '1', 'Default=1||Modal Box=0', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'bool', '', '', '', 0, '0000-00-00 00:00:00'),
(108, 'Core Options Editor', 'core_options_editor', 3, 'jform_editors', '', 0, 'Editor', ' ', 3, '', '', '', '', '{"table":"#__extensions","name":"element","where":"folder=\\"editors\\" AND enabled=1","value":"element"}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[options2][editor]', '', '', '', 0, '0000-00-00 00:00:00'),
(299, 'Button Submit', 'button_submit', 3, 'button_submit', '', 1, 'Submit', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 1, 1, 0, 0, 0, 0, 0, '', '', 'none', '', '', 'button_submit', '', '', '', 0, '0000-00-00 00:00:00'),
(110, 'Core Options Path', 'core_options_path', 3, 'text', '', 0, 'Folder', ' ', 3, '', '', 'images/', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[options2][path]', '', '', '', 0, '0000-00-00 00:00:00'),
(111, 'Core Options Path (Content)', 'core_options_path_content', 3, 'select_simple', '', 0, 'Path per Content', ' ', 3, '', '', '1', 'No=0||Yes=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'json[options2][path_content]', '', '', '', 0, '0000-00-00 00:00:00'),
(112, 'Core Options Path (User)', 'core_options_path_user', 3, 'select_simple', '', 0, 'Path per User', ' ', 3, '', '', '0', 'No=0||Yes=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'json[options2][path_user]', '', '', '', 0, '0000-00-00 00:00:00'),
(113, 'Core Options Preview Image', 'core_options_preview_image', 3, 'select_simple', '', 0, 'Show Preview', ' ', 3, '', '', '0', 'Hide=-1||Show=optgroup||Filename Title=0||Icon=1||Image=2||Thumb1=3||Thumb2=4||Thumb3=5||Thumb4=6||Thumb5=7||Thumb6=8||Thumb7=9||Thumb8=10||Thumb9=11||Thumb10=12', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'json[options2][preview]', '', '', '', 0, '0000-00-00 00:00:00'),
(114, 'Core Options Legal Extensions Image', 'core_options_legal_extensions_image', 3, 'text', '', 0, 'Legal Extensions', ' ', 3, '', '', 'gif,jpg,png,GIF,JPG,PNG', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[options2][legal_extensions]', '', '', '', 0, '0000-00-00 00:00:00'),
(115, 'Core Options Max Size', 'core_options_max_size', 3, 'text', '', 0, 'Maximum Size', ' ', 3, '', '', '5', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[options2][max_size]', '', '', '', 0, '0000-00-00 00:00:00'),
(116, 'Core Options Delete Box', 'core_options_delete_box', 3, 'select_simple', '', 0, 'Delete Box', ' ', 3, '', '', '1', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'json[options2][delete_box]', '', '', '', 0, '0000-00-00 00:00:00'),
(117, 'Core Options Thumb Process', 'core_options_thumb_process', 3, 'select_simple', '', 0, 'Thumb', ' ', 3, '', '', 'maxfit', 'No Process=0||Resized=optgroup||Crop=crop||Shrink=shrink||Stretch=stretch||Resized Dynamic=optgroup||Crop Dynamic=crop_dynamic||Max Fit=maxfit||Shrink=shrink_dynamic||Stretch=stretch_dynamic', '{"options":[]}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, 'max-width-190', '', 'dev', '', '', 'json[options2][thumb1_process]', '', '', '', 0, '0000-00-00 00:00:00'),
(118, 'Core Options Thumb Width', 'core_options_thumb_width', 3, 'text', '', 0, 'Width', ' ', 3, '', '', '150', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', 'style="text-align: center"', 'dev', '', '', 'json[options2][thumb1_width]', '', '', '', 0, '0000-00-00 00:00:00'),
(119, 'Core Options Thumb Height', 'core_options_thumb_height', 3, 'text', '', 0, 'Height', ' ', 3, '', '', '150', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', 'style="text-align: center"', 'dev', '', '', 'json[options2][thumb1_height]', '', '', '', 0, '0000-00-00 00:00:00'),
(120, 'Core Options Image Process', 'core_options_image_process', 3, 'select_simple', '', 0, 'Image', 'Original', 3, '', '', '', 'Resized=optgroup||Crop=crop||Shrink=shrink||Stretch=stretch||Resized Dynamic=optgroup||Crop Dynamic=crop_dynamic||Max Fit=maxfit||Shrink=shrink_dynamic||Stretch=stretch_dynamic', '{"options":[]}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, 'max-width-190', '', 'dev', '', '', 'json[options2][image_process]', '', '', '', 0, '0000-00-00 00:00:00'),
(121, 'Core Options Image Width', 'core_options_image_width', 3, 'text', '', 0, 'Width', ' ', 3, '', '', '200', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', 'style="text-align: center"', 'dev', '', '', 'json[options2][image_width]', '', '', '', 0, '0000-00-00 00:00:00'),
(122, 'Core Options Image Height', 'core_options_image_height', 3, 'text', '', 0, 'Height', ' ', 3, '', '', '200', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', 'style="text-align: center"', 'dev', '', '', 'json[options2][image_height]', '', '', '', 0, '0000-00-00 00:00:00'),
(123, 'Core Options Send', 'core_options_send', 3, 'select_simple', '', 0, 'Send Email', ' ', 3, '', '', '0', 'Never=0||Submission=1||Edition=2||Always=3', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'json[options2][send]', '', '', '', 0, '0000-00-00 00:00:00'),
(124, 'Core Options From', 'core_options_from', 3, 'select_simple', '', 0, 'From', ' ', 3, '', '', '0', 'Default=0||Email=1||Field=3', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'json[options2][from]', '', '', '', 0, '0000-00-00 00:00:00'),
(125, 'Core Options To Admin', 'core_options_to_admin', 3, 'select_dynamic', '', 0, 'To Admin', ' ', 3, '', '', '', '', '{"query":"SELECT us.username AS text, us.id AS value FROM #__users us, #__user_usergroup_map gr WHERE gr.group_id = 8 AND gr.user_id = us.id","table":"#__content","name":"","where":"","value":"","orderby":"","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 255, 32, 0, 6, 0, 0, ',', 0, '', '', '', '', 1, 1, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'json[options2][to_admin]', '', '', '', 0, '0000-00-00 00:00:00'),
(126, 'Core Options To', 'core_options_to', 3, 'textarea', '', 0, 'To', ' ', 3, '', '', '', '', '', 0, 255, 32, 25, 3, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[options2][to]', '', '', '', 0, '0000-00-00 00:00:00'),
(127, 'Core Options To Field', 'core_options_to_field', 3, 'textarea', '', 0, 'To Field', ' ', 3, '', '', '', '', '', 0, 255, 32, 25, 3, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[options2][to_field]', '', '', '', 0, '0000-00-00 00:00:00'),
(128, 'Core Options Message', 'core_options_message', 3, 'wysiwyg_editor', '', 0, 'Message', ' ', 3, '', '', '', '', '{"editor":"","import":""}', 0, 255, 32, 25, 3, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[options2][message]', '', '', '', 0, '0000-00-00 00:00:00'),
(129, 'Core Options Subject', 'core_options_subject', 3, 'text', '', 0, 'Subject', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[options2][subject]', '', '', '', 0, '0000-00-00 00:00:00'),
(130, 'Core Options From Param', 'core_options_from_param', 3, 'text', '', 0, 'From Param', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[options2][from_param]', '', '', '', 0, '0000-00-00 00:00:00'),
(131, 'Core Options Legal Extensions', 'core_options_legal_extensions', 3, 'text', '', 0, 'Legal Extensions', ' ', 3, '', '', 'doc,pdf,ppt,xls,zip,DOC,PDF,PPT,XLS,ZIP', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[options2][legal_extensions]', '', '', '', 0, '0000-00-00 00:00:00'),
(132, 'Core Options Preview', 'core_options_preview', 3, 'select_simple', '', 0, 'Show Preview', ' ', 3, '', '', '0', 'Hide=-1||Show=optgroup||Filename Title=0||Icon=1||Show No Link=optgroup||Filename Title=8', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'json[options2][preview]', '', '', '', 0, '0000-00-00 00:00:00'),
(133, 'Core Options Import', 'core_options_import', 3, 'select_simple', '', 0, 'Importer', 'None', 3, '', '', '', 'Wysiwyg Auto=1||Wysiwyg Specific=2', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'json[options2][import]', '', '', '', 0, '0000-00-00 00:00:00'),
(134, 'Core Options Categories', 'core_options_categories', 3, 'jform_category', '', 0, 'Categories', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 6, 0, 0, '', 0, '', '', '', '', 0, 1, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'string[options]', '', '', '', 0, '0000-00-00 00:00:00'),
(135, 'Core Options Size Unit', 'core_options_size_unit', 3, 'select_simple', '', 0, 'Unit', ' ', 3, '', '', '2', 'B=0||KB=1||MB=2', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'json[options2][size_unit]', '', '', '', 0, '0000-00-00 00:00:00'),
(136, 'Core Template Intro', 'core_template_intro', 3, 'select_dynamic', '', 0, 'Style', ' ', 3, '', '', '', '', '{"query":"","table":"#__template_styles","name":"title","where":"","value":"id","orderby":"","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', 'style="max-width:190px;"', 'dev', '', '', 'template_intro', '', '', '', 0, '0000-00-00 00:00:00'),
(137, 'Core Template Search', 'core_template_search', 3, 'select_dynamic', '', 0, 'Style', ' ', 3, '', '', '', '', '{"query":"","table":"#__template_styles","name":"title","where":"","value":"id","orderby":"","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', 'style="max-width:190px;"', 'dev', '', '', 'template_search', '', '', '', 0, '0000-00-00 00:00:00'),
(138, 'Core Template List', 'core_template_list', 3, 'select_dynamic', '', 0, 'Style', ' ', 3, '', '', '', '', '{"query":"","table":"#__template_styles","name":"title","where":"","value":"id","orderby":"","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', 'style="max-width:190px;"', 'dev', '', '', 'template_list', '', '', '', 0, '0000-00-00 00:00:00'),
(139, 'Core Border Style', 'core_border_style', 3, 'select_simple', '', 0, 'Border Style', 'Select a Style', 3, '', '', 'solid', 'dashed||dotted||double||groove||hidden||inherit||inset||none||outset||ridge||solid', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'border_style', '', '', '', 0, '0000-00-00 00:00:00'),
(140, 'Core Field Label Align', 'core_field_label_align', 3, 'select_simple', '', 0, 'Align', ' ', 3, '', '', 'left', 'Left=left||Right=right', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'field_label_align', '', '', '', 0, '0000-00-00 00:00:00'),
(141, 'Core Field Label Padding Left', 'core_field_label_padding_left', 3, 'select_numeric', '', 0, 'Field Label Padding Left', ' ', 3, '', '', '0', '', '{"math":"0","first":"","start":"0","step":"1","end":"100","last":""}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'field_label_padding_left', '', '', '', 0, '0000-00-00 00:00:00'),
(142, 'Core Field Label Padding Right', 'core_field_label_padding_right', 3, 'select_numeric', '', 0, 'Field Label Padding Right', ' ', 3, '', '', '0', '', '{"math":"0","first":"","start":"0","step":"1","end":"100","last":""}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'field_label_padding_right', '', '', '', 0, '0000-00-00 00:00:00'),
(400, 'Article Fulltext', 'art_fulltext', 22, 'wysiwyg_editor', '', 1, 'Fulltext', ' ', 3, '', '', '', '', '{"editor":"","import":"2"}', 0, 50, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'custom', 'joomla_article', '#__content', 'introtext', 'fulltext', '', '', 0, '0000-00-00 00:00:00'),
(143, 'Core Social', 'core_social', 3, 'checkbox', '', 0, 'Core Social', ' ', 3, '', '', '', 'Complete=all,google,technorati,yahoo,delicious,stumbleupon,digg,facebook,reddit,myspace,live,twitter,recommand||All=all||Google=google||Technorati=technorati||Yahoo=yahoo||Delicious=delicious||Stumbleupon=stumbleupon||Digg=digg||Facebook=facebook||Reddit=reddit||Myspace=myspace||Live=live||Twitter=twitter||Recommand=recommand', '', 0, 50, 32, 0, 3, 0, 0, ',', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'string[options]', '', '', '', 0, '0000-00-00 00:00:00'),
(144, 'Core Options Video Width', 'core_options_video_width', 3, 'text', '', 0, 'Width', ' ', 3, '', '', '320', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[options2][video_width]', '', '', '', 0, '0000-00-00 00:00:00'),
(145, 'Core Options Video Height', 'core_options_video_height', 3, 'text', '', 0, 'Height', ' ', 3, '', '', '240', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[options2][video_height]', '', '', '', 0, '0000-00-00 00:00:00'),
(146, 'Core Options Video Preview', 'core_options_video_preview', 3, 'select_simple', '', 0, 'Show Preview', ' ', 3, '', '', '0', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'json[options2][video_preview]', '', '', '', 0, '0000-00-00 00:00:00'),
(147, 'Core Options Width', 'core_options_width', 3, 'text', '', 0, 'Width', ' ', 3, '', '', '320', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[options2][width]', '', '', '', 0, '0000-00-00 00:00:00'),
(148, 'Core Options Height', 'core_options_height', 3, 'text', '', 0, 'Height', ' ', 3, '', '', '240', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[options2][height]', '', '', '', 0, '0000-00-00 00:00:00'),
(298, 'Captcha Math', 'captcha_math', 3, 'captcha_math', '', 1, 'Captcha', ' ', 3, '', '', '', '', '', 0, 50, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'none', '', '', 'captcha_math', '', '', '', 0, '0000-00-00 00:00:00'),
(149, 'Core Message', 'core_message', 3, 'textarea', '', 0, 'Message', ' ', 3, '', '', '', '', '', 0, 255, 32, 25, 3, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'options[message]', '', '', '', 0, '0000-00-00 00:00:00'),
(150, 'Core Field Width', 'core_field_width', 3, 'text', '', 0, 'Width', ' ', 3, '', '', '100%', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'field_width', '', '', '', 0, '0000-00-00 00:00:00'),
(151, 'Core Field Label Position', 'core_field_label_position', 3, 'select_simple', '', 0, 'Label Position', ' ', 3, '', '', 'left', 'Above=top||Left=left', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'field_label_position', '', '', '', 0, '0000-00-00 00:00:00'),
(152, 'Core Display', 'core_display', 3, 'select_simple', '', 0, 'Display', ' ', 3, '', '', '0', 'Intro=2||Link=0||Title=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'bool', '', '', '', 0, '0000-00-00 00:00:00'),
(153, 'Core Field Label', 'core_field_label', 3, 'select_simple', '', 0, 'Show Label', ' ', 3, '', '', '1', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'field_label', '', '', '', 0, '0000-00-00 00:00:00'),
(154, 'Core Field Description', 'core_field_description', 3, 'select_simple', '', 0, 'Show Description', ' ', 3, '', '', '0', 'Hide=0||Show=optgroup||At the right of FormValue=4||Below Field=1||Below FormValue=2||Below Label=3||Popover=5', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'field_description', '', '', '', 0, '0000-00-00 00:00:00'),
(155, 'Core Position Margin', 'core_position_margin', 3, 'select_numeric', '', 0, 'Position Margin', ' ', 3, '', '', '10', '', '{"math":"0","start":"0","first":"","step":"1","last":"","end":"20","force_digits":"0"}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'position_margin', '', '', '', 0, '0000-00-00 00:00:00'),
(156, 'Core Field Label Color', 'core_field_label_color', 3, 'colorpicker', '', 0, 'Color', ' ', 3, '', '', '', '', '', 0, 50, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'field_label_color', '', '', '', 0, '0000-00-00 00:00:00'),
(157, 'Core Typo', 'core_typo', 3, 'select_simple', '', 0, 'Use Typo', ' ', 3, '', '', '1', 'No=0||Yes=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'options[typo]', '', '', '', 0, '0000-00-00 00:00:00'),
(158, 'Core Legend Fieldname', 'core_legend_fieldname', 3, 'text', '', 0, 'Field Name', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'legend_fieldname', '', '', '', 0, '0000-00-00 00:00:00'),
(159, 'Core Field Label2', 'core_field_label2', 3, 'select_simple', '', 0, 'Show Label', 'Use Global', 3, '', '', '', 'No=0||Yes=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'field_label2', '', '', '', 0, '0000-00-00 00:00:00'),
(160, 'Core Options Class', 'core_options_class', 3, 'text', '', 0, 'Default Class', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[options2][class]', '', '', '', 0, '0000-00-00 00:00:00'),
(161, 'Core Options Target', 'core_options_target', 3, 'select_simple', '', 0, 'Target', ' ', 3, '', '', '_blank', 'Target Blank=_blank||Target Self=_self||Target Parent=_parent||Target Top=_top', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'json[options2][target]', '', '', '', 0, '0000-00-00 00:00:00'),
(162, 'Core Featured', 'core_featured', 3, 'radio', '', 0, 'Featured', ' ', 3, '', '', '0', 'No=0||Yes Featured=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'featured', '', '', '', 0, '0000-00-00 00:00:00'),
(163, 'Core Title', 'core_title', 3, 'text', '', 0, 'Override Title', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'options[title]', '', '', '', 0, '0000-00-00 00:00:00'),
(164, 'Core Options Theme (Calendar)', 'core_options_theme_calendar', 3, 'select_simple', '', 0, 'Theme', ' ', 3, '', '', 'steel', 'Gold=gold||Steel=steel||Win2k', '', 0, 50, 32, 0, 10, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'json[options2][theme]', '', '', '', 0, '0000-00-00 00:00:00'),
(165, 'Core Options Time Pos', 'core_options_time_pos', 3, 'select_simple', '', 0, 'Position', ' ', 3, '', '', 'right', 'Left=left||Right=right', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'json[options2][time_pos]', '', '', '', 0, '0000-00-00 00:00:00'),
(166, 'Core Options Dates', 'core_options_dates', 3, 'select_simple', '', 0, 'Date Range', ' ', 3, '', '', '0', 'All Dates=0||Past=1||Past Today=2||Today Future=3||Future=4', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'json[options2][dates]', '', '', '', 0, '0000-00-00 00:00:00'),
(167, 'Core Options Week Numbers', 'core_options_week_numbers', 3, 'select_simple', '', 0, 'Show Week Numbers', ' ', 3, '', '', '0', 'Hide=0||Show=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'json[options2][week_numbers]', '', '', '', 0, '0000-00-00 00:00:00'),
(168, 'Core Options Time', 'core_options_time', 3, 'select_simple', '', 0, 'Time', ' ', 3, '', '', '12', 'No=0||12=12||24=24', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'json[options2][time]', '', '', '', 0, '0000-00-00 00:00:00'),
(169, 'Core Position Padding', 'core_position_padding', 3, 'text', '', 0, 'Padding', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'position_padding', '', '', '', 0, '0000-00-00 00:00:00'),
(170, 'Core Video Markup', 'core_video_markup', 3, 'select_simple', '', 0, 'Markup', ' ', 3, '', '', '0', 'Iframe=0||Embed=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'bool2', '', '', '', 0, '0000-00-00 00:00:00'),
(171, 'Core Dev Text', 'core_dev_text', 3, 'text', '', 0, 'clear', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'text', '', '', '', 0, '0000-00-00 00:00:00'),
(172, 'Core Pagination', 'core_pagination', 3, 'select_simple', '', 0, 'Pagination', 'Use Global', 3, '', '', '', 'Use Native=-1||1||2||3||4||5||6||8||9||10||12||15||20||25||30||50||100||All=0', '{"options":[]}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'options[pagination]', '', '', '', 0, '0000-00-00 00:00:00'),
(173, 'Core Limit', 'core_limit', 3, 'text', '', 0, 'Limit', ' ', 3, '', '', '0', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'options[limit]', '', '', '', 0, '0000-00-00 00:00:00'),
(174, 'Core Debug', 'core_debug', 3, 'select_simple', '', 0, 'Debug', 'Use Global', 3, '', '', '', 'No=0||Yes=optgroup||Yes for Everyone=1||Yes for Super Admin=2', '{"options":[]}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'options[debug]', '', '', '', 0, '0000-00-00 00:00:00'),
(175, 'Core Cache', 'core_cache', 3, 'select_simple', '', 0, 'Cache', ' ', 3, '', '', '0', 'OFF=0||ON=optgroup||Global=1||Self=2', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'options[cache]', '', '', '', 0, '0000-00-00 00:00:00'),
(176, 'Core Message Style', 'core_message_style', 3, 'select_simple', '', 0, 'Message Style', ' ', 3, '', '', 'message', 'None=0||Page=-1||Joomla=optgroup||Error=error||Message=message||Notice=notice', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'options[message_style]', '', '', '', 0, '0000-00-00 00:00:00');
INSERT INTO `joom_cck_core_fields` (`id`, `title`, `name`, `folder`, `type`, `description`, `published`, `label`, `selectlabel`, `display`, `required`, `validation`, `defaultvalue`, `options`, `options2`, `minlength`, `maxlength`, `size`, `cols`, `rows`, `ordering`, `sorting`, `divider`, `bool`, `location`, `extended`, `style`, `script`, `bool2`, `bool3`, `bool4`, `bool5`, `bool6`, `bool7`, `bool8`, `css`, `attributes`, `storage`, `storage_location`, `storage_table`, `storage_field`, `storage_field2`, `storage_params`, `storages`, `checked_out`, `checked_out_time`) VALUES
(177, 'Core SEF', 'core_sef', 3, 'select_simple', '', 0, 'SEF Urls', 'Use Global', 3, '', '', '', 'Joomla=optgroup||Use Native=0||SEBLOD=optgroup||SEF Mode Alias=23||SEF Mode Alias Safe=24||SEF Mode Id=22||SEF Mode Id Alias=2||SEBLOD Advanced=optgroup||SEF Mode Parent Alias=43||SEF Mode Parent Id=42||SEF Mode Parent Id Alias=4||SEF Mode Type Alias=33||SEF Mode Type Id=32||SEF Mode Type Id Alias=3||SEBLOD Deprecated=optgroup||Optimized=1', '{"options":[]}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'options[sef]', '', '', '', 0, '0000-00-00 00:00:00'),
(178, 'Core Template Item', 'core_template_item', 3, 'select_dynamic', '', 0, 'Style', ' ', 3, '', '', '', '', '{"query":"","table":"#__template_styles","name":"title","where":"","value":"id","orderby":"","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', 'style="max-width:190px;"', 'dev', '', '', 'template_item', '', '', '', 0, '0000-00-00 00:00:00'),
(179, 'Core Action', 'core_action', 3, 'select_simple', '', 0, 'Action', ' ', 3, '', '', '0', 'None=0||Include File=file||Render Template=template', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'options[action]', '', '', '', 0, '0000-00-00 00:00:00'),
(180, 'Core Redirection Url (No Access)', 'core_redirection_url_no_access', 3, 'text', '', 0, 'Redirection Url', ' ', 3, '', '', 'index.php?option=com_users&view=login', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'options[redirection_url_no_access]', '', '', '', 0, '0000-00-00 00:00:00'),
(181, 'Core Action No Access', 'core_action_no_access', 3, 'select_simple', '', 0, 'Action', ' ', 3, '', '', 'redirection', 'None=0||Redirection=redirection', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'options[action_no_access]', '', '', '', 0, '0000-00-00 00:00:00'),
(182, 'Core Options Format Date', 'core_options_format_date', 3, 'select_simple', '', 0, 'Format', ' ', 3, '', '', '0', 'DATETIME=0||TIMESTAMP=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'json[options2][format_date]', '', '', '', 0, '0000-00-00 00:00:00'),
(183, 'Core Options Force Thumb Creation', 'core_options_force_thumb_creation', 3, 'select_simple', '', 0, 'Force Thumb Creation', ' ', 3, '', '', '', 'On Upload=0||If Not Exist=1||Always=2', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'json[options2][force_thumb_creation]', '', '', '', 0, '0000-00-00 00:00:00'),
(184, 'Core Options Orderby', 'core_options_orderby', 3, 'text', '', 0, 'Order By', ' ', 3, '', '', '', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[options2][orderby]', '', '', '', 0, '0000-00-00 00:00:00'),
(185, 'Core Options Language Codes', 'core_options_language_codes', 3, 'text', '', 0, 'Language Codes', ' ', 3, '', '', 'EN,GB,US,FR', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[options2][language_codes]', '', '', '', 0, '0000-00-00 00:00:00'),
(186, 'Core Options Language Default', 'core_options_language_default', 3, 'text', '', 0, 'Default Language', ' ', 3, '', '', 'EN', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[options2][language_default]', '', '', '', 0, '0000-00-00 00:00:00'),
(187, 'Core Options Language Detection', 'core_options_language_detection', 3, 'select_simple', '', 0, 'Language Detection', ' ', 3, '', '', 'joomla', 'Joomla=joomla||GeoIP=geoip', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'json[options2][language_detection]', '', '', '', 0, '0000-00-00 00:00:00'),
(3, 'CCK Storage Table', 'cck_storage_table', 3, 'text', '', 1, '', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'free', '#__cck_core', 'storage_table', '', '', '', 0, '0000-00-00 00:00:00'),
(4, 'CCK Author Id', 'cck_author_id', 3, 'text', '', 1, 'Author Id', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'free', '#__cck_core', 'author_id', '', '', '', 0, '0000-00-00 00:00:00'),
(5, 'CCK Parent Id', 'cck_parent_id', 3, 'text', '', 1, 'Parent Id', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'free', '#__cck_core', 'parent_id', '', '', '', 0, '0000-00-00 00:00:00'),
(6, 'CCK Date Time', 'cck_date_time', 3, 'text', '', 1, 'Date Time', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'free', '#__cck_core', 'date_time', '', '', '', 0, '0000-00-00 00:00:00'),
(188, 'Core Redirection', 'core_redirection', 3, 'select_simple', '', 0, 'Redirection', ' ', 3, '', '', 'current', 'Content=content||Current=current||Current Full=current_full||Form=form||Form Edition=form_edition||Url=url', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'options[redirection]', '', '', '', 0, '0000-00-00 00:00:00'),
(189, 'Core Redirection Url', 'core_redirection_url', 3, 'text', '', 0, 'Redirection Url', ' ', 3, 'required', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'options[redirection_url]', '', '', '', 0, '0000-00-00 00:00:00'),
(190, 'Core Dev Select', 'core_dev_select', 3, 'select_simple', '', 0, 'clear', 'Select an Option', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'select', '', '', '', 0, '0000-00-00 00:00:00'),
(191, 'Core Field Focus Border Color', 'core_field_focus_border_color', 3, 'colorpicker', '', 0, 'Focus Border Color', ' ', 3, '', '', '#888888', '', '', 0, 50, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'field_focus_border_color', '', '', '', 0, '0000-00-00 00:00:00'),
(192, 'Core Storage Alter Table', 'core_storage_alter_table', 3, 'select_simple', '', 0, 'Alter', ' ', 3, '', '', '0', '_=0||Alter Original Table=1', '', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '#__assets', 'storage_alter_table', '', '', '', 0, '0000-00-00 00:00:00'),
(193, 'Core Options MultiValue Mode', 'core_options_multivalue_mode', 3, 'select_simple', '', 0, 'MultiValue Mode', ' ', 3, '', '', '', 'No=0||Yes Multivalue Mode=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'json[options2][multivalue_mode]', '', '', '', 0, '0000-00-00 00:00:00'),
(194, 'Core Validation Scroll', 'core_validation_scroll', 3, 'select_simple', '', 0, 'Scroll', 'Use Global', 3, '', '', '', 'Yes=1||No=0', '{"options":[]}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'options[validation_scroll]', '', '', '', 0, '0000-00-00 00:00:00'),
(195, 'Core Validation Position', 'core_validation_position', 3, 'select_simple', '', 0, 'Position', 'Use Global', 3, '', '', '', 'Position bottomLeft=bottomLeft||Position bottomRight=bottomRight||Position inline=inline||Position centerRight=centerRight||Position topLeft=topLeft||Position topRight=topRight', '{"options":[]}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'options[validation_position]', '', '', '', 0, '0000-00-00 00:00:00'),
(196, 'Core Validation Style', 'core_validation_style', 3, 'select_simple', '', 0, 'Style', ' ', 3, '', '', 'balloon', 'Balloon=balloon||Text=text', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'options[validation_style]', '', '', '', 0, '0000-00-00 00:00:00'),
(197, 'Core Validation Color', 'core_validation_color', 3, 'colorpicker', '', 0, 'Color', ' ', 3, '', '', '', '', '', 0, 255, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'options[validation_color]', '', '', '', 0, '0000-00-00 00:00:00'),
(198, 'Core Validation Background Color', 'core_validation_background_color', 3, 'colorpicker', '', 0, 'Background Color', ' ', 3, '', '', '', '', '', 0, 255, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'options[validation_background_color]', '', '', '', 0, '0000-00-00 00:00:00'),
(199, 'Core Dev Textarea', 'core_dev_textarea', 3, 'textarea', '', 0, 'clear', ' ', 3, '', '', '', '', '', 0, 255, 32, 25, 3, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'textarea', '', '', '', 0, '0000-00-00 00:00:00'),
(200, 'Core Options Html', 'core_options_html', 3, 'textarea', '', 0, 'Html', ' ', 3, '', '', '', '', '', 0, 0, 32, 92, 24, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[options2][html]', '', '', '', 0, '0000-00-00 00:00:00'),
(201, 'Core Title (Site)', 'core_title_site', 3, 'text', '', 0, 'Title', ' ', 3, 'required', '', '', '', '', 0, 255, 28, 0, 0, 0, 0, '', 0, '', '', '', 'if(!$("#title").val()){ $("#title").focus(); }', 0, 0, 0, 0, 0, 0, 0, '', 'tabindex="1"', 'dev', '', '', 'title', '', '', '', 0, '0000-00-00 00:00:00'),
(202, 'Core Name (Site)', 'core_name_site', 3, 'text', '', 0, 'Url', ' ', 3, 'required', '', '', '', '', 0, 100, 28, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', 'tabindex="2"', 'dev', '', '', 'name', '', '', '', 0, '0000-00-00 00:00:00'),
(203, 'Core Guest', 'core_guest', 3, 'select_dynamic', '', 0, 'Guest', 'Select a User', 3, '', '', '', '', '{"query":"SELECT ","table":"#__users","name":"name","where":"","value":"id","orderby":"name","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'guest', '', '', '', 0, '0000-00-00 00:00:00'),
(204, 'Core Viewlevels', 'core_viewlevels', 3, 'select_dynamic', '', 0, 'Viewing Access Levels', ' ', 3, '', '', '', '', '{"query":"","table":"#__viewlevels","name":"title","where":"","value":"id","orderby":"title","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 1, 0, 0, 0, 0, 1, '', '', 'dev', 'joomla_article', '', 'viewlevels', '', '', '', 0, '0000-00-00 00:00:00'),
(205, 'Core Groups', 'core_groups', 3, 'select_dynamic', '', 0, 'User Groups', ' ', 3, '', '', '', '', '{"query":"","table":"#__usergroups","name":"title","where":"","value":"id","orderby":"lft","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 1, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'groups', '', '', '', 0, '0000-00-00 00:00:00'),
(206, 'Core Site Name', 'core_site_name', 3, 'text', '', 0, 'Site Name', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[configuration][sitename]', '', '', '', 0, '0000-00-00 00:00:00'),
(207, 'Core Site Offline', 'core_site_offline', 3, 'radio', '', 0, 'Offline', ' ', 3, '', '', '0', 'No=0||Yes=1', '{"options":[]}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, 'btn-group', '', 'dev', '', '', 'json[configuration][offline]', '', '', '', 0, '0000-00-00 00:00:00'),
(208, 'Core Site Metadesc', 'core_site_metadesc', 3, 'textarea', '', 0, 'Meta Description', ' ', 3, '', '', '', '', '', 0, 255, 32, 25, 3, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[configuration][metadesc]', '', '', '', 0, '0000-00-00 00:00:00'),
(209, 'Core Site Metakeys', 'core_site_metakeys', 3, 'textarea', '', 0, 'Meta Keywords', ' ', 3, '', '', '', '', '', 0, 255, 32, 25, 3, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[configuration][metakeys]', '', '', '', 0, '0000-00-00 00:00:00'),
(210, 'Core Site Pagetitles', 'core_site_pagetitles', 3, 'select_simple', '', 0, 'Include Site Name', ' ', 3, '', '', '', 'No=0||After Page Titles=2||Before Page Titles=1', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'json[configuration][sitename_pagetitles]', '', '', '', 0, '0000-00-00 00:00:00'),
(211, 'Core Site Live Value', 'core_site_live_value', 3, 'text', '', 0, 'Live Value', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'live_value', '', '', '', 0, '0000-00-00 00:00:00'),
(212, 'Core Site Live Values', 'core_site_live_values', 3, 'field_x', '', 0, 'Live Values', ' ', 3, '', '', '', '', '', 1, 10, 32, 0, 1, 0, 0, '', 0, '', 'core_site_live_value', '', '', 1, 1, 1, 0, 0, 0, 0, '', '', 'dev', '', '', 'live_values', '', '', '', 0, '0000-00-00 00:00:00'),
(213, 'Core Guest Only (Viewlevel)', 'core_guest_only_viewlevel', 3, 'select_dynamic', '', 0, 'Guest Only Viewing Access Level', 'Select a Viewing Access Level', 3, '', '', '', '', '{"query":"","table":"#__viewlevels","name":"title","where":"","value":"id","orderby":"title","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'guest_only_viewlevel', '', '', '', 0, '0000-00-00 00:00:00'),
(214, 'Core Site Template_style', 'core_site_template_style', 3, 'select_dynamic', '', 0, 'Template Style', 'Use Default', 3, '', '', '', '', '{"query":"SELECT a.title AS text, a.id AS value FROM #__template_styles AS a LEFT OUTER JOIN #__cck_core_templates AS b ON b.name = a.template WHERE a.client_id = 0 AND b.name IS NULL ORDER by a.title","table":"#__content","name":"title","where":"","value":"","orderby":"","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 1, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'json[configuration][template_style]', '', '', '', 0, '0000-00-00 00:00:00'),
(215, 'Core Site Language', 'core_site_language', 3, 'select_dynamic', '', 0, 'Language', 'Use Default', 3, '', '', '', '', '{"query":"","table":"#__languages","name":"title","where":"","value":"lang_code","orderby":"title","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'json[configuration][language]', '', '', '', 0, '0000-00-00 00:00:00'),
(296, 'Core Not Empty (File)', 'core_not_empty_file', 3, 'checkbox', '', 0, '', ' ', 3, '', '', '', 'Only with File=1', '', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'core_not_empty_file', '', '', '', 0, '0000-00-00 00:00:00'),
(297, 'Core Not Empty (Image)', 'core_not_empty_image', 3, 'checkbox', '', 0, '', ' ', 3, '', '', '', 'Only with Image=1', '', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'core_not_empty_image', '', '', '', 0, '0000-00-00 00:00:00'),
(218, 'Core Menuitem', 'core_menuitem', 3, 'jform_menuitem', '', 0, 'Menu Item', 'Select', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 'max-width-200', '', 'dev', '', '', 'itemid', '', '', '', 0, '0000-00-00 00:00:00'),
(217, 'Core List', 'core_list', 3, 'select_dynamic', '', 0, 'Search Type List', 'Select', 3, 'required', '', '', '', '{"query":"","table":"#__cck_core_searchs","name":"title","where":"published=1","value":"name","orderby":"title","orderby_direction":"ASC","limit":"","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', 'style="max-width:200px;"', 'dev', '', '', 'list', '', '', '', 0, '0000-00-00 00:00:00'),
(219, 'Core Site Homepage', 'core_site_homepage', 3, 'jform_menuitem', '', 0, 'Homepage', 'Use Default', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[configuration][homepage]', '', '', '', 0, '0000-00-00 00:00:00'),
(220, 'Core Guest Only (Group)', 'core_guest_only_group', 3, 'select_dynamic', '', 0, 'Guest Only Group', 'Select a Group', 3, '', '', '', '', '{"query":"","table":"#__usergroups","name":"title","where":"","value":"id","orderby":"lft","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'guest_only_group', '', '', '', 0, '0000-00-00 00:00:00'),
(221, 'Core App Elements', 'core_app_elements', 3, 'checkbox', '', 0, 'Elements', ' ', 3, '', '', 'types,fields,searchs,templates,subfolders', 'Content Types=types||Fields=fields||Search Types=searchs||Templates=templates||Subfolders=subfolders', '', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'app_elements', '', '', '', 0, '0000-00-00 00:00:00'),
(222, 'Core App Dependencies (Categories)', 'core_app_dependencies', 3, 'radio', '', 0, 'Dependencies Categories', ' ', 3, '', '', '1', 'No=0||Auto=1', '{"options":[]}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 1, 0, 0, 0, 0, 0, 1, 'btn-group btn-group-yesno', '', 'dev', '', '', 'app_dependencies_categories', '', '', '', 0, '0000-00-00 00:00:00'),
(223, 'Core Options Limit', 'core_options_limit', 3, 'text', '', 0, 'Limit', ' ', 3, '', '', '', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[options2][limit]', '', '', '', 0, '0000-00-00 00:00:00'),
(224, 'Core Options Orderby (Direction)', 'core_options_orderby_direction', 3, 'select_simple', '', 0, 'Direction', ' ', 3, '', '', 'ASC', 'Ascending=ASC||Descending=DESC', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'json[options2][orderby_direction]', '', '', '', 0, '0000-00-00 00:00:00'),
(401, 'Article Ordering', 'art_ordering', 22, 'text', '', 1, 'Ordering', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_article', '#__content', 'ordering', '', '', '', 0, '0000-00-00 00:00:00'),
(7, 'CCK (2)', 'cck_2', 3, 'select_dynamic', '', 1, 'Type', ' ', 3, '', '', '', '', '{"query":"","table":"#__cck_core_types","name":"title","where":"published=1","value":"name","orderby":"title","orderby_direction":"ASC","limit":"","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'free', '#__cck_core', 'cck', '', '', '', 0, '0000-00-00 00:00:00'),
(225, 'Core DefaultValue (Textarea)', 'core_defaultvalue_textarea', 3, 'textarea', '', 0, 'Default Value', ' ', 3, '', '', '', '', '', 0, 255, 32, 25, 3, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'defaultvalue', '', '', '', 0, '0000-00-00 00:00:00'),
(226, 'Core Prepare Content', 'core_prepare_content', 3, 'select_simple', '', 0, 'Prepare Content', 'Use Global', 3, '', '', '', 'No=0||Yes=1', '{"options":[]}', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'options[prepare_content]', '', '', '', 0, '0000-00-00 00:00:00'),
(227, 'Core Field Label Padding', 'core_field_label_padding', 3, 'text', '', 0, 'Padding', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'field_label_padding', '', '', '', 0, '0000-00-00 00:00:00'),
(216, 'Core Form', 'core_form', 3, 'select_dynamic', '', 0, 'Content Type Form', 'Select', 3, 'required', '', '', '', '{"query":"","table":"#__cck_core_types","name":"title","where":"published=1","value":"name","orderby":"title","orderby_direction":"ASC","limit":"","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 50, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', 'style="max-width:200px;"', 'dev', '', '', 'form', '', '', '', 0, '0000-00-00 00:00:00'),
(228, 'Core Dev Bool', 'core_dev_bool', 3, 'select_simple', '', 0, 'clear', ' ', 3, '', '', '1', 'Yes=1||No=0', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'bool', '', '', '', 0, '0000-00-00 00:00:00'),
(229, 'Core Class Pagination', 'core_class_pagination', 3, 'text', '', 0, 'Class', ' ', 3, '', '', 'pagination', '', '', 0, 255, 12, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'class_pagination', '', '', '', 0, '0000-00-00 00:00:00'),
(230, 'Core Tmpl', 'core_tmpl', 3, 'select_simple', '', 0, 'Tmpl', 'Default', 3, '', '', '', 'Component=component', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'tmpl', '', '', '', 0, '0000-00-00 00:00:00'),
(231, 'Core Position Sidebody', 'core_position_sidebody', 3, 'select_simple', '', 0, '', ' ', 3, '', '', '0', 'Left=1||Right=0', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'position_sidebody', '', '', '', 0, '0000-00-00 00:00:00'),
(232, 'Core Plugins', 'core_plugins', 3, '42', '', 0, 'Plugin', ' ', 3, '', '', '', '', '{"preparecontent":"","prepareform":"$type = ( $field->location ) ? $field->location : ''field'';\\r\\n$opts = array();\\r\\nif ( trim( $field->selectlabel ) ) {\\r\\n  $opts[] = JHtml::_( ''select.option'','''',''- ''.$field->selectlabel.'' -'',''value'',''text'' );\\r\\n}\\r\\n$opts = array_merge( $opts, Helper_Admin::getPluginOptions( $type, ''cck_'', false, false, true ) );\\r\\n$css  = ( $field->required == ''required'' ) ? '' validate[required]'' : '''';\\r\\n$form = JHtml::_( ''select.genericlist'', $opts, $name, ''class=\\"inputbox select''.$css.''\\" size=\\"1\\" ''.$field->attributes, ''value'', ''text'', $value, $id );","preparestore":""}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'plugins', '', '', '', 0, '0000-00-00 00:00:00'),
(233, 'Core Dev Select Numeric', 'core_dev_select_numeric', 3, 'select_numeric', '', 0, 'clear', ' ', 3, '', '', '1', '', '{"math":"0","start":"1","first":"","step":"1","last":"","end":"5","force_digits":"0"}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'select_numeric', '', '', '', 0, '0000-00-00 00:00:00'),
(234, 'Core Class Total', 'core_class_total', 3, 'text', '', 0, 'Class', ' ', 3, '', '', 'total', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'class_total', '', '', '', 0, '0000-00-00 00:00:00'),
(235, 'Core Class Table', 'core_class_table', 3, 'text', '', 0, 'Class', ' ', 3, '', '', 'category zebra table', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'class_table', '', '', '', 0, '0000-00-00 00:00:00'),
(236, 'Core Class Table Tr Odd', 'core_class_table_tr_odd', 3, 'text', '', 0, 'Class', ' ', 3, '', '', 'cat-list-row%i', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'class_table_tr_odd', '', '', '', 0, '0000-00-00 00:00:00'),
(237, 'Core Class Table Tr Even', 'core_class_table_tr_even', 3, 'text', '', 0, 'Class', ' ', 3, '', '', 'cat-list-row%i', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'class_table_tr_even', '', '', '', 0, '0000-00-00 00:00:00'),
(238, 'Core Class Title', 'core_class_title', 3, 'text', '', 0, 'Class', ' ', 3, '', '', '', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'class_title', '', '', '', 0, '0000-00-00 00:00:00'),
(239, 'Core Tag Title', 'core_tag_title', 3, 'select_simple', '', 0, 'Tag', ' ', 3, '', '', 'h2', 'H1=h1||H2=h2||H3=h3', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'tag_title', '', '', '', 0, '0000-00-00 00:00:00'),
(240, 'Core Class Clear', 'core_class_clear', 3, 'select_simple', '', 0, 'Clear', ' ', 3, '', '', '0', 'Yes=cck-clrfix||No=0', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'class_clear', '', '', '', 0, '0000-00-00 00:00:00'),
(241, 'Core Class Float', 'core_class_float', 3, 'select_simple', '', 0, 'Float', ' ', 3, '', '', '0', 'Left=cck-fl||None=0', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'class_float', '', '', '', 0, '0000-00-00 00:00:00'),
(242, 'Core Show Hide', 'core_show_hide', 3, 'select_simple', '', 0, 'Show', ' ', 3, '', '', '', 'Hide=0||Show=1', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'show', '', '', '', 0, '0000-00-00 00:00:00'),
(243, 'Core Label Total', 'core_label_total', 3, 'text', '', 0, 'Label', ' ', 3, '', '', 'Results', '', '', 0, 255, 8, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'label_total', '', '', '', 0, '0000-00-00 00:00:00'),
(244, 'Core Show Pagination', 'core_show_pagination', 3, 'select_simple', '', 0, 'Show Pagination', ' ', 3, '', '', '', 'Hide=-2||Show=optgroup||Above=-1||Below=0||Both=1', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'show_pagination', '', '', '', 0, '0000-00-00 00:00:00'),
(245, 'Core Ordering', 'core_ordering', 3, 'select_simple', '', 0, 'Ordering', ' ', 3, '', '', '', 'Config Option Alphabetical=alpha||Config Option Most Popular=popular||Config Option Most Recent First=newest||Config Option Oldest First=oldest||Config Option Ordering=ordering', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'ordering', '', '', '', 0, '0000-00-00 00:00:00'),
(246, 'Core Ordering2', 'core_ordering2', 3, 'select_simple', '', 0, 'Ordering', ' ', 3, '', '', '', 'Custom sl=-1||Config Option Alphabetical=alpha||Config Option Most Popular=popular||Config Option Most Recent First=newest||Config Option Oldest First=oldest||Config Option Ordering=ordering', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'ordering', '', '', '', 0, '0000-00-00 00:00:00'),
(247, 'Core Order By', 'core_order_by', 3, 'text', '', 0, 'Order By', ' ', 3, '', '', '', '', '', 0, 255, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'order_by', '', '', '', 0, '0000-00-00 00:00:00'),
(248, 'Core Item Display', 'core_item_display', 3, 'select_simple', '', 0, 'Rendering', ' ', 3, '', '', 'renderItem', 'Item Field Html=renderItemField_Html||Item Field Typo=renderItemField_Typo||Item Field Value=renderItemField_Value||Item=renderItem', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'display', '', '', '', 0, '0000-00-00 00:00:00'),
(249, 'Core Auto Custom', 'core_auto_custom', 3, 'select_simple', '', 0, 'Select', ' ', 3, '', '', '', 'Auto=0||Custom=1', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'auto_custom', '', '', '', 0, '0000-00-00 00:00:00'),
(250, 'Core Auto Deepest', 'core_auto_deepest', 3, 'select_simple', '', 0, 'Select', ' ', 3, '', '', '', 'Auto=0||Deepest=1', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'auto_deepest', '', '', '', 0, '0000-00-00 00:00:00'),
(251, 'Core Across Down', 'core_across_down', 3, 'select_simple', '', 0, 'Select', ' ', 3, '', '', '', 'Across=0||Down=1', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'across_down', '', '', '', 0, '0000-00-00 00:00:00'),
(252, 'Core Numeric 6', 'core_numeric_6', 3, 'select_numeric', '', 0, 'Select', ' ', 3, '', '', '', '', '{"math":"0","start":"1","first":"","step":"1","last":"","end":"6","force_digits":"0"}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'numeric', '', '', '', 0, '0000-00-00 00:00:00'),
(253, 'Core CSS Definitions', 'core_css_definitions', 3, 'select_simple', '', 0, 'clear', 'None', 3, '', '', '', 'All=all||Custom=custom', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'css_definitions', '', '', '', 0, '0000-00-00 00:00:00'),
(254, 'Core CSS Definitions Custom', 'core_css_definitions_custom', 3, 'checkbox', '', 0, 'clear', ' ', 3, '', '', '', 'Base=base||CSS Spacing=spacing||CSS Writing=writing', '', 0, 255, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'css_definitions_custom', '', '', '', 0, '0000-00-00 00:00:00'),
(402, 'Category Extension', 'cat_extension', 11, 'hidden', '', 1, 'Extension', ' ', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 3, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_category', '#__categories', 'extension', '', '', '', 0, '0000-00-00 00:00:00'),
(403, 'Article Grp Images & Links', 'art_grp_images_links', 22, 'group', '', 1, 'Images and Links', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 1, 0, 0, '', 0, '', 'article_grp_images_links', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'none', '', '', 'article_grp_images_links', '', '', '', 0, '0000-00-00 00:00:00'),
(404, 'Article Image Intro', 'art_image_intro', 28, 'jform_media', '', 1, 'Intro Image', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', 'joomla_article', '#__content', 'images', 'image_intro', '', '', 0, '0000-00-00 00:00:00'),
(405, 'Article Image Intro Alt', 'art_image_intro_alt', 28, 'text', '', 1, 'Alt Text', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', 'joomla_article', '#__content', 'images', 'image_intro_alt', '', '', 0, '0000-00-00 00:00:00'),
(406, 'Article Image Intro Caption', 'art_image_intro_caption', 28, 'text', '', 1, 'Caption', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', 'joomla_article', '#__content', 'images', 'image_intro_caption', '', '', 0, '0000-00-00 00:00:00'),
(407, 'Article Image Intro Float', 'art_image_intro_float', 28, 'select_simple', '', 1, 'Image Float', 'Use Global', 3, '', '', '', 'Left=left||Right=right||None=none', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', 'joomla_article', '#__content', 'images', 'float_intro', '', '', 0, '0000-00-00 00:00:00'),
(408, 'Article Image Fulltext', 'art_image_fulltext', 28, 'jform_media', '', 1, 'Full Article Image', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', 'joomla_article', '#__content', 'images', 'image_fulltext', '', '', 0, '0000-00-00 00:00:00'),
(410, 'Article Image Fulltext Caption', 'art_image_fulltext_caption', 28, 'text', '', 1, 'Caption', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', 'joomla_article', '#__content', 'images', 'image_fulltext_caption', '', '', 0, '0000-00-00 00:00:00'),
(409, 'Article Image Fulltext Alt', 'art_image_fulltext_alt', 28, 'text', '', 1, 'Alt Text', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', 'joomla_article', '#__content', 'images', 'image_fulltext_alt', '', '', 0, '0000-00-00 00:00:00'),
(411, 'Article Image Fulltext Float', 'art_image_fulltext_float', 28, 'select_simple', '', 1, 'Image Float', 'Use Global', 3, '', '', '', 'Left=left||Right=right||None=none', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', 'joomla_article', '#__content', 'images', 'float_fulltext', '', '', 0, '0000-00-00 00:00:00'),
(412, 'Article UrlA', 'art_urla', 28, 'text', '', 1, 'Link A', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', 'joomla_article', '#__content', 'urls', 'urla', '', '', 0, '0000-00-00 00:00:00'),
(413, 'Article UrlA Text', 'art_urla_text', 28, 'text', '', 1, 'Link A Text', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', 'joomla_article', '#__content', 'urls', 'urlatext', '', '', 0, '0000-00-00 00:00:00'),
(414, 'Article UrlA Target', 'art_urla_target', 28, 'select_simple', '', 1, 'URL Target Window', 'Use Global', 3, '', '', '', 'Open in Parent Window=0||Open in New Window=1||Open in Popup=2||Open in Modal=3', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', 'joomla_article', '#__content', 'urls', 'targeta', '', '', 0, '0000-00-00 00:00:00'),
(415, 'Article UrlB', 'art_urlb', 28, 'text', '', 1, 'Link B', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', 'joomla_article', '#__content', 'urls', 'urlb', '', '', 0, '0000-00-00 00:00:00'),
(416, 'Article UrlB Text', 'art_urlb_text', 28, 'text', '', 1, 'Link B Text', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', 'joomla_article', '#__content', 'urls', 'urlbtext', '', '', 0, '0000-00-00 00:00:00'),
(417, 'Article UrlB Target', 'art_urlb_target', 28, 'select_simple', '', 1, 'URL Target Window', 'Use Global', 3, '', '', '', 'Open in Parent Window=0||Open in New Window=1||Open in Popup=2||Open in Modal=3', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', 'joomla_article', '#__content', 'urls', 'targetb', '', '', 0, '0000-00-00 00:00:00'),
(418, 'Article UrlC', 'art_urlc', 28, 'text', '', 1, 'Link C', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', 'joomla_article', '#__content', 'urls', 'urlc', '', '', 0, '0000-00-00 00:00:00'),
(419, 'Article UrlC Text', 'art_urlc_text', 28, 'text', '', 1, 'Link C Text', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'json', 'joomla_article', '#__content', 'urls', 'urlctext', '', '', 0, '0000-00-00 00:00:00'),
(420, 'Article UrlC Target', 'art_urlc_target', 28, 'select_simple', '', 1, 'URL Target Window', 'Use Global', 3, '', '', '', 'Open in Parent Window=0||Open in New Window=1||Open in Popup=2||Open in Modal=3', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', 'joomla_article', '#__content', 'urls', 'targetc', '', '', 0, '0000-00-00 00:00:00'),
(421, 'Article Urls Position', 'art_urls_position', 16, 'select_simple', '', 1, 'Positioning of the Links', 'Use Global', 3, '', '', '', 'Above=0||Below=1', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', 'joomla_article', '#__content', 'attribs', 'urls_position', '', '', 0, '0000-00-00 00:00:00'),
(255, 'Core Options Format File', 'core_options_format_file', 3, 'select_simple', '', 0, 'Storage Format', ' ', 3, '', '', '0', 'Filename=1||Full Path=0', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'json[options2][storage_format]', '', '', '', 0, '0000-00-00 00:00:00'),
(256, 'Core Auto Redirection', 'core_auto_redirection', 3, 'select_simple', '', 0, 'Redirection', ' ', 3, '', '', '', 'No=0||Redirection=optgroup||Content=1||Form=2', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'auto_redirect', '', '', '', 0, '0000-00-00 00:00:00'),
(257, 'Core Indexing', 'core_indexing', 3, 'select_simple', '', 0, 'Smart Search', ' ', 3, '', '', 'intro', 'Smart Search Indexing=optgroup||Content=content||Intro=intro', '{"options":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'indexed', '', '', '', 0, '0000-00-00 00:00:00'),
(258, 'Core Version Type Filter', 'core_version_e_type_filter', 3, 'select_simple', '', 0, 'Type', ' ', 3, '', '', 'type', 'Content Types=type||Search Types=search', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', ' onchange="this.form.submit();"', 'dev', '', '', 'filter_e_type', '', '', '', 0, '0000-00-00 00:00:00'),
(259, 'Core Version Location Filter', 'core_version_location_filter', 3, 'select_simple', '', 0, 'Location', ' ', 3, '', '', '', 'Title=e_title||Name=e_name||IDS=e_id', '{"options":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'filter_location', '', '', '', 0, '0000-00-00 00:00:00'),
(260, 'Core Note', 'core_note', 3, 'text', '', 0, 'Note', ' ', 3, '', '', '', '', '', 0, 255, 96, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'note', '', '', '', 0, '0000-00-00 00:00:00'),
(261, 'Core Options Display', 'core_options_display', 3, 'select_simple', '', 0, 'Show Options', ' ', 3, '', '', '0', 'Hide=-1||Show=optgroup||Following Options=0||Alphabetical AZ=1||Alphabetical ZA=2', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'sorting', '', '', '', 0, '0000-00-00 00:00:00'),
(262, 'Core Show Hide', 'core_show_hide2', 3, 'select_simple', '', 0, 'Show', ' ', 3, '', '', '', 'Hide=0||Show=optgroup||Above=1||Below=2', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'show', '', '', '', 0, '0000-00-00 00:00:00'),
(263, 'Core Languages', 'core_languages', 3, 'select_dynamic', '', 0, 'Languages', 'Select', 3, '', '', '', '', '{"query":"","table":"#__languages","name":"title","where":"published=1","value":"lang_code","orderby":"title","orderby_direction":"ASC","limit":"","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 255, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'languages', '', '', '', 0, '0000-00-00 00:00:00'),
(264, 'Core Variable Type', 'core_variable_type', 3, 'select_simple', '', 0, 'Type', ' ', 3, '', '', 'string', 'Alphanumeric=alnum||Array=array||Float=float||Int=int||String=string||Word=word', '{"options":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'type', '', '', '', 0, '0000-00-00 00:00:00'),
(265, 'Core Computation Presets', 'core_computation_presets', 3, 'select_simple', '', 0, 'Presets', 'Select', 3, 'required', '', '', 'Computation Presets 01=a + b||Computation Presets 02=a - b||Computation Presets 03=a * b||Computation Presets 04=a / b||Computation Presets 05=a - (b / c)||Computation Presets 06=a - (a * b) / 100||Computation Presets 07=(a + b).pow(2)||Computation Presets 08=a.sqrt() + b', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'presets', '', '', '', 0, '0000-00-00 00:00:00'),
(266, 'Core Computation Format', 'core_computation_format', 3, 'select_simple', '', 0, 'Format', 'Auto', 3, '', '', '', 'Ceil=ceil||Floor=floor||Round=round||ToFixed=toFixed', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'format', '', '', '', 0, '0000-00-00 00:00:00'),
(267, 'Core Computation Precision', 'core_computation_precision', 3, 'text', '', 0, 'Precision', ' ', 3, '', '', '', '', '', 0, 1, 3, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', 'style="text-align:center;"', 'dev', '', '', 'precision', '', '', '', 0, '0000-00-00 00:00:00'),
(268, 'Core Computation Event', 'core_computation_event', 3, 'select_simple', '', 0, 'Trigger Event', ' ', 3, '', '', '0', '_=||Event Change=change||Event Keyup=keyup||None=none', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'event', '', '', '', 0, '0000-00-00 00:00:00'),
(269, 'Core Conditional Event', 'core_conditional_event', 3, 'select_simple', '', 0, 'Event', ' ', 3, '', '', 'change', 'Change=change||Keyup=keyup', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'event', '', '', '', 0, '0000-00-00 00:00:00'),
(270, 'Core Computation Recalc', 'core_computation_recalc', 3, 'select_simple', '', 0, 'Rule', ' ', 3, '', '', 'global', 'Global=global||Self=0', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'recalc', '', '', '', 0, '0000-00-00 00:00:00'),
(271, 'Core JGrid Type', 'core_jgrid_type', 3, 'select_simple', '', 0, 'Type', 'Select', 3, 'required', '', '', 'Checkbox=selection||Checkbox Label For=selection_label||Featured=featured||Increment=increment||Status=state', '{"options":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'type', '', '', '', 0, '0000-00-00 00:00:00'),
(295, 'Core Module Style', 'core_module_style', 3, 'select_simple', '', 0, 'Style', 'Select', 3, '', '', '', 'None=none||Outline=outline||Rounded=rounded||Table=table||Xhtml=xhtml', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'style', '', '', '', 0, '0000-00-00 00:00:00'),
(294, 'Button Search', 'button_search', 3, 'button_submit', '', 1, 'Search', ' ', 3, '', '', '', '', '{"icon":"search","task":"save","alt_link_text":"","alt_link":"","alt_link_options":""}', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 1, 0, 0, 1, 0, 1, 'btn-primary', '', 'none', '', '', 'button_search', '', '', '', 0, '0000-00-00 00:00:00'),
(293, 'Button Save', 'button_save', 3, 'button_submit', '', 1, 'Save', ' ', 3, '', '', '', '', '{"icon":"checkmark","task":"apply","alt_link_text":"","alt_link":"","alt_link_options":""}', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 1, 0, 0, 1, 0, 1, 'btn-primary', '', 'none', '', '', 'button_save', '', '', '', 0, '0000-00-00 00:00:00'),
(8, 'CCK (3)', 'cck_3', 3, 'select_dynamic', '', 1, 'Type', ' ', 3, '', '', '', '', '{"query":"","table":"#__cck_core_types","name":"title","where":"published=1","value":"name","orderby":"title","orderby_direction":"ASC","limit":"","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 255, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'free', '#__cck_core', 'cck', '', '', '', 0, '0000-00-00 00:00:00'),
(9, 'CCK Id', 'cck_id', 3, 'text', '', 1, 'ID', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'free', '#__cck_core', 'id', '', '', '', 0, '0000-00-00 00:00:00'),
(422, 'User Email2', 'user_email2', 13, 'email', '', 1, 'Confirm Email', ' ', 3, '', '', '', '', '{"send":"0","send_field":"","from":"0","from_param":"","from_name":"0","from_name_param":"","subject":"","to":"","message":"","to_field":"","message_field":"","send_attachment_field":"","attachment_field":"","cc":"0","cc_param":"","bcc":"0","bcc_param":""}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'none', '', '', 'email', '', '', '', 0, '0000-00-00 00:00:00'),
(423, 'User Gender', 'user_gender', 29, 'radio', '', 1, 'Gender', ' ', 3, '', '', 'M', 'Male=M||Female=F', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'joomla_user', '#__cck_store_item_users', 'gender', '', '', '', 0, '0000-00-00 00:00:00'),
(424, 'User Last Name', 'user_last_name', 29, 'text', '', 1, 'Last Name', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user', '#__cck_store_item_users', 'last_name', '', '', '', 0, '0000-00-00 00:00:00'),
(425, 'User First Name', 'user_first_name', 29, 'text', '', 1, 'First Name', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user', '#__cck_store_item_users', 'first_name', '', '', '', 0, '0000-00-00 00:00:00'),
(426, 'User About Me', 'user_about_me', 29, 'textarea', '', 1, 'About Me', ' ', 3, '', '', '', '', '', 0, 255, 32, 32, 5, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user', '#__cck_store_item_users', 'about_me', '', '', '', 0, '0000-00-00 00:00:00'),
(427, 'User Avatar', 'user_avatar', 29, 'upload_image', '', 1, 'Avatar', ' ', 3, '', '', '', '', '{"path":"images\\/users\\/","path_content":"0","path_user":"1","legal_extensions":"gif,jpg,png,GIF,JPG,PNG","max_size":"5","size_unit":"2","form_preview":"0","delete_box":"1","custom_path":"0","path_label":"Path","multivalue_mode":"0","title_image":"1","title_label":"Title","desc_image":"1","desc_label":"Description alt","force_thumb_creation":"0","content_preview":"1","image_process":"maxfit","image_width":"500","image_height":"500","thumb1_process":"stretch","thumb1_width":"80","thumb1_height":"80","thumb2_process":"stretch","thumb2_width":"100","thumb2_height":"100","thumb3_process":"stretch","thumb3_width":"150","thumb3_height":"150","thumb4_process":"stretch","thumb4_width":"200","thumb4_height":"200","thumb5_process":"stretch","thumb5_width":"300","thumb5_height":"300"}', 0, 255, 24, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user', '#__cck_store_item_users', 'avatar', '', '', '', 0, '0000-00-00 00:00:00'),
(428, 'User Address1', 'user_address1', 29, 'textarea', '', 1, 'Address', ' ', 3, '', '', '', '', '', 0, 255, 32, 32, 2, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user', '#__cck_store_item_users', 'address1', '', '', '', 0, '0000-00-00 00:00:00'),
(429, 'User Address2', 'user_address2', 29, 'textarea', '', 1, 'Address2', ' ', 3, '', '', '', '', '', 0, 255, 32, 32, 2, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user', '#__cck_store_item_users', 'address2', '', '', '', 0, '0000-00-00 00:00:00'),
(430, 'User City', 'user_city', 29, 'text', '', 1, 'City', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user', '#__cck_store_item_users', 'city', '', '', '', 0, '0000-00-00 00:00:00'),
(431, 'User Postal Code', 'user_postal_code', 29, 'text', '', 1, 'Postal Code', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user', '#__cck_store_item_users', 'postal_code', '', '', '', 0, '0000-00-00 00:00:00'),
(432, 'User Region', 'user_region', 29, 'text', '', 1, 'Region', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user', '#__cck_store_item_users', 'region', '', '', '', 0, '0000-00-00 00:00:00'),
(433, 'User Country', 'user_country', 29, 'select_dynamic', '', 1, 'Country', 'Select', 3, '', '', '', '', '{"query":"","table":"#__cck_more_countries","name":"name_[lang]","where":"","value":"code2","orderby":"name_[lang]","orderby_direction":"ASC","limit":"","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 255, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'joomla_user', '#__cck_store_item_users', 'country', '', '', '', 0, '0000-00-00 00:00:00'),
(434, 'User Phone', 'user_phone', 29, 'text', '', 1, 'Phone', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user', '#__cck_store_item_users', 'phone', '', '', '', 0, '0000-00-00 00:00:00'),
(435, 'User Website', 'user_website', 29, 'link', '', 1, 'Website', ' ', 3, '', '', '', '', '{"link_label":" ","def_link":"","text_label":"Text","def_text":"","target":"_blank","class":""}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user', '#__cck_store_item_users', 'website', '', '', '', 0, '0000-00-00 00:00:00'),
(436, 'Article Key Reference', 'art_keyreference', 16, 'text', '', 1, 'Key Reference', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_article', '#__content', 'xreference', '', '', '', 0, '0000-00-00 00:00:00'),
(437, 'User Last Reset Date', 'user_lastreset_date', 24, 'calendar', '', 1, 'Last Reset Date', ' ', 3, '', '', '', '', '{"format":"Y-m-d H:i:s","dates":"0","storage_format":"0","time":"12","time_pos":"right","default_hour":"00","default_min":"00","default_sec":"00","theme":"steel","week_numbers":"0"}', 0, 255, 27, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user', '#__users', 'lastResetTime', '', '', '', 0, '0000-00-00 00:00:00'),
(438, 'User Reset Count', 'user_reset_count', 24, 'text', '', 1, 'Password Reset Count', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user', '#__users', 'resetCount', '', '', '', 0, '0000-00-00 00:00:00'),
(272, 'Core Rules (Type)', 'core_rules_type', 3, 'jform_rules', '', 0, 'Permissions', ' ', 3, '', '', '', '', '{"extension":"com_cck","section":"form"}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'jform[rules]', '', '', '', 0, '0000-00-00 00:00:00'),
(273, 'Core Rules (Folder)', 'core_rules_folder', 3, 'jform_rules', '', 0, 'Permissions', ' ', 3, '', '', '', '', '{"extension":"com_cck","section":"folder"}', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'jform[rules]', '', '', '', 0, '0000-00-00 00:00:00');
INSERT INTO `joom_cck_core_fields` (`id`, `title`, `name`, `folder`, `type`, `description`, `published`, `label`, `selectlabel`, `display`, `required`, `validation`, `defaultvalue`, `options`, `options2`, `minlength`, `maxlength`, `size`, `cols`, `rows`, `ordering`, `sorting`, `divider`, `bool`, `location`, `extended`, `style`, `script`, `bool2`, `bool3`, `bool4`, `bool5`, `bool6`, `bool7`, `bool8`, `css`, `attributes`, `storage`, `storage_location`, `storage_table`, `storage_field`, `storage_field2`, `storage_params`, `storages`, `checked_out`, `checked_out_time`) VALUES
(274, 'Core Tables', 'core_tables', 3, '42', '', 0, 'Table', ' ', 3, '', '', '', '', '{"preparecontent":"","prepareform":"$opts    = array();\\r\\n$prefix  = JFactory::getApplication()->getCfg( ''dbprefix'' );\\r\\n$tables  = JCckDatabase::loadColumn( ''SHOW TABLES'' );\\r\\nif ( trim( $field->selectlabel ) ) {\\r\\n  $opts[] = JHtml::_( ''select.option'',  '''', ''- ''.$field->selectlabel.'' -'' );\\r\\n}\\r\\nif ( count( $tables ) ) {\\r\\n  foreach ( $tables as $table ) {\\r\\n    $t = str_replace( $prefix, ''#__'', $table );\\r\\n    $opts[] = JHtml::_( ''select.option'', $t, $t, ''value'', ''text'' );\\r\\n  }\\r\\n}\\r\\n$class = $field->css ? '' ''.$field->css : '''';\\r\\n$attr = ''class=\\"inputbox select''.$class.''\\" size=\\"1\\" ''.$field->attributes;\\r\\n$form = JHtml::_( ''select.genericlist'', $opts, $name, $attr, ''value'', ''text'', $value, $id );","preparestore":""}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', 'style="max-width:200px;"', 'dev', '', '', 'table', '', '', '', 0, '0000-00-00 00:00:00'),
(275, 'Core Storage Location2', 'core_storage_location2', 3, '42', '', 0, 'Content Object', ' ', 3, '', '', 'joomla_article', '', '{"preparecontent":"","prepareform":"$app  = JFactory::getApplication();\\r\\n$view = $app->input->get( ''view'', '''' );\\r\\n$options = array();\\r\\nif ( trim( $field->selectlabel ) ) {\\r\\n  $options = array( JHtml::_( ''select.option'',  '''', ''- ''.$field->selectlabel.'' -'' ) );\\r\\n} else {\\r\\n  $value = ( $value ) ? $value : ''joomla_article'';\\r\\n  $options = array();\\r\\n}\\r\\nif ( $view == ''type'' || $view == ''types'' ) {\\r\\n  $options[] = JHtml::_( ''select.option'', ''none'', JText::_( ''COM_CCK_NONE'' ) );\\r\\n}\\r\\n$class = $field->css ? '' ''.$field->css : '''';\\r\\n$options = array_merge( $options, Helper_Admin::getPluginOptions( ''storage_location'', ''cck_'', false, false, true ) );\\r\\n$form = JHtml::_( ''select.genericlist'', $options, $name, ''class=\\"inputbox select''.$class.''\\" size=\\"1\\" ''.$field->attributes, ''value'', ''text'', $value, $id );","preparestore":""}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'storage_location', '', '', '', 0, '0000-00-00 00:00:00'),
(276, 'Core Location', 'core_location', 3, 'select_simple', '', 0, 'Content Creation', ' ', 3, '', '', '', 'Denied=none||Allowed=||location=optgroup||Administrator Only=admin||Site Only=site', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'location', '', '', '', 0, '0000-00-00 00:00:00'),
(277, 'Core Cache2', 'core_cache2', 3, 'select_simple', '', 0, 'Cache', ' ', 3, '', '', '0', 'OFF=0||ON=optgroup||Global=1||Self=2', '{"options":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'options[cache2]', '', '', '', 0, '0000-00-00 00:00:00'),
(439, 'Category Left', 'cat_lft', 23, 'text', '', 1, 'Left', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_category', '#__categories', 'lft', '', '', '', 0, '0000-00-00 00:00:00'),
(440, 'Category Right', 'cat_rgt', 23, 'text', '', 1, 'Right', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_category', '#__categories', 'rgt', '', '', '', 0, '0000-00-00 00:00:00'),
(441, 'Category Path', 'cat_path', 23, 'text', '', 1, 'Path', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_category', '#__categories', 'path', '', '', '', 0, '0000-00-00 00:00:00'),
(442, 'Category Level', 'cat_level', 23, 'text', '', 1, 'Level', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_category', '#__categories', 'level', '', '', '', 0, '0000-00-00 00:00:00'),
(278, 'Core Stages', 'core_stages', 3, 'select_numeric', '', 0, 'Stages', ' ', 3, '', '', '1', '', '{"math":"0","start":"1","first":"","step":"1","last":"","end":"6","force_digits":"0"}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'options[stages]', '', '', '', 0, '0000-00-00 00:00:00'),
(444, 'Button Next (2)', 'button_next_2', 3, 'button_submit', '', 1, 'Next', ' ', 3, '', '', '', '', '{"alt_link_text":"","alt_link":"","alt_link_options":""}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 1, 0, 0, 0, 0, 0, '', '', 'none', '', '', 'button_next_2', '', '', '', 0, '0000-00-00 00:00:00'),
(443, 'Button Next', 'button_next', 3, 'button_submit', '', 1, 'Next', ' ', 3, '', '', '', '', '{"alt_link_text":"","alt_link":"","alt_link_options":""}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 1, 0, 0, 0, 0, 0, '', '', 'none', '', '', 'button_next', '', '', '', 0, '0000-00-00 00:00:00'),
(445, 'Button Next (3)', 'button_next_3', 3, 'button_submit', '', 1, 'Next', ' ', 3, '', '', '', '', '{"alt_link_text":"","alt_link":"","alt_link_options":""}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 1, 0, 0, 0, 0, 0, '', '', 'none', '', '', 'button_next_3', '', '', '', 0, '0000-00-00 00:00:00'),
(446, 'Button Next (4)', 'button_next_4', 3, 'button_submit', '', 1, 'Next', ' ', 3, '', '', '', '', '{"alt_link_text":"","alt_link":"","alt_link_options":""}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 1, 0, 0, 0, 0, 0, '', '', 'none', '', '', 'button_next_4', '', '', '', 0, '0000-00-00 00:00:00'),
(447, 'Button Next (5)', 'button_next_5', 3, 'button_submit', '', 1, 'Next', ' ', 3, '', '', '', '', '{"alt_link_text":"","alt_link":"","alt_link_options":""}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 1, 0, 0, 0, 0, 0, '', '', 'none', '', '', 'button_next_5', '', '', '', 0, '0000-00-00 00:00:00'),
(279, 'Core Uri', 'core_uri', 3, 'select_simple', '', 0, 'Uri', ' ', 3, '', '', 'current', 'Custom=custom||Presets=optgroup||Base=base||Current=current||Root=root', '{"options":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'uri', '', '', '', 0, '0000-00-00 00:00:00'),
(280, 'Core Uri Parts', 'core_uri_parts', 3, 'checkbox', '', 0, 'Parts', ' ', 3, '', '', 'scheme,user,pass,host,port,path,query,fragment', 'Scheme=scheme||User=user||Password=pass||Host=host||Port=port||Path=path||Query=query||Fragment=fragment', '{"options":[]}', 0, 255, 32, 0, 0, 0, 0, ',', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'parts', '', '', '', 0, '0000-00-00 00:00:00'),
(281, 'Core Dev Texts', 'core_dev_texts', 3, 'field_x', '', 0, 'Texts', ' ', 3, '', '', '', '', '', 1, 10, 32, 0, 1, 0, 0, '', 0, '', 'core_dev_text', '', '', 1, 1, 1, 0, 0, 0, 0, '', '', 'dev', '', '', 'texts', '', '', '', 0, '0000-00-00 00:00:00'),
(282, 'Core Options Media Extensions', 'core_options_media_extensions', 3, '42', '', 0, '', ' ', 3, '', '', 'common', '', '{"preparecontent":"","prepareform":"$value  = ( $value != '''' ) ? $value : $field->defaultvalue;\\r\\nif ( $field->options ) {\\r\\n  $options = explode( ''||'', $field->options );\\r\\n} else {\\r\\n  $options = array( ''archive'', ''audio'', ''document'', ''image'', ''video'' );\\r\\n}\\r\\n$opts   = array();\\r\\n$opts[] = JHtml::_( ''select.option'', ''common'', JText::_ ( ''COM_CCK_MEDIA_TYPE_COMMON'' ), ''value'', ''text'' );\\r\\n$opts[]\\t= JHtml::_( ''select.option'', ''custom'', JText::_( ''COM_CCK_CUSTOM'' ) );\\r\\n$opts[]\\t= JHtml::_( ''select.option'', ''<OPTGROUP>'', JText::_( ''COM_CCK_MEDIA_TYPES'' ) );\\r\\nforeach ( $options AS $o ) {\\r\\n  $opts[] = JHtml::_( ''select.option'', $o, JText::_ ( ''COM_CCK_MEDIA_TYPE_''.$o ), ''value'', ''text'' );\\r\\n}\\r\\n$opts[] = JHtml::_( ''select.option'', ''<\\/OPTGROUP>'' );\\r\\n$opts[]\\t= JHtml::_( ''select.option'', ''<OPTGROUP>'', JText::_( ''COM_CCK_PRESETS'' ) );\\r\\nfor ( $i=1; $i <= 3; $i++ ) {\\r\\n  if ( JCck::getConfig_Param( ''media_preset''.$i.''_extensions'' ) ) {\\r\\n    $label  = JCck::getConfig_Param( ''media_preset''.$i.''_extensions_label'' );\\r\\n    $label  = $label ? $label : JText::_( ''COM_CCK_PRESET''.$i );\\r\\n    $opts[] = JHtml::_( ''select.option'', ''preset''.$i, $label );\\r\\n  }\\r\\n}\\r\\n$opts[] = JHtml::_( ''select.option'', ''<\\/OPTGROUP>'' );\\r\\n\\r\\n$form = JHtml::_( ''select.genericlist'', $opts, $name, ''class=\\"inputbox select\\" size=\\"1\\" ''.$field->attributes, ''value'', ''text'', $value, $id );","preparestore":""}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', 'style="width:90px;"', 'dev', '', '', 'json[options2][media_extensions]', '', '', '', 0, '0000-00-00 00:00:00'),
(283, 'Core Alias', 'core_alias', 3, 'text', '', 0, 'Alias Optional', ' ', 3, '', '', '', '', '', 0, 255, 28, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'alias', '', '', '', 0, '0000-00-00 00:00:00'),
(448, 'FreeText Edit', 'freetext_edit', 3, 'freetext', '', 1, 'Edit', ' ', 3, '', '', '<p>\r\n  Edit</p>', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'freetext_edit', '', '', '', 0, '0000-00-00 00:00:00'),
(449, 'FreeText Delete', 'freetext_delete', 3, 'freetext', '', 1, 'Delete', ' ', 3, '', '', '<p>\r\n Delete</p>', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'freetext_delete', '', '', '', 0, '0000-00-00 00:00:00'),
(284, 'Core Location2', 'core_location2', 3, 'select_simple', '', 0, 'List Location', ' ', 3, '', '', '', 'Both=||Location=optgroup||Administrator=admin||Site=site', '{"options":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'location', '', '', '', 0, '0000-00-00 00:00:00'),
(285, 'Core Filter Go', 'core_filter_go', 3, 'button_submit', '', 0, 'Go', ' ', 3, '', '', '', '', '{"icon":"checkmark","alt_link_text":"","alt_link":"","alt_link_options":""}', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 1, 0, 0, 3, 1, 0, 'tip hasTooltip', 'onclick="this.form.submit();"', 'none', '', '', 'core_filter_go', '', '', '', 0, '0000-00-00 00:00:00'),
(286, 'Core Filter Search', 'core_filter_search', 3, 'button_submit', '', 0, 'Search', ' ', 3, '', '', '', '', '{"icon":"search","alt_link_text":"","alt_link":"","alt_link_options":""}', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 1, 0, 0, 3, 0, 0, 'tip hasTooltip', 'onclick="this.form.submit();"', 'none', '', '', 'core_filter_search', '', '', '', 0, '0000-00-00 00:00:00'),
(287, 'Core Filter Clear', 'core_filter_clear', 3, 'button_submit', '', 0, 'Clear', ' ', 3, '', '', '', '', '{"icon":"remove","alt_link_text":"","alt_link":"","alt_link_options":""}', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 1, 0, 0, 3, 0, 0, 'tip hasTooltip', 'onclick="this.form.submit();"', 'none', '', '', 'core_filter_clear', '', '', '', 0, '0000-00-00 00:00:00'),
(288, 'Core Filter Input', 'core_filter_input', 3, 'text', '', 0, 'Search', ' ', 3, '', '', '', '', '', 0, 255, 20, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'filter_search', '', '', '', 0, '0000-00-00 00:00:00'),
(289, 'Core Icons', 'core_icons', 3, 'select_simple', '', 0, 'Icon', 'Select', 3, '', '', '', 'address||arrow-down||arrow-down-2||arrow-down-3||arrow-first||arrow-last||arrow-left||arrow-left-2||arrow-left-3||arrow-right||arrow-right-2||arrow-right-3||arrow-up||arrow-up-2||arrow-up-3||bars||basket||bookmark||box-add||box-remove||briefcase||broadcast||brush||calendar||calendar-2||camera||camera-2||cancel||cart||chart||checkbox||checkbox-partial||checkbox-unchecked||checkmark||clock||cog||cogs||color-palette||comments||comments-2||compass||contract||contract-2||copy||cube||delete||dashboard||database||download||drawer||drawer-2||edit||equalizer||expand||expand-2||eye||feed||file||file-add||file-remove||filter||first||flag||flag-2||folder-close||folder-open||grid-view||grid-view-2||health||help||home||key||lamp||last||lightning||list-view||location||lock||loop||mail||mail-2||menu||menu-2||minus||minus-2||mobile||move||music||next||out||out-2||pencil||pencil-2||picture||pictures||pie||pin||play||play-2||plus||plus-2||power-cord||previous||print||puzzle||quote||quote-2||refresh||remove||screen||search||share||shuffle||star||star-2||star-empty||support||tablet||thumbs-down||thumbs-up||tools||trash||undo||upload||user||users||vcard||wand||warning||wrench||zoom-in||zoom-out', '{"options":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[options2][icon]', '', '', '', 0, '0000-00-00 00:00:00'),
(290, 'Core Joomla! Article Catid', 'core_joomla_article_catid', 3, 'jform_category', '', 0, 'Category', 'Use Global', 3, '', '', '', '', '{"extension":"com_content"}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, 'max-width-200', '', 'dev', '', '', 'values[catid]', '', '', '', 0, '0000-00-00 00:00:00'),
(291, 'Core Joomla! Article Created By', 'core_joomla_article_created_by', 3, 'select_dynamic', '', 0, 'Author', 'Use Global', 3, '', '', '', '', '{"query":"SELECT id AS value, name AS text FROM #__users AS a LEFT JOIN #__user_usergroup_map AS b ON b.user_id = a.id WHERE b.group_id = 8 ORDER BY text","table":"#__content","name":"","where":"","value":"","orderby":"","orderby_direction":"ASC","limit":"","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 255, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 1, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'values[created_by]', '', '', '', 0, '0000-00-00 00:00:00'),
(292, 'Core Joomla! Article State', 'core_joomla_article_state', 3, 'select_simple', '', 0, 'Status', 'Use Global', 3, '', '', '', 'Published=1||Unpublished=0||Archived=2||Trashed=-2', '{"options":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'values[state]', '', '', '', 0, '0000-00-00 00:00:00'),
(450, 'Core Joomla! Category Created By', 'core_joomla_category_created_by', 3, 'select_dynamic', '', 0, 'Author', 'Use Global', 3, '', '', '', '', '{"query":"SELECT id AS value, name AS text FROM #__users AS a LEFT JOIN #__user_usergroup_map AS b ON b.user_id = a.id WHERE b.group_id = 8 ORDER BY text","table":"#__content","name":"","where":"","value":"","orderby":"","orderby_direction":"ASC","limit":"","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 255, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 1, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'values[created_user_id]', '', '', '', 0, '0000-00-00 00:00:00'),
(451, 'Core Joomla! Category Parent Id', 'core_joomla_category_parent_id', 3, 'jform_category', '', 0, 'Parent', 'Use Global', 3, '', '', '', '', '{"extension":""}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, 'max-width-200', '', 'dev', '', '', 'values[parent_id]', '', '', '', 0, '0000-00-00 00:00:00'),
(452, 'Core Joomla! Category State', 'core_joomla_category_state', 3, 'select_simple', '', 0, 'Status', 'Use Global', 3, '', '', '', 'Published=1||Unpublished=0||Archived=2||Trashed=-2', '{"options":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'values[published]', '', '', '', 0, '0000-00-00 00:00:00'),
(453, 'Core Joomla! User Groups', 'core_joomla_user_groups', 3, 'select_dynamic', '', 0, 'User Groups', ' ', 3, '', '', '', '', '{"query":"","table":"#__usergroups","name":"title","where":"","value":"id","orderby":"lft","orderby_direction":"ASC","limit":"","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 255, 32, 0, 9, 0, 0, ',', 0, '', '', '', '', 0, 1, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'values[groups]', '', '', '', 0, '0000-00-00 00:00:00'),
(454, 'Core List Display', 'core_list_display', 3, 'select_simple', '', 0, 'Display', ' ', 3, '', '', '0', 'Standard List View=0||Intermediate List View=2||Advanced Item View=1', '{"options":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, 'max-width-180', 'onchange="JCck.Dev.switchDisplay(this); JCck.Dev.doSubmit();"', 'dev', '', '', 'display', '', '', '', 0, '0000-00-00 00:00:00'),
(456, 'Core Access', 'core_access', 3, 'jform_accesslevel', '', 0, 'Access', ' ', 3, '', '', '1', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'access', '', '', '', 0, '0000-00-00 00:00:00'),
(455, 'Core Client Filter', 'core_client_filter', 3, '42', '', 0, 'Location', ' ', 3, '', '', '', '', '{"preparecontent":"","prepareform":"$options = Helper_Admin::getClientOptions( true, false, true );\\r\\n$class = $field->css ? '' ''.$field->css : '''';\\r\\n$form = JHtml::_( ''select.genericlist'', $options, $name, ''class=\\"inputbox select''.$class.''\\" size=\\"1\\" ''.$field->attributes, ''value'', ''text'', $value, $id );","preparestore":""}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', 'onchange="this.form.submit()"', 'dev', '', '', 'filter_client', '', '', '', 0, '0000-00-00 00:00:00'),
(457, 'Core Conditional Trigger', 'core_conditional_trigger', 3, '42', '', 0, 'Condition', ' ', 3, '', '', '', '', '{"preparecontent":"","prepareform":"$form = JCckDev::getForm( ''core_conditional_trigger_type'', '''', $config, array() )\\r\\n      .\\tJCckDev::getForm( ''core_conditional_trigger_value'', '''', $config,\\r\\n        array( ''css''=>''trigger-type'' ) )\\r\\n      . ''&nbsp;<span class=\\"fill trigger-value\\" name=\\"''.$field->location.''\\">&laquo;<\\/span>'';\\r\\n$js = ''\\r\\n$(\\".trigger-value\\").live(\\"click\\", function() {\\r\\nvar url = \\"index.php?option=com_cck&task=box.add&tmpl=component&file=administrator\\/components\\/com_cck\\/views\\/field\\/tmpl\\/selection.php&title=conditional&name=''.$field->extended.''&type=''.$field->location.''\\";\\r\\n$.fn.colorbox({href:url, iframe:true, innerWidth:300, innerHeight:200, scrolling:false, overlayClose:false, fixed:true, onLoad: function(){ $(\\"#cboxClose\\").remove();}}); });'';\\r\\n$field->script = $js;","preparestore":""}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'trigger', '', '', '', 0, '0000-00-00 00:00:00'),
(458, 'Core Conditional Trigger Type', 'core_conditional_trigger_type', 3, 'select_simple', '', 0, '', ' ', 3, '', '', 'isChanged', 'State Is Equal In=isEqual||State Is Different=isDifferent||State Is Filled=isFilled||State Is Empty=isEmpty||State Is Changed=isChanged', '{"options":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', 'style="max-width:100px;"', 'dev', '', '', 'trigger_type', '', '', '', 0, '0000-00-00 00:00:00'),
(459, 'Core Conditional Trigger Value', 'core_conditional_trigger_value', 3, 'text', '', 0, 'Value', ' ', 3, '', '', '', '', '', 0, 255, 12, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'trigger_value', '', '', '', 0, '0000-00-00 00:00:00'),
(460, 'Core Dev Password', 'core_dev_password', 3, 'password', '', 0, 'clear', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'password', '', '', '', 0, '0000-00-00 00:00:00'),
(461, 'Core Options Enctype', 'core_options_enctype', 3, 'select_simple', '', 0, 'Enctype', ' ', 3, '', '', '', 'application/x-www-form-urlencoded||multipart/form-data||text/plain', '{"options":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[options2][enctype]', '', '', '', 0, '0000-00-00 00:00:00'),
(462, 'Core Dev Radio', 'core_dev_radio', 3, 'radio', '', 0, 'clear', ' ', 3, '', '', '', '', '{"options":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, 'btn-group', '', 'dev', '', '', 'radio', '', '', '', 0, '0000-00-00 00:00:00'),
(463, 'Core Dev Color', 'core_dev_color', 3, 'colorpicker', '', 0, 'clear', ' ', 3, '', '', '', '', '', 0, 255, 16, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'color', '', '', '', 0, '0000-00-00 00:00:00'),
(464, 'Core Orientation Vertical', 'core_orientation_vertical', 3, 'select_numeric', '', 0, 'clear', ' ', 3, '', '', '1', '', '{"math":"0","start":"1","first":"","step":"1","last":"","end":"8","force_digits":"0"}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'bool2', '', '', '', 0, '0000-00-00 00:00:00'),
(465, 'Core Action2', 'core_action2', 3, 'select_simple', '', 0, 'Action', ' ', 3, '', '', '', 'Always=||Workflow=optgroup||Add=add||Edit=edit', '{"options":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'action', '', '', '', 0, '0000-00-00 00:00:00'),
(466, 'Core Method', 'core_method', 3, 'select_simple', '', 0, 'Method', ' ', 3, '', '', 'get', 'GET=get||POST=post', '{"options":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[options2][method]', '', '', '', 0, '0000-00-00 00:00:00'),
(467, 'Core Easing', 'core_easing', 3, 'select_simple', '', 0, 'Easing', ' ', 3, '', '', 'linear', 'linear=linear||swing=swing||easeInQuad=easeInQuad||easeOutQuad=easeOutQuad||easeInOutQuad=easeInOutQuad||easeInCubic=easeInCubic||easeOutCubic=easeOutCubic||easeInOutCubic=easeInOutCubic||easeInQuart=easeInQuart||easeOutQuart=easeOutQuart||easeInOutQuart=easeInOutQuart||easeInQuint=easeInQuint||easeOutQuint=easeOutQuint||easeInOutQuint=easeInOutQuint||easeInExpo=easeInExpo||easeOutExpo=easeOutExpo||easeInOutExpo=easeInOutExpo||easeInSine=easeInSine||easeOutSine=easeOutSine||easeInOutSine=easeInOutSine||easeInCirc=easeInCirc||easeOutCirc=easeOutCirc||easeInOutCirc=easeInOutCirc||easeInElastic=easeInElastic||easeOutElastic=easeOutElastic||easeInOutElastic=easeInOutElastic||easeInBack=easeInBack||easeOutBack=easeOutBack||easeInOutBack=easeInOutBack||easeInBounce=easeInBounce||easeOutBounce=easeOutBounce||easeInOutBounce=easeInOutBounce', '{"options":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'easing', '', '', '', 0, '0000-00-00 00:00:00'),
(468, 'Core App Dependencies (Menu)', 'core_app_dependencies_menu', 3, 'select_dynamic', '', 0, 'Dependencies Menu', 'None', 3, '', '', '', '', '{"query":"","table":"#__menu_types","name":"title","where":"","value":"id","orderby":"title","orderby_direction":"ASC","attr1":"","attr2":"","attr3":"","limit":"","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 255, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'app_dependencies_menu', '', '', '', 0, '0000-00-00 00:00:00'),
(469, 'Core Pane Behavior', 'core_pane_behavior', 3, 'select_simple', '', 0, 'Behavior', 'Select', 3, '', '', '', 'Pane Start=0||Pane Panel=1||Pane End=2', '{"options":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'bool', '', '', '', 0, '0000-00-00 00:00:00'),
(471, 'User Birthplace', 'user_birthplace', 29, 'text', '', 1, 'Birthplace', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'joomla_user', '#__cck_store_item_users', 'birthplace', '', '', '', 0, '0000-00-00 00:00:00'),
(470, 'User Birthdate', 'user_birthdate', 29, 'calendar', '', 1, 'Birthdate', ' ', 3, '', '', '', '', '{"format":"Y-m-d","storage_format":"0","dates":"0","theme":"steel","week_numbers":"0","time":"12","time_pos":"right","default_hour":"00","default_min":"00","default_sec":"00"}', 0, 255, 27, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'joomla_user', '#__cck_store_item_users', 'birthdate', '', '', '', 0, '0000-00-00 00:00:00'),
(476, 'Tab Details (Start)', 'tab_details', 3, 'tabs', '', 1, 'Details', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'tab_details', '', '', '', 0, '0000-00-00 00:00:00'),
(477, 'Tab Publishing (Panel)', 'tab_publishing', 3, 'tabs', '', 1, 'Publishing', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'tab_publishing', '', '', '', 0, '0000-00-00 00:00:00'),
(478, 'Tab Metadata (Panel)', 'tab_metadata', 3, 'tabs', '', 1, 'Metadata', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'tab_metadata', '', '', '', 0, '0000-00-00 00:00:00'),
(479, 'Tab Options (Panel)', 'tab_options', 3, 'tabs', '', 1, 'Options', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'tab_options', '', '', '', 0, '0000-00-00 00:00:00'),
(481, 'Tab (End)', 'tab_end', 3, 'tabs', '', 1, '', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 2, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'tab_end', '', '', '', 0, '0000-00-00 00:00:00'),
(480, 'Tab Permissions (Panel)', 'tab_permissions', 3, 'tabs', '', 1, 'Permissions', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'tab_permissions', '', '', '', 0, '0000-00-00 00:00:00'),
(472, 'Article Tags', 'art_tags', 10, 'jform_tag', '', 1, 'Tags', ' ', 3, '', '', 'Ferienhäuser', '', '{"mode":"ajax","custom":"1"}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'joomla_article', '#__content', 'tags', '', '', '', 0, '0000-00-00 00:00:00'),
(473, 'Category Tags', 'cat_tags', 23, 'jform_tag', '', 1, 'Tags', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'joomla_category', '#__categories', 'tags', '', '', '', 0, '0000-00-00 00:00:00'),
(474, 'User Tags', 'user_tags', 24, 'jform_tag', '', 1, 'Tags', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'joomla_user', '#__users', 'tags', '', '', '', 0, '0000-00-00 00:00:00'),
(475, 'User Group Tags', 'user_group_tags', 26, 'jform_tag', '', 1, 'Tags', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'joomla_user_group', '#__usergroups', 'tags', '', '', '', 0, '0000-00-00 00:00:00'),
(482, 'Article Show Tags', 'art_show_tags', 16, 'select_simple', '', 1, 'Show Tags', 'Use Global', 3, '', '', '', 'Hide=0||Show=1', '{"options":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', 'joomla_article', '#__content', 'attribs', 'show_tags', '', '', 0, '0000-00-00 00:00:00'),
(483, 'Core Button Style', 'core_button_style', 3, 'select_simple', '', 0, 'Style', 'Default', 3, '', '', '', 'Info=info||Inverse=inverse||Link=link||Primary=primary||Success=success||Warning=warning', '{"options":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'style', '', '', '', 0, '0000-00-00 00:00:00'),
(484, 'Article Associations', 'art_associations', 22, 'jform_associations', '', 1, '', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'joomla_article', '#__content', 'associations', '', '', '', 0, '0000-00-00 00:00:00'),
(485, 'Category Associations', 'cat_associations', 23, 'jform_associations', '', 1, '', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'joomla_category', '#__categories', 'associations', '', '', '', 0, '0000-00-00 00:00:00'),
(486, 'Core Task', 'core_task', 3, 'select_simple', '', 0, 'Task', ' ', 3, '', '', 'save', 'Task Cancel=cancel||Task Save=apply||Task Save and Close=save||Task Save and New=save2new||Task Save and View=save2view||SEBLOD Exporter Addon=optgroup||Task Export=export||SEBLOD Toolbox Addon=optgroup||Task Processing=process', '{"options":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'json[options2][task]', '', '', '', 0, '0000-00-00 00:00:00'),
(487, 'Button Save & Close', 'button_save_close', 3, 'button_submit', '', 1, 'Save and Close', ' ', 3, '', '', '', '', '{"icon":"checkmark","task":"save","alt_link_text":"","alt_link":"","alt_link_options":""}', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 1, 0, 0, 1, 0, 1, 'btn-primary', '', 'none', '', '', 'button_save_close', '', '', '', 0, '0000-00-00 00:00:00'),
(488, 'Button Save & New', 'button_save_new', 3, 'button_submit', '', 1, 'Save and New', ' ', 3, '', '', '', '', '{"icon":"plus","task":"save2new","alt_link_text":"","alt_link":"","alt_link_options":""}', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 1, 0, 0, 1, 0, 1, '', '', 'none', '', '', 'button_save_new', '', '', '', 0, '0000-00-00 00:00:00'),
(489, 'Button Save & View', 'button_save_view', 3, 'button_submit', '', 1, 'Save and View', ' ', 3, '', '', '', '', '{"icon":"eye","task":"save2view","alt_link_text":"","alt_link":"","alt_link_options":""}', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 1, 0, 0, 1, 0, 1, '', '', 'none', '', '', 'button_save_view', '', '', '', 0, '0000-00-00 00:00:00'),
(490, 'Button Cancel', 'button_cancel', 3, 'button_submit', '', 1, 'Cancel', ' ', 3, '', '', '', '', '{"icon":"cancel","task":"cancel","alt_link_text":"","alt_link":"","alt_link_options":""}', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 1, 0, 0, 1, 0, 1, '', '', 'none', '', '', 'button_cancel', '', '', '', 0, '0000-00-00 00:00:00'),
(491, 'Button Grp (Form)', 'button_grp_form', 3, 'group', '', 1, 'clear', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 1, 0, 0, '', 0, '', 'button_grp_form', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'button_grp_form', '', '', '', 0, '0000-00-00 00:00:00'),
(494, 'Tab Media (Panel)', 'tab_media', 3, 'tabs', '', 1, 'Media', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'tab_media', '', '', '', 0, '0000-00-00 00:00:00'),
(496, 'Category Version Note', 'cat_version_note', 23, 'text', '', 1, 'Version Note', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'cat_version_note', '', '', '', 0, '0000-00-00 00:00:00'),
(495, 'Article Version Note', 'art_version_note', 22, 'text', '', 1, 'Version Note', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'art_version_note', '', '', '', 0, '0000-00-00 00:00:00'),
(498, 'Tab Profile (Panel)', 'tab_profile', 3, 'tabs', '', 1, 'Profile', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'tab_profile', '', '', '', 0, '0000-00-00 00:00:00'),
(497, 'Category Hits', 'cat_hits', 11, 'text', '', 1, 'Hits', ' ', 3, '', '', '', '', '', 0, 50, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'joomla_category', '#__categories', 'hits', '', '', '', 0, '0000-00-00 00:00:00'),
(502, 'Div Start', 'div_start', 3, 'div', '', 1, '', ' ', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'div_start', '', '', '', 0, '0000-00-00 00:00:00'),
(503, 'Div In Between', 'div_in_between', 3, 'div', '', 1, '', ' ', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'div_in_between', '', '', '', 0, '0000-00-00 00:00:00'),
(504, 'Div End', 'div_end', 3, 'div', '', 1, '', ' ', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 2, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'div_end', '', '', '', 0, '0000-00-00 00:00:00'),
(505, 'Div Start (2)', 'div_start_2', 3, 'div', '', 1, '', ' ', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'div_start_2', '', '', '', 0, '0000-00-00 00:00:00'),
(506, 'Div In Between (2)', 'div_in_between_2', 3, 'div', '', 1, '', ' ', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'div_in_between_2', '', '', '', 0, '0000-00-00 00:00:00'),
(507, 'Div End (2)', 'div_end_2', 3, 'div', '', 1, '', ' ', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 2, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'div_end_2', '', '', '', 0, '0000-00-00 00:00:00'),
(508, 'Div Start (3)', 'div_start_3', 3, 'div', '', 0, '', ' ', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'div_start_3', '', '', '', 0, '0000-00-00 00:00:00'),
(509, 'Div In Between (3)', 'div_in_between_3', 3, 'div', '', 0, '', ' ', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'div_in_between_3', '', '', '', 0, '0000-00-00 00:00:00'),
(510, 'Div End (3)', 'div_end_3', 3, 'div', '', 0, '', ' ', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 2, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'div_end_3', '', '', '', 0, '0000-00-00 00:00:00'),
(511, 'Div Start (4)', 'div_start_4', 3, 'div', '', 0, '', ' ', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'div_start_4', '', '', '', 0, '0000-00-00 00:00:00'),
(512, 'Div In Between (4)', 'div_in_between_4', 3, 'div', '', 0, '', ' ', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'div_in_between_4', '', '', '', 0, '0000-00-00 00:00:00'),
(513, 'Div End (4)', 'div_end_4', 3, 'div', '', 0, '', ' ', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 2, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'div_end_4', '', '', '', 0, '0000-00-00 00:00:00'),
(514, 'Div Start (5)', 'div_start_5', 3, 'div', '', 0, '', ' ', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'div_start_5', '', '', '', 0, '0000-00-00 00:00:00'),
(515, 'Div In Between (5)', 'div_in_between_5', 3, 'div', '', 0, '', ' ', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'div_in_between_5', '', '', '', 0, '0000-00-00 00:00:00'),
(516, 'Div End (5)', 'div_end_5', 3, 'div', '', 0, '', ' ', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 2, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'div_end_5', '', '', '', 0, '0000-00-00 00:00:00'),
(517, 'Article Title (Back-end)', 'art_title_backend', 22, 'text', '', 1, 'Title', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, 'input-xxlarge input-large-text', '', 'standard', 'joomla_article', '#__content', 'title', '', '', '', 0, '0000-00-00 00:00:00'),
(518, 'Category Title (Back-end)', 'cat_title_backend', 23, 'text', '', 1, 'Title', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, 'input-xxlarge input-large-text', '', 'standard', 'joomla_category', '#__categories', 'title', '', '', '', 0, '0000-00-00 00:00:00'),
(519, 'User Name (Back-end)', 'user_name_backend', 24, 'text', '', 1, 'Name', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, 'input-xxlarge input-large-text', '', 'standard', 'joomla_user', '#__users', 'name', '', '', '', 0, '0000-00-00 00:00:00'),
(520, 'User Group Title (Back-end)', 'user_group_title_backend', 26, 'text', '', 1, 'Title', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, 'input-xxlarge input-large-text', '', 'standard', 'joomla_user_group', '#__usergroups', 'title', '', '', '', 0, '0000-00-00 00:00:00'),
(521, 'Core Task (Exporter)', 'core_task_exporter', 3, 'select_dynamic', '', 0, 'Session', 'Select', 3, 'required', '', '', '', '{"query":"","table":"#__cck_more_sessions","name":"title","where":"extension=\\"com_cck_exporter\\"","value":"id","orderby":"title","orderby_direction":"ASC","attr1":"","attr2":"","attr3":"","limit":"","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 255, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'task_id', '', '', '', 0, '0000-00-00 00:00:00'),
(522, 'Core Task (Processing)', 'core_task_processing', 3, 'select_dynamic', '', 0, 'Processing', 'Select', 3, 'required', '', '', '', '{"query":"","table":"#__cck_more_toolbox_processings","name":"title","where":"published=1","value":"id","orderby":"title","orderby_direction":"ASC","attr1":"","attr2":"","attr3":"","limit":"","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 255, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'task_id', '', '', '', 0, '0000-00-00 00:00:00'),
(523, 'Core CSS Core', 'core_css_core', 3, 'select_simple', '', 0, 'Core CSS', 'Use Global', 3, '', '', '', 'Base=8||None=0||All Views=optgroup||All=1||Specific=-1||Content Views Only=optgroup||All=2||Specific=-2||Form Views Only=optgroup||All=3||Specific=-3', '{"options":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'css_core', '', '', '', 0, '0000-00-00 00:00:00'),
(526, 'Icon Edit', 'icon_edit', 3, 'icon', '', 1, 'Edit', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, 'edit', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'icon_edit', '', '', '', 0, '0000-00-00 00:00:00'),
(524, 'Icon Delete', 'icon_delete', 3, 'icon', '', 1, 'Delete', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, 'delete', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'icon_delete', '', '', '', 0, '0000-00-00 00:00:00'),
(529, 'Icon View', 'icon_view', 3, 'icon', '', 1, 'View', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, 'eye', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'icon_view', '', '', '', 0, '0000-00-00 00:00:00'),
(527, 'Icon Preview', 'icon_preview', 3, 'icon', '', 1, 'Preview', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, 'zoom-in', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'icon_preview', '', '', '', 0, '0000-00-00 00:00:00'),
(528, 'Icon Trash', 'icon_trash', 3, 'icon', '', 1, 'Trash', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, 'trash', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'icon_trash', '', '', '', 0, '0000-00-00 00:00:00'),
(525, 'Icon Download', 'icon_download', 3, 'icon', '', 1, 'Download', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, 'download', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'icon_download', '', '', '', 0, '0000-00-00 00:00:00'),
(5000, 'Pferdename', 'pferdename', 500, 'text', '<p>Das Feld für den Pferdenamen.</p>', 1, 'Pferdename', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'custom', 'joomla_article', '#__content', 'title', '', '', '', 0, '0000-00-00 00:00:00'),
(5001, 'Oberes Pferdebild', 'oberes_pferdebild', 500, 'upload_image', '', 1, 'Oberes Pferdebild', ' ', 3, '', '', '', '', '{"path":"images\\/","path_content":"1","folder_permissions":"0755","path_user":"0","media_extensions":"image","legal_extensions":"gif,jpg,png,GIF,JPG,PNG","max_size":"5","size_unit":"2","form_preview":"0","delete_box":"1","custom_path":"0","path_label":"Path","multivalue_mode":"0","title_image":"1","title_label":"Title","desc_image":"1","desc_label":"Description alt","force_thumb_creation":"0","content_preview":"0","image_process":"","image_width":"200","image_height":"200","thumb1_process":"maxfit","thumb1_width":"150","thumb1_height":"150","thumb2_process":"0","thumb2_width":"","thumb2_height":"","thumb3_process":"0","thumb3_width":"","thumb3_height":"","thumb4_process":"0","thumb4_width":"","thumb4_height":"","thumb5_process":"0","thumb5_width":"","thumb5_height":"","thumb6_process":"0","thumb6_width":"","thumb6_height":"","thumb7_process":"0","thumb7_width":"","thumb7_height":"","thumb8_process":"0","thumb8_width":"","thumb8_height":"","thumb9_process":"0","thumb9_width":"","thumb9_height":"","thumb10_process":"0","thumb10_width":"","thumb10_height":""}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'joomla_article', '#__content', 'oberes-pferdebild', '', '', '', 0, '0000-00-00 00:00:00'),
(5002, 'Unteres Pferdebild', 'unteres_pferdebild', 500, 'upload_image', '', 1, 'Unteres Pferdebild', ' ', 3, '', '', '', '', '{"path":"images\\/","path_content":"1","folder_permissions":"0755","path_user":"0","media_extensions":"image","legal_extensions":"gif,jpg,png,GIF,JPG,PNG","max_size":"5","size_unit":"2","form_preview":"0","delete_box":"1","custom_path":"0","path_label":"Path","multivalue_mode":"0","title_image":"1","title_label":"Title","desc_image":"1","desc_label":"Description alt","force_thumb_creation":"0","content_preview":"0","image_process":"","image_width":"200","image_height":"200","thumb1_process":"maxfit","thumb1_width":"150","thumb1_height":"150","thumb2_process":"0","thumb2_width":"","thumb2_height":"","thumb3_process":"0","thumb3_width":"","thumb3_height":"","thumb4_process":"0","thumb4_width":"","thumb4_height":"","thumb5_process":"0","thumb5_width":"","thumb5_height":"","thumb6_process":"0","thumb6_width":"","thumb6_height":"","thumb7_process":"0","thumb7_width":"","thumb7_height":"","thumb8_process":"0","thumb8_width":"","thumb8_height":"","thumb9_process":"0","thumb9_width":"","thumb9_height":"","thumb10_process":"0","thumb10_width":"","thumb10_height":""}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'joomla_article', '#__content', 'unteres-pferdebild', '', '', '', 0, '0000-00-00 00:00:00'),
(5003, 'Postleitzahl', 'postleitzahl', 501, 'text', '', 1, 'Postleitzahl', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'joomla_article', '#__cck_store_form_ferienhaus_datenbank', 'postleitzahl', '', '', '', 0, '0000-00-00 00:00:00'),
(5004, 'Zimmeranzahl', 'zimmeranzahl', 501, 'text', '', 1, 'Zimmer', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'joomla_article', '#__cck_store_form_ferienhaus_datenbank', 'zimmeranzahl', '', '', '', 0, '0000-00-00 00:00:00'),
(5005, 'Hausbild', 'hausbild', 501, 'upload_image', '', 1, '', ' ', 3, '', '', '', '', '{"path":"images\\/","path_content":"0","folder_permissions":"0755","path_user":"0","media_extensions":"image","legal_extensions":"gif,jpg,png,GIF,JPG,PNG","max_size":"5","size_unit":"2","form_preview":"0","delete_box":"0","custom_path":"0","path_label":"Path","multivalue_mode":"0","title_image":"1","title_label":"Title","desc_image":"1","desc_label":"Description alt","force_thumb_creation":"0","content_preview":"0","image_process":"","image_width":"200","image_height":"200","thumb1_process":"0","thumb1_width":"150","thumb1_height":"50","thumb2_process":"0","thumb2_width":"","thumb2_height":"","thumb3_process":"0","thumb3_width":"","thumb3_height":"","thumb4_process":"0","thumb4_width":"","thumb4_height":"","thumb5_process":"0","thumb5_width":"","thumb5_height":"","thumb6_process":"0","thumb6_width":"","thumb6_height":"","thumb7_process":"0","thumb7_width":"","thumb7_height":"","thumb8_process":"0","thumb8_width":"","thumb8_height":"","thumb9_process":"0","thumb9_width":"","thumb9_height":"","thumb10_process":"0","thumb10_width":"","thumb10_height":""}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'joomla_article', '#__cck_store_form_ferienhaus_datenbank', 'hausbild', '', '', '', 0, '0000-00-00 00:00:00'),
(5006, 'Objektbeschreibung', 'objektbeschreibung', 501, 'wysiwyg_editor', '', 1, 'Objektbeschreibung', 'klick to edit', 3, '', '', '', '', '{"editor":"tinymce","width":"100%","height":"280","import":""}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'joomla_article', '#__cck_store_form_ferienhaus_datenbank', 'objektbeschreibung', '', '', '', 0, '0000-00-00 00:00:00'),
(5007, 'Haus Kategorie ID', 'haus_kategorie_id', 501, 'text', '', 1, 'Haus Kategorie ID', ' ', 3, '', '', '10', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'joomla_article', '#__content', 'catid', '', '', '', 0, '0000-00-00 00:00:00'),
(5008, 'Objektort', 'objektort', 501, 'select_simple', '', 1, 'Objektort', 'Bitte Ort wählen', 3, '', '', '', 'Hier||Dort||Nordsee Dorf', '{"options":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'joomla_article', '#__cck_store_form_ferienhaus_datenbank', 'objektort', '', '', '', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_cck_core_folders`
--

CREATE TABLE IF NOT EXISTS `joom_cck_core_folders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `path` varchar(1024) NOT NULL,
  `title` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `introchar` varchar(2) NOT NULL,
  `colorchar` varchar(50) NOT NULL,
  `elements` varchar(255) NOT NULL,
  `icon_path` varchar(100) NOT NULL,
  `depth` int(11) NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `description` varchar(5120) NOT NULL,
  `app` varchar(50) NOT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `home` tinyint(3) NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=502 ;

--
-- Daten für Tabelle `joom_cck_core_folders`
--

INSERT INTO `joom_cck_core_folders` (`id`, `asset_id`, `parent_id`, `path`, `title`, `name`, `color`, `introchar`, `colorchar`, `elements`, `icon_path`, `depth`, `lft`, `rgt`, `description`, `app`, `featured`, `home`, `published`, `checked_out`, `checked_out_time`) VALUES
(1, 64, 0, '', 'Quick Folder', 'quick_folder', '#ffd700', '', '#ffffff', 'type,field,search,template', '', 0, 0, 0, '', '', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(2, 65, 0, '', 'Top', 'TOP', '', '', '', 'type,field,search,template', '', 0, 1, 50, '', '', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(10, 68, 5, 'joomla/joomla_article', 'Article', 'joomla_article', '#0090d1', 'A', '#ffffff', 'type,field,search,template', 'media/cck/apps/joomla_article/images/icon.png', 2, 7, 18, '', 'joomla_article', 1, 1, 1, 0, '0000-00-00 00:00:00'),
(11, 74, 5, 'joomla/joomla_category', 'Category', 'joomla_category', '#0090d1', 'C', '#ffffff', 'type,field,search,template', 'media/cck/apps/joomla_category/images/icon.png', 2, 19, 28, '', 'joomla_category', 1, 1, 1, 0, '0000-00-00 00:00:00'),
(13, 79, 5, 'joomla/joomla_user', 'User', 'joomla_user', '#0090d1', 'U', '#ffffff', 'type,field,search,template', 'media/cck/apps/joomla_user/images/icon.png', 2, 29, 36, '', 'joomla_user', 1, 1, 1, 0, '0000-00-00 00:00:00'),
(6, 85, 2, 'seblod', 'SEBLOD', 'seblod', '#00b3ff', '', '#ffffff', 'type,field,search,template', '', 1, 42, 47, '', '', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(7, 86, 6, 'seblod/apps', 'Apps', 'apps', '#00b3ff', 'A', '#ffffff', 'type,field,search,template', '', 2, 43, 44, '', '', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(3, 66, 2, 'core', 'Core', 'core', '#ad0aff', '*', '#ffffff', 'type,field,search,template', '', 1, 2, 3, '', '', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(8, 87, 6, 'seblod/demo', 'Demo', 'demo', '#00b3ff', 'D', '#ffffff', 'type,field,search,template', '', 2, 45, 46, '', '', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(5, 67, 2, 'joomla', 'JOOMLA', 'joomla', '#0090d1', '', '#ffffff', 'type,field,search,template', '', 1, 6, 41, '', '', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(15, 73, 10, 'joomla/joomla_article/publishing', 'Publishing', 'publishing', '#0090d1', 'A.', '#ffffff', 'field', '', 3, 16, 17, '', 'joomla_article', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(16, 70, 10, 'joomla/joomla_article/basic', 'Basic', 'basic', '#0090d1', 'A.', '#ffffff', 'field', '', 3, 10, 11, '', 'joomla_article', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(17, 72, 10, 'joomla/joomla_article/metadata', 'Metadata', 'metadata', '#0090d1', 'A.', '#ffffff', 'field', '', 3, 14, 15, '', 'joomla_article', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(21, 81, 13, 'joomla/joomla_user/basic', 'Basic', 'basic', '#0090d1', 'U.', '#ffffff', 'field', '', 3, 32, 33, '', 'joomla_user', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(18, 78, 11, 'joomla/joomla_category/publishing', 'Publishing', 'publishing', '#0090d1', 'C.', '#ffffff', 'field', '', 3, 26, 27, '', 'joomla_category', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(20, 77, 11, 'joomla/joomla_category/metadata', 'Metadata', 'metadata', '#0090d1', 'C.', '#ffffff', 'field', '', 3, 24, 25, '', 'joomla_category', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(19, 76, 11, 'joomla/joomla_category/basic', 'Basic', 'basic', '#0090d1', 'C.', '#ffffff', 'field', '', 3, 22, 23, '', 'joomla_category', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(14, 83, 5, 'joomla/joomla_user_group', 'User Group', 'joomla_user_group', '#0090d1', 'G', '#ffffff', 'type,field,search,template', 'media/cck/apps/joomla_user_group/images/icon.png', 2, 37, 40, '', 'joomla_user_group', 1, 1, 1, 0, '0000-00-00 00:00:00'),
(22, 69, 10, 'joomla/joomla_article/base', 'Base', 'base', '#0090d1', 'A.', '#ffffff', 'field', '', 3, 8, 9, '', 'joomla_article', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(23, 75, 11, 'joomla/joomla_category/base', 'Base', 'base', '#0090d1', 'C.', '#ffffff', 'field', '', 3, 20, 21, '', 'joomla_category', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(26, 84, 14, 'joomla/joomla_user_group/base', 'Base', 'base', '#0090d1', 'G.', '#ffffff', 'field', '', 3, 38, 39, '', 'joomla_user_group', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(24, 80, 13, 'joomla/joomla_user/base', 'Base', 'base', '#0090d1', 'U.', '#ffffff', 'field', '', 3, 30, 31, '', 'joomla_user', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(28, 71, 10, 'joomla/joomla_article/images_links', 'Images & Links', 'images_links', '#0090d1', 'A.', '#ffffff', 'field', '', 3, 12, 13, '', 'joomla_article', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(29, 82, 13, 'joomla/joomla_user/profile', 'Profile', 'profile', '#0090d1', 'U.', '#ffffff', 'field', '', 3, 34, 35, '', 'joomla_user', 0, 0, 1, 0, '0000-00-00 00:00:00'),
(500, 101, 2, 'tutorial', 'Tutorial', 'tutorial', '#ff0000', 'TU', '#ffffff', 'type,field,search,template', '', 1, 48, 49, '', '', 1, 0, 1, 0, '0000-00-00 00:00:00'),
(501, 106, 2, 'ferienhaus_datenbank', 'Ferienhaus Datenbank', 'ferienhaus_datenbank', '#2bff00', 'FD', '#000000', 'type,field,search,template', '', 1, 4, 5, '', '', 1, 0, 1, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_cck_core_objects`
--

CREATE TABLE IF NOT EXISTS `joom_cck_core_objects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `component` varchar(50) NOT NULL,
  `options` text NOT NULL,
  `vars` varchar(255) NOT NULL,
  `view` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `idx_component` (`component`),
  KEY `idx_view` (`view`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=500 ;

--
-- Daten für Tabelle `joom_cck_core_objects`
--

INSERT INTO `joom_cck_core_objects` (`id`, `title`, `name`, `component`, `options`, `vars`, `view`) VALUES
(1, 'Joomla! Article', 'joomla_article', 'com_content', '{"default_type":"article","add":"1","add_layout":"icon","add_alt":"2","add_redirect":"1","edit":"0","edit_alt":"1"}', '', ''),
(2, 'Joomla! Category', 'joomla_category', 'com_categories', '{"default_type":"category","add":"1","add_layout":"icon","add_alt":"2","add_redirect":"1","edit":"0","edit_alt":"1","exclude":""}', '', ''),
(3, 'Joomla! User', 'joomla_user', 'com_users', '{"default_type":"user","add":"1","add_layout":"icon","add_alt":"2","add_redirect":"1","edit":"0","edit_alt":"1","registration":"1"}', '', 'users'),
(4, 'Joomla! User Group', 'joomla_user_group', 'com_users', '{"default_type":"user_group","add":"1","add_layout":"icon","add_alt":"2","add_redirect":"1","edit":"0","edit_alt":"1"}', '', 'groups');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_cck_core_preferences`
--

CREATE TABLE IF NOT EXISTS `joom_cck_core_preferences` (
  `userid` int(11) NOT NULL,
  `options` text NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_cck_core_searchs`
--

CREATE TABLE IF NOT EXISTS `joom_cck_core_searchs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `folder` int(11) NOT NULL,
  `content` int(11) NOT NULL DEFAULT '0',
  `template_search` int(11) NOT NULL,
  `template_filter` int(11) NOT NULL,
  `template_list` int(11) NOT NULL,
  `template_item` int(11) NOT NULL,
  `description` varchar(5120) NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `published` tinyint(4) NOT NULL,
  `options` text NOT NULL,
  `location` varchar(50) NOT NULL,
  `sef_route` varchar(50) NOT NULL,
  `storage_location` varchar(50) NOT NULL,
  `stylesheets` varchar(5) NOT NULL,
  `version` int(11) NOT NULL DEFAULT '1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `idx_folder` (`folder`),
  KEY `idx_template_search` (`template_search`),
  KEY `idx_template_filter` (`template_filter`),
  KEY `idx_template_list` (`template_list`),
  KEY `idx_template_item` (`template_item`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=502 ;

--
-- Daten für Tabelle `joom_cck_core_searchs`
--

INSERT INTO `joom_cck_core_searchs` (`id`, `title`, `name`, `alias`, `folder`, `content`, `template_search`, `template_filter`, `template_list`, `template_item`, `description`, `access`, `published`, `options`, `location`, `sef_route`, `storage_location`, `stylesheets`, `version`, `checked_out`, `checked_out_time`) VALUES
(1, 'Articles', 'articles', '', 10, 1, 9, 9, 10, 9, '', 1, 1, '', 'site', '', 'joomla_article', '', 1, 0, '0000-00-00 00:00:00'),
(5, 'Categories', 'categories', '', 11, 1, 9, 9, 10, 9, '', 1, 1, '', 'site', '', 'joomla_category', '', 1, 0, '0000-00-00 00:00:00'),
(8, 'Users', 'users', '', 13, 1, 9, 9, 10, 9, '', 1, 1, '', 'site', '', 'joomla_user', '', 1, 0, '0000-00-00 00:00:00'),
(501, 'Ferienhaussuche', 'ferienhaussuche', '', 501, 0, 20, 9, 0, 9, '', 1, 1, '{"limit":"0","cache":"0","cache_per_user":"0","stages_optional":"","cache2":"0","pagination":"","debug":"","sef":"","prepare_content":"","auto_redirect":"0","ordering":"","show_list_title":"1","tag_list_title":"h2","class_list_title":"","show_list_desc":"1","show_form":"1","show_items_number":"0","label_items_number":"Results","class_items_number":"total","show_pages_number":"1","show_pagination":"0","class_pagination":"pagination","message_style_no_access":"error","action_no_access":"redirection","message_no_access":"","redirection_url_no_access":"index.php?option=com_users&view=login","message_style":"message","action":"0","message":"","show_list_desc_no_result":"1"}', '', '', '', '', 4, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_cck_core_search_field`
--

CREATE TABLE IF NOT EXISTS `joom_cck_core_search_field` (
  `searchid` int(11) NOT NULL,
  `fieldid` int(11) NOT NULL,
  `client` varchar(50) NOT NULL,
  `ordering` int(11) NOT NULL,
  `label` varchar(255) NOT NULL COMMENT 'search,list,item',
  `variation` varchar(50) NOT NULL COMMENT 'search',
  `variation_override` varchar(1024) NOT NULL COMMENT 'search',
  `required` varchar(50) NOT NULL COMMENT 'search',
  `required_alert` varchar(1024) NOT NULL COMMENT 'search',
  `validation` varchar(50) NOT NULL COMMENT 'search',
  `validation_options` varchar(1024) NOT NULL COMMENT 'search',
  `link` varchar(50) NOT NULL COMMENT 'list,item',
  `link_options` varchar(1024) NOT NULL COMMENT 'list,item',
  `live` varchar(50) NOT NULL COMMENT 'search',
  `live_options` varchar(1024) NOT NULL COMMENT 'search',
  `live_value` varchar(255) NOT NULL COMMENT 'search',
  `markup` varchar(50) NOT NULL COMMENT 'search,list,item',
  `markup_class` varchar(255) NOT NULL COMMENT 'list,item',
  `match_collection` varchar(50) NOT NULL COMMENT 'search',
  `match_mode` varchar(50) NOT NULL COMMENT 'search',
  `match_options` varchar(512) NOT NULL COMMENT 'search',
  `match_value` varchar(50) NOT NULL COMMENT 'search',
  `typo` varchar(50) NOT NULL COMMENT 'list,item',
  `typo_label` tinyint(4) NOT NULL COMMENT 'list,item',
  `typo_options` varchar(2048) NOT NULL COMMENT 'list,item',
  `stage` int(11) NOT NULL DEFAULT '0' COMMENT 'search',
  `access` int(11) NOT NULL DEFAULT '0' COMMENT 'search,list,item',
  `restriction` varchar(512) NOT NULL COMMENT 'search,list,item',
  `restriction_options` text NOT NULL COMMENT 'search,list,item',
  `computation` varchar(512) NOT NULL COMMENT 'search',
  `computation_options` varchar(1024) NOT NULL COMMENT 'search',
  `conditional` varchar(2048) NOT NULL COMMENT 'search',
  `conditional_options` text NOT NULL COMMENT 'search',
  `position` varchar(50) NOT NULL COMMENT 'search,list,item',
  PRIMARY KEY (`searchid`,`fieldid`,`client`),
  KEY `searchid` (`searchid`),
  KEY `fieldid` (`fieldid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joom_cck_core_search_field`
--

INSERT INTO `joom_cck_core_search_field` (`searchid`, `fieldid`, `client`, `ordering`, `label`, `variation`, `variation_override`, `required`, `required_alert`, `validation`, `validation_options`, `link`, `link_options`, `live`, `live_options`, `live_value`, `markup`, `markup_class`, `match_collection`, `match_mode`, `match_options`, `match_value`, `typo`, `typo_label`, `typo_options`, `stage`, `access`, `restriction`, `restriction_options`, `computation`, `computation_options`, `conditional`, `conditional_options`, `position`) VALUES
(5, 1, 'search', 1, '', 'hidden', '', '', '', '', '', '', '', '', '', 'category', '', '', '', 'exact', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 502, 'search', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', ' btn-toolbar', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 294, 'search', 4, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 313, 'search', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 308, 'search', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 1, 'search', 1, '', 'hidden', '', '', '', '', '', '', '', '', '', 'user', '', '', '', 'exact', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 302, 'item', 1, 'clear', '', '', '', '', '', '', 'content', '', '', '', '', '', '', '', '', '', '', 'heading', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 316, 'item', 2, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 313, 'item', 1, 'clear', '', '', '', '', '', '', 'content', '', '', '', '', '', '', '', '', '', '', 'heading', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 318, 'item', 2, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 308, 'item', 1, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'heading', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 302, 'search', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 1, 'search', 1, '', 'hidden', '', '', '', '', '', '', '', '', '', 'article', '', '', '', 'exact', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 504, 'search', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 502, 'search', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', ' btn-toolbar', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 294, 'search', 4, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 504, 'search', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 502, 'search', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', ' btn-toolbar', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 294, 'search', 4, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 504, 'search', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(501, 5004, 'search', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(501, 294, 'search', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(501, 1, 'search', 1, '', 'hidden', '', '', '', '', '', '', '', '', '', 'ferienhaus_datenbank', '', '', '', 'exact', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(501, 5008, 'search', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(501, 5003, 'search', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_cck_core_search_position`
--

CREATE TABLE IF NOT EXISTS `joom_cck_core_search_position` (
  `searchid` int(11) NOT NULL,
  `position` varchar(50) NOT NULL,
  `client` varchar(50) NOT NULL,
  `legend` varchar(255) NOT NULL,
  `variation` varchar(50) NOT NULL,
  `variation_options` text NOT NULL,
  `width` varchar(50) NOT NULL,
  `height` varchar(50) NOT NULL,
  `css` varchar(255) NOT NULL,
  PRIMARY KEY (`searchid`,`position`,`client`),
  KEY `position` (`position`),
  KEY `searchid` (`searchid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joom_cck_core_search_position`
--

INSERT INTO `joom_cck_core_search_position` (`searchid`, `position`, `client`, `legend`, `variation`, `variation_options`, `width`, `height`, `css`) VALUES
(1, 'mainbody', 'search', '', '', '', '', '', ''),
(5, 'mainbody', 'search', '', '', '', '', '', ''),
(8, 'mainbody', 'search', '', '', '', '', '', ''),
(1, 'clear', 'search', '', '', '', '', '', ''),
(5, 'clear', 'search', '', '', '', '', '', ''),
(8, 'clear', 'search', '', '', '', '', '', ''),
(1, 'mainbody', 'item', '', '', '', '', '', ''),
(1, 'clear', 'item', '', '', '', '', '', ''),
(5, 'mainbody', 'item', '', '', '', '', '', ''),
(5, 'clear', 'item', '', '', '', '', '', ''),
(8, 'mainbody', 'item', '', '', '', '', '', ''),
(8, 'clear', 'item', '', '', '', '', '', ''),
(501, 'mainbody', 'search', '', '', '', '', '', ''),
(501, 'clear', 'search', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_cck_core_sites`
--

CREATE TABLE IF NOT EXISTS `joom_cck_core_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `aliases` varchar(512) NOT NULL,
  `guest` int(11) NOT NULL,
  `guest_only_group` int(11) NOT NULL,
  `guest_only_viewlevel` int(11) NOT NULL,
  `groups` varchar(255) NOT NULL,
  `viewlevels` varchar(255) NOT NULL,
  `configuration` varchar(1024) NOT NULL,
  `options` varchar(2048) NOT NULL,
  `description` varchar(5120) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=500 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_cck_core_templates`
--

CREATE TABLE IF NOT EXISTS `joom_cck_core_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `folder` int(11) NOT NULL,
  `mode` tinyint(4) NOT NULL,
  `description` varchar(5120) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `idx_folder` (`folder`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=500 ;

--
-- Daten für Tabelle `joom_cck_core_templates`
--

INSERT INTO `joom_cck_core_templates` (`id`, `title`, `name`, `folder`, `mode`, `description`, `published`, `checked_out`, `checked_out_time`) VALUES
(1, 'One', 'seb_one', 3, 0, '', 1, 0, '0000-00-00 00:00:00'),
(2, 'Blog', 'seb_blog', 3, 2, '', 1, 0, '0000-00-00 00:00:00'),
(3, 'Table', 'seb_table', 3, 2, '', 1, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_cck_core_types`
--

CREATE TABLE IF NOT EXISTS `joom_cck_core_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `folder` int(11) NOT NULL,
  `template_admin` int(11) NOT NULL DEFAULT '0',
  `template_site` int(11) NOT NULL DEFAULT '0',
  `template_content` int(11) NOT NULL DEFAULT '0',
  `template_intro` int(11) NOT NULL DEFAULT '0',
  `description` varchar(5120) NOT NULL,
  `indexed` varchar(50) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `options_admin` text NOT NULL,
  `options_site` text NOT NULL,
  `options_content` text NOT NULL,
  `options_intro` text NOT NULL,
  `location` varchar(50) NOT NULL,
  `storage_location` varchar(50) NOT NULL,
  `stylesheets` varchar(5) NOT NULL,
  `version` int(11) NOT NULL DEFAULT '1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `idx_folder` (`folder`),
  KEY `idx_template_admin` (`template_admin`),
  KEY `idx_template_site` (`template_site`),
  KEY `idx_template_content` (`template_content`),
  KEY `idx_template_intro` (`template_intro`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=502 ;

--
-- Daten für Tabelle `joom_cck_core_types`
--

INSERT INTO `joom_cck_core_types` (`id`, `asset_id`, `title`, `name`, `alias`, `folder`, `template_admin`, `template_site`, `template_content`, `template_intro`, `description`, `indexed`, `published`, `options_admin`, `options_site`, `options_content`, `options_intro`, `location`, `storage_location`, `stylesheets`, `version`, `checked_out`, `checked_out_time`) VALUES
(1, 88, 'Article', 'article', '', 10, 9, 9, 9, 9, '', '', 1, '', '{"redirection":"form_edition"}', '', '', '', 'joomla_article', '', 2, 0, '0000-00-00 00:00:00'),
(28, 98, 'User Grp Basic', 'user_grp_basic', '', 13, 9, 9, 9, 9, '', '', 0, '', '', '', '', '', 'none', '', 2, 0, '0000-00-00 00:00:00'),
(5, 89, 'Category', 'category', '', 11, 9, 9, 9, 9, '', '', 1, '', '{"redirection":"form_edition"}', '', '', '', 'joomla_category', '', 2, 0, '0000-00-00 00:00:00'),
(8, 90, 'User', 'user', '', 13, 9, 9, 9, 9, '', '', 1, '', '', '', '', '', 'joomla_user', '', 2, 0, '0000-00-00 00:00:00'),
(25, 95, 'Category Grp Publishing', 'category_grp_publishing', '', 11, 9, 9, 9, 9, '', '', 0, '', '', '', '', '', 'none', '', 2, 0, '0000-00-00 00:00:00'),
(26, 96, 'Category Grp Basic', 'category_grp_basic', '', 11, 9, 9, 9, 9, '', '', 0, '', '', '', '', '', 'none', '', 2, 0, '0000-00-00 00:00:00'),
(21, 93, 'Article Grp Basic', 'article_grp_basic', '', 10, 9, 9, 9, 9, '', '', 0, '', '', '', '', '', 'none', '', 2, 0, '0000-00-00 00:00:00'),
(11, 91, 'User Group', 'user_group', '', 14, 9, 9, 9, 9, '', '', 1, '', '', '', '', '', 'joomla_user_group', '', 2, 0, '0000-00-00 00:00:00'),
(20, 92, 'Article Grp Publishing', 'article_grp_publishing', '', 10, 9, 9, 9, 9, '', '', 0, '', '', '', '', '', 'none', '', 2, 0, '0000-00-00 00:00:00'),
(22, 94, 'Article Grp Metadata', 'article_grp_metadata', '', 10, 9, 9, 9, 9, '', '', 0, '', '', '', '', '', 'none', '', 2, 0, '0000-00-00 00:00:00'),
(27, 97, 'Category Grp Metadata', 'category_grp_metadata', '', 11, 9, 9, 9, 9, '', '', 0, '', '', '', '', '', 'none', '', 2, 0, '0000-00-00 00:00:00'),
(30, 99, 'Article Grp Images & Links', 'article_grp_images_links', '', 10, 9, 9, 9, 9, '', '', 0, '', '', '', '', '', 'none', '', 2, 0, '0000-00-00 00:00:00'),
(35, 100, 'Button Grp (Form)', 'button_grp_form', '', 3, 9, 9, 9, 9, '', '', 0, '', '', '', '', 'none', 'none', '', 1, 0, '0000-00-00 00:00:00'),
(500, 102, 'Pferdedatenblatt', 'pferdedatenblatt', '', 500, 12, 0, 15, 14, '', 'intro', 1, '{"message_style":"message","message":"","data_integrity_excluded":"","message_style_no_access":"error","action_no_access":"redirection","message_no_access":"","redirection_url_no_access":"index.php?option=com_users&view=login","stages":"1","validation_position":"","validation_scroll":"","validation_color":"","validation_background_color":""}', '{}', '{"title":"","typo":"1","sef":""}', '{"title":"","typo":"1","sef":""}', '', 'joomla_article', '', 17, 0, '0000-00-00 00:00:00'),
(501, 107, 'Ferienhaussuche', 'ferienhaus_datenbank', '', 501, 16, 9, 17, 9, '', 'intro', 1, '{"message_style":"message","message":"","data_integrity_excluded":"","message_style_no_access":"error","action_no_access":"redirection","message_no_access":"","redirection_url_no_access":"index.php?option=com_users&view=login","stages":"1","validation_position":"","validation_scroll":"","validation_color":"","validation_background_color":""}', '', '{"title":"","typo":"1","sef":""}', '', '', 'joomla_article', '', 39, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_cck_core_type_field`
--

CREATE TABLE IF NOT EXISTS `joom_cck_core_type_field` (
  `typeid` int(11) NOT NULL,
  `fieldid` int(11) NOT NULL,
  `client` varchar(50) NOT NULL,
  `ordering` int(11) NOT NULL,
  `label` varchar(255) NOT NULL COMMENT 'admin,site,intro,content',
  `variation` varchar(50) NOT NULL COMMENT 'admin,site',
  `variation_override` varchar(1024) NOT NULL COMMENT 'admin,site',
  `required` varchar(50) NOT NULL COMMENT 'admin,site',
  `required_alert` varchar(1024) NOT NULL COMMENT 'admin,site',
  `validation` varchar(50) NOT NULL COMMENT 'admin,site',
  `validation_options` varchar(1024) NOT NULL COMMENT 'admin,site',
  `link` varchar(50) NOT NULL COMMENT 'intro,content',
  `link_options` varchar(1024) NOT NULL COMMENT 'intro,content',
  `live` varchar(50) NOT NULL COMMENT 'admin,site',
  `live_options` varchar(1024) NOT NULL COMMENT 'admin,site',
  `live_value` varchar(255) NOT NULL COMMENT 'admin,site',
  `markup` varchar(50) NOT NULL COMMENT 'admin,site,intro,content',
  `markup_class` varchar(255) NOT NULL COMMENT 'intro,content',
  `typo` varchar(50) NOT NULL COMMENT 'intro,content',
  `typo_label` tinyint(4) NOT NULL COMMENT 'intro,content',
  `typo_options` varchar(2048) NOT NULL COMMENT 'intro,content',
  `stage` int(11) NOT NULL DEFAULT '0' COMMENT 'admin,site',
  `access` int(11) NOT NULL DEFAULT '0' COMMENT 'admin,site,intro,content',
  `restriction` varchar(512) NOT NULL COMMENT 'admin,site,intro,content',
  `restriction_options` text NOT NULL COMMENT 'admin,site,intro,content',
  `computation` varchar(512) NOT NULL COMMENT 'admin,site',
  `computation_options` varchar(1024) NOT NULL COMMENT 'admin,site',
  `conditional` varchar(2048) NOT NULL COMMENT 'admin,site',
  `conditional_options` text NOT NULL COMMENT 'admin,site',
  `position` varchar(50) NOT NULL COMMENT 'admin,site,intro,content',
  PRIMARY KEY (`typeid`,`fieldid`,`client`),
  KEY `typeid` (`typeid`),
  KEY `fieldid` (`fieldid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joom_cck_core_type_field`
--

INSERT INTO `joom_cck_core_type_field` (`typeid`, `fieldid`, `client`, `ordering`, `label`, `variation`, `variation_override`, `required`, `required_alert`, `validation`, `validation_options`, `link`, `link_options`, `live`, `live_options`, `live_value`, `markup`, `markup_class`, `typo`, `typo_label`, `typo_options`, `stage`, `access`, `restriction`, `restriction_options`, `computation`, `computation_options`, `conditional`, `conditional_options`, `position`) VALUES
(5, 496, 'admin', 14, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 504, 'admin', 15, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(20, 359, 'admin', 7, '', 'value', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, 'cck_workflow', '{"location":"","action":"edit"}', '', '', '', '', 'mainbody'),
(20, 357, 'admin', 6, '', 'value', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, 'cck_workflow', '{"location":"","action":"edit"}', '', '', '', '', 'mainbody'),
(21, 516, 'admin', 25, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 356, 'admin', 24, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 325, 'admin', 23, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 421, 'admin', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 347, 'admin', 21, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 346, 'admin', 20, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 345, 'admin', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 344, 'admin', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 343, 'admin', 17, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 342, 'admin', 16, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 341, 'admin', 15, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 340, 'admin', 14, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 515, 'admin', 13, '', '', '', '', '', '', '', '', '', '', '', '', '', ' span6', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 339, 'admin', 12, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 338, 'admin', 11, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 337, 'admin', 10, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 336, 'admin', 9, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 335, 'admin', 8, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 334, 'admin', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(22, 355, 'admin', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(22, 326, 'admin', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(22, 349, 'admin', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(22, 436, 'admin', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(22, 354, 'admin', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(22, 353, 'admin', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(25, 387, 'admin', 4, '', 'value', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, 'cck_workflow', '{"location":"","action":"edit"}', '', '', '', '', 'mainbody'),
(26, 378, 'admin', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(26, 377, 'admin', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(27, 380, 'admin', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(27, 381, 'admin', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(27, 382, 'admin', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(27, 383, 'admin', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(28, 366, 'admin', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(28, 367, 'admin', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(28, 368, 'admin', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(28, 369, 'admin', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(28, 370, 'admin', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(28, 371, 'admin', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 506, 'admin', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', ' span6', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 398, 'admin', 20, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 507, 'admin', 21, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 316, 'intro', 1, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 318, 'content', 1, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 400, 'content', 2, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 494, 'admin', 22, 'Images and Links', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 316, 'content', 1, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 507, 'admin', 21, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 318, 'intro', 1, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 502, 'site', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', ' btn-toolbar', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 487, 'site', 2, 'Save', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 488, 'site', 3, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 490, 'site', 4, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 504, 'site', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 381, 'site', 17, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 380, 'site', 16, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 373, 'site', 14, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 478, 'site', 15, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 313, 'site', 7, '', '', '', 'required', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 318, 'site', 8, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 329, 'site', 14, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 375, 'site', 13, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 325, 'site', 21, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 421, 'site', 20, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 347, 'site', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 346, 'site', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 345, 'site', 17, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 344, 'site', 16, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 343, 'site', 15, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 342, 'site', 14, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 341, 'site', 13, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 340, 'site', 12, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 339, 'site', 11, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 338, 'site', 10, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 337, 'site', 9, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 336, 'site', 8, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 335, 'site', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 334, 'site', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 333, 'site', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 332, 'site', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 331, 'site', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 330, 'site', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 320, 'site', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(22, 353, 'site', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(22, 354, 'site', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(22, 349, 'site', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(22, 326, 'site', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(22, 355, 'site', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(22, 327, 'site', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(20, 307, 'site', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(20, 319, 'site', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(20, 350, 'site', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(20, 351, 'site', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(20, 352, 'site', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(20, 359, 'site', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(20, 357, 'site', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(20, 384, 'site', 8, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(20, 385, 'site', 9, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(26, 377, 'site', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(26, 378, 'site', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(26, 379, 'site', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(27, 380, 'site', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(27, 381, 'site', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(27, 382, 'site', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(27, 383, 'site', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(25, 376, 'site', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(25, 386, 'site', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(25, 387, 'site', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(25, 388, 'site', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(28, 366, 'site', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(28, 367, 'site', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(28, 368, 'site', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(28, 369, 'site', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(28, 370, 'site', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(28, 371, 'site', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 473, 'admin', 8, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 404, 'admin', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 407, 'admin', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 405, 'admin', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 406, 'admin', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 408, 'admin', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 411, 'admin', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 409, 'admin', 8, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 410, 'admin', 9, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 512, 'admin', 10, '', '', '', '', '', '', '', '', '', '', '', '', '', ' span6', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 412, 'admin', 11, '', '', '', '', '', 'url', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 420, 'site', 17, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 419, 'site', 16, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 418, 'site', 15, '', '', '', '', '', 'url', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 417, 'site', 14, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 416, 'site', 13, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 415, 'site', 12, '', '', '', '', '', 'url', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 414, 'site', 11, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 413, 'site', 10, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 412, 'site', 9, '', '', '', '', '', 'url', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 410, 'site', 8, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 409, 'site', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 411, 'site', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 408, 'site', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 406, 'site', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 405, 'site', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 407, 'site', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 404, 'site', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 413, 'admin', 12, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 414, 'admin', 13, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 511, 'admin', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', ' span6', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 356, 'site', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 333, 'admin', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 426, 'admin', 28, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 365, 'admin', 15, '', 'value', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, 'cck_workflow', '{"location":"","action":"edit"}', '', '', '', '', 'mainbody'),
(8, 490, 'site', 15, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 423, 'admin', 23, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 425, 'admin', 24, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 395, 'admin', 20, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(20, 319, 'admin', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(20, 307, 'admin', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 317, 'site', 13, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 301, 'site', 11, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 506, 'admin', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', ' span6', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 348, 'site', 12, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 476, 'site', 6, 'Category', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 480, 'admin', 24, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 477, 'admin', 16, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 505, 'admin', 17, '', '', '', '', '', '', '', '', '', '', '', '', '', ' span6', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 396, 'admin', 18, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 375, 'admin', 11, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 373, 'admin', 12, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 379, 'admin', 13, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 394, 'admin', 18, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 505, 'admin', 17, '', '', '', '', '', '', '', '', '', '', '', '', '', ' span6', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 477, 'admin', 16, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 504, 'admin', 15, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 495, 'admin', 14, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 328, 'admin', 13, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 329, 'admin', 12, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 317, 'admin', 11, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 348, 'admin', 10, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 301, 'admin', 9, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 332, 'admin', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 331, 'admin', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 330, 'admin', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 320, 'admin', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(21, 514, 'admin', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', ' span6', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 415, 'admin', 14, '', '', '', '', '', 'url', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 416, 'admin', 15, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 417, 'admin', 16, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 418, 'admin', 17, '', '', '', '', '', 'url', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 419, 'admin', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 420, 'admin', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(30, 513, 'admin', 20, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(22, 327, 'admin', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(20, 350, 'admin', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(20, 352, 'admin', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(20, 351, 'admin', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 472, 'admin', 8, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 518, 'admin', 1, '', '', '', 'required', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(25, 388, 'admin', 3, '', 'value', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, 'cck_workflow', '{"location":"","action":"edit"}', '', '', '', '', 'mainbody'),
(25, 376, 'admin', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(25, 386, 'admin', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 480, 'admin', 17, 'Assigned User Groups', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 321, 'admin', 18, '&nbsp;', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 479, 'admin', 19, 'Basic Settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 399, 'admin', 20, ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 498, 'admin', 21, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 505, 'admin', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', ' span6', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 363, 'admin', 12, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 437, 'admin', 13, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 504, 'admin', 16, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 310, 'admin', 7, '', '', '', 'required', '', 'email', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 364, 'admin', 8, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 322, 'admin', 9, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 503, 'admin', 10, '', '', '', '', '', '', '', '', '', '', '', '', '', ' span6', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 362, 'admin', 11, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 311, 'admin', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 312, 'admin', 6, '', '', '', '', '', 'confirm', '{"alert":"","field":"user_password"}', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(11, 390, 'admin', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(11, 520, 'admin', 1, '', '', '', 'required', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 519, 'admin', 1, '', '', '', 'required', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 308, 'content', 1, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 430, 'content', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 433, 'content', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 435, 'content', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(35, 293, 'admin', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(35, 487, 'admin', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(35, 488, 'admin', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(35, 489, 'admin', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(35, 490, 'admin', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(35, 490, 'site', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(35, 489, 'site', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(35, 488, 'site', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(35, 487, 'site', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(35, 293, 'site', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 300, 'admin', 7, '', '', '', 'required', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 503, 'admin', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', ' span3', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 315, 'admin', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(11, 389, 'admin', 4, '', 'value', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, 'cck_workflow', '{"location":"","action":"edit"}', '', '', '', '', 'mainbody'),
(5, 397, 'admin', 23, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 314, 'admin', 9, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 374, 'admin', 10, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 400, 'admin', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 316, 'admin', 4, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 502, 'admin', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', ' span9', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 424, 'admin', 25, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 470, 'admin', 26, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 471, 'admin', 27, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 502, 'admin', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', ' span6', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 309, 'admin', 4, '', '', '', 'required', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 438, 'admin', 14, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, 'cck_workflow', '{"location":"","action":"edit"}', '', '', '', '', 'mainbody'),
(8, 476, 'admin', 2, 'Account', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 476, 'admin', 2, 'Content', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 517, 'admin', 1, '', '', '', 'required', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(11, 476, 'admin', 2, 'Group', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(11, 481, 'admin', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 427, 'admin', 29, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 506, 'admin', 30, '', '', '', '', '', '', '', '', '', '', '', '', '', ' span6', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 428, 'admin', 31, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 429, 'admin', 32, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 430, 'admin', 33, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 431, 'admin', 34, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 432, 'admin', 35, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 433, 'admin', 36, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 434, 'admin', 37, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 435, 'admin', 38, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 507, 'admin', 39, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 481, 'admin', 40, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(20, 384, 'admin', 8, '', 'value', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, 'cck_workflow', '{"location":"","action":"edit"}', '', '', '', '', 'mainbody'),
(20, 385, 'admin', 9, '', 'value', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, 'cck_workflow', '{"location":"","action":"edit"}', '', '', '', '', 'mainbody'),
(20, 324, 'admin', 10, '', 'value', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, 'cck_workflow', '{"location":"","action":"edit"}', '', '', '', '', 'mainbody'),
(5, 479, 'admin', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 476, 'admin', 2, 'Category', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 502, 'admin', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', ' span9', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 318, 'admin', 4, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 503, 'admin', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', ' span3', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 402, 'admin', 6, '', '', '', '', '', '', '', '', '', 'url_variable', '{"variable":"extension","type":"string"}', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 392, 'admin', 25, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 481, 'admin', 26, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 403, 'admin', 23, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 479, 'admin', 24, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 323, 'admin', 25, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 480, 'admin', 26, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 393, 'admin', 27, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 481, 'admin', 28, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(25, 497, 'admin', 5, '', 'value', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, 'cck_workflow', '{"location":"","action":"edit"}', '', '', '', '', 'mainbody'),
(25, 372, 'admin', 6, '', 'value', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, 'cck_workflow', '{"location":"","action":"edit"}', '', '', '', '', 'mainbody'),
(5, 504, 'site', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 490, 'site', 4, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 488, 'site', 3, '', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 502, 'site', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', ' btn-toolbar', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 487, 'site', 2, 'Save', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 352, 'site', 17, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 478, 'site', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 353, 'site', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 351, 'site', 16, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 328, 'site', 15, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 481, 'site', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 314, 'site', 11, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 374, 'site', 12, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 477, 'site', 9, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(5, 315, 'site', 10, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 481, 'site', 21, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 354, 'site', 20, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 302, 'site', 7, '', '', '', 'required', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 316, 'site', 8, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 477, 'site', 9, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 300, 'site', 10, '', '', '', 'required', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(1, 476, 'site', 6, 'Content', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 504, 'site', 16, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 487, 'site', 14, 'Save', '', '', '', '', '', '', '', '', '', '', '', 'none', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 502, 'site', 13, '', '', '', '', '', '', '', '', '', '', '', '', '', ' btn-toolbar', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 481, 'site', 12, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 2, '', '', '', '', '', '', 'mainbody'),
(8, 433, 'site', 11, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 2, '', '', '', '', '', '', 'mainbody'),
(8, 431, 'site', 10, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 2, '', '', '', '', '', '', 'mainbody'),
(8, 430, 'site', 9, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 2, '', '', '', '', '', '', 'mainbody'),
(8, 428, 'site', 8, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 2, '', '', '', '', '', '', 'mainbody'),
(8, 498, 'site', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 2, '', '', '', '', '', '', 'mainbody'),
(8, 310, 'site', 6, '', '', '', 'required', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 312, 'site', 5, '', '', '', 'required', '', 'confirm', '{"alert":"","field":"user_password"}', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 309, 'site', 3, '', '', '', 'required', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 311, 'site', 4, '', '', '', 'required', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 308, 'site', 2, '', '', '', 'required', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(8, 476, 'site', 1, 'Account', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 2, '', '', '', '', '', '', 'mainbody'),
(500, 5002, 'admin', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(500, 5002, 'content', 5, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'bottombody'),
(500, 328, 'content', 3, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'topbody'),
(500, 400, 'content', 1, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(500, 302, 'content', 2, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'topbody'),
(500, 400, 'admin', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(500, 302, 'admin', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(500, 328, 'admin', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(500, 5001, 'admin', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(500, 5001, 'content', 4, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'topbody'),
(501, 5005, 'content', 7, 'clear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'left-b'),
(501, 5003, 'admin', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(501, 5004, 'admin', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(501, 5005, 'admin', 4, 'Hausbild', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(501, 5007, 'admin', 5, '', 'hidden', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(501, 5006, 'admin', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(501, 5008, 'admin', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(501, 5007, 'content', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(501, 302, 'content', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'topbody'),
(501, 5008, 'content', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(501, 5003, 'content', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(501, 5004, 'content', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(501, 5006, 'content', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody'),
(501, 302, 'admin', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, '', '', '', '', '', '', 'mainbody');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_cck_core_type_position`
--

CREATE TABLE IF NOT EXISTS `joom_cck_core_type_position` (
  `typeid` int(11) NOT NULL,
  `position` varchar(50) NOT NULL,
  `client` varchar(50) NOT NULL,
  `legend` varchar(255) NOT NULL,
  `variation` varchar(50) NOT NULL,
  `variation_options` text NOT NULL,
  `width` varchar(50) NOT NULL,
  `height` varchar(50) NOT NULL,
  `css` varchar(255) NOT NULL,
  PRIMARY KEY (`typeid`,`position`,`client`),
  KEY `typeid` (`typeid`),
  KEY `position` (`position`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joom_cck_core_type_position`
--

INSERT INTO `joom_cck_core_type_position` (`typeid`, `position`, `client`, `legend`, `variation`, `variation_options`, `width`, `height`, `css`) VALUES
(25, 'mainbody', 'admin', '', '', '', '', '', ''),
(28, 'mainbody', 'admin', '', '', '', '', '', ''),
(26, 'mainbody', 'admin', '', '', '', '', '', ''),
(27, 'mainbody', 'admin', '', '', '', '', '', ''),
(11, 'mainbody', 'admin', '', '', '', '', '', ''),
(20, 'mainbody', 'admin', '', '', '', '', '', ''),
(21, 'mainbody', 'admin', '', '', '', '', '', ''),
(22, 'mainbody', 'admin', '', '', '', '', '', ''),
(25, 'clear', 'admin', '', '', '', '', '', ''),
(26, 'clear', 'admin', '', '', '', '', '', ''),
(27, 'debug', 'admin', '', '', '', '', '', ''),
(28, 'debug', 'admin', '', '', '', '', '', ''),
(11, 'clear', 'admin', '', '', '', '', '', ''),
(5, 'clear', 'content', '', '', '', '', '', ''),
(5, 'mainbody', 'intro', '', '', '', '', '', ''),
(1, 'mainbody', 'intro', '', '', '', '', '', ''),
(5, 'mainbody', 'content', '', '', '', '', '', ''),
(1, 'clear', 'intro', '', '', '', '', '', ''),
(1, 'mainbody', 'content', '', '', '', '', '', ''),
(1, 'clear', 'content', '', '', '', '', '', ''),
(1, 'mainbody', 'site', '', '', '', '', '', ''),
(5, 'clear', 'intro', '', '', '', '', '', ''),
(5, 'mainbody', 'site', '', '', '', '', '', ''),
(8, 'mainbody', 'site', '', '', '', '', '', ''),
(21, 'mainbody', 'site', '', '', '', '', '', ''),
(21, 'hidden', 'site', '', '', '', '', '', ''),
(22, 'mainbody', 'site', '', '', '', '', '', ''),
(22, 'hidden', 'site', '', '', '', '', '', ''),
(20, 'mainbody', 'site', '', '', '', '', '', ''),
(20, 'hidden', 'site', '', '', '', '', '', ''),
(26, 'mainbody', 'site', '', '', '', '', '', ''),
(26, 'hidden', 'site', '', '', '', '', '', ''),
(27, 'mainbody', 'site', '', '', '', '', '', ''),
(27, 'hidden', 'site', '', '', '', '', '', ''),
(25, 'mainbody', 'site', '', '', '', '', '', ''),
(25, 'hidden', 'site', '', '', '', '', '', ''),
(28, 'mainbody', 'site', '', '', '', '', '', ''),
(28, 'hidden', 'site', '', '', '', '', '', ''),
(5, 'clear', 'admin', '', '', '', '', '', ''),
(30, 'mainbody', 'admin', '', '', '', '', '', ''),
(30, 'mainbody', 'site', '', '', '', '', '', ''),
(30, 'hidden', 'site', '', '', '', '', '', ''),
(8, 'clear', 'content', '', '', '', '', '', ''),
(22, 'clear', 'admin', '', '', '', '', '', ''),
(8, 'clear', 'intro', '', '', '', '', '', ''),
(8, 'mainbody', 'content', '', '', '', '', '', ''),
(8, 'mainbody', 'admin', '', '', '', '', '', ''),
(8, 'clear', 'site', '', '', '', '', '', ''),
(30, 'clear', 'admin', '', '', '', '', '', ''),
(21, 'clear', 'admin', '', '', '', '', '', ''),
(20, 'clear', 'admin', '', '', '', '', '', ''),
(1, 'clear', 'admin', '', '', '', '', '', ''),
(1, 'mainbody', 'admin', '', '', '', '', '', ''),
(1, 'clear', 'site', '', '', '', '', '', ''),
(5, 'mainbody', 'admin', '', '', '', '', '', ''),
(5, 'clear', 'site', '', '', '', '', '', ''),
(8, 'clear', 'admin', '', '', '', '', '', ''),
(35, 'mainbody', 'admin', '', '', '', '', '', ''),
(35, 'clear', 'admin', '', '', '', '', '', ''),
(35, 'clear', 'site', '', '', '', '', '', ''),
(35, 'mainbody', 'site', '', '', '', '', '', ''),
(500, 'mainbody', 'admin', '', '', '', '', '', ''),
(500, 'clear', 'admin', '', '', '', '', '', ''),
(500, 'clear', 'site', '', '', '', '', '', ''),
(500, 'clear', 'intro', '', '', '', '', '', ''),
(500, 'bottombody', 'content', '', '', '', '', '', ''),
(500, 'clear', 'content', '', '', '', '', '', ''),
(500, 'topbody', 'content', '', '', '', '', '', ''),
(500, 'mainbody', 'content', '', '', '', '', '', ''),
(501, 'mainbody', 'admin', '', '', '', '', '', ''),
(501, 'clear', 'admin', '', '', '', '', '', ''),
(501, 'clear', 'content', '', '', '', '', '', ''),
(501, 'left-b', 'content', '', '', '', '', '', ''),
(501, 'mainbody', 'content', '', '', '', '', '', ''),
(501, 'topbody', 'content', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_cck_core_versions`
--

CREATE TABLE IF NOT EXISTS `joom_cck_core_versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `e_id` int(11) NOT NULL DEFAULT '0',
  `e_title` varchar(50) NOT NULL,
  `e_name` varchar(50) NOT NULL,
  `e_type` varchar(50) NOT NULL,
  `e_version` int(11) NOT NULL DEFAULT '1',
  `e_core` longblob,
  `e_more` varchar(255) NOT NULL,
  `e_more1` longblob,
  `e_more2` longblob,
  `e_more3` longblob,
  `e_more4` longblob,
  `e_more5` longblob,
  `date_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `note` varchar(255) NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_id_version` (`e_id`,`e_type`,`e_version`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=504 ;

--
-- Daten für Tabelle `joom_cck_core_versions`
--

INSERT INTO `joom_cck_core_versions` (`id`, `e_id`, `e_title`, `e_name`, `e_type`, `e_version`, `e_core`, `e_more`, `e_more1`, `e_more2`, `e_more3`, `e_more4`, `e_more5`, `date_time`, `user_id`, `note`, `checked_out`, `checked_out_time`) VALUES
(1, 1, 'Article', 'article', 'type', 1, 0x7b226964223a2231222c227469746c65223a2241727469636c65222c226e616d65223a2261727469636c65222c22616c696173223a22222c22666f6c646572223a223130222c2274656d706c6174655f61646d696e223a2239222c2274656d706c6174655f73697465223a2239222c2274656d706c6174655f636f6e74656e74223a2239222c2274656d706c6174655f696e74726f223a2239222c226465736372697074696f6e223a22222c22696e6465786564223a22222c227075626c6973686564223a2231222c226f7074696f6e735f61646d696e223a22222c226f7074696f6e735f73697465223a22222c226f7074696f6e735f636f6e74656e74223a22222c226f7074696f6e735f696e74726f223a22222c226c6f636174696f6e223a22222c2273746f726167655f6c6f636174696f6e223a226a6f6f6d6c615f61727469636c65222c2276657273696f6e223a322c22636865636b65645f6f7574223a2230222c22636865636b65645f6f75745f74696d65223a22303030302d30302d30302030303a30303a3030222c2261737365745f6964223a223839227d, '{"fields":{"1":"14","2":"14","3":"1","4":"2"}}', 0x7b226669656c6473223a5b7b22747970656964223a2231222c226669656c646964223a22333032222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2231222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a227265717569726564222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2231222c226669656c646964223a22333238222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2232222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2231222c226669656c646964223a22333030222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2233222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a227265717569726564222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2231222c226669656c646964223a22333031222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2234222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2231222c226669656c646964223a22333137222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2235222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2231222c226669656c646964223a22333438222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2236222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2231222c226669656c646964223a22333239222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2237222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2231222c226669656c646964223a22333234222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2238222c226c6162656c223a22222c22766172696174696f6e223a2276616c7565222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2231222c226669656c646964223a22333136222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2239222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2231222c226669656c646964223a22343030222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223130222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2231222c226669656c646964223a22333934222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223131222c226c6162656c223a2220222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a2272696768742d61227d2c7b22747970656964223a2231222c226669656c646964223a22333233222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223132222c226c6162656c223a2220222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a2272696768742d62227d2c7b22747970656964223a2231222c226669656c646964223a22343033222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223133222c226c6162656c223a2220222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a2272696768742d63227d2c7b22747970656964223a2231222c226669656c646964223a22333935222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223134222c226c6162656c223a2220222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a2272696768742d64227d5d2c22706f736974696f6e73223a5b7b22747970656964223a2231222c22706f736974696f6e223a22636c656172222c22636c69656e74223a2261646d696e222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a2231222c22706f736974696f6e223a226d61696e626f6479222c22636c69656e74223a2261646d696e222c226c6567656e64223a2244657461696c73222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a2231222c22706f736974696f6e223a2272696768742d61222c22636c69656e74223a2261646d696e222c226c6567656e64223a225075626c697368696e67204f7074696f6e73222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a2231222c22706f736974696f6e223a2272696768742d62222c22636c69656e74223a2261646d696e222c226c6567656e64223a224261736963204f7074696f6e73222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a2231222c22706f736974696f6e223a2272696768742d63222c22636c69656e74223a2261646d696e222c226c6567656e64223a22496d6167657320616e64204c696e6b73222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a2231222c22706f736974696f6e223a2272696768742d64222c22636c69656e74223a2261646d696e222c226c6567656e64223a224d65746164617461204f7074696f6e73222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, 0x7b226669656c6473223a5b7b22747970656964223a2231222c226669656c646964223a22333032222c22636c69656e74223a2273697465222c226f72646572696e67223a2231222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a227265717569726564222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2231222c226669656c646964223a22333238222c22636c69656e74223a2273697465222c226f72646572696e67223a2232222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2231222c226669656c646964223a22323939222c22636c69656e74223a2273697465222c226f72646572696e67223a2233222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2231222c226669656c646964223a22333136222c22636c69656e74223a2273697465222c226f72646572696e67223a2234222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2231222c226669656c646964223a22333030222c22636c69656e74223a2273697465222c226f72646572696e67223a2235222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a227265717569726564222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a22626f74746f6d626f6479227d2c7b22747970656964223a2231222c226669656c646964223a22333139222c22636c69656e74223a2273697465222c226f72646572696e67223a2236222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a22626f74746f6d626f6479227d2c7b22747970656964223a2231222c226669656c646964223a22333031222c22636c69656e74223a2273697465222c226f72646572696e67223a2237222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a22626f74746f6d626f6479227d2c7b22747970656964223a2231222c226669656c646964223a22333438222c22636c69656e74223a2273697465222c226f72646572696e67223a2238222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a22626f74746f6d626f6479227d2c7b22747970656964223a2231222c226669656c646964223a22333531222c22636c69656e74223a2273697465222c226f72646572696e67223a2239222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a22626f74746f6d626f6479227d2c7b22747970656964223a2231222c226669656c646964223a22333532222c22636c69656e74223a2273697465222c226f72646572696e67223a223130222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a22626f74746f6d626f6479227d2c7b22747970656964223a2231222c226669656c646964223a22333137222c22636c69656e74223a2273697465222c226f72646572696e67223a223131222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a22626f74746f6d626f6479227d2c7b22747970656964223a2231222c226669656c646964223a22333239222c22636c69656e74223a2273697465222c226f72646572696e67223a223132222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a22626f74746f6d2d61227d2c7b22747970656964223a2231222c226669656c646964223a22333533222c22636c69656e74223a2273697465222c226f72646572696e67223a223133222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a22626f74746f6d2d62227d2c7b22747970656964223a2231222c226669656c646964223a22333534222c22636c69656e74223a2273697465222c226f72646572696e67223a223134222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a22626f74746f6d2d62227d5d2c22706f736974696f6e73223a5b7b22747970656964223a2231222c22706f736974696f6e223a22626f74746f6d2d61222c22636c69656e74223a2273697465222c226c6567656e64223a224c616e6775616765222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a2231303025222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a2231222c22706f736974696f6e223a22626f74746f6d2d62222c22636c69656e74223a2273697465222c226c6567656e64223a224d65746164617461222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a2231303025222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a2231222c22706f736974696f6e223a22626f74746f6d626f6479222c22636c69656e74223a2273697465222c226c6567656e64223a225075626c697368696e67222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a2231222c22706f736974696f6e223a22636c656172222c22636c69656e74223a2273697465222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a2231222c22706f736974696f6e223a226d61696e626f6479222c22636c69656e74223a2273697465222c226c6567656e64223a2244657461696c73222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, 0x7b226669656c6473223a5b7b22747970656964223a2231222c226669656c646964223a22333136222c22636c69656e74223a22696e74726f222c226f72646572696e67223a2231222c226c6162656c223a22636c656172222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d5d2c22706f736974696f6e73223a5b7b22747970656964223a2231222c22706f736974696f6e223a22636c656172222c22636c69656e74223a22696e74726f222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a2231222c22706f736974696f6e223a226d61696e626f6479222c22636c69656e74223a22696e74726f222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, 0x7b226669656c6473223a5b7b22747970656964223a2231222c226669656c646964223a22333136222c22636c69656e74223a22636f6e74656e74222c226f72646572696e67223a2231222c226c6162656c223a22636c656172222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2231222c226669656c646964223a22343030222c22636c69656e74223a22636f6e74656e74222c226f72646572696e67223a2232222c226c6162656c223a22636c656172222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d5d2c22706f736974696f6e73223a5b7b22747970656964223a2231222c22706f736974696f6e223a22636c656172222c22636c69656e74223a22636f6e74656e74222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a2231222c22706f736974696f6e223a226d61696e626f6479222c22636c69656e74223a22636f6e74656e74222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, NULL, '2013-11-26 21:28:31', 921, '', 0, '0000-00-00 00:00:00');
INSERT INTO `joom_cck_core_versions` (`id`, `e_id`, `e_title`, `e_name`, `e_type`, `e_version`, `e_core`, `e_more`, `e_more1`, `e_more2`, `e_more3`, `e_more4`, `e_more5`, `date_time`, `user_id`, `note`, `checked_out`, `checked_out_time`) VALUES
(2, 5, 'Category', 'category', 'type', 1, 0x7b226964223a2235222c227469746c65223a2243617465676f7279222c226e616d65223a2263617465676f7279222c22616c696173223a22222c22666f6c646572223a223131222c2274656d706c6174655f61646d696e223a2239222c2274656d706c6174655f73697465223a2239222c2274656d706c6174655f636f6e74656e74223a2239222c2274656d706c6174655f696e74726f223a2239222c226465736372697074696f6e223a22222c22696e6465786564223a22222c227075626c6973686564223a2231222c226f7074696f6e735f61646d696e223a22222c226f7074696f6e735f73697465223a22222c226f7074696f6e735f636f6e74656e74223a22222c226f7074696f6e735f696e74726f223a22222c226c6f636174696f6e223a22222c2273746f726167655f6c6f636174696f6e223a226a6f6f6d6c615f63617465676f7279222c2276657273696f6e223a322c22636865636b65645f6f7574223a2230222c22636865636b65645f6f75745f74696d65223a22303030302d30302d30302030303a30303a3030222c2261737365745f6964223a223930227d, '{"fields":{"1":"12","2":"10","3":"1","4":"1"}}', 0x7b226669656c6473223a5b7b22747970656964223a2235222c226669656c646964223a22333133222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2231222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a227265717569726564222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2235222c226669656c646964223a22333733222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2232222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2235222c226669656c646964223a22343032222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2233222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a2275726c5f7661726961626c65222c226c6976655f6f7074696f6e73223a227b5c227661726961626c655c223a5c22657874656e73696f6e5c222c5c22747970655c223a5c22737472696e675c227d222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2235222c226669656c646964223a22333135222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2234222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2235222c226669656c646964223a22333134222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2235222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2235222c226669656c646964223a22333734222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2236222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2235222c226669656c646964223a22333735222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2237222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2235222c226669656c646964223a22333732222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2238222c226c6162656c223a22222c22766172696174696f6e223a2276616c7565222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2235222c226669656c646964223a22333138222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2239222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2235222c226669656c646964223a22333936222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223130222c226c6162656c223a2220222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a2272696768742d61227d2c7b22747970656964223a2235222c226669656c646964223a22333937222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223131222c226c6162656c223a2220222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a2272696768742d62227d2c7b22747970656964223a2235222c226669656c646964223a22333938222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223132222c226c6162656c223a2220222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a2272696768742d63227d5d2c22706f736974696f6e73223a5b7b22747970656964223a2235222c22706f736974696f6e223a2272696768742d61222c22636c69656e74223a2261646d696e222c226c6567656e64223a225075626c697368696e67204f7074696f6e73222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a2235222c22706f736974696f6e223a2272696768742d62222c22636c69656e74223a2261646d696e222c226c6567656e64223a224261736963204f7074696f6e73222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a2235222c22706f736974696f6e223a226d61696e626f6479222c22636c69656e74223a2261646d696e222c226c6567656e64223a2244657461696c73222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a2235222c22706f736974696f6e223a2272696768742d63222c22636c69656e74223a2261646d696e222c226c6567656e64223a224d65746164617461204f7074696f6e73222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a2235222c22706f736974696f6e223a22636c656172222c22636c69656e74223a2261646d696e222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, 0x7b226669656c6473223a5b7b22747970656964223a2235222c226669656c646964223a22333133222c22636c69656e74223a2273697465222c226f72646572696e67223a2231222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a227265717569726564222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2235222c226669656c646964223a22333733222c22636c69656e74223a2273697465222c226f72646572696e67223a2232222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2235222c226669656c646964223a22323939222c22636c69656e74223a2273697465222c226f72646572696e67223a2233222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2235222c226669656c646964223a22333138222c22636c69656e74223a2273697465222c226f72646572696e67223a2234222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2235222c226669656c646964223a22333135222c22636c69656e74223a2273697465222c226f72646572696e67223a2235222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a22626f74746f6d626f6479227d2c7b22747970656964223a2235222c226669656c646964223a22333134222c22636c69656e74223a2273697465222c226f72646572696e67223a2236222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a22626f74746f6d626f6479227d2c7b22747970656964223a2235222c226669656c646964223a22333734222c22636c69656e74223a2273697465222c226f72646572696e67223a2237222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a22626f74746f6d626f6479227d2c7b22747970656964223a2235222c226669656c646964223a22333735222c22636c69656e74223a2273697465222c226f72646572696e67223a2238222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a22626f74746f6d2d61227d2c7b22747970656964223a2235222c226669656c646964223a22333830222c22636c69656e74223a2273697465222c226f72646572696e67223a2239222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a22626f74746f6d2d62227d2c7b22747970656964223a2235222c226669656c646964223a22333831222c22636c69656e74223a2273697465222c226f72646572696e67223a223130222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a22626f74746f6d2d62227d5d2c22706f736974696f6e73223a5b7b22747970656964223a2235222c22706f736974696f6e223a22626f74746f6d2d61222c22636c69656e74223a2273697465222c226c6567656e64223a224c616e6775616765222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a2231303025222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a2235222c22706f736974696f6e223a226d61696e626f6479222c22636c69656e74223a2273697465222c226c6567656e64223a2244657461696c73222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a2235222c22706f736974696f6e223a22626f74746f6d626f6479222c22636c69656e74223a2273697465222c226c6567656e64223a225075626c697368696e67222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a2235222c22706f736974696f6e223a22626f74746f6d2d62222c22636c69656e74223a2273697465222c226c6567656e64223a224d65746164617461222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a2231303025222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a2235222c22706f736974696f6e223a22636c656172222c22636c69656e74223a2273697465222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, 0x7b226669656c6473223a5b7b22747970656964223a2235222c226669656c646964223a22333138222c22636c69656e74223a22696e74726f222c226f72646572696e67223a2231222c226c6162656c223a22636c656172222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d5d2c22706f736974696f6e73223a5b7b22747970656964223a2235222c22706f736974696f6e223a226d61696e626f6479222c22636c69656e74223a22696e74726f222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a2235222c22706f736974696f6e223a22636c656172222c22636c69656e74223a22696e74726f222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, 0x7b226669656c6473223a5b7b22747970656964223a2235222c226669656c646964223a22333138222c22636c69656e74223a22636f6e74656e74222c226f72646572696e67223a2231222c226c6162656c223a22636c656172222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d5d2c22706f736974696f6e73223a5b7b22747970656964223a2235222c22706f736974696f6e223a22636c656172222c22636c69656e74223a22636f6e74656e74222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a2235222c22706f736974696f6e223a226d61696e626f6479222c22636c69656e74223a22636f6e74656e74222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, NULL, '2013-11-26 21:29:08', 921, '', 0, '0000-00-00 00:00:00');
INSERT INTO `joom_cck_core_versions` (`id`, `e_id`, `e_title`, `e_name`, `e_type`, `e_version`, `e_core`, `e_more`, `e_more1`, `e_more2`, `e_more3`, `e_more4`, `e_more5`, `date_time`, `user_id`, `note`, `checked_out`, `checked_out_time`) VALUES
(3, 8, 'User', 'user', 'type', 1, 0x7b226964223a2238222c227469746c65223a2255736572222c226e616d65223a2275736572222c22616c696173223a22222c22666f6c646572223a223133222c2274656d706c6174655f61646d696e223a2239222c2274656d706c6174655f73697465223a2239222c2274656d706c6174655f636f6e74656e74223a2239222c2274656d706c6174655f696e74726f223a2239222c226465736372697074696f6e223a22222c22696e6465786564223a22222c227075626c6973686564223a2231222c226f7074696f6e735f61646d696e223a22222c226f7074696f6e735f73697465223a22222c226f7074696f6e735f636f6e74656e74223a22222c226f7074696f6e735f696e74726f223a22222c226c6f636174696f6e223a22222c2273746f726167655f6c6f636174696f6e223a226a6f6f6d6c615f75736572222c2276657273696f6e223a322c22636865636b65645f6f7574223a2230222c22636865636b65645f6f75745f74696d65223a22303030302d30302d30302030303a30303a3030222c2261737365745f6964223a223931227d, '{"fields":{"1":"12","2":"6","3":"0","4":"0"}}', 0x7b226669656c6473223a5b7b22747970656964223a2238222c226669656c646964223a22333038222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2231222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a227265717569726564222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22333039222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2232222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a227265717569726564222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22333131222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2233222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22333132222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2234222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22636f6e6669726d222c2276616c69646174696f6e5f6f7074696f6e73223a227b5c22616c6572745c223a5c225c222c5c226669656c645c223a5c22757365725f70617373776f72645c227d222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22333130222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2235222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a227265717569726564222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22656d61696c222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22333632222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2236222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22333633222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2237222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22333634222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2238222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22333232222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2239222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22333635222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223130222c226c6162656c223a22222c22766172696174696f6e223a2276616c7565222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22333231222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223131222c226c6162656c223a2220222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a22626f74746f6d626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22333939222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223132222c226c6162656c223a2220222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a2272696768742d61227d5d2c22706f736974696f6e73223a5b7b22747970656964223a2238222c22706f736974696f6e223a22626f74746f6d626f6479222c22636c69656e74223a2261646d696e222c226c6567656e64223a2241737369676e656420557365722047726f757073222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a2238222c22706f736974696f6e223a22636c656172222c22636c69656e74223a2261646d696e222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a2238222c22706f736974696f6e223a226d61696e626f6479222c22636c69656e74223a2261646d696e222c226c6567656e64223a2244657461696c73222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a2238222c22706f736974696f6e223a2272696768742d61222c22636c69656e74223a2261646d696e222c226c6567656e64223a2242617369632053657474696e6773222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, 0x7b226669656c6473223a5b7b22747970656964223a2238222c226669656c646964223a22333038222c22636c69656e74223a2273697465222c226f72646572696e67223a2231222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a227265717569726564222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22333039222c22636c69656e74223a2273697465222c226f72646572696e67223a2232222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a227265717569726564222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22333131222c22636c69656e74223a2273697465222c226f72646572696e67223a2233222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a227265717569726564222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22333132222c22636c69656e74223a2273697465222c226f72646572696e67223a2234222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a227265717569726564222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22636f6e6669726d222c2276616c69646174696f6e5f6f7074696f6e73223a227b5c22616c6572745c223a5c225c222c5c226669656c645c223a5c22757365725f70617373776f72645c227d222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22333130222c22636c69656e74223a2273697465222c226f72646572696e67223a2235222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a227265717569726564222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a2238222c226669656c646964223a22323939222c22636c69656e74223a2273697465222c226f72646572696e67223a2236222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a22626f74746f6d2d61227d5d2c22706f736974696f6e73223a5b7b22747970656964223a2238222c22706f736974696f6e223a22626f74746f6d2d61222c22636c69656e74223a2273697465222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a2231303025222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a2238222c22706f736974696f6e223a22636c656172222c22636c69656e74223a2273697465222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a2238222c22706f736974696f6e223a226d61696e626f6479222c22636c69656e74223a2273697465222c226c6567656e64223a224163636f756e74222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b7b22747970656964223a2238222c22706f736974696f6e223a22636c656172222c22636c69656e74223a22696e74726f222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b7b22747970656964223a2238222c22706f736974696f6e223a22636c656172222c22636c69656e74223a22636f6e74656e74222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, NULL, '2013-11-26 21:29:16', 921, '', 0, '0000-00-00 00:00:00'),
(4, 11, 'User Group', 'user_group', 'type', 1, 0x7b226964223a223131222c227469746c65223a22557365722047726f7570222c226e616d65223a22757365725f67726f7570222c22616c696173223a22222c22666f6c646572223a223134222c2274656d706c6174655f61646d696e223a2239222c2274656d706c6174655f73697465223a2239222c2274656d706c6174655f636f6e74656e74223a2239222c2274656d706c6174655f696e74726f223a2239222c226465736372697074696f6e223a22222c22696e6465786564223a22222c227075626c6973686564223a2231222c226f7074696f6e735f61646d696e223a22222c226f7074696f6e735f73697465223a22222c226f7074696f6e735f636f6e74656e74223a22222c226f7074696f6e735f696e74726f223a22222c226c6f636174696f6e223a22222c2273746f726167655f6c6f636174696f6e223a226a6f6f6d6c615f757365725f67726f7570222c2276657273696f6e223a322c22636865636b65645f6f7574223a2230222c22636865636b65645f6f75745f74696d65223a22303030302d30302d30302030303a30303a3030222c2261737365745f6964223a223932227d, '{"fields":{"1":"3","2":"0","3":"0","4":"0"}}', 0x7b226669656c6473223a5b7b22747970656964223a223131222c226669656c646964223a22333931222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2231222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a227265717569726564222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223131222c226669656c646964223a22333930222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2232222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223131222c226669656c646964223a22333839222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2233222c226c6162656c223a22222c22766172696174696f6e223a2276616c7565222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d5d2c22706f736974696f6e73223a5b7b22747970656964223a223131222c22706f736974696f6e223a22636c656172222c22636c69656e74223a2261646d696e222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a223131222c22706f736974696f6e223a226d61696e626f6479222c22636c69656e74223a2261646d696e222c226c6567656e64223a2244657461696c73222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d7d, NULL, '2013-11-26 21:29:28', 921, '', 0, '0000-00-00 00:00:00');
INSERT INTO `joom_cck_core_versions` (`id`, `e_id`, `e_title`, `e_name`, `e_type`, `e_version`, `e_core`, `e_more`, `e_more1`, `e_more2`, `e_more3`, `e_more4`, `e_more5`, `date_time`, `user_id`, `note`, `checked_out`, `checked_out_time`) VALUES
(5, 21, 'Article Grp Basic', 'article_grp_basic', 'type', 1, 0x7b226964223a223231222c227469746c65223a2241727469636c6520477270204261736963222c226e616d65223a2261727469636c655f6772705f6261736963222c22616c696173223a22222c22666f6c646572223a223130222c2274656d706c6174655f61646d696e223a2239222c2274656d706c6174655f73697465223a2239222c2274656d706c6174655f636f6e74656e74223a2239222c2274656d706c6174655f696e74726f223a2239222c226465736372697074696f6e223a22222c22696e6465786564223a22222c227075626c6973686564223a2230222c226f7074696f6e735f61646d696e223a22222c226f7074696f6e735f73697465223a22222c226f7074696f6e735f636f6e74656e74223a22222c226f7074696f6e735f696e74726f223a22222c226c6f636174696f6e223a22222c2273746f726167655f6c6f636174696f6e223a226e6f6e65222c2276657273696f6e223a322c22636865636b65645f6f7574223a2230222c22636865636b65645f6f75745f74696d65223a22303030302d30302d30302030303a30303a3030222c2261737365745f6964223a223934227d, '{"fields":{"1":"22","2":"22","3":"0","4":"0"}}', 0x7b226669656c6473223a5b7b22747970656964223a223231222c226669656c646964223a22333230222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2231222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333330222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2232222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333331222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2233222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333332222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2234222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333333222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2235222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333334222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2236222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333335222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2237222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333336222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2238222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333337222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2239222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333338222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223130222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333339222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223131222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333430222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223132222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333431222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223133222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333432222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223134222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333433222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223135222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333434222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223136222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333435222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223137222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333436222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223138222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333437222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223139222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22343231222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223230222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333235222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223231222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333536222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223232222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d5d2c22706f736974696f6e73223a5b7b22747970656964223a223231222c22706f736974696f6e223a226465627567222c22636c69656e74223a2261646d696e222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a223231222c22706f736974696f6e223a226d61696e626f6479222c22636c69656e74223a2261646d696e222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, 0x7b226669656c6473223a5b7b22747970656964223a223231222c226669656c646964223a22333230222c22636c69656e74223a2273697465222c226f72646572696e67223a2231222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333330222c22636c69656e74223a2273697465222c226f72646572696e67223a2232222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333331222c22636c69656e74223a2273697465222c226f72646572696e67223a2233222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333332222c22636c69656e74223a2273697465222c226f72646572696e67223a2234222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333333222c22636c69656e74223a2273697465222c226f72646572696e67223a2235222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333334222c22636c69656e74223a2273697465222c226f72646572696e67223a2236222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333335222c22636c69656e74223a2273697465222c226f72646572696e67223a2237222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333336222c22636c69656e74223a2273697465222c226f72646572696e67223a2238222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333337222c22636c69656e74223a2273697465222c226f72646572696e67223a2239222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333338222c22636c69656e74223a2273697465222c226f72646572696e67223a223130222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333339222c22636c69656e74223a2273697465222c226f72646572696e67223a223131222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333430222c22636c69656e74223a2273697465222c226f72646572696e67223a223132222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333431222c22636c69656e74223a2273697465222c226f72646572696e67223a223133222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333432222c22636c69656e74223a2273697465222c226f72646572696e67223a223134222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333433222c22636c69656e74223a2273697465222c226f72646572696e67223a223135222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333434222c22636c69656e74223a2273697465222c226f72646572696e67223a223136222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333435222c22636c69656e74223a2273697465222c226f72646572696e67223a223137222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333436222c22636c69656e74223a2273697465222c226f72646572696e67223a223138222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333437222c22636c69656e74223a2273697465222c226f72646572696e67223a223139222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22343231222c22636c69656e74223a2273697465222c226f72646572696e67223a223230222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333235222c22636c69656e74223a2273697465222c226f72646572696e67223a223231222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223231222c226669656c646964223a22333536222c22636c69656e74223a2273697465222c226f72646572696e67223a223232222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d5d2c22706f736974696f6e73223a5b7b22747970656964223a223231222c22706f736974696f6e223a2268696464656e222c22636c69656e74223a2273697465222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a223231222c22706f736974696f6e223a226d61696e626f6479222c22636c69656e74223a2273697465222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d7d, NULL, '2013-11-26 21:35:52', 921, '', 0, '0000-00-00 00:00:00');
INSERT INTO `joom_cck_core_versions` (`id`, `e_id`, `e_title`, `e_name`, `e_type`, `e_version`, `e_core`, `e_more`, `e_more1`, `e_more2`, `e_more3`, `e_more4`, `e_more5`, `date_time`, `user_id`, `note`, `checked_out`, `checked_out_time`) VALUES
(6, 30, 'Article Grp Images & Links', 'article_grp_images_links', 'type', 1, 0x7b226964223a223330222c227469746c65223a2241727469636c652047727020496d616765732026204c696e6b73222c226e616d65223a2261727469636c655f6772705f696d616765735f6c696e6b73222c22616c696173223a22222c22666f6c646572223a223130222c2274656d706c6174655f61646d696e223a2239222c2274656d706c6174655f73697465223a2239222c2274656d706c6174655f636f6e74656e74223a2239222c2274656d706c6174655f696e74726f223a2239222c226465736372697074696f6e223a22222c22696e6465786564223a22222c227075626c6973686564223a2230222c226f7074696f6e735f61646d696e223a22222c226f7074696f6e735f73697465223a22222c226f7074696f6e735f636f6e74656e74223a22222c226f7074696f6e735f696e74726f223a22222c226c6f636174696f6e223a22222c2273746f726167655f6c6f636174696f6e223a226e6f6e65222c2276657273696f6e223a322c22636865636b65645f6f7574223a2230222c22636865636b65645f6f75745f74696d65223a22303030302d30302d30302030303a30303a3030222c2261737365745f6964223a22313030227d, '{"fields":{"1":"17","2":"17","3":"0","4":"0"}}', 0x7b226669656c6473223a5b7b22747970656964223a223330222c226669656c646964223a22343034222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2231222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223330222c226669656c646964223a22343037222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2232222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223330222c226669656c646964223a22343035222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2233222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223330222c226669656c646964223a22343036222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2234222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223330222c226669656c646964223a22343038222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2235222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223330222c226669656c646964223a22343131222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2236222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223330222c226669656c646964223a22343039222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2237222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223330222c226669656c646964223a22343130222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2238222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223330222c226669656c646964223a22343132222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2239222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a2275726c222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223330222c226669656c646964223a22343133222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223130222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223330222c226669656c646964223a22343134222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223131222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223330222c226669656c646964223a22343135222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223132222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a2275726c222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223330222c226669656c646964223a22343136222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223133222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223330222c226669656c646964223a22343137222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223134222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223330222c226669656c646964223a22343138222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223135222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a2275726c222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223330222c226669656c646964223a22343139222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223136222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223330222c226669656c646964223a22343230222c22636c69656e74223a2261646d696e222c226f72646572696e67223a223137222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d5d2c22706f736974696f6e73223a5b7b22747970656964223a223330222c22706f736974696f6e223a2268696464656e222c22636c69656e74223a2261646d696e222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a223330222c22706f736974696f6e223a226d61696e626f6479222c22636c69656e74223a2261646d696e222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, 0x7b226669656c6473223a5b7b22747970656964223a223330222c226669656c646964223a22343034222c22636c69656e74223a2273697465222c226f72646572696e67223a2231222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223330222c226669656c646964223a22343037222c22636c69656e74223a2273697465222c226f72646572696e67223a2232222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223330222c226669656c646964223a22343035222c22636c69656e74223a2273697465222c226f72646572696e67223a2233222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223330222c226669656c646964223a22343036222c22636c69656e74223a2273697465222c226f72646572696e67223a2234222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223330222c226669656c646964223a22343038222c22636c69656e74223a2273697465222c226f72646572696e67223a2235222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223330222c226669656c646964223a22343131222c22636c69656e74223a2273697465222c226f72646572696e67223a2236222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223330222c226669656c646964223a22343039222c22636c69656e74223a2273697465222c226f72646572696e67223a2237222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223330222c226669656c646964223a22343130222c22636c69656e74223a2273697465222c226f72646572696e67223a2238222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223330222c226669656c646964223a22343132222c22636c69656e74223a2273697465222c226f72646572696e67223a2239222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a2275726c222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223330222c226669656c646964223a22343133222c22636c69656e74223a2273697465222c226f72646572696e67223a223130222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223330222c226669656c646964223a22343134222c22636c69656e74223a2273697465222c226f72646572696e67223a223131222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223330222c226669656c646964223a22343135222c22636c69656e74223a2273697465222c226f72646572696e67223a223132222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a2275726c222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223330222c226669656c646964223a22343136222c22636c69656e74223a2273697465222c226f72646572696e67223a223133222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223330222c226669656c646964223a22343137222c22636c69656e74223a2273697465222c226f72646572696e67223a223134222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223330222c226669656c646964223a22343138222c22636c69656e74223a2273697465222c226f72646572696e67223a223135222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a2275726c222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223330222c226669656c646964223a22343139222c22636c69656e74223a2273697465222c226f72646572696e67223a223136222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223330222c226669656c646964223a22343230222c22636c69656e74223a2273697465222c226f72646572696e67223a223137222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d5d2c22706f736974696f6e73223a5b7b22747970656964223a223330222c22706f736974696f6e223a2268696464656e222c22636c69656e74223a2273697465222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a223330222c22706f736974696f6e223a226d61696e626f6479222c22636c69656e74223a2273697465222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d7d, NULL, '2013-11-26 21:35:59', 921, '', 0, '0000-00-00 00:00:00');
INSERT INTO `joom_cck_core_versions` (`id`, `e_id`, `e_title`, `e_name`, `e_type`, `e_version`, `e_core`, `e_more`, `e_more1`, `e_more2`, `e_more3`, `e_more4`, `e_more5`, `date_time`, `user_id`, `note`, `checked_out`, `checked_out_time`) VALUES
(7, 22, 'Article Grp Metadata', 'article_grp_metadata', 'type', 1, 0x7b226964223a223232222c227469746c65223a2241727469636c6520477270204d65746164617461222c226e616d65223a2261727469636c655f6772705f6d65746164617461222c22616c696173223a22222c22666f6c646572223a223130222c2274656d706c6174655f61646d696e223a2239222c2274656d706c6174655f73697465223a2239222c2274656d706c6174655f636f6e74656e74223a2239222c2274656d706c6174655f696e74726f223a2239222c226465736372697074696f6e223a22222c22696e6465786564223a22222c227075626c6973686564223a2230222c226f7074696f6e735f61646d696e223a22222c226f7074696f6e735f73697465223a22222c226f7074696f6e735f636f6e74656e74223a22222c226f7074696f6e735f696e74726f223a22222c226c6f636174696f6e223a22222c2273746f726167655f6c6f636174696f6e223a226e6f6e65222c2276657273696f6e223a322c22636865636b65645f6f7574223a2230222c22636865636b65645f6f75745f74696d65223a22303030302d30302d30302030303a30303a3030222c2261737365745f6964223a223935227d, '{"fields":{"1":"6","2":"6","3":"0","4":"0"}}', 0x7b226669656c6473223a5b7b22747970656964223a223232222c226669656c646964223a22333533222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2231222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223232222c226669656c646964223a22333534222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2232222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223232222c226669656c646964223a22333439222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2233222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223232222c226669656c646964223a22333236222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2234222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223232222c226669656c646964223a22333535222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2235222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223232222c226669656c646964223a22333237222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2236222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d5d2c22706f736974696f6e73223a5b7b22747970656964223a223232222c22706f736974696f6e223a226465627567222c22636c69656e74223a2261646d696e222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a223232222c22706f736974696f6e223a226d61696e626f6479222c22636c69656e74223a2261646d696e222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, 0x7b226669656c6473223a5b7b22747970656964223a223232222c226669656c646964223a22333533222c22636c69656e74223a2273697465222c226f72646572696e67223a2231222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223232222c226669656c646964223a22333534222c22636c69656e74223a2273697465222c226f72646572696e67223a2232222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223232222c226669656c646964223a22333439222c22636c69656e74223a2273697465222c226f72646572696e67223a2233222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223232222c226669656c646964223a22333236222c22636c69656e74223a2273697465222c226f72646572696e67223a2234222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223232222c226669656c646964223a22333535222c22636c69656e74223a2273697465222c226f72646572696e67223a2235222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223232222c226669656c646964223a22333237222c22636c69656e74223a2273697465222c226f72646572696e67223a2236222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d5d2c22706f736974696f6e73223a5b7b22747970656964223a223232222c22706f736974696f6e223a2268696464656e222c22636c69656e74223a2273697465222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a223232222c22706f736974696f6e223a226d61696e626f6479222c22636c69656e74223a2273697465222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d7d, NULL, '2013-11-26 21:36:06', 921, '', 0, '0000-00-00 00:00:00'),
(8, 20, 'Article Grp Publishing', 'article_grp_publishing', 'type', 1, 0x7b226964223a223230222c227469746c65223a2241727469636c6520477270205075626c697368696e67222c226e616d65223a2261727469636c655f6772705f7075626c697368696e67222c22616c696173223a22222c22666f6c646572223a223130222c2274656d706c6174655f61646d696e223a2239222c2274656d706c6174655f73697465223a2239222c2274656d706c6174655f636f6e74656e74223a2239222c2274656d706c6174655f696e74726f223a2239222c226465736372697074696f6e223a22222c22696e6465786564223a22222c227075626c6973686564223a2230222c226f7074696f6e735f61646d696e223a22222c226f7074696f6e735f73697465223a22222c226f7074696f6e735f636f6e74656e74223a22222c226f7074696f6e735f696e74726f223a22222c226c6f636174696f6e223a22222c2273746f726167655f6c6f636174696f6e223a226e6f6e65222c2276657273696f6e223a322c22636865636b65645f6f7574223a2230222c22636865636b65645f6f75745f74696d65223a22303030302d30302d30302030303a30303a3030222c2261737365745f6964223a223933227d, '{"fields":{"1":"9","2":"9","3":"0","4":"0"}}', 0x7b226669656c6473223a5b7b22747970656964223a223230222c226669656c646964223a22333037222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2231222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223230222c226669656c646964223a22333139222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2232222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223230222c226669656c646964223a22333530222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2233222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223230222c226669656c646964223a22333531222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2234222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223230222c226669656c646964223a22333532222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2235222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223230222c226669656c646964223a22333539222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2236222c226c6162656c223a22222c22766172696174696f6e223a2276616c7565222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223230222c226669656c646964223a22333537222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2237222c226c6162656c223a22222c22766172696174696f6e223a2276616c7565222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223230222c226669656c646964223a22333834222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2238222c226c6162656c223a22222c22766172696174696f6e223a2276616c7565222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223230222c226669656c646964223a22333835222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2239222c226c6162656c223a22222c22766172696174696f6e223a2276616c7565222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d5d2c22706f736974696f6e73223a5b7b22747970656964223a223230222c22706f736974696f6e223a2268696464656e222c22636c69656e74223a2261646d696e222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a223230222c22706f736974696f6e223a226d61696e626f6479222c22636c69656e74223a2261646d696e222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, 0x7b226669656c6473223a5b7b22747970656964223a223230222c226669656c646964223a22333037222c22636c69656e74223a2273697465222c226f72646572696e67223a2231222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223230222c226669656c646964223a22333139222c22636c69656e74223a2273697465222c226f72646572696e67223a2232222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223230222c226669656c646964223a22333530222c22636c69656e74223a2273697465222c226f72646572696e67223a2233222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223230222c226669656c646964223a22333531222c22636c69656e74223a2273697465222c226f72646572696e67223a2234222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223230222c226669656c646964223a22333532222c22636c69656e74223a2273697465222c226f72646572696e67223a2235222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223230222c226669656c646964223a22333539222c22636c69656e74223a2273697465222c226f72646572696e67223a2236222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223230222c226669656c646964223a22333537222c22636c69656e74223a2273697465222c226f72646572696e67223a2237222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223230222c226669656c646964223a22333834222c22636c69656e74223a2273697465222c226f72646572696e67223a2238222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223230222c226669656c646964223a22333835222c22636c69656e74223a2273697465222c226f72646572696e67223a2239222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d5d2c22706f736974696f6e73223a5b7b22747970656964223a223230222c22706f736974696f6e223a2268696464656e222c22636c69656e74223a2273697465222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a223230222c22706f736974696f6e223a226d61696e626f6479222c22636c69656e74223a2273697465222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d7d, NULL, '2013-11-26 21:36:13', 921, '', 0, '0000-00-00 00:00:00'),
(9, 26, 'Category Grp Basic', 'category_grp_basic', 'type', 1, 0x7b226964223a223236222c227469746c65223a2243617465676f727920477270204261736963222c226e616d65223a2263617465676f72795f6772705f6261736963222c22616c696173223a22222c22666f6c646572223a223131222c2274656d706c6174655f61646d696e223a2239222c2274656d706c6174655f73697465223a2239222c2274656d706c6174655f636f6e74656e74223a2239222c2274656d706c6174655f696e74726f223a2239222c226465736372697074696f6e223a22222c22696e6465786564223a22222c227075626c6973686564223a2230222c226f7074696f6e735f61646d696e223a22222c226f7074696f6e735f73697465223a22222c226f7074696f6e735f636f6e74656e74223a22222c226f7074696f6e735f696e74726f223a22222c226c6f636174696f6e223a22222c2273746f726167655f6c6f636174696f6e223a226e6f6e65222c2276657273696f6e223a322c22636865636b65645f6f7574223a2230222c22636865636b65645f6f75745f74696d65223a22303030302d30302d30302030303a30303a3030222c2261737365745f6964223a223937227d, '{"fields":{"1":"3","2":"3","3":"0","4":"0"}}', 0x7b226669656c6473223a5b7b22747970656964223a223236222c226669656c646964223a22333737222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2231222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223236222c226669656c646964223a22333738222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2232222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223236222c226669656c646964223a22333739222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2233222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d5d2c22706f736974696f6e73223a5b7b22747970656964223a223236222c22706f736974696f6e223a226465627567222c22636c69656e74223a2261646d696e222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a223236222c22706f736974696f6e223a226d61696e626f6479222c22636c69656e74223a2261646d696e222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, 0x7b226669656c6473223a5b7b22747970656964223a223236222c226669656c646964223a22333737222c22636c69656e74223a2273697465222c226f72646572696e67223a2231222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223236222c226669656c646964223a22333738222c22636c69656e74223a2273697465222c226f72646572696e67223a2232222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223236222c226669656c646964223a22333739222c22636c69656e74223a2273697465222c226f72646572696e67223a2233222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d5d2c22706f736974696f6e73223a5b7b22747970656964223a223236222c22706f736974696f6e223a2268696464656e222c22636c69656e74223a2273697465222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a223236222c22706f736974696f6e223a226d61696e626f6479222c22636c69656e74223a2273697465222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d7d, NULL, '2013-11-26 21:36:23', 921, '', 0, '0000-00-00 00:00:00');
INSERT INTO `joom_cck_core_versions` (`id`, `e_id`, `e_title`, `e_name`, `e_type`, `e_version`, `e_core`, `e_more`, `e_more1`, `e_more2`, `e_more3`, `e_more4`, `e_more5`, `date_time`, `user_id`, `note`, `checked_out`, `checked_out_time`) VALUES
(10, 27, 'Category Grp Metadata', 'category_grp_metadata', 'type', 1, 0x7b226964223a223237222c227469746c65223a2243617465676f727920477270204d65746164617461222c226e616d65223a2263617465676f72795f6772705f6d65746164617461222c22616c696173223a22222c22666f6c646572223a223131222c2274656d706c6174655f61646d696e223a2239222c2274656d706c6174655f73697465223a2239222c2274656d706c6174655f636f6e74656e74223a2239222c2274656d706c6174655f696e74726f223a2239222c226465736372697074696f6e223a22222c22696e6465786564223a22222c227075626c6973686564223a2230222c226f7074696f6e735f61646d696e223a22222c226f7074696f6e735f73697465223a22222c226f7074696f6e735f636f6e74656e74223a22222c226f7074696f6e735f696e74726f223a22222c226c6f636174696f6e223a22222c2273746f726167655f6c6f636174696f6e223a226e6f6e65222c2276657273696f6e223a322c22636865636b65645f6f7574223a2230222c22636865636b65645f6f75745f74696d65223a22303030302d30302d30302030303a30303a3030222c2261737365745f6964223a223938227d, '{"fields":{"1":"4","2":"4","3":"0","4":"0"}}', 0x7b226669656c6473223a5b7b22747970656964223a223237222c226669656c646964223a22333830222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2231222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223237222c226669656c646964223a22333831222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2232222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223237222c226669656c646964223a22333832222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2233222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223237222c226669656c646964223a22333833222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2234222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d5d2c22706f736974696f6e73223a5b7b22747970656964223a223237222c22706f736974696f6e223a226465627567222c22636c69656e74223a2261646d696e222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a223237222c22706f736974696f6e223a226d61696e626f6479222c22636c69656e74223a2261646d696e222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, 0x7b226669656c6473223a5b7b22747970656964223a223237222c226669656c646964223a22333830222c22636c69656e74223a2273697465222c226f72646572696e67223a2231222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223237222c226669656c646964223a22333831222c22636c69656e74223a2273697465222c226f72646572696e67223a2232222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223237222c226669656c646964223a22333832222c22636c69656e74223a2273697465222c226f72646572696e67223a2233222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223237222c226669656c646964223a22333833222c22636c69656e74223a2273697465222c226f72646572696e67223a2234222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d5d2c22706f736974696f6e73223a5b7b22747970656964223a223237222c22706f736974696f6e223a2268696464656e222c22636c69656e74223a2273697465222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a223237222c22706f736974696f6e223a226d61696e626f6479222c22636c69656e74223a2273697465222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d7d, NULL, '2013-11-26 21:36:30', 921, '', 0, '0000-00-00 00:00:00'),
(11, 25, 'Category Grp Publishing', 'category_grp_publishing', 'type', 1, 0x7b226964223a223235222c227469746c65223a2243617465676f727920477270205075626c697368696e67222c226e616d65223a2263617465676f72795f6772705f7075626c697368696e67222c22616c696173223a22222c22666f6c646572223a223131222c2274656d706c6174655f61646d696e223a2239222c2274656d706c6174655f73697465223a2239222c2274656d706c6174655f636f6e74656e74223a2239222c2274656d706c6174655f696e74726f223a2239222c226465736372697074696f6e223a22222c22696e6465786564223a22222c227075626c6973686564223a2230222c226f7074696f6e735f61646d696e223a22222c226f7074696f6e735f73697465223a22222c226f7074696f6e735f636f6e74656e74223a22222c226f7074696f6e735f696e74726f223a22222c226c6f636174696f6e223a22222c2273746f726167655f6c6f636174696f6e223a226e6f6e65222c2276657273696f6e223a322c22636865636b65645f6f7574223a2230222c22636865636b65645f6f75745f74696d65223a22303030302d30302d30302030303a30303a3030222c2261737365745f6964223a223936227d, '{"fields":{"1":"4","2":"4","3":"0","4":"0"}}', 0x7b226669656c6473223a5b7b22747970656964223a223235222c226669656c646964223a22333736222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2231222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223235222c226669656c646964223a22333836222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2232222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223235222c226669656c646964223a22333837222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2233222c226c6162656c223a22222c22766172696174696f6e223a2276616c7565222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223235222c226669656c646964223a22333838222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2234222c226c6162656c223a22222c22766172696174696f6e223a2276616c7565222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d5d2c22706f736974696f6e73223a5b7b22747970656964223a223235222c22706f736974696f6e223a2268696464656e222c22636c69656e74223a2261646d696e222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a223235222c22706f736974696f6e223a226d61696e626f6479222c22636c69656e74223a2261646d696e222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, 0x7b226669656c6473223a5b7b22747970656964223a223235222c226669656c646964223a22333736222c22636c69656e74223a2273697465222c226f72646572696e67223a2231222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223235222c226669656c646964223a22333836222c22636c69656e74223a2273697465222c226f72646572696e67223a2232222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223235222c226669656c646964223a22333837222c22636c69656e74223a2273697465222c226f72646572696e67223a2233222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223235222c226669656c646964223a22333838222c22636c69656e74223a2273697465222c226f72646572696e67223a2234222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d5d2c22706f736974696f6e73223a5b7b22747970656964223a223235222c22706f736974696f6e223a2268696464656e222c22636c69656e74223a2273697465222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a223235222c22706f736974696f6e223a226d61696e626f6479222c22636c69656e74223a2273697465222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d7d, NULL, '2013-11-26 21:36:37', 921, '', 0, '0000-00-00 00:00:00'),
(12, 28, 'User Grp Basic', 'user_grp_basic', 'type', 1, 0x7b226964223a223238222c227469746c65223a225573657220477270204261736963222c226e616d65223a22757365725f6772705f6261736963222c22616c696173223a22222c22666f6c646572223a223133222c2274656d706c6174655f61646d696e223a2239222c2274656d706c6174655f73697465223a2239222c2274656d706c6174655f636f6e74656e74223a2239222c2274656d706c6174655f696e74726f223a2239222c226465736372697074696f6e223a22222c22696e6465786564223a22222c227075626c6973686564223a2230222c226f7074696f6e735f61646d696e223a22222c226f7074696f6e735f73697465223a22222c226f7074696f6e735f636f6e74656e74223a22222c226f7074696f6e735f696e74726f223a22222c226c6f636174696f6e223a22222c2273746f726167655f6c6f636174696f6e223a226e6f6e65222c2276657273696f6e223a322c22636865636b65645f6f7574223a2230222c22636865636b65645f6f75745f74696d65223a22303030302d30302d30302030303a30303a3030222c2261737365745f6964223a223939227d, '{"fields":{"1":"6","2":"6","3":"0","4":"0"}}', 0x7b226669656c6473223a5b7b22747970656964223a223238222c226669656c646964223a22333636222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2231222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223238222c226669656c646964223a22333637222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2232222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223238222c226669656c646964223a22333638222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2233222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223238222c226669656c646964223a22333639222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2234222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223238222c226669656c646964223a22333730222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2235222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223238222c226669656c646964223a22333731222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2236222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d5d2c22706f736974696f6e73223a5b7b22747970656964223a223238222c22706f736974696f6e223a226465627567222c22636c69656e74223a2261646d696e222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a223238222c22706f736974696f6e223a226d61696e626f6479222c22636c69656e74223a2261646d696e222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, 0x7b226669656c6473223a5b7b22747970656964223a223238222c226669656c646964223a22333636222c22636c69656e74223a2273697465222c226f72646572696e67223a2231222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223238222c226669656c646964223a22333637222c22636c69656e74223a2273697465222c226f72646572696e67223a2232222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223238222c226669656c646964223a22333638222c22636c69656e74223a2273697465222c226f72646572696e67223a2233222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223238222c226669656c646964223a22333639222c22636c69656e74223a2273697465222c226f72646572696e67223a2234222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223238222c226669656c646964223a22333730222c22636c69656e74223a2273697465222c226f72646572696e67223a2235222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d2c7b22747970656964223a223238222c226669656c646964223a22333731222c22636c69656e74223a2273697465222c226f72646572696e67223a2236222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d5d2c22706f736974696f6e73223a5b7b22747970656964223a223238222c22706f736974696f6e223a2268696464656e222c22636c69656e74223a2273697465222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a223238222c22706f736974696f6e223a226d61696e626f6479222c22636c69656e74223a2273697465222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d7d, NULL, '2013-11-26 21:36:48', 921, '', 0, '0000-00-00 00:00:00'),
(500, 500, 'Pferdedatenblatt', 'pferdedatenblatt', 'type', 1, 0x7b226964223a22353030222c2261737365745f6964223a22313032222c227469746c65223a22506665726465646174656e626c617474222c226e616d65223a22706665726465646174656e626c617474222c22616c696173223a22222c22666f6c646572223a22353030222c2274656d706c6174655f61646d696e223a223132222c2274656d706c6174655f73697465223a2239222c2274656d706c6174655f636f6e74656e74223a2239222c2274656d706c6174655f696e74726f223a2239222c226465736372697074696f6e223a22222c22696e6465786564223a22696e74726f222c227075626c6973686564223a2231222c226f7074696f6e735f61646d696e223a227b5c226d6573736167655f7374796c655c223a5c226d6573736167655c222c5c226d6573736167655c223a5c225c222c5c22646174615f696e746567726974795f6578636c756465645c223a5c225c222c5c226d6573736167655f7374796c655f6e6f5f6163636573735c223a5c226572726f725c222c5c22616374696f6e5f6e6f5f6163636573735c223a5c227265646972656374696f6e5c222c5c226d6573736167655f6e6f5f6163636573735c223a5c225c222c5c227265646972656374696f6e5f75726c5f6e6f5f6163636573735c223a5c22696e6465782e7068703f6f7074696f6e3d636f6d5f757365727326766965773d6c6f67696e5c222c5c227374616765735c223a5c22315c222c5c2276616c69646174696f6e5f706f736974696f6e5c223a5c225c222c5c2276616c69646174696f6e5f7363726f6c6c5c223a5c225c222c5c2276616c69646174696f6e5f636f6c6f725c223a5c225c222c5c2276616c69646174696f6e5f6261636b67726f756e645f636f6c6f725c223a5c225c227d222c226f7074696f6e735f73697465223a22222c226f7074696f6e735f636f6e74656e74223a22222c226f7074696f6e735f696e74726f223a22222c226c6f636174696f6e223a22222c2273746f726167655f6c6f636174696f6e223a226a6f6f6d6c615f61727469636c65222c227374796c65736865657473223a22222c2276657273696f6e223a2231222c22636865636b65645f6f7574223a22313239222c22636865636b65645f6f75745f74696d65223a22323031342d30392d31392031333a32373a3031222c2272756c6573223a227b5c22636f72652e6372656174655c223a5b5d2c5c22636f72652e6372656174652e6d61782e706172656e745c223a7b5c22385c223a307d2c5c22636f72652e6372656174652e6d61782e706172656e742e617574686f725c223a7b5c22385c223a307d2c5c22636f72652e6372656174652e6d61782e617574686f725c223a7b5c22385c223a307d2c5c22636f72652e64656c6574655c223a5b5d2c5c22636f72652e64656c6574652e6f776e5c223a5b5d2c5c22636f72652e656469745c223a5b5d2c5c22636f72652e656469742e6f776e5c223a5b5d7d227d, '{"fields":{"1":"1","2":"0","3":"0","4":"0"}}', 0x7b226669656c6473223a5b7b22747970656964223a22353030222c226669656c646964223a2235303030222c22636c69656e74223a2261646d696e222c226f72646572696e67223a2231222c226c6162656c223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a22222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d5d2c22706f736974696f6e73223a5b7b22747970656964223a22353030222c22706f736974696f6e223a22636c656172222c22636c69656e74223a2261646d696e222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b22747970656964223a22353030222c22706f736974696f6e223a226d61696e626f6479222c22636c69656e74223a2261646d696e222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d7d, NULL, '2014-09-19 13:28:12', 129, '', 0, '0000-00-00 00:00:00'),
(501, 501, 'Ferienhaus Datenbank', 'ferienhaus_datenbank', 'type', 1, 0x7b226964223a22353031222c2261737365745f6964223a22313037222c227469746c65223a2246657269656e6861757320446174656e62616e6b222c226e616d65223a2266657269656e686175735f646174656e62616e6b222c22616c696173223a22222c22666f6c646572223a2231222c2274656d706c6174655f61646d696e223a223136222c2274656d706c6174655f73697465223a2239222c2274656d706c6174655f636f6e74656e74223a2239222c2274656d706c6174655f696e74726f223a2239222c226465736372697074696f6e223a22222c22696e6465786564223a22696e74726f222c227075626c6973686564223a2231222c226f7074696f6e735f61646d696e223a227b5c226d6573736167655f7374796c655c223a5c226d6573736167655c222c5c226d6573736167655c223a5c225c222c5c22646174615f696e746567726974795f6578636c756465645c223a5c225c222c5c226d6573736167655f7374796c655f6e6f5f6163636573735c223a5c226572726f725c222c5c22616374696f6e5f6e6f5f6163636573735c223a5c227265646972656374696f6e5c222c5c226d6573736167655f6e6f5f6163636573735c223a5c225c222c5c227265646972656374696f6e5f75726c5f6e6f5f6163636573735c223a5c22696e6465782e7068703f6f7074696f6e3d636f6d5f757365727326766965773d6c6f67696e5c222c5c227374616765735c223a5c22315c222c5c2276616c69646174696f6e5f706f736974696f6e5c223a5c225c222c5c2276616c69646174696f6e5f7363726f6c6c5c223a5c225c222c5c2276616c69646174696f6e5f636f6c6f725c223a5c225c222c5c2276616c69646174696f6e5f6261636b67726f756e645f636f6c6f725c223a5c225c227d222c226f7074696f6e735f73697465223a22222c226f7074696f6e735f636f6e74656e74223a22222c226f7074696f6e735f696e74726f223a22222c226c6f636174696f6e223a22222c2273746f726167655f6c6f636174696f6e223a226a6f6f6d6c615f61727469636c65222c227374796c65736865657473223a22222c2276657273696f6e223a2231222c22636865636b65645f6f7574223a22313239222c22636865636b65645f6f75745f74696d65223a22323031342d30392d32322030383a35363a3336222c2272756c6573223a227b5c22636f72652e6372656174655c223a5b5d2c5c22636f72652e6372656174652e6d61782e706172656e745c223a7b5c22385c223a307d2c5c22636f72652e6372656174652e6d61782e706172656e742e617574686f725c223a7b5c22385c223a307d2c5c22636f72652e6372656174652e6d61782e617574686f725c223a7b5c22385c223a307d2c5c22636f72652e64656c6574655c223a5b5d2c5c22636f72652e64656c6574652e6f776e5c223a5b5d2c5c22636f72652e656469745c223a5b5d2c5c22636f72652e656469742e6f776e5c223a5b5d7d227d, '{"fields":{"1":"0","2":"0","3":"0","4":"0"}}', 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b7b22747970656964223a22353031222c22706f736974696f6e223a22636c656172222c22636c69656e74223a2261646d696e222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d7d, NULL, '2014-09-22 09:06:30', 129, '', 0, '0000-00-00 00:00:00'),
(502, 500, 'Häuser', 'hauser', 'search', 1, 0x7b226964223a22353030222c227469746c65223a22485c753030653475736572222c226e616d65223a22686175736572222c22616c696173223a22222c22666f6c646572223a2231222c22636f6e74656e74223a2231222c2274656d706c6174655f736561726368223a2239222c2274656d706c6174655f66696c746572223a2239222c2274656d706c6174655f6c697374223a223138222c2274656d706c6174655f6974656d223a2239222c226465736372697074696f6e223a22222c22616363657373223a2231222c227075626c6973686564223a2231222c226f7074696f6e73223a227b5c226c696d69745c223a5c22305c222c5c2263616368655c223a5c22305c222c5c2263616368655f7065725f757365725c223a5c22305c222c5c227374616765735f6f7074696f6e616c5c223a5c225c222c5c226361636865325c223a5c22305c222c5c22706167696e6174696f6e5c223a5c225c222c5c2264656275675c223a5c225c222c5c227365665c223a5c225c222c5c22707265706172655f636f6e74656e745c223a5c225c222c5c226175746f5f72656469726563745c223a5c22305c222c5c226f72646572696e675c223a5c225c222c5c2273686f775f6c6973745f7469746c655c223a5c22315c222c5c227461675f6c6973745f7469746c655c223a5c2268325c222c5c22636c6173735f6c6973745f7469746c655c223a5c225c222c5c2273686f775f6c6973745f646573635c223a5c22315c222c5c2273686f775f666f726d5c223a5c22315c222c5c2273686f775f6974656d735f6e756d6265725c223a5c22305c222c5c226c6162656c5f6974656d735f6e756d6265725c223a5c22526573756c74735c222c5c22636c6173735f6974656d735f6e756d6265725c223a5c22746f74616c5c222c5c2273686f775f70616765735f6e756d6265725c223a5c22315c222c5c2273686f775f706167696e6174696f6e5c223a5c22305c222c5c22636c6173735f706167696e6174696f6e5c223a5c22706167696e6174696f6e5c222c5c226d6573736167655f7374796c655f6e6f5f6163636573735c223a5c226572726f725c222c5c22616374696f6e5f6e6f5f6163636573735c223a5c227265646972656374696f6e5c222c5c226d6573736167655f6e6f5f6163636573735c223a5c225c222c5c227265646972656374696f6e5f75726c5f6e6f5f6163636573735c223a5c22696e6465782e7068703f6f7074696f6e3d636f6d5f757365727326766965773d6c6f67696e5c222c5c226d6573736167655f7374796c655c223a5c226d6573736167655c222c5c22616374696f6e5c223a5c22305c222c5c226d6573736167655c223a5c225c222c5c2273686f775f6c6973745f646573635f6e6f5f726573756c745c223a5c22315c227d222c226c6f636174696f6e223a22222c227365665f726f757465223a22222c2273746f726167655f6c6f636174696f6e223a22222c227374796c65736865657473223a22222c2276657273696f6e223a2231222c22636865636b65645f6f7574223a22313239222c22636865636b65645f6f75745f74696d65223a22323031342d30392d32322031303a30393a3438227d, '{"fields":{"1":"1","2":"0","3":"0","4":"0","5":"0"}}', 0x7b226669656c6473223a5b7b227365617263686964223a22353030222c226669656c646964223a2231222c22636c69656e74223a22736561726368222c226f72646572696e67223a2231222c226c6162656c223a22222c22766172696174696f6e223a2268696464656e222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a2266657269656e686175735f646174656e62616e6b222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c226d617463685f636f6c6c656374696f6e223a22222c226d617463685f6d6f6465223a226578616374222c226d617463685f6f7074696f6e73223a22222c226d617463685f76616c7565223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d5d2c22706f736974696f6e73223a5b5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d7d, '2014-09-22 10:09:53', 129, '', 0, '0000-00-00 00:00:00');
INSERT INTO `joom_cck_core_versions` (`id`, `e_id`, `e_title`, `e_name`, `e_type`, `e_version`, `e_core`, `e_more`, `e_more1`, `e_more2`, `e_more3`, `e_more4`, `e_more5`, `date_time`, `user_id`, `note`, `checked_out`, `checked_out_time`) VALUES
(503, 501, 'Ferienhaussuche', 'ferienhaussuche', 'search', 1, 0x7b226964223a22353031222c227469746c65223a2246657269656e686175737375636865222c226e616d65223a2266657269656e686175737375636865222c22616c696173223a22222c22666f6c646572223a22353031222c22636f6e74656e74223a2230222c2274656d706c6174655f736561726368223a223230222c2274656d706c6174655f66696c746572223a2239222c2274656d706c6174655f6c697374223a2230222c2274656d706c6174655f6974656d223a2239222c226465736372697074696f6e223a22222c22616363657373223a2231222c227075626c6973686564223a2231222c226f7074696f6e73223a227b5c226c696d69745c223a5c22305c222c5c2263616368655c223a5c22305c222c5c2263616368655f7065725f757365725c223a5c22305c222c5c227374616765735f6f7074696f6e616c5c223a5c225c222c5c226361636865325c223a5c22305c222c5c22706167696e6174696f6e5c223a5c225c222c5c2264656275675c223a5c225c222c5c227365665c223a5c225c222c5c22707265706172655f636f6e74656e745c223a5c225c222c5c226175746f5f72656469726563745c223a5c22305c222c5c226f72646572696e675c223a5c225c222c5c2273686f775f6c6973745f7469746c655c223a5c22315c222c5c227461675f6c6973745f7469746c655c223a5c2268325c222c5c22636c6173735f6c6973745f7469746c655c223a5c225c222c5c2273686f775f6c6973745f646573635c223a5c22315c222c5c2273686f775f666f726d5c223a5c22315c222c5c2273686f775f6974656d735f6e756d6265725c223a5c22305c222c5c226c6162656c5f6974656d735f6e756d6265725c223a5c22526573756c74735c222c5c22636c6173735f6974656d735f6e756d6265725c223a5c22746f74616c5c222c5c2273686f775f70616765735f6e756d6265725c223a5c22315c222c5c2273686f775f706167696e6174696f6e5c223a5c22305c222c5c22636c6173735f706167696e6174696f6e5c223a5c22706167696e6174696f6e5c222c5c226d6573736167655f7374796c655f6e6f5f6163636573735c223a5c226572726f725c222c5c22616374696f6e5f6e6f5f6163636573735c223a5c227265646972656374696f6e5c222c5c226d6573736167655f6e6f5f6163636573735c223a5c225c222c5c227265646972656374696f6e5f75726c5f6e6f5f6163636573735c223a5c22696e6465782e7068703f6f7074696f6e3d636f6d5f757365727326766965773d6c6f67696e5c222c5c226d6573736167655f7374796c655c223a5c226d6573736167655c222c5c22616374696f6e5c223a5c22305c222c5c226d6573736167655c223a5c225c222c5c2273686f775f6c6973745f646573635f6e6f5f726573756c745c223a5c22315c227d222c226c6f636174696f6e223a22222c227365665f726f757465223a22222c2273746f726167655f6c6f636174696f6e223a22222c227374796c65736865657473223a22222c2276657273696f6e223a2231222c22636865636b65645f6f7574223a22313239222c22636865636b65645f6f75745f74696d65223a22323031342d30392d32322031313a30343a3039227d, '{"fields":{"1":"1","2":"0","3":"0","4":"0","5":"0"}}', 0x7b226669656c6473223a5b7b227365617263686964223a22353031222c226669656c646964223a2231222c22636c69656e74223a22736561726368222c226f72646572696e67223a2231222c226c6162656c223a22222c22766172696174696f6e223a2268696464656e222c22766172696174696f6e5f6f76657272696465223a22222c227265717569726564223a22222c2272657175697265645f616c657274223a22222c2276616c69646174696f6e223a22222c2276616c69646174696f6e5f6f7074696f6e73223a22222c226c696e6b223a22222c226c696e6b5f6f7074696f6e73223a22222c226c697665223a22222c226c6976655f6f7074696f6e73223a22222c226c6976655f76616c7565223a2266657269656e686175735f646174656e62616e6b222c226d61726b7570223a22222c226d61726b75705f636c617373223a22222c226d617463685f636f6c6c656374696f6e223a22222c226d617463685f6d6f6465223a226578616374222c226d617463685f6f7074696f6e73223a22222c226d617463685f76616c7565223a22222c227479706f223a22222c227479706f5f6c6162656c223a2230222c227479706f5f6f7074696f6e73223a22222c227374616765223a2230222c22616363657373223a2231222c227265737472696374696f6e223a22222c227265737472696374696f6e5f6f7074696f6e73223a22222c22636f6d7075746174696f6e223a22222c22636f6d7075746174696f6e5f6f7074696f6e73223a22222c22636f6e646974696f6e616c223a22222c22636f6e646974696f6e616c5f6f7074696f6e73223a22222c22706f736974696f6e223a226d61696e626f6479227d5d2c22706f736974696f6e73223a5b7b227365617263686964223a22353031222c22706f736974696f6e223a22636c656172222c22636c69656e74223a22736561726368222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d2c7b227365617263686964223a22353031222c22706f736974696f6e223a226d61696e626f6479222c22636c69656e74223a22736561726368222c226c6567656e64223a22222c22766172696174696f6e223a22222c22766172696174696f6e5f6f7074696f6e73223a22222c227769647468223a22222c22686569676874223a22222c22637373223a22227d5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d7d, 0x7b226669656c6473223a5b5d2c22706f736974696f6e73223a5b5d7d, '2014-09-22 11:05:23', 129, '', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_cck_more_countries`
--

CREATE TABLE IF NOT EXISTS `joom_cck_more_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_en` varchar(255) NOT NULL,
  `name_fr` varchar(255) NOT NULL,
  `code2` varchar(5) NOT NULL,
  `code3` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=247 ;

--
-- Daten für Tabelle `joom_cck_more_countries`
--

INSERT INTO `joom_cck_more_countries` (`id`, `name_en`, `name_fr`, `code2`, `code3`) VALUES
(1, 'Afghanistan', 'Afghanistan', 'AF', 'AFG'),
(2, 'Aland Islands', 'Åland, îles', 'AX', 'ALA'),
(3, 'Albania', 'Albanie', 'AL', 'ALB'),
(4, 'Algeria', 'Algérie', 'DZ', 'DZA'),
(5, 'American Samoa', 'Samoa américaines', 'AS', 'ASM'),
(6, 'Andorra', 'Andorre', 'AD', 'AND'),
(7, 'Angola', 'Angola', 'AO', 'AGO'),
(8, 'Anguilla', 'Anguilla', 'AI', 'AIA'),
(9, 'Antarctica', 'Antarctique', 'AQ', 'ATA'),
(10, 'Antigua and Barbuda', 'Antigua-et-barbuda', 'AG', 'ATG'),
(11, 'Argentina', 'Argentine', 'AR', 'ARG'),
(12, 'Armenia', 'Arménie', 'AM', 'ARM'),
(13, 'Aruba', 'Aruba', 'AW', 'ABW'),
(14, 'Australia', 'Australie', 'AU', 'AUS'),
(15, 'Austria', 'Autriche', 'AT', 'AUT'),
(16, 'Azerbaijan', 'Azerbaïdjan', 'AZ', 'AZE'),
(17, 'Bahamas', 'Bahamas', 'BS', 'BHS'),
(18, 'Bahrain', 'Bahreïn', 'BH', 'BHR'),
(19, 'Bangladesh', 'Bangladesh', 'BD', 'BGD'),
(20, 'Barbados', 'Barbade', 'BB', 'BRB'),
(21, 'Belarus', 'Bélarus', 'BY', 'BLR'),
(22, 'Belgium', 'Belgique', 'BE', 'BEL'),
(23, 'Belize', 'Belize', 'BZ', 'BLZ'),
(24, 'Benin', 'Bénin', 'BJ', 'BEN'),
(25, 'Bermuda', 'Bermudes', 'BM', 'BMU'),
(26, 'Bhutan', 'Bhoutan', 'BT', 'BTN'),
(27, 'Bolivia, Plurinational State of', 'Bolivie, l''état plurinational de', 'BO', 'BOL'),
(28, 'Bosnia and Herzegovina', 'Bosnie-herzégovine', 'BA', 'BIH'),
(29, 'Botswana', 'Botswana', 'BW', 'BWA'),
(30, 'Bouvet Island', 'Bouvet, île', 'BV', 'BVT'),
(31, 'Brazil', 'Brésil', 'BR', 'BRA'),
(32, 'British Indian Ocean Territory', 'Océan indien, territoire britannique de l''', 'IO', 'IOT'),
(33, 'Brunei Darussalam', 'Brunéi darussalam', 'BN', 'BRN'),
(34, 'Bulgaria', 'Bulgarie', 'BG', 'BGR'),
(35, 'Burkina Faso', 'Burkina faso', 'BF', 'BFA'),
(36, 'Burundi', 'Burundi', 'BI', 'BDI'),
(37, 'Cambodia', 'Cambodge', 'KH', 'KHM'),
(38, 'Cameroon', 'Cameroun', 'CM', 'CMR'),
(39, 'Canada', 'Canada', 'CA', 'CAN'),
(40, 'Cape Verde', 'Cap-vert', 'CV', 'CPV'),
(41, 'Cayman Islands', 'Caïmanes, îles', 'KY', 'CYM'),
(42, 'Central African Republic', 'Centrafricaine, république', 'CF', 'CAF'),
(43, 'Chad', 'Tchad', 'TD', 'TCD'),
(44, 'Chile', 'Chili', 'CL', 'CHL'),
(45, 'China', 'Chine', 'CN', 'CHN'),
(46, 'Christmas Island', 'Christmas, île', 'CX', 'CXR'),
(47, 'Cocos (Keeling) Islands', 'Cocos (keeling), îles', 'CC', 'CCK'),
(48, 'Colombia', 'Colombie', 'CO', 'COL'),
(49, 'Comoros', 'Comores', 'KM', 'COM'),
(50, 'Congo', 'Congo', 'CG', 'COG'),
(51, 'Congo, the Democratic Republic of the', 'Congo, la république démocratique du', 'CD', 'COD'),
(52, 'Cook Islands', 'Cook, îles', 'CK', 'COK'),
(53, 'Costa Rica', 'Costa rica', 'CR', 'CRI'),
(54, 'Cote d''Ivoire', 'Côte d''ivoire', 'CI', 'CIV'),
(55, 'Croatia', 'Croatie', 'HR', 'HRV'),
(56, 'Cuba', 'Cuba', 'CU', 'CUB'),
(57, 'Cyprus', 'Chypre', 'CY', 'CYP'),
(58, 'Czech Republic', 'Tchèque, république', 'CZ', 'CZE'),
(59, 'Denmark', 'Danemark', 'DK', 'DNK'),
(60, 'Djibouti', 'Djibouti', 'DJ', 'DJI'),
(61, 'Dominica', 'Dominique', 'DM', 'DMA'),
(62, 'Dominican Republic', 'Dominicaine, république', 'DO', 'DOM'),
(63, 'Ecuador', 'Équateur', 'EC', 'ECU'),
(64, 'Egypt', 'Égypte', 'EG', 'EGY'),
(65, 'El Salvador', 'El salvador', 'SV', 'SLV'),
(66, 'Equatorial Guinea', 'Guinée équatoriale', 'GQ', 'GNQ'),
(67, 'Eritrea', 'Érythrée', 'ER', 'ERI'),
(68, 'Estonia', 'Estonie', 'EE', 'EST'),
(69, 'Ethiopia', 'Éthiopie', 'ET', 'ETH'),
(70, 'Falkland Islands (Malvinas)', 'Falkland, îles (malvinas)', 'FK', 'FLK'),
(71, 'Faroe Islands', 'Féroé, îles', 'FO', 'FRO'),
(72, 'Fiji', 'Fidji', 'FJ', 'FJI'),
(73, 'Finland', 'Finlande', 'FI', 'FIN'),
(74, 'France', 'France', 'FR', 'FRA'),
(75, 'French Guiana', 'Guyane française', 'GF', 'GUF'),
(76, 'French Polynesia', 'Polynésie française', 'PF', 'PYF'),
(77, 'French Southern Territories', 'Terres australes françaises', 'TF', 'ATF'),
(78, 'Gabon', 'Gabon', 'GA', 'GAB'),
(79, 'Gambia', 'Gambie', 'GM', 'GMB'),
(80, 'Georgia', 'Géorgie', 'GE', 'GEO'),
(81, 'Germany', 'Allemagne', 'DE', 'DEU'),
(82, 'Ghana', 'Ghana', 'GH', 'GHA'),
(83, 'Gibraltar', 'Gibraltar', 'GI', 'GIB'),
(84, 'Greece', 'Grèce', 'GR', 'GRC'),
(85, 'Greenland', 'Groenland', 'GL', 'GRL'),
(86, 'Grenada', 'Grenade', 'GD', 'GRD'),
(87, 'Guadeloupe', 'Guadeloupe', 'GP', 'GLP'),
(88, 'Guam', 'Guam', 'GU', 'GUM'),
(89, 'Guatemala', 'Guatemala', 'GT', 'GTM'),
(90, 'Guernsey', 'Guernesey', 'GG', 'GGY'),
(91, 'Guinea', 'Guinée', 'GN', 'GIN'),
(92, 'Guinea-Bissau', 'Guinée-bissau', 'GW', 'GNB'),
(93, 'Guyana', 'Guyana', 'GY', 'GUY'),
(94, 'Haiti', 'Haïti', 'HT', 'HTI'),
(95, 'Heard Island and McDonald Islands', 'Heard, île et mcdonald, îles', 'HM', 'HMD'),
(96, 'Holy See (Vatican City State)', 'Saint-siège (état de la cité du vatican)', 'VA', 'VAT'),
(97, 'Honduras', 'Honduras', 'HN', 'HND'),
(98, 'Hong Kong', 'Hong-kong', 'HK', 'HKG'),
(99, 'Hungary', 'Hongrie', 'HU', 'HUN'),
(100, 'Iceland', 'Islande', 'IS', 'ISL'),
(101, 'India', 'Inde', 'IN', 'IND'),
(102, 'Indonesia', 'Indonésie', 'ID', 'IDN'),
(103, 'Iran, Islamic Republic of', 'Iran, république islamique d''', 'IR', 'IRN'),
(104, 'Iraq', 'Iraq', 'IQ', 'IRQ'),
(105, 'Ireland', 'Irlande', 'IE', 'IRL'),
(106, 'Isle of Man', 'Île de man', 'IM', 'IMN'),
(107, 'Israel', 'Israël', 'IL', 'ISR'),
(108, 'Italy', 'Italie', 'IT', 'ITA'),
(109, 'Jamaica', 'Jamaïque', 'JM', 'JAM'),
(110, 'Japan', 'Japon', 'JP', 'JPN'),
(111, 'Jersey', 'Jersey', 'JE', 'JEY'),
(112, 'Jordan', 'Jordanie', 'JO', 'JOR'),
(113, 'Kazakhstan', 'Kazakhstan', 'KZ', 'KAZ'),
(114, 'Kenya', 'Kenya', 'KE', 'KEN'),
(115, 'Kiribati', 'Kiribati', 'KI', 'KIR'),
(116, 'Korea, Democratic People''s Republic of', 'Corée, république populaire démocratique de', 'KP', 'PRK'),
(117, 'South Korea', 'Corée du Sud', 'KR', 'KOR'),
(118, 'Kuwait', 'Koweït', 'KW', 'KWT'),
(119, 'Kyrgyzstan', 'Kirghizistan', 'KG', 'KGZ'),
(120, 'Lao People''s Democratic Republic', 'Lao, république démocratique populaire', 'LA', 'LAO'),
(121, 'Latvia', 'Lettonie', 'LV', 'LVA'),
(122, 'Lebanon', 'Liban', 'LB', 'LBN'),
(123, 'Lesotho', 'Lesotho', 'LS', 'LSO'),
(124, 'Liberia', 'Libéria', 'LR', 'LBR'),
(125, 'Libyan Arab Jamahiriya', 'Libyenne, jamahiriya arabe', 'LY', 'LBY'),
(126, 'Liechtenstein', 'Liechtenstein', 'LI', 'LIE'),
(127, 'Lithuania', 'Lituanie', 'LT', 'LTU'),
(128, 'Luxembourg', 'Luxembourg', 'LU', 'LUX'),
(129, 'Macao', 'Macao', 'MO', 'MAC'),
(130, 'Macedonia, the former Yugoslav Republic of', 'Macédoine, l''ex-république yougoslave de', 'MK', 'MKD'),
(131, 'Madagascar', 'Madagascar', 'MG', 'MDG'),
(132, 'Malawi', 'Malawi', 'MW', 'MWI'),
(133, 'Malaysia', 'Malaisie', 'MY', 'MYS'),
(134, 'Maldives', 'Maldives', 'MV', 'MDV'),
(135, 'Mali', 'Mali', 'ML', 'MLI'),
(136, 'Malta', 'Malte', 'MT', 'MLT'),
(137, 'Marshall Islands', 'Marshall, îles', 'MH', 'MHL'),
(138, 'Martinique', 'Martinique', 'MQ', 'MTQ'),
(139, 'Mauritania', 'Mauritanie', 'MR', 'MRT'),
(140, 'Mauritius', 'Maurice', 'MU', 'MUS'),
(141, 'Mayotte', 'Mayotte', 'YT', 'MYT'),
(142, 'Mexico', 'Mexique', 'MX', 'MEX'),
(143, 'Micronesia, Federated States of', 'Micronésie, états fédérés de', 'FM', 'FSM'),
(144, 'Moldova, Republic of', 'Moldova, république de', 'MD', 'MDA'),
(145, 'Monaco', 'Monaco', 'MC', 'MCO'),
(146, 'Mongolia', 'Mongolie', 'MN', 'MNG'),
(147, 'Montenegro', 'Monténégro', 'ME', 'MNE'),
(148, 'Montserrat', 'Montserrat', 'MS', 'MSR'),
(149, 'Morocco', 'Maroc', 'MA', 'MAR'),
(150, 'Mozambique', 'Mozambique', 'MZ', 'MOZ'),
(151, 'Myanmar', 'Myanmar', 'MM', 'MMR'),
(152, 'Namibia', 'Namibie', 'NA', 'NAM'),
(153, 'Nauru', 'Nauru', 'NR', 'NRU'),
(154, 'Nepal', 'Népal', 'NP', 'NPL'),
(155, 'Netherlands', 'Pays-bas', 'NL', 'NLD'),
(156, 'Netherlands Antilles', 'Antilles néerlandaises', 'AN', 'ANT'),
(157, 'New Caledonia', 'Nouvelle-calédonie', 'NC', 'NCL'),
(158, 'New Zealand', 'Nouvelle-zélande', 'NZ', 'NZL'),
(159, 'Nicaragua', 'Nicaragua', 'NI', 'NIC'),
(160, 'Niger', 'Niger', 'NE', 'NER'),
(161, 'Nigeria', 'Nigéria', 'NG', 'NGA'),
(162, 'Niue', 'Niué', 'NU', 'NIU'),
(163, 'Norfolk Island', 'Norfolk, île', 'NF', 'NFK'),
(164, 'Northern Mariana Islands', 'Mariannes du nord, îles', 'MP', 'MNP'),
(165, 'Norway', 'Norvège', 'NO', 'NOR'),
(166, 'Oman', 'Oman', 'OM', 'OMN'),
(167, 'Pakistan', 'Pakistan', 'PK', 'PAK'),
(168, 'Palau', 'Palaos', 'PW', 'PLW'),
(169, 'Palestinian Territory, Occupied', 'Palestinien occupé, territoire', 'PS', 'PSE'),
(170, 'Panama', 'Panama', 'PA', 'PAN'),
(171, 'Papua New Guinea', 'Papouasie-nouvelle-guinée', 'PG', 'PNG'),
(172, 'Paraguay', 'Paraguay', 'PY', 'PRY'),
(173, 'Peru', 'Pérou', 'PE', 'PER'),
(174, 'Philippines', 'Philippines', 'PH', 'PHL'),
(175, 'Pitcairn', 'Pitcairn', 'PN', 'PCN'),
(176, 'Poland', 'Pologne', 'PL', 'POL'),
(177, 'Portugal', 'Portugal', 'PT', 'PRT'),
(178, 'Puerto Rico', 'Porto rico', 'PR', 'PRI'),
(179, 'Qatar', 'Qatar', 'QA', 'QAT'),
(180, 'Reunion', 'Réunion', 'RE', 'REU'),
(181, 'Romania', 'Roumanie', 'RO', 'ROU'),
(182, 'Russian Federation', 'Russie, fédération de', 'RU', 'RUS'),
(183, 'Rwanda', 'Rwanda', 'RW', 'RWA'),
(184, 'Saint Barthelemy', 'Saint-barthélemy', 'BL', 'BLM'),
(185, 'Saint Helena', 'Sainte-hélène, ascension et tristan da cunha', 'SH', 'SHN'),
(186, 'Saint Kitts and Nevis', 'Saint-kitts-et-nevis', 'KN', 'KNA'),
(187, 'Saint Lucia', 'Sainte-lucie', 'LC', 'LCA'),
(188, 'Saint Martin (French part)', 'Saint-martin', 'MF', 'MAF'),
(189, 'Saint Pierre and Miquelon', 'Saint-pierre-et-miquelon', 'PM', 'SPM'),
(190, 'Saint Vincent and the Grenadines', 'Saint-vincent-et-les grenadines', 'VC', 'VCT'),
(191, 'Samoa', 'Samoa', 'WS', 'WSM'),
(192, 'San Marino', 'Saint-marin', 'SM', 'SMR'),
(193, 'Sao Tome and Principe', 'Sao tomé-et-principe', 'ST', 'STP'),
(194, 'Saudi Arabia', 'Arabie saoudite', 'SA', 'SAU'),
(195, 'Senegal', 'Sénégal', 'SN', 'SEN'),
(196, 'Serbia', 'Serbie', 'RS', 'SRB'),
(197, 'Seychelles', 'Seychelles', 'SC', 'SYC'),
(198, 'Sierra Leone', 'Sierra leone', 'SL', 'SLE'),
(199, 'Singapore', 'Singapour', 'SG', 'SGP'),
(200, 'Slovakia', 'Slovaquie', 'SK', 'SVK'),
(201, 'Slovenia', 'Slovénie', 'SI', 'SVN'),
(202, 'Solomon Islands', 'Salomon, îles', 'SB', 'SLB'),
(203, 'Somalia', 'Somalie', 'SO', 'SOM'),
(204, 'South Africa', 'Afrique du sud', 'ZA', 'ZAF'),
(205, 'South Georgia and South Sandwich Islands', 'Géorgie du sud et les îles sandwich du sud', 'GS', 'SGS'),
(206, 'Spain', 'Espagne', 'ES', 'ESP'),
(207, 'Sri Lanka', 'Sri lanka', 'LK', 'LKA'),
(208, 'Sudan', 'Soudan', 'SD', 'SDN'),
(209, 'Suriname', 'Suriname', 'SR', 'SUR'),
(210, 'Svalbard and Jan Mayen', 'Svalbard et île jan mayen', 'SJ', 'SJM'),
(211, 'Swaziland', 'Swaziland', 'SZ', 'SWZ'),
(212, 'Sweden', 'Suède', 'SE', 'SWE'),
(213, 'Switzerland', 'Suisse', 'CH', 'CHE'),
(214, 'Syrian Arab Republic', 'Syrienne, république arabe', 'SY', 'SYR'),
(215, 'Taiwan, Province of China', 'Taïwan, province de chine', 'TW', 'TWN'),
(216, 'Tajikistan', 'Tadjikistan', 'TJ', 'TJK'),
(217, 'Tanzania, United Republic of', 'Tanzanie, république-unie de', 'TZ', 'TZA'),
(218, 'Thailand', 'Thaïlande', 'TH', 'THA'),
(219, 'Timor-Leste', 'Timor-leste', 'TL', 'TLS'),
(220, 'Togo', 'Togo', 'TG', 'TGO'),
(221, 'Tokelau', 'Tokelau', 'TK', 'TKL'),
(222, 'Tonga', 'Tonga', 'TO', 'TON'),
(223, 'Trinidad and Tobago', 'Trinité-et-tobago', 'TT', 'TTO'),
(224, 'Tunisia', 'Tunisie', 'TN', 'TUN'),
(225, 'Turkey', 'Turquie', 'TR', 'TUR'),
(226, 'Turkmenistan', 'Turkménistan', 'TM', 'TKM'),
(227, 'Turks and Caicos Islands', 'Turks et caïques, îles', 'TC', 'TCA'),
(228, 'Tuvalu', 'Tuvalu', 'TV', 'TUV'),
(229, 'Uganda', 'Ouganda', 'UG', 'UGA'),
(230, 'Ukraine', 'Ukraine', 'UA', 'UKR'),
(231, 'United Arab Emirates', 'Émirats arabes unis', 'AE', 'ARE'),
(232, 'United Kingdom', 'Royaume-uni', 'GB', 'GBR'),
(233, 'United States', 'États-unis', 'US', 'USA'),
(234, 'United States Minor Outlying Islands', 'Îles mineures éloignées des états-unis', 'UM', 'UMI'),
(235, 'Uruguay', 'Uruguay', 'UY', 'URY'),
(236, 'Uzbekistan', 'Ouzbékistan', 'UZ', 'UZB'),
(237, 'Vanuatu', 'Vanuatu', 'VU', 'VUT'),
(238, 'Venezuela, Bolivarian Republic of', 'Venezuela, république bolivarienne du', 'VE', 'VEN'),
(239, 'Viet Nam', 'Viet nam', 'VN', 'VNM'),
(240, 'Virgin Islands, British', 'Îles vierges britanniques', 'VG', 'VGB'),
(241, 'Virgin Islands, U.S.', 'Îles vierges des états-unis', 'VI', 'VIR'),
(242, 'Wallis and Futuna', 'Wallis et futuna', 'WF', 'WLF'),
(243, 'Western Sahara', 'Sahara occidental', 'EH', 'ESH'),
(244, 'Yemen', 'Yémen', 'YE', 'YEM'),
(245, 'Zambia', 'Zambie', 'ZM', 'ZMB'),
(246, 'Zimbabwe', 'Zimbabwe', 'ZW', 'ZWE');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_cck_more_sessions`
--

CREATE TABLE IF NOT EXISTS `joom_cck_more_sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `extension` varchar(50) NOT NULL,
  `folder` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `options` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_extension` (`extension`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=500 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_cck_store_form_ferienhaus_datenbank`
--

CREATE TABLE IF NOT EXISTS `joom_cck_store_form_ferienhaus_datenbank` (
  `id` int(11) NOT NULL,
  `postleitzahl` varchar(255) NOT NULL,
  `zimmeranzahl` varchar(255) NOT NULL,
  `hausbild` varchar(255) NOT NULL,
  `objektbeschreibung` text NOT NULL,
  `objektort` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joom_cck_store_form_ferienhaus_datenbank`
--

INSERT INTO `joom_cck_store_form_ferienhaus_datenbank` (`id`, `postleitzahl`, `zimmeranzahl`, `hausbild`, `objektbeschreibung`, `objektort`) VALUES
(3, '12345', '89', 'images/22.png', '', ''),
(4, '12345', '54', 'images/kiteboarding-wallpaper.jpg', '<p>Lorem ipsum ad qui amet dolore, vitae cetero quaerendum mel ea. Facilis fastidii duo no. Viris partiendo ius no, alia animal nam at. Feugait imperdiet ius an, no quis facer lucilius vis. Aliquam saperet contentiones ex pro, id idque offendit ius. Fugit suavitate ad eam, ut essent debitis cum. Cu duo iudico instructior. Sea te choro perfecto, per eu meis nonumy percipit. Ut mea sint constituam, cu pro impedit constituam. Et diam wisi tollit mel, te has atqui veritus. Falli volumus ullamcorper id vis, fugit debet ei pri. Mea esse saperet oporteat cu, sumo interesset an cum. </p>', 'Nordsee Dorf'),
(5, '657788', 'dfgs', 'images/stoltzemaus.jpg', '<p>sdfgsdgfdssdfgsdgfsdgf</p>', 'Dort'),
(6, '158746', '12', 'images/lake-garda-kiteboarding-295085.jpg', '<p>Lorem ipsum ad qui amet dolore, vitae cetero quaerendum mel ea. Facilis fastidii duo no. Viris partiendo ius no, alia animal nam at. Feugait imperdiet ius an, no quis facer lucilius vis. Aliquam saperet contentiones ex pro, id idque offendit ius. Fugit suavitate ad eam, ut essent debitis cum. Cu duo iudico instructior. ax. Quodsi percipit consetetur at vim, eam omnis option explicari et. Pri at liber labores, his an utinam labore aperiam. Ei eos justo omnesque reformidans. Inani detraxit voluptatum ut pro. An sit posse probatus inimicus. Magna vivendo deseruisse has at, meis modus molestiae an has. Eam iudicabit constituam mediocritatem ne.</p>', 'Dort');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_cck_store_item_content`
--

CREATE TABLE IF NOT EXISTS `joom_cck_store_item_content` (
  `id` int(11) NOT NULL,
  `cck` varchar(50) NOT NULL,
  `art_catid` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_cck_store_item_users`
--

CREATE TABLE IF NOT EXISTS `joom_cck_store_item_users` (
  `id` int(11) NOT NULL,
  `cck` varchar(50) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `about_me` text NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `postal_code` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `birthdate` datetime NOT NULL,
  `birthplace` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_contact_details`
--

CREATE TABLE IF NOT EXISTS `joom_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_content`
--

CREATE TABLE IF NOT EXISTS `joom_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `pferdename` varchar(255) NOT NULL,
  `oberes-pferdebild` varchar(255) NOT NULL,
  `unteres-pferdebild` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Daten für Tabelle `joom_content`
--

INSERT INTO `joom_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`, `pferdename`, `oberes-pferdebild`, `unteres-pferdebild`) VALUES
(1, 103, 'Mister Ed', 'mister-ed', '::cck::1::/cck::<br />::fulltext::<p>Lorem ipsum ad qui amet dolore, vitae cetero quaerendum mel ea. Facilis fastidii duo no. Viris partiendo ius no, alia animal nam at. Feugait imperdiet ius an, no quis facer lucilius vis. Aliquam saperet contentiones ex pro, id idque offendit ius. Fugit suavitate ad eam, ut essent debitis cum. Cu duo iudico instructior.</p>\r\n<p>Sea te choro perfecto, per eu meis nonumy percipit. Ut mea sint constituam, cu pro impedit constituam. Et diam wisi tollit mel, te has atqui veritus. Falli volumus ullamcorper id vis, fugit debet ei pri. Mea esse saperet oporteat cu, sumo interesset an cum. Facer expetenda ius te, sint mundi aperiri no est, mollis salutandi quo ne. No dicta errem sed. Mea ei detraxit patrioque, sumo eirmod ea vix. </p>::/fulltext::', '', 1, 2, '2014-09-19 14:46:19', 129, '', '2014-09-19 15:02:41', 129, 0, '0000-00-00 00:00:00', '2014-09-19 14:46:19', '0000-00-00 00:00:00', '', '', '', 2, 2, '', '', 1, 5, '', 0, '*', '', '', 'images/1/hanghuhn.jpg', 'images/1/01generous.jpg'),
(2, 105, 'test', 'test', '::cck::2::/cck::<br />::introtext::<figure><img src="images/joomla_logo_black.jpg" alt="" /><figcaption>Das ist eine Bildunterschrift</figcaption></figure>::/introtext::<br />::fulltext::::/fulltext::', '::cck::2::/cck::', 1, 2, '2014-09-19 16:19:52', 129, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-09-19 16:19:52', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":""}', 1, 1, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '', '', '', ''),
(3, 108, 'Meine Hütte', 'meine-huette', '::cck::3::/cck::', '', -2, 2, '2014-09-22 09:54:32', 129, '', '2014-09-22 10:05:13', 129, 0, '0000-00-00 00:00:00', '2014-09-22 09:54:32', '0000-00-00 00:00:00', '', '', '', 6, 0, '', '', 1, 0, '', 0, '*', '', '', '', ''),
(4, 111, 'Haus am Meer', 'haus-am-meer', '::cck::5::/cck::', '', 1, 10, '2014-09-22 10:49:06', 129, '', '2014-09-22 11:13:08', 129, 0, '0000-00-00 00:00:00', '2014-09-22 10:49:06', '0000-00-00 00:00:00', '', '', '', 2, 2, '', '', 1, 2, '', 0, '*', '', '', '', ''),
(5, 112, 'fdsgsg', 'fdsgsg', '::cck::6::/cck::', '', 1, 10, '2014-09-22 10:51:12', 129, '', '2014-09-22 11:15:00', 129, 0, '0000-00-00 00:00:00', '2014-09-22 10:51:12', '0000-00-00 00:00:00', '', '', '', 3, 1, '', '', 1, 0, '', 0, '*', '', '', '', ''),
(6, 113, 'Haus in den Bergen', 'haus-in-den-bergen', '::cck::7::/cck::', '', 1, 10, '2014-09-22 10:58:30', 129, '', '2014-09-22 11:13:30', 129, 0, '0000-00-00 00:00:00', '2014-09-22 10:58:30', '0000-00-00 00:00:00', '', '', '', 2, 0, '', '', 1, 0, '', 0, '*', '', '', '', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `joom_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

--
-- Daten für Tabelle `joom_contentitem_tag_map`
--

INSERT INTO `joom_contentitem_tag_map` (`type_alias`, `core_content_id`, `content_item_id`, `tag_id`, `tag_date`, `type_id`) VALUES
('com_content.article', 1, 3, 2, '2014-09-22 10:05:20', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `joom_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_content_rating`
--

CREATE TABLE IF NOT EXISTS `joom_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_content_types`
--

CREATE TABLE IF NOT EXISTS `joom_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10000 ;

--
-- Daten für Tabelle `joom_content_types`
--

INSERT INTO `joom_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Weblink', 'com_weblinks.weblink', '{"special":{"dbtable":"#__weblinks","key":"id","type":"Weblink","prefix":"WeblinksTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{}}', 'WeblinksHelperRoute::getWeblinkRoute', '{"formFile":"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","featured","images"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"], "convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(3, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(4, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(5, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(6, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(9, 'Weblinks Category', 'com_weblinks.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'WeblinksHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(10, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(11, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(12, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(13, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(14, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(15, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `joom_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_extensions`
--

CREATE TABLE IF NOT EXISTS `joom_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10095 ;

--
-- Daten für Tabelle `joom_extensions`
--

INSERT INTO `joom_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"de-DE","site":"de-DE"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"target":"0","save_history":"1","history_limit":5,"count_clicks":"1","icons":1,"link_icons":"","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_num_links":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_links_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"0","show_link_description":"1","show_link_hits":"1","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":""}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2013, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/github.com\\/PHPMailer\\/PHPMailer","version":"5.2.6","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{"mediaversion":"8dd90d1f7d8ade396e71d7bce659e0c9"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2014-03-09 12:54:48","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2014 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.2.1","description":"LIB_FOF_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 4, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.15","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2014","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.1.2","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"2","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `joom_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"strong_passwords":"1","autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.3.1","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.3.1","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(602, 'GermanDE-CH-AT', 'language', 'de-DE', '', 0, 1, 1, 0, '{"name":"German (DE-CH-AT)","type":"language","creationDate":"26.07.2014","author":"J!German","copyright":"Copyright (C) 2008 - 2014 J!German. All rights reserved.","authorEmail":"team@jgerman.de","authorUrl":"http:\\/\\/www.jgerman.de","version":"3.3.3.1","description":"\\n      <img style=\\"margin: 5px; vertical-align: middle;\\" alt=\\"German (Deutsch)\\" src=\\"data:;base64,R0lGODlhEgAMAJEAAP\\/OAAAAAN0AAAAAACH5BAAAAAAALAAAAAASAAwAAAIXjI+py+2vhJy02ouz3hb4D4biSJbmKRYAOw==\\" height=\\"12\\" width=\\"18\\" \\/>Deutsche Frontend (Website)-\\u00dcbersetzung f\\u00fcr Joomla! 3.3.3\\n      <br \\/>\\n      <img style=\\"margin: 5px; vertical-align: middle;\\" alt=\\"English (Englisch)\\" src=\\"data:image\\/gif;base64,R0lGODlhEgAMAPcAANQYLe+nr+iPmgElcdQuQtQtQtq\\/zc8UK88TKu2Sm+A4SOucpn2RvxIseCBLmRIpdtIWLAEkctAUK\\/\\/f3g4tguqXodozRcwDHNa8y8fT5h9GlP\\/7+R82fcwIIPOCiRg2fwc0fP\\/6+AEohAwqgffV2QYuhfaTmQApgi1VngAZd9Y0SOmTnaysytIjOPixtbZlgOxVYehUYPbP09FqfWByq\\/XL0BIndO2Fju6AieZ8iQAaed9gcOnm7t28wgEpdImUt2B\\/uOtWYsAPHP\\/o5t5SYdzs98pwd\\/KXn\\/\\/v7tjo9WRyqXBtkgEdbPbu8c0MJHdomvB4gHBglMwGH7Nphm6Zy9Pq6uufqfjh5NUwRM8SKhIqd9c5TNc4TNUxRRIjcxAvg9FpfPCmpiBOjv\\/r6cYgKhIfb\\/\\/i4fSTmdm+zClSnOiMl+dXY1RioK5kgxg5hPOZoNMpPmh\\/tTxalmqFut\\/G0tchLdni765RcOiOmQAgfcHZ7v77+3J4o+6UnfTKz\\/\\/\\/\\/OurtYScx66wzThepMy7vwAeeiJLmumQmv\\/m5QAceN00RmOBqgEnc9zr9+lWY+qWoNY0Rw80eudUYWZ1qytZk+unsAYxiup5g+iSnX6Ww7Vif9EQH\\/Df5dbc6hIqdt3w+\\/\\/q6MwFHfOLkuj6\\/+ylrgAVde+aotPQ3+yMls8VLNbc69+lo+6nr9tHWAAPcLTI480GHssAGf\\/\\/\\/wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAAAAAAALAAAAAASAAwAAAjoAH9wKPOggZYPPepsCiPHRgNPXtzwGVKEwZdShUoYAAArAIpEKSwp0RTDERREjRiMyIOGYwAHIia9kORhApspRC6NsZOJDgRYlQK1WYODxKc5gjJcYeUnxB8ZCKRYQeKihqw9p1goUNRlC6QCBOAcyNICCxcVBApYUBCrrdtYFw6k6vDW7RsBAlYsqJAgBwInO\\/ocwvNoAaYjQPTIkmXKBA9OEkIBGiVrg5oEqqi8aoIqyIwoGjBwJDWIRiczN1rdOQMDzBNDOk5s7JjGFYU4SUCJMrJETIQBPkAQIiNkFaUBjJhEWlQlIAA7\\" height=\\"12\\" width=\\"18\\" \\/>German Frontend (Website) translation for Joomla! 3.3.3\\n    ","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(603, 'GermanDE-CH-AT', 'language', 'de-DE', '', 1, 1, 1, 0, '{"name":"German (DE-CH-AT)","type":"language","creationDate":"26.07.2014","author":"J!German","copyright":"Copyright (C) 2008 - 2014 J!German. All rights reserved.","authorEmail":"team@jgerman.de","authorUrl":"http:\\/\\/www.jgerman.de","version":"3.3.3.1","description":"\\n      <img style=\\"margin: 5px; vertical-align: middle;\\" alt=\\"German (Deutsch)\\" src=\\"data:;base64,R0lGODlhEgAMAJEAAP\\/OAAAAAN0AAAAAACH5BAAAAAAALAAAAAASAAwAAAIXjI+py+2vhJy02ouz3hb4D4biSJbmKRYAOw==\\" height=\\"12\\" width=\\"18\\" \\/>Deutsche Backend (Administrator)-\\u00dcbersetzung f\\u00fcr Joomla! 3.3.3\\n      <br \\/>\\n      <img style=\\"margin: 5px; vertical-align: middle;\\" alt=\\"English (Englisch)\\" src=\\"data:image\\/gif;base64,R0lGODlhEgAMAPcAANQYLe+nr+iPmgElcdQuQtQtQtq\\/zc8UK88TKu2Sm+A4SOucpn2RvxIseCBLmRIpdtIWLAEkctAUK\\/\\/f3g4tguqXodozRcwDHNa8y8fT5h9GlP\\/7+R82fcwIIPOCiRg2fwc0fP\\/6+AEohAwqgffV2QYuhfaTmQApgi1VngAZd9Y0SOmTnaysytIjOPixtbZlgOxVYehUYPbP09FqfWByq\\/XL0BIndO2Fju6AieZ8iQAaed9gcOnm7t28wgEpdImUt2B\\/uOtWYsAPHP\\/o5t5SYdzs98pwd\\/KXn\\/\\/v7tjo9WRyqXBtkgEdbPbu8c0MJHdomvB4gHBglMwGH7Nphm6Zy9Pq6uufqfjh5NUwRM8SKhIqd9c5TNc4TNUxRRIjcxAvg9FpfPCmpiBOjv\\/r6cYgKhIfb\\/\\/i4fSTmdm+zClSnOiMl+dXY1RioK5kgxg5hPOZoNMpPmh\\/tTxalmqFut\\/G0tchLdni765RcOiOmQAgfcHZ7v77+3J4o+6UnfTKz\\/\\/\\/\\/OurtYScx66wzThepMy7vwAeeiJLmumQmv\\/m5QAceN00RmOBqgEnc9zr9+lWY+qWoNY0Rw80eudUYWZ1qytZk+unsAYxiup5g+iSnX6Ww7Vif9EQH\\/Df5dbc6hIqdt3w+\\/\\/q6MwFHfOLkuj6\\/+ylrgAVde+aotPQ3+yMls8VLNbc69+lo+6nr9tHWAAPcLTI480GHssAGf\\/\\/\\/wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAAAAAAALAAAAAASAAwAAAjoAH9wKPOggZYPPepsCiPHRgNPXtzwGVKEwZdShUoYAAArAIpEKSwp0RTDERREjRiMyIOGYwAHIia9kORhApspRC6NsZOJDgRYlQK1WYODxKc5gjJcYeUnxB8ZCKRYQeKihqw9p1goUNRlC6QCBOAcyNICCxcVBApYUBCrrdtYFw6k6vDW7RsBAlYsqJAgBwInO\\/ocwvNoAaYjQPTIkmXKBA9OEkIBGiVrg5oEqqi8aoIqyIwoGjBwJDWIRiczN1rdOQMDzBNDOk5s7JjGFYU4SUCJMrJETIQBPkAQIiNkFaUBjJhEWlQlIAA7\\" height=\\"12\\" width=\\"18\\" \\/>German Backend (Administrator) translation for Joomla! 3.3.3\\n    ","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(604, 'German Language Pack', 'package', 'pkg_de-DE', '', 0, 1, 1, 0, '{"name":"German Language Pack","type":"package","creationDate":"26.07.2014","author":"J!German","copyright":"","authorEmail":"team@jgerman.de","authorUrl":"http:\\/\\/www.jgerman.de","version":"3.3.3.1","description":"\\n    <div style=\\"text-align: center;\\">\\n      <h2>Deutsches \\u201eFull\\u201c-Sprachpaket f\\u00fcr Joomla! 3.3.3 von <a title=\\"J!German\\" href=\\"http:\\/\\/www.jgerman.de\\" target=\\"_blank\\">J!German<\\/a><\\/h2>\\n      <h3><span style=\\"color: #008000;\\">\\u00dcbersetzungsversion: 3.3.3v1<\\/span><\\/h3>\\n      <hr \\/>\\n      <table rules=\\"all\\" frame=\\"border\\" style=\\"width: 90%; border-color: #000000; border-width: 1px; border-style: solid;\\" align=\\"center\\" border=\\"1\\">\\n      <colgroup> <col width=\\"30%\\" \\/> <col width=\\"60\\" \\/> <\\/colgroup>\\n      <tbody>\\n        <tr>\\n          <td>\\n            <ul>\\n              <li>Frontend (Website)-\\u00dcbersetzung<\\/li>\\n            <\\/ul>\\n          <\\/td>\\n          <td rowspan=\\"2\\">\\n            <ul>\\n              <li>\\n                <span style=\\"text-decoration: underline;\\">Neuinstallation:<\\/span>\\n                <br \\/>\\n                Legen Sie die deutsche Sprache unter <a title=\\"Language Manager\\" href=\\"index.php?option=com_languages\\" target=\\"_blank\\">\\u201eExtensions\\u201c \\u2192 \\u201eLanguage Manager\\u201c<\\/a> als Standardsprache (\\u201eDefault\\u201c), sowohl f\\u00fcr die Website (\\u201eInstalled - Site\\u201c) als auch f\\u00fcr die Administration (\\u201eInstalled - Administrator\\u201c), fest.\\n              <\\/li>\\n              <br \\/>\\n              <li>\\n                <span style=\\"text-decoration: underline;\\">Aktualisierung:<\\/span>\\n                <br \\/>\\n                Es sind keine weiteren Schritte erforderlich.\\n              <\\/li>\\n            <\\/ul>\\n          <\\/td>\\n        <\\/tr>\\n        <tr>\\n          <td>\\n            <ul>\\n              <li>Backend (Administrator)-\\u00dcbersetzung<\\/li>\\n            <\\/ul>\\n          <\\/td>\\n        <\\/tr>\\n      <\\/tbody>\\n      <\\/table>\\n      <br \\/>\\n      <span style=\\"text-decoration: underline;\\">Hinweis:<\\/span> Dieses Paket unterst\\u00fctzt die Joomla! eigene <a title=\\"Joomla!-Aktualisierungsfunktion\\" href=\\"index.php?option=com_installer&amp;view=update\\" target=\\"_blank\\">Aktualisierungsfunktion<\\/a>!\\n    <\\/div>\\n    ","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"July 2014","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.3.3","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'plg_system_cck', 'plugin', 'cck', 'system', 0, 1, 1, 0, '{"name":"plg_system_cck","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'var_cck_joomla', 'file', 'var_cck_joomla', '', 0, 1, 0, 0, '{"name":"var_cck_joomla","type":"file","creationDate":"December 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"Position Variation for SEBLOD 3.x - www.seblod.com","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'var_cck_seb_css3', 'file', 'var_cck_seb_css3', '', 0, 1, 0, 0, '{"name":"var_cck_seb_css3","type":"file","creationDate":"December 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"Position Variation for SEBLOD 3.x - www.seblod.com","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'com_cck', 'component', 'com_cck', '', 1, 1, 0, 0, '{"name":"com_cck","type":"component","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.3.7","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"integration_user_default_author":129}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'mod_cck_menu', 'module', 'mod_cck_menu', '', 1, 1, 2, 0, '{"name":"mod_cck_menu","type":"module","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"LIB_CCK_EXTENSION_DESCRIPTION","group":""}', '{"mode":"2","menutitle":"","cck_new":"0","cck_ecommerce":"1","cck_inline":"0","alignment":"","enable01":"0","component01":"","enable02":"0","component02":"","enable03":"0","component03":"","enable04":"0","component04":"","enable05":"0","component05":"","free01":"0","free01_title":"Title 01","free01_url":"index.php","free02":"0","free02_title":"Title 02","free02_url":"index.php","free03":"0","free03_title":"Title 03","free03_url":"index.php","free04":"0","free04_title":"Title 04","free04_url":"index.php","free05":"0","free05_title":"Title 05","free05_url":"index.php","free06":"0","free06_title":"Title 06","free06_url":"index.php","free07":"0","free07_title":"Title 07","free07_url":"index.php","free08":"0","free08_title":"Title 08","free08_url":"index.php","free09":"0","free09_title":"Title 09","free09_url":"index.php","free10":"0","free10_title":"Title 10","free10_url":"index.php"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'mod_cck_quickadd', 'module', 'mod_cck_quickadd', '', 1, 1, 2, 0, '{"name":"mod_cck_quickadd","type":"module","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"LIB_CCK_EXTENSION_DESCRIPTION","group":""}', '{"modal_box_layout":"icon"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'mod_cck_quickicon', 'module', 'mod_cck_quickicon', '', 1, 1, 2, 0, '{"name":"mod_cck_quickicon","type":"module","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"LIB_CCK_EXTENSION_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'mod_cck_breadcrumbs', 'module', 'mod_cck_breadcrumbs', '', 0, 1, 0, 0, '{"name":"mod_cck_breadcrumbs","type":"module","creationDate":"January 2012","author":"Octopoos","copyright":"Copyright (C) 2005 - 2012 Open Source Matters.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"1.0.0","description":"LIB_CCK_EXTENSION_DESCRIPTION","group":""}', '{"showHere":"1","showHome":"1","showLast":"1","pathway":"0","separator_class":"separator","force_moduleclass_sfx":"0","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'mod_cck_form', 'module', 'mod_cck_form', '', 0, 1, 0, 0, '{"name":"mod_cck_form","type":"module","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"LIB_CCK_EXTENSION_DESCRIPTION","group":""}', '{"force_moduleclass_sfx":"0","raw_rendering":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 'mod_cck_list', 'module', 'mod_cck_list', '', 0, 1, 0, 0, '{"name":"mod_cck_list","type":"module","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"LIB_CCK_EXTENSION_DESCRIPTION","group":""}', '{"show_list_desc":"","list_desc":"","show_link_more":"","limit2":"5","ordering":"","order_by":"","ordering2":"","force_moduleclass_sfx":"0","raw_rendering":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 'mod_cck_search', 'module', 'mod_cck_search', '', 0, 1, 0, 0, '{"name":"mod_cck_search","type":"module","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"LIB_CCK_EXTENSION_DESCRIPTION","group":""}', '{"menu_item_search":"0","force_moduleclass_sfx":"0","raw_rendering":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'seb_one', 'template', 'seb_one', '', 0, 1, 1, 0, '{"name":"seb_one","type":"template","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"field_label":"1","field_description":"0","variation_default":"seb_css3","position_force_height":"1","position_margin":"8","position_header":"0","position_header_variation":"","position_left":"0","position_left_variation":"","position_top":"1","position_top_variation":"","position_sidebody_a":"0","position_sidebody_b":"0","position_bottom":"1","position_bottom_variation":"","position_right":"400","position_right_variation":"","position_footer":"0","position_footer_variation":"","debug":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 'seb_blog', 'template', 'seb_blog', '', 0, 1, 1, 0, '{"name":"seb_blog","type":"template","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"top_items":"1","top_display":"renderItem","top_display_field_name":"","top_columns":"1","top_column_width":"0","top_column_width_custom":"50,50","top_item_order":"0","top_item_height":"1","middle_items":"4","middle_display":"renderItem","middle_display_field_name":"","middle_columns":"2","middle_column_width":"0","middle_column_width_custom":"50,50","middle_item_order":"0","middle_item_height":"1","bottom_items":"","bottom_display":"renderItem","bottom_display_field_name":"","bottom_columns":"3","bottom_column_width":"0","bottom_column_width_custom":"33,34,33","bottom_item_order":"0","bottom_item_height":"1","cck_client_item":"1","debug":"0","item_margin":"8"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 'seb_table', 'template', 'seb_table', '', 0, 1, 1, 0, '{"name":"seb_table","type":"template","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"cck_client_item":"0","class_table":"category zebra table","class_table_tr_even":"cat-list-row%i","table_layout":"","class_table_tr_odd":"cat-list-row%i"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 'plg_cck_field_42', 'plugin', '42', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_42","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_Z","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 'plg_cck_field_button_submit', 'plugin', 'button_submit', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_button_submit","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_BUTTON","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 'plg_cck_field_calendar', 'plugin', 'calendar', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_calendar","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_PICKER","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 'plg_cck_field_captcha_math', 'plugin', 'captcha_math', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_captcha_math","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_CAPTCHA","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 'plg_cck_field_checkbox', 'plugin', 'checkbox', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_checkbox","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_FORM","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 'plg_cck_field_colorpicker', 'plugin', 'colorpicker', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_colorpicker","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_PICKER","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 'plg_cck_field_div', 'plugin', 'div', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_div","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_HTML","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 'plg_cck_field_email', 'plugin', 'email', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_email","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_FORM","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 'plg_cck_field_freetext', 'plugin', 'freetext', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_freetext","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_CONTENT","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 'plg_cck_field_field_x', 'plugin', 'field_x', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_field_x","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_COLLECTION","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 'plg_cck_field_group', 'plugin', 'group', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_group","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_COLLECTION","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10025, 'plg_cck_field_group_x', 'plugin', 'group_x', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_group_x","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_COLLECTION","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10026, 'plg_cck_field_hidden', 'plugin', 'hidden', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_hidden","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_FORM","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10027, 'plg_cck_field_icon', 'plugin', 'icon', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_icon","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_HTML","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10028, 'plg_cck_field_jform_accesslevel', 'plugin', 'jform_accesslevel', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_jform_accesslevel","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_JFORM","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10029, 'plg_cck_field_jform_associations', 'plugin', 'jform_associations', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_jform_associations","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_JFORM","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10030, 'plg_cck_field_jform_category', 'plugin', 'jform_category', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_jform_category","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_JFORM","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10031, 'plg_cck_field_jform_componentlayout', 'plugin', 'jform_componentlayout', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_jform_componentlayout","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_JFORM","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10032, 'plg_cck_field_jform_contentlanguage', 'plugin', 'jform_contentlanguage', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_jform_contentlanguage","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_JFORM","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10033, 'plg_cck_field_jform_editors', 'plugin', 'jform_editors', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_jform_editors","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_JFORM","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10034, 'plg_cck_field_jform_helpsite', 'plugin', 'jform_helpsite', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_jform_helpsite","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_JFORM","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10035, 'plg_cck_field_jform_groupparent', 'plugin', 'jform_groupparent', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_jform_groupparent","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_JFORM","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10036, 'plg_cck_field_jform_media', 'plugin', 'jform_media', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_jform_media","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_JFORM","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10037, 'plg_cck_field_jform_menuitem', 'plugin', 'jform_menuitem', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_jform_menuitem","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_JFORM","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `joom_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(10038, 'plg_cck_field_jform_rules', 'plugin', 'jform_rules', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_jform_rules","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_JFORM","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10039, 'plg_cck_field_jform_tag', 'plugin', 'jform_tag', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_jform_tag","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_JFORM","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10040, 'plg_cck_field_jform_templatestyle', 'plugin', 'jform_templatestyle', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_jform_templatestyle","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_JFORM","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10041, 'plg_cck_field_jform_timezone', 'plugin', 'jform_timezone', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_jform_timezone","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_JFORM","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10042, 'plg_cck_field_jform_user', 'plugin', 'jform_user', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_jform_user","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_JFORM","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10043, 'plg_cck_field_jform_usergroups', 'plugin', 'jform_usergroups', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_jform_usergroups","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_JFORM","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10044, 'plg_cck_field_joomla_article', 'plugin', 'joomla_article', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_joomla_article","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_JOOMLA","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10045, 'plg_cck_field_joomla_module', 'plugin', 'joomla_module', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_joomla_module","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_JOOMLA","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10046, 'plg_cck_field_link', 'plugin', 'link', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_link","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_CONTENT","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10047, 'plg_cck_field_password', 'plugin', 'password', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_password","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_FORM","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10048, 'plg_cck_field_radio', 'plugin', 'radio', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_radio","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_FORM","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10049, 'plg_cck_field_select_dynamic', 'plugin', 'select_dynamic', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_select_dynamic","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_SELECT","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10050, 'plg_cck_field_select_multiple', 'plugin', 'select_multiple', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_select_multiple","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_SELECT","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10051, 'plg_cck_field_select_numeric', 'plugin', 'select_numeric', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_select_numeric","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_SELECT","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10052, 'plg_cck_field_select_simple', 'plugin', 'select_simple', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_select_simple","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_SELECT","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10053, 'plg_cck_field_storage', 'plugin', 'storage', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_storage","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"CORE","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10054, 'plg_cck_field_tabs', 'plugin', 'tabs', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_tabs","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_HTML","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10055, 'plg_cck_field_text', 'plugin', 'text', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_text","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_FORM","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10056, 'plg_cck_field_textarea', 'plugin', 'textarea', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_textarea","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_TEXTAREA","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10057, 'plg_cck_field_upload_file', 'plugin', 'upload_file', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_upload_file","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_UPLOAD","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10058, 'plg_cck_field_upload_image', 'plugin', 'upload_image', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_upload_image","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"quality_jpeg":"90","quality_png":"3","group":"PLG_CCK_FIELD_GROUP_UPLOAD","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10059, 'plg_cck_field_video_youtube', 'plugin', 'video_youtube', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_video_youtube","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_GROUP_VIDEO","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10060, 'plg_cck_field_wysiwyg_editor', 'plugin', 'wysiwyg_editor', 'cck_field', 0, 1, 1, 0, '{"name":"plg_cck_field_wysiwyg_editor","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"guest_access":"0","group":"PLG_CCK_FIELD_GROUP_TEXTAREA","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10061, 'plg_cck_field_link_content', 'plugin', 'content', 'cck_field_link', 0, 1, 1, 0, '{"name":"plg_cck_field_link_content","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_LINK_GROUP_CONTENT","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10062, 'plg_cck_field_link_content_delete', 'plugin', 'content_delete', 'cck_field_link', 0, 1, 1, 0, '{"name":"plg_cck_field_link_content_delete","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_LINK_GROUP_CONTENT","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10063, 'plg_cck_field_link_cck_form', 'plugin', 'cck_form', 'cck_field_link', 0, 1, 1, 0, '{"name":"plg_cck_field_link_cck_form","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_LINK_GROUP_CCK","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10064, 'plg_cck_field_link_cck_list', 'plugin', 'cck_list', 'cck_field_link', 0, 1, 1, 0, '{"name":"plg_cck_field_link_cck_list","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_LINK_GROUP_CCK","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10065, 'plg_cck_field_live_joomla_user', 'plugin', 'joomla_user', 'cck_field_live', 0, 1, 1, 0, '{"name":"plg_cck_field_live_joomla_user","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_LIVE_GROUP_JOOMLA","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10066, 'plg_cck_field_live_url_variable', 'plugin', 'url_variable', 'cck_field_live', 0, 1, 1, 0, '{"name":"plg_cck_field_live_url_variable","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_LIVE_GROUP_URL","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10067, 'plg_cck_field_restriction_cck_workflow', 'plugin', 'cck_workflow', 'cck_field_restriction', 0, 1, 1, 0, '{"name":"plg_cck_field_restriction_cck_workflow","type":"plugin","creationDate":"January 2012","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"1.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_RESTRICTION_GROUP_NONE","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10068, 'plg_cck_field_typo_bold', 'plugin', 'bold', 'cck_field_typo', 0, 1, 1, 0, '{"name":"plg_cck_field_typo_bold","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_TYPO_GROUP_BASIC","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10069, 'plg_cck_field_typo_clear', 'plugin', 'clear', 'cck_field_typo', 0, 1, 1, 0, '{"name":"plg_cck_field_typo_clear","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_TYPO_GROUP_NONE","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10070, 'plg_cck_field_typo_date', 'plugin', 'date', 'cck_field_typo', 0, 1, 1, 0, '{"name":"plg_cck_field_typo_date","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_TYPO_GROUP_DATE_AND_TIME","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10071, 'plg_cck_field_typo_heading', 'plugin', 'heading', 'cck_field_typo', 0, 1, 1, 0, '{"name":"plg_cck_field_typo_heading","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_TYPO_GROUP_BASIC","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10072, 'plg_cck_field_typo_html', 'plugin', 'html', 'cck_field_typo', 0, 1, 1, 0, '{"name":"plg_cck_field_typo_html","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_TYPO_GROUP_NONE","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10073, 'plg_cck_field_typo_image', 'plugin', 'image', 'cck_field_typo', 0, 1, 1, 0, '{"name":"plg_cck_field_typo_image","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_TYPO_GROUP_IMAGE","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10074, 'plg_cck_field_typo_italic', 'plugin', 'italic', 'cck_field_typo', 0, 1, 1, 0, '{"name":"plg_cck_field_typo_italic","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_TYPO_GROUP_BASIC","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10075, 'plg_cck_field_typo_underline', 'plugin', 'underline', 'cck_field_typo', 0, 1, 1, 0, '{"name":"plg_cck_field_typo_underline","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_FIELD_TYPO_GROUP_BASIC","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10076, 'plg_cck_storage_custom', 'plugin', 'custom', 'cck_storage', 0, 1, 1, 0, '{"name":"plg_cck_storage_custom","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_STORAGE_GROUP_CONTENT","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10077, 'plg_cck_storage_json', 'plugin', 'json', 'cck_storage', 0, 1, 1, 0, '{"name":"plg_cck_storage_json","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_STORAGE_GROUP_CONTENT_ADVANCED","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10078, 'plg_cck_storage_standard', 'plugin', 'standard', 'cck_storage', 0, 1, 1, 0, '{"name":"plg_cck_storage_standard","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_STORAGE_GROUP_CONTENT","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10079, 'plg_cck_storage_location_free', 'plugin', 'free', 'cck_storage_location', 0, 1, 1, 0, '{"name":"plg_cck_storage_location_free","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"group":"PLG_CCK_STORAGE_LOCATION_GROUP_NONE","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10080, 'plg_cck_storage_location_joomla_article', 'plugin', 'joomla_article', 'cck_storage_location', 0, 1, 1, 0, '{"name":"plg_cck_storage_location_joomla_article","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"base_default-access":"1","base_default-created_by":"0","base_default-catid":"2","base_default-state":"1","auto_readmore":"1","ordering":"0","item_tag_title":"h2","item_class_title":"","item_separator":"1","item_params":"0","group":"PLG_CCK_STORAGE_LOCATION_GROUP_JOOMLA","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10081, 'plg_cck_storage_location_joomla_category', 'plugin', 'joomla_category', 'cck_storage_location', 0, 1, 1, 0, '{"name":"plg_cck_storage_location_joomla_category","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"base_default-access":"1","base_default-created_user_id":"0","base_default-published":"1","item_tag_title":"h2","item_class_title":"","item_separator":"1","group":"PLG_CCK_STORAGE_LOCATION_GROUP_JOOMLA","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10082, 'plg_cck_storage_location_joomla_user', 'plugin', 'joomla_user', 'cck_storage_location', 0, 1, 1, 0, '{"name":"plg_cck_storage_location_joomla_user","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"auto_email":"1","bridge":"0","bridge_default-access":"2","bridge_default-catid":"8","bridge_default-state":"1","bridge_default_title_mode":"0","bridge_default_title":"#user_name#","item_tag_title":"h2","item_class_title":"","item_separator":"1","group":"PLG_CCK_STORAGE_LOCATION_GROUP_JOOMLA","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10083, 'plg_cck_storage_location_joomla_user_group', 'plugin', 'joomla_user_group', 'cck_storage_location', 0, 1, 1, 0, '{"name":"plg_cck_storage_location_joomla_user_group","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"base_default-parent_id":"1","bridge":"0","bridge_default-access":"2","bridge_default-created_by":"0","bridge_default-catid":"9","bridge_default-state":"1","bridge_default_title_mode":"0","bridge_default_title":"#user_group_title#","item_tag_title":"h2","item_class_title":"","item_separator":"1","group":"PLG_CCK_STORAGE_LOCATION_GROUP_JOOMLA","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10084, 'plg_cck_field_validation_ajax_availability', 'plugin', 'ajax_availability', 'cck_field_validation', 0, 1, 1, 0, '{"name":"plg_cck_field_validation_ajax_availability","type":"plugin","creationDate":"January 2012","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"alert":"PLG_CCK_FIELD_VALIDATION_AJAX_AVAILABILITY_ALERT","alert2":"PLG_CCK_FIELD_VALIDATION_AJAX_AVAILABILITY_ALERT2","alert3":"PLG_CCK_FIELD_VALIDATION_AJAX_AVAILABILITY_ALERT3","group":"PLG_CCK_FIELD_VALIDATION_GROUP_AJAX","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10085, 'plg_cck_field_validation_confirm', 'plugin', 'confirm', 'cck_field_validation', 0, 1, 1, 0, '{"name":"plg_cck_field_validation_confirm","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"alert":"PLG_CCK_FIELD_VALIDATION_CONFIRM_ALERT","group":"PLG_CCK_FIELD_VALIDATION_GROUP_UNCATEGORIZED","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10086, 'plg_cck_field_validation_email', 'plugin', 'email', 'cck_field_validation', 0, 1, 1, 0, '{"name":"plg_cck_field_validation_email","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"alert":"PLG_CCK_FIELD_VALIDATION_EMAIL_ALERT","group":"PLG_CCK_FIELD_VALIDATION_GROUP_CONTACT","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10087, 'plg_cck_field_validation_letter_number_only', 'plugin', 'letter_number_only', 'cck_field_validation', 0, 1, 1, 0, '{"name":"plg_cck_field_validation_letter_number_only","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"alert":"PLG_CCK_FIELD_VALIDATION_LETTER_NUMBER_ONLY_ALERT","group":"PLG_CCK_FIELD_VALIDATION_GROUP_ALPHANUMERIC","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10088, 'plg_cck_field_validation_required', 'plugin', 'required', 'cck_field_validation', 0, 1, 1, 0, '{"name":"plg_cck_field_validation_required","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"alert":"PLG_CCK_FIELD_VALIDATION_REQUIRED_ALERT","alert2":"PLG_CCK_FIELD_VALIDATION_REQUIRED_ALERT2","alert3":"PLG_CCK_FIELD_VALIDATION_REQUIRED_ALERT3","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10089, 'plg_cck_field_validation_url', 'plugin', 'url', 'cck_field_validation', 0, 1, 1, 0, '{"name":"plg_cck_field_validation_url","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{"alert":"PLG_CCK_FIELD_VALIDATION_URL_ALERT","group":"PLG_CCK_FIELD_VALIDATION_GROUP_INTERNET","export":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10090, 'plg_search_cck', 'plugin', 'cck', 'search', 0, 1, 1, 0, '{"name":"plg_search_cck","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10091, 'plg_user_cck', 'plugin', 'cck', 'user', 0, 1, 1, 0, '{"name":"plg_user_cck","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10092, 'SEBLOD', 'library', 'cck', '', 0, 1, 1, 0, '{"name":"SEBLOD","type":"library","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x Library - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10093, 'plg_content_cck', 'plugin', 'cck', 'content', 0, 1, 1, 0, '{"name":"plg_content_cck","type":"plugin","creationDate":"January 2011","author":"Octopoos","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"contact@seblod.com","authorUrl":"http:\\/\\/www.seblod.com","version":"3.0.0","description":"SEBLOD 3.x - www.seblod.com \\/\\/ by Octopoos - www.octopoos.com","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10094, 'cck', 'package', 'pkg_cck', '', 0, 1, 1, 0, '{"name":"pkg_cck","type":"package","creationDate":"January 2011","author":"Unknown","copyright":"Copyright (C) 2013 SEBLOD. All Rights Reserved.","authorEmail":"","authorUrl":"","version":"3.3.7","description":"","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_finder_filters`
--

CREATE TABLE IF NOT EXISTS `joom_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_finder_links`
--

CREATE TABLE IF NOT EXISTS `joom_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `joom_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `joom_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `joom_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `joom_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `joom_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `joom_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `joom_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `joom_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `joom_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `joom_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `joom_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `joom_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `joom_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `joom_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `joom_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `joom_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `joom_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `joom_finder_taxonomy`
--

INSERT INTO `joom_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `joom_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_finder_terms`
--

CREATE TABLE IF NOT EXISTS `joom_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `joom_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joom_finder_terms_common`
--

INSERT INTO `joom_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `joom_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `joom_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_finder_types`
--

CREATE TABLE IF NOT EXISTS `joom_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_languages`
--

CREATE TABLE IF NOT EXISTS `joom_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Daten für Tabelle `joom_languages`
--

INSERT INTO `joom_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1),
(2, 'de-DE', 'German (DE-CH-AT)', 'Deutsch', 'de', 'de', '', '', '', '', 1, 0, 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_menu`
--

CREATE TABLE IF NOT EXISTS `joom_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=106 ;

--
-- Daten für Tabelle `joom_menu`
--

INSERT INTO `joom_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 57, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 29, 30, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 31, 32, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 33, 38, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 34, 35, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 36, 37, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 39, 40, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 41, 42, 0, '*', 1),
(23, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 43, 44, 0, '', 1),
(24, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 45, 46, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 47, 48, 1, '*', 0),
(102, 'main', 'SEBLOD', 'SEBLOD 3.x', '', 'SEBLOD 3.x', 'index.php?option=com_cck', 'component', 0, 1, 1, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_cck/assets/images/16/icon-16-seblod.png', 0, '', 49, 50, 0, '', 1),
(103, 'mainmenu', 'Mister Edd', 'mister-edd', '', 'mister-edd', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 51, 52, 0, '*', 0),
(104, 'mainmenu', 'Häuser', 'test2-beitrag-mit-bild', '', 'test2-beitrag-mit-bild', 'index.php?option=com_cck&view=list&search=ferienhaussuche&task=search', 'component', 1, 1, 1, 10003, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_list_title":"","tag_list_title":"h2","class_list_title":"","show_list_desc":"","list_desc":"","show_form":"","auto_redirect":"","ordering":"","order_by":"","show_items_number":"","show_items_number_label":"Results","class_items_number":"total","show_pages_number":"","show_pagination":"","class_pagination":"pagination","urlvars":"","live":"","variation":"","raw_rendering":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 53, 54, 0, '*', 0),
(105, 'mainmenu', 'Haus am Meer', 'haus-am-meer', '', 'haus-am-meer', 'index.php?option=com_content&view=article&id=4', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 55, 56, 0, '*', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_menu_types`
--

CREATE TABLE IF NOT EXISTS `joom_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `joom_menu_types`
--

INSERT INTO `joom_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_messages`
--

CREATE TABLE IF NOT EXISTS `joom_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `joom_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_modules`
--

CREATE TABLE IF NOT EXISTS `joom_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=94 ;

--
-- Daten für Tabelle `joom_modules`
--

INSERT INTO `joom_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 55, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"0","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 56, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 57, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 58, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 59, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 60, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 61, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 62, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 63, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 64, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 65, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 66, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 67, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 68, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 69, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 55, 'Admin Menu - SEBLOD', '', '', 2, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_cck_menu', 3, 1, '', 1, '*'),
(88, 56, 'Quick Add - SEBLOD', '', '', 0, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_cck_quickadd', 3, 1, '', 1, '*'),
(89, 57, 'Quick Icons - SEBLOD', '', '', 2, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_cck_quickicon', 3, 1, '', 1, '*'),
(90, 58, 'Breadcrumbs - SEBLOD', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_cck_breadcrumbs', 1, 1, '', 0, '*'),
(91, 59, 'Form - SEBLOD', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_cck_form', 1, 1, '', 0, '*'),
(92, 60, 'List - SEBLOD', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_cck_list', 1, 1, '', 0, '*'),
(93, 61, 'Search - SEBLOD', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_cck_search', 1, 1, '', 0, '*');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_modules_menu`
--

CREATE TABLE IF NOT EXISTS `joom_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joom_modules_menu`
--

INSERT INTO `joom_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `joom_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_overrider`
--

CREATE TABLE IF NOT EXISTS `joom_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `joom_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Daten für Tabelle `joom_postinstall_messages`
--

INSERT INTO `joom_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_MSG_EACCELERATOR_TITLE', 'COM_CPANEL_MSG_EACCELERATOR_BODY', 'COM_CPANEL_MSG_EACCELERATOR_BUTTON', 'com_cpanel', 1, 'action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_condition', '3.2.0', 1),
(3, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(4, 700, 'COM_CPANEL_MSG_PHPVERSION_TITLE', 'COM_CPANEL_MSG_PHPVERSION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/phpversion.php', 'admin_postinstall_phpversion_condition', '3.2.2', 1),
(5, 10003, 'SEBLOD 3.3.7', 'LIB_CCK_POSTINSTALL_WELCOME_DESCRIPTION', '', 'lib_cck', 1, 'message', '', '', NULL, NULL, '3.3.7', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_redirect_links`
--

CREATE TABLE IF NOT EXISTS `joom_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_schemas`
--

CREATE TABLE IF NOT EXISTS `joom_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joom_schemas`
--

INSERT INTO `joom_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.3.0-2014-04-02');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_session`
--

CREATE TABLE IF NOT EXISTS `joom_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joom_session`
--

INSERT INTO `joom_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('6923801a0a31397ec81b38357b8308d6', 1, 0, '1411384500', '__default|a:9:{s:15:"session.counter";i:232;s:19:"session.timer.start";i:1411381584;s:18:"session.timer.last";i:1411384500;s:17:"session.timer.now";i:1411384500;s:22:"session.client.browser";s:116:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/600.1.17 (KHTML, like Gecko) Version/7.1 Safari/537.85.10";s:8:"registry";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":6:{s:11:"application";O:8:"stdClass":1:{s:4:"lang";s:0:"";}s:7:"com_cck";O:8:"stdClass":2:{s:4:"edit";O:8:"stdClass":4:{s:5:"field";O:8:"stdClass":3:{s:4:"data";N;s:9:"ajax_type";N;s:2:"id";a:4:{i:0;i:472;i:1;i:300;i:2;i:5006;i:3;i:5005;}}s:4:"type";O:8:"stdClass":3:{s:2:"id";a:0:{}s:4:"data";N;s:6:"client";N;}s:3:"box";O:8:"stdClass":1:{s:4:"data";N;}s:6:"search";O:8:"stdClass":3:{s:4:"data";N;s:2:"id";a:0:{}s:6:"client";N;}}s:3:"add";O:8:"stdClass":3:{s:5:"field";O:8:"stdClass":1:{s:10:"ajax_state";N;}s:3:"box";O:8:"stdClass":5:{s:3:"alt";i:0;s:10:"validation";i:0;s:4:"file";s:46:"plugins/cck_field/wysiwyg_editor/tmpl/form.php";s:8:"function";s:0:"";s:2:"bx";O:8:"stdClass":5:{s:2:"id";s:18:"objektbeschreibung";s:5:"title";s:0:"";s:4:"name";s:18:"objektbeschreibung";s:4:"type";s:7:"tinymce";s:6:"params";s:22:"100%||280||com_content";}}s:6:"search";O:8:"stdClass":6:{s:12:"content_type";s:20:"ferienhaus_datenbank";s:10:"tpl_search";s:7:"seb_one";s:10:"tpl_filter";s:7:"seb_one";s:8:"tpl_list";s:0:"";s:8:"tpl_item";s:7:"seb_one";s:4:"skip";s:0:"";}}}s:13:"com_installer";O:8:"stdClass":2:{s:7:"message";s:0:"";s:17:"extension_message";s:0:"";}s:14:"com_categories";O:8:"stdClass":2:{s:4:"edit";O:8:"stdClass":1:{s:8:"category";O:8:"stdClass":1:{s:4:"data";N;}}s:10:"categories";O:8:"stdClass":1:{s:6:"filter";O:8:"stdClass":1:{s:9:"extension";s:11:"com_content";}}}s:9:"com_menus";O:8:"stdClass":2:{s:5:"items";O:8:"stdClass":3:{s:8:"menutype";s:8:"mainmenu";s:10:"limitstart";i:0;s:4:"list";a:4:{s:9:"direction";s:3:"asc";s:5:"limit";s:2:"20";s:8:"ordering";s:5:"a.lft";s:5:"start";d:0;}}s:4:"edit";O:8:"stdClass":1:{s:4:"item";O:8:"stdClass":4:{s:4:"data";N;s:4:"type";N;s:4:"link";N;s:2:"id";a:0:{}}}}s:4:"item";O:8:"stdClass":1:{s:6:"filter";O:8:"stdClass":1:{s:8:"menutype";s:8:"mainmenu";}}}}s:4:"user";O:5:"JUser":30:{s:9:"\\0\\0\\0isRoot";b:1;s:2:"id";s:3:"129";s:4:"name";s:10:"Super User";s:8:"username";s:10:"olafzieger";s:5:"email";s:22:"zieger@runze-casper.de";s:8:"password";s:60:"$2y$10$1pSA6pZc3d0ateCBWHluO.4i7h3uu2llJx45goT..bxqKHy67X2iu";s:14:"password_clear";s:0:"";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2014-09-16 08:01:32";s:13:"lastvisitDate";s:19:"2014-09-22 08:33:21";s:10:"activation";s:1:"0";s:6:"params";s:0:"";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:12:"requireReset";s:1:"0";s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\\0\\0\\0_authLevels";a:5:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:6;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;s:6:"otpKey";s:0:"";s:4:"otep";s:0:"";s:10:"session_id";N;s:12:"where_clause";s:11:"user_id=129";s:2:"ip";s:25:"fe80::12dd:b1ff:fec0:53c3";}s:13:"session.token";s:32:"83ce92761225ea751f3c4aa059b3baa4";s:27:"cck_hash_live_cat_extension";s:32:"9dec03b4cd8a38cca04fe0a2250b55e3";}', 129, 'olafzieger'),
('ebdb22aa7b2abaf6dc810c77fb02edd4', 0, 1, '1411384511', '__default|a:9:{s:15:"session.counter";i:26;s:19:"session.timer.start";i:1411382958;s:18:"session.timer.last";i:1411384504;s:17:"session.timer.now";i:1411384511;s:22:"session.client.browser";s:116:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/600.1.17 (KHTML, like Gecko) Version/7.1 Safari/537.85.10";s:8:"registry";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":29:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:12:"requireReset";N;s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;s:10:"session_id";s:32:"ebdb22aa7b2abaf6dc810c77fb02edd4";s:12:"where_clause";s:45:"session_id="ebdb22aa7b2abaf6dc810c77fb02edd4"";s:2:"ip";s:25:"fe80::12dd:b1ff:fec0:53c3";s:3:"gid";i:25;}s:13:"session.token";s:32:"d726914998e366f0c606e400a7eddf79";s:16:"com_mailto.links";a:1:{s:40:"3985354f4873aeaaa1a8d56f1e95e316259bac8e";O:8:"stdClass":2:{s:4:"link";s:69:"http://olaf-ziegers-mac-mini.local/joomla3.x-seblod-test/haus-am-meer";s:6:"expiry";i:1411384338;}}}', 0, '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_tags`
--

CREATE TABLE IF NOT EXISTS `joom_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Daten für Tabelle `joom_tags`
--

INSERT INTO `joom_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 3, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 0, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 1, 2, 1, 'ferienhaeuser', 'Ferienhäuser', 'ferienhaeuser', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"tag_layout":"","tag_link_class":"label label-info","image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '', '', '{"author":"","robots":""}', 129, '2014-09-22 08:54:20', '', 129, '2014-09-22 08:54:44', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_template_styles`
--

CREATE TABLE IF NOT EXISTS `joom_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Daten für Tabelle `joom_template_styles`
--

INSERT INTO `joom_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '1', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 'seb_one', 0, '0', 'seb_one - Standard', '{"field_label":"1","field_description":"0","variation_default":"seb_css3","position_force_height":"1","position_margin":"8","position_header":"0","position_header_variation":"","position_left":"0","position_left_variation":"","position_top":"1","position_top_variation":"","position_sidebody_a":"0","position_sidebody_b":"0","position_bottom":"1","position_bottom_variation":"","position_right":"400","position_right_variation":"","position_footer":"0","position_footer_variation":"","debug":"0"}'),
(10, 'seb_blog', 0, '0', 'seb_blog - Standard', '{"top_items":"1","top_display":"renderItem","top_display_field_name":"","top_columns":"1","top_column_width":"0","top_column_width_custom":"50,50","top_item_order":"0","top_item_height":"1","middle_items":"4","middle_display":"renderItem","middle_display_field_name":"","middle_columns":"2","middle_column_width":"0","middle_column_width_custom":"50,50","middle_item_order":"0","middle_item_height":"1","bottom_items":"","bottom_display":"renderItem","bottom_display_field_name":"","bottom_columns":"3","bottom_column_width":"0","bottom_column_width_custom":"33,34,33","bottom_item_order":"0","bottom_item_height":"1","cck_client_item":"1","debug":"0","item_margin":"8"}'),
(11, 'seb_table', 0, '0', 'seb_table - Standard', '{"cck_client_item":"0","class_table":"category zebra table","class_table_tr_even":"cat-list-row%i","table_layout":"","class_table_tr_odd":"cat-list-row%i"}'),
(12, 'seb_one', 0, '0', 'seb_one - pferdedatenblatt (admin)', '{"rendering_css_class":"","field_label":"1","field_description":"0","variation_default":"seb_css3","position_force_height":"1","position_margin":"8","position_header":"0","position_header_variation":"","position_left":"0","position_left_variation":"","position_top":"1","position_top_variation":"","position_sidebody_a":"0","position_sidebody_b":"0","position_bottom":"1","position_bottom_variation":"","position_right":"400","position_right_variation":"","position_footer":"0","position_footer_variation":"","debug":"0"}'),
(13, 'seb_one', 0, '0', 'seb_one - pferdedatenblatt (site)', '{"rendering_css_class":"","field_label":"1","field_description":"0","variation_default":"seb_css3","position_force_height":"1","position_margin":"8","position_header":"0","position_header_variation":"","position_left":"0","position_left_variation":"","position_top":"1","position_top_variation":"","position_sidebody_a":"0","position_sidebody_b":"0","position_bottom":"1","position_bottom_variation":"","position_right":"400","position_right_variation":"","position_footer":"0","position_footer_variation":"","debug":"0"}'),
(14, 'seb_one', 0, '0', 'seb_one - pferdedatenblatt (intro)', '{"rendering_css_class":"","field_label":"1","field_description":"0","variation_default":"seb_css3","position_force_height":"1","position_margin":"8","position_header":"0","position_header_variation":"","position_left":"0","position_left_variation":"","position_top":"1","position_top_variation":"","position_sidebody_a":"0","position_sidebody_b":"0","position_bottom":"1","position_bottom_variation":"","position_right":"400","position_right_variation":"","position_footer":"0","position_footer_variation":"","debug":"0"}'),
(15, 'seb_one', 0, '0', 'seb_one - pferdedatenblatt (content)', '{"rendering_css_class":"","field_label":"1","field_description":"0","variation_default":"seb_css3","position_force_height":"1","position_margin":"8","position_header":"0","position_header_variation":"","position_left":"0","position_left_variation":"","position_top":"1","position_top_variation":"","position_sidebody_a":"0","position_sidebody_b":"0","position_bottom":"1","position_bottom_variation":"","position_right":"400","position_right_variation":"","position_footer":"0","position_footer_variation":"","debug":"0"}'),
(16, 'seb_one', 0, '0', 'seb_one - ferienhaus_datenbank (admin)', '{"rendering_css_class":"","field_label":"1","field_description":"0","variation_default":"seb_css3","position_force_height":"1","position_margin":"8","position_header":"0","position_header_variation":"","position_left":"0","position_left_variation":"","position_top":"1","position_top_variation":"","position_sidebody_a":"0","position_sidebody_b":"0","position_bottom":"1","position_bottom_variation":"","position_right":"400","position_right_variation":"","position_footer":"0","position_footer_variation":"","debug":"0"}'),
(17, 'seb_one', 0, '0', 'seb_one - ferienhaus_datenbank (content)', '{"rendering_css_class":"","field_label":"1","field_description":"0","variation_default":"seb_css3","position_force_height":"1","position_margin":"8","position_header":"0","position_header_variation":"","position_left":"300","position_left_variation":"","position_top":"1","position_top_variation":"","position_sidebody_a":"0","position_sidebody_b":"0","position_bottom":"1","position_bottom_variation":"","position_right":"400","position_right_variation":"","position_footer":"0","position_footer_variation":"","debug":"0"}'),
(20, 'seb_one', 0, '0', 'seb_one -  (search)', '{"rendering_css_class":"","field_label":"1","field_description":"0","variation_default":"seb_css3","position_force_height":"1","position_margin":"8","position_header":"0","position_header_variation":"","position_left":"0","position_left_variation":"","position_top":"1","position_top_variation":"","position_sidebody_a":"0","position_sidebody_b":"0","position_bottom":"1","position_bottom_variation":"","position_right":"400","position_right_variation":"","position_footer":"0","position_footer_variation":"","debug":"0"}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_ucm_base`
--

CREATE TABLE IF NOT EXISTS `joom_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joom_ucm_base`
--

INSERT INTO `joom_ucm_base` (`ucm_id`, `ucm_item_id`, `ucm_type_id`, `ucm_language_id`) VALUES
(1, 3, 1, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_ucm_content`
--

CREATE TABLE IF NOT EXISTS `joom_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields' AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `joom_ucm_content`
--

INSERT INTO `joom_ucm_content` (`core_content_id`, `core_type_alias`, `core_title`, `core_alias`, `core_body`, `core_state`, `core_checked_out_time`, `core_checked_out_user_id`, `core_access`, `core_params`, `core_featured`, `core_metadata`, `core_created_user_id`, `core_created_by_alias`, `core_created_time`, `core_modified_user_id`, `core_modified_time`, `core_language`, `core_publish_up`, `core_publish_down`, `core_content_item_id`, `asset_id`, `core_images`, `core_urls`, `core_hits`, `core_version`, `core_ordering`, `core_metakey`, `core_metadesc`, `core_catid`, `core_xreference`, `core_type_id`) VALUES
(1, 'com_content.article', 'Meine Hütte', 'meine-huette', '::cck::3::/cck::', -2, '', 0, 1, '', 0, '', 129, '', '2014-09-22 09:54:32', 129, '2014-09-22 10:05:13', '*', '2014-09-22 09:54:32', '0000-00-00 00:00:00', 3, 109, '', '', 0, 6, 0, '', '', 2, '', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_ucm_history`
--

CREATE TABLE IF NOT EXISTS `joom_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Daten für Tabelle `joom_ucm_history`
--

INSERT INTO `joom_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 8, 6, '', '2014-09-17 12:59:31', 129, 453, 'd7d9f1e117cac60b4bb6605673374187e4bde7ec', '{"id":8,"asset_id":62,"parent_id":"1","lft":"13","rgt":14,"level":1,"path":"users","extension":"com_content","title":"Users","alias":"users","note":null,"description":null,"published":"1","checked_out":null,"checked_out_time":null,"access":"2","params":null,"metadesc":null,"metakey":null,"metadata":null,"created_user_id":"129","created_time":"2014-09-17 12:59:31","modified_user_id":null,"modified_time":null,"hits":null,"language":"*","version":null}', 0),
(2, 9, 6, '', '2014-09-17 12:59:31', 129, 471, 'a6824e4b24638f7b7dfcf8cfbc2413c6f92d6c75', '{"id":9,"asset_id":63,"parent_id":"1","lft":"15","rgt":16,"level":1,"path":"user-groups","extension":"com_content","title":"User Groups","alias":"user-groups","note":null,"description":null,"published":"1","checked_out":null,"checked_out_time":null,"access":"2","params":null,"metadesc":null,"metakey":null,"metadata":null,"created_user_id":"129","created_time":"2014-09-17 12:59:31","modified_user_id":null,"modified_time":null,"hits":null,"language":"*","version":null}', 0),
(3, 1, 1, '', '2014-09-19 14:46:19', 129, 1451, '5c1f051a10feeb17b49bfe4e6682ce0e58153b38', '{"id":1,"asset_id":103,"title":"<br \\/>::pferdename::Mister Ed::\\/pferdename::","alias":"mister-ed","introtext":"::cck::1::\\/cck::<br \\/>::fulltext::<p>Lorem ipsum ad qui amet dolore, vitae cetero quaerendum mel ea. Facilis fastidii duo no. Viris partiendo ius no, alia animal nam at. Feugait imperdiet ius an, no quis facer lucilius vis. Aliquam saperet contentiones ex pro, id idque offendit ius. Fugit suavitate ad eam, ut essent debitis cum. Cu duo iudico instructior.<\\/p>\\r\\n<p>Sea te choro perfecto, per eu meis nonumy percipit. Ut mea sint constituam, cu pro impedit constituam. Et diam wisi tollit mel, te has atqui veritus. Falli volumus ullamcorper id vis, fugit debet ei pri. Mea esse saperet oporteat cu, sumo interesset an cum. Facer expetenda ius te, sint mundi aperiri no est, mollis salutandi quo ne. No dicta errem sed. Mea ei detraxit patrioque, sumo eirmod ea vix.\\u00a0<\\/p>::\\/fulltext::","fulltext":"","state":"1","catid":"2","created":"2014-09-19 14:46:19","created_by":"129","created_by_alias":null,"modified":null,"modified_by":0,"checked_out":null,"checked_out_time":null,"publish_up":"2014-09-19 14:46:19","publish_down":null,"images":null,"urls":null,"attribs":null,"version":1,"ordering":null,"metakey":null,"metadesc":null,"access":"1","hits":null,"metadata":null,"featured":null,"language":"*","xreference":null,"pferdename":null,"oberes-pferdebild":"images\\/hanghuhn.jpg","unteres-pferdebild":"images\\/01generous.jpg"}', 0),
(4, 1, 1, '', '2014-09-19 15:02:41', 129, 1455, '4b77feaeac686973c857c455f657a928efe4c723', '{"id":"1","asset_id":103,"title":"Mister Ed","alias":"mister-ed","introtext":"::cck::1::\\/cck::<br \\/>::fulltext::<p>Lorem ipsum ad qui amet dolore, vitae cetero quaerendum mel ea. Facilis fastidii duo no. Viris partiendo ius no, alia animal nam at. Feugait imperdiet ius an, no quis facer lucilius vis. Aliquam saperet contentiones ex pro, id idque offendit ius. Fugit suavitate ad eam, ut essent debitis cum. Cu duo iudico instructior.<\\/p>\\r\\n<p>Sea te choro perfecto, per eu meis nonumy percipit. Ut mea sint constituam, cu pro impedit constituam. Et diam wisi tollit mel, te has atqui veritus. Falli volumus ullamcorper id vis, fugit debet ei pri. Mea esse saperet oporteat cu, sumo interesset an cum. Facer expetenda ius te, sint mundi aperiri no est, mollis salutandi quo ne. No dicta errem sed. Mea ei detraxit patrioque, sumo eirmod ea vix.\\u00a0<\\/p>::\\/fulltext::","fulltext":"","state":"1","catid":"2","created":"2014-09-19 14:46:19","created_by":"129","created_by_alias":"","modified":"2014-09-19 15:02:41","modified_by":"129","checked_out":"0","checked_out_time":"0000-00-00 00:00:00","publish_up":"2014-09-19 14:46:19","publish_down":"0000-00-00 00:00:00","images":"","urls":"","attribs":"","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"2","metadata":"","featured":"0","language":"*","xreference":"","pferdename":"","oberes-pferdebild":"images\\/1\\/hanghuhn.jpg","unteres-pferdebild":"images\\/1\\/01generous.jpg"}', 0),
(5, 2, 1, '', '2014-09-19 16:19:52', 129, 1726, '9f3f36cc71a75fa7a078f2fd065a8b7454f408ee', '{"id":2,"asset_id":105,"title":"test","alias":"test","introtext":"::cck::2::\\/cck::<br \\/>::introtext::<figure><img src=\\"images\\/joomla_logo_black.jpg\\" alt=\\"\\" \\/><figcaption>Das ist eine Bildunterschrift<\\/figcaption><\\/figure>::\\/introtext::<br \\/>::fulltext::::\\/fulltext::","fulltext":"::cck::2::\\/cck::","state":"1","catid":"2","created":"2014-09-19 16:19:52","created_by":"129","created_by_alias":"","modified":"","modified_by":0,"checked_out":null,"checked_out_time":null,"publish_up":"2014-09-19 16:19:52","publish_down":"","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":\\"\\",\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":\\"\\",\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":\\"\\",\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_intro\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\"}","version":"1","ordering":null,"metakey":"","metadesc":"","access":"1","hits":"","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":"","pferdename":null,"oberes-pferdebild":null,"unteres-pferdebild":null}', 0),
(6, 2, 10, '', '2014-09-22 08:54:20', 129, 799, 'b6f340636f08f445036371636824a3dcc7b1a7dc', '{"id":2,"parent_id":"1","lft":"1","rgt":2,"level":1,"path":null,"title":"Ferienh\\u00e4user","alias":"ferienhaeuser","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"tag_layout\\":\\"\\",\\"tag_link_class\\":\\"label label-info\\",\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"129","created_time":"2014-09-22 08:54:20","created_by_alias":"","modified_user_id":null,"modified_time":null,"images":null,"urls":null,"hits":"0","language":"*","version":null,"publish_up":null,"publish_down":null}', 0),
(7, 3, 1, '', '2014-09-22 09:54:32', 129, 607, '2cdf793146d1a6d43e332bdabfdf96cb4ef66d2f', '{"id":3,"asset_id":108,"title":"Meine H\\u00fctte","alias":"meine-huette","introtext":"::cck::3::\\/cck::","fulltext":"","state":"1","catid":"2","created":"2014-09-22 09:54:32","created_by":"129","created_by_alias":null,"modified":null,"modified_by":0,"checked_out":null,"checked_out_time":null,"publish_up":"2014-09-22 09:54:32","publish_down":null,"images":null,"urls":null,"attribs":null,"version":1,"ordering":null,"metakey":null,"metadesc":null,"access":"1","hits":null,"metadata":null,"featured":null,"language":"*","xreference":null,"pferdename":null,"oberes-pferdebild":null,"unteres-pferdebild":null}', 0),
(8, 10, 6, '', '2014-09-22 10:35:27', 129, 597, 'bc6ff2ed69bd203974014c1c47fa52aeb86f366c', '{"id":10,"asset_id":110,"parent_id":"1","lft":"17","rgt":18,"level":1,"path":"ferienhaeueser","extension":"com_content","title":"Ferienh\\u00e4ueser","alias":"ferienhaeueser","note":"","description":"::cck::4::\\/cck::<br \\/>::description::::\\/description::","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"129","created_time":"2014-09-22 10:35:27","modified_user_id":0,"modified_time":"","hits":"","language":"*","version":null}', 0),
(9, 4, 1, '', '2014-09-22 10:49:06', 129, 604, 'a238512b5f3c97b50c358bb7e3283e8d39bc2d19', '{"id":4,"asset_id":111,"title":"Haus am Meer","alias":"haus-am-meer","introtext":"::cck::5::\\/cck::","fulltext":"","state":"1","catid":"10","created":"2014-09-22 10:49:06","created_by":"129","created_by_alias":null,"modified":null,"modified_by":0,"checked_out":null,"checked_out_time":null,"publish_up":"2014-09-22 10:49:06","publish_down":null,"images":null,"urls":null,"attribs":null,"version":1,"ordering":null,"metakey":null,"metadesc":null,"access":"1","hits":null,"metadata":null,"featured":null,"language":"*","xreference":null,"pferdename":null,"oberes-pferdebild":null,"unteres-pferdebild":null}', 0),
(10, 5, 1, '', '2014-09-22 10:51:12', 129, 592, '4200b5282c55837d29a033837e445b5d0022bf18', '{"id":5,"asset_id":112,"title":"fdsgsg","alias":"fdsgsg","introtext":"::cck::6::\\/cck::","fulltext":"","state":"1","catid":"10","created":"2014-09-22 10:51:12","created_by":"129","created_by_alias":null,"modified":null,"modified_by":0,"checked_out":null,"checked_out_time":null,"publish_up":"2014-09-22 10:51:12","publish_down":null,"images":null,"urls":null,"attribs":null,"version":1,"ordering":null,"metakey":null,"metadesc":null,"access":"1","hits":null,"metadata":null,"featured":null,"language":"*","xreference":null,"pferdename":null,"oberes-pferdebild":null,"unteres-pferdebild":null}', 0),
(11, 6, 1, '', '2014-09-22 10:58:30', 129, 616, '1865418b0d656095c877a962df6075a6bb4fb788', '{"id":6,"asset_id":113,"title":"Haus in den Bergen","alias":"haus-in-den-bergen","introtext":"::cck::7::\\/cck::","fulltext":"","state":"1","catid":"10","created":"2014-09-22 10:58:30","created_by":"129","created_by_alias":null,"modified":null,"modified_by":0,"checked_out":null,"checked_out_time":null,"publish_up":"2014-09-22 10:58:30","publish_down":null,"images":null,"urls":null,"attribs":null,"version":1,"ordering":null,"metakey":null,"metadesc":null,"access":"1","hits":null,"metadata":null,"featured":null,"language":"*","xreference":null,"pferdename":null,"oberes-pferdebild":null,"unteres-pferdebild":null}', 0),
(12, 4, 1, '', '2014-09-22 11:13:08', 129, 637, 'ba3cd8b406296704fc84ac11b2b163018eca00ca', '{"id":"4","asset_id":"111","title":"Haus am Meer","alias":"haus-am-meer","introtext":"::cck::5::\\/cck::","fulltext":"","state":"1","catid":"10","created":"2014-09-22 10:49:06","created_by":"129","created_by_alias":"","modified":"2014-09-22 11:13:08","modified_by":"129","checked_out":"0","checked_out_time":"0000-00-00 00:00:00","publish_up":"2014-09-22 10:49:06","publish_down":"0000-00-00 00:00:00","images":"","urls":"","attribs":"","version":2,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"2","metadata":"","featured":"0","language":"*","xreference":"","pferdename":"","oberes-pferdebild":"","unteres-pferdebild":""}', 0),
(13, 5, 1, '', '2014-09-22 11:15:00', 129, 625, 'b1c58b0912716fd46a811a52be8243f2e68addd7', '{"id":"5","asset_id":"112","title":"fdsgsg","alias":"fdsgsg","introtext":"::cck::6::\\/cck::","fulltext":"","state":"1","catid":"10","created":"2014-09-22 10:51:12","created_by":"129","created_by_alias":"","modified":"2014-09-22 11:15:00","modified_by":"129","checked_out":"0","checked_out_time":"0000-00-00 00:00:00","publish_up":"2014-09-22 10:51:12","publish_down":"0000-00-00 00:00:00","images":"","urls":"","attribs":"","version":3,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"","featured":"0","language":"*","xreference":"","pferdename":"","oberes-pferdebild":"","unteres-pferdebild":""}', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_updates`
--

CREATE TABLE IF NOT EXISTS `joom_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=56 ;

--
-- Daten für Tabelle `joom_updates`
--

INSERT INTO `joom_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 3, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/ms-MY_details.xml', '', ''),
(2, 3, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/ro-RO_details.xml', '', ''),
(3, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', '', ''),
(4, 3, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', '', ''),
(5, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', '', ''),
(6, 3, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'http://update.joomla.org/language/details3/gl-ES_details.xml', '', ''),
(7, 3, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
(8, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
(9, 3, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
(10, 3, 0, 'EnglishAU', '', 'pkg_en-AU', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(11, 3, 0, 'EnglishUS', '', 'pkg_en-US', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(12, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(13, 3, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.2.0.2', '', 'http://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(14, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.3.2.1', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(15, 3, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(16, 3, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(17, 3, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.3.2.1', '', 'http://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(18, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(19, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.1.5.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(20, 3, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(21, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(22, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(23, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.3.1.2', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(24, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(25, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(26, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(27, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.3.2.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(28, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.2.2.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(29, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(30, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(31, 3, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(32, 3, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(33, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(34, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.3.3.3', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(35, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.3.2.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(36, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(37, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.3.2.1', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(38, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.3.2.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(39, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.3.3.15', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(40, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(41, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(42, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(43, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(44, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(45, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(46, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(47, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(48, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.3.0.2', '', 'http://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(49, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.3.2.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(50, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(51, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(52, 3, 0, 'EnglishCA', '', 'pkg_en-CA', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(53, 3, 0, 'FrenchCA', '', 'pkg_fr-CA', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(54, 3, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(55, 3, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/si-LK_details.xml', '', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_update_sites`
--

CREATE TABLE IF NOT EXISTS `joom_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=5 ;

--
-- Daten für Tabelle `joom_update_sites`
--

INSERT INTO `joom_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1411382975, ''),
(2, 'Joomla! Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1411382975, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 1411382975, ''),
(4, 'SEBLOD 3.x Core Updates', 'extension', 'http://update.seblod.com/pkg_cck.xml', 1, 1411382975, '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `joom_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Daten für Tabelle `joom_update_sites_extensions`
--

INSERT INTO `joom_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(3, 604),
(4, 10094);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_usergroups`
--

CREATE TABLE IF NOT EXISTS `joom_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Daten für Tabelle `joom_usergroups`
--

INSERT INTO `joom_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Öffentlich'),
(2, 1, 8, 15, 'Registriert'),
(3, 2, 9, 14, 'Autor'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Benutzer'),
(9, 1, 2, 3, 'Gast');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_users`
--

CREATE TABLE IF NOT EXISTS `joom_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=131 ;

--
-- Daten für Tabelle `joom_users`
--

INSERT INTO `joom_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(129, 'Super User', 'olafzieger', 'zieger@runze-casper.de', '$2y$10$1pSA6pZc3d0ateCBWHluO.4i7h3uu2llJx45goT..bxqKHy67X2iu', 0, 1, '2014-09-16 08:01:32', '2014-09-22 10:26:33', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(130, 'Sara Nasereddin', 'saranasereddin', 'nasereddin@runze-casper.de', '$2y$10$Wq/pkh5OIAn.uOYDRU9E8OCW8XIRRP.XyPgxj9Z4d1NZSUzIR2gnu', 0, 0, '2014-09-17 11:23:12', '2014-09-17 11:23:39', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_user_keys`
--

CREATE TABLE IF NOT EXISTS `joom_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_user_notes`
--

CREATE TABLE IF NOT EXISTS `joom_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_user_profiles`
--

CREATE TABLE IF NOT EXISTS `joom_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `joom_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joom_user_usergroup_map`
--

INSERT INTO `joom_user_usergroup_map` (`user_id`, `group_id`) VALUES
(129, 8),
(130, 2),
(130, 8);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_viewlevels`
--

CREATE TABLE IF NOT EXISTS `joom_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Daten für Tabelle `joom_viewlevels`
--

INSERT INTO `joom_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Öffentlich', 0, '[1]'),
(2, 'Registriert', 1, '[6,2,8]'),
(3, 'Spezial', 2, '[6,3,8]'),
(5, 'Gast', 0, '[9]'),
(6, 'Super Benutzer', 0, '[8]');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joom_weblinks`
--

CREATE TABLE IF NOT EXISTS `joom_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
