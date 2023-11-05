-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 05-Nov-2023 às 20:32
-- Versão do servidor: 10.1.38-MariaDB
-- versão do PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `valonge`
--
CREATE DATABASE IF NOT EXISTS `valonge` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `valonge`;

DELIMITER $$
--
-- Functions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `calculaPrecoTotal` (`desconto` INT, `preco` DECIMAL(10,2)) RETURNS DECIMAL(10,2) BEGIN 
RETURN preco - (desconto /100 * preco); 
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--

CREATE TABLE IF NOT EXISTS `contato` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `data` datetime NOT NULL,
  `mensagem` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `telefone` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `nome` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `destino` (
  `id_destino` bigint(10) NOT NULL AUTO_INCREMENT,
  `detalhes` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pais` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `img` text COLLATE utf8_unicode_ci NOT NULL,
  `cidade` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `destino`
-- --------------------------------------------------------

--
-- Estrutura da tabela `hospedagem`
--

CREATE TABLE IF NOT EXISTS `hospedagem` (
  `id_hospedagem` bigint(10) NOT NULL AUTO_INCREMENT,
  `nomeLocal` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `precoDiaria` decimal(10,2) NOT NULL,
  `endereco` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_destino` bigint(10) NOT NULL,
  PRIMARY KEY (`id_hospedagem`),
  KEY `fk_hospedagem` (`id_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `hospedagem`
--
--------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `rg` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `endereco` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `cpf` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dataNascimento` date NOT NULL,
  `telefone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `criado_em` datetime NOT NULL,
  `modificado_em` datetime NOT NULL,
  `senha` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tipoUsuario` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `usuario`

-- --------------------------------------------------------

--
-- Estrutura da tabela `viagem`
--

CREATE TABLE IF NOT EXISTS `viagem` (
  `id_viagem` bigint(10) NOT NULL AUTO_INCREMENT,
  `observacoes` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desconto` int(11) NOT NULL,
  `dataSaida` datetime NOT NULL,
  `dataEntrada` datetime NOT NULL,
  `id_destino` bigint(10) NOT NULL,
  `id_usuario` bigint(10) NOT NULL,
  `precoTotal` decimal(10,2) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `possuiHospedagem` binary(1) NOT NULL,
  `id_hospedagem` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id_viagem`),
  KEY `viagem_ibfk_1` (`id_usuario`),
  KEY `viagem_ibfk_2` (`id_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `viagem`
--


-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `hospedagem`
--
ALTER TABLE `hospedagem`
  ADD CONSTRAINT `fk_hospedagem` FOREIGN KEY (`id_destino`) REFERENCES `destino` (`id_destino`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `viagem`
--
ALTER TABLE `viagem`
  ADD CONSTRAINT `viagem_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `viagem_ibfk_2` FOREIGN KEY (`id_destino`) REFERENCES `destino` (`id_destino`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
