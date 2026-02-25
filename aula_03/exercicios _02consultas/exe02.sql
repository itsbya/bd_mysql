-- Cria o Banco de dados db_curso_da_minha_vida
CREATE DATABASE db_curso_da_minha_vida;

-- Selecionar o Banco de Dados db_curso_da_minha_vida
USE db_curso_da_minha_vida;


-- Criar a tabela tb_categorias
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    PRIMARY KEY (id)
);


-- Insere dados na tabela tb_categorias
INSERT INTO tb_categorias (nome, descricao) VALUES
('Programação', 'Cursos de desenvolvimento de software'),
('Banco de Dados', 'Cursos de modelagem e SQL'),
('Front-end', 'Cursos de desenvolvimento visual'),
('Back-end', 'Cursos de desenvolvimento servidor'),
('DevOps', 'Cursos de infraestrutura e deploy');


-- Lista todos os dados da tabela tb_categorias
SELECT * FROM tb_categorias;


-- Criar a Tabela tb_cursos 
CREATE TABLE tb_cursos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    carga_horaria INT NOT NULL,
    instrutor VARCHAR(100),
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);


-- Insere dados na tabela tb_cursos 
INSERT INTO tb_cursos (nome, preco, carga_horaria, instrutor, categoria_id) VALUES
('JavaScript Completo', 199.90, 40, 'Carlos Silva', 1),
('Java POO', 249.90, 60, 'Fernanda Lima', 1),
('MySQL do Zero ao Avançado', 179.90, 30, 'Rafael Souza', 2),
('React para Iniciantes', 220.00, 45, 'Mariana Costa', 3),
('Node.js e Express', 210.00, 50, 'Lucas Almeida', 4),
('Docker Essencial', 150.00, 25, 'Ana Pereira', 5),
('TypeScript Avançado', 230.00, 35, 'Bruno Rocha', 1),
('APIs REST com Spring', 260.00, 55, 'Juliana Martins', 4),
('Python', 600.00, 55, 'Juliana Martins', 4);


-- Visualiza todos os dados da tabela tb_cursos 
SELECT * FROM tb_cursos;

-- Visualiza todos os cursos maiores que R$ 50.00
SELECT * FROM tb_cursos WHERE preco > 500.00;


-- O preço deve estar entre 5.00 e 60.00
SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;


-- Localiza os produtos cujo nome contenha letra J
SELECT * FROM tb_cursos WHERE nome LIKE "%j%";

-- Inner Join
SELECT cs.nome, cs.preco, cs.carga_horaria, c.descricao AS descricao_da_categoria
FROM tb_cursos cs INNER JOIN tb_categorias c
ON cs.categoria_id = c.id;


-- Inner Join com uma ordenação de dados especifica
SELECT * FROM tb_cursos cs INNER JOIN tb_categorias c
ON cs.categoria_id = c.id
WHERE cs.categoria_id = 4
ORDER BY c.descricao;