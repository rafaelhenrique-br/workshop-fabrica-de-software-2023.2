-- Criando as 3 tabelas com 3 variáveis diferentes de uma loja de esportes

CREATE DATABASE loja_esportes;
USE loja_esportes;

CREATE TABLE bolas(
	preco FLOAT NOT NULL,
  id INT PRIMARY KEY,
  marca VARCHAR(100),
  categoria VARCHAR(100) NOT NULL
);
CREATE TABLE funcionarios(
	nome VARCHAR(100) NOT NULL,
  idade INT,
  CPF VARCHAR(100) PRIMARY KEY,
  salario VARCHAR(50)
);
CREATE TABLE cliente (
	nome VARCHAR(100) NOT NULL,
  telefone VARCHAR (100),
  cpf VARCHAR (100) PRIMARY KEY
    
);

-- Adicionando uma nova coluna na tabela "bolas"
ALTER TABLE bolas ADD COLUMN quantidade INT NOT NULL;


-- Inserindo dados nas colunas de cada tabela
INSERT INTO bolas (preco, id, marca, categoria) 
VALUES 
(70, 'A', 'nike', 'futebol'),
(150, 'B', 'adidas', 'basquete'),
(320, 'C', 'puma', 'futsal');

INSERT INTO funcionarios (nome, idade, CPF, salario) 
VALUES 
('joão', '29', '111-111-111.11', 1550),
('pedro', '28', '222-222-222.22', 1500),
('arthur', '23', '333-333-333.33', 1350);

INSERT INTO cliente (nome, telefone, cpf) 
VALUES 
('caio', '83-98888-8888', '444-444-444.44'),
('marcelo', '83-98888-8888', '555-555-555.55'),
('kauan', '83-98888-8888', '666-666-666.66');


-- Mostrando o conteúdo de cada tabela
SELECT * FROM bolas;
SELECT * FROM funcionarios;
SELECT * FROM cliente;
