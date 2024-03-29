-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2015 at 12:44 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `baseball_stats`
--

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE IF NOT EXISTS `teams` (
  `yearID` int(11) NOT NULL DEFAULT '0',
  `lgID` varchar(2) NOT NULL DEFAULT '',
  `teamID` varchar(3) NOT NULL DEFAULT '',
  `franchID` varchar(3) DEFAULT NULL,
  `divID` varchar(1) DEFAULT NULL,
  `Rank` int(11) DEFAULT NULL,
  `G` int(11) DEFAULT NULL,
  `Ghome` int(11) DEFAULT NULL,
  `W` int(11) DEFAULT NULL,
  `L` int(11) DEFAULT NULL,
  `DivWin` varchar(1) DEFAULT NULL,
  `WCWin` varchar(1) DEFAULT NULL,
  `LgWin` varchar(1) DEFAULT NULL,
  `WSWin` varchar(1) DEFAULT NULL,
  `R` int(11) DEFAULT NULL,
  `AB` int(11) DEFAULT NULL,
  `H` int(11) DEFAULT NULL,
  `2B` int(11) DEFAULT NULL,
  `3B` int(11) DEFAULT NULL,
  `HR` int(11) DEFAULT NULL,
  `BB` int(11) DEFAULT NULL,
  `SO` int(11) DEFAULT NULL,
  `SB` int(11) DEFAULT NULL,
  `CS` int(11) DEFAULT NULL,
  `HBP` int(11) DEFAULT NULL,
  `SF` int(11) DEFAULT NULL,
  `RA` int(11) DEFAULT NULL,
  `ER` int(11) DEFAULT NULL,
  `ERA` double DEFAULT NULL,
  `CG` int(11) DEFAULT NULL,
  `SHO` int(11) DEFAULT NULL,
  `SV` int(11) DEFAULT NULL,
  `IPouts` int(11) DEFAULT NULL,
  `HA` int(11) DEFAULT NULL,
  `HRA` int(11) DEFAULT NULL,
  `BBA` int(11) DEFAULT NULL,
  `SOA` int(11) DEFAULT NULL,
  `E` int(11) DEFAULT NULL,
  `DP` int(11) DEFAULT NULL,
  `FP` double DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `park` varchar(255) DEFAULT NULL,
  `attendance` int(11) DEFAULT NULL,
  `BPF` int(11) DEFAULT NULL,
  `PPF` int(11) DEFAULT NULL,
  `teamIDBR` varchar(3) DEFAULT NULL,
  `teamIDlahman45` varchar(3) DEFAULT NULL,
  `teamIDretro` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`yearID`,`lgID`,`teamID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`yearID`, `lgID`, `teamID`, `franchID`, `divID`, `Rank`, `G`, `Ghome`, `W`, `L`, `DivWin`, `WCWin`, `LgWin`, `WSWin`, `R`, `AB`, `H`, `2B`, `3B`, `HR`, `BB`, `SO`, `SB`, `CS`, `HBP`, `SF`, `RA`, `ER`, `ERA`, `CG`, `SHO`, `SV`, `IPouts`, `HA`, `HRA`, `BBA`, `SOA`, `E`, `DP`, `FP`, `name`, `park`, `attendance`, `BPF`, `PPF`, `teamIDBR`, `teamIDlahman45`, `teamIDretro`) VALUES
(2014, 'AL', 'BAL', 'BAL', 'E', 1, 162, 81, 96, 66, 'Y', 'N', 'N', 'N', 705, 5596, 1434, 264, 16, 211, 401, 1285, 44, 20, 62, 36, 593, 557, 3.43, 3, 13, 53, 4384, 1342, 151, 472, 1174, 87, 156, 0.986, 'Baltimore Orioles', 'Oriole Park at Camden Yards', 2464473, 100, 100, 'BAL', 'BAL', 'BAL'),
(2014, 'AL', 'BOS', 'BOS', 'E', 5, 162, 81, 71, 91, 'N', 'N', 'N', 'N', 634, 5551, 1355, 282, 20, 123, 535, 1337, 63, 25, 68, 52, 715, 653, 4.01, 3, 7, 36, 4397, 1458, 154, 482, 1213, 92, 155, 0.985, 'Boston Red Sox', 'Fenway Park II', 2956089, 102, 101, 'BOS', 'BOS', 'BOS'),
(2014, 'AL', 'CHA', 'CHW', 'C', 4, 162, 81, 73, 89, 'N', 'N', 'N', 'N', 660, 5543, 1400, 279, 32, 155, 417, 1362, 85, 36, 60, 38, 758, 687, 4.29, 3, 6, 36, 4323, 1468, 140, 557, 1152, 107, 170, 0.982, 'Chicago Cubs', 'Wrigley Field', 2652113, 103, 104, 'CHC', 'CHN', 'CHN'),
(2014, 'AL', 'CLE', 'CLE', 'C', 3, 162, 81, 85, 77, 'N', 'N', 'N', 'N', 669, 5575, 1411, 284, 23, 142, 504, 1189, 104, 27, 42, 49, 653, 581, 3.56, 6, 15, 40, 4405, 1398, 135, 464, 1450, 116, 139, 0.981, 'Cleveland Indians', 'Progressive Field', 1437393, 97, 97, 'CLE', 'CLE', 'CLE'),
(2014, 'AL', 'DET', 'DET', 'C', 1, 162, 81, 90, 72, 'Y', 'N', 'N', 'N', 757, 5630, 1557, 325, 26, 155, 443, 1144, 106, 41, 44, 61, 705, 648, 4.01, 5, 8, 41, 4362, 1475, 127, 462, 1244, 101, 153, 0.983, 'Detroit Tigers', 'Comerica Park', 2917209, 105, 104, 'DET', 'DET', 'DET'),
(2014, 'AL', 'HOU', 'HOU', 'W', 4, 162, 81, 70, 92, 'N', 'N', 'N', 'N', 629, 5447, 1317, 240, 19, 163, 495, 1442, 122, 37, 55, 36, 723, 657, 4.11, 7, 3, 31, 4316, 1437, 139, 484, 1137, 106, 151, 0.983, 'Houston Astros', 'Minute Maid Park', 1751829, 101, 102, 'HOU', 'HOU', 'HOU'),
(2014, 'AL', 'KCA', 'KCR', 'C', 2, 162, 81, 89, 73, 'N', 'Y', 'Y', 'N', 651, 5545, 1456, 286, 29, 95, 380, 985, 153, 36, 53, 47, 624, 565, 3.51, 3, 14, 53, 4352, 1386, 128, 440, 1168, 104, 122, 0.983, 'Kansas City Royals', 'Kauffman Stadium', 1956482, 105, 104, 'KCR', 'KCA', 'KCA'),
(2014, 'AL', 'LAA', 'ANA', 'W', 1, 162, 81, 98, 64, 'Y', 'N', 'N', 'N', 773, 5652, 1464, 304, 31, 155, 492, 1266, 81, 39, 60, 54, 630, 590, 3.58, 3, 13, 46, 4448, 1307, 126, 504, 1342, 83, 127, 0.986, 'Los Angeles Angels of Anaheim', 'Angel Stadium of Anaheim', 3095935, 96, 95, 'LAA', 'ANA', 'ANA'),
(2014, 'AL', 'MIN', 'MIN', 'C', 5, 162, 81, 70, 92, 'N', 'N', 'N', 'N', 715, 5567, 1412, 316, 27, 128, 544, 1329, 99, 36, 53, 44, 777, 728, 4.57, 2, 7, 38, 4305, 1588, 147, 408, 1031, 97, 136, 0.984, 'Minnesota Twins', 'Target Field', 2250606, 102, 103, 'MIN', 'MIN', 'MIN'),
(2014, 'AL', 'NYA', 'NYY', 'E', 2, 162, 81, 84, 78, 'N', 'N', 'N', 'N', 633, 5497, 1349, 247, 26, 147, 452, 1133, 112, 26, 56, 47, 664, 605, 3.75, 5, 10, 48, 4359, 1392, 164, 398, 1370, 92, 107, 0.984, 'New York Yankees', 'Yankee Stadium III', 3401624, 100, 101, 'NYY', 'NYA', 'NYA'),
(2014, 'AL', 'OAK', 'OAK', 'W', 2, 162, 81, 88, 74, 'N', 'Y', 'N', 'N', 729, 5545, 1354, 253, 33, 146, 586, 1104, 83, 20, 49, 43, 572, 524, 3.22, 7, 13, 31, 4390, 1269, 147, 406, 1244, 111, 150, 0.982, 'Oakland Athletics', 'O.co Coliseum', 2003628, 99, 97, 'OAK', 'OAK', 'OAK'),
(2014, 'AL', 'SEA', 'SEA', 'W', 3, 162, 81, 87, 75, 'N', 'N', 'N', 'N', 634, 5450, 1328, 247, 32, 136, 396, 1232, 96, 42, 60, 34, 554, 512, 3.17, 2, 9, 51, 4356, 1240, 137, 463, 1317, 82, 139, 0.986, 'Seattle Mariners', 'Safeco Field', 2064334, 95, 95, 'SEA', 'SEA', 'SEA'),
(2014, 'AL', 'TBA', 'TBD', 'E', 4, 162, 81, 77, 85, 'N', 'N', 'N', 'N', 612, 5516, 1361, 263, 24, 117, 527, 1124, 63, 27, 66, 53, 625, 579, 3.56, 3, 22, 37, 4391, 1292, 145, 482, 1437, 88, 96, 0.985, 'Tampa Bay Rays', 'Tropicana Field', 1446464, 97, 97, 'TBR', 'TBA', 'TBA'),
(2014, 'AL', 'TEX', 'TEX', 'W', 5, 162, 81, 67, 95, 'N', 'N', 'N', 'N', 637, 5460, 1400, 260, 28, 111, 417, 1162, 105, 59, 61, 45, 773, 711, 4.49, 6, 17, 33, 4279, 1510, 160, 505, 1110, 106, 155, 0.982, 'Texas Rangers', 'Rangers Ballpark in Arlington', 2718733, 101, 101, 'TEX', 'TEX', 'TEX'),
(2014, 'AL', 'TOR', 'TOR', 'E', 3, 162, 81, 83, 79, 'N', 'N', 'N', 'N', 723, 5549, 1435, 282, 24, 177, 502, 1151, 78, 21, 41, 40, 686, 642, 4, 3, 16, 45, 4329, 1400, 151, 490, 1199, 87, 130, 0.985, 'Toronto Blue Jays', 'Rogers Centre', 2375525, 102, 102, 'TOR', 'TOR', 'TOR'),
(2014, 'NL', 'ARI', 'ARI', 'W', 5, 162, 81, 64, 98, 'N', 'N', 'N', 'N', 615, 5552, 1379, 259, 47, 118, 398, 1165, 86, 33, 43, 36, 742, 683, 4.26, 2, 4, 35, 4333, 1467, 154, 469, 1278, 101, 147, 0.983, 'Arizona Diamondbacks', 'Chase Field', 2073730, 102, 102, 'ARI', 'ARI', 'ARI'),
(2014, 'NL', 'ATL', 'ATL', 'E', 2, 162, 81, 79, 83, 'N', 'N', 'N', 'N', 573, 5468, 1316, 240, 22, 123, 472, 1369, 95, 33, 43, 27, 597, 547, 3.38, 5, 13, 54, 4365, 1369, 121, 472, 1301, 85, 143, 0.986, 'Atlanta Braves', 'Turner Field', 2354305, 99, 99, 'ATL', 'ATL', 'ATL'),
(2014, 'NL', 'CHN', 'CHC', 'C', 5, 162, 81, 73, 89, 'N', 'N', 'N', 'N', 614, 5508, 1315, 270, 31, 157, 442, 1477, 65, 40, 54, 41, 707, 636, 3.91, 1, 11, 37, 4390, 1398, 115, 504, 1311, 103, 137, 0.983, 'Chicago White Sox', 'U.S. Cellular Field', 1650821, 100, 101, 'CHW', 'CHA', 'CHA'),
(2014, 'NL', 'CIN', 'CIN', 'C', 4, 162, 81, 76, 86, 'N', 'N', 'N', 'N', 595, 5395, 1282, 254, 20, 131, 415, 1252, 122, 52, 52, 37, 612, 576, 3.59, 5, 13, 44, 4338, 1282, 163, 507, 1290, 72, 120, 0.988, 'Cincinnati Reds', 'Great American Ball Park', 2476664, 98, 98, 'CIN', 'CIN', 'CIN'),
(2014, 'NL', 'COL', 'COL', 'W', 4, 162, 81, 66, 96, 'N', 'N', 'N', 'N', 755, 5612, 1551, 307, 41, 186, 397, 1281, 85, 48, 48, 48, 818, 770, 4.84, 1, 4, 24, 4293, 1528, 173, 531, 1074, 106, 166, 0.983, 'Colorado Rockies', 'Coors Field', 2680329, 115, 116, 'COL', 'COL', 'COL'),
(2014, 'NL', 'LAN', 'LAD', 'W', 1, 162, 81, 94, 68, 'Y', 'N', 'N', 'N', 718, 5560, 1476, 302, 38, 134, 519, 1246, 138, 50, 61, 43, 617, 554, 3.4, 7, 16, 47, 4394, 1338, 142, 429, 1373, 107, 145, 0.983, 'Los Angeles Dodgers', 'Dodger Stadium', 3782337, 96, 95, 'LAD', 'LAN', 'LAN'),
(2014, 'NL', 'MIA', 'FLA', 'E', 4, 162, 81, 77, 85, 'N', 'N', 'N', 'N', 645, 5538, 1399, 254, 36, 122, 501, 1419, 58, 21, 35, 39, 674, 613, 3.78, 3, 16, 42, 4373, 1481, 114, 458, 1190, 97, 154, 0.984, 'Miami Marlins', 'Marlins Park', 1732283, 103, 104, 'MIA', 'FLO', 'MIA'),
(2014, 'NL', 'MIL', 'MIL', 'C', 3, 162, 81, 82, 80, 'N', 'N', 'N', 'N', 650, 5462, 1366, 297, 28, 150, 423, 1197, 102, 43, 73, 37, 657, 594, 3.67, 3, 9, 45, 4373, 1386, 167, 431, 1246, 99, 130, 0.984, 'Milwaukee Brewers', 'Miller Park', 2797384, 102, 103, 'MIL', 'ML4', 'MIL'),
(2014, 'NL', 'NYN', 'NYM', 'E', 3, 162, 81, 79, 83, 'N', 'N', 'N', 'N', 629, 5472, 1306, 275, 19, 125, 516, 1264, 101, 34, 54, 44, 618, 568, 3.49, 1, 11, 42, 4391, 1370, 141, 509, 1303, 104, 158, 0.983, 'New York Mets', 'Citi Field', 2148808, 94, 95, 'NYM', 'NYN', 'NYN'),
(2014, 'NL', 'PHI', 'PHI', 'E', 5, 162, 81, 73, 89, 'N', 'N', 'N', 'N', 619, 5603, 1356, 251, 27, 125, 443, 1306, 109, 26, 55, 37, 687, 619, 3.79, 2, 12, 40, 4405, 1396, 134, 521, 1255, 83, 133, 0.987, 'Philadelphia Phillies', 'Citizens Bank Park', 2423852, 100, 101, 'PHI', 'PHI', 'PHI'),
(2014, 'NL', 'PIT', 'PIT', 'C', 2, 162, 81, 88, 74, 'N', 'Y', 'N', 'N', 682, 5536, 1436, 275, 30, 156, 520, 1244, 104, 47, 78, 35, 631, 562, 3.47, 2, 7, 48, 4369, 1341, 128, 499, 1228, 109, 148, 0.983, 'Pittsburgh Pirates', 'PNC Park', 2442564, 98, 97, 'PIT', 'PIT', 'PIT'),
(2014, 'NL', 'SDN', 'SDP', 'W', 3, 162, 81, 77, 85, 'N', 'N', 'N', 'N', 535, 5294, 1199, 224, 30, 109, 468, 1294, 91, 34, 41, 45, 577, 523, 3.27, 4, 10, 41, 4316, 1300, 117, 462, 1284, 101, 124, 0.983, 'San Diego Padres', 'Petco Park', 2195373, 91, 91, 'SDP', 'SDN', 'SDN'),
(2014, 'NL', 'SFN', 'SFG', 'W', 2, 162, 81, 88, 74, 'N', 'Y', 'Y', 'Y', 665, 5523, 1407, 257, 42, 132, 427, 1245, 56, 27, 43, 49, 614, 564, 3.5, 8, 12, 46, 4347, 1305, 133, 389, 1211, 100, 155, 0.984, 'San Francisco Giants', 'AT&T Park', 3368697, 95, 95, 'SFG', 'SFN', 'SFN'),
(2014, 'NL', 'SLN', 'STL', 'C', 1, 162, 81, 90, 72, 'Y', 'N', 'N', 'N', 619, 5426, 1371, 275, 21, 105, 471, 1133, 57, 32, 86, 39, 603, 564, 3.5, 8, 23, 55, 4346, 1321, 123, 470, 1221, 88, 145, 0.985, 'St. Louis Cardinals', 'Busch Stadium III', 3540649, 101, 100, 'STL', 'SLN', 'SLN'),
(2014, 'NL', 'WAS', 'WSN', 'E', 1, 162, 81, 96, 66, 'Y', 'N', 'N', 'N', 686, 5542, 1403, 265, 27, 152, 517, 1304, 101, 23, 56, 41, 555, 495, 3.03, 5, 19, 45, 4412, 1351, 110, 352, 1288, 100, 139, 0.984, 'Washington Nationals', 'Nationals Park', 2579389, 104, 102, 'WSN', 'MON', 'WAS');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
