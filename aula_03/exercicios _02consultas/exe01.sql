-- Cria o Banco de dados db_quitanda
CREATE DATABASE db_farmacia_bem_estar;

-- Selecionar o Banco de Dados db_quitanda
USE db_farmacia_bem_estar;


-- Criar a tabela tb_categorias
CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);


-- Insere dados na tabela tb_categorias
INSERT INTO tb_categorias (nome, descricao) VALUES
('Medicamentos', 'Remédios em geral'),
('Higiene', 'Produtos de higiene pessoal'),
('Cosméticos', 'Produtos de beleza'),
('Vitaminas', 'Suplementos e vitaminas'),
('Infantil', 'Produtos para bebês e crianças');


-- Lista todos os dados da tabela tb_categorias
SELECT * FROM tb_categorias;


-- Criar a Tabela tb_produtos
CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    quantidade_estoque INT NOT NULL,
    data_validade DATE,
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);


-- Insere dados na tabela tb_produtos
INSERT INTO tb_produtos (nome, preco, quantidade_estoque, data_validade, categoria_id) VALUES
('Paracetamol 500mg', 15.90, 100, '2027-12-31', 1),
('Dipirona 1g', 12.50, 80, '2026-10-15', 1),
('Shampoo Anticaspa', 25.90, 40, '2028-05-20', 2),
('Sabonete Líquido', 8.99, 120, '2027-08-10', 2),
('Base Líquida', 45.00, 30, '2029-01-01', 3),
('Vitamina C', 35.50, 60, '2027-03-15', 4),
('Polivitamínico Infantil', 42.90, 25, '2026-09-01', 5),
('Pomada para Assaduras', 18.75, 50, '2027-11-11', 5);


-- Visualiza todos os dados da tabela tb_produtos
SELECT * FROM tb_produtos;

-- Visualiza todos os produtos maiores que R$ 50.00
SELECT * FROM tb_produtos WHERE preco > 50.00;


-- O preço deve estar entre 5.00 e 60.00
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;


-- Localiza os produtos cujo nome contenha letra C
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

-- Inner Join
SELECT p.nome, p.preco, p.quantidade_estoque, c.descricao AS descricao_da_categoria
FROM tb_produtos p INNER JOIN tb_categorias c
ON p.categoria_id = c.id;


-- Inner Join com uma ordenação de dados especifica
SELECT * FROM tb_produtos p INNER JOIN tb_categorias c
ON p.categoria_id = c.id
WHERE p.categoria_id = 3
ORDER BY c.descricao;
