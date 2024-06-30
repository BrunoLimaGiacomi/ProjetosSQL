-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 17-Out-2023 às 18:19
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dbmodelo_171023`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_cartao`
--

DROP TABLE IF EXISTS `tb_cartao`;
CREATE TABLE IF NOT EXISTS `tb_cartao` (
  `ID_CARTAO` int(11) NOT NULL AUTO_INCREMENT,
  `ID_CLIENTE` int(11) NOT NULL,
  `NUMERO_CARTAO` char(19) COLLATE utf8_unicode_ci NOT NULL,
  `NOME_CARTAO` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `VALIDADE_CARTAO` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `CSV_CARTAO` int(11) NOT NULL,
  `BANDEIRA_CARTAO` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_CARTAO`),
  KEY `ID_CLIENTE` (`ID_CLIENTE`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tb_cartao`
--

INSERT INTO `tb_cartao` (`ID_CARTAO`, `ID_CLIENTE`, `NUMERO_CARTAO`, `NOME_CARTAO`, `VALIDADE_CARTAO`, `CSV_CARTAO`, `BANDEIRA_CARTAO`) VALUES
(1, 1, '4444.5555.6666.7777', 'FABIO BORGES', '05/2029', 123, 'Master Card'),
(2, 1, '4444.5566.7766.8877', 'FABIO BORGES', '07/2027', 456, 'Visa'),
(3, 2, '4433.4455.8866.9977', 'ANA P ANDRADE', '03/2030', 789, 'Master Card'),
(4, 2, '4444.5444.6333.7788', 'ANA P ANDRADE', '05/2029', 901, 'Visa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_categoria`
--

DROP TABLE IF EXISTS `tb_categoria`;
CREATE TABLE IF NOT EXISTS `tb_categoria` (
  `ID_CATEGORIA` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRICAO_CATEGORIA` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_CATEGORIA`),
  UNIQUE KEY `UQCATEGORIA` (`DESCRICAO_CATEGORIA`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tb_categoria`
--

INSERT INTO `tb_categoria` (`ID_CATEGORIA`, `DESCRICAO_CATEGORIA`) VALUES
(1, 'Brinquedos'),
(2, 'Eletrônicos'),
(3, 'Games'),
(4, 'Roupas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_cliente`
--

DROP TABLE IF EXISTS `tb_cliente`;
CREATE TABLE IF NOT EXISTS `tb_cliente` (
  `ID_CLIENTE` int(11) NOT NULL AUTO_INCREMENT,
  `ID_USUARIO` int(11) NOT NULL,
  `NOME_CLIENTE` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `CPF_CLIENTE` char(14) COLLATE utf8_unicode_ci NOT NULL,
  `RG_CLIENTE` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `FONE_CLIENTE` char(16) COLLATE utf8_unicode_ci NOT NULL,
  `DTA_NASC_CLIENTE` date NOT NULL,
  `DTA_CADASTRO_CLIENTE` datetime NOT NULL,
  `STATUS_CLIENTE` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_CLIENTE`),
  UNIQUE KEY `CPF_CLIENTE` (`CPF_CLIENTE`),
  UNIQUE KEY `RG_CLIENTE` (`RG_CLIENTE`),
  KEY `ID_USUARIO` (`ID_USUARIO`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tb_cliente`
--

INSERT INTO `tb_cliente` (`ID_CLIENTE`, `ID_USUARIO`, `NOME_CLIENTE`, `CPF_CLIENTE`, `RG_CLIENTE`, `FONE_CLIENTE`, `DTA_NASC_CLIENTE`, `DTA_CADASTRO_CLIENTE`, `STATUS_CLIENTE`) VALUES
(1, 1, 'Fabio Borges', '111.222.333-44', '17.444.555-X', '(11) 4455-8899', '1978-09-08', '2023-10-17 14:40:58', 'Ativo'),
(2, 2, 'Ana Steves', '222.333.444-55', '18.555.666-7', '(11) 4477-9900', '1981-04-23', '2023-10-17 14:40:58', 'Ativar');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_endereco`
--

DROP TABLE IF EXISTS `tb_endereco`;
CREATE TABLE IF NOT EXISTS `tb_endereco` (
  `ID_ENDERECO` int(11) NOT NULL AUTO_INCREMENT,
  `ID_USUARIO` int(11) NOT NULL,
  `RUA_ENDERECO` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `BAIRRO_ENDERECO` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `CIDADE_ENDERECO` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `UF_ENDERECO` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `CEP_ENDERECO` char(9) COLLATE utf8_unicode_ci NOT NULL,
  `PAIS_ENDERECO` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_ENDERECO`),
  KEY `ID_USUARIO` (`ID_USUARIO`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tb_endereco`
--

INSERT INTO `tb_endereco` (`ID_ENDERECO`, `ID_USUARIO`, `RUA_ENDERECO`, `BAIRRO_ENDERECO`, `CIDADE_ENDERECO`, `UF_ENDERECO`, `CEP_ENDERECO`, `PAIS_ENDERECO`) VALUES
(1, 1, 'Rua Braga 50', 'Lapa', 'Sao Paulo', 'SP', '83750-000', 'Brasil'),
(2, 1, 'Rua Alpha 30', 'Brás', 'Sao Paulo', 'SP', '01311-000', 'Brasil'),
(3, 2, 'Rua Beta 100', 'Baeta Neves', 'São Bernardo do Campo', 'SP', '09751-000', 'Brasil');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_fornecedor`
--

DROP TABLE IF EXISTS `tb_fornecedor`;
CREATE TABLE IF NOT EXISTS `tb_fornecedor` (
  `ID_FORNECEDOR` int(11) NOT NULL AUTO_INCREMENT,
  `RAZAO_FORNECEDOR` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `CONTATO_FORNECEDOR` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `FONE_FORNECEDOR` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `ENDERECO_FORNECEDOR` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `EMAIL_FORNECEDOR` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `CNPJ_FORNECEDOR` char(19) COLLATE utf8_unicode_ci NOT NULL,
  `STATUS_FORNECEDOR` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `NOME_FANTASIA_FORNECEDOR` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_FORNECEDOR`),
  UNIQUE KEY `CNPJ_FORNECEDOR` (`CNPJ_FORNECEDOR`),
  UNIQUE KEY `NOME_FANTASIA_FORNECEDOR` (`NOME_FANTASIA_FORNECEDOR`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tb_fornecedor`
--

INSERT INTO `tb_fornecedor` (`ID_FORNECEDOR`, `RAZAO_FORNECEDOR`, `CONTATO_FORNECEDOR`, `FONE_FORNECEDOR`, `ENDERECO_FORNECEDOR`, `EMAIL_FORNECEDOR`, `CNPJ_FORNECEDOR`, `STATUS_FORNECEDOR`, `NOME_FANTASIA_FORNECEDOR`) VALUES
(1, 'Grow SA', 'Lucas', '(11) 3366-5555', 'Rua campinas 456 Itaim São Paulo', 'lucas@grow.com.br', '03.444.555/0003-42', 'Ativo', 'Grow Jogos e Brinquedos'),
(2, 'SOE Sony Playstation SA', 'Paulo', '(11) 5555-4444', 'Rua Alpha, conj 07 Barra Funda São Paulo', 'paulo@soe.com.br', '03.444.555/0003-85', 'Ativo', 'Playstation Brasil'),
(3, 'Brinquedos Estrela SA', 'Julia', '(11) 44887744', 'Rua Omega Cambici São Paulo', 'julia@estrela.com.br', '04.000.887/000485', 'Ativo', 'Brinquedos Estrela'),
(4, 'Microsoft Brasil SA', 'João', '(11) 5544-3333', 'Rua Beta Jardim São Paulo', 'joão@soe.com.br', '03.002.898/0001-89', 'Ativo', 'XBox Brasil');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_frete`
--

DROP TABLE IF EXISTS `tb_frete`;
CREATE TABLE IF NOT EXISTS `tb_frete` (
  `UF` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `VALOR_FRETE` decimal(5,2) NOT NULL,
  PRIMARY KEY (`UF`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tb_frete`
--

INSERT INTO `tb_frete` (`UF`, `VALOR_FRETE`) VALUES
('SP', '9.99'),
('RJ', '12.99'),
('MG', '14.99'),
('RS', '19.99'),
('SC', '14.99'),
('PR', '12.99'),
('MS', '19.99'),
('MT', '14.99'),
('GO', '17.99'),
('AM', '24.99'),
('PA', '19.99'),
('TO', '17.99'),
('BA', '14.99'),
('AL', '17.99'),
('PI', '17.99'),
('MA', '17.99'),
('AP', '19.99'),
('PB', '19.99'),
('PE', '17.99'),
('ES', '14.99'),
('RN', '17.99'),
('RO', '19.99'),
('RD', '19.99'),
('AC', '24.99');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_promocao`
--

DROP TABLE IF EXISTS `tb_promocao`;
CREATE TABLE IF NOT EXISTS `tb_promocao` (
  `ID_PROMOCAO` int(11) NOT NULL AUTO_INCREMENT,
  `ID_USUARIO_ADM` int(11) NOT NULL,
  `ID_CATEGORIA` int(11) NOT NULL,
  `TOKEN_PROMOCAO` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `VALIDADE_PROMOCAO` datetime NOT NULL,
  `VALOR_PROMOCAO` decimal(6,2) NOT NULL,
  `STATUS_PROMOCAO` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_PROMOCAO`),
  UNIQUE KEY `TOKEN_PROMOCAO` (`TOKEN_PROMOCAO`),
  KEY `ID_CATEGORIA` (`ID_CATEGORIA`),
  KEY `ID_USUARIO_ADM` (`ID_USUARIO_ADM`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tb_promocao`
--

INSERT INTO `tb_promocao` (`ID_PROMOCAO`, `ID_USUARIO_ADM`, `ID_CATEGORIA`, `TOKEN_PROMOCAO`, `VALIDADE_PROMOCAO`, `VALOR_PROMOCAO`, `STATUS_PROMOCAO`) VALUES
(1, 1, 1, 'KLPX2369', '2023-10-20 00:00:00', '15.00', 'Valida'),
(2, 1, 2, 'KLPX2010', '2023-10-30 00:00:00', '20.00', 'Valida');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_publicidade`
--

DROP TABLE IF EXISTS `tb_publicidade`;
CREATE TABLE IF NOT EXISTS `tb_publicidade` (
  `ID_PUBLICIDADE` int(11) NOT NULL AUTO_INCREMENT,
  `ID_USUARIO_ADM` int(11) NOT NULL,
  `IMAGEM_PUBLICIDADE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `VALIDADE_PUBLICIDADE` date NOT NULL,
  `VALOR_PUBLICIDADE` decimal(6,2) NOT NULL,
  `STATUS_PUBLICIDADE` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_PUBLICIDADE`),
  KEY `ID_USUARIO_ADM` (`ID_USUARIO_ADM`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tb_publicidade`
--

INSERT INTO `tb_publicidade` (`ID_PUBLICIDADE`, `ID_USUARIO_ADM`, `IMAGEM_PUBLICIDADE`, `VALIDADE_PUBLICIDADE`, `VALOR_PUBLICIDADE`, `STATUS_PUBLICIDADE`) VALUES
(1, 1, 'URL:XXXXXXXXXXXXXXXXXXXXXXXXXXXX', '2023-09-30', '300.00', 'Venceu'),
(2, 1, 'URL:XXXXXXXXXXXXXXXXXXXXXXXXXXXX', '2023-10-30', '400.00', 'Ativo'),
(3, 1, 'URL:XXXXXXXXXXXXXXXXXXXXXXXXXXXX', '2022-10-25', '600.00', 'Ativo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_usuario`
--

DROP TABLE IF EXISTS `tb_usuario`;
CREATE TABLE IF NOT EXISTS `tb_usuario` (
  `ID_USUARIO` int(11) NOT NULL AUTO_INCREMENT,
  `EMAIL_USUARIO` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `SENHA_USUARIO` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `STATUS_USUARIO` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_USUARIO`),
  UNIQUE KEY `EMAIL_USUARIO` (`EMAIL_USUARIO`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tb_usuario`
--

INSERT INTO `tb_usuario` (`ID_USUARIO`, `EMAIL_USUARIO`, `SENHA_USUARIO`, `STATUS_USUARIO`) VALUES
(1, 'fabio@bol.com.br', '123', 'Ativo'),
(2, 'anapaula@terra.com.br', 'abc', 'Incompleto');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_usuario_adm`
--

DROP TABLE IF EXISTS `tb_usuario_adm`;
CREATE TABLE IF NOT EXISTS `tb_usuario_adm` (
  `ID_USUARIO_ADM` int(11) NOT NULL AUTO_INCREMENT,
  `EMAIL_USUARIO_ADM` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `SENHA_USUARIO_ADM` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `STATUS_USUARIO_ADM` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_USUARIO_ADM`),
  UNIQUE KEY `EMAIL_USUARIO_ADM` (`EMAIL_USUARIO_ADM`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tb_usuario_adm`
--

INSERT INTO `tb_usuario_adm` (`ID_USUARIO_ADM`, `EMAIL_USUARIO_ADM`, `SENHA_USUARIO_ADM`, `STATUS_USUARIO_ADM`) VALUES
(1, 'Kaio@terra.com.br', '123', 'Ativo'),
(2, 'Laura@gmail.com.br', 'abc', 'Inativo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_vendedor`
--

DROP TABLE IF EXISTS `tb_vendedor`;
CREATE TABLE IF NOT EXISTS `tb_vendedor` (
  `ID_VENDEDOR` int(11) NOT NULL AUTO_INCREMENT,
  `ID_USUARIO` int(11) NOT NULL,
  `NOME_VENDEDOR` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `CNPJ_VENDEDOR` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FONE_VENDEDOR` char(16) COLLATE utf8_unicode_ci NOT NULL,
  `DTA_CADASTRO_VENDEDOR` datetime NOT NULL,
  `STATUS_VENDEDOR` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_VENDEDOR`),
  UNIQUE KEY `CNPJ_VENDEDOR` (`CNPJ_VENDEDOR`),
  KEY `ID_USUARIO` (`ID_USUARIO`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tb_vendedor`
--

INSERT INTO `tb_vendedor` (`ID_VENDEDOR`, `ID_USUARIO`, `NOME_VENDEDOR`, `CNPJ_VENDEDOR`, `FONE_VENDEDOR`, `DTA_CADASTRO_VENDEDOR`, `STATUS_VENDEDOR`) VALUES
(1, 1, 'Alpha Ltda', '02.333.000/0001-67', '4488-7799', '2023-10-17 14:45:02', 'Ativo');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
