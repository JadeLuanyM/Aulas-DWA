-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 30-Set-2019 às 22:43
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
-- Estrutura da tabela `carro`
--

CREATE TABLE `carro` (
  `id` int(11) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `modelo` varchar(30) NOT NULL,
  `ano` smallint(6) NOT NULL,
  `cor` varchar(15) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `carro`
--

INSERT INTO `carro` (`id`, `marca`, `modelo`, `ano`, `cor`, `foto`) VALUES
(1, 'Ford', 'EcoSport', 2020, 'Azul', '20190923164546_ecoSport.jpg'),
(3, 'Hyundai', 'HB20', 2019, 'Areia', '20190923164825_hb20.jpg'),
(4, 'Renault', 'Captur', 2019, 'Vermelho', '20190923172954_captur.jpg'),
(5, 'Chevrolet', 'Prisma', 2017, 'Prata', '');

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

-- --------------------------------------------------------

--
-- Estrutura da tabela `hero_data`
--

CREATE TABLE `hero_data` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `nasc` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `hero_power`
--

CREATE TABLE `hero_power` (
  `id` int(11) NOT NULL,
  `id_hero` int(11) NOT NULL,
  `power` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Indexes for table `carro`
--
ALTER TABLE `carro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carro_foto`
--
ALTER TABLE `carro_foto`
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
-- AUTO_INCREMENT for table `carro`
--
ALTER TABLE `carro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `carro_foto`
--
ALTER TABLE `carro_foto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pessoa`
--
ALTER TABLE `pessoa`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
