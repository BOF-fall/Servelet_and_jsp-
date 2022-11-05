-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : sam. 05 nov. 2022 à 15:11
-- Version du serveur :  10.3.34-MariaDB-0ubuntu0.20.04.1
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `election`
--

-- --------------------------------------------------------

--
-- Structure de la table `communes`
--

CREATE TABLE `communes` (
  `id_com` int(11) NOT NULL,
  `nom_com` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_dep` int(11) NOT NULL,
  `id_region` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `communes`
--

INSERT INTO `communes` (`id_com`, `nom_com`, `id_dep`, `id_region`) VALUES
(1, 'Gorée', 1, 1),
(2, 'Dakar Plateau', 1, 1),
(3, 'Gueule Tapée', 1, 1),
(4, 'Fass', 1, 1),
(5, 'Fann-Point E-Amitié', 1, 1),
(6, 'Médina', 1, 1),
(7, 'Grand-Dakar', 1, 1),
(9, 'Biscuiterie', 1, 1),
(10, 'Dieuppeul-Derklé', 1, 1),
(11, 'Hann-Bel-Air', 1, 1),
(12, 'Sicap-Liberté', 1, 1),
(13, 'HLM', 1, 1),
(14, 'Mermoz-Sacré Coeur', 1, 1),
(15, 'Ouakam', 1, 1),
(16, 'Ngor', 1, 1),
(17, 'Yoff', 1, 1),
(18, 'Grand-Yoff', 1, 1),
(19, 'Patte d\'oie', 1, 1),
(20, 'Parcelles Assainies', 1, 1),
(21, 'Cambérène', 1, 1),
(22, 'Pikine- Est', 4, 1),
(23, 'Pikine-Ouest', 4, 1),
(24, 'Dalifort-Foirail', 4, 1),
(25, 'Djeddha Thiaroye Kao', 4, 1),
(26, 'Guinaw Rail-Nord', 4, 1),
(27, 'Guinaw Rail-Sud', 4, 1),
(28, 'Tivaoune-Diacksao', 4, 1),
(29, 'Diamagueune-Sicap Mbao', 4, 1),
(30, 'Mbao', 4, 1),
(31, 'Pikine-Nord', 4, 1),
(32, 'Sam-Notaire', 3, 1),
(33, 'Golf-Sud', 3, 1),
(35, 'NdiarÃ¨me-Limamoulaye', 3, 1),
(36, 'Wakhinane', 3, 1),
(37, 'MÃ©dina Gounass', 3, 1),
(38, 'Bargny', 2, 1),
(39, 'SÃ©bikotane', 2, 1),
(40, 'Sendou', 2, 1),
(41, 'Rufisque-Est', 2, 1),
(42, 'Rufisque-Nord', 2, 1),
(43, 'Rufisque-Ouest', 2, 1),
(44, 'Bambylor', 2, 1),
(45, 'YÃ¨ne', 2, 1),
(46, 'Tivaouane Peulh-Niaga', 2, 1),
(47, 'Diamniadio', 2, 1),
(48, 'Sangalkam', 2, 1),
(49, 'Keur Massar-Nord', 51, 1),
(50, 'Keur Massar-Sud', 51, 1),
(51, 'Malika', 51, 1),
(52, 'Yeumbeul-Sud', 51, 1),
(53, 'Yeumbeul-Nord', 51, 1),
(54, 'Jaxaay-Parcelles-Niakoul Rap', 51, 1),
(55, 'Khombole', 5, 13),
(56, 'Pout', 5, 13),
(57, 'ThiÃ¨s-Ouest', 5, 13),
(58, 'ThiÃ¨s-Est', 5, 13),
(59, 'ThiÃ¨s-Nord', 5, 13),
(60, 'ThiÃ©naba', 5, 13),
(61, 'Ngoudiane', 5, 13),
(62, 'NdiÃ©yÃ¨ne Sirakh', 5, 13),
(63, 'Touba Toul', 5, 13),
(64, 'Keur Moussa', 5, 13),
(65, 'Diender', 5, 13),
(66, 'FandÃ¨ne', 5, 13),
(67, 'Kayar', 5, 13),
(68, 'Notto', 5, 13),
(69, 'TassÃ¨te', 5, 13),
(70, 'Tivaouane', 7, 13),
(71, 'MÃ©khÃ©', 7, 13),
(72, 'Mboro', 7, 13),
(73, 'MÃ©ouane', 7, 13),
(74, 'Darou Khoudoss', 7, 13),
(75, 'TaÃ¯ba Ndiaye', 7, 13),
(76, 'MÃ©rina Dakhar', 7, 13),
(77, 'Koul', 7, 13),
(78, 'PÃ©kÃ¨sse', 7, 13),
(79, 'NiakhÃ¨ne', 7, 13),
(80, 'MbayÃ¨ne', 7, 13),
(81, 'Thilmakha', 7, 13),
(82, 'Ngandiouf', 7, 13),
(83, 'Notto Gouye Diama', 7, 13),
(84, 'Mont Rolland', 7, 13),
(85, 'Pire Goureye', 7, 13),
(86, 'ChÃ©rif Lo', 7, 13),
(87, 'Pambal', 7, 13),
(88, 'Mbour', 6, 13),
(89, 'Joal Fadiouth', 6, 13),
(90, 'Fissel', 6, 13),
(91, 'Ndiaganiao', 6, 13),
(92, 'Sessene', 6, 13),
(93, 'Sandiara', 6, 13),
(94, 'NguÃ©niÃ¨ne', 6, 1),
(95, 'Thiadiaye', 6, 13),
(96, 'Sindia', 6, 13),
(97, 'Malicounda', 6, 13),
(98, 'Diass', 6, 13),
(99, 'NguÃ©khokh', 6, 13),
(100, 'Saly Portudal', 6, 13),
(101, 'Ngaparou', 6, 13),
(102, 'Somone', 6, 13),
(103, 'Popenguine-Ndayane', 6, 13),
(104, 'Coki', 8, 8),
(105, 'Ndiagne', 8, 8),
(106, 'Guet Ardo', 8, 8),
(107, 'ThiamÃ¨ne Cayor', 8, 8),
(108, 'PÃ©tÃ© Ouarack', 8, 8),
(109, 'Keur Momar Sarr', 8, 8),
(110, 'Nguer Malal', 8, 8),
(111, 'Syer', 8, 8),
(112, 'Gande', 8, 8),
(113, 'MbÃ©diene', 8, 8),
(114, 'NiomrÃ©', 8, 8),
(115, 'NguidilÃ©', 8, 8),
(116, 'KÃ©le Gueye', 8, 8),
(117, 'LÃ©ona', 8, 8),
(118, 'Sakal', 8, 8),
(119, 'Ngueune Sarr', 8, 8),
(120, 'Bandegne Ouolof', 9, 8),
(121, 'Diokoul Diawrigne', 9, 8),
(122, 'Kab Gaye', 9, 8),
(123, 'Ndande', 9, 8),
(124, 'Thieppe', 9, 8),
(125, 'GuÃ©oul', 9, 8),
(126, 'MbackÃ© Cajor', 9, 8),
(127, 'Darou Marnane', 9, 8),
(128, 'Darou Mousty', 9, 8),
(129, 'Mbadiane', 9, 8),
(130, 'Ndoyene', 9, 8),
(131, 'Sam Yabal', 9, 8),
(132, 'Touba MÃ©rina', 9, 8),
(133, 'Ngourane Ouolof', 9, 8),
(134, 'Thiolom Fall', 9, 8),
(135, 'Sagatta Gueth', 9, 8),
(136, 'KanÃ¨ne Ndiob', 9, 8),
(137, 'Loro', 9, 8),
(138, 'LinguÃ¨re', 10, 8),
(139, 'Dahra', 10, 8),
(140, 'BarkÃ©dji', 10, 8),
(141, 'Gassane', 10, 8),
(142, 'Thiargny', 10, 8),
(143, 'Thiel', 10, 8),
(144, 'Boulal', 10, 8),
(145, 'Dealy', 10, 8),
(146, 'ThiamÃ¨ne Pass', 10, 8),
(147, 'Sagatta Djolof', 10, 8),
(148, 'AffÃ© Djiolof', 10, 8),
(149, 'Dodji', 10, 8),
(150, 'Labgar', 10, 8),
(151, 'Ouarkhokh', 10, 8),
(152, 'Kamb', 10, 8),
(153, 'Mboula', 10, 8),
(154, 'TÃ©ssÃ©kÃ©rÃ© Forage', 10, 8),
(155, 'Yang-Yang', 10, 8),
(156, 'Kaolack', 11, 5),
(157, 'Kahone', 11, 5),
(158, 'Keur Baka', 11, 5),
(159, 'LatminguÃ©', 11, 5),
(160, 'ThiarÃ©', 11, 5),
(161, 'Ndoffane', 11, 5),
(162, 'Keur SocÃ©', 11, 5),
(163, 'Ndiaffate', 11, 5),
(164, 'Ndiedieng', 11, 5),
(165, 'Dya', 11, 5),
(166, 'NdiÃ©bel', 11, 5),
(167, 'Thiomby', 11, 5),
(168, 'Gandiaye', 11, 5),
(169, 'Sibassor', 11, 5),
(170, 'GuinguinÃ©o', 12, 5),
(171, 'Khelcom Birane', 12, 5),
(172, 'Mbadakhoune', 12, 5),
(173, 'Ndiago', 12, 5),
(174, 'Ngathie NaoudÃ©', 12, 5),
(175, 'Fass', 12, 5),
(176, 'Fass', 12, 5),
(177, 'Dara Mboss', 12, 5),
(178, 'NguÃ©lou', 12, 5),
(179, 'NguÃ©lou', 12, 5),
(180, 'Ourour', 12, 5),
(181, 'Panal Ouolof', 12, 5),
(182, 'Mboss', 12, 5),
(183, 'Kayemor', 13, 5),
(184, 'MÃ©dina Sabakh', 13, 5),
(185, 'Ngayene', 13, 5),
(186, 'Gainthe Kaye', 13, 5),
(187, 'Dabaly', 13, 5),
(188, 'Darou Salam', 13, 5),
(189, 'Paos Koto', 13, 5),
(190, 'Porokhane', 13, 5),
(191, 'TaÃ¯ba NiassÃ¨ne', 13, 5),
(192, 'Keur Maba Diakhou', 13, 5),
(193, 'Keur Madongo', 13, 5),
(194, 'NdramÃ© Escale', 13, 5),
(195, 'Wack Ngouna', 13, 5),
(196, 'Keur Madiabel', 13, 5),
(197, 'Diourbel', 14, 2),
(198, 'Ndoulo', 14, 2),
(199, 'Ngohe', 14, 2),
(200, 'Pattar', 14, 2),
(201, 'Tocky Gare', 14, 2),
(202, 'TourÃ© MbondÃ©', 14, 2),
(203, 'Ndankh SÃ©ne', 14, 2),
(204, 'Gade Escale', 14, 2),
(205, 'Touba LappÃ©', 14, 2),
(206, 'Keur Ngalgou', 14, 2),
(207, 'Ndindy', 14, 2),
(208, 'TaÃ¯ba Moutoupha', 14, 2),
(209, 'Bambey', 15, 2),
(210, 'Dinguiraye', 15, 2),
(211, 'Baba Garage', 15, 2),
(212, 'Keur Samba Kane', 15, 2),
(213, 'Ngoye', 15, 2),
(214, 'Thiakhar', 15, 2),
(215, 'Ndondol', 15, 2),
(216, 'Ndangalma', 15, 2),
(217, 'Lambaye', 15, 2),
(218, 'RÃ©fane', 15, 2),
(219, 'Gawane', 15, 2),
(220, 'Ngogom', 15, 2),
(221, 'Ngogom', 18, 2),
(222, 'Touba MosquÃ©e', 18, 2),
(223, 'Dalla Ngabou', 18, 2),
(224, 'Missirah', 18, 2),
(225, 'Nghaye', 18, 2),
(226, 'Touba Fall', 18, 2),
(227, 'Darou Salam Typ', 18, 2),
(228, 'Darou Nahim', 18, 2),
(229, 'Kael', 18, 2),
(230, 'Madina', 18, 2),
(231, 'Touba Mboul', 18, 2),
(232, 'TaÃ¯ba ThiÃ¨kÃ¨ne', 18, 2),
(233, 'DendÃ¨ye Gouy Gui', 18, 2),
(234, 'Ndioumane', 18, 2),
(235, 'TaÃ¯f', 18, 2),
(236, 'Sadio', 18, 2),
(237, 'Dioffior', 19, 3),
(238, 'ThiarÃ© Ndialgui', 19, 3),
(239, 'DiaoulÃ©', 19, 3),
(240, 'MbÃ©llacadiao', 19, 3),
(241, 'Ndiop', 19, 3),
(242, 'Diakhao', 19, 3),
(243, 'Djilasse', 19, 3),
(244, 'Djilasse', 19, 3),
(245, 'Loul SessÃ¨ne', 19, 3),
(246, 'Palmarin Facao', 19, 3),
(247, 'Niakhar', 19, 3),
(248, 'NgayokhÃ¨me', 19, 3),
(249, 'Patar', 19, 3),
(250, 'DiarrÃ¨re', 19, 3),
(251, 'Diouroup', 19, 3),
(252, 'Tattaguine', 19, 3),
(253, 'Foundiougne', 20, 3),
(254, 'Sokone', 20, 3),
(255, 'Keur Saloum DianÃ©', 20, 3),
(256, 'Keur Samba Gueye', 20, 3),
(257, 'Toubacouta', 20, 3),
(258, 'Nioro Alassane Tall', 20, 3),
(259, 'Karang Poste', 20, 3),
(260, 'Passy', 20, 3),
(261, 'Soum', 20, 3),
(262, 'Diossong', 20, 3),
(263, 'Djilor', 20, 3),
(264, 'NiassÃ¨ne', 20, 3),
(265, 'Diagane Barka', 20, 3),
(266, 'Diagane Barka', 20, 3),
(267, 'Mbam', 20, 3),
(268, 'Bassoul', 20, 3),
(269, 'Dionewar', 20, 3),
(270, 'Djirnda', 20, 3),
(271, 'Gossas', 21, 3),
(272, 'Colobane', 21, 3),
(273, 'Mbar', 21, 3),
(274, 'Ndiene Lagane', 21, 3),
(275, 'Ouadiour', 21, 3),
(276, 'Patar Lia', 21, 3),
(277, 'Nganda', 22, 4),
(278, 'Diamagadio', 22, 4),
(279, 'Diokoul Belbouck', 22, 4),
(280, 'Kathiotte', 22, 4),
(281, 'MÃ©dinatoul Salam 2', 22, 4),
(282, 'Gniby', 22, 4),
(283, 'Boulel', 22, 4),
(284, 'Kahi', 22, 4),
(285, 'Birkelane', 23, 4),
(286, 'Keur Mboucki', 23, 4),
(287, 'Touba Mbella', 23, 4),
(288, 'Diamal', 23, 4),
(289, 'Mabo', 23, 4),
(290, 'Ndiognick', 23, 4),
(291, 'SÃ©grÃ©-gatta', 23, 4),
(292, 'Mbeuleup', 23, 4),
(293, 'MalÃ¨me-Hodar', 24, 4),
(294, 'Darou Miname II', 24, 4),
(295, 'Khelcom', 24, 4),
(296, 'Ndioum Ngainth', 24, 4),
(297, 'NdiobÃ¨ne Samba Lamo', 24, 4),
(298, 'Sagna', 24, 4),
(299, 'DiankÃ© Souf', 24, 4),
(300, 'Koungheul', 25, 4),
(301, 'Missirah WadÃ¨ne', 25, 4),
(302, 'Maka Yop', 25, 4),
(303, 'Ngainthe PathÃ©', 25, 4),
(304, 'Fass ThiÃ¨kÃ¨ne', 25, 4),
(305, 'Saly Escale', 25, 4),
(306, 'Ida Mouride', 25, 4),
(307, 'Ribot Escale', 25, 4),
(308, 'Lour Escale', 25, 4),
(309, 'Saint-Louis', 26, 10),
(310, 'Mpal', 26, 10),
(311, 'Fass Ngom', 26, 10),
(312, 'NdiÃ©bÃ¨ne Gandiol', 26, 10),
(313, 'Gandon', 26, 10),
(314, 'Dagana', 27, 10),
(315, 'Richard Toll', 27, 10),
(316, 'Ross-BÃ©thio', 27, 10),
(317, 'Rosso-SÃ©nÃ©gal', 27, 10),
(318, 'Ngnith', 27, 10),
(319, 'Diama', 27, 10),
(320, 'Ronkh', 27, 10),
(321, 'Ndombo Sandjiry', 27, 10),
(322, 'Gae', 27, 10),
(323, 'Bokhol', 27, 10),
(324, 'Mbane', 27, 10),
(325, 'Podor', 28, 10),
(326, 'MÃ©ry', 28, 10),
(327, 'Doumga Lao', 28, 10),
(328, 'Madina DiathbÃ©', 28, 10),
(329, 'GollÃ©rÃ©', 28, 10),
(330, 'Mboumba', 28, 10),
(331, 'WalaldÃ©', 28, 10),
(332, 'AÃ©rÃ© Lao', 28, 10),
(333, 'Gamadji SarÃ©', 28, 10),
(334, 'Dodel', 28, 10),
(335, 'GuedÃ© Village', 28, 10),
(336, 'GuÃ©dÃ© Chantier', 28, 10),
(337, 'DÃ©mette', 28, 10),
(338, 'BodÃ© Lao', 28, 10),
(339, 'Fanaye', 28, 10),
(340, 'Ndiayene Peindao', 28, 10),
(341, 'Ndiandane', 28, 10),
(342, 'Mbolo Birane', 28, 10),
(343, 'BokÃ© DialloubÃ©', 28, 10),
(344, 'Galoya Toucouleur', 28, 10),
(345, 'PÃ©tÃ©', 28, 10),
(346, 'Matam', 29, 9),
(347, 'Ourossogui', 29, 9),
(348, 'Thilogne', 29, 9),
(349, 'Nguidjilone', 29, 9),
(350, 'Dabia', 29, 9),
(351, 'Des Agnam Civol', 29, 9),
(352, 'OrÃ©fondÃ©', 29, 9),
(353, 'BokidiawÃ©', 29, 9),
(354, 'Nabadji Civol', 29, 9),
(355, 'Ogo', 29, 9),
(356, 'Kanel', 30, 9),
(357, 'OdobÃ©rÃ©', 30, 9),
(358, 'Wouro Sidy', 30, 9),
(359, 'Ndendory', 30, 9),
(360, 'Sinthiou BamambÃ© Banadji', 30, 9),
(361, 'Hamady HounarÃ©', 30, 9),
(362, 'AourÃ©', 30, 9),
(363, 'Bokiladji', 30, 9),
(364, 'OrkadiÃ©rÃ©', 30, 9),
(365, 'OuaoundÃ©', 30, 9),
(366, 'SemmÃ©', 30, 9),
(367, 'DembancanÃ©', 30, 9),
(368, 'RanÃ©rou', 31, 9),
(369, 'Lougré Thioly', 31, 9),
(370, 'Oudalaye', 31, 9),
(371, 'VÃ©lingara', 31, 9),
(372, 'KÃ©dougou', 32, 6),
(373, 'NinÃ©fÃ©cha', 32, 6),
(374, 'Bandafassi', 32, 6),
(375, 'Tomboroncoto', 32, 6),
(376, 'Dindefelo', 32, 6),
(377, 'Fongolimbi', 32, 6),
(378, 'Dimboli', 32, 6),
(379, 'SalÃ©mata', 33, 6),
(380, 'KÃ©voye', 33, 6),
(381, 'DakatÃ©li', 33, 6),
(382, 'Ethiolo', 33, 6),
(383, 'Oubadji', 33, 6),
(384, 'Dar salam', 33, 6),
(385, 'Saraya', 34, 6),
(386, 'Bembou', 34, 6),
(387, 'MÃ©dina BaffÃ©', 34, 6),
(388, 'Sabodala', 34, 6),
(389, 'Khossanto', 34, 6),
(390, 'Missirah Sirimana', 34, 6),
(391, 'Tambacounda', 35, 12),
(392, 'Niani Toucouleur', 35, 12),
(393, 'Makacolibantang', 35, 12),
(394, 'Ndoga Babacar', 35, 12),
(395, 'Missirah', 35, 12),
(396, 'NÃ©ttÃ©boulou', 35, 12),
(397, 'Dialacoto', 35, 12),
(398, 'Sinthiou MalÃ¨me', 35, 12),
(399, 'Sinthiou MalÃ¨me', 35, 12),
(400, 'Goudiry', 36, 12),
(401, 'Boynguel Bamba', 36, 12),
(402, 'Sinthiou Mamadou Boubou', 36, 12),
(403, 'Koussan', 36, 12),
(404, 'DouguÃ©', 36, 12),
(405, 'DiankÃ© Makha', 36, 12),
(406, 'Boutoucoufara', 36, 12),
(407, 'Bani Israel', 36, 12),
(408, 'Sinthiou Bocar Aly', 36, 12),
(409, 'Koulor', 36, 12),
(410, 'Bala', 36, 12),
(411, 'Koar', 36, 12),
(412, 'Goumbayel', 36, 12),
(413, 'Bakel', 37, 12),
(414, 'BÃ©lÃ©', 37, 12),
(415, 'Sinthiou Fissa', 37, 12),
(416, 'Kidira', 37, 12),
(417, 'Toumboura', 37, 12),
(418, 'Sadatou', 37, 12),
(419, 'Madina FoulbÃ©', 37, 12),
(420, 'Gathiary', 37, 12),
(421, 'Gathiary', 37, 12),
(422, 'Ballou', 37, 12),
(423, 'Gabou', 37, 12),
(424, 'Diawara', 37, 12),
(425, 'Koumpentoum', 38, 12),
(426, 'Ndame', 38, 12),
(427, 'MÃ©rÃ©to', 38, 12),
(428, 'KahÃ¨ne', 38, 12),
(429, 'Bamba ThialÃ¨ne', 38, 12),
(430, 'Payar', 38, 12),
(431, 'Kouthiaba Wolof', 38, 12),
(432, 'Kouthia Gaydi', 38, 12),
(433, 'Pass Coto', 38, 12),
(434, 'Malem Niany', 38, 12),
(435, 'Kolda', 48, 7),
(436, 'DialambÃ©rÃ©', 48, 7),
(437, 'MÃ©dina ChÃ©rif', 48, 7),
(438, 'Mampatim', 48, 7),
(439, 'Coumbacara', 48, 7),
(440, 'Coumbacara', 48, 7),
(441, 'Bagadadji', 48, 7),
(442, 'Dabo', 48, 7),
(443, 'ThiÃ©tty', 48, 7),
(444, 'SarÃ© Bidji', 48, 7),
(445, 'Guiro YÃ©ro Bocar', 48, 7),
(446, 'Dioulacolon', 48, 7),
(447, 'Tankanto Escale', 48, 7),
(448, 'MÃ©dina El hadj', 48, 7),
(449, 'SalykÃ©gnÃ©', 48, 7),
(450, 'SarÃ© Yoba DiÃ©ga', 48, 7),
(451, 'MÃ©dina Yoro Foulah', 49, 7),
(452, 'Badion', 49, 7),
(453, 'Fafacourou', 49, 7),
(454, 'Bourouco', 49, 7),
(455, 'BignarabÃ©', 49, 7),
(456, 'Ndorna', 49, 7),
(457, 'Koulinto', 49, 7),
(458, 'Niaming', 49, 7),
(459, 'Dinguiraye', 49, 7),
(460, 'Pata', 49, 7),
(461, 'KÃ©rÃ©wane', 49, 7),
(462, 'VÃ©lingara', 50, 7),
(463, 'DiaobÃ©-Kabendou', 50, 7),
(464, 'KounkanÃ©', 50, 7),
(465, 'Kandia', 50, 7),
(466, 'SarÃ© Coly SallÃ©', 50, 7),
(467, 'Kandiaye', 50, 7),
(468, 'NÃ©mataba', 50, 7),
(469, 'Pakour', 50, 7),
(470, 'Paroumba', 50, 7),
(471, 'Ouassadou', 50, 7),
(472, 'Bonconto', 50, 7),
(473, 'Linkering', 50, 7),
(474, 'MÃ©dina Gounass', 50, 7),
(475, 'Sinthiang Koundara', 50, 7),
(476, 'SÃ©dhiou', 39, 11),
(477, 'Marssassoum', 39, 11),
(478, 'Djiredji', 39, 11),
(479, 'Bambaly', 39, 11),
(480, 'Oudoucar', 39, 11),
(481, 'Sama Kanta Peulh', 39, 11),
(482, 'Diannah Ba', 39, 11),
(483, 'Koussy', 39, 11),
(484, 'Sakar', 39, 11),
(485, 'DiendÃ©', 39, 11),
(486, 'Diannah Malary', 39, 11),
(487, 'San Samba', 39, 11),
(488, 'BÃ©met Bidjini', 39, 11),
(489, 'Djibabouya', 39, 11),
(490, 'Bounkiling', 23, 11),
(491, 'Ndiamacouta', 40, 11),
(492, 'Boghal', 40, 11),
(493, 'Tankon', 40, 11),
(494, 'Ndiamalathiel', 40, 11),
(495, 'Djinany', 40, 11),
(496, 'Diacounda', 40, 11),
(497, 'Inor', 40, 11),
(498, 'Kandion Mangana', 40, 11),
(499, 'Bona', 40, 11),
(500, 'Diambati', 40, 11),
(501, 'Faoune', 40, 11),
(502, 'DiaroumÃ©', 40, 11),
(503, 'Madina Wandifa', 40, 11),
(504, 'Goudomp', 41, 11),
(505, 'Diattacounda', 41, 11),
(506, 'Samine', 41, 11),
(507, 'Yarang Balante', 41, 11),
(508, 'Mangaroungou Santo', 41, 11),
(509, 'Simbandi Balante', 41, 11),
(510, 'Djibanar', 41, 11),
(511, 'Kaour', 41, 11),
(512, 'Diouboudou', 41, 11),
(513, 'Simbandi Brassou', 41, 11),
(514, 'BaghÃ¨re', 41, 11),
(515, 'Niagh', 41, 11),
(516, 'Tanaff', 41, 11),
(517, 'Karantaba', 41, 11),
(518, 'Kolibantang', 41, 11),
(519, 'Ziguinchor', 42, 14),
(520, 'Niaguis', 42, 14),
(521, 'AdÃ©ane', 42, 14),
(522, 'Boutoupa Camaracounda', 42, 14),
(523, 'Niassia', 42, 14),
(524, 'Enampore', 42, 14),
(525, 'Bignona', 43, 14),
(526, 'Thionck Essyl', 43, 14),
(527, 'Kataba 1', 43, 14),
(528, 'Djinaky', 43, 14),
(529, 'Kafountine', 43, 14),
(530, 'Diouloulou', 43, 14),
(531, 'Tenghori', 43, 14),
(532, 'Niamone', 43, 14),
(533, 'Ouonck', 43, 14),
(534, 'Coubalan', 43, 14),
(535, 'Balinghore', 43, 14),
(536, 'DiÃ©goune', 43, 14),
(537, 'Kartiack', 43, 14),
(538, 'Mangagoulack', 43, 14),
(539, 'Mlomp', 43, 14),
(540, 'Djibidione', 43, 14),
(541, 'Oulampane', 43, 14),
(542, 'Sindian', 43, 14),
(543, 'Sindian', 43, 14),
(544, 'Oussouye', 44, 14),
(545, 'DiembÃ©ring', 44, 14),
(546, 'Santhiaba Manjack', 44, 14),
(547, 'Oukout', 44, 14),
(548, 'Mlomp Oussouye', 44, 14),
(549, 'Colobane', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE `departement` (
  `id_dep` int(11) NOT NULL,
  `nom_dep` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_region` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `departement`
--

INSERT INTO `departement` (`id_dep`, `nom_dep`, `id_region`) VALUES
(1, 'Dakar', 1),
(2, 'Rufisque', 1),
(3, 'Guédiawaye', 1),
(4, 'Pikine', 1),
(5, 'Thies', 13),
(6, 'Mbour', 13),
(7, 'Tivaouane', 13),
(8, 'Louga', 8),
(9, 'Kébémer', 8),
(10, 'Linguère', 8),
(11, 'Kaolack', 5),
(12, 'Guinguinéo', 5),
(13, 'Nioro du Rip', 5),
(14, 'Diourbel', 2),
(15, 'Bambey', 2),
(18, 'Mbacké', 2),
(19, 'Fatick', 3),
(20, 'Foundiougne', 3),
(21, 'Gossas', 3),
(22, 'Kaffrine', 4),
(23, 'Birkilane', 4),
(24, 'Malème-Hodar', 4),
(25, 'Koungheul', 4),
(26, 'Saint-Louis', 10),
(27, 'Dagana', 10),
(28, 'Podor', 10),
(29, 'Matam', 9),
(30, 'Kanel', 9),
(31, 'Ranérou', 9),
(32, 'Kédougou', 6),
(33, 'Salémata', 6),
(34, 'Saraya', 6),
(35, 'Tambacounda', 12),
(36, 'Goudiry', 12),
(37, 'Bakel', 12),
(38, 'Koumpentoum', 12),
(39, 'Sédhiou', 11),
(40, 'Bounkiling', 11),
(41, 'Goudomp', 11),
(42, 'Ziguinchor', 14),
(43, 'Bignona', 14),
(44, 'Oussouye', 14),
(48, 'Kolda', 7),
(49, 'Médina Yoro Foulah', 7),
(50, 'Vélingara', 7),
(51, 'Keur Massar', 1);

-- --------------------------------------------------------

--
-- Structure de la table `electeur`
--

CREATE TABLE `electeur` (
  `id_electeur` int(11) NOT NULL,
  `cni` int(13) NOT NULL,
  `Pass` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_naiss` date NOT NULL,
  `adresse` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_region` int(11) NOT NULL,
  `id_dep` int(11) NOT NULL,
  `id_com` int(11) NOT NULL,
  `id_lieu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `lieux`
--

CREATE TABLE `lieux` (
  `id_lieu` int(11) NOT NULL,
  `nom_lieu` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `id_region` int(11) NOT NULL,
  `id_dep` int(11) NOT NULL,
  `id_com` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `lieux`
--

INSERT INTO `lieux` (`id_lieu`, `nom_lieu`, `id_region`, `id_dep`, `id_com`) VALUES
(1, 'LV-Goree1', 1, 1, 1),
(2, 'LV-Goree2', 1, 1, 1),
(3, 'LV-DKP1', 1, 1, 2),
(4, 'LV-DKP2', 1, 1, 2),
(5, 'LV-DKP3', 1, 1, 2),
(6, 'LV-GTapée1', 1, 1, 3),
(7, 'LV-GTapée2', 1, 1, 3),
(8, 'LV-GTapée3', 1, 1, 3),
(9, 'LV-Fass1', 1, 1, 4),
(10, 'LV-Fass2', 1, 1, 4),
(11, 'LV-Fass3', 1, 1, 4),
(12, 'LV-FPAmité1', 1, 1, 5),
(13, 'LV-FPAmitiÃ©2', 1, 1, 5),
(14, 'LV-Colobane1', 1, 1, 549),
(15, 'LV-Colobane2', 1, 1, 549),
(16, 'LV-MÃ©dina1', 1, 1, 6),
(17, 'LV-MÃ©dina2', 1, 1, 6),
(18, 'LV-MÃ©dina3', 1, 1, 6),
(19, 'LV-GrandDK1', 1, 1, 7),
(20, 'LV-Biscuiterie1', 1, 1, 9),
(21, 'LV-Dieupeul1', 1, 1, 10),
(22, 'LV-Dieupeul2', 1, 1, 10),
(23, 'LV-Hanne1', 1, 1, 11);

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

CREATE TABLE `region` (
  `id_region` int(11) NOT NULL,
  `nom_region` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `region`
--

INSERT INTO `region` (`id_region`, `nom_region`) VALUES
(1, 'Dakar'),
(2, 'Diourbel'),
(3, ' Fatick'),
(4, 'Kaffrine'),
(5, 'Kaolack'),
(6, ' Kédougou'),
(7, 'Kolda'),
(8, 'Louga'),
(9, 'Matam'),
(10, 'Saint-Louis'),
(11, 'Sédhiou'),
(12, 'Tambacounda'),
(13, 'Thiès'),
(14, 'Ziguinchor');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `communes`
--
ALTER TABLE `communes`
  ADD PRIMARY KEY (`id_com`),
  ADD KEY `id_dep` (`id_dep`),
  ADD KEY `id_region` (`id_region`);

--
-- Index pour la table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`id_dep`),
  ADD KEY `id_region` (`id_region`);

--
-- Index pour la table `electeur`
--
ALTER TABLE `electeur`
  ADD PRIMARY KEY (`id_electeur`),
  ADD KEY `id_dep` (`id_region`,`id_dep`),
  ADD KEY `id_dep_2` (`id_dep`),
  ADD KEY `id_com` (`id_com`),
  ADD KEY `id_lieu` (`id_lieu`);

--
-- Index pour la table `lieux`
--
ALTER TABLE `lieux`
  ADD PRIMARY KEY (`id_lieu`),
  ADD KEY `id_region` (`id_region`),
  ADD KEY `id_dep` (`id_dep`),
  ADD KEY `id_com` (`id_com`);

--
-- Index pour la table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id_region`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `communes`
--
ALTER TABLE `communes`
  MODIFY `id_com` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=550;

--
-- AUTO_INCREMENT pour la table `departement`
--
ALTER TABLE `departement`
  MODIFY `id_dep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT pour la table `electeur`
--
ALTER TABLE `electeur`
  MODIFY `id_electeur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `lieux`
--
ALTER TABLE `lieux`
  MODIFY `id_lieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `region`
--
ALTER TABLE `region`
  MODIFY `id_region` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `communes`
--
ALTER TABLE `communes`
  ADD CONSTRAINT `communes_ibfk_1` FOREIGN KEY (`id_region`) REFERENCES `region` (`id_region`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `communes_ibfk_2` FOREIGN KEY (`id_dep`) REFERENCES `departement` (`id_dep`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `departement`
--
ALTER TABLE `departement`
  ADD CONSTRAINT `departement_ibfk_1` FOREIGN KEY (`id_region`) REFERENCES `region` (`id_region`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `lieux`
--
ALTER TABLE `lieux`
  ADD CONSTRAINT `lieux_ibfk_1` FOREIGN KEY (`id_com`) REFERENCES `communes` (`id_com`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lieux_ibfk_2` FOREIGN KEY (`id_region`) REFERENCES `region` (`id_region`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lieux_ibfk_3` FOREIGN KEY (`id_dep`) REFERENCES `departement` (`id_dep`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
