-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 09-Set-2019 às 22:27
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
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `foto` mediumint(9) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `telefone` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id`, `foto`, `nome`, `endereco`, `telefone`) VALUES
(1, 2, 'Caldwell', '4366 Augue Rd.', '239-4224'),
(2, 2, 'Levi', '994-6600 Vitae Av.', '55-891-835-9420'),
(3, 1, 'Julie', 'P.O. Box 574, 130 Dui Ave', '55-250-704-8039'),
(4, 2, 'Yolanda', 'P.O. Box 926, 9511 Ipsum Ave', '55-833-477-7849'),
(5, 6, 'Price', 'P.O. Box 646, 748 In Street', '548-9040'),
(6, 6, 'Yuli', 'Ap #495-1705 Hendrerit St.', '55-794-253-9270'),
(7, 1, 'Austin', 'Ap #893-3443 Lorem Street', '55-183-399-7424'),
(8, 6, 'Aileen', '973-7898 Consequat St.', '233-7611'),
(9, 3, 'Olga', '223-2120 Malesuada Ave', '863-9812'),
(10, 8, 'Adam', 'Ap #473-7082 Cursus. Av.', '484-2266'),
(11, 3, 'Courtney', 'P.O. Box 391, 2151 Mauris Rd.', '55-786-188-4436'),
(12, 4, 'Reed', '299-5981 Suspendisse Rd.', '571-3454'),
(13, 3, 'Brenden', '979 Enim. St.', '55-796-706-8627'),
(14, 4, 'Orson', 'Ap #493-5688 In Road', '55-586-665-1920'),
(15, 7, 'Montana', 'P.O. Box 573, 783 Nunc Road', '429-2530'),
(16, 3, 'Jelani', '3341 Varius Av.', '721-9516'),
(17, 3, 'Brady', '997-5430 Dui Avenue', '620-4486'),
(18, 3, 'Herman', 'Ap #971-616 Ullamcorper Rd.', '403-9173'),
(19, 8, 'Constance', 'Ap #745-9546 Integer Rd.', '359-8609'),
(20, 9, 'Kelly', '3793 Eu, Street', '55-577-700-6867'),

-- --------------------------------------------------------

--
-- Estrutura da tabela `hero_data`
--

CREATE TABLE `hero_data` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `nasc` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `hero_data`
--

INSERT INTO `hero_data` (`id`, `nome`, `nasc`) VALUES
(1, 'Spider Man', 'USA'),
(2, 'Iron MaN', 'USA'),
(6, 'American Captain', 'USA');

-- --------------------------------------------------------

--
-- Estrutura da tabela `hero_power`
--

CREATE TABLE `hero_power` (
  `id` int(11) NOT NULL,
  `id_hero` int(11) NOT NULL,
  `power` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `hero_power`
--

INSERT INTO `hero_power` (`id`, `id_hero`, `power`) VALUES
(16, 1, 'Strong'),
(17, 1, 'Habilities of spider'),
(18, 1, ''),
(19, 1, ''),
(20, 1, ''),
(21, 2, 'Ironic'),
(22, 2, 'Sarcastic'),
(23, 2, 'Smart'),
(24, 2, 'Strong'),
(25, 2, 'Brave'),
(26, 6, 'Friendly'),
(27, 6, 'Strong'),
(28, 6, 'Smart'),
(29, 6, 'Gentleman'),
(30, 6, 'Speed');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

CREATE TABLE `pessoa` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `snome` varchar(255) DEFAULT NULL,
  `idade` mediumint(9) DEFAULT NULL,
  `sexo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pessoa`
--

INSERT INTO `pessoa` (`id`, `nome`, `snome`, `idade`, `sexo`) VALUES
(1, 'Neil', 'Rollins', 35, 'Feminino'),
(2, 'Jenna', 'Ramsey', 78, 'Masculino'),
(3, 'Irene', 'Tyson', 31, 'Feminino'),
(4, 'Destiny', 'Barry', 76, 'Feminino'),
(5, 'Erasmus', 'Hanson', 67, 'Feminino'),
(6, 'Avye', 'Sawyer', 74, 'Feminino'),
(102, 'Jade', 'Luany', 17, 'Feminino'),
(103, 'Lucas', 'Jumanji', 20, 'Masculino'),
(104, 'Pedro', 'Zambão', 15, 'Masculino');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hero_data`
--
ALTER TABLE `hero_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hero_power`
--
ALTER TABLE `hero_power`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `hero_data`
--
ALTER TABLE `hero_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hero_power`
--
ALTER TABLE `hero_power`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `pessoa`
--
ALTER TABLE `pessoa`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
