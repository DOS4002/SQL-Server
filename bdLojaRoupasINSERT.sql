USE bdLojaRoupas

INSERT INTO tbCliente (nomeCliente,idadeCliente)
VALUES
	('Caio da Silva',32)
	,('José Santos',55)
	,('Roberto Afonso ',40)
	,('Maria Cruzes ',25)
	,('léo Pinto ',33)
SELECT * FROM tbCliente

INSERT INTO tbVendedor (nomeVendedor)
VALUES
('João Santana')
,('Raquel Torres')
SELECT * FROM tbVendedor

INSERT INTO tbVenda (dataVenda,codCliente,codVendedor,totalVenda)
VALUES
('18/02/2022',1,1,2000.00)
,('19/02/2022',2,2,9000.00)
,('04/10/2022',3,1,600.00)
,('20/05/2022',4,2,500.00)
,('26/11/2022',5,1,90.00)
SELECT * FROM tbVenda

INSERT INTO tbFuncionario (nomeFuncionario,idadeFuncionario,dataAdmissao,salarioFuncionario)
VALUES
('Anderson Nunes',30,'11/02/2020',1600.00)
,('João Castilho',35,'17/12/2019',1600.00)
SELECT * FROM tbFuncionario

INSERT INTO tbFabricante (nomeFabricante)
VALUES
('Malwee')
,('Marisol')
,('Cia da Malha')
SELECT * FROM tbFabricante

INSERT INTO tbProduto (nomeProduto,precoProduto,dataEntradaProduto,EstoqueProduto,codFuncionario,codFabricante)
VALUES
('Camisa Polo com faixa Interlocking G- Gucci',60.00,'06/03/2022',1599,1,1)
,('Vestido Azul Gucci',400.00,'04/05/2020',2500,2,1)
,('Relógio Calvin Klein',80.00,'10/06/2020',2300,1,1)
,('Vestido Gucci',70.00,'20/07/2022',1600,2,2)
,('Moletom Nike',90.00,'06/08/2022',800,1,2)
,(' Relógio Rolex',700.00,'28/09/2022',2890,2,2)
,('Oculos Versace',1000.00,'07/10/2022',1280,1,3)
,('Relógio Gucci',80.00,'18/11/2022',340,2,3)
,('Calça  Cargo SHEIN',79.00,'09/12/2022',700,1,3)
SELECT * FROM tbProduto

INSERT INTO tbItensVenda (codVenda,codProduto,quantidadeItens,subTotalItens)
VALUES
(1,2,300,200.00)
,(1,3,200,800.00)
,(2,1,500,900.00)
,(2,5,400,780.00)
,(3,6,120,2000.00)
,(3,7,130,830.00)
,(4,8,150,9000.00)
,(4,9,450,1700.00)
,(5,10,670,50.00)
,(5,4,190,85.00)
SELECT * FROM tbItensVenda

