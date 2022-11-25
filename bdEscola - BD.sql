CREATE DATABASE bdEescola
GO
CREATE TABLE tbCurso(
    codCurso INT PRIMARY KEY IDENTITY (1,1) NOT NULL
    ,nomeCurso VARCHAR (30) NOT NULL
    ,cargahorarioCurso TIME NOT NULL
    ,valorCurso SMALLMONEY NOT NULL
)
CREATE TABLE tbAluno(
    codAluno INT PRIMARY KEY IDENTITY (1,1) NOT NULL
    ,nomeAluno VARCHAR (40) NOT NULL
    ,dataNascimentoAluno DATE NOT NULL
    ,rgAluno VARCHAR (12) NOT NULL
    ,naturalidadeAluno VARCHAR (40) NOT NULL
)
CREATE TABLE tbTurma(
    codTurma INT PRIMARY KEY IDENTITY (1,1) NOT NULL
	,nomeTurma VARCHAR (30) NOT NULL
    ,codCurso INT FOREIGN KEY REFERENCES tbCurso (codCurso)
    ,horarioTurma TIME NOT NULL
)
CREATE TABLE tbMatricula(
    codMatricula INT PRIMARY KEY IDENTITY (1,1) NOT NULL
    ,dataMatricula SMALLDATETIME NOT NULL
    ,codAluno INT FOREIGN KEY REFERENCES tbAluno (codAluno)
    ,codTurma  INT FOREIGN KEY REFERENCES tbTurma (codTurma)
)