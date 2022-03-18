CREATE DATABASE db_escola;
USE db_escola;
CREATE TABLE tb_alunos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
turma VARCHAR(255),
materia VARCHAR(255) NOT NULL,
nota decimal(8,2) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO tb_alunos(nome, turma, materia, nota)
VALUES("Joyce","2A","Português","6.5");
INSERT INTO tb_alunos(nome, turma, materia, nota)
VALUES("Diego","2A","Português","7.0");
INSERT INTO tb_alunos(nome, turma, materia, nota)
VALUES("Roberta","2A","Português","3.0");
INSERT INTO tb_alunos(nome, turma, materia, nota)
VALUES("Manoela","2A","Português","10.0");
INSERT INTO tb_alunos(nome, turma, materia, nota)
VALUES("Rogério","2A","Português","6.0");
INSERT INTO tb_alunos(nome, turma, materia, nota)
VALUES("Matheus","2A","Português","9.5");
INSERT INTO tb_alunos(nome, turma, materia, nota)
VALUES("Janaina","2A","Português","5.0");
INSERT INTO tb_alunos(nome, turma, materia, nota)
VALUES("Mário","2A","Português","7.5");

SELECT * FROM tb_alunos WHERE nota > 7;
SELECT * FROM tb_alunos WHERE nota < 7;

UPDATE tb_alunos SET nota = 3.5 WHERE id = 3;

SELECT * FROM tb_alunos;