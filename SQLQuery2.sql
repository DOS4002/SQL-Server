CREATE DATABASE bdLojaEstoque1
GO 
USE bdLojaEstoque1

CREATE TABLE tbCliente(
idCliente INT PRIMARY KEY IDENTITY (1,1)
,nomeCliente VARCHAR (40) NOT NULL
,cpfCliente CHAR (11) NOT NULL
,emailCliente VARCHAR (40) NOT NULL
,sexoCliente CHAR (1) NOT NULL
,dataNascimentoCliente DATE NOT NULL
)
CREATE TABLE tbFabricante(
idFabricante INT PRIMARY KEY IDENTITY (1,1)
,nomeFabricante VARCHAR (40) NOT NULL
)
CREATE TABLE tbFornecedor(
idFornecedor INT PRIMARY KEY IDENTITY (1,1)
,nomeFornecedor VARCHAR (40) NOT NULL
,contatoFornecedor VARCHAR (40) NOT NULL
)
CREATE TABLE tbProduto(
idProduto INT PRIMARY KEY IDENTITY (1,1)
,tbdescricaoProduto VARCHAR (40) NOT NULL
,tbvalorProduto SMALLMONEY  NOT NULL
,tbQuantidadeProduto SMALLINT NOT NULL
,idFabricante INT FOREIGN KEY REFERENCES tbFabricante (idFabricante)
,idFornecedor INT FOREIGN KEY REFERENCES tbFornecedor (idFornecedor)
)
CREATE TABLE tbVenda(
idVenda INT PRIMARY KEY IDENTITY (1,1)
,tbdataVenda DATE NOT NULL
,tbvalorTotalVenda SMALLINT NOT NULL
,idCliente INT FOREIGN KEY REFERENCES tbCliente (idCliente)
)
CREATE TABLE tbitensVenda(
idcoditensVenda INT PRIMARY KEY IDENTITY (1,1)
,idVenda INT FOREIGN KEY REFERENCES tbVenda (idVenda)
,idProduto INT FOREIGN KEY REFERENCES tbProduto (idProduto)
,tbquantidadeitensVenda SMALLINT NOT NULL 
,tbsubTotalitensVenda SMALLINT NOT NULL
)

