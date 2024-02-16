-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-02-2024 a las 21:27:01
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ruiz_alcalde_gorka_dwes04`
--
CREATE DATABASE `ruiz_alcalde_gorka_dwes04`;
USE `ruiz_alcalde_gorka_dwes04`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `autor_id` int(11) NOT NULL,
  `username_autor` text NOT NULL,
  `email_autor` longtext NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `contrasenia` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`autor_id`, `username_autor`, `email_autor`, `fecha_registro`, `contrasenia`) VALUES
(1, 'Sheenshots', 'sheenshots@gmail.com', '2024-02-07 20:22:27', 'sheenshots123456'),
(2, 'Gorki90', 'gorki90@gmail.com', '2024-02-07 20:22:27', 'gorki90123456');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `build`
--

CREATE TABLE `build` (
  `id_build` int(11) NOT NULL,
  `nombre_build` varchar(120) NOT NULL,
  `descripcion_build` longtext NOT NULL,
  `skill_trees` longtext NOT NULL,
  `abilities` longtext NOT NULL,
  `equipment_head` text NOT NULL,
  `equipment_chest` text NOT NULL,
  `equipment_foot` text NOT NULL,
  `equipment_weapon1` text NOT NULL,
  `equipment_weapon2` text NOT NULL,
  `equipment_tent` text NOT NULL,
  `autor_id` int(11) NOT NULL,
  `equipment_backpack` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `build`
--

INSERT INTO `build` (`id_build`, `nombre_build`, `descripcion_build`, `skill_trees`, `abilities`, `equipment_head`, `equipment_chest`, `equipment_foot`, `equipment_weapon1`, `equipment_weapon2`, `equipment_tent`, `autor_id`, `equipment_backpack`) VALUES
(1, 'Storm Palatin', '\"A paladin that deals lightning damage', 'Rogue Engineer\r\nWild Hunter\r\nRune Sage', 'Dez\r\nEgoth\r\nFal\r\nShim\r\nRunic Prefix', 'White Wide Hat', 'Silver Armor', 'Gold-Lich Boots', 'Light Menders Lexicon', 'Gold-Lich Mace', 'null', 1, 'Light Menders backpack'),
(2, 'Blue Ranger', 'A very defensive build that grants you resistances and life regeneration over time', 'Rune Sage\r\nCabal Hermit\r\nWarrior Monk', 'Puncture\r\nDez\r\nEgoth\r\nFal\r\nShim\r\nRunic Prefix\r\nMaster of Motion', 'Blue Sand Helmet', 'Blue Sand Armor', 'Blue Sand Boots', 'Lantern of Souls', 'Light Menders Lexicon', 'Luxury Tent', 1, 'Brigands backpack'),
(3, 'The Bloody Vampire', 'End game build with high lifesteal susbtain', 'Cabal Hermit\r\nMercenary\r\nHex Mage', 'Conjure\r\nBlood Bullet\r\nBlood Sigil\r\nCleanse\r\nThe Technique\r\nBlood Infuse\r\nAll extra T1 skill that you can get', 'Wolf Medic Helmet', 'Wolf Medic Armor', 'Wolf Medic Boots', 'Vampiric Sword', 'Old Legion Gladiors', 'null', 1, 'Brigands backpack'),
(4, 'Ghost of Enmerkar', 'A fun build with range attacks, high defense, and strong one-to-one fight', 'Kazite Spellblade\r\nWarrior Monk\r\nPhilosopher', 'Infuse Frost\r\nElemental Discharge\r\nMaster of Motion\r\nCounterstrike\r\nBrace\r\nMana Ward\r\nFire Sigil', 'Antique Plate Helm', 'Copal Armor', 'Antique Plate Boots', 'Dreamer Halberd', 'Iron Halberd', 'null', 1, 'Zhorns Hunting backpack'),
(5, 'The Dominator', 'A face-to-face build that destroys the enemies in 360 degrees', 'Cabal Hermit\r\nWarrior Monk\r\nHex Mage', 'Moon Swipe\r\nWind Infuse\r\nMaster of Motion\r\nBlood Sigil\r\nCounterstrike\r\nFocus\r\nBrace', 'Master Kazite Cat Mask', 'Wolf Plate Armor', 'Noble Shoes', 'Tsar Halberd', 'null', 'Brigands backpack', 2, 'Luxury Tent'),
(6, 'Disk of Death', 'High damage with Chakrams', 'Warrior Monk\r\nPhilosopher\r\nPrimal Ritualist', 'Brace\r\nFocus\r\nMaster of Motion\r\nFlash Onslaught\r\nChakram Pierce\r\nChakram Dance\r\nChakram Arc\r\nWelkin Ring\r\nHaunting Beat\r\nNurturing Echo', 'Antique Plate Helm', 'Antique Plate Armor', 'Antique Plate Boots', 'Frozen Chakram', 'Tsar Chakram', 'null', 2, 'Light Menders backpack'),
(7, 'Mana Knight', 'High damage and protection, a conbination os close range damage with range damage', 'Cabal Hermit\r\n Wild Hunter\r\nWarrior Monk', 'Dez\r\nEgoth\r\nFal\r\nShim\r\nRunic Prefix\r\nCounterstrike\r\nPerfect Strike', 'White Arcane Hood', 'Runic Armor', 'Antique Plate Boots', 'Light Menders Lexicon', 'Any Shield', 'null', 1, 'Light Menders backpack'),
(8, 'Hermit of Doom', 'A paladin that deals lightning damage', 'Cabal Hermit\r\nRogue Engineer\r\nWarrior Monk', 'Simeons Gambit\r\nWind Sigil\r\nConjure\r\nSweep Kick\r\nBrace\r\nPerfect Strike\r\nFlash Onslaught', 'Master Dessert Veil', 'Silver Armor', 'Orichalcum Boots', 'Werling Spear', 'null', 'null', 2, 'Light Menders backpack'),
(9, 'Virgin Warrior', 'A light warrior', 'Rogue Engineer\r\nCabal Hermit\r\nRune Sage', 'Puncture\r\nEgoth\r\nFal\r\nShim\r\nInternalized Lexicon\r\nBackstab\r\nserpents parry\r\nProbe\r\nWind Infuse', 'Virgin Helmet', 'Virgin Armor', 'Virgin Boots', 'Radiant Wolf Sword', 'Zhorns Glowstone Dagger', 'Luxury Tent', 1, 'Glowstone backpack'),
(10, 'Mad Doctor', 'An easy to use build with high damage', 'Rogue Engineer\r\nHex Mage\r\nRune Sage', 'Dez\r\nEgoth\r\nFal\r\nShim\r\nRunic Prefix\r\nJinx', 'Jade-Lich Mask', 'Jade-Lich Armor', 'Jade-Lich Boots', 'Lexicon', 'Gold-Lich Mace', 'null', 1, 'Zhorns Hunting backpack');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`autor_id`);

--
-- Indices de la tabla `build`
--
ALTER TABLE `build`
  ADD PRIMARY KEY (`id_build`),
  ADD KEY `foreign_key` (`autor_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autor`
--
ALTER TABLE `autor`
  MODIFY `autor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `build`
--
ALTER TABLE `build`
  MODIFY `id_build` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `build`
--
ALTER TABLE `build`
  ADD CONSTRAINT `foreign_key` FOREIGN KEY (`autor_id`) REFERENCES `autor` (`autor_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
