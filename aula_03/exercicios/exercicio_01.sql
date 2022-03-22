/* Exercício proposto:
 1. Crie um banco de dados para um serviço de um game Online , 
o nome do banco deverá ter o seguinte nome db_generation_game_online, 
onde, o sistema trabalhará com as informações dos personagens desse game. 
O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.
1.1 Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos 
relevantes da classe para se trabalhar com o serviço desse  game Online.
1.2 Crie uma tabela tb_personagem  e utilizando a habilidade de abstração e determine 5 
atributos relevantes dos personagens para se trabalhar com o serviço desse game Online 
(não esqueça de criar a foreign key de tb_classe nesta tabela).
1.3 Popule esta tabela classe com até 5 dados.
1.4 Popule esta tabela personagem com até 8 dados.
1.5 Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
1.6 Faça um select trazendo  os personagens com poder de defesa entre 1000 e 2000.
1.7 Faça um select  utilizando LIKE buscando os personagens com a letra C.
1.8 Faça um um select com Inner join entre  tabela classe e personagem.
1.9 Faça um select onde traga todos os personagem de uma classe específica 
(exemplo todos os personagens que são arqueiros).
*/ 
CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classe (
id BIGINT AUTO_INCREMENT,
categoria VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

ALTER TABLE tb_classe ADD classe_id BIGINT; /* Adiciona atributo na tabela tb_classe*/
ALTER TABLE tb_classe DROP classe_id;

INSERT INTO tb_classe(categoria, descricao)
VALUES("Guerreiro","Causa alto dano em tarefas");
INSERT INTO tb_classe(categoria, descricao)
VALUES("Mago","Causa dano moderado em tarefas");
INSERT INTO tb_classe(categoria, descricao)
VALUES("Curandeiro","Alta defesa contra danos");
INSERT INTO tb_classe(categoria, descricao)
VALUES("Gatuno","Encontra mais itens e ouro");
SELECT * FROM tb_classe;

CREATE TABLE tb_personagem(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
atributo VARCHAR(255) NOT NULL,
poder_ataque INT NOT NULL,
poder_defesa INT NOT NULL,
classe_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe(id)
);
INSERT INTO tb_personagem(nome, atributo, poder_ataque, poder_defesa, classe_id)
VALUES("Dant","força", 5000, 2500, 1);
INSERT INTO tb_personagem(nome, atributo, poder_ataque, poder_defesa, classe_id)
VALUES("Dino","força", 4200, 2000, 1);
INSERT INTO tb_personagem(nome, atributo, poder_ataque, poder_defesa, classe_id)
VALUES("Sr. X","inteligência", 3000, 2500, 2);
INSERT INTO tb_personagem(nome, atributo, poder_ataque, poder_defesa, classe_id)
VALUES("Garret","inteligência", 3800, 2000, 2);
INSERT INTO tb_personagem(nome, atributo, poder_ataque, poder_defesa, classe_id)
VALUES("Ryu","constituição", 1000, 2500, 3);
INSERT INTO tb_personagem(nome, atributo, poder_ataque, poder_defesa, classe_id)
VALUES("Caeliots","força", 5000, 2500, 1);
INSERT INTO tb_personagem(nome, atributo, poder_ataque, poder_defesa, classe_id)
VALUES("Carlito","percepção", 3000, 1000, 4);
INSERT INTO tb_personagem(nome, atributo, poder_ataque, poder_defesa, classe_id)
VALUES("Caqui","constituição", 1800, 2500, 3);
SELECT * FROM tb_personagem;

SELECT * FROM tb_personagem WHERE poder_ataque > 2000;
SELECT * FROM tb_personagem WHERE poder_defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagem WHERE nome LIKE "c%";
SELECT nome, atributo, poder_ataque, poder_defesa, tb_classe.categoria FROM tb_personagem INNER JOIN tb_classe 
ON tb_personagem.classe_id = tb_classe.id WHERE tb_classe.categoria = "Guerreiro";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_usuarios ON tb_produtos.usuario_id = tb_usuarios.id;

SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
INNER JOIN tb_usuarios ON tb_produtos.usuario_id = tb_usuarios.id;