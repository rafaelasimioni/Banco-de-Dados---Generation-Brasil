CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo_de_jogo VARCHAR(255),
descricao VARCHAR (255)
);

SELECT * FROM tb_classes;

CREATE TABLE tb_personagens(
id_personagem BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
nivel INT DEFAULT 1,
pontos_vida INT DEFAULT 0,
pontos_mana INT DEFAULT 0,
id_classes BIGINT,
FOREIGN KEY (id_classes) REFERENCES tb_classes(id)
);

SELECT * FROM tb_personagens;

INSERT INTO tb_classes (tipo_de_jogo, descricao) VALUES
("Soulslike", "Jogo desafiador com combate estratégico e alta dificuldade"),
("RPG de Ação", "Combina evolução de personagem com combate em tempo real"),
("MMORPG", "Jogo online com múltiplos jogadores e progressão contínua"),
("Battle Royale", "Vários jogadores lutam até restar apenas um vencedor"),
("Metroidvania", "Exploração de mapa interconectado e progressão por habilidades");

INSERT INTO tb_personagens (nome, nivel, pontos_vida, pontos_mana, id_classes) VALUES
("Ragnar, o Implacável", 14, 1300, 80, 1),     
("Selene Arcanista", 11, 600, 750, 2),         
("Theron da Aliança", 9, 850, 200, 3),         
("Kaelen dos Ventos", 7, 500, 300, 4),         
("Mira Lunaris", 10, 700, 650, 5),            
("Darian, o Errante", 18, 1400, 150, 1),       
("Lira Sombria", 12, 650, 800, 2),             
("Galdor Meridiano", 8, 900, 250, 3);          

SELECT * FROM tb_personagens;

ALTER TABLE tb_personagens CHANGE pontos_vida poder_ataque INT;

ALTER TABLE tb_personagens CHANGE pontos_mana poder_defesa INT;

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT nome FROM tb_personagens WHERE nome LIKE "%c";
SELECT nome FROM tb_personagens WHERE nome LIKE "c%";
SELECT nome FROM tb_personagens WHERE nome LIKE "%c%";

SELECT * FROM tb_classes
INNER JOIN tb_personagens ON tb_classes.id = tb_personagens.id_classes;

SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classes = tb_classes.id
WHERE tb_classes.tipo_de_jogo LIKE "Soulslike";

