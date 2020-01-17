-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 30-Set-2019 às 21:22
-- Versão do servidor: 10.1.38-MariaDB
-- versão do PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dwa`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `carro_foto`
--

CREATE TABLE `carro_foto` (
  `id` int(11) NOT NULL,
  `id_carro` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `carro_foto`
--

INSERT INTO `carro_foto` (`id`, `id_carro`, `foto`) VALUES
(1, 1, '20190930154725_ecoSport1.jpg'),
(2, 1, '20190930154725_ecoSport2.jpg'),
(3, 1, '20190930154725_ecoSport3.jpg'),
(4, 3, '20190923164825_hb201.jpg'),
(5, 3, '20190923164825_hb202.jpg'),
(6, 3, '20190923164825_hb203.jpg'),
(7, 4, '20190923172954_captur1.jpg'),
(8, 4, '20190923172954_captur2.jpg'),
(9, 4, '20190923172954_captur3.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carro_foto`
--
ALTER TABLE `carro_foto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carro_foto`
--
ALTER TABLE `carro_foto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
