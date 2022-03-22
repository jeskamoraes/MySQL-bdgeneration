DROP DATABASE db_pizzaria_legal;
CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
id_categoria BIGINT AUTO_INCREMENT,
descricao_categoria VARCHAR(255) NOT NULL,
PRIMARY KEY(id_categoria)
);

INSERT INTO tb_categoria(descricao_categoria)
VALUES("Doce");
INSERT INTO tb_categoria(descricao_categoria)
VALUES("Salgada");
INSERT INTO tb_categoria(descricao_categoria)
VALUES("Especial");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
id_produto BIGINT AUTO_INCREMENT,
nome_produto VARCHAR(255) NOT NULL,
preco_produto DECIMAL(8,2) NOT NULL,
recheio_produto VARCHAR(255) NULL,
categoria_id BIGINT NOT NULL,
PRIMARY KEY(id_produto),
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id_categoria)
);

SELECT * FROM tb_produto;

INSERT INTO tb_produto(nome_produto, preco_produto, recheio_produto, categoria_id)
VALUES("Mussarela", 50.00, NULL, 2);
INSERT INTO tb_produto(nome_produto, preco_produto, recheio_produto, categoria_id)
VALUES("Calabresa", 55.00, "Calabresa, cebola e azeitona", 2);
INSERT INTO tb_produto(nome_produto, preco_produto, recheio_produto, categoria_id)
VALUES("Romeu e Julieta", 72.90, "Mussarela e goiabada", 1);
INSERT INTO tb_produto(nome_produto, preco_produto, recheio_produto, categoria_id)
VALUES("Brigadeiro", 75.99, "Chocolate e granulado", 2);
INSERT INTO tb_produto(nome_produto, preco_produto, recheio_produto, categoria_id)
VALUES("Camarão", 95.00, "Camarão", 3);
INSERT INTO tb_produto(nome_produto, preco_produto, recheio_produto, categoria_id)
VALUES("Prestígio", 72.90, "Chocolate e côco", 2);
INSERT INTO tb_produto(nome_produto, preco_produto, recheio_produto, categoria_id)
VALUES("Carne Seca", 80.00, "Carne seca, mussarela, cebola", 3);
INSERT INTO tb_produto(nome_produto, preco_produto, recheio_produto, categoria_id)
VALUES("Portuguesa", 52.90, "Presunto, mussarela, ovo, cebola", 1);

SELECT * FROM tb_produto WHERE preco_produto > 45.00;
SELECT * FROM tb_produto WHERE preco_produto BETWEEN 29.00 AND 60.00;
SELECT * FROM tb_produto WHERE nome_produto LIKE "%c%";
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id_categoria; 
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id_categoria 
WHERE tb_categoria.descricao_categoria = "Doce"; 