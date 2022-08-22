-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Ago-2022 às 19:03
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `experiencia3`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `fluxo`
--

CREATE TABLE `fluxo` (
  `ID_Fluxo` int(11) NOT NULL,
  `ID_Produto` int(11) NOT NULL DEFAULT 0,
  `Tipo_Fluxo` varchar(50) NOT NULL,
  `Quantidade` int(11) NOT NULL DEFAULT 0,
  `DataF` date NOT NULL,
  `Hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fluxo`
--

INSERT INTO `fluxo` (`ID_Fluxo`, `ID_Produto`, `Tipo_Fluxo`, `Quantidade`, `DataF`, `Hora`) VALUES
(136, 1, 'Entrada', 639, '2022-06-12', '16:32:28'),
(137, 1, 'Entrada', 639, '2022-06-12', '16:32:31'),
(138, 1, 'Entrada', 639, '2022-06-12', '16:32:32'),
(139, 1, 'Entrada', 639, '2022-06-12', '16:32:33'),
(140, 1, 'Entrada', 639, '2022-06-12', '16:32:34'),
(141, 1, 'Entrada', 639, '2022-06-12', '16:32:38'),
(142, 1, 'Saída', -2, '2022-06-12', '16:34:13'),
(143, 1, 'Saída', -2, '2022-06-12', '16:34:17'),
(144, 1, 'Saída', -2, '2022-06-12', '16:34:19'),
(145, 1, 'Saída', -2, '2022-06-12', '16:34:20'),
(146, 1, 'Saída', -2, '2022-06-12', '16:34:21'),
(147, 1, 'Saída', -2, '2022-06-12', '16:34:23'),
(148, 1, 'Saída', -10, '2022-06-12', '16:35:09'),
(149, 1, 'Saída', -10, '2022-06-12', '16:35:11'),
(150, 1, 'Saída', -10, '2022-06-12', '16:35:12'),
(151, 1, 'Saída', -10, '2022-06-12', '16:35:14'),
(152, 1, 'Saída', -10, '2022-06-12', '16:35:16'),
(153, 1, 'Saída', -10, '2022-06-12', '16:35:17'),
(154, 1, 'Saída', -10, '2022-06-12', '16:35:20'),
(155, 1, 'Saída', -10, '2022-06-12', '16:35:22'),
(156, 1, 'Saída', -10, '2022-06-12', '16:35:24'),
(157, 1, 'Saída', -10, '2022-06-12', '16:35:26'),
(158, 1, 'Saída', -10, '2022-06-12', '16:35:28'),
(159, 1, 'Saída', -10, '2022-06-12', '16:35:40'),
(160, 1, 'Saída', -10, '2022-06-12', '16:35:43'),
(161, 1, 'Saída', -10, '2022-06-12', '16:35:47'),
(162, 1, 'Saída', -10, '2022-06-12', '16:35:53'),
(163, 1, 'Saída', -10, '2022-06-12', '16:35:55'),
(164, 1, 'Saída', -10, '2022-06-12', '16:35:57'),
(165, 1, 'Saída', -10, '2022-06-12', '16:35:59'),
(166, 1, 'Saída', -10, '2022-06-12', '16:36:03'),
(167, 1, 'Saída', -10, '2022-06-12', '16:36:05'),
(168, 1, 'Saída', -10, '2022-06-12', '16:37:51'),
(169, 1, 'Saída', -10, '2022-06-12', '16:37:54'),
(170, 1, 'Saída', -15, '2022-06-12', '16:38:04'),
(171, 1, 'Saída', -15, '2022-06-12', '16:38:09'),
(172, 1, 'Saída', -15, '2022-06-12', '16:40:02'),
(173, 1, 'Saída', -21, '2022-06-12', '16:45:19'),
(174, 1, 'Saída', -21, '2022-06-12', '16:45:46'),
(175, 1, 'Entrada', 99, '2022-06-12', '16:46:15'),
(176, 1, 'Entrada', 99, '2022-06-12', '16:46:17'),
(177, 1, 'Entrada', 99, '2022-06-12', '16:46:19'),
(178, 1, 'Entrada', 99, '2022-06-12', '16:46:27'),
(179, 1, 'Entrada', 99, '2022-06-12', '16:46:29'),
(180, 1, 'Entrada', 99, '2022-06-12', '16:46:32'),
(181, 1, 'Entrada', 99, '2022-06-12', '16:46:35'),
(182, 1, 'Entrada', 56, '2022-06-12', '16:47:26'),
(183, 1, 'Entrada', 21, '2022-06-12', '16:48:50'),
(184, 1, 'Entrada', 21, '2022-06-12', '16:48:52'),
(185, 1, 'Entrada', 21, '2022-06-12', '16:48:53'),
(186, 1, 'Entrada', 21, '2022-06-12', '16:48:54'),
(187, 1, 'Entrada', 21, '2022-06-12', '16:48:56'),
(188, 1, 'Entrada', 21, '2022-06-12', '16:48:58'),
(189, 1, 'Saída', -150, '2022-06-12', '17:04:50'),
(190, 1, 'Saída', -150, '2022-06-12', '17:05:16'),
(191, 1, 'Saída', -150, '2022-06-12', '17:06:20'),
(192, 1, 'Entrada', 150, '2022-06-12', '17:08:54'),
(193, 1, 'Entrada', 150, '2022-06-12', '17:08:57'),
(194, 1, 'Entrada', 150, '2022-06-12', '17:09:02'),
(195, 1, 'Entrada', 150, '2022-06-12', '17:09:06'),
(196, 1, 'Entrada', 150, '2022-06-12', '17:09:07'),
(197, 1, 'Entrada', 150, '2022-06-12', '17:09:09'),
(198, 1, 'Entrada', 150, '2022-06-12', '17:16:22'),
(199, 1, 'Entrada', 150, '2022-06-12', '17:16:25'),
(200, 1, 'Entrada', 150, '2022-06-12', '17:16:29'),
(201, 1, 'Entrada', 150, '2022-06-12', '17:18:17'),
(202, 1, 'Entrada', 33, '2022-06-12', '17:21:00'),
(203, 1, 'Entrada', 21, '2022-06-12', '17:21:13'),
(204, 1, 'Entrada', 32, '2022-06-12', '17:23:51'),
(205, 1, 'Entrada', 21, '2022-06-12', '17:23:58'),
(206, 1, 'Entrada', 555555555, '2022-06-12', '17:24:08'),
(207, 1, 'Entrada', 36, '2022-06-12', '17:24:27'),
(208, 1, 'Entrada', 66, '2022-06-12', '17:24:38'),
(209, 1, 'Entrada', 7778, '2022-06-12', '17:29:03'),
(210, 1, 'Entrada', 66, '2022-06-12', '17:29:10'),
(211, 1, 'Entrada', 25, '2022-06-12', '17:29:40'),
(212, 1, 'Saída', -12, '2022-06-12', '17:29:50'),
(213, 1, 'Saída', -44, '2022-06-12', '17:35:25'),
(214, 4, 'Entrada', 50, '2022-06-13', '19:10:12'),
(215, 1, 'Entrada', 12, '2022-06-23', '18:13:58'),
(216, 4, 'Saída', -12, '2022-06-23', '18:14:18'),
(217, 4, 'Entrada', 500, '2022-06-23', '19:08:06'),
(218, 5, 'Saída', -21, '2022-06-23', '19:08:17'),
(219, 4, 'Entrada', 1, '2022-06-23', '19:38:03'),
(220, 4, 'Saída', -1, '2022-06-23', '19:38:19');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `ID_Produto` int(11) NOT NULL,
  `Nome_Produto` varchar(70) NOT NULL DEFAULT 'SEM NOME',
  `Qntd_Estoque` int(11) NOT NULL,
  `Descricao` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`ID_Produto`, `Nome_Produto`, `Qntd_Estoque`, `Descricao`) VALUES
(1, 'Barra de Ferro', -11, 'Barra de Ferro 5m'),
(2, 'Placa de Ferro', 410, NULL),
(3, 'Chapa de Ferro', 140, NULL),
(4, 'Cano de Ferro', 878, NULL),
(5, 'Dobradiça ', 147, NULL),
(6, 'Cantoneira', 1026, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `fluxo`
--
ALTER TABLE `fluxo`
  ADD PRIMARY KEY (`ID_Fluxo`),
  ADD KEY `Produto` (`ID_Produto`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`ID_Produto`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `fluxo`
--
ALTER TABLE `fluxo`
  MODIFY `ID_Fluxo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `ID_Produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `fluxo`
--
ALTER TABLE `fluxo`
  ADD CONSTRAINT `Produto` FOREIGN KEY (`ID_Produto`) REFERENCES `produtos` (`ID_Produto`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
