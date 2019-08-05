CREATE DATABASE T_DPS

USE T_DPS

CREATE TABLE Funcion�rios
(
	IdFuncion�rios	INT PRIMARY KEY IDENTITY
	,Nome			VARCHAR (250) NOT NULL UNIQUE
);

CREATE TABLE Departamentos
(
	IdDepartamentos	INT PRIMARY KEY IDENTITY
	,Nome			VARCHAR (250) NOT NULL UNIQUE
);

CREATE TABLE Habilidades
(
	IdHabilidades	INT PRIMARY KEY IDENTITY
	,Nome			VARCHAR (250) NOT NULL UNIQUE
);

CREATE TABLE Funcion�riosDepartamentosHabilidades
(
	IdFuncion�rios	INT FOREIGN KEY REFERENCES Funcion�rios (IdFuncion�rios)
	,IdDepartamentos	INT FOREIGN KEY REFERENCES	Departamentos (IdDepartamentos)
	,IdHabilidades  INT FOREIGN KEY REFERENCES Habilidades (IdHabilidades)
);

INSERT INTO Departamentos (Nome) VALUES ('');
								
INSERT INTO Departamentos VALUES ('Vendas')
								 ,('TI')
								 ,('Musical');

INSERT INTO Funcion�rios VALUES		('Lucas')
									,('Mariana')
									,('Gabriel')
									,('Gustavo')
									,('Guilherme');	

INSERT INTO Funcion�riosDepartamentosHabilidades VALUES (1,1);

INSERT INTO Habilidades VALUES ('Programar', 1)
								,('Comunica��o', 1)
								,('Lideran�a', 1);

SELECT IdFuncion�rios,Nome
	FROM Cursos;
