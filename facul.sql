
USE bdSistemaAcademico


CREATE TABLE tbCampus (
	idCampus INT PRIMARY KEY IDENTITY (1,1)
	,nomeCampus VARCHAR(30) NOT NULL
)

CREATE TABLE tbCurso (
	idCurso INT PRIMARY KEY IDENTITY (1,1) 
	,nomeCurso VARCHAR (30) NOT NULL
	,cargaHorariaCurso TIME NOT NULL
)

CREATE TABLE tbDisciplina (
	idDisciplina INT PRIMARY KEY IDENTITY (1,1)
	,nomeDisciplina VARCHAR(40) NOT NULL
	,cargaHorarioDisciplina TIME NOT NULL
)

CREATE TABLE tbProfessor (
	idProfessor INT PRIMARY KEY IDENTITY (1,1)
	,nomeProfessor VARCHAR (30) NOT NULL
	,dtNascProfessor DATE NOT NULL
	,rgProfesssor VARCHAR (15)
)
CREATE TABLE tbAluno (
	idAluno INT PRIMARY KEY IDENTITY (1,1)
	,nomeAluno VARCHAR (30) NOT NULL
	,dtNascAluno DATE NOT NULL
	,cpfAluno CHAR (14) NOT NULL
)

CREATE TABLE tbTurma (
	idTurma INT PRIMARY KEY IDENTITY (1,1)
	,idCurso INT FOREIGN KEY REFERENCES tbCurso (idCurso)
	,idCampus INT FOREIGN KEY REFERENCES tbCampus (idCampus)
	,numAlunos TINYINT NOT NULL
	,semestre CHAR (2) NOT NULL
	,anoFormacao DATE NOT NULL
	,numSala TINYINT NOT NULL
)

CREATE TABLE tbMatricula (
	idMatricula INT PRIMARY KEY IDENTITY (1,1)
	,idAluno INT FOREIGN KEY REFERENCES tbAluno (idAluno)
	,idTurma INT FOREIGN KEY REFERENCES tbTurma (idTurma)
	,dtMatricula DATE NOT NULL
)

CREATE TABLE tbAtribuicao (
	idAtribuicao INT PRIMARY KEY IDENTITY (1,1)
	,dataAtribuicao DATE NOT NULL
	,idProfessor INT FOREIGN KEY REFERENCES tbProfessor (idProfessor)
	,idTurma INT FOREIGN KEY REFERENCES tbTurma (idTurma)
	,idDisciplina INT FOREIGN KEY REFERENCES tbDisciplina (idDisciplina)
)
	
