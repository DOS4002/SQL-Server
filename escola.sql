CREATE DATABASE bdEscola60


GO
USE bdEscola60
CREATE TABLE tbAluno(
	codAluno INT PRIMARY KEY IDENTITY (100,2)
	,nomeAluno VARCHAR (30) NOT NULL
	,datanascAluno DATE NOT NULL

	--	,datanascAluno DATE NOT NULL CHECK (datanascaluno < getdate() )

	,ruaAluno VARCHAR (60) NOT NULL
	,numcasaAluno SMALLINT NOT NULL
	,telefoneAluno VARCHAR(12) NOT NULL
	,bairroAluno VARCHAR(20) NOT NULL
)

CREATE TABLE tbFoneAluno(
	codFoneAluno INT PRIMARY KEY IDENTITY (1,1)
	,codAluno INT FOREIGN KEY REFERENCES tbAluno (codAluno)
	,numFoneAluno VARCHAR(12) NOT NULL
)

CREATE TABLE tbPeriodo(
	codPeriodo INT PRIMARY KEY IDENTITY (1,1)
	,nomePeriodo VARCHAR(20) NOT NULL
)

CREATE TABLE tbCurso(
	codCurso INT PRIMARY KEY IDENTITY (1,1)
	,nomeCurso VARCHAR(40) NOT NULL
	,cargahorariaCurso SMALLINT NOT NULL
	,codPeriodo INT FOREIGN KEY REFERENCES tbPeriodo (codPeriodo)
)

CREATE TABLE tbMatricula(
	codMatricula INT PRIMARY KEY IDENTITY (1,1)
	,dataMatricula DATE NOT NULL

	--	,dataMatricula DATE NOT NULL defatult getdate()

	,codAluno INT FOREIGN KEY REFERENCES tbAluno (codAluno)
	,codCurso INT FOREIGN KEY REFERENCES tbCurso (codCurso)
	,codPeriodo INT FOREIGN KEY REFERENCES tbPeriodo (codPeriodo)
)



