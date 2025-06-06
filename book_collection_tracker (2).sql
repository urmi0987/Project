-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2025 at 12:05 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_collection_tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblauditlogs`
--

CREATE TABLE `tblauditlogs` (
  `logID` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `tableName` varchar(50) NOT NULL,
  `recordID` int(11) NOT NULL,
  `staffID` int(11) NOT NULL,
  `actionDate` datetime NOT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblauditlogs`
--

INSERT INTO `tblauditlogs` (`logID`, `action`, `tableName`, `recordID`, `staffID`, `actionDate`, `details`) VALUES
(1, 'Update Status', 'tblbookstatus', 8, 3, '2025-05-15 23:36:36', 'Changed status to Damaged for book: haha'),
(2, 'Update Status', 'tblbookstatus', 8, 3, '2025-05-15 23:36:43', 'Changed status to Available for book: haha'),
(3, 'Update Book', 'tblbooks', 8, 3, '2025-05-15 23:37:13', 'Updated book: haha'),
(4, 'Add Staff', 'tblstaff', 4, 2, '2025-05-16 10:52:08', 'Added staff: hawa ram'),
(5, 'Update Status', 'tblbookstatus', 9, 4, '2025-05-16 10:53:45', 'Changed status to Damaged for book: ABC laptop'),
(6, 'Add Genre', 'tblgenres', 2, 2, '2025-05-23 09:53:17', 'Added genre: Comedy'),
(7, 'Delete Genre', 'tblgenres', 2, 2, '2025-05-23 09:53:22', 'Deleted genre: Comedy'),
(8, 'Reactivate Genre', 'tblgenres', 2, 2, '2025-05-23 09:53:28', 'Reactivated genre: Comedy'),
(9, 'Update Staff', 'tblstaff', 1, 2, '2025-05-27 09:06:36', 'Updated staff: Jane Smith'),
(10, 'Update User', 'tblusers', 3, 2, '2025-05-27 09:06:51', 'Updated user: whocares'),
(11, 'Delete User', 'tblusers', 3, 2, '2025-05-27 09:07:15', 'Deleted user: '),
(12, 'Update Staff', 'tblstaff', 4, 2, '2025-05-27 09:59:59', 'Updated staff: hawa ram'),
(13, 'Update Staff', 'tblstaff', 4, 2, '2025-05-27 10:00:07', 'Updated staff: hawa ram'),
(14, 'Update User', 'tblusers', 4, 3, '2025-05-29 12:39:00', 'Updated user: maya'),
(15, 'Update User', 'tblusers', 4, 3, '2025-05-29 12:39:12', 'Updated user: maya'),
(16, 'Update Staff', 'tblstaff', 2, 2, '2025-06-04 08:44:05', 'Updated staff: Naresh'),
(17, 'Add Staff', 'tblstaff', 5, 2, '2025-06-04 08:55:45', 'Added staff: lenovo'),
(18, 'Update Staff', 'tblstaff', 5, 2, '2025-06-04 08:56:01', 'Updated staff: lenovo'),
(19, 'Update Staff', 'tblstaff', 5, 2, '2025-06-04 08:56:10', 'Updated staff: lenovo'),
(20, 'Update Staff', 'tblstaff', 5, 2, '2025-06-04 08:56:18', 'Updated staff: lenovo'),
(21, 'Delete Staff', 'tblstaff', 5, 2, '2025-06-04 08:56:25', 'Deleted staff: '),
(22, 'Update Genre', 'tblgenres', 2, 2, '2025-06-04 09:51:16', 'Updated genre: Comedy'),
(23, 'Add Genre', 'tblgenres', 6, 2, '2025-06-04 09:51:36', 'Added genre: Action'),
(24, 'Delete Book', 'tblbooks', 16, 2, '2025-06-04 10:46:02', 'Deleted book: i dont nknow'),
(26, 'Update Status', 'tblbookstatus', 17, 2, '2025-06-04 15:33:27', 'Changed status to On Loan for book: Hero book'),
(28, 'Update Status', 'tblbookstatus', 15, 2, '2025-06-05 09:42:52', 'Changed status to Damaged for book: New book'),
(30, 'Update Status', 'tblbookstatus', 8, 2, '2025-06-05 09:52:16', 'Changed status to On Loan for book: haha'),
(31, 'Update Status', 'tblbookstatus', 8, 2, '2025-06-05 10:07:52', 'Changed status to In Progress for book: haha'),
(32, 'Update Status', 'tblbookstatus', 13, 2, '2025-06-05 10:36:55', 'Changed status to Reserved for book: CB Bike'),
(33, 'Add Genre', 'tblgenres', 7, 3, '2025-06-05 14:50:27', 'Added genre: Fantasy'),
(34, 'Delete Genre', 'tblgenres', 7, 3, '2025-06-05 14:50:34', 'Deleted genre: Fantasy'),
(35, 'Reactivate Genre', 'tblgenres', 7, 3, '2025-06-05 14:50:41', 'Reactivated genre: Fantasy'),
(36, 'Update Status', 'tblbookstatus', 8, 2, '2025-06-05 15:05:30', 'Changed status to Read for book: haha'),
(37, 'Add Genre', 'tblgenres', 8, 3, '2025-06-05 17:01:05', 'Added genre: Classic Fiction'),
(38, 'Add Genre', 'tblgenres', 9, 3, '2025-06-05 17:01:17', 'Added genre: Horror'),
(39, 'Add Genre', 'tblgenres', 10, 3, '2025-06-05 17:01:24', 'Added genre: Drama'),
(40, 'Add Genre', 'tblgenres', 11, 3, '2025-06-05 17:02:00', 'Added genre: Romance '),
(41, 'Add Genre', 'tblgenres', 12, 3, '2025-06-05 17:02:12', 'Added genre: Thriller '),
(42, 'Add Genre', 'tblgenres', 13, 3, '2025-06-05 17:03:28', 'Added genre: Historical Fiction'),
(43, 'Add Genre', 'tblgenres', 14, 3, '2025-06-05 17:03:56', 'Added genre: Biography'),
(44, 'Update Genre', 'tblgenres', 1, 3, '2025-06-05 17:06:30', 'Updated genre: Fiction'),
(45, 'Update Genre', 'tblgenres', 2, 3, '2025-06-05 17:06:49', 'Updated genre: Comedy'),
(46, 'Update Genre', 'tblgenres', 6, 3, '2025-06-05 17:07:20', 'Updated genre: Action'),
(47, 'Update Genre', 'tblgenres', 7, 3, '2025-06-05 17:07:42', 'Updated genre: Fantasy'),
(48, 'Update Genre', 'tblgenres', 8, 3, '2025-06-05 17:08:04', 'Updated genre: Classic Fiction'),
(49, 'Update Genre', 'tblgenres', 9, 3, '2025-06-05 17:08:26', 'Updated genre: Horror'),
(50, 'Update Genre', 'tblgenres', 10, 3, '2025-06-05 17:09:02', 'Updated genre: Drama'),
(51, 'Update Genre', 'tblgenres', 11, 3, '2025-06-05 17:09:22', 'Updated genre: Romance '),
(52, 'Update Genre', 'tblgenres', 12, 3, '2025-06-05 17:09:42', 'Updated genre: Thriller '),
(53, 'Update Genre', 'tblgenres', 13, 3, '2025-06-05 17:10:00', 'Updated genre: Historical Fiction'),
(54, 'Update Genre', 'tblgenres', 14, 3, '2025-06-05 17:10:20', 'Updated genre: Biography'),
(55, 'Delete Book Ownership', 'tblbook_ownership', 7, 2, '2025-06-05 17:10:46', 'User removed ownership of book: XYZ Watch'),
(56, 'Delete Book Ownership', 'tblbook_ownership', 8, 2, '2025-06-05 17:10:50', 'User removed ownership of book: haha'),
(57, 'Delete Book Ownership', 'tblbook_ownership', 9, 2, '2025-06-05 17:10:54', 'User removed ownership of book: ABC laptop'),
(58, 'Delete Book Ownership', 'tblbook_ownership', 13, 2, '2025-06-05 17:12:10', 'User removed ownership of book: CB Bike'),
(59, 'Delete Book Ownership', 'tblbook_ownership', 14, 2, '2025-06-05 17:12:14', 'User removed ownership of book: My book'),
(60, 'Delete Book Ownership', 'tblbook_ownership', 15, 2, '2025-06-05 17:12:18', 'User removed ownership of book: New book'),
(61, 'Delete Book Ownership', 'tblbook_ownership', 17, 2, '2025-06-05 17:12:22', 'User removed ownership of book: Hero book'),
(62, 'Delete Book Ownership', 'tblbook_ownership', 21, 2, '2025-06-05 17:12:25', 'User removed ownership of book: urmi'),
(63, 'Update Status', 'tblbookstatus', 23, 2, '2025-06-05 17:13:29', 'Changed status to Unread for book: The Clock Maker&#39;s Paradox'),
(64, 'Delete Book Ownership', 'tblbook_ownership', 23, 2, '2025-06-05 17:16:29', 'User removed ownership of book: The Clock Maker&#39;s Paradox'),
(65, 'Delete Book', 'tblbooks', 7, 3, '2025-06-05 17:34:24', 'Deleted book: XYZ Watch'),
(66, 'Delete Book', 'tblbooks', 8, 3, '2025-06-05 17:34:29', 'Deleted book: haha'),
(67, 'Delete Book', 'tblbooks', 17, 3, '2025-06-05 17:34:33', 'Deleted book: Hero book'),
(68, 'Delete Book', 'tblbooks', 18, 3, '2025-06-05 17:34:38', 'Deleted book: regs'),
(69, 'Delete Book', 'tblbooks', 20, 3, '2025-06-05 17:34:41', 'Deleted book: toma'),
(70, 'Delete Book', 'tblbooks', 21, 3, '2025-06-05 17:34:44', 'Deleted book: urmi'),
(71, 'Delete Book', 'tblbooks', 22, 3, '2025-06-05 17:34:49', 'Deleted book: naresh'),
(72, 'Update Status', 'tblbookstatus', 28, 2, '2025-06-05 19:10:04', 'Changed status to In Progress for book: The Bourne Identity '),
(73, 'Update Status', 'tblbookstatus', 24, 2, '2025-06-05 19:10:12', 'Changed status to Read for book: The Goldfinch '),
(74, 'Update Status', 'tblbookstatus', 25, 2, '2025-06-05 19:10:18', 'Changed status to Read for book: Normal People'),
(75, 'Update Status', 'tblbookstatus', 26, 2, '2025-06-05 19:10:25', 'Changed status to Read for book: Good Omens '),
(79, 'Delete Book Ownership', 'tblbook_ownership', 47, 2, '2025-06-06 10:07:22', 'User removed ownership of book: urmi'),
(80, 'Add Staff', 'tblstaff', 6, 2, '2025-06-06 10:25:45', 'Added staff: sadeka'),
(81, 'Delete User', 'tblusers', 7, 3, '2025-06-06 11:21:36', 'Deleted user: '),
(82, 'Update User', 'tblusers', 8, 3, '2025-06-06 11:22:58', 'Updated user: hawa12'),
(83, 'Delete Book Ownership', 'tblbook_ownership', 24, 2, '2025-06-06 11:25:15', 'User removed ownership of book: The Goldfinch '),
(84, 'Add Staff', 'tblstaff', 7, 2, '2025-06-06 11:28:20', 'Added staff: samia'),
(85, 'Update Staff', 'tblstaff', 7, 2, '2025-06-06 11:28:53', 'Updated staff: sami'),
(86, 'Delete Staff', 'tblstaff', 6, 2, '2025-06-06 11:29:07', 'Deleted staff: ');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `bookID` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) DEFAULT 'Unknown',
  `normalized_title` varchar(255) DEFAULT NULL,
  `normalized_author` varchar(255) DEFAULT NULL,
  `genreID` int(11) NOT NULL,
  `addedDate` date NOT NULL,
  `imagePath` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`bookID`, `title`, `author`, `normalized_title`, `normalized_author`, `genreID`, `addedDate`, `imagePath`) VALUES
(25, 'Normal People', 'Sally Rooney', NULL, NULL, 1, '2025-06-05', 'Uploads/6841caf6e62f4-WhatsApp Image 2025-06-05 at 18.46.24_d0c01c6d.jpg'),
(26, 'Good Omens ', 'Neil Gaiman ', NULL, NULL, 2, '2025-06-05', 'Uploads/6841cb0a545c9-WhatsApp Image 2025-06-05 at 18.48.02_6b111684.jpg'),
(27, 'Bridget Jones Diary', 'Helen Fielding', NULL, NULL, 2, '2025-06-05', 'Uploads/6841cb3dca3e4-WhatsApp Image 2025-06-05 at 18.50.18_a54218dd.jpg'),
(28, 'The Bourne Identity ', 'Robert Ludlum  ', NULL, NULL, 6, '2025-06-05', 'Uploads/6841cb50aa42d-WhatsApp Image 2025-06-05 at 18.51.03_0328270e.jpg'),
(29, 'Jack Reacher: Killing Floor', 'Lee Child', NULL, NULL, 6, '2025-06-05', 'Uploads/6841cb88cd216-WhatsApp Image 2025-06-05 at 18.52.00_2cc1c28e.jpg'),
(30, 'The Name of the Wind ', 'Patrick Rothfuss  ', NULL, NULL, 7, '2025-06-05', 'Uploads/6841cb97eab9d-WhatsApp Image 2025-06-05 at 18.52.40_542fcfc1.jpg'),
(31, 'Mistborn: The Final Empire', ' Brandon Sanderson', NULL, NULL, 7, '2025-06-05', 'Uploads/6841cbb9d66c7-WhatsApp Image 2025-06-05 at 18.53.38_1b24dda5.jpg'),
(32, 'Pride and Prejudice', ' Jane Austen  ', NULL, NULL, 8, '2025-06-05', 'Uploads/6841cbded8f77-WhatsApp Image 2025-06-05 at 18.54.22_5b5bef2d.jpg'),
(33, 'Jane Eyre ', 'Charlotte Brontë	', NULL, NULL, 8, '2025-06-05', 'Uploads/6841cc09ef7a5-WhatsApp Image 2025-06-05 at 18.55.07_6fc3f0ba.jpg'),
(34, 'The Shining', ' Stephen King', NULL, NULL, 9, '2025-06-05', 'Uploads/6841cc2de59aa-WhatsApp Image 2025-06-05 at 18.55.50_d38369c4.jpg'),
(35, ' Mexican Gothic ', ' Silvia Moreno-Garcia', NULL, NULL, 9, '2025-06-05', 'Uploads/6841cc6ab54ef-WhatsApp Image 2025-06-05 at 18.56.37_44eec277.jpg'),
(36, 'A Little Life', ' Hanya Yanagihara ', NULL, NULL, 10, '2025-06-05', 'Uploads/6841ccd54f8f6-WhatsApp Image 2025-06-05 at 18.57.34_c0609651.jpg'),
(37, ' The Kite Runner ', 'Khaled Hosseini', NULL, NULL, 10, '2025-06-05', 'Uploads/6841cd6d743da-WhatsApp Image 2025-06-05 at 18.58.27_629688f9.jpg'),
(38, 'Me Before You ', ' Jojo Moyes  ', NULL, NULL, 11, '2025-06-05', 'Uploads/6841cd821faf2-WhatsApp Image 2025-06-05 at 18.59.23_1a972da2.jpg'),
(39, 'The Rosie Project', 'Graeme Simsion	', NULL, NULL, 11, '2025-06-05', 'Uploads/6841cd926c6e2-WhatsApp Image 2025-06-05 at 19.00.07_f7ee3491.jpg'),
(40, 'Gone Girl ', 'Gillian Flynn', NULL, NULL, 12, '2025-06-05', 'Uploads/6841cda6c0233-WhatsApp Image 2025-06-05 at 19.00.46_4ad83cca.jpg'),
(41, '  The Girl with the Dragon Tattoo', 'Stieg Larsson', NULL, NULL, 12, '2025-06-05', 'Uploads/6841cdfb5d0df-WhatsApp Image 2025-06-05 at 19.01.37_61389a86.jpg'),
(42, 'The Book Thief ', 'Markus Zusak ', NULL, NULL, 13, '2025-06-05', 'Uploads/6841ce0ef041a-WhatsApp Image 2025-06-05 at 19.02.22_3bd340f7.jpg'),
(43, ' All the Light We Cannot See ', 'Anthony Doerr', NULL, NULL, 13, '2025-06-05', 'Uploads/6841ce1c4e1bf-WhatsApp Image 2025-06-05 at 19.02.59_ac2ab0ea.jpg'),
(44, 'The Seven Husbands of Evelyn Hugo', ' Taylor Jenkins Reid  ', NULL, NULL, 14, '2025-06-05', 'Uploads/6841ce4ba3529-WhatsApp Image 2025-06-05 at 19.04.05_bea8889c.jpg'),
(45, 'Daisy Jones & The Six', ' Taylor Jenkins Reid', NULL, NULL, 14, '2025-06-05', 'Uploads/6841ce6f08efa-WhatsApp Image 2025-06-05 at 19.04.48_2cd659da.jpg'),
(46, 'The Goldfinch ', 'Donna Tartt  ', NULL, NULL, 1, '2025-06-05', 'Uploads/6841cfc691637-WhatsApp Image 2025-06-05 at 18.44.48_12f7ad72.jpg'),
(48, 'Any Book', 'Any author', NULL, NULL, 1, '2025-06-06', 'Uploads/6842b3dfc4eac-WhatsApp Image 2025-06-05 at 19.04.05_bea8889c.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblbookstatus`
--

CREATE TABLE `tblbookstatus` (
  `statusID` int(11) NOT NULL,
  `bookID` int(11) NOT NULL,
  `status` enum('Unread','In Progress','Read','On Loan','Damaged','Reserved') NOT NULL,
  `statusDate` date NOT NULL,
  `updatedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblbookstatus`
--

INSERT INTO `tblbookstatus` (`statusID`, `bookID`, `status`, `statusDate`, `updatedBy`) VALUES
(35, 25, 'On Loan', '2025-06-05', 5),
(36, 26, 'Read', '2025-06-05', 2),
(37, 27, '', '2025-06-05', 2),
(38, 28, 'In Progress', '2025-06-05', 2),
(39, 29, '', '2025-06-05', 2),
(40, 30, '', '2025-06-05', 2),
(41, 31, '', '2025-06-05', 2),
(42, 32, '', '2025-06-05', 2),
(43, 33, '', '2025-06-05', 2),
(44, 34, '', '2025-06-05', 2),
(45, 35, '', '2025-06-05', 2),
(46, 36, '', '2025-06-05', 2),
(47, 37, '', '2025-06-05', 2),
(48, 38, '', '2025-06-05', 2),
(49, 39, '', '2025-06-05', 2),
(50, 40, '', '2025-06-05', 2),
(51, 41, '', '2025-06-05', 2),
(52, 42, '', '2025-06-05', 2),
(53, 43, '', '2025-06-05', 2),
(54, 44, '', '2025-06-05', 2),
(55, 45, '', '2025-06-05', 2),
(56, 46, 'Read', '2025-06-05', 5),
(57, 25, 'On Loan', '2025-06-05', 5),
(59, 48, '', '2025-06-06', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblbook_ownership`
--

CREATE TABLE `tblbook_ownership` (
  `ownershipID` int(11) NOT NULL,
  `bookID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `ownershipType` enum('Owner','Co-owner','Borrower') DEFAULT 'Owner',
  `addedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblbook_ownership`
--

INSERT INTO `tblbook_ownership` (`ownershipID`, `bookID`, `userID`, `ownershipType`, `addedDate`) VALUES
(23, 25, 2, 'Co-owner', '2025-06-05'),
(24, 26, 2, 'Co-owner', '2025-06-05'),
(25, 27, 2, 'Co-owner', '2025-06-05'),
(26, 28, 2, 'Co-owner', '2025-06-05'),
(27, 29, 2, 'Co-owner', '2025-06-05'),
(28, 30, 2, 'Co-owner', '2025-06-05'),
(29, 31, 2, 'Co-owner', '2025-06-05'),
(30, 32, 2, 'Co-owner', '2025-06-05'),
(31, 33, 2, 'Co-owner', '2025-06-05'),
(32, 34, 2, 'Co-owner', '2025-06-05'),
(33, 35, 2, 'Co-owner', '2025-06-05'),
(34, 36, 2, 'Co-owner', '2025-06-05'),
(35, 37, 2, 'Co-owner', '2025-06-05'),
(36, 38, 2, 'Co-owner', '2025-06-05'),
(37, 39, 2, 'Co-owner', '2025-06-05'),
(38, 40, 2, 'Co-owner', '2025-06-05'),
(39, 41, 2, 'Co-owner', '2025-06-05'),
(40, 42, 2, 'Co-owner', '2025-06-05'),
(41, 43, 2, 'Co-owner', '2025-06-05'),
(42, 44, 2, 'Co-owner', '2025-06-05'),
(43, 45, 2, 'Co-owner', '2025-06-05'),
(44, 46, 5, 'Co-owner', '2025-06-05'),
(45, 25, 5, 'Co-owner', '2025-06-05'),
(47, 48, 2, 'Co-owner', '2025-06-06');

-- --------------------------------------------------------

--
-- Table structure for table `tblgenres`
--

CREATE TABLE `tblgenres` (
  `genreID` int(11) NOT NULL,
  `genreName` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `createdDate` date NOT NULL,
  `isActive` tinyint(1) DEFAULT 1,
  `createdBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblgenres`
--

INSERT INTO `tblgenres` (`genreID`, `genreName`, `description`, `createdDate`, `isActive`, `createdBy`) VALUES
(1, 'Fiction', 'A broad genre that includes any narrative literature created from the imagination, rather than based strictly on fact. It can include elements of any other genre.', '2025-04-16', 1, 1),
(2, 'Comedy', 'Focuses on humor and entertainment, often featuring amusing characters and situations, with the intent to provoke laughter and lighten the mood.', '2025-05-23', 1, 2),
(6, 'Action', 'Emphasizes physical excitement, fast-paced scenes, and high energy—often involving battles, chases, and heroic feats.', '2025-06-04', 1, 2),
(7, 'Fantasy', 'Features magical elements, mythical creatures, or fantastical worlds, often set in imaginary universes where the impossible becomes possible.', '2025-06-05', 1, 3),
(8, 'Classic Fiction', 'Timeless works of literature that have stood the test of time, often exploring universal themes and offering deep cultural or historical insights.', '2025-06-05', 1, 3),
(9, 'Horror', 'Designed to frighten, disturb, or unsettle readers through suspenseful, supernatural, or psychological elements.', '2025-06-05', 1, 3),
(10, 'Drama', 'Focuses on emotional and relational development of characters, often portraying realistic conflicts and intense situations.', '2025-06-05', 1, 3),
(11, 'Romance ', 'Centers on love stories and emotional relationships, typically following the journey of characters falling in and out of love.', '2025-06-05', 1, 3),
(12, 'Thriller ', 'A suspenseful genre that keeps readers on edge with high stakes, tension, twists, and often a sense of danger or urgency.', '2025-06-05', 1, 3),
(13, 'Historical Fiction', 'Set in a real historical period, often blending fictional characters with actual events, aiming to provide insight into the past.', '2025-06-05', 1, 3),
(14, 'Biography', 'A non-fiction genre that narrates the life story of a real person, highlighting their achievements, struggles, and impact on the world.', '2025-06-05', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tblnotifications`
--

CREATE TABLE `tblnotifications` (
  `notificationID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `staffID` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  `isRead` tinyint(1) DEFAULT 0,
  `createdDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblnotifications`
--

INSERT INTO `tblnotifications` (`notificationID`, `userID`, `staffID`, `message`, `isRead`, `createdDate`) VALUES
(1, 2, NULL, 'Book rated successfully!', 1, '2025-05-16 00:04:48'),
(2, 2, NULL, 'Book rated successfully!', 1, '2025-05-16 00:04:57'),
(3, 2, NULL, 'Book status updated successfully!', 1, '2025-05-16 00:05:33'),
(4, 2, NULL, 'Book \'CB Bike\' added successfully!', 1, '2025-05-16 00:14:24'),
(5, NULL, 2, 'Book rated successfully!', 1, '2025-05-16 00:30:08'),
(6, 2, NULL, 'Book rated successfully!', 1, '2025-05-16 01:01:41'),
(7, NULL, 2, 'Staff \'hawa ram\' added successfully!', 1, '2025-05-16 10:52:08'),
(8, NULL, 4, 'Book status updated successfully!', 1, '2025-05-16 10:53:45'),
(9, NULL, 2, 'Genre \'Comedy\' added successfully!', 1, '2025-05-23 09:53:17'),
(10, NULL, 2, 'Genre deleted successfully!', 1, '2025-05-23 09:53:22'),
(11, NULL, 2, 'Genre \'Comedy\' added successfully!', 1, '2025-05-23 09:53:28'),
(12, 2, NULL, 'Book rated successfully!', 1, '2025-05-23 10:50:56'),
(13, 2, NULL, 'Book \'XYZ Watch\' updated successfully!', 1, '2025-05-23 10:58:26'),
(14, 2, NULL, 'Status updated to \'On Loan\' for \'XYZ Watch\'!', 1, '2025-05-26 08:50:45'),
(15, 2, NULL, 'Status updated to \'Available\' for \'XYZ Watch\'!', 1, '2025-05-26 08:54:38'),
(16, 2, NULL, 'Status updated to \'Available\' for \'XYZ Watch\'!', 1, '2025-05-26 09:03:22'),
(17, 2, NULL, 'Book rated successfully!', 1, '2025-05-26 09:03:44'),
(18, 2, NULL, 'Book rated successfully!', 1, '2025-05-26 09:06:14'),
(19, 2, NULL, 'Book rated successfully!', 1, '2025-05-26 09:06:23'),
(20, 2, NULL, 'Book rated successfully!', 1, '2025-05-26 09:40:40'),
(21, 2, NULL, 'Book \'My book\' added successfully!', 1, '2025-05-26 09:41:24'),
(22, 2, NULL, 'Book \'My book\' updated successfully!', 1, '2025-05-26 09:41:54'),
(23, 2, NULL, 'Review added for \'My book\'!', 1, '2025-05-26 09:42:11'),
(24, NULL, 2, 'Staff \'Jane Smith\' updated successfully!', 1, '2025-05-27 09:06:36'),
(25, NULL, 2, 'Staff \'hawa ram\' updated successfully!', 1, '2025-05-27 09:59:59'),
(26, NULL, 2, 'Staff \'hawa ram\' updated successfully!', 1, '2025-05-27 10:00:07'),
(27, 2, NULL, 'Book rated successfully!', 1, '2025-05-27 10:28:08'),
(28, 2, NULL, 'Book rated successfully!', 1, '2025-05-27 12:41:45'),
(29, 4, NULL, 'Book rated successfully!', 0, '2025-05-29 11:12:05'),
(30, 4, NULL, 'Book rated successfully!', 0, '2025-05-29 11:12:18'),
(31, 4, NULL, 'Book \'Hero book\' by only you know added successfully!', 0, '2025-05-29 11:15:18'),
(32, 4, NULL, ' Added new book \'Hero book\' by only you know!', 0, '2025-05-29 11:15:18'),
(33, 4, NULL, 'Book rated successfully!', 0, '2025-05-29 11:15:27'),
(34, 2, NULL, 'Status updated to \'On Loan\' for \'XYZ Watch\'!', 1, '2025-05-29 12:15:12'),
(35, 2, NULL, 'Rated \'XYZ Watch\' 1 stars!', 1, '2025-05-29 12:15:18'),
(36, 2, NULL, 'Rated \'XYZ Watch\' 3 stars!', 1, '2025-05-29 12:15:23'),
(37, 2, NULL, 'Status updated to \'Damaged\' for \'XYZ Watch\'!', 1, '2025-05-29 12:15:25'),
(38, 2, NULL, 'Status updated to \'On Loan\' for \'XYZ Watch\'!', 1, '2025-05-29 12:15:32'),
(39, 2, NULL, 'Book rated successfully!', 1, '2025-05-29 12:20:29'),
(40, 2, NULL, 'Book rated successfully!', 1, '2025-05-29 12:20:49'),
(41, 2, NULL, 'Book \'haha\' updated successfully!', 1, '2025-05-29 12:34:29'),
(42, 2, NULL, 'Book rated successfully!', 1, '2025-06-03 09:37:06'),
(43, 2, NULL, 'Book rated successfully!', 1, '2025-06-03 09:37:14'),
(44, 2, NULL, 'You are now a co-owner of \'Hero book\' by only you know!', 1, '2025-06-03 09:39:20'),
(45, 2, NULL, ' Added as co-owner of \'Hero book\' by only you know!', 1, '2025-06-03 09:39:20'),
(46, 2, NULL, 'Book rated successfully!', 1, '2025-06-03 09:39:47'),
(47, 2, NULL, 'Review added for \'haha\'!', 1, '2025-06-03 13:32:28'),
(48, NULL, 2, 'Staff \'lenovo\' added successfully!', 1, '2025-06-04 08:55:45'),
(49, NULL, 2, 'Staff \'lenovo\' updated successfully!', 1, '2025-06-04 08:56:01'),
(50, NULL, 2, 'Staff \'lenovo\' updated successfully!', 1, '2025-06-04 08:56:10'),
(51, NULL, 2, 'Staff \'lenovo\' updated successfully!', 1, '2025-06-04 08:56:18'),
(52, NULL, 2, 'Staff deleted successfully!', 1, '2025-06-04 08:56:25'),
(53, 2, NULL, 'Book rated successfully!', 1, '2025-06-04 09:18:57'),
(54, 2, NULL, 'Book rated successfully!', 1, '2025-06-04 09:19:03'),
(55, 2, NULL, 'Book rated successfully!', 1, '2025-06-04 09:19:08'),
(56, NULL, 2, 'Genre \'Comedy\' updated successfully!', 1, '2025-06-04 09:51:16'),
(57, NULL, 2, 'Genre \'Action\' added successfully!', 1, '2025-06-04 09:51:36'),
(58, NULL, 2, 'Book deleted successfully!', 1, '2025-06-04 10:46:02'),
(59, 2, NULL, 'Book status updated successfully!', 1, '2025-06-04 15:33:27'),
(60, 2, NULL, 'Book status updated successfully!', 1, '2025-06-05 09:42:52'),
(61, 2, NULL, 'Book rated successfully!', 1, '2025-06-05 09:46:17'),
(62, 2, NULL, 'Book rated successfully!', 1, '2025-06-05 09:46:26'),
(63, 2, NULL, 'Book rated successfully!', 1, '2025-06-05 09:47:46'),
(64, 2, NULL, 'Status updated to \'On Loan\' for \'haha\'!', 1, '2025-06-05 09:52:16'),
(65, 2, NULL, 'Status updated to \'In Progress\' for \'haha\'!', 1, '2025-06-05 10:07:52'),
(66, 2, NULL, 'Review added for \'haha\'!', 1, '2025-06-05 10:08:04'),
(67, 2, NULL, 'Book \'haha\' updated successfully!', 1, '2025-06-05 10:08:15'),
(68, 2, NULL, 'Book rated successfully!', 1, '2025-06-05 10:08:39'),
(69, 2, NULL, 'Book status updated successfully!', 1, '2025-06-05 10:36:55'),
(70, NULL, 3, 'Genre \'Fantasy\' added successfully!', 0, '2025-06-05 14:50:27'),
(71, NULL, 3, 'Genre deleted successfully!', 0, '2025-06-05 14:50:34'),
(72, NULL, 3, 'Genre \'Fantasy\' added successfully!', 0, '2025-06-05 14:50:41'),
(73, 2, NULL, 'Book rated successfully!', 1, '2025-06-05 14:53:45'),
(74, 2, NULL, 'You are now a co-owner of \'urmi\' by urmi!', 1, '2025-06-05 15:05:18'),
(75, 2, NULL, ' Added as co-owner of \'urmi\' by urmi!', 1, '2025-06-05 15:05:18'),
(76, 2, NULL, 'Book status updated successfully!', 1, '2025-06-05 15:05:30'),
(77, 2, NULL, 'Book rated successfully!', 1, '2025-06-05 15:05:35'),
(78, 2, NULL, 'Book removed from your collection successfully!', 1, '2025-06-05 15:31:33'),
(79, 2, NULL, 'New book \'urmi\' by urmi has been added to your collection!', 1, '2025-06-05 15:31:47'),
(80, 2, NULL, ' Book \'urmi\' by urmi added successfully!', 1, '2025-06-05 15:31:47'),
(81, 5, NULL, 'You are now a co-owner of \'urmi\' by urmi!', 0, '2025-06-05 15:33:17'),
(82, 5, NULL, ' Added as co-owner of \'urmi\' by urmi!', 0, '2025-06-05 15:33:17'),
(83, 5, NULL, 'Book removed from your collection successfully!', 0, '2025-06-05 15:33:26'),
(84, 5, NULL, 'You are now a co-owner of \'urmi\' by urmi!', 0, '2025-06-05 15:34:20'),
(85, 5, NULL, ' Added as co-owner of \'urmi\' by urmi!', 0, '2025-06-05 15:34:20'),
(86, NULL, 3, 'Genre \'Classic Fiction\' added successfully!', 0, '2025-06-05 17:01:05'),
(87, NULL, 3, 'Genre \'Horror\' added successfully!', 0, '2025-06-05 17:01:17'),
(88, NULL, 3, 'Genre \'Drama\' added successfully!', 0, '2025-06-05 17:01:24'),
(89, NULL, 3, 'Genre \'Romance \' added successfully!', 0, '2025-06-05 17:02:00'),
(90, NULL, 3, 'Genre \'Thriller \' added successfully!', 0, '2025-06-05 17:02:12'),
(91, NULL, 3, 'Genre \'Historical Fiction\' added successfully!', 0, '2025-06-05 17:03:28'),
(92, NULL, 3, 'Genre \'Biography\' added successfully!', 0, '2025-06-05 17:03:56'),
(93, NULL, 3, 'Genre \'Fiction\' updated successfully!', 0, '2025-06-05 17:06:30'),
(94, NULL, 3, 'Genre \'Comedy\' updated successfully!', 0, '2025-06-05 17:06:49'),
(95, NULL, 3, 'Genre \'Action\' updated successfully!', 0, '2025-06-05 17:07:20'),
(96, NULL, 3, 'Genre \'Fantasy\' updated successfully!', 0, '2025-06-05 17:07:42'),
(97, NULL, 3, 'Genre \'Classic Fiction\' updated successfully!', 0, '2025-06-05 17:08:04'),
(98, NULL, 3, 'Genre \'Horror\' updated successfully!', 0, '2025-06-05 17:08:26'),
(99, NULL, 3, 'Genre \'Drama\' updated successfully!', 0, '2025-06-05 17:09:02'),
(100, NULL, 3, 'Genre \'Romance \' updated successfully!', 0, '2025-06-05 17:09:22'),
(101, NULL, 3, 'Genre \'Thriller \' updated successfully!', 0, '2025-06-05 17:09:42'),
(102, NULL, 3, 'Genre \'Historical Fiction\' updated successfully!', 0, '2025-06-05 17:10:00'),
(103, NULL, 3, 'Genre \'Biography\' updated successfully!', 0, '2025-06-05 17:10:20'),
(104, 2, NULL, 'Book removed from your collection successfully!', 1, '2025-06-05 17:10:46'),
(105, 2, NULL, 'Book removed from your collection successfully!', 1, '2025-06-05 17:10:50'),
(106, 2, NULL, 'Book removed from your collection successfully!', 1, '2025-06-05 17:10:54'),
(107, 2, NULL, 'Book removed from your collection successfully!', 1, '2025-06-05 17:12:10'),
(108, 2, NULL, 'Book removed from your collection successfully!', 1, '2025-06-05 17:12:14'),
(109, 2, NULL, 'Book removed from your collection successfully!', 1, '2025-06-05 17:12:18'),
(110, 2, NULL, 'Book removed from your collection successfully!', 1, '2025-06-05 17:12:22'),
(111, 2, NULL, 'Book removed from your collection successfully!', 1, '2025-06-05 17:12:25'),
(112, 2, NULL, 'Book \'The Clock Maker&#39;s Paradox\' by Elias Wren added successfully!', 1, '2025-06-05 17:13:19'),
(113, 2, NULL, ' Added new book \'The Clock Maker&#39;s Paradox\' by Elias Wren!', 1, '2025-06-05 17:13:19'),
(114, 2, NULL, 'Book status updated successfully!', 1, '2025-06-05 17:13:29'),
(115, 2, NULL, 'Book \'The Clock Maker&#39;s Paradox\' updated successfully!', 1, '2025-06-05 17:13:47'),
(116, 2, NULL, 'Book removed from your collection successfully!', 1, '2025-06-05 17:16:29'),
(117, 2, NULL, 'Book \'The Quite of Hollow Street\' by Isla Merrick added successfully!', 1, '2025-06-05 17:16:59'),
(118, 2, NULL, ' Added new book \'The Quite of Hollow Street\' by Isla Merrick!', 1, '2025-06-05 17:16:59'),
(119, 2, NULL, 'Book \'The Quiet of Hollow Street\' updated successfully!', 1, '2025-06-05 17:17:21'),
(120, 2, NULL, 'Book \'Woven Skies\' by Caleb Drayton added successfully!', 1, '2025-06-05 17:18:00'),
(121, 2, NULL, ' Added new book \'Woven Skies\' by Caleb Drayton!', 1, '2025-06-05 17:18:00'),
(122, 2, NULL, 'Book \'The Misadventures of Marvin Mope\' by Tessa Blythe added successfully!', 1, '2025-06-05 17:18:43'),
(123, 2, NULL, ' Added new book \'The Misadventures of Marvin Mope\' by Tessa Blythe!', 1, '2025-06-05 17:18:43'),
(124, 2, NULL, 'Book \'How Not to Rob a Bank \' by Leon Winters added successfully!', 1, '2025-06-05 17:19:15'),
(125, 2, NULL, ' Added new book \'How Not to Rob a Bank \' by Leon Winters!', 1, '2025-06-05 17:19:15'),
(126, 2, NULL, 'Book \'Iron Chase Protocol \' by Jaxon Reid added successfully!', 1, '2025-06-05 17:19:46'),
(127, 2, NULL, ' Added new book \'Iron Chase Protocol \' by Jaxon Reid!', 1, '2025-06-05 17:19:46'),
(128, 2, NULL, 'Book \'Code Red: Delta Horizon \' by  Ari Steele added successfully!', 1, '2025-06-05 17:20:15'),
(129, 2, NULL, ' Added new book \'Code Red: Delta Horizon \' by  Ari Steele!', 1, '2025-06-05 17:20:15'),
(130, 2, NULL, 'Book \'Code Red: Delta Horizon \' updated successfully!', 1, '2025-06-05 17:20:46'),
(131, 2, NULL, 'Book \'The Ember Crown \' by Seraphine Vale added successfully!', 1, '2025-06-05 17:21:07'),
(132, 2, NULL, ' Added new book \'The Ember Crown \' by Seraphine Vale!', 1, '2025-06-05 17:21:07'),
(133, 2, NULL, 'Book \'Thorn of the Sky King \' by  Lorien Graves added successfully!', 1, '2025-06-05 17:21:49'),
(134, 2, NULL, ' Added new book \'Thorn of the Sky King \' by  Lorien Graves!', 1, '2025-06-05 17:21:49'),
(135, 2, NULL, 'Book \'Ashes of the Manor\' by Eleanor C. Whitmore 	 added successfully!', 1, '2025-06-05 17:23:15'),
(136, 2, NULL, ' Added new book \'Ashes of the Manor\' by Eleanor C. Whitmore 	!', 1, '2025-06-05 17:23:15'),
(137, 2, NULL, 'Book \'2.	The Last Lantern of Havershire\' by  Edmund Blake added successfully!', 1, '2025-06-05 17:23:32'),
(138, 2, NULL, ' Added new book \'2.	The Last Lantern of Havershire\' by  Edmund Blake!', 1, '2025-06-05 17:23:32'),
(139, 2, NULL, 'Book \'Beneath the Willow Crypt\' by  Nico Ravenhurst 	 added successfully!', 1, '2025-06-05 17:24:19'),
(140, 2, NULL, ' Added new book \'Beneath the Willow Crypt\' by  Nico Ravenhurst 	!', 1, '2025-06-05 17:24:19'),
(141, 2, NULL, 'Book \'2.	The Scent of Blood and Pine\' by   Vera Cross added successfully!', 1, '2025-06-05 17:24:35'),
(142, 2, NULL, ' Added new book \'2.	The Scent of Blood and Pine\' by   Vera Cross!', 1, '2025-06-05 17:24:35'),
(143, 2, NULL, 'Book \'Paper Cranes and Broken Promises\' by   Noelle Avery  added successfully!', 1, '2025-06-05 17:25:52'),
(144, 2, NULL, ' Added new book \'Paper Cranes and Broken Promises\' by   Noelle Avery !', 1, '2025-06-05 17:25:52'),
(145, 2, NULL, 'Book \'The Weight of Sunday Silence\' by Damien Cole added successfully!', 1, '2025-06-05 17:26:36'),
(146, 2, NULL, ' Added new book \'The Weight of Sunday Silence\' by Damien Cole!', 1, '2025-06-05 17:26:36'),
(147, 2, NULL, 'Book \'The Scent of Blood and Pine\' updated successfully!', 1, '2025-06-05 17:26:53'),
(148, 2, NULL, 'Book \'	The Last Lantern of Havershire\' updated successfully!', 1, '2025-06-05 17:27:12'),
(149, 2, NULL, 'Book \'	The Last Lantern of Havershire\' updated successfully!', 1, '2025-06-05 17:27:48'),
(150, 2, NULL, 'Book \'Letters to the Moonlight\' by Harper Linette 	 added successfully!', 1, '2025-06-05 17:28:48'),
(151, 2, NULL, ' Added new book \'Letters to the Moonlight\' by Harper Linette 	!', 1, '2025-06-05 17:28:48'),
(152, 2, NULL, 'Book \'A Season of Lavender Hearts\' by  Julian Roth added successfully!', 1, '2025-06-05 17:29:07'),
(153, 2, NULL, ' Added new book \'A Season of Lavender Hearts\' by  Julian Roth!', 1, '2025-06-05 17:29:07'),
(154, 2, NULL, 'Book \'The Fourth Door \' by Nina Vale  added successfully!', 1, '2025-06-05 17:30:19'),
(155, 2, NULL, ' Added new book \'The Fourth Door \' by Nina Vale !', 1, '2025-06-05 17:30:19'),
(156, 2, NULL, 'Book \'Whispers on Line Nine \' by Derek Sloan added successfully!', 1, '2025-06-05 17:31:16'),
(157, 2, NULL, ' Added new book \'Whispers on Line Nine \' by Derek Sloan!', 1, '2025-06-05 17:31:16'),
(158, 2, NULL, 'Book \'The Painter of Warsaw\' by  Clara Bellamy  added successfully!', 1, '2025-06-05 17:31:50'),
(159, 2, NULL, ' Added new book \'The Painter of Warsaw\' by  Clara Bellamy !', 1, '2025-06-05 17:31:50'),
(160, 2, NULL, 'Book \'	Saffron Winds of the Raj\' by Anaya Deshmukh added successfully!', 1, '2025-06-05 17:32:08'),
(161, 2, NULL, ' Added new book \'	Saffron Winds of the Raj\' by Anaya Deshmukh!', 1, '2025-06-05 17:32:08'),
(162, 2, NULL, 'Book \'Echoes of a Shattered Violin: The Elise Moreau Story \' by Joseph Quinn added successfully!', 1, '2025-06-05 17:32:54'),
(163, 2, NULL, ' Added new book \'Echoes of a Shattered Violin: The Elise Moreau Story \' by Joseph Quinn!', 1, '2025-06-05 17:32:54'),
(164, 2, NULL, 'Book \'Walking the Divide: The Life of Saul Merriman\' by Lena Rhodes added successfully!', 1, '2025-06-05 17:33:19'),
(165, 2, NULL, ' Added new book \'Walking the Divide: The Life of Saul Merriman\' by Lena Rhodes!', 1, '2025-06-05 17:33:19'),
(166, NULL, 3, 'Book deleted successfully!', 0, '2025-06-05 17:34:24'),
(167, NULL, 3, 'Book deleted successfully!', 0, '2025-06-05 17:34:29'),
(168, NULL, 3, 'Book deleted successfully!', 0, '2025-06-05 17:34:33'),
(169, NULL, 3, 'Book deleted successfully!', 0, '2025-06-05 17:34:38'),
(170, NULL, 3, 'Book deleted successfully!', 0, '2025-06-05 17:34:41'),
(171, NULL, 3, 'Book deleted successfully!', 0, '2025-06-05 17:34:44'),
(172, NULL, 3, 'Book deleted successfully!', 0, '2025-06-05 17:34:49'),
(173, 2, NULL, 'Book \'The Goldfinch \' updated successfully!', 1, '2025-06-05 18:31:50'),
(174, 2, NULL, 'Book \'Normal People\' updated successfully!', 1, '2025-06-05 18:32:25'),
(175, 2, NULL, 'Book \'Good Omens \' updated successfully!', 1, '2025-06-05 18:33:06'),
(176, 2, NULL, 'Book \'Bridget Jones&#39;s Diary\' updated successfully!', 1, '2025-06-05 18:33:53'),
(177, 2, NULL, 'Book \'Bridget Jones Diary\' updated successfully!', 1, '2025-06-05 18:34:17'),
(178, 2, NULL, 'Book \'The Bourne Identity \' updated successfully!', 1, '2025-06-05 18:35:08'),
(179, 2, NULL, 'Book \'Jack Reacher: Killing Floor\' updated successfully!', 1, '2025-06-05 18:35:30'),
(180, 2, NULL, 'Book \'The Name of the Wind \' updated successfully!', 1, '2025-06-05 18:36:35'),
(181, 2, NULL, 'Book \'Mistborn: The Final Empire\' updated successfully!', 1, '2025-06-05 18:36:58'),
(182, 2, NULL, 'Book \'Pride and Prejudice\' updated successfully!', 1, '2025-06-05 18:37:59'),
(183, 2, NULL, 'Book \'Jane Eyre \' updated successfully!', 1, '2025-06-05 18:39:24'),
(184, 2, NULL, 'Book \'The Shining\' updated successfully!', 1, '2025-06-05 18:40:15'),
(185, 2, NULL, 'Book \' Mexican Gothic \' updated successfully!', 1, '2025-06-05 18:40:58'),
(186, 2, NULL, 'Book \'A Little Life\' updated successfully!', 1, '2025-06-05 18:41:45'),
(187, 2, NULL, 'Book \' The Kite Runner \' updated successfully!', 1, '2025-06-05 18:43:37'),
(188, 2, NULL, 'Book \'Me Before You \' updated successfully!', 1, '2025-06-05 18:45:12'),
(189, 2, NULL, 'Book \'The Rosie Project\' updated successfully!', 1, '2025-06-05 18:45:37'),
(190, 2, NULL, 'Book \'Gone Girl \' updated successfully!', 1, '2025-06-05 18:46:27'),
(191, 2, NULL, 'Book \'  The Girl with the Dragon Tattoo\' updated successfully!', 1, '2025-06-05 18:46:53'),
(192, 2, NULL, 'Book \'The Book Thief \' updated successfully!', 1, '2025-06-05 18:47:38'),
(193, 2, NULL, 'Book \' All the Light We Cannot See \' updated successfully!', 1, '2025-06-05 18:48:04'),
(194, 2, NULL, 'Book \'The Seven Husbands of Evelyn Hugo\' updated successfully!', 1, '2025-06-05 18:49:05'),
(195, 2, NULL, 'Book \'Daisy Jones & The Six\' updated successfully!', 1, '2025-06-05 18:49:28'),
(196, 2, NULL, 'Book \'The Goldfinch \' updated successfully!', 1, '2025-06-05 18:50:45'),
(197, 2, NULL, 'Book \'Normal People\' updated successfully!', 1, '2025-06-05 18:51:02'),
(198, 2, NULL, 'Book \'Good Omens \' updated successfully!', 1, '2025-06-05 18:51:22'),
(199, 2, NULL, 'Book \'Bridget Jones Diary\' updated successfully!', 1, '2025-06-05 18:52:13'),
(200, 2, NULL, 'Book \'The Bourne Identity \' updated successfully!', 1, '2025-06-05 18:52:32'),
(201, 2, NULL, 'Book \'Jack Reacher: Killing Floor\' updated successfully!', 1, '2025-06-05 18:53:28'),
(202, 2, NULL, 'Book \'The Name of the Wind \' updated successfully!', 1, '2025-06-05 18:53:43'),
(203, 2, NULL, 'Book \'Mistborn: The Final Empire\' updated successfully!', 1, '2025-06-05 18:54:17'),
(204, 2, NULL, 'Book \'Pride and Prejudice\' updated successfully!', 1, '2025-06-05 18:54:54'),
(205, 2, NULL, 'Book \'Jane Eyre \' updated successfully!', 1, '2025-06-05 18:55:37'),
(206, 2, NULL, 'Book \'The Shining\' updated successfully!', 1, '2025-06-05 18:56:13'),
(207, 2, NULL, 'Book \'The Shining\' updated successfully!', 1, '2025-06-05 18:56:41'),
(208, 2, NULL, 'Book \' Mexican Gothic \' updated successfully!', 1, '2025-06-05 18:57:14'),
(209, 2, NULL, 'Book \'The Rosie Project\' updated successfully!', 0, '2025-06-05 18:58:39'),
(210, 2, NULL, 'Book \'A Little Life\' updated successfully!', 0, '2025-06-05 18:59:01'),
(211, 2, NULL, 'Book \' The Kite Runner \' updated successfully!', 0, '2025-06-05 19:01:33'),
(212, 2, NULL, 'Book \'Me Before You \' updated successfully!', 0, '2025-06-05 19:01:54'),
(213, 2, NULL, 'Book \'The Rosie Project\' updated successfully!', 0, '2025-06-05 19:02:10'),
(214, 2, NULL, 'Book \'Gone Girl \' updated successfully!', 0, '2025-06-05 19:02:30'),
(215, 2, NULL, 'Book \'  The Girl with the Dragon Tattoo\' updated successfully!', 0, '2025-06-05 19:03:55'),
(216, 2, NULL, 'Book \'The Book Thief \' updated successfully!', 0, '2025-06-05 19:04:14'),
(217, 2, NULL, 'Book \' All the Light We Cannot See \' updated successfully!', 0, '2025-06-05 19:04:28'),
(218, 2, NULL, 'Book \'The Seven Husbands of Evelyn Hugo\' updated successfully!', 0, '2025-06-05 19:05:15'),
(219, 2, NULL, 'Book \'Daisy Jones & The Six\' updated successfully!', 0, '2025-06-05 19:05:51'),
(220, 2, NULL, 'Book rated successfully!', 0, '2025-06-05 19:06:36'),
(221, 2, NULL, 'Book rated successfully!', 0, '2025-06-05 19:06:41'),
(222, 2, NULL, 'Book rated successfully!', 0, '2025-06-05 19:06:48'),
(223, 2, NULL, 'Book rated successfully!', 0, '2025-06-05 19:06:53'),
(224, 2, NULL, 'Book rated successfully!', 0, '2025-06-05 19:06:56'),
(225, 2, NULL, 'Book rated successfully!', 0, '2025-06-05 19:07:01'),
(226, 2, NULL, 'Book rated successfully!', 0, '2025-06-05 19:07:06'),
(227, 2, NULL, 'Book rated successfully!', 0, '2025-06-05 19:07:15'),
(228, 2, NULL, 'Book rated successfully!', 0, '2025-06-05 19:07:19'),
(229, 2, NULL, 'Book rated successfully!', 0, '2025-06-05 19:07:25'),
(230, 2, NULL, 'Book rated successfully!', 0, '2025-06-05 19:07:42'),
(231, 2, NULL, 'Book rated successfully!', 0, '2025-06-05 19:08:01'),
(232, 2, NULL, 'Book rated successfully!', 0, '2025-06-05 19:08:10'),
(233, 2, NULL, 'Book rated successfully!', 0, '2025-06-05 19:08:20'),
(234, 2, NULL, 'Book rated successfully!', 0, '2025-06-05 19:08:29'),
(235, 2, NULL, 'Book rated successfully!', 0, '2025-06-05 19:08:40'),
(236, 2, NULL, 'Book rated successfully!', 0, '2025-06-05 19:08:48'),
(237, 2, NULL, 'Book rated successfully!', 0, '2025-06-05 19:08:55'),
(238, 2, NULL, 'Book rated successfully!', 0, '2025-06-05 19:09:02'),
(239, 2, NULL, 'Book rated successfully!', 0, '2025-06-05 19:09:11'),
(240, 2, NULL, 'Book rated successfully!', 0, '2025-06-05 19:09:16'),
(241, 2, NULL, 'Book rated successfully!', 0, '2025-06-05 19:09:26'),
(242, 2, NULL, 'Book rated successfully!', 0, '2025-06-05 19:09:34'),
(243, 2, NULL, 'Book rated successfully!', 0, '2025-06-05 19:09:44'),
(244, 2, NULL, 'Book status updated successfully!', 0, '2025-06-05 19:10:04'),
(245, 2, NULL, 'Book status updated successfully!', 0, '2025-06-05 19:10:12'),
(246, 2, NULL, 'Book status updated successfully!', 0, '2025-06-05 19:10:18'),
(247, 2, NULL, 'Book status updated successfully!', 0, '2025-06-05 19:10:25'),
(248, 5, NULL, 'Book \'The Goldfinch \' by Donna Tartt   added successfully!', 0, '2025-06-05 19:11:34'),
(249, 5, NULL, ' Added new book \'The Goldfinch \' by Donna Tartt  !', 0, '2025-06-05 19:11:34'),
(250, 5, NULL, 'You are now a co-owner of \'Normal People\' by Sally Rooney!', 0, '2025-06-05 19:11:55'),
(251, 5, NULL, ' Added as co-owner of \'Normal People\' by Sally Rooney!', 0, '2025-06-05 19:11:55'),
(252, 5, NULL, 'Book status updated successfully!', 0, '2025-06-05 19:12:20'),
(253, 5, NULL, 'Book status updated successfully!', 0, '2025-06-05 19:12:22'),
(254, 5, NULL, 'Book status updated successfully!', 0, '2025-06-05 19:12:30'),
(255, 5, NULL, 'Book rated successfully!', 0, '2025-06-05 19:12:50'),
(256, 2, NULL, 'Book \'urmi\' by urmi added successfully!', 0, '2025-06-06 10:06:15'),
(257, 2, NULL, ' Added new book \'urmi\' by urmi!', 0, '2025-06-06 10:06:15'),
(258, 2, NULL, 'Book status updated successfully!', 0, '2025-06-06 10:06:26'),
(259, 2, NULL, 'Book rated successfully!', 0, '2025-06-06 10:07:13'),
(260, 2, NULL, 'Your ownership of the book was removed successfully!', 0, '2025-06-06 10:07:22'),
(261, NULL, 2, 'Staff \'sadeka\' added successfully!', 0, '2025-06-06 10:25:45'),
(262, 2, NULL, 'Book \'Any Book\' by Any author added successfully!', 0, '2025-06-06 11:24:22'),
(263, 2, NULL, ' Added new book \'Any Book\' by Any author!', 0, '2025-06-06 11:24:22'),
(264, 2, NULL, 'Book \'Any Book\' updated successfully!', 0, '2025-06-06 11:24:47'),
(265, 2, NULL, 'Book status updated successfully!', 0, '2025-06-06 11:24:59'),
(266, 2, NULL, 'Book rated successfully!', 0, '2025-06-06 11:25:08'),
(267, 2, NULL, 'Your ownership of the book was removed successfully!', 0, '2025-06-06 11:25:15'),
(268, NULL, 2, 'Staff \'samia\' added successfully!', 0, '2025-06-06 11:28:20'),
(269, NULL, 2, 'Staff \'sami\' updated successfully!', 0, '2025-06-06 11:28:53'),
(270, NULL, 2, 'Staff deleted successfully!', 0, '2025-06-06 11:29:07');

-- --------------------------------------------------------

--
-- Table structure for table `tblpasswordresets`
--

CREATE TABLE `tblpasswordresets` (
  `resetID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `token` varchar(100) NOT NULL,
  `expiryDate` datetime NOT NULL,
  `used` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpasswordresets`
--

INSERT INTO `tblpasswordresets` (`resetID`, `userID`, `token`, `expiryDate`, `used`) VALUES
(1, 2, '3244cac0962aa76091823014e2248d133217f5ec7a36aadd73ab90e15d5ded9e', '2025-06-03 14:06:41', 1),
(2, 2, '8a3e8a046e8e8e7af05c7c17a8ad0017fd3e0eb164244971c620ef9150406b71', '2025-06-03 14:07:58', 1),
(3, 2, 'd5669ec846c4463b3d1f63ef9b293a237b1f0ef36dcdfb45082a738c71977a6f', '2025-06-03 14:29:23', 1),
(4, 2, 'c351265c062218c4e18ba44d57b195159503c91cb794dfa03669a4c3cd2a0c74', '2025-06-03 14:31:43', 1),
(5, 2, 'ca59064f6ca273224de4cb48df3c290d428f4ec5deff4f01262490fb46101bd9', '2025-06-05 15:52:33', 1),
(6, 2, '52f61a5566b3c91100c5842cec56b9ee2020853df5f9f3303c60b28a3786c731', '2025-06-06 12:19:53', 1),
(7, 2, '2c89b25c1b388c4ebdb28abef101069b0dc360d3fdbc87ce9c817489538b7d84', '2025-06-06 12:20:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblratings`
--

CREATE TABLE `tblratings` (
  `ratingID` int(11) NOT NULL,
  `bookID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `rating` int(11) NOT NULL CHECK (`rating` between 1 and 5),
  `ratedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblratings`
--

INSERT INTO `tblratings` (`ratingID`, `bookID`, `userID`, `rating`, `ratedDate`) VALUES
(12, 25, 2, 4, '2025-06-05'),
(13, 26, 2, 4, '2025-06-05'),
(14, 27, 2, 5, '2025-06-05'),
(15, 28, 2, 4, '2025-06-05'),
(16, 29, 2, 5, '2025-06-05'),
(17, 30, 2, 4, '2025-06-05'),
(18, 31, 2, 4, '2025-06-05'),
(19, 32, 2, 5, '2025-06-05'),
(20, 33, 2, 5, '2025-06-05'),
(21, 34, 2, 4, '2025-06-05'),
(22, 35, 2, 3, '2025-06-05'),
(23, 36, 2, 4, '2025-06-05'),
(24, 37, 2, 5, '2025-06-05'),
(25, 38, 2, 5, '2025-06-05'),
(26, 39, 2, 5, '2025-06-05'),
(27, 40, 2, 4, '2025-06-05'),
(28, 42, 2, 2, '2025-06-05'),
(29, 43, 2, 4, '2025-06-05'),
(30, 44, 2, 4, '2025-06-05'),
(31, 45, 2, 4, '2025-06-05'),
(32, 46, 5, 5, '2025-06-05');

-- --------------------------------------------------------

--
-- Table structure for table `tblreviews`
--

CREATE TABLE `tblreviews` (
  `reviewID` int(11) NOT NULL,
  `bookID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `reviewText` text NOT NULL,
  `reviewDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff`
--

CREATE TABLE `tblstaff` (
  `staffID` int(11) NOT NULL,
  `staffName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','staff') NOT NULL,
  `hireDate` date NOT NULL,
  `isAdmin` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblstaff`
--

INSERT INTO `tblstaff` (`staffID`, `staffName`, `email`, `password`, `role`, `hireDate`, `isAdmin`) VALUES
(1, 'Jane Smith', 'jane1@example.com', '$2y$10$dummyhash1', 'admin', '2025-04-16', 1),
(2, 'Naresh', 'naresh@gmail.com', '$2y$10$gI3aqQFoQMixj9DNUbeFSutkNjpSbvEiGfDucuRQfAJWiPhp376u6', 'admin', '2025-05-06', 1),
(3, 'Haude', 'haude@gmail.com', '$2y$10$DW0EZtKSRQGVy7fTINTiwOdhx9x0R.X547ErT2cJb9RnGcx9K/NLq', 'staff', '2025-05-14', 0),
(4, 'Hawa Ram', 'admin@gmail.com', '$2y$10$whwrl4AisOyA7vZh.7iYbOO.6KkihCxvB1rVhIa1XzEYCGJ2KzbBS', 'staff', '2025-05-16', 0),
(7, 'sami', 'samia@gmail.com', '$2y$10$UId9hg.SOYij6g09y8Hauu4u0bp.FqrzfHXADeUTWsPFV/w5qXaPa', 'staff', '2025-06-06', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `userID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `joinDate` date NOT NULL,
  `isActive` tinyint(1) DEFAULT 1,
  `lastLogin` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`userID`, `username`, `email`, `password`, `joinDate`, `isActive`, `lastLogin`) VALUES
(1, 'john_doe', 'john@example.com', '$2y$10$dummyhash2', '2025-04-16', 1, NULL),
(2, 'hawa', 'hawa@gmail.com', '$2y$10$TDIMb7iAlWZjkSWNiYO4/O3v0Ff9H2PkESubYVNw6ycwhQPoSfiW6', '2025-04-30', 1, '2025-06-06 11:24:04'),
(4, 'maya', 'maya@gmail.com', '$2y$10$xSqD.ci70bEHBiDDg6TNuuTS13mSeWbWGfsGCNgo1Dt99UEaCDhH.', '2025-05-27', 1, '2025-05-29 11:14:50'),
(5, 'urmi', 'urmi@gmail.com', '$2y$10$RGpeNDndOpvH5k0dozjlrOcB8cLluo3lXRUHCfgsQTOFXposNR82y', '2025-06-05', 1, '2025-06-05 19:10:47'),
(6, 'salman', 'salman@gmail.com', '$2y$10$47AWgNnYRLdpo5yoO9./duDocyHQfP1XPhDXIBRUAonUIbL.G1JGy', '2025-06-05', 1, NULL),
(8, 'hawa12', 'ramj@gmail.com', '$2y$10$FTRvUy/B6qf2OuOqjvmWI.MleAk76XE/fLAOgW5V6uEJTJOf29tB6', '2025-06-06', 1, NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_book_ownership`
-- (See below for the actual view)
--
CREATE TABLE `vw_book_ownership` (
`bookID` int(11)
,`title` varchar(255)
,`author` varchar(255)
,`userID` int(11)
,`username` varchar(50)
,`ownershipType` enum('Owner','Co-owner','Borrower')
);

-- --------------------------------------------------------

--
-- Structure for view `vw_book_ownership`
--
DROP TABLE IF EXISTS `vw_book_ownership`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_book_ownership`  AS SELECT `b`.`bookID` AS `bookID`, `b`.`title` AS `title`, `b`.`author` AS `author`, `u`.`userID` AS `userID`, `u`.`username` AS `username`, `o`.`ownershipType` AS `ownershipType` FROM ((`tblbooks` `b` join `tblbook_ownership` `o` on(`b`.`bookID` = `o`.`bookID`)) join `tblusers` `u` on(`o`.`userID` = `u`.`userID`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblauditlogs`
--
ALTER TABLE `tblauditlogs`
  ADD PRIMARY KEY (`logID`),
  ADD KEY `staffID` (`staffID`),
  ADD KEY `idx_actionDate` (`actionDate`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`bookID`),
  ADD UNIQUE KEY `unique_book` (`title`,`author`) USING BTREE,
  ADD KEY `genreID` (`genreID`),
  ADD KEY `idx_addedDate` (`addedDate`);

--
-- Indexes for table `tblbookstatus`
--
ALTER TABLE `tblbookstatus`
  ADD PRIMARY KEY (`statusID`),
  ADD KEY `idx_bookstatus_bookID` (`bookID`),
  ADD KEY `idx_statusDate` (`statusDate`),
  ADD KEY `updatedBy` (`updatedBy`),
  ADD KEY `idx_bookstatus_bookID_statusDate` (`bookID`,`statusDate`);

--
-- Indexes for table `tblbook_ownership`
--
ALTER TABLE `tblbook_ownership`
  ADD PRIMARY KEY (`ownershipID`),
  ADD UNIQUE KEY `unique_ownership` (`bookID`,`userID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `idx_addedDate` (`addedDate`),
  ADD KEY `idx_book_ownership_bookID_userID` (`bookID`,`userID`);

--
-- Indexes for table `tblgenres`
--
ALTER TABLE `tblgenres`
  ADD PRIMARY KEY (`genreID`),
  ADD UNIQUE KEY `genreName` (`genreName`),
  ADD KEY `createdBy` (`createdBy`);

--
-- Indexes for table `tblnotifications`
--
ALTER TABLE `tblnotifications`
  ADD PRIMARY KEY (`notificationID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `staffID` (`staffID`),
  ADD KEY `idx_createdDate` (`createdDate`);

--
-- Indexes for table `tblpasswordresets`
--
ALTER TABLE `tblpasswordresets`
  ADD PRIMARY KEY (`resetID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `idx_token` (`token`);

--
-- Indexes for table `tblratings`
--
ALTER TABLE `tblratings`
  ADD PRIMARY KEY (`ratingID`),
  ADD UNIQUE KEY `unique_rating` (`bookID`,`userID`),
  ADD KEY `idx_ratings_bookID` (`bookID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `tblreviews`
--
ALTER TABLE `tblreviews`
  ADD PRIMARY KEY (`reviewID`),
  ADD KEY `idx_reviews_bookID` (`bookID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `tblstaff`
--
ALTER TABLE `tblstaff`
  ADD PRIMARY KEY (`staffID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblauditlogs`
--
ALTER TABLE `tblauditlogs`
  MODIFY `logID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `bookID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tblbookstatus`
--
ALTER TABLE `tblbookstatus`
  MODIFY `statusID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tblbook_ownership`
--
ALTER TABLE `tblbook_ownership`
  MODIFY `ownershipID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tblgenres`
--
ALTER TABLE `tblgenres`
  MODIFY `genreID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblnotifications`
--
ALTER TABLE `tblnotifications`
  MODIFY `notificationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `tblpasswordresets`
--
ALTER TABLE `tblpasswordresets`
  MODIFY `resetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblratings`
--
ALTER TABLE `tblratings`
  MODIFY `ratingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tblreviews`
--
ALTER TABLE `tblreviews`
  MODIFY `reviewID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblstaff`
--
ALTER TABLE `tblstaff`
  MODIFY `staffID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblauditlogs`
--
ALTER TABLE `tblauditlogs`
  ADD CONSTRAINT `tblauditlogs_ibfk_1` FOREIGN KEY (`staffID`) REFERENCES `tblstaff` (`staffID`) ON DELETE CASCADE;

--
-- Constraints for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD CONSTRAINT `tblbooks_ibfk_1` FOREIGN KEY (`genreID`) REFERENCES `tblgenres` (`genreID`);

--
-- Constraints for table `tblbookstatus`
--
ALTER TABLE `tblbookstatus`
  ADD CONSTRAINT `tblbookstatus_ibfk_2` FOREIGN KEY (`updatedBy`) REFERENCES `tblusers` (`userID`);

--
-- Constraints for table `tblbook_ownership`
--
ALTER TABLE `tblbook_ownership`
  ADD CONSTRAINT `tblbook_ownership_ibfk_1` FOREIGN KEY (`bookID`) REFERENCES `tblbooks` (`bookID`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblbook_ownership_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `tblusers` (`userID`) ON DELETE CASCADE;

--
-- Constraints for table `tblgenres`
--
ALTER TABLE `tblgenres`
  ADD CONSTRAINT `tblgenres_ibfk_1` FOREIGN KEY (`createdBy`) REFERENCES `tblstaff` (`staffID`);

--
-- Constraints for table `tblnotifications`
--
ALTER TABLE `tblnotifications`
  ADD CONSTRAINT `tblnotifications_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `tblusers` (`userID`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblnotifications_ibfk_2` FOREIGN KEY (`staffID`) REFERENCES `tblstaff` (`staffID`) ON DELETE CASCADE;

--
-- Constraints for table `tblpasswordresets`
--
ALTER TABLE `tblpasswordresets`
  ADD CONSTRAINT `tblpasswordresets_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `tblusers` (`userID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
