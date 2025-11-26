CREATE DATABASE servicos_rh;

USE servicos_rh;

CREATE TABLE colaboradores(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    cargo VARCHAR(255),
    data_admissao DATE,
    salario DECIMAL(10,2),
    PRIMARY KEY (id)
);

SELECT * FROM colaboradores;

INSERT INTO colaboradores (nome,cargo,data_admissao,salario) VALUES
("Rafaela Simioni", "Desenvolvedora Fullstack Junior", '2026-02-12',5000.00),
("João Alves", "Engenheiro de Software", '2024-05-23', 15000.00),
("Carla Gomes", "Designer de Software", '2022-01-20', 13000.00),
("André Pinheiro", "Desenvolvedor backend", '2024-08-15', 7000.00),
("Tuany da Costa", "Estagária", '2025-03-7', 1500.00);

SELECT * FROM colaboradores WHERE salario > 2000;

SELECT * FROM colaboradores WHERE salario < 2000;

ALTER TABLE colaboradores MODIFY salario DECIMAL (10,2) NOT NULL;

DESCRIBE colaboradores;
