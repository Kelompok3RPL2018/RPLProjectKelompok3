-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2018 at 07:14 PM
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
  `contact` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `password`, `contact`) VALUES
('M0516021', 'Fikri Hashfi Nashrullah', 'fik021', '085878586091'),
('M0516038', 'Regina Hanna Yunida', 'han038', '081255462496'),
('M0517059', 'Nurul Rofli Nasuha', 'rof059', '60174055493');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `fk_customer_id` int(3) NOT NULL,
  `fk_instruments_id` int(3) NOT NULL,
  `pieces` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(3) NOT NULL,
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
-- Table structure for table `instrument`
--

CREATE TABLE `instrument` (
  `instruments_id` int(3) NOT NULL,
  `instruments_name` varchar(20) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `type` varchar(50) NOT NULL,
  `color` varchar(20) NOT NULL,
  `price` int(6) NOT NULL,
  `file_name` varchar(40) NOT NULL,
  `description` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instrument`
--

INSERT INTO `instrument` (`instruments_id`, `instruments_name`, `brand`, `type`, `color`, `price`, `file_name`, `description`) VALUES
(1, 'Acoustic Guitar', 'Taylor', 'Academy 10e', 'Original', 15000, 'Academy 10e', 'Academy Series was designed with developing players in mind, so the goal was to create as comfortable a playing experience as possible. The guitar body pairs layered sapele back and sides with a solid Sitka spruce top, and incorporates a feature normally reserved for our premium instruments: a built-in armrest that softens the edge of the body’s bass-side lower bout to enhance the playing comfort. The patented Taylor neck features a slightly shorter 24-7/8-inch scale length, 1-11/16-inch nut width, and light gauge strings, which make fretting and bending strings easier. Tonally the Dreadnought’s body dimensions produce a bold response with a warm low end and punchy treble, making this a great option for strummers and flatpickers. Onboard ES-B electronics include a built-in digital chromatic tuner with an LED display for tuning and low battery indication. Whether you’re at the front end of your guitar journey or just looking for a great strumming guitar without breaking the bank, the A10e will serve you well.'),
(2, 'Cajon', 'Pearl', 'Afterburn PBC-511ABC', 'Red', 15000, 'Afterburn PBC-511ABC', 'Made in the USA. The Afterburner cajon features dual rear-firing ports that resemble the exhaust on a classic hot rod and delivers the same low end rumble. The 100% Birch body has a premium grain natural finish.\r\n\r\nSHELL : Birch\r\nMODEL : PBC-511ABC'),
(3, 'Electric Guitar', 'Fender', 'American Original \'50s Telecaster', 'Original Black', 25000, '', 'Quickly adopted by working guitarists who were enamored with its trend-setting sound, feel and unique style, the Telecaster laid the foundation for modern country, blues and even heavy metal (in Jimmy Page’s hands). The American Original ‘50s Telecaster has all of the authentic Fender touches that made the Telecaster a star of the studio and stage, adding modern feel and pickup switching to this classic guitar.\r\n\r\nFEATURES : Ash body with lacquer finish. Two Pure Vintage ‘52 single-coil Telecaster pickups. Thick \"U”-shaped neck profile; 9.5”-radius fingerboard. Vintage-style hardware; Telecaster bridge with three brass barrel saddles. Includes vintage-style hardshell case.'),
(4, 'Bass', 'Fender', 'American Professional Precision', 'Antique Olive', 25000, 'American Professional Precision', 'FEATURES : \r\nSingle Michael Bump-designed V-Mod split-coil Precision Bass pickup.\r\n’63 P Bass neck profile.\r\nBone nut; 20 narrow-tall frets for familiar playing feel.\r\nHiMass™ Vintage bridge for increased sustain.\r\nFluted-shaft tuning machines; Posiflex graphite rods for neck reinforcement.\r\nIncludes Elite Molded hardshell case.'),
(5, 'Acoustic Guitar', 'Martin', 'D-35 Johnny Cash', 'Black', 15000, 'D-35 Jonny Cash', 'Perhaps Johnny Cash’s most favorite Martin guitar (and he played many) was a specially made D-35, his – and Martin’s – first guitar with a polished black finish. Perfect for \"the man in black,\" Cash played this guitar on stage for nearly 20 years. Now Martin has paid tribute to this musical legend with a close facsimile of that special instrument: the D-35 Johnny Cash Commemorative.'),
(6, 'Acoustic Guitar', 'Martin', 'D-420', 'Original', 15000, 'D-420', 'This Dreadnought features a Sitka spruce top that has been printed with a custom illustration by fine artist, Robert Goetzl. The D-420 is crafted with mahogany back and sides, a modified low oval neck with high performance taper, simple dovetail neck joint, bone nut and saddle, ebony bridge and an ebony fingerboard. A great sounding, unique looking guitar that has a rich, clean and articulate tone with great sustain and clarity.'),
(7, 'Bass', 'Fender', 'Deluxe Active Jazz V Okoume', 'Original', 25000, 'Deluxe Active Jazz V Okoume', 'Designed for working bassists at all levels, the Deluxe Active Jazz Bass V Okoume offers elegant five-string styling and modern features that make it a superior Deluxe performer ideal for stage and studio alike. The body is fashioned from okoume, an African hardwood with an attractive straight grain and distinctive reddish-brown hue. Together with special modern pickups and active electronics, the result is a beautifully sophisticated and tonally versatile five-string Jazz Bass experience.\r\n\r\nFEATURES : Okoume body. Maple neck with \"C\" profile. 9.5\"-radius rosewood fingerboard with 20 medium jumbo frets. Two dual-coil ceramic. Noiseless™ Jazz Bass pickups with nickel-plated pole pieces. No pickguard. Master volume and pickup pan controls. Three-band active EQ (boost/cut for treble, mid and bass). Five-saddle Fender High-Mass bridge. Side-mount output jack.'),
(8, 'Electric Guitar', 'Fender', 'Deluxe Nashville Tele', 'White Blonde', 25000, '', 'Straight from the studios of Music Row in the home of country music—Nashville, TN—comes the Deluxe Nashville Tele, a tonally versatile performer with a unique (for a Tele) three-pickup design. A distinctive entry into the Fender family, this Tele growls, snaps and screams with flexible tone that can match any song. With its original Fender style, customized switching and fast, smooth playing feel, this Tele is ready to command any stage from the local honky-tonk to the Grand Ol\' Opry.\r\n\r\nFEATURES : Single cutaway electric guitar. Two Vintage Noiseless™ Tele pickups (neck and bridge); single Vintage Noiseless Strat pickup (middle). Five-way Strat-o-Tone switching. Six-saddle string-through-body Tele bridge with block saddles. 12”-radius fingerboard; contoured neck heel; locking tuning machines. Includes deluxe gig bag'),
(9, 'Electric Guitar', 'Fender', 'Deluxe Roadhouse Stratocaster', 'Mystic Ice Blue', 25000, '', 'With sound and style tough enough to rock a chicken-wire-enclosed stage, the Deluxe Roadhouse Strat is the perfect instrument for tearing it up all night long. Packed with a wide-ranging variety of tones, ranging from tough, wiry single-coil spank to a high-output sound that\'s perfect for searing leads, this guitar is versatile enough to handle anything you throw at it with style. It\'s the perfect instrument for a performer who demands sonic flexibility and the ability to easily switch sounds at the drop of a hat.\r\n\r\nFEATURES : Double cutaway electric guitar. Three Vintage Noiseless™ Strat pickups. V6 switch and preamp adds six extra tonalities. Two-point synchronized tremolo bridge with bent steel saddles. 12”-radius fingerboard; contoured neck heel; locking tuning machines. Includes deluxe gig bag.'),
(10, 'Bass', 'Fender', 'Duff McKagan Precision', 'Pearl White', 25000, 'Duff McKagan Precision', 'Designed for the man who has held down the low end for Guns N\' Roses, Velvet Revolver, Jane\'s Addiction and many others, the Duff McKagan Precision Bass is rock \'n\' roll. Based on the Pearl White instrument McKagan has played since the first GNR album, the Duff McKagan Signature model is a distinctive, sleek and full-sounding reissue of the \'80s-era Jazz Bass® Special, which combined a Precision Bass body with a Jazz Bass neck and pickups from both instruments.\r\n\r\nFEATURES : Pearl White body (no pickguard) with gloss black neck and headstock. Vintage-style split single-coil Precision Bass middle pickup and Seymour Duncan® STKJ2B Jazz Bass bridge pickup. Three-way toggle pickup switch and volume control knob for each pickup. TBX™ tone circuit (Treble Bass Expander). Vintage-style bridge with four single-groove saddles. Custom-engraved skull-and-crossbones neck plate.'),
(11, 'Acoustic Guitar', 'Martin', 'Ed Sheeran ÷ Signature', 'Original', 15000, 'Ed Sheeran', 'After selling millions of records and taking a year-long creative hiatus, Ed Sheeran has re-emerged in 2017 with a new chart-busting album and his latest Martin Custom model, the Ed Sheeran ÷ Signature Edition. Built upon Ed’s love of the LX1E LITTLE MARTIN, and continuing with his mathematical themed album cover art, the “Ed Sheeran 3” forms a trilogy of signature guitars that have supported Ed along his soaring career path to pop stardom. Featuring a solid Sitka spruce top etched with Ed’s album art and a blue soundhole rosette to match, the Ed Sheeran ÷ Signature Edition is constructed with mahogany HPL back and sides and sports blue ÷ symbols across the fingerboard and headstock. Equipped with a Custom interior label, Fishman Sonitone electronics and a gig bag, this little Martin with a big sound is ready to hit the stage, just as Ed intended.'),
(12, 'Digital Piano', 'Ronald', 'FP-90 Portable Piano', 'Black', 125000, '', 'It packs Roland’s flagship piano sound engine and keyboard into a sleek, modern cabinet that also houses a multi-channel speaker system with enough power for performing in intimate venues. A carefully selected range of additional sounds that include electric pianos, strings, organs, and synths are on hand as well, allowing you to use the FP-90 in a wide variety of musical scenarios. And with Bluetooth® audio/MIDI support, you’re able to connect wirelessly with Roland’s Piano Partner 2 and other music apps on a smartphone or tablet. Available in black or white finishes, the flexible FP-90 is ready to go wherever you want to play.'),
(13, 'Electric Guitar', 'Fender', 'Jim Root Jazzmaster', 'Black', 30000, '', 'Stark, dark and menacing, the crushing Jim Root Jazzmaster guitar has got to be the most distinctively minimalist version of the instrument ever devised in the model\'s entire half-century history. At the behest of the towering Slipknot guitarist, gone are the dual tone circuits and barrage of controls. Gone are the fret position markers and enormous chrome bridge. Gone, in fact, is pretty much everything typical of a Jazzmaster, replaced only by fearsome EMG® humbucking pickups with brushed nickel covers, single three-way switch and single volume knob, a hardtail bridge and little else.\r\n\r\nFEATURES : Mahogany body with contoured neck heel. Maple neck with “C”-shaped profile and large headstock. Compound-radius ebony fingerboard (12” to 16”) with 22 jumbo frets and no position inlays (side-dot inlays only). EMG® 60 (neck) and 81 (bridge) active humbucking pickups with brushed nickel covers and black bezels. Single control knob (volume) and three-way pickup switch. Hard-tail string-through-body bridge.'),
(14, 'Electric Guitar', 'Gibson', 'Les Paul Slash', 'Anaconda Burst', 25000, '', 'The limited edition Les Paul Slash Anaconda Burst guitars is part of Slash\'s new range of signature instruments with Gibson that were developed and tested throughout the Guns N\' Roses tours of 2016 and 2017, each guitar features an exclusive green Anaconda Burst finish, AA flamed maple top and mahogany body and Slash\'s personal touches, including Slash\'s thick neck profile, Slash signature humbucking pickups and a Slash snakeskin inspired hardshell case.\r\n\r\nFEATURE : AA Flamed Maple Top with Mahogany Body. Medium Frets - Cryogenically Treated. Slash APH-2N Seymour Duncan Neck Pickup. Slash APH-2B Seymour Duncan Bridge Pickup. 2 Volumes, 2 Tones, 1 Toggle switch, Hand-wired with Orange Drop Capacitors Control. '),
(15, 'Acoustic Guitar', 'Martin', 'LX1E Little Martin', 'Original', 15000, 'LX1E', ' The LX1E acoustic electric model features a solid Sitka spruce top, mahogany high-pressure laminate (HPL) back and sides, and a warm satin finish. It’s ideal for travel, student practice or for just playing around the house or campfire. This model includes SUSTAINABLE WOOD CERTIFIED parts.\r\n\r\nFEATUES :\r\nConstruction:\r\nMortise & Tenon Neck Joint\r\n\r\nBody Size:\r\nModified 0-14 Fret\r\n\r\nFingerboard & Bridge Material:\r\nFSC® Certified Richlite'),
(16, 'Cajon', 'Pearl', 'Mach 2 Birch PBC511M2', 'Original Wood', 15000, 'Mach 2 Birch PBC511M2', 'Made In The USA. The Birch snare section of the faceplate creates a bright response while the Walnut bass section provides a punchy low end.\r\n\r\nAn internal resonance plate prevents unwanted crosstalk between the sound chambers.\r\n\r\nThis Made-in-America beauty has a multi-tonal impact like it\'s sister cajon, the Mach 3 Cajon, and is perfect for the small acoustic setting or larger amplified venues.'),
(17, 'Electric Guitar', 'Gibson', 'Memphis ES-275 Custom Metallic Series', 'Emerald City', 25000, '', 'The new 2018 Gibson ES-275 Custom Metallic Series is our most distinctive take on the reinvented classic archtop design. Pairing high quality materials and craftsmanship with exclusive two-tone finishes, the ES-275 Custom Metallic offers players unrivaled style and tone. The Grover “Imperial” tuners and pinned ABR-1 bridge with titanium saddles offer precise intonation and tuning stability. Versatility and feel comes in the form of a dark rosewood fingerboard and factory installed Bigsby B-6. The MTC Premiere hand-wired control assembly and our MHS humbucking pickups provide tone that can only be found with a Gibson.\r\n\r\nFEATURES : 3-ply Maple/Poplar/Maple Body. Quarter Sawn Mahogany Neck Material. Rounded \"C\", rolled binding neck profile. Medium Jumbo - 18% Nickel Silver Neck. Gold Speed (EC/GC) Black Top Hats w/Silver Inserts (SC) Control Knobs. ABR-1 with Titanium saddles and Rosewood base Bridge. MTC Premiere : 2 volumes, 2 tones, 1 toggle switch, hand-wired with matched 550K potentiometers and orange drop capacitors Controls.\r\n\r\n'),
(18, 'Electric Guitar', 'Gibson', 'Memphis ES-335 Figured', 'Turqoise', 25000, '', 'ES-335 Figured from Gibson Memphis capture exotic-wood elegance in a great sounding and playing semi-acoustic. A tubeless Historic truss rod, PAF-style Burstbucker 1 & 2 pickups, a redesigned neck profile for increased strength and comfortable feel, and top-quality hardware make this an outstanding semi by any standards.\r\n\r\nFEATURES : \r\nBody woods: Beautifully figured maple back and sides\r\nFingerboard: Rosewood with small block inlays\r\nNeck: Redesigned for improved strength and playabilty\r\nTruss rod: Historic truss rod\r\nPickups: Burstbucker 1 & 2\r\nBridge: ABR-1 with titanium saddles\r\nTailpiece: Locking stopbar\r\nFinish: High-gloss nitrocellulose lacquer'),
(19, 'Electric Guitar', 'Gibson', 'Memphis ES-355 Classic Bigsby VOS', 'White Classic', 25000, '', 'Elegant ES-355 appointments, set off by the classic Classic White finish and Bigsby vibrato. Bound Richlite fingerboard with large block MOP inlays, PAF-style 57 Classic humbuckers.\r\n\r\nFEATURES :\r\nBody: Semi-solid construction with multi-ply binding\r\nFingerboard: Bound Richlite with large block mother of pearl inlays\r\nElectronics: Memphis Tone Circuit\r\nTruss rod: Tubeless Historic truss rod\r\nPickups: 57 Classic humbuckers\r\nFrets: Period-correct .100\" x .045\" fret wire\r\nHardware: Gold Bigsby vibrato tailpiece'),
(20, 'Drumset', 'Pearl', 'Music City Center', 'Red Glass', 250000, '', 'Music City Custom drums features pristine shells of the finest wood plies, manufactured in Pearl’s renowned overseas Masterworks facility, and available in your choice of either Reference (RF), Reference Pure (RFP), or Masters Maple Reserve (MRV) shell specifications.\r\n\r\nChoose from 36 beautiful covered finishes, and either RF, RFP, MRV shell specifications to experience what our top endorsees have enjoyed for years. Music City Custom RFP Series has 1.6mm FatTone Hoops offering increased strength and articulation. The Music City Custom RF Series MasterCast Hoop system prevents binding and allows the shell to resonate to its absolute fullest potential.'),
(21, 'Keyboard', 'Yamaha', 'PSR-E453', 'Black', 50000, '', '61-key touch response keyboard with powerful on-board speakers and easy-to-use professional features like assignable Live Control knobs, DJ pattern mode, and USB to Device connectivity.\r\n\r\nFEATURES : 758 high quality voices including Sweet! and Cool! voices, with 48-note polyphony. 6W + 6W amplifiers with 12 cm Bass Reflexed speakers. Assignable real-time control knobs, DSP Effects, and Pitch Bend. Connectivity with audio and MIDI capabilities. USB TO DEVICE terminal. Pattern function to create your own grooves - 25 patterns. Arpeggio function. Worldwide sounds support your music. Yamaha Education Suite (Y.E.S.). Music Database'),
(22, 'Keyboard', 'Yamaha', 'PSR-EW400', 'Black', 50000, '', 'The flagship model in the PSR-E series is built for playing live. Easy-to-use professional features, 76-key touch response keyboard, new Live! Grad Piano Voice, computer and external storage connectivity, and L/R outputs for connecting to a PA system. \r\n\r\nFEATURES : 758 high quality voices featuring the new Live! Grand Piano voice. 12W + 12W amplifiers with 12 cm Bass Reflexed speakers. 76 keys and 48-note polyphony. Individual L/R output. Assignable real-time control knobs, DSP Effects, and Pitch Bend. Connectivity with audio and MIDI capabilities. USB TO DEVICE terminal. Pattern function to create your own grooves - 25 patterns. Arpeggio function. Worldwide sounds support your music. Yamaha Education Suite (Y.E.S.). Music Database'),
(23, 'Digital Piano', 'Ronald', 'RD-2000 Stage Piano', 'Black', 150000, '', 'It features dual sound engines that power our best acoustic and electric pianos ever, plus the finest action we’ve ever put in a stage piano. There’s a massive selection of top-quality ensemble sounds to cover any musical task, as well as two wave expansion slots for adding even more sounds. And with its innovative modern interface, the RD-2000 is the perfect master controller for working with today’s software-based instruments on stage.\r\n\r\nFEATURES :\r\nPHA-50 Keyboard: Wood and Plastic Hybrid Structure, with Escapement and Ebony/Ivory Feel (88 keys)\r\nV-Piano Technology & SuperNATURAL Sound Engine\r\nSuperNATURAL Piano\r\nSuperNATURAL (E.Piano, Clav)\r\nVirtual Tone Wheel Organ\r\nPCM Sound Generator'),
(24, 'Drumset', 'Pearl', 'Reference', 'Piano Black', 250000, '', 'Reference Series Drums are the product of what became a two and a half year search for harmonic perfection. Like keys on a piano, each drum in a kit should combine to create a singular instrument without losing its own sonic signature.\r\n\r\nWith this concept in mind, Pearl explored the many options in the Masterworks crafting process to find the perfect combination of shell material, thickness, and edge profile for each individual size and type of drum. The result is a collective of individualy-engineered drums dialed-in to the best sonic character for that drum’s intended voice. Truly, the reference standard for quality and sound performance.\r\n\r\nFEATURES :\r\n“Best of Masterworks” Shell Material\r\nBRL Bridge Lugs w/ Swivel Function\r\nLB200 Bridge FT Leg Brackets\r\nLG200 Floor Tom Legs\r\nSP300 Spurs\r\nMasterCast Die Cast Hoops\r\nAluminum OptiMount Suspension System\r\nStainless Steel Tension Rods\r\nMolded Rubber Gaskets\r\nRemo Clear Emperor Tom Batters\r\nRemo Clear Powerstroke3 BD Batter\r\nRemo “Window” Snare Batter Head\r\nSuper High Gloss\r\nLacquer/Lacquer Sparkles\r\nChoice of Chrome (C), Nickel (N), Gold Plated** (G), or Black Chrome Plated** (B), & Black Nickel** (BL) Drum Hardware (**Extra Charge For Nickel, Gold & Black Chrome Plating Black Nickel)'),
(25, 'Bass', 'Fender', 'Roger Waters Precision', 'Black', 25000, 'Roger Waters Precision', 'The Roger Waters Precision Bass brings you the elemental sound and style of the acclaimed bassist/singer/songwriter, whose elegant grooves are hallmarks of classic Pink Floyd and an acclaimed solo career that continues stronger than ever today. The instrument is as tastefully tailored as Waters\' own simple-yet-sophisticated bass work, with a distinctive all-black look and powerful yet nuanced tone.\r\n\r\nFEATURES : 9.5”-radius maple fingerboard with brass nut and 20 medium jumbo frets\r\nSeymour Duncan® Basslines SPB-3 Quarter-Pound split-coil Precision Bass pickup. Two knurled black control knobs (master volume, master tone). Vintage-style black bridge with four single-groove saddles. Black strap buttons. Vintage-style “Fender”-stamped open-gear tuners and gasketed “F”-stamped neck plate'),
(26, 'Cajon', 'Pearl', 'Tall Boy Fiberglass PCJ653', 'Black', 15000, 'Tall Boy Fiberglass PCJ653.jpg', 'Traditional cajons are 19” tall which is ideal for most players. Pearl’s Tall Boy cajon is 21” tall which adds 2 inches to the overall height and makes it perfect for taller players or for use as a drum throne with your kit. The durable fiberglass body includes fixed snares and a build-in bass port for booming low-end response.\r\n\r\nThe Tall Boy cajon features an Ebony Carubinga lacquer finish.'),
(27, 'Bass', 'Fender', 'Vintage Modified Jazz \'70s', 'Olympic White', 25000, 'Vintage Modified Jazz \'70s', 'Squier\'s Vintage Modified Jazz Bass \'70s returns you to a classic period in Jazz Bass history. Sporting two crisp-sounding Fender®-designed pickups and a slim \"C\"-shaped neck, the Vintage Modified Jazz Bass \'70s offers super \'70s sound and feel for today\'s bassists, with superior Squier performance and value.\r\n\r\nFEATURES : Soft maple body. Vintage-tint maple neck with “C”-shaped profile. 20-fret maple fingerboard with black binding and black block inlays. Dual Fender®-designed single-coil Jazz Bass pickups. Black pickguard.');

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
  ADD UNIQUE KEY `fk_id` (`fk_customer_id`),
  ADD KEY `fk_instruments` (`fk_instruments_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `instrument`
--
ALTER TABLE `instrument`
  ADD PRIMARY KEY (`instruments_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instrument`
--
ALTER TABLE `instrument`
  MODIFY `instruments_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`fk_customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `fk_instruments` FOREIGN KEY (`fk_instruments_id`) REFERENCES `instrument` (`instruments_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
