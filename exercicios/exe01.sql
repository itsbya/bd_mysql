CREATE DATABASE sistema_RH;

USE sistema_RH;

CREATE TABLE sistema_RH(
id bigint auto_increment,
nome varchar(255) NOT NULL,
cargo varchar(255) NOT NULL,
salario decimal NOT NULL,
data_admissão date,
departamento varchar(255) NOT NULL ,
PRIMARY KEY(id)
);


-- Comando de manipulação de dados 
INSERT INTO sistema_RH(nome, cargo, salario, data_admissão, 
departamento)
VALUES ('Bia', 'Desenvolvedora de Software', 20000.00, '2021-02-05', 'Tecnologia'), 
('Lucas', 'Analista de Segurança da Informação', 15000.00, '2023-06-08', 'Tecnologia'), 
('Liz', 'UX/UI Designer', 12000.00, '2021-05-05', 'Tecnologia'), 
('Guilherme', 'Gerente Administrativo', 10000.00, '2020-02-10', 'Administrativo'), 
('Elaine', 'Analista de RH', 6000.00, '2022-10-03', 'Administrativo'), 
('Thayssa', 'Gerente Comercial', 20000.00, '2021-04-04', 'Comercial');


-- Filtragem
SELECT * FROM sistema_RH;

SELECT * FROM sistema_RH WHERE salario > 2000.00;

SELECT * FROM sistema_RH WHERE salario < 2000.00;


-- Atualização de dados
UPDATE sistema_RH SET salario = 26000.00 WHERE id = 1;

