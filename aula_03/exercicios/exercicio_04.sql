CREATE DATABASE db_cidade_das_frutas;
USE db_cidade_das_frutas;

CREATE TABLE tb_categoria(
id_categoria BIGINT AUTO_INCREMENT,
descricao_categoria VARCHAR(255) NOT NULL,
lote_categoria VARCHAR(255) NULL,
PRIMARY KEY(id_categoria)
);

DROP TABLE tb_categoria;


INSERT INTO tb_categoria(descricao_categoria, lote_categoria)
VALUES("Fruta", "A01");
INSERT INTO tb_categoria(descricao_categoria, lote_categoria)
VALUES("Legume", "B02");
INSERT INTO tb_categoria(descricao_categoria, lote_categoria)
VALUES("Verdura", NULL);

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
id_produto BIGINT AUTO_INCREMENT,
nome_produto VARCHAR(255) NOT NULL,
preco_produto DECIMAL(8,2) NOT NULL,
validade_produto DATE NOT NULL,
categoria_id BIGINT NOT NULL,
PRIMARY KEY(id_produto),
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id_categoria)
);

SELECT * FROM tb_produto;

INSERT INTO tb_produto(nome_produto, preco_produto, validade_produto, categoria_id)
VALUES("Maça", 3.99, 20220400, 1);
INSERT INTO tb_produto(nome_produto, preco_produto, validade_produto, categoria_id)
VALUES("Uva", 15.99, 20220400, 1);
INSERT INTO tb_produto(nome_produto, preco_produto, validade_produto, categoria_id)
VALUES("Acerola",18.70, 20220400, 1);
INSERT INTO tb_produto(nome_produto, preco_produto, validade_produto, categoria_id)
VALUES("Cenoura", 12.09, 20220400, 2);
INSERT INTO tb_produto(nome_produto, preco_produto, validade_produto, categoria_id)
VALUES("Batata", 8.85, 20220400, 2);
INSERT INTO tb_produto(nome_produto, preco_produto, validade_produto, categoria_id)
VALUES("Alface", 5.99, 20220400, 3);
INSERT INTO tb_produto(nome_produto, preco_produto, validade_produto, categoria_id)
VALUES("Couve", 7.24, 20220400, 3);
INSERT INTO tb_produto(nome_produto, preco_produto, validade_produto, categoria_id)
VALUES("Agrião", 11.03, 20220400, 3);

SELECT * FROM tb_produto WHERE preco_produto > 50.00;
SELECT * FROM tb_produto WHERE preco_produto BETWEEN 3.00 AND 60.00;
SELECT * FROM tb_produto WHERE nome_produto LIKE "%c%";
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id_categoria; 
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id_categoria 
WHERE tb_categoria.descricao_categoria = "Fruta"; 