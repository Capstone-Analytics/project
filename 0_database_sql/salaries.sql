-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2015 at 12:17 AM
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
-- Table structure for table `salaries`
--

CREATE TABLE IF NOT EXISTS `salaries` (
  `yearID` int(11) NOT NULL DEFAULT '0',
  `teamID` varchar(3) NOT NULL DEFAULT '',
  `lgID` varchar(2) NOT NULL DEFAULT '',
  `playerID` varchar(9) NOT NULL DEFAULT '',
  `salary` double DEFAULT NULL,
  PRIMARY KEY (`yearID`,`teamID`,`lgID`,`playerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salaries`
--

INSERT INTO `salaries` (`yearID`, `teamID`, `lgID`, `playerID`, `salary`) VALUES
(2014, 'ARI', 'NL', 'arroybr01', 9500000),
(2014, 'ARI', 'NL', 'cahiltr01', 7700000),
(2014, 'ARI', 'NL', 'campato01', 509500),
(2014, 'ARI', 'NL', 'chaveer01', 3500000),
(2014, 'ARI', 'NL', 'collmjo01', 925000),
(2014, 'ARI', 'NL', 'delgara01', 510000),
(2014, 'ARI', 'NL', 'goldspa01', 1100000),
(2014, 'ARI', 'NL', 'gosewtu01', 502000),
(2014, 'ARI', 'NL', 'gregodi01', 506500),
(2014, 'ARI', 'NL', 'harriwi10', 510000),
(2014, 'ARI', 'NL', 'hillaa01', 11000000),
(2014, 'ARI', 'NL', 'mileywa01', 523500),
(2014, 'ARI', 'NL', 'montemi01', 10000000),
(2014, 'ARI', 'NL', 'nunovi01', 504500),
(2014, 'ARI', 'NL', 'owingch01', 500000),
(2014, 'ARI', 'NL', 'parrage01', 4850000),
(2014, 'ARI', 'NL', 'pennicl01', 3250000),
(2014, 'ARI', 'NL', 'perezol01', 1750000),
(2014, 'ARI', 'NL', 'polloaj01', 507000),
(2014, 'ARI', 'NL', 'pradoma01', 11000000),
(2014, 'ARI', 'NL', 'putzjj01', 7000000),
(2014, 'ARI', 'NL', 'reedad01', 538500),
(2014, 'ARI', 'NL', 'rossco01', 9500000),
(2014, 'ARI', 'NL', 'thatcjo01', 2375000),
(2014, 'ARI', 'NL', 'trumbma01', 4800000),
(2014, 'ARI', 'NL', 'zieglbr01', 4500000),
(2014, 'ATL', 'NL', 'avilalu01', 517500),
(2014, 'ATL', 'NL', 'carpeda01', 532500),
(2014, 'ATL', 'NL', 'doumiry01', 3500000),
(2014, 'ATL', 'NL', 'floydga01', 4000000),
(2014, 'ATL', 'NL', 'freemfr01', 5125000),
(2014, 'ATL', 'NL', 'gattiev01', 520250),
(2014, 'ATL', 'NL', 'haleda02', 502500),
(2014, 'ATL', 'NL', 'haranaa01', 1000000),
(2014, 'ATL', 'NL', 'heywaja01', 4500000),
(2014, 'ATL', 'NL', 'johnsch05', 4750000),
(2014, 'ATL', 'NL', 'kimbrcr01', 7000000),
(2014, 'ATL', 'NL', 'lairdge01', 1500000),
(2014, 'ATL', 'NL', 'minormi01', 3850000),
(2014, 'ATL', 'NL', 'pastoty01', 500000),
(2014, 'ATL', 'NL', 'penara02', 700000),
(2014, 'ATL', 'NL', 'santaer01', 14100000),
(2014, 'ATL', 'NL', 'simmoan01', 1000000),
(2014, 'ATL', 'NL', 'teherju01', 800000),
(2014, 'ATL', 'NL', 'ugglada01', 13000000),
(2014, 'ATL', 'NL', 'uptonbj01', 13450000),
(2014, 'ATL', 'NL', 'uptonju01', 14250000),
(2014, 'ATL', 'NL', 'varvaan01', 515000),
(2014, 'ATL', 'NL', 'waldejo01', 1490000),
(2014, 'ATL', 'NL', 'woodal02', 506250),
(2014, 'BAL', 'AL', 'brachbr01', 509500),
(2014, 'BAL', 'AL', 'brittza01', 521500),
(2014, 'BAL', 'AL', 'chenwe02', 4072000),
(2014, 'BAL', 'AL', 'clevest01', 505000),
(2014, 'BAL', 'AL', 'cruzne02', 8000000),
(2014, 'BAL', 'AL', 'davisch02', 10350000),
(2014, 'BAL', 'AL', 'flahery01', 512500),
(2014, 'BAL', 'AL', 'gausmke01', 502500),
(2014, 'BAL', 'AL', 'gonzami03', 529000),
(2014, 'BAL', 'AL', 'hardyjj01', 7000000),
(2014, 'BAL', 'AL', 'hundlni01', 4000000),
(2014, 'BAL', 'AL', 'hunteto02', 3000000),
(2014, 'BAL', 'AL', 'jimenub01', 11250000),
(2014, 'BAL', 'AL', 'jonesad01', 13000000),
(2014, 'BAL', 'AL', 'lombast02', 517500),
(2014, 'BAL', 'AL', 'loughda01', 510500),
(2014, 'BAL', 'AL', 'machama01', 519000),
(2014, 'BAL', 'AL', 'markani01', 15000000),
(2014, 'BAL', 'AL', 'matusbr01', 2400000),
(2014, 'BAL', 'AL', 'mcfartj01', 505500),
(2014, 'BAL', 'AL', 'norribu01', 5300000),
(2014, 'BAL', 'AL', 'odayda01', 3200000),
(2014, 'BAL', 'AL', 'pearcst01', 700000),
(2014, 'BAL', 'AL', 'schoojo01', 500500),
(2014, 'BAL', 'AL', 'tillmch01', 546000),
(2014, 'BAL', 'AL', 'webbry01', 1750000),
(2014, 'BAL', 'AL', 'weeksje01', 515000),
(2014, 'BAL', 'AL', 'wietema01', 7700000),
(2014, 'BOS', 'AL', 'badenbu01', 2150000),
(2014, 'BOS', 'AL', 'bogaexa01', 517000),
(2014, 'BOS', 'AL', 'bradlja02', 502000),
(2014, 'BOS', 'AL', 'breslcr01', 3825000),
(2014, 'BOS', 'AL', 'brittdr01', 503000),
(2014, 'BOS', 'AL', 'buchhcl01', 7700000),
(2014, 'BOS', 'AL', 'capuach01', 2250000),
(2014, 'BOS', 'AL', 'carpmi01', 1400000),
(2014, 'BOS', 'AL', 'castiru02', 871429),
(2014, 'BOS', 'AL', 'craigal01', 2750000),
(2014, 'BOS', 'AL', 'drewst01', 10100000),
(2014, 'BOS', 'AL', 'gomesjo01', 5000000),
(2014, 'BOS', 'AL', 'herrejo03', 1300000),
(2014, 'BOS', 'AL', 'johnske05', 3000000),
(2014, 'BOS', 'AL', 'lavarry01', 510000),
(2014, 'BOS', 'AL', 'lestejo01', 13000000),
(2014, 'BOS', 'AL', 'middlwi01', 540000),
(2014, 'BOS', 'AL', 'millean01', 1900000),
(2014, 'BOS', 'AL', 'mujiced01', 4750000),
(2014, 'BOS', 'AL', 'napolmi01', 16000000),
(2014, 'BOS', 'AL', 'navada01', 556500),
(2014, 'BOS', 'AL', 'ortizda01', 15000000),
(2014, 'BOS', 'AL', 'pedrodu01', 12500000),
(2014, 'BOS', 'AL', 'pierzaj01', 8250000),
(2014, 'BOS', 'AL', 'rossda01', 3100000),
(2014, 'BOS', 'AL', 'sizemgr01', 750000),
(2014, 'BOS', 'AL', 'tazawju01', 1275000),
(2014, 'BOS', 'AL', 'ueharko01', 5000000),
(2014, 'BOS', 'AL', 'victosh01', 13000000),
(2014, 'BOS', 'AL', 'workmbr01', 518000),
(2014, 'BOS', 'AL', 'wrighst01', 502000),
(2014, 'CHA', 'AL', 'abreujo02', 7000000),
(2014, 'CHA', 'AL', 'beckhgo01', 4175000),
(2014, 'CHA', 'AL', 'belisro01', 3000000),
(2014, 'CHA', 'AL', 'cletoma01', 501000),
(2014, 'CHA', 'AL', 'danksjo01', 14250000),
(2014, 'CHA', 'AL', 'deazaal01', 4250000),
(2014, 'CHA', 'AL', 'downssc01', 3750000),
(2014, 'CHA', 'AL', 'dunnad01', 15000000),
(2014, 'CHA', 'AL', 'eatonad02', 511000),
(2014, 'CHA', 'AL', 'flowety01', 950000),
(2014, 'CHA', 'AL', 'garciav01', 510000),
(2014, 'CHA', 'AL', 'garcile02', 505500),
(2014, 'CHA', 'AL', 'gillaco01', 512000),
(2014, 'CHA', 'AL', 'johnser04', 500000),
(2014, 'CHA', 'AL', 'konerpa01', 2500000),
(2014, 'CHA', 'AL', 'lindsma01', 4000000),
(2014, 'CHA', 'AL', 'paulife01', 1750000),
(2014, 'CHA', 'AL', 'quintjo01', 850000),
(2014, 'CHA', 'AL', 'ramiral03', 9500000),
(2014, 'CHA', 'AL', 'salech01', 3500000),
(2014, 'CHA', 'AL', 'semiema01', 500000),
(2014, 'CHA', 'AL', 'vealdo01', 516000),
(2014, 'CHA', 'AL', 'vicieda01', 2800000),
(2014, 'CHA', 'AL', 'webbda01', 500000),
(2014, 'CHN', 'NL', 'arrieja01', 500000),
(2014, 'CHN', 'NL', 'bakerjo01', 875000),
(2014, 'CHN', 'NL', 'barneda01', 2300000),
(2014, 'CHN', 'NL', 'bonifem01', 2500000),
(2014, 'CHN', 'NL', 'castiwe01', 530000),
(2014, 'CHN', 'NL', 'castrst01', 5000000),
(2014, 'CHN', 'NL', 'fujikky01', 4500000),
(2014, 'CHN', 'NL', 'grimmju01', 505500),
(2014, 'CHN', 'NL', 'hammeja01', 6000000),
(2014, 'CHN', 'NL', 'jacksed01', 11000000),
(2014, 'CHN', 'NL', 'kalisry01', 550000),
(2014, 'CHN', 'NL', 'lakeju01', 502500),
(2014, 'CHN', 'NL', 'oltmi01', 502000),
(2014, 'CHN', 'NL', 'rizzoan01', 1250000),
(2014, 'CHN', 'NL', 'rondohe01', 514000),
(2014, 'CHN', 'NL', 'ruggiju01', 2000000),
(2014, 'CHN', 'NL', 'rusinch01', 503500),
(2014, 'CHN', 'NL', 'russeja02', 1775000),
(2014, 'CHN', 'NL', 'schiena01', 5000000),
(2014, 'CHN', 'NL', 'straida01', 505000),
(2014, 'CHN', 'NL', 'stroppe01', 1325000),
(2014, 'CHN', 'NL', 'sweenry01', 1500000),
(2014, 'CHN', 'NL', 'valbulu01', 1710000),
(2014, 'CHN', 'NL', 'verasjo01', 3850000),
(2014, 'CHN', 'NL', 'villaca01', 5000000),
(2014, 'CHN', 'NL', 'woodtr01', 3900000),
(2014, 'CHN', 'NL', 'wrighwe01', 1425000),
(2014, 'CIN', 'NL', 'baileho02', 9000000),
(2014, 'CIN', 'NL', 'broxtjo01', 7000000),
(2014, 'CIN', 'NL', 'bruceja01', 10000000),
(2014, 'CIN', 'NL', 'chapmar01', 5000000),
(2014, 'CIN', 'NL', 'chrisni01', 500000),
(2014, 'CIN', 'NL', 'cingrto01', 512500),
(2014, 'CIN', 'NL', 'cozarza01', 600000),
(2014, 'CIN', 'NL', 'cuetojo01', 10000000),
(2014, 'CIN', 'NL', 'frazito01', 600000),
(2014, 'CIN', 'NL', 'hamilbi02', 500000),
(2014, 'CIN', 'NL', 'hannaja01', 1000000),
(2014, 'CIN', 'NL', 'heisech01', 1760000),
(2014, 'CIN', 'NL', 'hoovejj01', 520000),
(2014, 'CIN', 'NL', 'latosma01', 7250000),
(2014, 'CIN', 'NL', 'leakemi01', 5925000),
(2014, 'CIN', 'NL', 'lecursa01', 1200000),
(2014, 'CIN', 'NL', 'ludwiry01', 8500000),
(2014, 'CIN', 'NL', 'marshse01', 5500000),
(2014, 'CIN', 'NL', 'mesorde01', 525000),
(2014, 'CIN', 'NL', 'ondrulo01', 1350000),
(2014, 'CIN', 'NL', 'parrama01', 2000000),
(2014, 'CIN', 'NL', 'penabr01', 875000),
(2014, 'CIN', 'NL', 'phillbr01', 11000000),
(2014, 'CIN', 'NL', 'santira01', 1100000),
(2014, 'CIN', 'NL', 'schumsk01', 2000000),
(2014, 'CIN', 'NL', 'simonal01', 1500000),
(2014, 'CIN', 'NL', 'sotone01', 500000),
(2014, 'CIN', 'NL', 'vottojo01', 12000000),
(2014, 'CLE', 'AL', 'allenco01', 515400),
(2014, 'CLE', 'AL', 'atchisc01', 800000),
(2014, 'CLE', 'AL', 'avilemi01', 3500000),
(2014, 'CLE', 'AL', 'bauertr01', 1183333),
(2014, 'CLE', 'AL', 'bournmi01', 13500000),
(2014, 'CLE', 'AL', 'brantmi02', 1500000),
(2014, 'CLE', 'AL', 'cabreas01', 10000000),
(2014, 'CLE', 'AL', 'carraca01', 504700),
(2014, 'CLE', 'AL', 'chiselo01', 510800),
(2014, 'CLE', 'AL', 'gomesya01', 550000),
(2014, 'CLE', 'AL', 'johnsel02', 930000),
(2014, 'CLE', 'AL', 'kipnija01', 2166666),
(2014, 'CLE', 'AL', 'klubeco01', 514000),
(2014, 'CLE', 'AL', 'masteju01', 9762500),
(2014, 'CLE', 'AL', 'mcallza01', 504500),
(2014, 'CLE', 'AL', 'murphda07', 5500000),
(2014, 'CLE', 'AL', 'outmajo01', 1250000),
(2014, 'CLE', 'AL', 'raburry01', 2250000),
(2014, 'CLE', 'AL', 'rzepcma01', 1375000),
(2014, 'CLE', 'AL', 'salazda01', 501500),
(2014, 'CLE', 'AL', 'santaca01', 3500000),
(2014, 'CLE', 'AL', 'selleju01', 504000),
(2014, 'CLE', 'AL', 'shawbr01', 529500),
(2014, 'CLE', 'AL', 'swishni01', 15000000),
(2014, 'CLE', 'AL', 'tomlijo01', 800000),
(2014, 'CLE', 'NL', 'axforjo01', 4500000),
(2014, 'COL', 'NL', 'anderbr04', 8000000),
(2014, 'COL', 'NL', 'arenano01', 500000),
(2014, 'COL', 'NL', 'barnebr02', 501000),
(2014, 'COL', 'NL', 'belisma01', 4250000),
(2014, 'COL', 'NL', 'bettich01', 500000),
(2014, 'COL', 'NL', 'blackch02', 501000),
(2014, 'COL', 'NL', 'brothre01', 502000),
(2014, 'COL', 'NL', 'chacijh01', 4850000),
(2014, 'COL', 'NL', 'chatwty01', 502000),
(2014, 'COL', 'NL', 'cuddymi01', 10500000),
(2014, 'COL', 'NL', 'culbech01', 500000),
(2014, 'COL', 'NL', 'dickeco01', 500000),
(2014, 'COL', 'NL', 'gonzaca01', 10500000),
(2014, 'COL', 'NL', 'hawkila01', 2250000),
(2014, 'COL', 'NL', 'lemahdj01', 501000),
(2014, 'COL', 'NL', 'loganbo02', 4750000),
(2014, 'COL', 'NL', 'lopezwi01', 2200000),
(2014, 'COL', 'NL', 'lylesjo01', 502000),
(2014, 'COL', 'NL', 'mckenmi01', 750000),
(2014, 'COL', 'NL', 'moralfr01', 1712500),
(2014, 'COL', 'NL', 'morneju01', 5000000),
(2014, 'COL', 'NL', 'nicasju01', 2025000),
(2014, 'COL', 'NL', 'ottavad01', 502000),
(2014, 'COL', 'NL', 'pachejo01', 502000),
(2014, 'COL', 'NL', 'rosajo01', 11000000),
(2014, 'COL', 'NL', 'rosarwi01', 502000),
(2014, 'COL', 'NL', 'rutlejo01', 501000),
(2014, 'COL', 'NL', 'stubbdr01', 4100000),
(2014, 'COL', 'NL', 'tulowtr01', 16000000),
(2014, 'COL', 'NL', 'wheelry01', 500000),
(2014, 'DET', 'AL', 'albural01', 837500),
(2014, 'DET', 'AL', 'avilaal01', 4150000),
(2014, 'DET', 'AL', 'cabremi01', 22000000),
(2014, 'DET', 'AL', 'casteni01', 500000),
(2014, 'DET', 'AL', 'chambjo03', 2500000),
(2014, 'DET', 'AL', 'cokeph01', 1900000),
(2014, 'DET', 'AL', 'davisra01', 5000000),
(2014, 'DET', 'AL', 'gonzaal02', 1100000),
(2014, 'DET', 'AL', 'holadbr01', 502000),
(2014, 'DET', 'AL', 'hunteto01', 14000000),
(2014, 'DET', 'AL', 'kellydo01', 1000000),
(2014, 'DET', 'AL', 'kinslia01', 16000000),
(2014, 'DET', 'AL', 'krolia01', 504000),
(2014, 'DET', 'AL', 'martivi01', 12000000),
(2014, 'DET', 'AL', 'nathajo01', 9000000),
(2014, 'DET', 'AL', 'porceri01', 8500000),
(2014, 'DET', 'AL', 'putkolu01', 510000),
(2014, 'DET', 'AL', 'reedev01', 503000),
(2014, 'DET', 'AL', 'rominan01', 504000),
(2014, 'DET', 'AL', 'sanchan01', 15800000),
(2014, 'DET', 'AL', 'scherma01', 15525000),
(2014, 'DET', 'AL', 'smylydr01', 520000),
(2014, 'DET', 'AL', 'verlaju01', 20000000),
(2014, 'HOU', 'AL', 'altuvjo01', 1250000),
(2014, 'HOU', 'AL', 'cartech02', 510000),
(2014, 'HOU', 'AL', 'castrja01', 2450000),
(2014, 'HOU', 'AL', 'chapmke02', 503400),
(2014, 'HOU', 'AL', 'corpoca01', 505300),
(2014, 'HOU', 'AL', 'cosarja01', 500000),
(2014, 'HOU', 'AL', 'dominma01', 510100),
(2014, 'HOU', 'AL', 'feldmsc01', 12000000),
(2014, 'HOU', 'AL', 'fieldjo03', 506500),
(2014, 'HOU', 'AL', 'fowlede01', 7350000),
(2014, 'HOU', 'AL', 'gonzama01', 504500),
(2014, 'HOU', 'AL', 'grossro01', 504500),
(2014, 'HOU', 'AL', 'guzmaje01', 1300000),
(2014, 'HOU', 'AL', 'hoeslj01', 502900),
(2014, 'HOU', 'AL', 'keuchda01', 508700),
(2014, 'HOU', 'AL', 'krausma01', 502300),
(2014, 'HOU', 'AL', 'peacobr01', 504300),
(2014, 'HOU', 'AL', 'quallch01', 2700000),
(2014, 'HOU', 'AL', 'singljo02', 1500000),
(2014, 'HOU', 'AL', 'villajo01', 503800),
(2014, 'KCA', 'AL', 'aokino01', 1950000),
(2014, 'KCA', 'AL', 'buenofr01', 504500),
(2014, 'KCA', 'AL', 'butlebi03', 8000000),
(2014, 'KCA', 'AL', 'cainlo01', 546000),
(2014, 'KCA', 'AL', 'ciriape01', 513500),
(2014, 'KCA', 'AL', 'colemlo01', 537000),
(2014, 'KCA', 'AL', 'colliti01', 1362500),
(2014, 'KCA', 'AL', 'crowaa01', 1475000),
(2014, 'KCA', 'AL', 'daviswa01', 4800000),
(2014, 'KCA', 'AL', 'dysonja01', 530000),
(2014, 'KCA', 'AL', 'escobal02', 3000000),
(2014, 'KCA', 'AL', 'giavojo01', 508575),
(2014, 'KCA', 'AL', 'gordoal01', 10000000),
(2014, 'KCA', 'AL', 'guthrje01', 8000000),
(2014, 'KCA', 'AL', 'hayesbr01', 630000),
(2014, 'KCA', 'AL', 'herreke01', 522500),
(2014, 'KCA', 'AL', 'hollagr01', 4675000),
(2014, 'KCA', 'AL', 'hosmeer01', 3600000),
(2014, 'KCA', 'AL', 'infanom01', 5000000),
(2014, 'KCA', 'AL', 'maxweju01', 1325000),
(2014, 'KCA', 'AL', 'moustmi01', 549000),
(2014, 'KCA', 'AL', 'perezsa02', 1500000),
(2014, 'KCA', 'AL', 'shielja02', 13500000),
(2014, 'KCA', 'AL', 'valenda01', 1065000),
(2014, 'KCA', 'AL', 'ventuyo01', 500500),
(2014, 'LAA', 'AL', 'aybarer01', 8500000),
(2014, 'LAA', 'AL', 'calhoko01', 506000),
(2014, 'LAA', 'AL', 'congeha01', 517500),
(2014, 'LAA', 'AL', 'cowgico01', 506000),
(2014, 'LAA', 'AL', 'delarda01', 515000),
(2014, 'LAA', 'AL', 'freesda01', 5050000),
(2014, 'LAA', 'AL', 'frierer01', 3800000),
(2014, 'LAA', 'AL', 'greengr01', 502250),
(2014, 'LAA', 'AL', 'hamiljo03', 17000000),
(2014, 'LAA', 'AL', 'iannech01', 4975000),
(2014, 'LAA', 'AL', 'ibanera01', 2750000),
(2014, 'LAA', 'AL', 'jepseke01', 1462500),
(2014, 'LAA', 'AL', 'kendrho01', 9350000),
(2014, 'LAA', 'AL', 'kohnmi01', 515000),
(2014, 'LAA', 'AL', 'mcdonjo03', 850000),
(2014, 'LAA', 'AL', 'pujolal01', 23000000),
(2014, 'LAA', 'AL', 'rasmuco02', 501250),
(2014, 'LAA', 'AL', 'richaga01', 520000),
(2014, 'LAA', 'AL', 'salasfe01', 870000),
(2014, 'LAA', 'AL', 'santihe01', 530000),
(2014, 'LAA', 'AL', 'shoemma01', 500500),
(2014, 'LAA', 'AL', 'shuckja01', 515000),
(2014, 'LAA', 'AL', 'skaggty01', 502250),
(2014, 'LAA', 'AL', 'smithjo05', 5250000),
(2014, 'LAA', 'AL', 'troutmi01', 1000000),
(2014, 'LAA', 'AL', 'weaveje02', 16000000),
(2014, 'LAA', 'AL', 'wilsocj01', 16000000),
(2014, 'LAN', 'NL', 'arrueba01', 3000000),
(2014, 'LAN', 'NL', 'baxtemi01', 700000),
(2014, 'LAN', 'NL', 'beckejo02', 15750000),
(2014, 'LAN', 'NL', 'buterdr01', 700000),
(2014, 'LAN', 'NL', 'correke01', 5500000),
(2014, 'LAN', 'NL', 'crawfca02', 20250000),
(2014, 'LAN', 'NL', 'dominjo01', 501000),
(2014, 'LAN', 'NL', 'elbersc01', 575000),
(2014, 'LAN', 'NL', 'ellisaj01', 3550000),
(2014, 'LAN', 'NL', 'ethiean01', 15500000),
(2014, 'LAN', 'NL', 'gonzaad01', 21000000),
(2014, 'LAN', 'NL', 'gordode01', 515000),
(2014, 'LAN', 'NL', 'greinza01', 26000000),
(2014, 'LAN', 'NL', 'guerral01', 4000000),
(2014, 'LAN', 'NL', 'harenda01', 10000000),
(2014, 'LAN', 'NL', 'howeljp01', 4000000),
(2014, 'LAN', 'NL', 'janseke01', 4300000),
(2014, 'LAN', 'NL', 'kempma01', 21000000),
(2014, 'LAN', 'NL', 'kershcl01', 4000000),
(2014, 'LAN', 'NL', 'leagubr01', 7500000),
(2014, 'LAN', 'NL', 'maholpa01', 1500000),
(2014, 'LAN', 'NL', 'perezch01', 2300000),
(2014, 'LAN', 'NL', 'puigya01', 3714000),
(2014, 'LAN', 'NL', 'ramirha01', 16000000),
(2014, 'LAN', 'NL', 'rodrist02', 512500),
(2014, 'LAN', 'NL', 'ryuhy01', 4333000),
(2014, 'LAN', 'NL', 'turneju01', 1000000),
(2014, 'LAN', 'NL', 'uribeju01', 6500000),
(2014, 'LAN', 'NL', 'vanslsc01', 507500),
(2014, 'LAN', 'NL', 'wilsobr01', 10000000),
(2014, 'LAN', 'NL', 'withrch01', 506600),
(2014, 'LAN', 'NL', 'wrighja01', 1800000),
(2014, 'MIA', 'NL', 'alvarhe01', 525400),
(2014, 'MIA', 'NL', 'bakerje03', 1600000),
(2014, 'MIA', 'NL', 'cishest01', 3800000),
(2014, 'MIA', 'NL', 'dietrde01', 501500),
(2014, 'MIA', 'NL', 'dobbsgr01', 1700000),
(2014, 'MIA', 'NL', 'dunnmi01', 1400000),
(2014, 'MIA', 'NL', 'eovalna01', 517000),
(2014, 'MIA', 'NL', 'fernajo02', 635000),
(2014, 'MIA', 'NL', 'furcara02', 3500000),
(2014, 'MIA', 'NL', 'handbr01', 500000),
(2014, 'MIA', 'NL', 'hechaad01', 2200000),
(2014, 'MIA', 'NL', 'jennida01', 501500),
(2014, 'MIA', 'NL', 'johnsre02', 1000000),
(2014, 'MIA', 'NL', 'jonesga02', 2750000),
(2014, 'MIA', 'NL', 'koehlto01', 515000),
(2014, 'MIA', 'NL', 'lucased01', 510000),
(2014, 'MIA', 'NL', 'marisja01', 500000),
(2014, 'MIA', 'NL', 'marmoca01', 1250000),
(2014, 'MIA', 'NL', 'mathije01', 1500000),
(2014, 'MIA', 'NL', 'mcgehca01', 1100000),
(2014, 'MIA', 'NL', 'ozunama01', 505000),
(2014, 'MIA', 'NL', 'ramosaj01', 510000),
(2014, 'MIA', 'NL', 'saltaja01', 6000000),
(2014, 'MIA', 'NL', 'sloweke01', 800000),
(2014, 'MIA', 'NL', 'solando01', 511500),
(2014, 'MIA', 'NL', 'stantmi03', 6500000),
(2014, 'MIA', 'NL', 'yelicch01', 505000),
(2014, 'MIL', 'NL', 'biancje01', 502000),
(2014, 'MIL', 'NL', 'braunry02', 10000000),
(2014, 'MIL', 'NL', 'daviskh01', 503000),
(2014, 'MIL', 'NL', 'dukeza01', 850000),
(2014, 'MIL', 'NL', 'estrama01', 3325000),
(2014, 'MIL', 'NL', 'gallayo01', 11250000),
(2014, 'MIL', 'NL', 'garzama01', 12500000),
(2014, 'MIL', 'NL', 'gennesc01', 504000),
(2014, 'MIL', 'NL', 'gomezca01', 7000000),
(2014, 'MIL', 'NL', 'gorzeto01', 2950000),
(2014, 'MIL', 'NL', 'hendeji01', 512000),
(2014, 'MIL', 'NL', 'herreel01', 500000),
(2014, 'MIL', 'NL', 'kintzbr01', 507000),
(2014, 'MIL', 'NL', 'lohseky01', 11000000),
(2014, 'MIL', 'NL', 'lucrojo01', 2000000),
(2014, 'MIL', 'NL', 'maldoma01', 502000),
(2014, 'MIL', 'NL', 'overbly01', 1500000),
(2014, 'MIL', 'NL', 'peralwi01', 515000),
(2014, 'MIL', 'NL', 'ramirar01', 16000000),
(2014, 'MIL', 'NL', 'reynoma01', 2000000),
(2014, 'MIL', 'NL', 'rodrifr03', 3250000),
(2014, 'MIL', 'NL', 'schaflo01', 505000),
(2014, 'MIL', 'NL', 'segurje01', 534000),
(2014, 'MIL', 'NL', 'smithwi04', 502000),
(2014, 'MIL', 'NL', 'thornty01', 505000),
(2014, 'MIL', 'NL', 'weeksri01', 11000000),
(2014, 'MIL', 'NL', 'wootero01', 501000),
(2014, 'MIN', 'AL', 'arciaos01', 512500),
(2014, 'MIN', 'AL', 'bartlja01', 1000000),
(2014, 'MIN', 'AL', 'burtoja01', 3250000),
(2014, 'MIN', 'AL', 'colabch01', 505000),
(2014, 'MIN', 'AL', 'dedunsa01', 520000),
(2014, 'MIN', 'AL', 'doziebr01', 540000),
(2014, 'MIN', 'AL', 'duensbr01', 2000000),
(2014, 'MIN', 'AL', 'escobed01', 507500),
(2014, 'MIN', 'AL', 'fienca01', 530000),
(2014, 'MIN', 'AL', 'floripe01', 517500),
(2014, 'MIN', 'AL', 'fuldsa01', 800000),
(2014, 'MIN', 'AL', 'gibsoky01', 502500),
(2014, 'MIN', 'AL', 'herrmch01', 500000),
(2014, 'MIN', 'AL', 'hicksaa01', 507500),
(2014, 'MIN', 'AL', 'hugheph01', 8000000),
(2014, 'MIN', 'AL', 'kubelja01', 2000000),
(2014, 'MIN', 'AL', 'mauerjo01', 23000000),
(2014, 'MIN', 'AL', 'moralke01', 7410000),
(2014, 'MIN', 'AL', 'nolasri01', 12000000),
(2014, 'MIN', 'AL', 'perkigl01', 4025000),
(2014, 'MIN', 'AL', 'pintojo01', 500000),
(2014, 'MIN', 'AL', 'plouftr01', 2350000),
(2014, 'MIN', 'AL', 'schafjo02', 1090000),
(2014, 'MIN', 'AL', 'suzukku01', 2750000),
(2014, 'MIN', 'AL', 'swarzan01', 935000),
(2014, 'MIN', 'AL', 'thielca01', 510000),
(2014, 'MIN', 'AL', 'willijo03', 7000000),
(2014, 'NYA', 'AL', 'almonzo01', 511300),
(2014, 'NYA', 'AL', 'beltrca01', 15000000),
(2014, 'NYA', 'AL', 'betande01', 502100),
(2014, 'NYA', 'AL', 'cervefr01', 700000),
(2014, 'NYA', 'AL', 'claibpr01', 511325),
(2014, 'NYA', 'AL', 'ellsbja01', 21142857),
(2014, 'NYA', 'AL', 'gardnbr01', 5600000),
(2014, 'NYA', 'AL', 'jeterde01', 12000000),
(2014, 'NYA', 'AL', 'kellesh01', 1765000),
(2014, 'NYA', 'AL', 'kurodhi01', 16000000),
(2014, 'NYA', 'AL', 'mccanbr01', 17000000),
(2014, 'NYA', 'AL', 'murphjr01', 502700),
(2014, 'NYA', 'AL', 'phelpda01', 541425),
(2014, 'NYA', 'AL', 'roberbr01', 2000000),
(2014, 'NYA', 'AL', 'roberda08', 5215000),
(2014, 'NYA', 'AL', 'rominau01', 524800),
(2014, 'NYA', 'AL', 'ryanbr01', 2000000),
(2014, 'NYA', 'AL', 'sabatcc01', 23000000),
(2014, 'NYA', 'AL', 'soriaal01', 18000000),
(2014, 'NYA', 'AL', 'suzukic01', 6500000),
(2014, 'NYA', 'AL', 'tanakma01', 22000000),
(2014, 'NYA', 'AL', 'teixema01', 22500000),
(2014, 'NYA', 'AL', 'thornma01', 3500000),
(2014, 'NYA', 'AL', 'warread01', 527400),
(2014, 'NYM', 'NL', 'blackvi01', 502250),
(2014, 'NYM', 'NL', 'brownan02', 538045),
(2014, 'NYM', 'NL', 'colonba01', 9000000),
(2014, 'NYM', 'NL', 'darnatr01', 501560),
(2014, 'NYM', 'NL', 'dudalu01', 1637500),
(2014, 'NYM', 'NL', 'familje01', 502550),
(2014, 'NYM', 'NL', 'geedi01', 3625000),
(2014, 'NYM', 'NL', 'germego01', 504875),
(2014, 'NYM', 'NL', 'grandcu01', 13000000),
(2014, 'NYM', 'NL', 'lagarju01', 506636),
(2014, 'NYM', 'NL', 'lannajo01', 1500000),
(2014, 'NYM', 'NL', 'matsuda01', 1500000),
(2014, 'NYM', 'NL', 'mejiaje01', 509675),
(2014, 'NYM', 'NL', 'murphda08', 5700000),
(2014, 'NYM', 'NL', 'niesejo01', 5000000),
(2014, 'NYM', 'NL', 'parnebo01', 3700000),
(2014, 'NYM', 'NL', 'reckean01', 505340),
(2014, 'NYM', 'NL', 'ricesc01', 542500),
(2014, 'NYM', 'NL', 'satinjo01', 506809),
(2014, 'NYM', 'NL', 'tejadru01', 1100000),
(2014, 'NYM', 'NL', 'torreca01', 561875),
(2014, 'NYM', 'NL', 'valvejo01', 1000000),
(2014, 'NYM', 'NL', 'wheelza01', 512375),
(2014, 'NYM', 'NL', 'younger03', 1850000),
(2014, 'NYN', 'NL', 'davisik02', 3500000),
(2014, 'NYN', 'NL', 'wrighda03', 20000000),
(2014, 'NYN', 'NL', 'youngch04', 7250000),
(2014, 'OAK', 'AL', 'abadfe01', 525900),
(2014, 'OAK', 'AL', 'bartoda02', 1250000),
(2014, 'OAK', 'AL', 'callaal01', 4875000),
(2014, 'OAK', 'AL', 'cespeyo01', 10500000),
(2014, 'OAK', 'AL', 'chaveje01', 775000),
(2014, 'OAK', 'AL', 'cookry01', 505000),
(2014, 'OAK', 'AL', 'crispco01', 7500000),
(2014, 'OAK', 'AL', 'donaljo02', 500000),
(2014, 'OAK', 'AL', 'doolise01', 630000),
(2014, 'OAK', 'AL', 'gentrcr01', 1145000),
(2014, 'OAK', 'AL', 'grayso01', 502500),
(2014, 'OAK', 'AL', 'gregelu01', 5065000),
(2014, 'OAK', 'AL', 'jasojo01', 2300000),
(2014, 'OAK', 'AL', 'johnsji04', 10000000),
(2014, 'OAK', 'AL', 'kazmisc01', 7000000),
(2014, 'OAK', 'AL', 'lowrije01', 5250000),
(2014, 'OAK', 'AL', 'milonto01', 510000),
(2014, 'OAK', 'AL', 'mossbr01', 4100000),
(2014, 'OAK', 'AL', 'norride01', 505000),
(2014, 'OAK', 'AL', 'oflaher01', 1500000),
(2014, 'OAK', 'AL', 'oteroda01', 502500),
(2014, 'OAK', 'AL', 'puntoni01', 2750000),
(2014, 'OAK', 'AL', 'reddijo01', 2700000),
(2014, 'OAK', 'AL', 'scribev01', 505000),
(2014, 'OAK', 'AL', 'sogarer01', 510000),
(2014, 'OAK', 'AL', 'vogtst01', 502500),
(2014, 'PHI', 'NL', 'adamsmi03', 7000000),
(2014, 'PHI', 'NL', 'ascheco01', 500000),
(2014, 'PHI', 'NL', 'aumonph01', 500000),
(2014, 'PHI', 'NL', 'bastaan01', 2000000),
(2014, 'PHI', 'NL', 'browndo01', 550000),
(2014, 'PHI', 'NL', 'burneaj01', 15000000),
(2014, 'PHI', 'NL', 'byrdma01', 8000000),
(2014, 'PHI', 'NL', 'carmofa01', 4500000),
(2014, 'PHI', 'NL', 'defraju01', 513000),
(2014, 'PHI', 'NL', 'diekmja01', 515500),
(2014, 'PHI', 'NL', 'galvifr01', 500000),
(2014, 'PHI', 'NL', 'gonzami05', 3666667),
(2014, 'PHI', 'NL', 'gwynnto02', 900000),
(2014, 'PHI', 'NL', 'hamelco01', 22500000),
(2014, 'PHI', 'NL', 'hernace02', 500000),
(2014, 'PHI', 'NL', 'howarry01', 25000000),
(2014, 'PHI', 'NL', 'kendrky01', 7675000),
(2014, 'PHI', 'NL', 'leecl02', 25000000),
(2014, 'PHI', 'NL', 'lincobr01', 512300),
(2014, 'PHI', 'NL', 'martiet01', 500000),
(2014, 'PHI', 'NL', 'maybejo02', 1587500),
(2014, 'PHI', 'NL', 'nievewi01', 1125000),
(2014, 'PHI', 'NL', 'nixja01', 950000),
(2014, 'PHI', 'NL', 'papeljo01', 13000000),
(2014, 'PHI', 'NL', 'pettijo02', 500000),
(2014, 'PHI', 'NL', 'reverbe01', 1950000),
(2014, 'PHI', 'NL', 'rolliji01', 11000000),
(2014, 'PHI', 'NL', 'rosenbj01', 500000),
(2014, 'PHI', 'NL', 'rufda01', 500000),
(2014, 'PHI', 'NL', 'ruizca01', 8500000),
(2014, 'PHI', 'NL', 'ruppca01', 500000),
(2014, 'PHI', 'NL', 'utleych01', 15000000),
(2014, 'PIT', 'NL', 'alvarpe01', 4250000),
(2014, 'PIT', 'NL', 'barmecl01', 2000000),
(2014, 'PIT', 'NL', 'colege01', 512500),
(2014, 'PIT', 'NL', 'cumptbr01', 507000),
(2014, 'PIT', 'NL', 'gomezje01', 514500),
(2014, 'PIT', 'NL', 'grillja01', 4250000),
(2014, 'PIT', 'NL', 'harrijo05', 513000),
(2014, 'PIT', 'NL', 'liriafr01', 6000000),
(2014, 'PIT', 'NL', 'lockeje01', 513000),
(2014, 'PIT', 'NL', 'martest01', 500000),
(2014, 'PIT', 'NL', 'martiru01', 8500000),
(2014, 'PIT', 'NL', 'mazzavi01', 950000),
(2014, 'PIT', 'NL', 'mccutan01', 7250000),
(2014, 'PIT', 'NL', 'melanma01', 2595000),
(2014, 'PIT', 'NL', 'mercejo03', 515500),
(2014, 'PIT', 'NL', 'morribr01', 511500),
(2014, 'PIT', 'NL', 'mortoch02', 4000000),
(2014, 'PIT', 'NL', 'pimenst01', 505500),
(2014, 'PIT', 'NL', 'rodriwa01', 13000000),
(2014, 'PIT', 'NL', 'sanchga01', 2300000),
(2014, 'PIT', 'NL', 'sanchto01', 507000),
(2014, 'PIT', 'NL', 'snidetr01', 1200000),
(2014, 'PIT', 'NL', 'stewach01', 1000000),
(2014, 'PIT', 'NL', 'tabatjo01', 3000000),
(2014, 'PIT', 'NL', 'volqued01', 5000000),
(2014, 'PIT', 'NL', 'walkene01', 5750000),
(2014, 'PIT', 'NL', 'watsoto01', 518500),
(2014, 'PIT', 'NL', 'wilsoju10', 515000),
(2014, 'SDN', 'NL', 'alonsyo01', 980000),
(2014, 'SDN', 'NL', 'amarial01', 511100),
(2014, 'SDN', 'NL', 'benoijo01', 6000000),
(2014, 'SDN', 'NL', 'blankky01', 988000),
(2014, 'SDN', 'NL', 'cabreev01', 2450000),
(2014, 'SDN', 'NL', 'cashnan01', 2400000),
(2014, 'SDN', 'NL', 'denorch01', 2250000),
(2014, 'SDN', 'NL', 'erlinro01', 504500),
(2014, 'SDN', 'NL', 'grandya01', 792000),
(2014, 'SDN', 'NL', 'gyorkje01', 510900),
(2014, 'SDN', 'NL', 'headlch01', 10525000),
(2014, 'SDN', 'NL', 'kenneia01', 6100000),
(2014, 'SDN', 'NL', 'maybica01', 5000000),
(2014, 'SDN', 'NL', 'medicto01', 501200),
(2014, 'SDN', 'NL', 'nadyxa01', 775000),
(2014, 'SDN', 'NL', 'pattotr01', 1275000),
(2014, 'SDN', 'NL', 'quentca01', 9500000),
(2014, 'SDN', 'NL', 'riverre01', 506400),
(2014, 'SDN', 'NL', 'rossty01', 1980000),
(2014, 'SDN', 'NL', 'smithse01', 4500000),
(2014, 'SDN', 'NL', 'staufti01', 1600000),
(2014, 'SDN', 'NL', 'streehu01', 7000000),
(2014, 'SDN', 'NL', 'stulter01', 2750000),
(2014, 'SDN', 'NL', 'thayeda01', 515800),
(2014, 'SDN', 'NL', 'torreal01', 509000),
(2014, 'SDN', 'NL', 'venabwi01', 4250000),
(2014, 'SDN', 'NL', 'vinceni01', 510200),
(2014, 'SDN', 'NL', 'wielajo01', 501600),
(2014, 'SEA', 'AL', 'ackledu01', 1700000),
(2014, 'SEA', 'AL', 'beimejo01', 850000),
(2014, 'SEA', 'AL', 'bloomwi01', 2800000),
(2014, 'SEA', 'AL', 'buckjo01', 1000000),
(2014, 'SEA', 'AL', 'canoro01', 24000000),
(2014, 'SEA', 'AL', 'farquda01', 510800),
(2014, 'SEA', 'AL', 'frankni01', 510200),
(2014, 'SEA', 'AL', 'furbuch01', 750000),
(2014, 'SEA', 'AL', 'hartco01', 6000000),
(2014, 'SEA', 'AL', 'hernafe02', 22857000),
(2014, 'SEA', 'AL', 'iwakuhi01', 6500000),
(2014, 'SEA', 'AL', 'jacksau01', 6000000),
(2014, 'SEA', 'AL', 'maurebr01', 504600),
(2014, 'SEA', 'AL', 'medinyo01', 512600),
(2014, 'SEA', 'AL', 'millebr02', 510100),
(2014, 'SEA', 'AL', 'morrilo01', 1750000),
(2014, 'SEA', 'AL', 'paxtoja01', 503500),
(2014, 'SEA', 'AL', 'ramirer02', 511800),
(2014, 'SEA', 'AL', 'rodnefe01', 7000000),
(2014, 'SEA', 'AL', 'saundmi01', 2300000),
(2014, 'SEA', 'AL', 'seageky01', 540100),
(2014, 'SEA', 'AL', 'smoakju01', 2637500),
(2014, 'SEA', 'AL', 'wilheto01', 528800),
(2014, 'SEA', 'AL', 'youngch03', 1250000),
(2014, 'SEA', 'AL', 'zuninmi01', 504100),
(2014, 'SFG', 'NL', 'abreuto01', 745000),
(2014, 'SFG', 'NL', 'adriaeh01', 500500),
(2014, 'SFG', 'NL', 'affelje01', 6000000),
(2014, 'SFG', 'NL', 'ariasjo01', 1150000),
(2014, 'SFG', 'NL', 'beltbr01', 2900000),
(2014, 'SFG', 'NL', 'blancgr01', 2525000),
(2014, 'SFG', 'NL', 'bumgama01', 3750000),
(2014, 'SFG', 'NL', 'colvity01', 1000000),
(2014, 'SFG', 'NL', 'crawfbr01', 560000),
(2014, 'SFG', 'NL', 'garcija01', 4500000),
(2014, 'SFG', 'NL', 'gutieju01', 850000),
(2014, 'SFG', 'NL', 'hudsoti01', 11000000),
(2014, 'SFG', 'NL', 'linceti01', 17000000),
(2014, 'SFG', 'NL', 'lopezja02', 4000000),
(2014, 'SFG', 'NL', 'machije01', 505000),
(2014, 'SFG', 'NL', 'morsemi01', 6000000),
(2014, 'SFG', 'NL', 'paganan01', 10250000),
(2014, 'SFG', 'NL', 'peavyja01', 14500000),
(2014, 'SFG', 'NL', 'pencehu01', 16000000),
(2014, 'SFG', 'NL', 'perezju02', 501000),
(2014, 'SFG', 'NL', 'petityu01', 845000),
(2014, 'SFG', 'NL', 'poseybu01', 12500000),
(2014, 'SFG', 'NL', 'romose01', 5500000),
(2014, 'SFG', 'NL', 'sanchhe01', 512000),
(2014, 'SFG', 'NL', 'sandopa01', 8250000),
(2014, 'SFG', 'NL', 'scutama01', 6666667),
(2014, 'SFG', 'NL', 'vogelry01', 5000000),
(2014, 'SFN', 'NL', 'cainma01', 20000000),
(2014, 'SLN', 'NL', 'adamsma01', 516000),
(2014, 'SLN', 'NL', 'bourjpe01', 1200000),
(2014, 'SLN', 'NL', 'butleke01', 500000),
(2014, 'SLN', 'NL', 'carpema01', 1000000),
(2014, 'SLN', 'NL', 'choatra01', 3000000),
(2014, 'SLN', 'NL', 'cruzto03', 521000),
(2014, 'SLN', 'NL', 'descada01', 1290000),
(2014, 'SLN', 'NL', 'ellisma01', 5250000),
(2014, 'SLN', 'NL', 'garcija02', 7750000),
(2014, 'SLN', 'NL', 'hollima01', 17000000),
(2014, 'SLN', 'NL', 'jayjo02', 3250000),
(2014, 'SLN', 'NL', 'kellyjo05', 523000),
(2014, 'SLN', 'NL', 'kozmape01', 518000),
(2014, 'SLN', 'NL', 'lackejo01', 15250000),
(2014, 'SLN', 'NL', 'lynnla01', 535000),
(2014, 'SLN', 'NL', 'manesse01', 509000),
(2014, 'SLN', 'NL', 'martica04', 505000),
(2014, 'SLN', 'NL', 'millesh01', 521000),
(2014, 'SLN', 'NL', 'molinya01', 15000000),
(2014, 'SLN', 'NL', 'motteja01', 7500000),
(2014, 'SLN', 'NL', 'neshepa01', 1000000),
(2014, 'SLN', 'NL', 'peraljh01', 15500000),
(2014, 'SLN', 'NL', 'robinsh01', 519000),
(2014, 'SLN', 'NL', 'rosentr01', 521000),
(2014, 'SLN', 'NL', 'siegrke01', 505000),
(2014, 'SLN', 'NL', 'wachami01', 510000),
(2014, 'SLN', 'NL', 'wainwad01', 19500000),
(2014, 'SLN', 'NL', 'wongko01', 500000),
(2014, 'TBA', 'AL', 'archech01', 500000),
(2014, 'TBA', 'AL', 'balfogr01', 4000000),
(2014, 'TBA', 'AL', 'bellhe01', 9000000),
(2014, 'TBA', 'AL', 'cobbal01', 516900),
(2014, 'TBA', 'AL', 'dejesda01', 4250000),
(2014, 'TBA', 'AL', 'escobyu01', 5000000),
(2014, 'TBA', 'AL', 'forsylo01', 509700),
(2014, 'TBA', 'AL', 'gomesbr01', 507800),
(2014, 'TBA', 'AL', 'guyerbr01', 501200),
(2014, 'TBA', 'AL', 'hanigry01', 2750000),
(2014, 'TBA', 'AL', 'jennide01', 517000),
(2014, 'TBA', 'AL', 'joycema01', 3700000),
(2014, 'TBA', 'AL', 'loneyja01', 1000000),
(2014, 'TBA', 'AL', 'longoev01', 7500000),
(2014, 'TBA', 'AL', 'luekejo01', 504200),
(2014, 'TBA', 'AL', 'mcgeeja01', 1450000),
(2014, 'TBA', 'AL', 'molinjo01', 1750000),
(2014, 'TBA', 'AL', 'myerswi01', 504200),
(2014, 'TBA', 'AL', 'nunezle01', 1500000),
(2014, 'TBA', 'AL', 'odorija01', 503100),
(2014, 'TBA', 'AL', 'peraljo01', 3000000),
(2014, 'TBA', 'AL', 'priceda01', 14000000),
(2014, 'TBA', 'AL', 'ramosce01', 750000),
(2014, 'TBA', 'AL', 'rodrise01', 1475000),
(2014, 'TBA', 'AL', 'zobribe01', 7000000),
(2014, 'TEX', 'AL', 'adducji02', 501000),
(2014, 'TEX', 'AL', 'andruel01', 6475000),
(2014, 'TEX', 'AL', 'arencjp01', 1800000),
(2014, 'TEX', 'AL', 'beltrad01', 17000000),
(2014, 'TEX', 'AL', 'chiriro01', 502232),
(2014, 'TEX', 'AL', 'choicmi01', 502000),
(2014, 'TEX', 'AL', 'choosh01', 14000000),
(2014, 'TEX', 'AL', 'cottsne01', 2200000),
(2014, 'TEX', 'AL', 'darviyu01', 10000000),
(2014, 'TEX', 'AL', 'felizne01', 3000000),
(2014, 'TEX', 'AL', 'fieldpr01', 24000000),
(2014, 'TEX', 'AL', 'frasoja01', 1750000),
(2014, 'TEX', 'AL', 'gimench01', 510000),
(2014, 'TEX', 'AL', 'martile01', 3750000),
(2014, 'TEX', 'AL', 'morelmi01', 2650000),
(2014, 'TEX', 'AL', 'murphdo01', 825000),
(2014, 'TEX', 'AL', 'ogandal01', 2625000),
(2014, 'TEX', 'AL', 'perezma02', 750000),
(2014, 'TEX', 'AL', 'riosal01', 12500000),
(2014, 'TEX', 'AL', 'rosalad01', 750000),
(2014, 'TEX', 'AL', 'rossro01', 512745),
(2014, 'TEX', 'AL', 'sotoge01', 3050000),
(2014, 'TEX', 'AL', 'tollesh01', 502082),
(2014, 'TEX', 'AL', 'willije01', 2100000),
(2014, 'TOR', 'AL', 'bautijo02', 14000000),
(2014, 'TOR', 'AL', 'cabreme01', 8000000),
(2014, 'TOR', 'AL', 'cecilbr01', 1300000),
(2014, 'TOR', 'AL', 'delabst01', 515900),
(2014, 'TOR', 'AL', 'dickera01', 12000000),
(2014, 'TOR', 'AL', 'encared01', 9000000),
(2014, 'TOR', 'AL', 'goinsry01', 501900),
(2014, 'TOR', 'AL', 'happja01', 5200000),
(2014, 'TOR', 'AL', 'hutchdr01', 503200),
(2014, 'TOR', 'AL', 'izturma01', 3000000),
(2014, 'TOR', 'AL', 'janssca01', 4000000),
(2014, 'TOR', 'AL', 'kratzer01', 510200),
(2014, 'TOR', 'AL', 'lawribr01', 516100),
(2014, 'TOR', 'AL', 'lindad01', 7000000),
(2014, 'TOR', 'AL', 'loupaa01', 512400),
(2014, 'TOR', 'AL', 'mcgowdu01', 1500000),
(2014, 'TOR', 'AL', 'morrobr01', 8000000),
(2014, 'TOR', 'AL', 'navardi01', 3000000),
(2014, 'TOR', 'AL', 'rasmuco01', 7000000),
(2014, 'TOR', 'AL', 'redmoto01', 505700),
(2014, 'TOR', 'AL', 'reyesjo01', 16000000),
(2014, 'TOR', 'AL', 'rogeres01', 1850000),
(2014, 'TOR', 'AL', 'santose01', 3750000),
(2014, 'TOR', 'AL', 'sierrmo01', 504700),
(2014, 'TOR', 'AL', 'tholejo01', 1250000),
(2014, 'WAS', 'NL', 'blevije01', 1675000),
(2014, 'WAS', 'NL', 'cedenxa01', 507800),
(2014, 'WAS', 'NL', 'clippty01', 5875000),
(2014, 'WAS', 'NL', 'desmoia01', 6500000),
(2014, 'WAS', 'NL', 'detwiro01', 3000000),
(2014, 'WAS', 'NL', 'espinda01', 540580),
(2014, 'WAS', 'NL', 'fistedo01', 7200000),
(2014, 'WAS', 'NL', 'frandke01', 900000),
(2014, 'WAS', 'NL', 'gonzagi01', 8500000),
(2014, 'WAS', 'NL', 'hairssc01', 2500000),
(2014, 'WAS', 'NL', 'harpebr03', 2150000),
(2014, 'WAS', 'NL', 'jordata01', 504300),
(2014, 'WAS', 'NL', 'koberje01', 501000),
(2014, 'WAS', 'NL', 'larocad01', 12000000),
(2014, 'WAS', 'NL', 'leonsa01', 501000),
(2014, 'WAS', 'NL', 'lobatjo01', 900000),
(2014, 'WAS', 'NL', 'matthry01', 520000),
(2014, 'WAS', 'NL', 'mclouna01', 5000000),
(2014, 'WAS', 'NL', 'moorety01', 507900),
(2014, 'WAS', 'NL', 'ramoswi01', 2095000),
(2014, 'WAS', 'NL', 'rendoan01', 1800000),
(2014, 'WAS', 'NL', 'roarkta01', 506100),
(2014, 'WAS', 'NL', 'soriara01', 11000000),
(2014, 'WAS', 'NL', 'spande01', 6500000),
(2014, 'WAS', 'NL', 'stammcr01', 1375000),
(2014, 'WAS', 'NL', 'storedr01', 3450000),
(2014, 'WAS', 'NL', 'strasst01', 3975000),
(2014, 'WAS', 'NL', 'werthja01', 20000000),
(2014, 'WAS', 'NL', 'zimmejo02', 7500000),
(2014, 'WAS', 'NL', 'zimmery01', 14000000);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
