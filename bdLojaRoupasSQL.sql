CREATE DATABASE bdLojaRoupas
GO
CREATE TABLE tbCliente(
    codCliente INT PRIMARY KEY IDENTITY (1,1) NOT NULL
    ,nomeCliente VARCHAR (50) NOT NULL
    ,idadeCliente SMALLINT NOT NULL
)
CREATE TABLE tbVendedor(
    codVendedor INT PRIMARY KEY IDENTITY (1,1) NOT NULL
    ,nomeVendedor VARCHAR (50) NOT NULL
)
CREATE TABLE tbVenda(
    codVenda INT PRIMARY KEY IDENTITY (1,1) NOT NULL
    ,dataVenda SMALLDATETIME NOT NULL
    ,codCliente INT FOREIGN KEY REFERENCES tbCliente(codCliente)
    ,codVendedor INT FOREIGN KEY REFERENCES tbVendedor(codVendedor)
    ,totalVenda SMALLMONEY NOT NULL
)
CREATE TABLE tbFuncionario(
    codFuncionario INT PRIMARY KEY IDENTITY (1,1) NOT NULL
    ,nomeFuncionario VARCHAR (50) NOT NULL
    ,idadeFuncionario CHAR (10) NOT NULL
    ,dataAdmissao SMALLDATETIME NOT NULL
    ,salarioFuncionario SMALLMONEY NOT NULL
)
CREATE TABLE tbFabricante(
    codFabricante INT PRIMARY KEY IDENTITY (1,1) NOT NULL
    ,nomeFabricante VARCHAR (50) NOT NULL
)
CREATE TABLE tbProduto(
    codProduto INT PRIMARY KEY IDENTITY (1,1) NOT NULL
    ,nomeProduto VARCHAR (50) NOT NULL
    ,precoProduto SMALLMONEY NOT NULL
    ,dataEntradaProduto SMALLDATETIME NOT NULL
    ,EstoqueProduto INT NOT NULL
    ,codFuncionario INT FOREIGN KEY REFERENCES tbFuncionario (codFuncionario)
    ,codFabricante INT FOREIGN KEY REFERENCES tbFabricante (codFabricante)
)
CREATE TABLE tbItensVenda(
    codItensVenda INT PRIMARY KEY IDENTITY (1,1) NOT NULL
    ,codVenda INT FOREIGN KEY REFERENCES tbVenda (codVenda)
    ,codProduto INT FOREIGN KEY REFERENCES tbProduto (codProduto)
    ,quantidadeItens INT NOT NULL
    ,subTotalItens SMALLMONEY NOT NULL
)