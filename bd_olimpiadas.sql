-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03/09/2024 às 19:16
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_olimpiadas`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `atletas`
--

CREATE TABLE `atletas` (
  `id_atleta` int(255) NOT NULL,
  `nome_atleta` varchar(255) NOT NULL,
  `idade_atleta` int(3) NOT NULL,
  `nome_time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atletas`
--

INSERT INTO `atletas` (`id_atleta`, `nome_atleta`, `idade_atleta`, `nome_time`) VALUES
(1, 'Isabela Martins Correia', 23, 'Brasil'),
(2, 'Susanne Konig', 33, 'Alemanha'),
(3, 'Annabella Napolitani', 18, 'Italia'),
(4, 'Shirvani Masaev', 17, 'Argentina');

-- --------------------------------------------------------

--
-- Estrutura para tabela `times`
--

CREATE TABLE `times` (
  `id_time` int(255) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `numero_atletas` int(255) NOT NULL,
  `titulos` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `times`
--

INSERT INTO `times` (`id_time`, `nome`, `numero_atletas`, `titulos`) VALUES
(1, 'Brasil', 22, 5),
(2, 'Argentina', 20, 3),
(3, 'Alemanha', 34, 4),
(4, 'Italia', 19, 5);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `atletas`
--
ALTER TABLE `atletas`
  ADD PRIMARY KEY (`id_atleta`);

--
-- Índices de tabela `times`
--
ALTER TABLE `times`
  ADD PRIMARY KEY (`id_time`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `atletas`
--
ALTER TABLE `atletas`
  MODIFY `id_atleta` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `times`
--
ALTER TABLE `times`
  MODIFY `id_time` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
