-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Jun 2019 pada 16.38
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `note_app_models`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'boby', '2019-06-21 01:39:19', '2019-06-21 01:39:19'),
(3, 'andre update', '2019-06-20 19:03:19', '2019-06-20 19:14:04'),
(4, 'bagas', '2019-06-21 09:34:27', '2019-06-21 09:34:27'),
(5, 'putra', '2019-06-21 09:34:27', '2019-06-21 09:34:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `tittle` varchar(200) DEFAULT NULL,
  `note` text,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  `categoryId` varchar(200) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `notes`
--

INSERT INTO `notes` (`id`, `tittle`, `note`, `time`, `categoryId`, `createdAt`, `updatedAt`) VALUES
(3, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it', '2019-06-21 09:33:15', '1', '2019-06-21 09:33:15', '2019-06-21 09:33:15'),
(4, 'Lorem Ipsum is simply', ' Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it', '2019-06-21 09:33:15', '2', '2019-06-21 09:33:15', '2019-06-21 09:33:15'),
(5, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ', '2019-06-21 09:33:15', '3', '2019-06-21 09:33:15', '2019-06-21 09:33:15'),
(6, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it', '2019-06-21 09:35:59', '5', '2019-06-21 09:35:59', '2019-06-21 09:35:59'),
(7, 'Lorem Ipsum is simply', ' Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it', '2019-06-21 09:35:59', '4', '2019-06-21 09:35:59', '2019-06-21 09:35:59'),
(8, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ', '2019-06-21 09:35:59', '3', '2019-06-21 09:35:59', '2019-06-21 09:35:59'),
(9, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it', '2019-06-21 09:36:07', '5', '2019-06-21 09:36:07', '2019-06-21 09:36:07'),
(10, 'Lorem Ipsum is simply', ' Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it', '2019-06-21 09:36:07', '4', '2019-06-21 09:36:07', '2019-06-21 09:36:07'),
(11, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ', '2019-06-21 09:36:07', '3', '2019-06-21 09:36:07', '2019-06-21 09:36:07'),
(12, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it', '2019-06-21 09:36:12', '5', '2019-06-21 09:36:12', '2019-06-21 09:36:12'),
(13, 'Lorem Ipsum is simply', ' Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it', '2019-06-21 09:36:12', '4', '2019-06-21 09:36:12', '2019-06-21 09:36:12'),
(14, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ', '2019-06-21 09:36:12', '3', '2019-06-21 09:36:12', '2019-06-21 09:36:12'),
(15, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it', '2019-06-21 09:36:18', '5', '2019-06-21 09:36:18', '2019-06-21 09:36:18'),
(16, 'Lorem Ipsum is simply', ' Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it', '2019-06-21 09:36:18', '4', '2019-06-21 09:36:18', '2019-06-21 09:36:18'),
(17, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ', '2019-06-21 09:36:18', '3', '2019-06-21 09:36:18', '2019-06-21 09:36:18'),
(18, 'GHJGHHJHJGJ', ' JKHHKJHJKBBJK', '2019-06-21 12:56:00', '3', '2019-06-21 12:56:00', '2019-06-21 14:30:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20190620174310-create-category.js'),
('20190620193142-create-notes.js');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
