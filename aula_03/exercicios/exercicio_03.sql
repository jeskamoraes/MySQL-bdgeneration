USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
id_categoria BIGINT AUTO_INCREMENT,
descricao_categoria VARCHAR(255) NOT NULL,
lote_cateogira VARCHAR(255) NULL,
PRIMARY KEY(id_categoria)
);

ALTER TABLE tb_categoria CHANGE lote_cateogira lote_categoria VARCHAR(255); /*ALTERANDO NOME DO ATRIBUTO QUE FOI ESCRITO ERRADO*/

INSERT INTO tb_categoria(descricao_categoria, lote_categoria)
VALUES("Medicamento", "A01");
INSERT INTO tb_categoria(descricao_categoria, lote_categoria)
VALUES("Perfumaria", "B02");
INSERT INTO tb_categoria(descricao_categoria, lote_categoria)
VALUES("Dermocosméticos", NULL);
INSERT INTO tb_categoria(descricao_categoria, lote_categoria)
VALUES("Alimentos Diet", "C03");
INSERT INTO tb_categoria(descricao_categoria, lote_categoria)
VALUES("Infantil", NULL);

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
VALUES("Dorflex", 4.88, 20230510, 1);
INSERT INTO tb_produto(nome_produto, preco_produto, validade_produto, categoria_id)
VALUES("Paracetamol", 4.99, 20250101, 1);
INSERT INTO tb_produto(nome_produto, preco_produto, validade_produto, categoria_id)
VALUES("Noripurum",57.70, 20230116, 1);
INSERT INTO tb_produto(nome_produto, preco_produto, validade_produto, categoria_id)
VALUES("Protetor Solar Facial", 20.09, 20250515, 3);
INSERT INTO tb_produto(nome_produto, preco_produto, validade_produto, categoria_id)
VALUES("Sérum Clareador", 79.09, 20260300, 3);
INSERT INTO tb_produto(nome_produto, preco_produto, validade_produto, categoria_id)
VALUES("Colônia Giovanna Baby", 39.99, 20240500, 2);
INSERT INTO tb_produto(nome_produto, preco_produto, validade_produto, categoria_id)
VALUES("Bepantol Baby", 5.24,20230100, 4);
INSERT INTO tb_produto(nome_produto, preco_produto, validade_produto, categoria_id)
VALUES("Bepantol Baby Lenços Umedecidos", 11.03, 20230500, 4);

SELECT * FROM tb_produto WHERE preco_produto > 50.00;
SELECT * FROM tb_produto WHERE preco_produto BETWEEN 3.00 AND 60.00;
SELECT * FROM tb_produto WHERE nome_produto LIKE "%b%";
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id_categoria; 
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id_categoria WHERE tb_categoria.descricao_categoria = "Medicamento"; 