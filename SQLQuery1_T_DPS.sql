CREATE DATABASE T_DPS

USE T_DPS

CREATE TABLE Funcionários
(
	IdFuncionários	INT PRIMARY KEY IDENTITY
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

CREATE TABLE FuncionáriosDepartamentosHabilidades
(
	IdFuncionários	INT FOREIGN KEY REFERENCES Funcionários (IdFuncionários)
	,IdDepartamentos	INT FOREIGN KEY REFERENCES	Departamentos (IdDepartamentos)
	,IdHabilidades  INT FOREIGN KEY REFERENCES Habilidades (IdHabilidades)
);

INSERT INTO Departamentos (Nome) VALUES ('');
								
INSERT INTO Departamentos VALUES ('Vendas')
								 ,('TI')
								 ,('Musical');

INSERT INTO Funcionários VALUES		('Lucas')
									,('Mariana')
									,('Gabriel')
									,('Gustavo')
									,('Guilherme');	

INSERT INTO FuncionáriosDepartamentosHabilidades VALUES (1,1);

INSERT INTO Habilidades VALUES ('Programar', 1)
								,('Comunicação', 1)
								,('Liderança', 1);

SELECT IdFuncionários,Nome
	FROM Cursos;
