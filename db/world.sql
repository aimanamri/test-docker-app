-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 172.20.0.2:3306
-- Generation Time: May 14, 2023 at 07:52 PM
-- Server version: 8.0.33
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `world`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int NOT NULL,
  `city` varchar(250) NOT NULL,
  `country` varchar(250) NOT NULL,
  `coordinate` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `city`, `country`, `coordinate`) VALUES
(1, 'Kuala Lumpur', 'Malaysia', '3.1390° N, 101.6869° E'),
(2, 'Seoul', 'Korea', '37.5665° N, 126.9780° E'),
(3, 'Tokyo', 'Japan', '35.6895° N, 139.6917° E'),
(4, 'London', 'United Kingdom', '51.5074° N, 0.1278° W'),
(5, 'New York City', 'United States', '40.7128° N, 74.0060° W'),
(6, 'Paris', 'France', '48.8566° N, 2.3522° E'),
(7, 'Sydney', 'Australia', '33.8688° S, 151.2093° E'),
(8, 'Los Angeles', 'United States', '34.0522° N, 118.2437° W'),
(9, 'Berlin', 'Germany', '52.5200° N, 13.4050° E'),
(10, 'Rome', 'Italy', '41.9028° N, 12.4964° E'),
(11, 'Beijing', 'China', '39.9042° N, 116.4074° E'),
(12, 'Moscow', 'Russia', '55.7512° N, 37.6184° E'),
(13, 'Cairo', 'Egypt', '30.0444° N, 31.2357° E'),
(14, 'Rio de Janeiro', 'Brazil', '22.9068° S, 43.1729° W'),
(15, 'Toronto', 'Canada', '43.6510° N, 79.3470° W'),
(16, 'Mumbai', 'India', '19.0760° N, 72.8777° E'),
(17, 'Mexico City', 'Mexico', '19.4326° N, 99.1332° W'),
(18, 'Madrid', 'Spain', '40.4168° N, 3.7038° W'),
(19, 'Lima', 'Peru', '12.0464° S, 77.0428° W'),
(20, 'Nairobi', 'Kenya', '1.2921° S, 36.8219° E'),
(21, 'Stockholm', 'Sweden', '59.3293° N, 18.0686° E'),
(22, 'Dubai', 'United Arab Emirates', '25.2048° N, 55.2708° E'),
(23, 'Bangkok', 'Thailand', '13.7563° N, 100.5018° E'),
(24, 'Buenos Aires', 'Argentina', '34.6037° S, 58.3816° W'),
(25, 'Amsterdam', 'Netherlands', '52.3702° N, 4.8952° E'),
(26, 'Helsinki', 'Finland', '60.1699° N, 24.9384° E'),
(27, 'Athens', 'Greece', '37.9838° N, 23.7275° E'),
(28, 'Copenhagen', 'Denmark', '55.6761° N, 12.5683° E'),
(29, 'Singapore', 'Singapore', '1.3521° N, 103.8198° E'),
(30, 'Havana', 'Cuba', '23.1136° N, 82.3666° W'),
(31, 'Prague', 'Czech Republic', '50.0755° N, 14.4378° E'),
(32, 'Oslo', 'Norway', '59.9139° N, 10.7522° E'),
(33, 'Zurich', 'Switzerland', '47.3769° N, 8.5417° E'),
(34, 'Vienna', 'Austria', '48.2085° N 16.3721° E');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `countrycode` char(3) NOT NULL,
  `countryname` varchar(200) NOT NULL,
  `code` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`countrycode`, `countryname`, `code`) VALUES
('ABW', 'Aruba', 'AW'),
('AFG', 'Afghanistan', 'AF'),
('AGO', 'Angola', 'AO'),
('AIA', 'Anguilla', 'AI'),
('ALA', 'Åland', 'AX'),
('ALB', 'Albania', 'AL'),
('AND', 'Andorra', 'AD'),
('ARE', 'United Arab Emirates', 'AE'),
('ARG', 'Argentina', 'AR'),
('ARM', 'Armenia', 'AM'),
('ASM', 'American Samoa', 'AS'),
('ATA', 'Antarctica', 'AQ'),
('ATF', 'French Southern Territories', 'TF'),
('ATG', 'Antigua and Barbuda', 'AG'),
('AUS', 'Australia', 'AU'),
('AUT', 'Austria', 'AT'),
('AZE', 'Azerbaijan', 'AZ'),
('BDI', 'Burundi', 'BI'),
('BEL', 'Belgium', 'BE'),
('BEN', 'Benin', 'BJ'),
('BES', 'Bonaire', 'BQ'),
('BFA', 'Burkina Faso', 'BF'),
('BGD', 'Bangladesh', 'BD'),
('BGR', 'Bulgaria', 'BG'),
('BHR', 'Bahrain', 'BH'),
('BHS', 'Bahamas', 'BS'),
('BIH', 'Bosnia and Herzegovina', 'BA'),
('BLM', 'Saint Barthélemy', 'BL'),
('BLR', 'Belarus', 'BY'),
('BLZ', 'Belize', 'BZ'),
('BMU', 'Bermuda', 'BM'),
('BOL', 'Bolivia', 'BO'),
('BRA', 'Brazil', 'BR'),
('BRB', 'Barbados', 'BB'),
('BRN', 'Brunei', 'BN'),
('BTN', 'Bhutan', 'BT'),
('BVT', 'Bouvet Island', 'BV'),
('BWA', 'Botswana', 'BW'),
('CAF', 'Central African Republic', 'CF'),
('CAN', 'Canada', 'CA'),
('CCK', 'Cocos [Keeling] Islands', 'CC'),
('CHE', 'Switzerland', 'CH'),
('CHL', 'Chile', 'CL'),
('CHN', 'China', 'CN'),
('CIV', 'Ivory Coast', 'CI'),
('CMR', 'Cameroon', 'CM'),
('COD', 'Democratic Republic of the Congo', 'CD'),
('COG', 'Republic of the Congo', 'CG'),
('COK', 'Cook Islands', 'CK'),
('COL', 'Colombia', 'CO'),
('COM', 'Comoros', 'KM'),
('CPV', 'Cape Verde', 'CV'),
('CRI', 'Costa Rica', 'CR'),
('CUB', 'Cuba', 'CU'),
('CUW', 'Curacao', 'CW'),
('CXR', 'Christmas Island', 'CX'),
('CYM', 'Cayman Islands', 'KY'),
('CYP', 'Cyprus', 'CY'),
('CZE', 'Czech Republic', 'CZ'),
('DEU', 'Germany', 'DE'),
('DJI', 'Djibouti', 'DJ'),
('DMA', 'Dominica', 'DM'),
('DNK', 'Denmark', 'DK'),
('DOM', 'Dominican Republic', 'DO'),
('DZA', 'Algeria', 'DZ'),
('ECU', 'Ecuador', 'EC'),
('EGY', 'Egypt', 'EG'),
('ERI', 'Eritrea', 'ER'),
('ESH', 'Western Sahara', 'EH'),
('ESP', 'Spain', 'ES'),
('EST', 'Estonia', 'EE'),
('ETH', 'Ethiopia', 'ET'),
('FIN', 'Finland', 'FI'),
('FJI', 'Fiji', 'FJ'),
('FLK', 'Falkland Islands', 'FK'),
('FRA', 'France', 'FR'),
('FRO', 'Faroe Islands', 'FO'),
('FSM', 'Micronesia', 'FM'),
('GAB', 'Gabon', 'GA'),
('GBR', 'United Kingdom', 'GB'),
('GEO', 'Georgia', 'GE'),
('GGY', 'Guernsey', 'GG'),
('GHA', 'Ghana', 'GH'),
('GIB', 'Gibraltar', 'GI'),
('GIN', 'Guinea', 'GN'),
('GLP', 'Guadeloupe', 'GP'),
('GMB', 'Gambia', 'GM'),
('GNB', 'Guinea-Bissau', 'GW'),
('GNQ', 'Equatorial Guinea', 'GQ'),
('GRC', 'Greece', 'GR'),
('GRD', 'Grenada', 'GD'),
('GRL', 'Greenland', 'GL'),
('GTM', 'Guatemala', 'GT'),
('GUF', 'French Guiana', 'GF'),
('GUM', 'Guam', 'GU'),
('GUY', 'Guyana', 'GY'),
('HKG', 'Hong Kong', 'HK'),
('HMD', 'Heard Island and McDonald Islands', 'HM'),
('HND', 'Honduras', 'HN'),
('HRV', 'Croatia', 'HR'),
('HTI', 'Haiti', 'HT'),
('HUN', 'Hungary', 'HU'),
('IDN', 'Indonesia', 'ID'),
('IMN', 'Isle of Man', 'IM'),
('IND', 'India', 'IN'),
('IOT', 'British Indian Ocean Territory', 'IO'),
('IRL', 'Ireland', 'IE'),
('IRN', 'Iran', 'IR'),
('IRQ', 'Iraq', 'IQ'),
('ISL', 'Iceland', 'IS'),
('ISR', 'Israel', 'IL'),
('ITA', 'Italy', 'IT'),
('JAM', 'Jamaica', 'JM'),
('JEY', 'Jersey', 'JE'),
('JOR', 'Jordan', 'JO'),
('JPN', 'Japan', 'JP'),
('KAZ', 'Kazakhstan', 'KZ'),
('KEN', 'Kenya', 'KE'),
('KGZ', 'Kyrgyzstan', 'KG'),
('KHM', 'Cambodia', 'KH'),
('KIR', 'Kiribati', 'KI'),
('KNA', 'Saint Kitts and Nevis', 'KN'),
('KOR', 'South Korea', 'KR'),
('KWT', 'Kuwait', 'KW'),
('LAO', 'Laos', 'LA'),
('LBN', 'Lebanon', 'LB'),
('LBR', 'Liberia', 'LR'),
('LBY', 'Libya', 'LY'),
('LCA', 'Saint Lucia', 'LC'),
('LIE', 'Liechtenstein', 'LI'),
('LKA', 'Sri Lanka', 'LK'),
('LSO', 'Lesotho', 'LS'),
('LTU', 'Lithuania', 'LT'),
('LUX', 'Luxembourg', 'LU'),
('LVA', 'Latvia', 'LV'),
('MAC', 'Macao', 'MO'),
('MAF', 'Saint Martin', 'MF'),
('MAR', 'Morocco', 'MA'),
('MCO', 'Monaco', 'MC'),
('MDA', 'Moldova', 'MD'),
('MDG', 'Madagascar', 'MG'),
('MDV', 'Maldives', 'MV'),
('MEX', 'Mexico', 'MX'),
('MHL', 'Marshall Islands', 'MH'),
('MKD', 'Macedonia', 'MK'),
('MLI', 'Mali', 'ML'),
('MLT', 'Malta', 'MT'),
('MMR', 'Myanmar [Burma]', 'MM'),
('MNE', 'Montenegro', 'ME'),
('MNG', 'Mongolia', 'MN'),
('MNP', 'Northern Mariana Islands', 'MP'),
('MOZ', 'Mozambique', 'MZ'),
('MRT', 'Mauritania', 'MR'),
('MSR', 'Montserrat', 'MS'),
('MTQ', 'Martinique', 'MQ'),
('MUS', 'Mauritius', 'MU'),
('MWI', 'Malawi', 'MW'),
('MYS', 'Malaysia', 'MY'),
('MYT', 'Mayotte', 'YT'),
('NAM', 'Namibia', 'NA'),
('NCL', 'New Caledonia', 'NC'),
('NER', 'Niger', 'NE'),
('NFK', 'Norfolk Island', 'NF'),
('NGA', 'Nigeria', 'NG'),
('NIC', 'Nicaragua', 'NI'),
('NIU', 'Niue', 'NU'),
('NLD', 'Netherlands', 'NL'),
('NOR', 'Norway', 'NO'),
('NPL', 'Nepal', 'NP'),
('NRU', 'Nauru', 'NR'),
('NZL', 'New Zealand', 'NZ'),
('OMN', 'Oman', 'OM'),
('PAK', 'Pakistan', 'PK'),
('PAN', 'Panama', 'PA'),
('PCN', 'Pitcairn Islands', 'PN'),
('PER', 'Peru', 'PE'),
('PHL', 'Philippines', 'PH'),
('PLW', 'Palau', 'PW'),
('PNG', 'Papua New Guinea', 'PG'),
('POL', 'Poland', 'PL'),
('PRI', 'Puerto Rico', 'PR'),
('PRK', 'North Korea', 'KP'),
('PRT', 'Portugal', 'PT'),
('PRY', 'Paraguay', 'PY'),
('PSE', 'Palestine', 'PS'),
('PYF', 'French Polynesia', 'PF'),
('QAT', 'Qatar', 'QA'),
('REU', 'Réunion', 'RE'),
('ROU', 'Romania', 'RO'),
('RUS', 'Russia', 'RU'),
('RWA', 'Rwanda', 'RW'),
('SAU', 'Saudi Arabia', 'SA'),
('SDN', 'Sudan', 'SD'),
('SEN', 'Senegal', 'SN'),
('SGP', 'Singapore', 'SG'),
('SGS', 'South Georgia and the South Sandwich Islands', 'GS'),
('SHN', 'Saint Helena', 'SH'),
('SJM', 'Svalbard and Jan Mayen', 'SJ'),
('SLB', 'Solomon Islands', 'SB'),
('SLE', 'Sierra Leone', 'SL'),
('SLV', 'El Salvador', 'SV'),
('SMR', 'San Marino', 'SM'),
('SOM', 'Somalia', 'SO'),
('SPM', 'Saint Pierre and Miquelon', 'PM'),
('SRB', 'Serbia', 'RS'),
('SSD', 'South Sudan', 'SS'),
('STP', 'São Tomé and Príncipe', 'ST'),
('SUR', 'Suriname', 'SR'),
('SVK', 'Slovakia', 'SK'),
('SVN', 'Slovenia', 'SI'),
('SWE', 'Sweden', 'SE'),
('SWZ', 'Swaziland', 'SZ'),
('SXM', 'Sint Maarten', 'SX'),
('SYC', 'Seychelles', 'SC'),
('SYR', 'Syria', 'SY'),
('TCA', 'Turks and Caicos Islands', 'TC'),
('TCD', 'Chad', 'TD'),
('TGO', 'Togo', 'TG'),
('THA', 'Thailand', 'TH'),
('TJK', 'Tajikistan', 'TJ'),
('TKL', 'Tokelau', 'TK'),
('TKM', 'Turkmenistan', 'TM'),
('TLS', 'East Timor', 'TL'),
('TON', 'Tonga', 'TO'),
('TTO', 'Trinidad and Tobago', 'TT'),
('TUN', 'Tunisia', 'TN'),
('TUR', 'Turkey', 'TR'),
('TUV', 'Tuvalu', 'TV'),
('TWN', 'Taiwan', 'TW'),
('TZA', 'Tanzania', 'TZ'),
('UGA', 'Uganda', 'UG'),
('UKR', 'Ukraine', 'UA'),
('UMI', 'U.S. Minor Outlying Islands', 'UM'),
('URY', 'Uruguay', 'UY'),
('USA', 'United States', 'US'),
('UZB', 'Uzbekistan', 'UZ'),
('VAT', 'Vatican City', 'VA'),
('VCT', 'Saint Vincent and the Grenadines', 'VC'),
('VEN', 'Venezuela', 'VE'),
('VGB', 'British Virgin Islands', 'VG'),
('VIR', 'U.S. Virgin Islands', 'VI'),
('VNM', 'Vietnam', 'VN'),
('VUT', 'Vanuatu', 'VU'),
('WLF', 'Wallis and Futuna', 'WF'),
('WSM', 'Samoa', 'WS'),
('XKX', 'Kosovo', 'XK'),
('YEM', 'Yemen', 'YE'),
('ZAF', 'South Africa', 'ZA'),
('ZMB', 'Zambia', 'ZM'),
('ZWE', 'Zimbabwe', 'ZW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`countrycode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
