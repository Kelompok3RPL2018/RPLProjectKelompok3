-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2018 at 09:32 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` varchar(8) NOT NULL,
  `admin_name` varchar(24) NOT NULL,
  `password` varchar(6) NOT NULL,
  `contact` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `password`, `contact`) VALUES
('M0516021', 'Fikri Hashfi Nashrullah', 'fik021', 2147483647),
('M0516038', 'Regina Hanna Yunida', 'han038', 2147483647),
('M0517059', 'Nurul Rofli Nasuha', 'rof059', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `customer_id` varchar(24) NOT NULL,
  `instruments` varchar(10) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `type` varchar(10) NOT NULL,
  `pieces` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `contact_no` int(12) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `contact_no` int(12) NOT NULL,
  `gender` text NOT NULL,
  `customer_email` varchar(40) NOT NULL,
  `address` varchar(50) NOT NULL,
  `username` varchar(8) NOT NULL,
  `password` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `CF_id` varchar(8) NOT NULL,
  `CF_name` varchar(24) NOT NULL,
  `contact_no` int(12) NOT NULL,
  `opinion` text NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `instrument`
--

CREATE TABLE `instrument` (
  `instruments` varchar(20) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `type` varchar(50) NOT NULL,
  `color` varchar(20) NOT NULL,
  `price` int(6) NOT NULL,
  `file_location` varchar(50) NOT NULL,
  `file_name` varchar(30) NOT NULL,
  `description` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instrument`
--

INSERT INTO `instrument` (`instruments`, `brand`, `type`, `color`, `price`, `file_location`, `file_name`, `description`) VALUES
('Electric Guitar', 'Fender', 'American Original \'50s Telecaster', 'Original Black', 25000, '', '', ''),
('Electric Guitar', 'Fender', 'American Original \'60s Telecaster', ' Red White', 25000, '', '', ''),
('Bass', 'Fender', 'American Professional Precision', 'Antique Olive', 25000, '', '', ''),
('Electric Guitar', 'Fender', 'American Professional Stratocaster', 'Red White', 25000, '', '', ''),
('Acoustic Guitar ', 'Martin', 'D-18 Authentic 1939', 'Original', 15000, '', '', 'Based on a 1939 D-18 in our museum, this guitar features genuine mahogany back and sides, an Adirondack spruce top, using an authentic circa 1939 bracing pattern. Period-correct \"18\" Authentic-style appointments, with an Authentic neck barrel and heel, complete this piece. Martin’s new Vintage Tone System (VTS) is employed for the top and braces.\r\n\r\nThe new Martin Vintage Tone System (VTS) uses a unique recipe that is based on the historic torrefaction system. The VTS acts much like a time machine in which Martin can target certain time periods and age the top/braces to that era. This focused method allows Martin’s craftsmen and women to recreate not only the pleasing visual aesthetics of a vintage guitar, but also reproduce the special tones previously reserved for vintage instruments.'),
('Acoustic Guitar', 'Martin', 'D-35 Johnny Cash', 'Black', 15000, '', '', 'Perhaps Johnny Cash’s most favorite Martin guitar (and he played many) was a specially made D-35, his – and Martin’s – first guitar with a polished black finish. Perfect for \"the man in black,\" Cash played this guitar on stage for nearly 20 years. Now Martin has paid tribute to this musical legend with a close facsimile of that special instrument: the D-35 Johnny Cash Commemorative.'),
('Acoustic Guitar', 'Martin', 'D-420', 'Original', 15000, '', '', 'This Dreadnought features a Sitka spruce top that has been printed with a custom illustration by fine artist, Robert Goetzl. The D-420 is crafted with mahogany back and sides, a modified low oval neck with high performance taper, simple dovetail neck joint, bone nut and saddle, ebony bridge and an ebony fingerboard. A great sounding, unique looking guitar that has a rich, clean and articulate tone with great sustain and clarity.'),
('Acoustic Guitar', 'Martin', 'D-45 John Mayer', 'Original', 15000, '', '', 'This stunning dreadnought pays tribute to one of today’s top guitarists with one of Martin’s most prestigious models, the D-45. Crafted with Guatemalan Rosewood back and sides and an Engelmann spruce top with aging toner and forward shifted Adirondack X braces, this tonal masterpiece was designed by John Mayer and created by the master craftspeople in the Martin Custom Shop. Boasting a full thickness neck with hexagon inlays, bone nut and saddle, and gold open gear tuners, the D-45 John Mayer also features an interior label personally signed by the 7 time Grammy Award winning artist. Limited to 45 instruments.'),
('Bass', 'Fender', 'Deluxe Active Jazz V Okoume', 'Original', 25000, '', '', ''),
('Electric Guitar', 'Fender', 'Deluxe Roadhouse Stratocaster', 'Mystic Ice Blue', 25000, '', '', ''),
('Bass', 'Fender', 'Duff McKagan Precision', 'Pearl White', 25000, '', '', 'Designed for the man who has held down the low end for Guns N\' Roses, Velvet Revolver, Jane\'s Addiction and many others, the Duff McKagan Precision Bass is rock \'n\' roll. Based on the Pearl White instrument McKagan has played since the first GNR album, the Duff McKagan Signature model is a distinctive, sleek and full-sounding reissue of the \'80s-era Jazz Bass® Special, which combined a Precision Bass body with a Jazz Bass neck and pickups from both instruments.\r\n\r\nFEATURES : Pearl White body (no pickguard) with gloss black neck and headstock. Vintage-style split single-coil Precision Bass middle pickup and Seymour Duncan® STKJ2B Jazz Bass bridge pickup. Three-way toggle pickup switch and volume control knob for each pickup. TBX™ tone circuit (Treble Bass Expander). Vintage-style bridge with four single-groove saddles. Custom-engraved skull-and-crossbones neck plate.'),
('Acoustic Guitar', 'Martin', 'Ed Sheeran ÷ Signature', 'Original', 15000, '', '', 'After selling millions of records and taking a year-long creative hiatus, Ed Sheeran has re-emerged in 2017 with a new chart-busting album and his latest Martin Custom model, the Ed Sheeran ÷ Signature Edition. Built upon Ed’s love of the LX1E LITTLE MARTIN, and continuing with his mathematical themed album cover art, the “Ed Sheeran 3” forms a trilogy of signature guitars that have supported Ed along his soaring career path to pop stardom. Featuring a solid Sitka spruce top etched with Ed’s album art and a blue soundhole rosette to match, the Ed Sheeran ÷ Signature Edition is constructed with mahogany HPL back and sides and sports blue ÷ symbols across the fingerboard and headstock. Equipped with a Custom interior label, Fishman Sonitone electronics and a gig bag, this little Martin with a big sound is ready to hit the stage, just as Ed intended.'),
('Electric Guitar', 'Gibson', 'ES-275 Custom', 'Metallic Series', 25000, '', '', ''),
('Electric Guitar', 'Gibson', 'ES-335 Figured', 'Turqoise', 25000, '', '', ''),
('Electric Guitar', 'Gibson', 'Les Paul Slash', 'Anaconda Burst', 25000, '', '', ''),
('Cajon', 'Pearl', 'Mach 2 Birch PBC511M2', 'Original Wood', 15000, '', '', ''),
('Cajon', 'Pearl', 'Maple Faceplate PBC1914FT', 'Red', 15000, '', '', ''),
('Drum Set', 'Pearl', 'Music City Center', 'Red Glass', 250000, '', '', ''),
('Keyboard', 'Yamaha', 'PSR-E453', 'Black', 50000, '', '', '61-key touch response keyboard with powerful on-board speakers and easy-to-use professional features like assignable Live Control knobs, DJ pattern mode, and USB to Device connectivity.\r\n\r\nFEATURES : 758 high quality voices including Sweet! and Cool! voices, with 48-note polyphony. 6W + 6W amplifiers with 12 cm Bass Reflexed speakers. Assignable real-time control knobs, DSP Effects, and Pitch Bend. Connectivity with audio and MIDI capabilities. USB TO DEVICE terminal. Pattern function to create your own grooves - 25 patterns. Arpeggio function. Worldwide sounds support your music. Yamaha Education Suite (Y.E.S.). Music Database'),
('Keyboard', 'Yamaha', 'PSR-EW400', 'Black', 50000, '', '', 'The flagship model in the PSR-E series is built for playing live. Easy-to-use professional features, 76-key touch response keyboard, new Live! Grad Piano Voice, computer and external storage connectivity, and L/R outputs for connecting to a PA system. \r\n\r\nFEATURES : 758 high quality voices featuring the new Live! Grand Piano voice. 12W + 12W amplifiers with 12 cm Bass Reflexed speakers. 76 keys and 48-note polyphony. Individual L/R output. Assignable real-time control knobs, DSP Effects, and Pitch Bend. Connectivity with audio and MIDI capabilities. USB TO DEVICE terminal. Pattern function to create your own grooves - 25 patterns. Arpeggio function. Worldwide sounds support your music. Yamaha Education Suite (Y.E.S.). Music Database'),
('Bass', 'Fender', 'Roger Waters Precision', 'Black', 25000, '', '', 'The Roger Waters Precision Bass brings you the elemental sound and style of the acclaimed bassist/singer/songwriter, whose elegant grooves are hallmarks of classic Pink Floyd and an acclaimed solo career that continues stronger than ever today. The instrument is as tastefully tailored as Waters\' own simple-yet-sophisticated bass work, with a distinctive all-black look and powerful yet nuanced tone.\r\n\r\nFEATURES : 9.5”-radius maple fingerboard with brass nut and 20 medium jumbo frets\r\nSeymour Duncan® Basslines SPB-3 Quarter-Pound split-coil Precision Bass pickup. Two knurled black control knobs (master volume, master tone). Vintage-style black bridge with four single-groove saddles. Black strap buttons. Vintage-style “Fender”-stamped open-gear tuners and gasketed “F”-stamped neck plate'),
('Cajon', 'Pearl', 'Tall Boy Fiberglass PCJ653', 'Black', 15000, '', '', ''),
('Bass', 'Fender', 'Vintage Modified Jazz \'70s', 'Olympic White', 25000, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `instruments` varchar(24) NOT NULL,
  `amount` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD UNIQUE KEY `fk_type` (`type`) USING BTREE,
  ADD UNIQUE KEY `fk_id` (`customer_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`CF_id`);

--
-- Indexes for table `instrument`
--
ALTER TABLE `instrument`
  ADD PRIMARY KEY (`type`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
