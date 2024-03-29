CREATE DATABASE T_Livros;

USE T_Livros
-- DDL CRIAMOS TABELAS 
-- DDL CRIAR , ALTERAR, DROPAR
CREATE TABLE GENERO 
(
 IDGENERO	INT PRIMARY KEY IDENTITY 
 ,NOME		VARCHAR (200) NOT NULL UNIQUE
);

CREATE TABLE AUTOR 
(
 IDAUTOR	INT PRIMARY KEY IDENTITY 
 ,NOME		VARCHAR (200) UNIQUE
 ,EMAIL		VARCHAR (250) NOT NULL UNIQUE
 ,ATIVO		INT 
 ,DATA		DATE 
);

CREATE TABLE LIVRO
(
 IDLIVRO	INT PRIMARY KEY IDENTITY
 ,NOME		VARCHAR (200) NOT NULL UNIQUE 
 ,IDAUTOR	INT FOREIGN KEY REFERENCES AUTOR (IDAUTOR)
 ,IDGENERO	INT FOREIGN KEY REFERENCES GENERO (IDGENERO)
);
-- FIM DDL

-- DML PREENCHEMOS TABELAS 
-- DML INSERIR, DELETAR, ATUALIZAR

INSERT INTO GENERO VALUES ('ROMANCE'), ('AVENTURA'), ('FANTASIA');

INSERT INTO AUTOR (NOME, EMAIL, ATIVO) VALUES  ('JANE AUSTEN','TESTE@TESTE.COM', 1), ('JAMES','SEILA@TESTE.COM', 1), ('J.K.ROWLING', 'TESTE123@TESTE.COM', 0);

INSERT INTO LIVRO (NOME, IDGENERO, IDAUTOR) VALUES ('ORGULHO E PRECONCEITO',1,1),('MAZE RUNNER',2,2), ('HARRY POTTER',3,3);