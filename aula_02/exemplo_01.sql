-- Criar banco de dados
CREATE DATABASE db_quitanda;

-- Selecionar o banco de dados
USE db_quitanda;

-- Criar tabela tb_produtos
CREATE TABLE tb_produtos(
id bigint auto_increment, -- Atribui um número automaticamente
nome varchar(255) NOT NULL,
quantidade int,
data_validade date,
preço decimal NOT NULL,
PRIMARY KEY (id)
);

-- Inserir dados na tabela
INSERT INTO tb_produtos (nome, quantidade, data_validade, preço)
VALUES ("arroz", 50, "2023-04-29", 20.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preço)
VALUES ("chuchu", 33, "2022-04-18", 3.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preço)
VALUES ("tomate", 80, "2022-03-19",16.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preço)
VALUES ("cenoura", 15, "2022-05-19", 7.50);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preço)
VALUES ("banana", 10, "2022-04-20", 5.00);

-- Listar produtos da tabela
SELECT * FROM tb_produtos;
SELECT nome, preco FROM tb_produtos; /*Lista os itens informados*/
SELECT * FROM tb_produtos WHERE preco > 10.00; /*Lista os produtos com preço maior que 10.00*/
SELECT * FROM tb_produtos WHERE preco > 10.00 AND quantidade < 100; /*Utilizando operador lógico AND*/
SELECT nome, CONCAT('R$ ', FORMAT(preco, 2, 'pt_br')) AS preço FROM tb_produtos; /*Alterações apenas na visualização, no banco de dados continua o mesmo formato*/

-- Alterações na estrutura da tabela
ALTER TABLE tb_produtos ADD descricao varchar(255); /* Adiciona atributo na tabela*/
ALTER TABLE tb_produtos DROP descricao;  /*Exclui atributo na tabela*/
ALTER TABLE tb_produtos CHANGE preço preco decimal(8,2); /* Altera nome do atributo*/
ALTER TABLE tb_produtos MODIFY preço decimal(8,2); /*Formatando a estrutura do decimal*/

-- Atualizar os dados
UPDATE tb_produtos SET preço = 8.50 WHERE id = 5;
UPDATE tb_produtos SET preço = 19.50 WHERE id = 1;

-- Deletar
DELETE FROM tb_produtos WHERE id = 5; 
DELETE FROM tb_produtos WHERE id = 6;
DELETE FROM tb_produtos WHERE id = 7;  
DELETE FROM tb_produtos WHERE id = 8; 

UPDATE tb_produtos SET preço = 5.50 WHERE id = 2;
UPDATE tb_produtos SET quantidade = 100 WHERE id = 2;
