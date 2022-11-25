USE bdLojaEstoque1

SELECT SUM(tbQuantidadeProduto) AS somaProdutoPG FROM tbProduto 
	WHERE idFabricante = 2

SELECT AVG (tbvalorProduto) AS mediaValorPG FROM tbProduto
	WHERE idFabricante = 2

SELECT SUM (tbvalorProduto) AS somaValorUnilever FROM tbProduto
	WHERE idFabricante = 1 

SELECT AVG (tbvalorProduto) AS mediaValorBunge FROM tbProduto
	WHERE idFabricante = 3

SELECT SUM (tbQuantidadeProduto) AS somaProdutoBunge FROM tbProduto
	WHERE idFabricante = 3

SELECT AVG (tbQuantidadeProduto) AS mediaQuantidadePG FROM  tbProduto
	WHERE idFabricante = 2 

SELECT AVG (tbvalorProduto) AS mediaValorProduto FROM tbProduto
	WHERE tbQuantidadeProduto < 200

SELECT AVG (tbQuantidadeProduto) AS mediaQuantidadePG FROM tbProduto
	WHERE idFabricante = 1

SELECT MIN (tbvalorProduto) AS produtoBarato FROM tbProduto
	
SELECT COUNT (tbdescricaoProduto) AS quantidadeUnilever FROM tbProduto
	WHERE idFabricante != 1

SELECT SUM (tbQuantidadeProduto) AS 'menorQue800'FROM tbProduto
	WHERE 