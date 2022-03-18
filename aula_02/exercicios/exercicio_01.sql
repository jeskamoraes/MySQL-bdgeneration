CREATE DATABASE db_rh;
USE db_rh;
CREATE TABLE tb_funcionaries(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
cpf varchar(255) NOT NULL,
cargo VARCHAR(255),
salario decimal NOT NULL,
PRIMARY KEY(id)
);

ALTER TABLE tb_funcionaries MODIFY salario decimal (8,2);

INSERT INTO tb_funcionaries (nome, cpf, cargo, salario)
VALUES("Beyonce", "00011133344", "Auxiliar de escritório", 1500.00);
INSERT INTO tb_funcionaries (nome, cpf, cargo, salario)
VALUES("Shakira", "11122277700", "Vendedora", 1200.00);
INSERT INTO tb_funcionaries (nome, cpf, cargo, salario)
VALUES("Rihanna", "42455599977", "Gerente comercial", 3200.00);
INSERT INTO tb_funcionaries (nome, cpf, cargo, salario)
VALUES("Michael Jackson", "66666666622", "Diretor", 4300.00);
INSERT INTO tb_funcionaries (nome, cpf, cargo, salario)
VALUES("Brad Pitt", "11111111111", "Auxiliar de limpeza", 1200.00);

SELECT * from tb_funcionaries;

SELECT nome, cpf, cargo, concat('R$' , FORMAT(salario, 2, 'pt_br')) AS salario_formatado FROM tb_funcionaries;
SELECT * FROM tb_funcionaries WHERE salario > 2000.00; /* ????? */
SELECT * FROM tb_funcionaries WHERE salario < 2000.00;

UPDATE tb_funcionaries SET salario_formatado = 2100.00 WHERE id = 1; 