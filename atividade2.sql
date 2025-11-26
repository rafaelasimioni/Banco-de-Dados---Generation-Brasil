CREATE DATABASE ecommerce;

USE ecommerce;

CREATE TABLE produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
preco DECIMAL (4,2),
categoria VARCHAR(255),
quantidade_estoque INT DEFAULT 0,
PRIMARY KEY (id)
);

SELECT * FROM produtos;

INSERT INTO produtos (nome, preco, categoria, quantidade_estoque) VALUES
("Caderno Universitário 200 folhas", "29.90", "Papelaria", "50"),
("Caneta Esferográfica Azul", "2.50", "Papelaria", "300"),
("Marca Texto Pastel", "6.90", "Papelaria", "120"),
("Agenda 2025 Espiral", "35.00", "Papelaria", "40"),
("Bloco de Notas Adesivas", "8.50", "Papelaria", "150"),
("Lápis de Cor 24 Cores", "22.00", "Material Escolar", "60"),
("Giz de Cera Jumbo", "15.00", "Material Escolar", "80"),
("Folha Sulfite A4 500un", "32.00", "Papelaria", "45");

SELECT * FROM produtos WHERE preco > 500;

SELECT * FROM produtos WHERE preco < 500;

DESCRIBE produtos;

ALTER TABLE produtos MODIFY preco DECIMAL(4,2) NOT NULL;
