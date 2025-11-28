CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(100) NOT NULL,
borda VARCHAR(3)
);

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas(
id_pizzas BIGINT AUTO_INCREMENT PRIMARY KEY,
preco DECIMAL (6,2),
sabor VARCHAR(50),
numero_fatias INT,
descricao VARCHAR(100),
id_categoria BIGINT,
FOREIGN KEY (id_categoria) REFERENCES tb_categorias (id)
);

SELECT * FROM tb_pizzas;

INSERT INTO tb_categorias (tipo, borda) VALUES
("Tradicional", "Sim"),
("Doce", "Não"),
("Vegana", "Sim"),
("Especial", "Sim"),
("Premium", "Não");

INSERT INTO tb_pizzas (preco, sabor, numero_fatias, descricao, id_categoria) VALUES
(45.90, "Calabresa", 8, "Calabresa com cebola e mussarela", 1),
(49.99, "Chocolate", 6, "Chocolate ao leite com morangos", 2),
(55.00, "Brócolis com Catupiry", 8, "Opção vegana com creme vegetal", 3),
(62.50, "Frango Especial", 8, "Frango, cream cheese e milho", 4),
(75.90, "Picanha Premium", 8, "Carne de picanha e molho especial", 5),
(48.00, "Mussarela", 8, "Tradicional com queijo e orégano", 1),
(52.50, "Romeu e Julieta", 6, "Goiabada com cream cheese", 2),
(68.00, "Camarão Especial", 8, "Camarão com catupiry", 4);

UPDATE tb_pizzas SET preco = 35.99 WHERE id_pizzas = 1;
UPDATE tb_pizzas SET preco = 110.50 WHERE id_pizzas = 8;
UPDATE tb_pizzas SET preco = 32.50 WHERE id_pizzas = 7;
UPDATE tb_pizzas SET preco = 94.90 WHERE id_pizzas = 5;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%m";
SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";
SELECT * FROM tb_pizzas WHERE sabor LIKE "m%";

SELECT * FROM tb_categorias
INNER JOIN tb_pizzas ON tb_categorias.id = tb_pizzas.id_pizzas;

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.id_pizzas
WHERE tb_categorias.tipo = "Doce";

