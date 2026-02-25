CREATE DATABASE escola_db;

USE escola_db;

CREATE TABLE estudantes(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    turma VARCHAR(50) NOT NULL,
    nota DECIMAL(4,2) NOT NULL,
    PRIMARY KEY(id)
);

-- Inserção correta
INSERT INTO estudantes (nome, data_nascimento, turma, nota)
VALUES
('Ana Souza', '2010-05-14', '6º Ano A', 8.50),
('Carlos Lima', '2009-08-22', '7º Ano B', 7.20),
('Mariana Alves', '2011-03-10', '5º Ano A', 9.10),
('João Pedro', '2008-11-30', '8º Ano A', 6.80),
('Fernanda Rocha', '2010-01-25', '6º Ano B', 8.90),
('Lucas Martins', '2009-07-19', '7º Ano A', 5.75),
('Beatriz Costa', '2011-09-02', '5º Ano B', 9.50),
('Rafael Mendes', '2008-12-15', '8º Ano B', 7.85);

-- Consultas
SELECT * FROM estudantes;

SELECT * FROM estudantes WHERE nota > 7.0;

SELECT * FROM estudantes WHERE nota < 7.0;

-- Atualização
UPDATE estudantes SET nota = 8.20 WHERE id = 4;