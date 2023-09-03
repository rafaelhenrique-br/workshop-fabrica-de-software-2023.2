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
(100, 'A', 'nike', 'futebol'),
(200, 'B', 'adidas', 'basquete'),
(300, 'C', 'puma', 'futsal');

INSERT INTO funcionarios (nome, idade, CPF, salario) 
VALUES 
('rafael', '29', '111-111-111.11', 1550),
('julio', '28', '111-111-111.11', 1500),
('joao', '23', '111-111-111.11', 1350);

INSERT INTO cliente (nome, telefone, cpf) 
VALUES 
('holanda', '83-98888-8888', '111-111-111.11'),
('pedro', '83-98888-8888', '111-111-111.11'),
('bruno', '83-98888-8888', '111-111-111.11');


-- Mostrando o conteúdo de cada tabela
SELECT * FROM bolas;
SELECT * FROM funcionarios;
SELECT * FROM cliente;
