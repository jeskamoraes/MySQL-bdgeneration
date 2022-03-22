CREATE DATABASE db_cursoDaMinhaVida;
USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria(
id_categoria BIGINT AUTO_INCREMENT,
descricao_categoria VARCHAR(255) NOT NULL,
PRIMARY KEY(id_categoria)
);

INSERT INTO tb_categoria(descricao_categoria)
VALUES("Tecnologia");
INSERT INTO tb_categoria(descricao_categoria)
VALUES("DataBase");
INSERT INTO tb_categoria(descricao_categoria)
VALUES("Design");
INSERT INTO tb_categoria(descricao_categoria)
VALUES("Administração");
INSERT INTO tb_categoria(descricao_categoria)
VALUES("Comercial");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
id_produto BIGINT AUTO_INCREMENT,
nome_produto VARCHAR(255) NOT NULL,
preco_produto DECIMAL(8,2) NOT NULL,
periodo_produto DATE NOT NULL,
categoria_id BIGINT NOT NULL,
PRIMARY KEY(id_produto),
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id_categoria)
);

SELECT * FROM tb_produto;
ALTER TABLE tb_produto MODIFY periodo_produto VARCHAR(255);

INSERT INTO tb_produto(nome_produto, preco_produto, periodo_produto, categoria_id)
VALUES("Lógica de programação", 50.00, "Manhã", 1);
INSERT INTO tb_produto(nome_produto, preco_produto, periodo_produto, categoria_id)
VALUES("Lógica de programação", 65.00, "Noite", 1);
INSERT INTO tb_produto(nome_produto, preco_produto, periodo_produto, categoria_id)
VALUES("Java Básico", 150.00, "Noturno", 1);
INSERT INTO tb_produto(nome_produto, preco_produto, periodo_produto, categoria_id)
VALUES("SQL", 99.90, "Noturno", 2);
INSERT INTO tb_produto(nome_produto, preco_produto, periodo_produto, categoria_id)
VALUES("Introdução ao MySQL", 89.99, "Noturno", 2);
INSERT INTO tb_produto(nome_produto, preco_produto, periodo_produto, categoria_id)
VALUES("UX/UI", 299.00, "Noturno", 3);
INSERT INTO tb_produto(nome_produto, preco_produto, periodo_produto, categoria_id)
VALUES("Gestão de Recursos Humanos", 100.00, "Manhã", 4);
INSERT INTO tb_produto(nome_produto, preco_produto, periodo_produto, categoria_id)
VALUES("Inbound Sales", 85.00, "Noturno", 5);

SELECT * FROM tb_produto WHERE preco_produto > 50.00;
SELECT * FROM tb_produto WHERE preco_produto BETWEEN 3.00 AND 60.00;
SELECT * FROM tb_produto WHERE nome_produto LIKE "%j%";
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id_categoria; 
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id_categoria 
WHERE tb_categoria.descricao_categoria = "DataBase"; 