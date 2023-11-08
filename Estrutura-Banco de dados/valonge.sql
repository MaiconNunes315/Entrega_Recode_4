-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 08-Nov-2023 às 01:41
-- Versão do servidor: 10.1.38-MariaDB
-- versão do PHP: 5.6.40
CREATE DATABASE valonge;
USE valonge;
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


-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--

CREATE TABLE `contato` (
  `id` bigint(10) NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `data` datetime NOT NULL,
  `mensagem` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `telefone` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `nome` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `contato`
--

INSERT INTO `contato` (`id`, `email`, `data`, `mensagem`, `telefone`, `nome`) VALUES
(4, 'marli@hotmail.com', '2023-10-16 20:02:02', 'oi tudo bem, preciso de ajuda', '27596417', 'Marli '),
(5, 'nataliaptoledo@gmail.com', '2023-11-05 16:21:48', 'OlÃ¡', '21964437980', 'NATALIA PEREIRA TOLEDO'),
(6, 'mnunes315@hotmail.com', '2023-11-05 16:22:44', 'OlÃ¡', '21992113621', 'Maicon da Silva nunes'),
(7, 'mnunes315@hotmail.com', '2023-11-05 16:23:23', 'OlÃ¡', '21992113621', 'Maicon da Silva nunes'),
(8, 'mnunes315@hotmail.com', '2023-11-05 16:24:28', 'OlÃ¡', '21992113621', 'Maicon da Silva nunes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `destino`
--

CREATE TABLE `destino` (
  `id_destino` bigint(10) NOT NULL,
  `detalhes` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `pais` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `img` text COLLATE utf8_unicode_ci NOT NULL,
  `cidade` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `destino`
--

INSERT INTO `destino` (`id_destino`, `detalhes`, `estado`, `pais`, `img`, `cidade`) VALUES
(4, 'Praia paradisiacas', 'Rio grande do norte', 'Brasil', 'https://a.cdn-hotels.com/gdcs/production93/d122/f10e9ddf-e13f-405e-9cad-39766c3132a8.jpg?impolicy=fcrop&w=800&h=533&q=medium', 'Natal'),
(10, NULL, 'RJ', 'Brasil', 'https://magazine.zarpo.com.br/wp-content/uploads/2020/08/Mar-azul-e-ilhas-paradis%C3%ADacas-veja-o-que-fazer-em-Angra-dos-Reis-770x515.jpg', 'Angra dos Reis '),
(11, NULL, 'Flandes', 'Bélgica', 'https://ogimg.infoglobo.com.br/in/24393482-19c-692/FT1086A/87920576_Tourist-boats-are-seen-in-a-canal-of-the-old-town-of-Bruges-during-the-lockdown-imposed-by.jpg', 'Bruges'),
(12, '      Praias paradisíacas, ótimas noites de entretenimento.', 'Rio de Janeiro', 'Brasil', 'https://a.cdn-hotels.com/gdcs/production87/d1726/a96dc6a4-9f8e-4ddc-8770-04eb24c21650.jpg?impolicy=fcrop&w=800&h=533&q=medium', 'Buzios'),
(14, '										      \r\n      \r\n      ', 'Île de France', 'França', 'https://www.seguroviagem.org/wp-content/uploads/2017/07/eiffel-tower-pxabay-theDigitalArtist.jpg', 'Paris'),
(19, '      ', 'Nevada', 'United States America', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2a/34/2d/28/caption.jpg?w=700&h=-1&s=1&cx=662&cy=604&chk=v1_8984ddf3493edfb8c896', 'Las vegas'),
(20, '      ', 'Alagoas', 'Brasil', 'https://www.turismomaceio.com.br/img/xpraia-de-maragogi.jpg.pagespeed.ic.sze5z5bPm_.jpg', 'Maceió'),
(21, '					      Melhores lugares para entretenimento onde fica localizado os parques da Wall Disney.\r\n      ', 'Flórida', 'United States America', 'https://ficadicaorlando.com.br/wp-content/uploads/2022/11/9e15b7fd-52d0-4c8e-bba8-b603272dc6a8.webp', 'Orlando'),
(22, '      ', 'Lisboa', 'Portugal', 'https://www.ucp.pt/sites/default/files/styles/prose_large/public/2018-07/Cidade_Lisboa%20%281%29.jpg?itok=1g82KDpB', 'Lisboa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `hospedagem`
--

CREATE TABLE `hospedagem` (
  `id_hospedagem` bigint(10) NOT NULL,
  `nomeLocal` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `precoDiaria` decimal(10,2) NOT NULL,
  `endereco` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_destino` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` bigint(10) NOT NULL,
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
  `tipoUsuario` varchar(6) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `rg`, `endereco`, `cpf`, `estado`, `dataNascimento`, `telefone`, `criado_em`, `modificado_em`, `senha`, `email`, `tipoUsuario`) VALUES
(10, 'Fulano de tal', '12456214', 'Rua A 30; casa 2; Rio de Janeiro; 21000120', '222.111.333-54', 'Rio de Janeiro', '2000-10-02', '(21) 99999-9999', '2023-11-07 21:27:03', '2023-11-07 21:27:03', '123456', 'fulano@fulano.com', 'client'),
(11, 'Pedro Sampaio', '2135464', 'Rua tancredo neves 350; Bloco 2 ap 103; Rio de Janeiro; 21254545', '222.222.222-22', 'Rio de Janeiro', '1992-10-12', '(21) 99987-4545', '2023-11-07 21:28:05', '2023-11-07 21:28:05', '2134645', 'pedro@gmail.com', 'client');

-- --------------------------------------------------------

--
-- Estrutura da tabela `viagem`
--

CREATE TABLE `viagem` (
  `id_viagem` bigint(10) NOT NULL,
  `observacoes` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desconto` int(11) NOT NULL,
  `dataSaida` datetime NOT NULL,
  `dataEntrada` datetime NOT NULL,
  `id_destino` bigint(10) NOT NULL,
  `id_usuario` bigint(10) NOT NULL,
  `precoTotal` decimal(10,2) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `possuiHospedagem` binary(1) NOT NULL,
  `id_hospedagem` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destino`
--
ALTER TABLE `destino`
  ADD PRIMARY KEY (`id_destino`);

--
-- Indexes for table `hospedagem`
--
ALTER TABLE `hospedagem`
  ADD PRIMARY KEY (`id_hospedagem`),
  ADD KEY `fk_hospedagem` (`id_destino`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `viagem`
--
ALTER TABLE `viagem`
  ADD PRIMARY KEY (`id_viagem`),
  ADD KEY `viagem_ibfk_1` (`id_usuario`),
  ADD KEY `viagem_ibfk_2` (`id_destino`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contato`
--
ALTER TABLE `contato`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `destino`
--
ALTER TABLE `destino`
  MODIFY `id_destino` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `hospedagem`
--
ALTER TABLE `hospedagem`
  MODIFY `id_hospedagem` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `viagem`
--
ALTER TABLE `viagem`
  MODIFY `id_viagem` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
