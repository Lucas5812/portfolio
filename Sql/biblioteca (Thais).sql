-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05-Nov-2024 às 22:26
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
-- Banco de dados: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `autores`
--

CREATE TABLE `autores` (
  `Id_autor` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `autores`
--

INSERT INTO `autores` (`Id_autor`, `Nome`) VALUES
(1, 'George R.R Martin'),
(2, 'Patrick Rothfuss'),
(3, 'John Green'),
(4, 'William P. Young'),
(5, 'Joaquim Manoel de Macedo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `Id_cliente` int(11) NOT NULL,
  `CPF` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `CEP` int(11) NOT NULL,
  `Data_nasc` date NOT NULL,
  `Num_telefone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`Id_cliente`, `CPF`, `Nome`, `Email`, `CEP`, `Data_nasc`, `Num_telefone`) VALUES
(1, 2147483647, 'Adnael de Oliveira Péricles', 'AdP3ricl3s@gmail.com', 2147483647, '1927-10-10', 2147483647),
(2, 2147483647, 'Clécio Cleber de Alcântara Ferreira', 'Clécio@gmail.com', 995010190, '2007-03-05', 2147483647),
(3, 2147483647, 'Romeu Roman Silveira do Nascimento', 'RomeuRSdN@gmail.com', 95430267, '0000-00-00', 2147483647),
(4, 1612112566, 'Hades da Costa Ribeiro', 'Senhordosubmundo@outlook.com', 66666999, '0000-00-00', 2147483647),
(5, 2147483647, 'Galadan Arthur Luís Sukuna', 'GaladanArthurLuisSukuna.org@hotmail.com', 12365478, '0000-00-00', 2147483647),
(6, 2147483647, 'Euclides de Alexandria', 'EuclidesDXande@gmail.com', 4651552, '0000-00-00', 2147483647);

-- --------------------------------------------------------

--
-- Estrutura da tabela `generos`
--

CREATE TABLE `generos` (
  `Id_genero` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `generos`
--

INSERT INTO `generos` (`Id_genero`, `Nome`) VALUES
(1, 'Aventura'),
(2, 'Romance'),
(3, 'Fantasia'),
(4, 'Religioso'),
(5, 'Investigação'),
(6, 'Terror/Horror'),
(7, 'Drama');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `Id_livro` int(11) NOT NULL,
  `Id_autor` int(11) NOT NULL,
  `Id_genero` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Data_publicacao` date NOT NULL,
  `Sinopse` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`Id_livro`, `Id_autor`, `Id_genero`, `Nome`, `Data_publicacao`, `Sinopse`) VALUES
(1, 5, 2, 'A Moreninha', '0000-00-00', 'Um grupo de amigos faz faculdade de medicina resolvem passar um feriado na casa de uma pessoa chamada Fabrício, entre eles está Augusto, um homem emocionado. Eles fazem uma aposta aonde quem se apaixonar deve escrever um livro'),
(2, 1, 1, 'A guerra dos tronos: As crônicas de Gelo e fogo vol.1', '0000-00-00', 'A guerra dos tronos é o primeiro livro da série best-seller internacional As Crônicas de Gelo e Fogo, que deu origem à adaptação de sucesso da HBO, Game of Thrones.\r\nO verão pode durar décadas. O inverno, toda uma vida. E a guerra dos tronos começou. Como'),
(3, 1, 1, 'A fúria dos reis: As crônicas de Gelo e Fogo', '0000-00-00', 'Um cometa da cor de fogo e sangue corta os céus. E, da antiga cidadela de Pedra do Dragão às costas áridas de Winterfell, reina o caos.\r\nEm A fúria dos reis , seis facções disputam o controle de uma terra dividida e o direito de ocupar o Trono de Ferro de'),
(4, 2, 3, 'O nome do vento: A crônica do matador de reis vol.1', '2009-07-16', 'Ninguém sabe ao certo quem é o herói ou o vilão desse fascinante universo criado por Patrick Rothfuss. Na realidade, essas duas figuras se concentram em Kote, um homem enigmático que se esconde sob a identidade de proprietário da hospedaria Marco do Percu'),
(5, 3, 4, 'A cabana', '2008-07-08', 'Durante uma viagem de fim de semana, a filha mais nova de Mack Allen Phillips é raptada e evidências de que ela foi brutalmente assassinada são encontradas numa velha cabana.\r\nApós quatro anos vivendo numa tristeza profunda causada pela culpa e pela sauda'),
(6, 4, 2, 'A culpa é das estrelas', '2012-10-01', '“A culpa é das estrelas” narra o romance de dois adolescentes que se conhecem (e se apaixonam) em um Grupo de Apoio para Crianças com Câncer: Hazel, uma jovem de dezesseis anos que sobrevive graças a uma droga revolucionária que detém a metástase em seus ');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`Id_autor`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Id_cliente`);

--
-- Índices para tabela `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`Id_genero`);

--
-- Índices para tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`Id_livro`),
  ADD KEY `Id_autor` (`Id_autor`),
  ADD KEY `Id_genero` (`Id_genero`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `autores`
--
ALTER TABLE `autores`
  MODIFY `Id_autor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `Id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `generos`
--
ALTER TABLE `generos`
  MODIFY `Id_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `Id_livro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `livros`
--
ALTER TABLE `livros`
  ADD CONSTRAINT `livros_ibfk_1` FOREIGN KEY (`Id_autor`) REFERENCES `autores` (`Id_autor`),
  ADD CONSTRAINT `livros_ibfk_2` FOREIGN KEY (`Id_genero`) REFERENCES `generos` (`Id_genero`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
