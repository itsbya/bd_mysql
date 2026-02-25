CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE db_ecommerce(
id bigint auto_increment,
nome varchar(150) NOT NULL,
descricao varchar(255) NOT NULL,
preco decimal NOT NULL,
estoque INT NOT NULL,
PRIMARY KEY(id)
);


-- Comando de manipulação de dados 
INSERT INTO db_ecommerce(nome, descricao, preco, estoque)
VALUES ('Notebook Dell Inspiron', 'Notebook com 8GB RAM e SSD 256GB', 3500.00, 10),
('Smartphone Samsung Galaxy', 'Celular 128GB, câmera 50MP', 2200.00, 15),
('Fone Bluetooth JBL', 'Fone sem fio com cancelamento de ruído', 450.00, 30),
('Mouse Gamer Logitech', 'Mouse RGB 12000 DPI', 250.00, 20),
('Teclado Mecânico Redragon', 'Teclado mecânico switch azul', 320.00, 18),
('Monitor LG 24"', 'Monitor Full HD IPS 24 polegadas', 900.00, 12),
('Cadeira Gamer', 'Cadeira ergonômica reclinável', 1200.00, 8),
('HD Externo Seagate 1TB', 'Armazenamento portátil USB 3.0', 400.00, 25);


-- Filtragem
SELECT * FROM db_ecommerce;

SELECT * FROM db_ecommerce WHERE preco > 500.00;

SELECT * FROM db_ecommerce WHERE preco < 500.00;


-- Atualização de dados
UPDATE db_ecommerce SET preco = 2600.00 WHERE id = 1;