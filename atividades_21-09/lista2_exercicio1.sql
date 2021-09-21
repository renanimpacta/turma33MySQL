-- cria banco de dados
create database db_jogo_gen33;

-- Seleciona o banco de dados
use db_jogo_gen33;

-- Criar primeira tabela classe
create table tb_classe(
	id bigint auto_increment,
    nome varchar(255),
    poder varchar(255),
    energia int,
    
    primary key (id)
);

-- Popular dados na tabela
insert into tb_classe(nome, poder, energia) values ("maga", "bola de fogo", 90);
insert into tb_classe(nome, poder, energia) values ("arqueira", "chuva de flechas", 100);
insert into tb_classe(nome, poder, energia) values ("sereia", "agua transbordante", 120);
insert into tb_classe(nome, poder, energia) values ("morte", "sugadora de almas", 150);

select * from tb_classe;

-- criar tabela personagem
create table tb_personagem(
	id bigint auto_increment,
    nome varchar(20),
    genero varchar(20),
    raça varchar(20),
    ataque int,
    vida int,
    fk_id_classe bigint,
    
    primary key (id),
    foreign key (fk_id_classe) references tb_classe(id)
    
);

-- populando tb_personagem
insert into tb_personagem (nome, genero, raça, ataque, vida, fk_id_classe)
	values ("Gustavo", "ele", "Jacaré", 20, 150, 1);
insert into tb_personagem (nome, genero, raça, ataque, vida, fk_id_classe)
	values ("Joice", "ela", "humana", 20, 150, 3);
insert into tb_personagem (nome, genero, raça, ataque, vida, fk_id_classe)
	values ("Juan", "elu", "bullywug", 8, 50, 4);
insert into tb_personagem (nome, genero, raça, ataque, vida, fk_id_classe)
	values ("Raniere", "Menine", "humana", 22, 100, 2);
    
select * from tb_personagem;

-- um select que retorne os personagens com ataque maior que x
select * from tb_personagem where ataque > 10;

-- um select que retorne os personagens com a vida entre 40 e 101
select * from tb_personagem where vida between 40 and 101;

-- um select utilizando LIKE para buscar os personagens com a letra J
select * from tb_personagem where nome like "%j%";

-- um select com inner join entre a tabela classe e personagens
select * from tb_personagem inner join tb_classe
	on tb_classe.id = tb_personagem.fk_id_classe;
    
  /*
  -- Iner Join
  (1 selecione tudo da) tabela_x (2 junte internamente com a) tabela_y (3 em que) tabela_x.dado_especifico (4 seja igual) tabela_y.dado_especifico
  (1 select * from) tabela_x (2 inner join) tabela_y (3 on) tabela_x.dado_especifico (4 =) tabela_y.dado_especifico
  */


-- um select onde traga todes os personagens de uma classe especifica (humana)
select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.fk_id_classe where fk_id_classe = 2


-- Como tirar inserção duplicada
