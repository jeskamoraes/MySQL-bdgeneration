CREATE DATABASE db_construindo_a_nossa_vida;
USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
id_categoria BIGINT AUTO_INCREMENT,
descricao_categoria VARCHAR(255) NOT NULL,
lote_categoria VARCHAR(255) NULL,
PRIMARY KEY(id_categoria)
);

INSERT INTO tb_categoria(descricao_categoria, lote_categoria)
VALUES("Tinta", "A01");
INSERT INTO tb_categoria(descricao_categoria, lote_categoria)
VALUES("Decoração", "B02");
INSERT INTO tb_categoria(descricao_categoria, lote_categoria)
VALUES("Elétrica", "C03");
INSERT INTO tb_categoria(descricao_categoria, lote_categoria)
VALUES("Jardim", "D04");
INSERT INTO tb_categoria(descricao_categoria, lote_categoria)
VALUES("Hidráulica", "E05");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
id_produto BIGINT AUTO_INCREMENT,
nome_produto VARCHAR(255) NOT NULL,
preco_produto DECIMAL(8,2) NOT NULL,
validade_produto DATE NULL,
categoria_id BIGINT NOT NULL,
PRIMARY KEY(id_produto),
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id_categoria)
);

SELECT * FROM tb_produto;

INSERT INTO tb_produto(nome_produto, preco_produto, validade_produto, categoria_id)
VALUES("Plug Cano PVC", 5.10, NULL, 4);
INSERT INTO tb_produto(nome_produto, preco_produto, validade_produto, categoria_id)
VALUES("Luva Soldável", 17.90, NULL, 4);
INSERT INTO tb_produto(nome_produto, preco_produto, validade_produto, categoria_id)
VALUES("Cabo Flexível 100 metros", 189.90, NULL, 3);
INSERT INTO tb_produto(nome_produto, preco_produto, validade_produto, categoria_id)
VALUES("Disjuntor Bipolar", 38.90, NULL, 3);
INSERT INTO tb_produto(nome_produto, preco_produto, validade_produto, categoria_id)
VALUES("Módulo Interruptor Simples", 34.90, NULL, 3);
INSERT INTO tb_produto(nome_produto, preco_produto, validade_produto, categoria_id)
VALUES("Espelho Decoração Dourado", 299.00, NULL, 2);
INSERT INTO tb_produto(nome_produto, preco_produto, validade_produto, categoria_id)
VALUES("Tinta Acrílica Fosco 18L", 89.00, 20300400, 1);
INSERT INTO tb_produto(nome_produto, preco_produto, validade_produto, categoria_id)
VALUES("Pintura Impermeável Vedapren", 259.00, 20290100, 1);

SELECT * FROM tb_produto WHERE preco_produto > 50.00;
SELECT * FROM tb_produto WHERE preco_produto BETWEEN 3.00 AND 60.00;
SELECT * FROM tb_produto WHERE nome_produto LIKE "%c%";
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id_categoria; 
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id_categoria 
WHERE tb_categoria.descricao_categoria = "Tinta"; 