-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:8889
-- Généré le :  Jeu 11 Janvier 2018 à 19:36
-- Version du serveur :  5.6.35
-- Version de PHP :  7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `khblade`
--

-- --------------------------------------------------------

--
-- Structure de la table `Games`
--

CREATE TABLE `Games` (
  `Id` int(11) NOT NULL,
  `Name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Game` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `Games`
--

INSERT INTO `Games` (`Id`, `Name`, `Image`, `Game`) VALUES
(1, 'Kingdom Hearts', '/images/games/logo_kh1.png', 'kh1'),
(2, 'Kingdom Hearts II', '/images/games/logo_kh2.png', 'kh2'),
(3, 'Kingdom Hearts 3D: Dream Drop Distance', '/images/games/logo_kh3D.png', 'kh3D'),
(4, 'Kingdom Hearts Birth by Sleep', '/images/games/logo_khBBS.png', 'khBBS'),
(5, 'Kingdom Hearts Re:Chain of Memories', '/images/games/logo_khcom.png', 'khcom');

-- --------------------------------------------------------

--
-- Structure de la table `kh1`
--

CREATE TABLE `kh1` (
  `Id` int(11) NOT NULL,
  `KeybladeName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `Strength` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MP` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `CritRate` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `CritBonus` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Recoil` tinyint(4) NOT NULL,
  `Obtain` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `Id_Games` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `kh1`
--

INSERT INTO `kh1` (`Id`, `KeybladeName`, `Image`, `Description`, `Strength`, `MP`, `CritRate`, `CritBonus`, `Recoil`, `Obtain`, `Id_Games`) VALUES
(1, 'Kingdom Key', '/images/kh1/Kingdom_Key_KH.png', '\"The key chain attached draws out the Keyblade\'s true form and power.\"', '+3', '+0', 'x1', '0', 30, 'Speak to Riku after the Heartless attack Destiny Islands.', 1),
(2, 'Oathkeeper', '/images/kh1/Oathkeeper_KH.png', '\"Raises max MP by 1, and enhances magic and summon power. Capable of dealing a string of critical blows.\"', '+9', '+1', 'x2', '0', 1, 'Speak to Kairi in the Secret Waterway after rescuing her.', 1),
(3, 'Oblivion', '/images/kh1/Oblivion_KH.png', '\"Possesses colossal power, but reduces max MP by 1.\"', '+11', '-1', 'x1', '+4', 30, 'Chest in the Grand Hall', 1),
(4, 'Ultima Weapon', '/images/kh1/Ultima_Weapon_KH.png', '\"The ultimate Keyblade. Raises max MP by 2, and possesses maximum power and attributes.\"', '+12', '+2', 'x2', '+4', 90, 'Item synthesis', 1),
(5, 'Kingdom Key D', '/images/kh1/Kingdom_Key_D_KH.png', 'Not available', 'N/A', 'N/A', 'N/A', 'N/A', 0, 'Not available; wielded exclusively by King Mickey.', 1),
(6, 'Keyblade of Heart', '/images/kh1/Keyblade_of_Hearts_KH.png', 'Not available', 'N/A', 'N/A', 'N/A', 'N/A', 0, 'Not available; wielded exclusively by the Ansem-possessed Riku.', 1),
(7, 'Lady Luck', '/images/kh1/Lady_Luck_KH.png', '\"Raises max MP by 2, and significantly enhances magic and summon power. Also inflicts good physical damage.\"', '+8', '+2', 'x1', '0', 1, 'White Trinity Mark in the Lotus Forest.', 1),
(8, 'Olympia', '/images/kh1/Olympia_KH.png', '\"A powerful weapon that is difficult to deflect. Capable of inflicting mighty critical blows.\"', '+9', '+0', 'x1.5', '+4', 90, 'Chest in the Lobby after completing the Phil Cup, Pegasus Cup, and Hercules Cup.', 1),
(9, 'Jungle King', '/images/kh1/Jungle_King_KH.png', '\"Has a long reach, but seldom deals critical blows.\"', '+5', '+0', 'x0.5', '0', 1, 'Lock the Keyhole in Deep Jungle.', 1),
(10, 'Three Wishes', '/images/kh1/Three_Wishes_KH.png', '\"A powerful weapon that is difficult to deflect.\"', '+6', '+0', 'x1', '0', 60, 'Lock the Keyhole in Agrabah.', 1),
(11, 'Pumpkinhead', '/images/kh1/Pumpkinhead_KH.png', '\"Has a long reach and the ability to deal a string of critical blows.\"', '+7', '+0', 'x2', '0', 1, 'Lock the Keyhole in Halloween Town', 1),
(12, 'Wishing Star', '/images/kh1/Wishing_Star_KH.png', '\"Has a short reach, but always finishes up a combo attack with a powerful critical blow.\"', '+5', '+0', 'Always', '+4', 1, 'Chest at Gepetto\'s House.', 1),
(13, 'Crabclaw', '/images/kh1/Crabclaw_KH.png', '\"Raises max MP by 1, and enhances magic and summon power. Also deals good physical damage.\"', '+6', '+1', 'x1', '0', 30, 'Lock the Keyhole in Atlantica.', 1),
(14, 'Fairy Harp', '/images/kh1/Fairy_Harp_KH.png', '\"Raises max MP by 1, and enhances magic and summon power. Sometimes deals powerful critical blows.\"', '+8', '+1', 'x1', '+4', 30, 'Lock the Keyhole in Neverland.', 1),
(15, 'Divine Rose', '/images/kh1/Divine_Rose_KH.png', '\"A powerful weapon that is difficult to deflect. Capable of dealing a string of critical blows.\"', '+10', '+0', 'x2', '0', 60, 'Speak with Belle in the Library.', 1),
(16, 'Spellbinder', '/images/kh1/Spellbinder_KH.png', '\"Raises max MP by 2, and significantly enhances magic and summon power.\"', '+4', '+2', 'x1', '0', 30, 'Speak to Merlin after acquiring all sever first-level magic spells.', 1),
(17, 'Metal Chocobo', '/images/kh1/Metal_Chocobo_KH.png', '\"Possess incredible power and reach, but reduces max MP by 1. Rarely deals critical blows.\"', '+10', '-1', 'x0.1', '0', 90, 'Defeat Cloud in the Hercules Cup.', 1),
(18, 'Lionheart', '/images/kh1/Lionheart_KH.png', '\"Raises max MP by 1, and enhances magic and summon power. Also deals great physical damage.\"', '+10', '+1', 'x1', '0', 30, 'Defeat Leon and Cloud in the Hades Cup', 1),
(19, 'Diamond Dust', '/images/kh1/Diamond_Dust_KH.png', '\"Greatly enhances magic and summon power. Raises max MP by 3.\"', '+3', '+3', 'x1', '0', 1, 'Complete the Gold Macth (only available in Kingdom Hearts Final Mix).', 1),
(20, 'One-Winged Angel', '/images/kh1/One-Winged_Angel_KH.png', '\"Has little power, but sometimes deals extremely powerful critical blows. Reduces max MP by 2.\"', '+8', '-2', 'x0.5', '+16', 90, 'Complete the Platinum Match (only available in Kingdom Hearts Final Mix).', 1);

-- --------------------------------------------------------

--
-- Structure de la table `kh2`
--

CREATE TABLE `kh2` (
  `Id` int(11) NOT NULL,
  `KeybladeName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Image` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Strength` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Magic` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `KeyLength` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Ability` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Obtain` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Id_Games` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `kh2`
--

INSERT INTO `kh2` (`Id`, `KeybladeName`, `Image`, `Description`, `Strength`, `Magic`, `KeyLength`, `Ability`, `Obtain`, `Id_Games`) VALUES
(1, 'Kingdom Key', '/images/kh2/Kingdom_Key_KHII.png', '\"A keychain attached to the Keyblade. Increases defense at critical moments.\"', '+3', '+1', '100', 'Defender', 'Fight the \"Mysterious Enemy\" at The Old Mansion.', 2),
(2, 'Oathkeeper', '/images/kh2/Oathkeeper_KHII.png', '\"Enhances magic and increases the duration of a Drive Form.\"', '+3', '+3', '98', 'Form Boost', 'Unlock the Gate in Twilight Town.', 2),
(3, 'Oblivion', '/images/kh2/Oblivion_KHII.png', '\"Has great strength, and allows the Drive Gauge to restore quickly during MP Charge.\"', '+6', '+2', '122', 'Drive Boost', 'Reunite with Riku in The World That Never Was.', 2),
(4, 'Ultima Weapon', '/images/kh2/Ultima_Weapon_KHII.png', '\"The Keyblade above all others, holding all power and will increase MP restoration rate, once all MP has been consumed.\"', '+6', '+4', '166', 'MP Hastega', 'Item synthesis', 2),
(5, 'Kingdom Key D', '/images/kh2/Kingdom_Key_D_KHII.png', 'Not available', '+3', '+0', 'N/A', 'Not available.', 'Choose \"I won\'t give up!\" when knocked out.', 2),
(6, 'Way to the Dawn', '/images/kh2/Way_to_the_Dawn_KHII.png', '\"Deals various attacks\"', '+3', '+0', 'N/A', 'Not available.', 'Riku\'s default weapon.', 2),
(7, 'Destiny\'s Embrace', '/images/kh2/Destiny\'s_Embrace_KHII.png', 'Not available', 'N/A', 'N/A', 'N/A', 'Not available.', 'Not available; wielded exclusively by Kairi.', 2),
(8, 'Stormfall', '/images/kh2/Stormfall_KHII.png', 'Not available', 'N/A', 'N/A', 'N/A', 'Not available', 'Not available; seen beside Aqua\'s armor in the Chamber of Repose.', 2),
(9, 'Ends of the Earth', '/images/kh2/Ends_of_the_Earth_KHII.png', 'Not available', 'N/A', 'N/A', 'N/A', 'Not available', 'Not available; wielded exclusively by the Lingering Will.', 2),
(10, 'Star Seeker', '/images/kh2/Star_Seeker_KHII.png', '\"Increases maximum combo by 1 when in midair.\"', '+3', '+1', '128', 'Air Combo Plus', 'Speak to Flora, Fauna, and Merryweather in Mysterious Tower.', 2),
(11, 'Hidden Dragon', '/images/kh2/Hidden_Dragon_KHII.png', '\"Restores MP relative to the amount of damage taken.\"', '+2', '+2', '104', 'MP Rage', 'Defeat Shan-Yu in The Land of Dragons.', 2),
(12, 'Rumbling Rose', '/images/kh2/Rumbling_Rose_KHII.png', '\"Has great strength, allowing finishing combo moves to be unleashed successively.\"', '+5', '+0', '100', 'Finishing Plus', 'Reunite with Beast.', 2),
(13, 'Hero\'s Crest', '/images/kh2/Hero\'s_Crest_KHII.png', '\"Increases the damage of the finishing move in the air relative to the number of hits in the combo.\"', '+4', '+0', '124', 'Air Combo Boost', 'Defeat the Hydra in Olympus Coliseum.', 2),
(14, 'Monochrome', '/images/kh2/Monochrome_KHII.png', '\"Increases the effect of restoration items used on the field.\"', '+3', '+2', '102', 'Item Boost', 'Complete Timeless River.', 2),
(15, 'Mysterious Abyss', '/images/kh2/Mysterious_Abyss_KHII.png', '\"Enhances magic to increase damage dealt by blizzard-based attacks.\"', '+3', '+3', '98', 'Blizzard Boost', 'Complete Ursula\'s Revenge.', 2),
(16, 'Follow the Wind', '/images/kh2/Follow_the_Wind_KHII.png', '\"Draws in nearby orbs\"', '+3', '+1', '130', 'Draw', 'Defeat Captain Barbossa in Port Royal.', 2),
(17, 'Wishing Lamp', '/images/kh2/Wishing_Lamp_KHII.png', '\"Wishes come true by increasing the drop rate of munny, and HP and MP orbs.\"', '+4', '+3', '116', 'Jackpost', 'Defeat Jafar.', 2),
(18, 'Decisive Pumpkin', '/images/kh2/Decisive_Pumpkin_KHII.png', '\"The greater number of combos landed, the more damage is dealt, leading to a strong finishing move!\"', '+6', '+1', '126', 'Combo Boost', 'Defeat The Experiment.', 2),
(19, 'Circle of Life', '/images/kh2/Circle_of_Life_KHII.png', '\"Has great strength, increasing MP restoration speed after MP is consumed.\"', '+4', '+1', '114', 'MP Haste', 'Talk to Simba in the Oasis of Pride Lands.', 2),
(20, 'Sweet Memories', '/images/kh2/Sweet_Memories_KHII.png', '\"Although it does not enhance attack strength, it increases the drop rate of items.\"', '+0', '+0', '102', 'Lucky Lucky', 'Complete The Expotition.', 2),
(21, 'Photon Debugger', '/images/kh2/Photon_Debugger_KHII.png', '\"Increases damage done by thunder-based attacks.\"', '+3', '+2', '104', 'Thunder Boost', 'Defeat the Hostile Program.', 2),
(22, 'Gull Wing', '/images/kh2/Gull_Wing_KHII.png', '\"Greatly increases the amount of experience gained when defeating an enemy at a critical moment.\"', '+3', '+0', '112', 'Experience Boost', 'Speak with the Gullwings after the Battle of the 1000 Heartless.', 2),
(23, 'Guardian Soul', '/images/kh2/Guardian_Soul_KHII.png', '\"Has great strength, increasing the amount of damage dealt from Reaction Commands.\"', '+5', '+1', '156', 'Reaction Boost', 'Defeat Hades.', 2),
(24, 'Sleeping Lion', '/images/kh2/Sleeping_Lion_KHII.png', '\"Well-balanced with strength and magic, increasing maximum ground-based combos by 1.\"', '+5', '+3', '152', 'Combo Plus', 'Talk to Leon before the second visit to Space Paranoids.', 2),
(25, 'Fenrir', '/images/kh2/Fenrir_KHII.png', '\"Has great range and strength, but maximum ground and midair combos are decreased by 1.\"', '+7', '+1', '168', 'Negative Combo', 'Speak with Cloud after defeating Sephiroth.', 2),
(26, 'Bond of Flame', '/images/kh2/Bond_of_Flame_KHII.png', '\"Enhances magic to increase damage dealt by fire-based attacks.\"', '+4', '+4', '114', 'Fire Boost', 'Defeat the Nobodies in Betwixt and Between.', 2),
(27, 'Two Become One', '/images/kh2/Two_Become_One_KHII.png', '\"A weapon of great strength and magic that has a special effect.\"', '+5', '+4', '112', 'Light & Darkness', 'Defeat Roxas (only available in Kingdom Hearts 2 Final Mix).', 2),
(28, 'Fatal Crest', '/images/kh2/Fatal_Crest_KHII.png', '\"Increases strength during MP Charge and allows unlimited chaining of combos.\r\nWhen equipped, the combo finishing move is disabled.\"', '+3', '+5', '148', 'Berserk Charge', 'Complete the Goddess of Fate Cup.', 2),
(29, 'Winner\'s Proof', '/images/kh2/Winner\'s_Proof_KHII.png', '\"A weapon of extraordinary magic and great strength.\r\nDisables the gaining of experience.\"', '+5', '+7', '166', 'No Experience', 'Satisfy Mushroom XIII: No. 13 (only available in Kingdom Hearts 2 Final Mix).', 2);

-- --------------------------------------------------------

--
-- Structure de la table `khbbs`
--

CREATE TABLE `khbbs` (
  `Id` int(11) NOT NULL,
  `KeybladeName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Image` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `HeroWielder` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Strength` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Magic` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `KeyLength` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CritRate` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `CritDamage` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Obtain` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `Id_Games` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `khbbs`
--

INSERT INTO `khbbs` (`Id`, `KeybladeName`, `Image`, `Description`, `HeroWielder`, `Strength`, `Magic`, `KeyLength`, `CritRate`, `CritDamage`, `Obtain`, `Id_Games`) VALUES
(1, 'Earthshaker', '/images/khBBS/Earthshaker_KHBBS.png', '\"The Keyblade you started out with. What it lacks in reach it makes up for with a slight boost in Strength.\"', 'Terra', '+3', '+1', 'Short', '25%', 'x1.2', 'Terra\'s default Keyblade.', 4),
(2, 'End of the Earth', '/images/khBBS/Ends_of_the_Earth_KHBBS.png', '\"A well-balanced Keyblade that provides an extra boost to all your stats.\"', 'Terra', '+5', '+3', 'Medium', '50%', 'x1.35', 'Meet Riku on Destiny Islands.', 4),
(3, 'Darkgnaw', '/images/khBBS/Darkgnaw_KHBBS.png', '\"A Keyblade that makes up for its poor reach and low critical hit ration by providing and extra boost in Strength.\"', 'Terra', '+5', '+2', 'Short', '25%', 'x1.35', 'Complete the Dead Ringer battle.', 4),
(4, 'Chaos Ripper', '/images/khBBS/Chaos_Ripper_KHBBS.png', '\"A Keyblade with log reach that does little for your Magic, but provides an outstanding boost in Strength.\"', 'Terra', '+10', '-2', 'Long', '25%', 'x1.5', 'Defeat Master Eraqus.', 4),
(5, 'Rainfell', '/images/khBBS/Rainfell_KHBBS.png', '\"The Keyblade you started out with. What it lacks in reach it makes up for with a balanced boost to Strength and Magic.\"', 'Aqua', '+2', '+2', 'Short', '25%', 'x1.2', 'Aqua\'s default Keyblade.', 4),
(6, 'Stormfall', '/images/khBBS/Stormfall_KHBBS.png', '\"A well-balanced Keyblade that provides an extra boost to all your stats.\"', 'Aqua', '+5', '+4', 'Medium', '50%', 'x1.35', 'Meet Sora and Riku on Destiny Islands.', 4),
(7, 'Destiny\'s Embrace', '/images/khBBS/Destiny\'s_Embrace_KHBBS.png', '\"A Keyblade that makes it easier to land critical hits.\"', 'Aqua', '+3', '+3', 'Short', '75%', 'x1.35', 'Meet Kairi in Radient Garden.', 4),
(8, 'Brightcrest', '/images/khBBS/Brightcrest_KHBBS.png', '\"A Keyblade with long reach that provides an outstanding boost in Magic. It also makes it easier to land critical hits, and deals higher damage when you do.\"', 'Aqua', '+4', '+7', 'Long', '75%', 'x1.5', 'Start the Final Episode.', 4),
(9, 'Master\'s Defender', '/images/khBBS/Master\'s_Defender_KHBBS.png', '\"The Keyblade belonging to Master Eraqus. It boost all your stats.\"', 'Aqua', '+7', '+7', 'Long', 'N/A', 'N/A', 'Start the Final Episode (only available in Kingdom Hearts Birth by Sleep Final Mix).', 4),
(10, 'Wayward Wind', '/images/khBBS/Wayward_Wind_KHBBS.png', '\"The Keyblade you started out with. What it lacks in reach it makes up for with a slight boost in Strength.\"', 'Ventus', '+3', '+1', 'Short', '50%', 'x1.35', 'Ventus\'s default Keyblade.', 4),
(11, 'Frolic Flame', '/images/khBBS/Frolic_Flame_KHBBS.png', '\"A well-balanced Keyblade that provides an extra boost to all your stats.\"', 'Ventus', '+3', '+3', 'Medium', '50%', 'x1.5', 'Meet Lea in Radient Garden.', 4),
(12, 'Lost Memory', '/images/khBBS/Lost_Memory_KHBBS.png', '\"A Keyblade with long reach that makes it easier to land critical hits, and deals higher damage when you do.\"', 'Ventus', '+6', '+5', 'Long', '75%', 'x1.5', 'Meet Vanitas on Destiny Islands.', 4),
(13, 'Treasure Trove', '/images/khBBS/Treasure_Trove_KHBBS.png', '\"A Keyblade that makes up for its poor reach with a balanced boost in Strength and Magic.\"', 'Terra, Ventus, Aqua', '+3', '+2', 'Short', '25%', 'x1.2', 'Clear Dwarf Woodlands.', 4),
(14, 'Stroke of Midnight', '/images/khBBS/Stroke_of_Midnight_KHBBS.png', '\"A Keyblade that makes it easier to land critical hits.\"', 'terra, Ventus, Aqua', '+2', '+2', 'Medium', '75%', 'x1.35', 'Clear Castle of Dreams.', 4),
(15, 'Fairy Stars', '/images/khBBS/Fairy_Stars_KHBBS.png', '\"A Keyblade that provides a balanced boost in Strength and Magic.\"', 'Terra, Ventus, Aqua', '+2', '+3', 'Medium', '25%', 'x1.2', 'Clear Enchanted Dominion.', 4),
(16, 'Victory Line', '/images/khBBS/Victory_Line_KHBBS.png', '\"A Keyblade with above-average reach that majes it easier to land critical hits.\"', 'Terra, Ventus, Aqua', '+4', '+2', 'Long', '75%', 'x1.35', 'Clear the \"Rumble Racing\" minigame.', 4),
(17, 'Mark of a Hero', '/images/khBBS/Mark_of_a_Hero_KHBBS.png', '\"A Keyblade that provides an extra boost in strength and deals higher damage when you land critical hits.\"', 'Terra, Ventus, Aqua', '+5', '+1', 'Medium', '50%', 'x1.5', 'Clear Olympus Coliseum.', 4),
(18, 'Hyperdrive', '/images/khBBS/Hyperdrive_KHBBS.png', '\"A Keyblade with above-average reach that provides a balanced boost in Strength and Magic.\"', 'Terra, Ventus, Aqua', '+4', '+3', 'Long', '50%', 'x1.35', 'Clear Deep Space.', 4),
(19, 'Pixie Petal', '/images/khBBS/Pixie_Petal_KHBBS.png', '\"A Keyblade that makes up for its poor reach with an extra boost in Magic. It also makes it easier to land critical hits, and deals higher damage when you do.\"', 'Terra, Ventus, Aqua', '+3', '+6', 'Short', '75%', 'x1.35', 'Clear Neverland.', 4),
(20, 'Sweetstack', '/images/khBBS/Sweetstack_KHBBS.png', '\"A Keyblade that provides an extra boost in Strength and ensures every strike a critical hit.\"', 'Terra, Ventus, Aqua', '+6', '+4', 'Short', '100%', 'x1.2', 'Make every kind of Ice Cream.', 4),
(21, 'Ultima Weapon', '/images/khBBS/Ultima_Weapon_KHBBS.png', '\"The most powerful of Keyblades.\"', 'Terra, Ventus, Aqua', '+7', '+6', 'Long', '75%', 'x1.5', 'Complete the Villains\' Vendetta battle.', 4),
(22, 'Void Gear', '/images/khBBS/Void_Gear_KHBBS.png', '\"A Keyblade with long reach that provides an outstanding boost in Strength and deals higher damage when you land a critical hit.\"', 'Terra, Ventus, Aqua', '+8', '+4', 'Long', 'N/A', 'N/A', 'Defeat Vanitas Remnant.', 4),
(23, 'No Name', '/images/khBBS/No_Name_KHBBS.png', '\"A Keyblade with long reach that provides an outstanding boost in Magic and makes it easier to land critical hits.\"', 'Terra, Ventus, Aqua', '+6', '+7', 'Long', 'N/A', 'N/A', 'Defeat the Unknown.', 4),
(24, 'Royal Radiance', '/images/khBBS/Royal_Radiance_KHBBS.png', '\"The most poerful of Keyblades. When equipped, it increases the speed at which commande gauge fills.\"', 'Terra, Ventus, Aqua', '+8', '+7', 'Long', 'N/A', 'N/A', 'Complete the Peering into Darkness battle.', 4),
(25, 'No Name (True one)', '/images/khBBS/No_Name_Xeha_KHBBS.png', '\"Wielded exclusively by Master Xehanort.\"', 'None', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Not available.', 4),
(26, 'χ-blade', '/images/khBBS/Χ-blade_KHBBS.png', '\"Legendary weapon. The original one after which all Keyblades are imperfectly modeled. Here, wielded exclusively by Ventus-Vanitas.\"', 'None', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Not available.', 4);

-- --------------------------------------------------------

--
-- Structure de la table `khcom`
--

CREATE TABLE `khcom` (
  `Id` int(11) NOT NULL,
  `KeybladeName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `Strike` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Thrust` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ComboFinish` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `SwingSpeed` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `BreakRecovery` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `CP` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Element` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Obtain` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Id_Games` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `khcom`
--

INSERT INTO `khcom` (`Id`, `KeybladeName`, `Image`, `Description`, `Strike`, `Thrust`, `ComboFinish`, `SwingSpeed`, `BreakRecovery`, `CP`, `Element`, `Obtain`, `Id_Games`) VALUES
(1, 'Kingdom Key', '/images/khcom/Kingdom_Key_(card).png', '\"The default weapon. Not very powerful, but reliable and easy to handle.\"', 'D+', 'D+', 'D+', 'B', 'B', 'star', 'Pysical', 'Sora\'s default weapon.', 5),
(2, 'Soul Eater', '/images/khcom/Soul_Eater_(card).png', '\"Reacts to dark power. Riku\'s strength is higher when he wields darkness in battle.\"', 'D+', '-', '-', '-', '-', '-', 'Pysical', 'Riku\'s default weapon.', 5),
(3, 'Oathkeeper', '/images/khcom/Oathkeeper_(card).png', '\"A well-balanced weapon with a very powerful thrust.\"', 'B', 'star', 'B+', 'B', 'B', 'C', 'Physical', 'Speak with Naminé after defeating the Darkside.', 5),
(4, 'Oblivion', '/images/khcom/Oblivion_(card).png', '\"A special attack card that can break through physical defenses. First-class strength.\"', 'A', 'A', 'D', 'C', 'A', 'C', 'Neutral', 'Speak with Naminé after defeating Larxene.', 5),
(5, 'Ultima Weapon', '/images/khcom/Ultima_Weapon_(card).png', '\"The strongest attack card to be found.\"', 'star', 'star', 'A', 'B', 'B', 'D', 'Physical', 'Castle Oblivion Bounty', 5),
(6, 'Lady Luck', '/images/khcom/Lady_Luck_(card).png', '\"Obtained in Wonderland. A balanced weapon that is easy to handle.\"', 'C+', 'C+', 'D', 'A', 'B', 'A', 'Physical', 'Wonderland', 5),
(7, 'Olympia', '/images/khcom/Olympia_(card).png', '\"Obtained in Olympus Coliseum. Powerful with a quick recovery after card breaks.\"', 'C+', 'D+', 'B', 'C', 'A', 'A', 'Physical', 'Olympus Coliseum', 5),
(8, 'Three Wishes', '/images/khcom/Three_Wishes_(card).png', '\"Obtained in Agrabah. Fairly strong with a fast swing.\"', 'C+', 'D+', 'B', 'A', 'B', 'A', 'Physical', 'Agrabah', 5),
(9, 'Crabclaw', '/images/khcom/Crabclaw_(card).png', '\"Obtained in Atlantica. Easy to handle with an impressive recovery time after card breaks.\"', 'C', 'C', 'B+', 'B', 'star', 'B', 'Physical', 'Atlantica', 5),
(10, 'Spellbinder', '/images/khcom/Spellbinder_(card).png', '\"A special attack card with lightning-based attacks.\"', 'D+', 'A', 'D+', 'C', 'A', 'B', 'Lightning', 'Find Owl', 5),
(11, 'Pumkinhead', '/images/khcom/Pumpkinhead_(card).png', '\"Obtained in Halloween Town. Easy to handle with a fast recovery after card breaks.\"', 'C+', 'C+', 'D+', 'B', 'A', 'A', 'Physical', 'Halloween Town', 5),
(12, 'Wishing Star', '/images/khcom/Wishing_Star_(card).png', '\"Obtained in Monstro. Not very powerful, but very easy to handle.\"', 'C', 'C', 'D+', 'A', 'A', 'A', 'Physical', 'Monstro', 5),
(13, 'Fairy Harp', '/images/khcom/Fairy_Harp_(card).png', '\"Obtained in Neverland. Easy to handle with a formidable swing speed.\"', 'C+', 'C+', 'C', 'star', 'star', 'B', 'Physical', 'Neverland', 5),
(14, 'Bond of Flame', '/images/khcom/Bond_of_Flame_(card).png', '\"A special attack card with fire-based attacks. Delivers exceptionally powerful strikes.\"', 'star', 'C+', 'B+', '-', 'B', 'C', 'Fire', '2nd Halloween Town Reward.', 5),
(15, 'Follow the Wind', '/images/khcom/Follow_the_Wind_(card).png', '\"A well-balanced weapon with a powerful thrust and a short recovery time from card breaks.\"', 'C+', 'A', 'D', '-', 'A', 'B', 'Physical', '2nd Neverland Reward', 5),
(16, 'Hidden Dragon', '/images/khcom/Hidden_Dragon_(card).png', '\"An attack card with weak strikes but powerful combo finishes.\"', 'D+', 'C+', 'B+', '-', 'A', 'B', 'Physical', 'Traverse Town Bounty', 5),
(17, 'Monochrome', '/images/khcom/Monochrome_(card).png', '\"A special attack card that can break through physical defenses. Takes time to recover from card breaks.\"', 'D+', 'B', 'B+', '-', 'C', 'B', 'Neutral', '2nd Olympus Coliseum Reward', 5),
(18, 'Photon Debugger', '/images/khcom/Photon_Debugger_(card).png', '\"A special attack card with lightning-based attacks.\"', 'B', 'C+', 'B+', '-', 'B', 'B', 'Lightning', '2nd Destiny Islands Reward', 5),
(19, 'Star Seeker', '/images/khcom/Star_Seeker_(card).png', '\"An attack card with a powerful combo finish\r\nand the shortest recovery time from card breaks.\"', 'C', 'D+', 'B+', '-', 'star', 'A', 'Physical', '2nd Castle Oblivion Reward', 5),
(20, 'Maverick Flare', '/images/khcom/Maverick_Flare_(card).png', '\"An attack card with weak strikes but powerful combo finishes.\"', 'D+', 'C+', 'B+', '-', 'A', 'B', 'Physical', 'Traverse Town Bounty', 5),
(21, 'Total Eclipse', '/images/khcom/Total_Eclipse_(card).png', '\"A special attack card that can break through physical defenses. Takes time to recover from card breaks.\"', 'D+', 'B', 'B+', '-', 'C', 'B', 'Neutral', '2nd Olympus Coliseum Reward', 5),
(22, 'Midnight Roar', '/images/khcom/Midnight_Roar_(card).png', '\"A well-balanced weapon with a powerful thrust and a short recovery time from card breaks.\"', 'C+', 'A', 'D', '-', 'A', 'B', 'Physical', '2nd Neverland Reward', 5),
(23, 'Two Become One', '/images/khcom/Two_Become_One_(card).png', '\"A weapon with a powerful thrust and combo finish.\"', 'B+', 'B+', 'B+', '-', 'B', 'B', 'Physical', '2nd Destiny Islands Reward', 5);

-- --------------------------------------------------------

--
-- Structure de la table `khddd`
--

CREATE TABLE `khddd` (
  `Id` int(11) NOT NULL,
  `KeybladeName` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `Image` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `Strength` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Magic` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `KeyLength` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `CritRate` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ShiftRate` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Obtain` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `Id_Games` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `khddd`
--

INSERT INTO `khddd` (`Id`, `KeybladeName`, `Image`, `Description`, `Strength`, `Magic`, `KeyLength`, `CritRate`, `ShiftRate`, `Obtain`, `Id_Games`) VALUES
(1, 'Kingdom Key', '/images/kh3D/Kingdom_Key_KH3D.png', '\"The Keyblade Sora began his journey with. It provides a balanced boost in Strength and Magic.\"', '5', '4', '75', '20%', '5%', 'Sora\'s default weapon.', 3),
(2, 'Way to the Dawn', '/images/kh3D/Way_to_the_Dawn_KH3D.png', '\"The Keyblade Riku began his journey with. It provides a balanced boost in Strength and Magic.\"', '5', '4', '85', '10%', '5%', 'Riku\'s default weapon.', 3),
(3, 'Skull Noise', '/images/kh3D/Skull_Noise_KH3D.png', '\"A Keyblade that provides a balanced boost in Strength and Magic.\"', '7', '7', '85', '20%', '5%', 'Defeat Hockomonkey.', 3),
(4, 'Guardian Bell', '/images/kh3D/Guardian_Bell_KH3D.png', '\"A Keyblade with long reach that provides an extra boost in Magic.\"', '7', '10', '98', '20%', '5%', 'Clear La Cité des Cloches.', 3),
(5, 'Dual Disk', '/images/kh3D/Dual_Disk_KH3D.png', '\"A Keyblade that provides an extra boost in Strength and makes it easier to land critical hits.\"', '10', '7', '98', '30%', '5%', 'Clear The Grid.', 3),
(6, 'Ferris Fear', '/images/kh3D/Ferris_Gear_KH3D.png', '\"A Keyblade that triggers fewer Really Shifts, but compensates with an extra boost in Strength and Magic.\"', '8', '8', '85', '20%', '3%', 'Clear Prankster\'s Paradise (only available for Sora).', 3),
(7, 'Ocean\'s Rage', '/images/kh3D/Ocean\'s_Rage_KH3D.png', '\"A Keyblade that lands fewer critical hits, but compensates with a boost in Magic and more frequent Reality Shifts.\"', '8', '10', '98', '10%', '10%', 'Clear Prankster\'s Paradise (only available for Riku).', 3),
(8, 'Knockout Punch', '/images/kh3D/Knockout_Punch_KH3D.png', '\"A Keyblade that lands fewer critical hits, but compensates with a Strength boost and more frequent Reality Shifts.\"', '12', '10', '113', '10%', '10%', 'Clear Traverse Town for the second time.', 3),
(9, 'All for One', '/images/kh3D/All_for_One_KH3D.png', '\"A Keyblade that triggers fewer Reality Shifts, but compensates with a boost in Magic and more frequent critical hits.\"', '10', '12', '98', '30%', '3%', 'Clear Country of the Musketeers.', 3),
(10, 'Counterpoint', '/images/kh3D/Counterpoint_KH3D.png', '\"A Keyblade with long reach that provides an extra boost in Magic and makes it easier to trigger Reality Shifts.\"', '12', '14', '113', '20%', '10%', 'Clear Symphony of Sorcery.', 3),
(11, 'Divewing', '/images/kh3D/Divewing_KH3D.png', '\"A Keyblade that provides an extra boost in Magic and makes it easier to land critical hits.\"', '12', '15', '113', '30%', '5%', 'Get A ranks on every Dive session.', 3),
(12, 'Sweet Dreams', '/images/kh3D/Sweet_Dreams_KH3D.png', '\"A Keyblade with a long reach that provides an extra boost in Strength and makes it easier to land critical hits.\"', '14', '12', '113', '30%', '5%', 'Clear the final match of Flick Rush.', 3),
(13, 'Ultima Weapon', '/images/kh3D/Ultima_Weapon_KH3D.png', '\"An outstanding Keyblade that boosts all stats, and makes it easy to both land critical hits and trigger Reality Shifts.\"', '16', '16', '113', '30%', '10%', 'Defeat Julius.', 3),
(14, 'Unbound', '/images/kh3D/Unbound_KH3D.png', '\"Keyblade perfection. It boosts all stats, while making it easy to and critical hits and even easier to trigger Reality Shifts.\"', '18', '14', '113', '30%', '20%', 'Clear all secret Portals.', 3),
(15, 'End of Pain', '/images/kh3D/End_of_Pain_KH3D.png', '\"A Keyblade that triggers fewer Reality Shifts but compensates with a boost in Magic and more frequent critical hits.\"', '14', '16', '113', '30%', '3%', 'Clear all special Portals.', 3),
(16, 'Lea\'s Keyblade', '/images/kh3D/Lea\'s_Keyblade_KH3D.png', '\"A Keyblade that is wielded exclusively by Lea.\"', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Not available.', 3),
(17, 'Young Xehanort\'s Keyblade', '/images/kh3D/Young_Xehanort\'s_Keyblade_KH3D.png', '\"A Keyblade that is wielded exclusively by Youg Xehanort.\"', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Not available.', 3);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Games`
--
ALTER TABLE `Games`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `kh1`
--
ALTER TABLE `kh1`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_kh1_game` (`Id_Games`);

--
-- Index pour la table `kh2`
--
ALTER TABLE `kh2`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id` (`Id`),
  ADD KEY `fk_kh2_game` (`Id_Games`);

--
-- Index pour la table `khbbs`
--
ALTER TABLE `khbbs`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_khBBS_game` (`Id_Games`);

--
-- Index pour la table `khcom`
--
ALTER TABLE `khcom`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_khcom_game` (`Id_Games`);

--
-- Index pour la table `khddd`
--
ALTER TABLE `khddd`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_kh3D_game` (`Id_Games`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Games`
--
ALTER TABLE `Games`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `kh1`
--
ALTER TABLE `kh1`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `kh2`
--
ALTER TABLE `kh2`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT pour la table `khbbs`
--
ALTER TABLE `khbbs`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT pour la table `khcom`
--
ALTER TABLE `khcom`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT pour la table `khddd`
--
ALTER TABLE `khddd`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `kh1`
--
ALTER TABLE `kh1`
  ADD CONSTRAINT `fk_kh1_game` FOREIGN KEY (`Id_Games`) REFERENCES `Games` (`Id`);

--
-- Contraintes pour la table `kh2`
--
ALTER TABLE `kh2`
  ADD CONSTRAINT `fk_kh2_game` FOREIGN KEY (`Id_Games`) REFERENCES `Games` (`Id`);

--
-- Contraintes pour la table `khbbs`
--
ALTER TABLE `khbbs`
  ADD CONSTRAINT `fk_khBBS_game` FOREIGN KEY (`Id_Games`) REFERENCES `Games` (`Id`);

--
-- Contraintes pour la table `khcom`
--
ALTER TABLE `khcom`
  ADD CONSTRAINT `fk_khcom_game` FOREIGN KEY (`Id_Games`) REFERENCES `Games` (`Id`);

--
-- Contraintes pour la table `khddd`
--
ALTER TABLE `khddd`
  ADD CONSTRAINT `fk_kh3D_game` FOREIGN KEY (`Id_Games`) REFERENCES `Games` (`Id`);
