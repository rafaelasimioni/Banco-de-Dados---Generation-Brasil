CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(100) NOT NULL,
descricao VARCHAR(255)
);

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
id_produto BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
quantidade_estoque INT,
marca VARCHAR(100),
id_categoria BIGINT,
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_categorias (tipo, descricao) VALUES
("Medicamento", "Remédios com ou sem prescrição"),
("Higiene", "Produtos de higiene pessoal"),
("Cosmético", "Produtos de beleza e cuidados"),
("Vitaminas", "Suplementos e multivitamínicos"),
("Infantil", "Produtos para crianças e bebês");

INSERT INTO tb_produtos (nome, preco, quantidade_estoque, marca, id_categoria) VALUES
("Dipirona 500mg", 8.90, 120, "Medley", 1),
("Shampoo Anticaspa", 34.50, 45, "Clear", 2),
("Protetor Solar FPS 50", 68.90, 30, "Nivea", 3),
("Vitamina C 1g", 52.00, 60, "Sundown", 4),
("Pomada Bebê", 23.50, 25, "Hipoglós", 5),
("Colônia Infantil", 47.90, 15, "Johnson's", 5),
("Creme Hidratante Facial", 79.90, 20, "La Roche-Posay", 3),
("Paracetamol 750mg", 9.50, 100, "EMS", 1);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT nome FROM tb_produtos WHERE nome LIKE "%c";
SELECT nome FROM tb_produtos WHERE nome LIKE "c%";
SELECT nome FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos 
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.id_produto;

SELECT * FROM tb_produtos 
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.id_produto
WHERE tb_categorias.tipo = "Cosmético";