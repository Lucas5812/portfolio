-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07/11/2024 às 04:27
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `garagem`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `Id_cliente` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Data_nascimento` date NOT NULL,
  `Cep` varchar(10) NOT NULL,
  `Cpf` varchar(15) NOT NULL,
  `Rg` varchar(9) NOT NULL,
  `E_mail` varchar(255) NOT NULL,
  `Telefone` varchar(14) NOT NULL,
  `Horario_vazio` time NOT NULL,
  `Num_cartao` bigint(11) DEFAULT NULL,
  `Senha_cartao` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `compras`
--

CREATE TABLE `compras` (
  `Id_compra` int(11) NOT NULL,
  `Id_cliente` int(11) NOT NULL,
  `Id_produto` int(11) NOT NULL,
  `Qnt_comprada` int(11) NOT NULL,
  `Data_compra` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `Id_funcionario` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Marcacao_alma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `origens`
--

CREATE TABLE `origens` (
  `Id_origem` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `origens`
--

INSERT INTO `origens` (`Id_origem`, `Nome`) VALUES
(1, 'Armazém'),
(2, 'Cozinha'),
(3, 'Van do Fornecedor');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `Id_produto` int(11) NOT NULL,
  `Id_origem` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Quantidade` int(11) NOT NULL,
  `Preco` double(65,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`Id_produto`, `Id_origem`, `Nome`, `Quantidade`, `Preco`) VALUES
(1, 2, 'Batata bem passada', 5, 8.00),
(2, 3, 'Coração do Davy Jones', 1, 400.00),
(3, 3, 'Holandes Voador', 1, 4003.00),
(4, 2, 'Mystery bottle', 3, 57.84),
(5, 1, 'Canivete 31 funções', 10, 375.00),
(6, 1, 'Abridor de latas', 20, 13.50);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Id_cliente`);

--
-- Índices de tabela `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`Id_compra`),
  ADD KEY `Id_cliente` (`Id_cliente`),
  ADD KEY `Id_produto` (`Id_produto`);

--
-- Índices de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`Id_funcionario`);

--
-- Índices de tabela `origens`
--
ALTER TABLE `origens`
  ADD PRIMARY KEY (`Id_origem`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`Id_produto`),
  ADD KEY `Id_origem` (`Id_origem`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `Id_cliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `compras`
--
ALTER TABLE `compras`
  MODIFY `Id_compra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `Id_funcionario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `origens`
--
ALTER TABLE `origens`
  MODIFY `Id_origem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `Id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`Id_cliente`) REFERENCES `clientes` (`Id_cliente`),
  ADD CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`Id_produto`) REFERENCES `produtos` (`Id_produto`);

--
-- Restrições para tabelas `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`Id_origem`) REFERENCES `origens` (`Id_origem`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
