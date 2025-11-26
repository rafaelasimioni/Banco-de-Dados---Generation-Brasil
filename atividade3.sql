CREATE DATABASE escola;

USE escola;

CREATE TABLE estudantes(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
nome_do_responsavel VARCHAR(255),
numero_do_responsavel VARCHAR(20),
data_nascimento DATE,
PRIMARY KEY (id)
);

SELECT * FROM estudantes;

INSERT INTO estudantes (nome, nome_do_responsavel, numero_do_responsavel, data_nascimento) VALUES
("Ana Clara Souza", "Mariana Souza", "11987654321", "2012-05-14"),
("Gabriel Henrique Lima", "Ricardo Lima", "11991234567", "2011-09-30"),
("Beatriz Fernandes", "Carla Fernandes", "21985476321", "2013-02-11"),
("Lucas Almeida", "Fernanda Almeida", "31998765432", "2010-11-25"),
("Isabela Martins", "Rodrigo Martins", "41999887766", "2012-07-08"),
("Miguel Santos", "Juliana Santos", "51998761234", "2014-01-20"),
("Laura Ribeiro", "Patrícia Ribeiro", "71996541234", "2011-03-05"),
("Pedro Nascimento", "André Nascimento", "61997894561", "2009-12-18");

ALTER TABLE estudantes
ADD COLUMN nota DECIMAL(4,2);

UPDATE estudantes
SET nota = CASE id
    WHEN 1 THEN 8.50
    WHEN 2 THEN 9.20
    WHEN 3 THEN 7.80
    WHEN 4 THEN 6.90
    WHEN 5 THEN 8.70
    WHEN 6 THEN 9.50
    WHEN 7 THEN 7.30
    WHEN 8 THEN 6.50
END
WHERE id IN (1,2,3,4,5,6,7,8);

SELECT * FROM estudantes WHERE nota > 7.0;

SELECT * FROM estudantes WHERE nota < 7.0;

DESCRIBE estudantes;

ALTER TABLE estudantes MODIFY nota DECIMAL (4,2) NOT NULL;