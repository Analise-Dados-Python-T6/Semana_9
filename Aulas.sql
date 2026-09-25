-- CREATE DATABASE Aulas;

-- DROP DATABASE Aulas;

CREATE TABLE clientes (
	id_cliente INT PRIMARY KEY,
	nome_cliente VARCHAR(20) NOT NULL,
	sobrenome_cliente VARCHAR(40) NOT NULL
);

SELECT * FROM clientes;

ALTER TABLE clientes
ADD telefone VARCHAR(20);

CREATE TABLE produtos(
	id_produto INT PRIMARY KEY,
	nome_produto VARCHAR(30) NOT NULL,
	descricao TEXT,
	preco NUMERIC NOT NULL,
	qtde_estoque INT DEFAULT 0
);

SELECT * FROM produtos;

CREATE TABLE pedidos (
	id_pedido SERIAL PRIMARY KEY,
	id_cliente INT NOT NULL REFERENCES clientes(id_cliente),
	id_produto INT NOT NULL,
	qtde INT NOT NULL,
	FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

SELECT * FROM pedidos;

INSERT INTO clientes (id_cliente, nome_cliente, sobrenome_cliente)
VALUES (1, 'Luana', 'Pereira');

INSERT INTO clientes (id_cliente, nome_cliente, sobrenome_cliente)
VALUES (2, 'José', 'Silva');

INSERT INTO clientes (id_cliente, nome_cliente, sobrenome_cliente)
VALUES (3, 'João', 'Amaral');

SELECT * FROM clientes;

INSERT INTO produtos (id_produto, nome_produto, descricao, preco, qtde_estoque)
VALUES 
(1, 'arroz', '5KG', 25, 10),
(2, 'feijao', '1kg carioca', 8, 20),
(3, 'leite', 'desnatado', 7, 30),
(4, 'ovos', 'caixa', 12, 15),
(5, 'oleo', 'soja', 6, 12),
(6, 'chocolate', 'barra', 10, 35),
(7, 'cerveja', 'caixa', 35, 8);

SELECT * FROM produtos;

INSERT INTO pedidos (id_cliente, id_produto, qtde)
VALUES 
(1, 3, 5),
(1, 4, 1),
(2, 1, 2),
(2, 7, 1),
(3, 6, 4);

SELECT * FROM pedidos;

ALTER TABLE clientes
DROP COLUMN telefone;

SELECT * FROM clientes;

SELECT id_cliente, nome_cliente FROM clientes;

SELECT * FROM clientes ORDER BY nome_cliente;

SELECT * FROM produtos ORDER BY preco DESC LIMIT 3;

SELECT * FROM produtos WHERE preco > 30;

SELECT * FROM produtos WHERE preco BETWEEN 10 AND 30;

SELECT * FROM produtos WHERE nome_produto = 'arroz';

SELECT * FROM clientes;

UPDATE clientes
SET nome_cliente = 'Maria'
WHERE id_cliente = 1;

SELECT * FROM clientes;

SELECT * FROM produtos;

DELETE FROM produtos
WHERE nome_produto = 'feijao';

SELECT * FROM produtos;



