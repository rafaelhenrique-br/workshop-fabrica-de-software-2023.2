-- Criando as 3 tabelas com 3 variáveis diferentes
CREATE DATABASE loja_instrumentos;
USE loja_instrumentos;

CREATE TABLE instrumentos(
	preco FLOAT NOT NULL,
    id INT PRIMARY KEY,
    marca VARCHAR(100),
    categoria VARCHAR(100) NOT NULL
);
CREATE TABLE luthiers(
	nome VARCHAR(100) NOT NULL,
    idade INT,
    CPF VARCHAR(100) PRIMARY KEY,
    instrumento VARCHAR(50)
);
CREATE TABLE cliente (
	nome VARCHAR(100) NOT NULL,
    telefone VARCHAR (100),
    cpf VARCHAR (100) PRIMARY KEY
    
);

-- Adicionando uma nova coluna em cada tabela
ALTER TABLE instrumentos ADD COLUMN quantidade INT NOT NULL;
ALTER TABLE luthiers ADD COLUMN telefone VARCHAR(100);
ALTER TABLE cliente ADD COLUMN idade INT;

-- Inserindo dados nas colunas de cada tabela
INSERT INTO instrumentos (preco, id, marca, categoria) 
VALUES 
(100, 'A', 'gianini', 'violao'),
(200, 'B', 'fender', 'guitarra'),
(300, 'C', 'yamaha', 'teclado');

INSERT INTO luthiers (nome, idade, CPF, instrumento) 
VALUES 
('rafael', '18', '111-111-111.11', 'violao'),
('julio', '18', '111-111-111.11', 'guitarra'),
('joao', '18', '111-111-111.11', 'violino');

INSERT INTO cliente (nome, telefone, cpf) 
VALUES 
('holanda', '83-98888-8888', '111-111-111.11'),
('pedro', '83-98888-8888', '111-111-111.11'),
('bruno', '83-98888-8888', '111-111-111.11');

-- Removendo uma coluna de cada tabela
ALTER TABLE instrumentos DROP COLUMN id;
ALTER TABLE luthiers DROP COLUMN idade;
ALTER TABLE cliente DROP COLUMN cpf;

-- Mostrando o conteúdo de cada tabela
SELECT * FROM instrumentos;
SELECT * FROM luthiers;
SELECT * FROM cliente;

-- Mostrando o conteúdo de cada tabela com uma condição
SELECT preco FROM instrumentos WHERE marca = 'gianini';
SELECT instrumento FROM luthiers WHERE instrumento = 'violao';
SELECT telefone FROM cliente WHERE nome = 'holanda'



