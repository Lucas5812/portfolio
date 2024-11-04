-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04-Nov-2024 às 22:24
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.1.10

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
-- Estrutura da tabela `clientes`
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
  `Num_cartao` int(11) DEFAULT NULL,
  `Senha_cartao` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `compras`
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
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `Id_funcionario` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Marcacao_alma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `origens`
--

CREATE TABLE `origens` (
  `Id_origem` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `origens`
--

INSERT INTO `origens` (`Id_origem`, `Nome`) VALUES
(1, 'Armazém'),
(2, 'Cozinha'),
(3, 'Van do Fornecedor');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `Id_produto` int(11) NOT NULL,
  `Id_origem` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Quantidade` int(11) NOT NULL,
  `Preco` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Id_cliente`);

--
-- Índices para tabela `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`Id_compra`),
  ADD KEY `Id_cliente` (`Id_cliente`),
  ADD KEY `Id_produto` (`Id_produto`);

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`Id_funcionario`);

--
-- Índices para tabela `origens`
--
ALTER TABLE `origens`
  ADD PRIMARY KEY (`Id_origem`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`Id_produto`),
  ADD KEY `Id_origem` (`Id_origem`);

--
-- AUTO_INCREMENT de tabelas despejadas
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
  MODIFY `Id_produto` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`Id_cliente`) REFERENCES `clientes` (`Id_cliente`),
  ADD CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`Id_produto`) REFERENCES `produtos` (`Id_produto`);

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`Id_origem`) REFERENCES `origens` (`Id_origem`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
