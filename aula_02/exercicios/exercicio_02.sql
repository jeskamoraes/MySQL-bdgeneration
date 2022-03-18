CREATE DATABASE db_ecommerce;
USE db_ecommerce;
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
categoria varchar(255),
classificacao int NOT NULL,
preco decimal(8,2) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO tb_produtos (nome, categoria, classificacao, preco)
VALUES("Horizon Forbiden West","Ação, Aventura, RPG", "14", 349.90);
INSERT INTO tb_produtos (nome, categoria, classificacao, preco)
VALUES("Grand Theft Auto","Ação", "18", 134.89);
INSERT INTO tb_produtos (nome, categoria, classificacao, preco)
VALUES("Elden Ring","RPG, Ação", "16", 299.90);
INSERT INTO tb_produtos (nome, categoria, classificacao, preco)
VALUES("Assassin's Creed","Ação, Aventura, RPG", "18", 69.99);
INSERT INTO tb_produtos (nome, categoria, classificacao, preco)
VALUES("Call of Duty: Black Ops III","Ação, Tiro", "18", 105.56);
INSERT INTO tb_produtos (nome, categoria, classificacao, preco)
VALUES("Final Fantasy","RPG", "14", 33.25);
INSERT INTO tb_produtos (nome, categoria, classificacao, preco)
VALUES("Just Dance 2022","Música, Ritmo", "Livre", 119.95);
INSERT INTO tb_produtos (nome, categoria, classificacao, preco)
VALUES("Monster Truck Championship", "Esporte", "Livre", 99.75);

DELETE FROM tb_produtos WHERE id = 1;
ALTER TABLE tb_produtos MODIFY classificacao varchar(255);

SELECT * FROM tb_produtos WHERE preco > 100;
SELECT * FROM tb_produtos WHERE preco < 100;
SELECT nome, categoria, classificacao, concat('R$', FORMAT(preco, 2, 'pt_br')) AS preco_formatado FROM tb_produtos;

UPDATE tb_produtos SET categoria = "RPG, Aventura" WHERE id = 6;
SELECT * FROM tb_produtos;