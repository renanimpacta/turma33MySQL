/*Criando o Banco de dados*/
create database db_ecommerce;

/*selecionando o banco de dados*/
use db_ecommerce;

/*criando tabela de produtos*/
create table tb_produtos(
	id bigint(5) auto_increment,
    nome varchar(40) not null,
    preco decimal(10,2) not null,
    estoque bigint(5) not null,
    categoria varchar(40),
    
    primary key (id)
);

/* inserindo os dados na tabela */
insert into tb_produtos(nome, preco, estoque, categoria) values ("Jaqueta jeans", 100.00, 20, "Roupas");
insert into tb_produtos(nome, preco, estoque, categoria) values ("Relógio preto", 40.00, 15, "Acessórios");
insert into tb_produtos(nome, preco, estoque, categoria) values ("Óculos de sol", 20.00, 17, "Acessórios");
insert into tb_produtos(nome, preco, estoque, categoria) values ("Bola de futebol", 45.00, 50, "Brinquedos");
insert into tb_produtos(nome, preco, estoque, categoria) values ("Cadeira de praia", 65.50, 10, null);
insert into tb_produtos(nome, preco, estoque, categoria) values ("Tênis roxo", 145.90, 19, "Calçados");
insert into tb_produtos(nome, preco, estoque, categoria) values ("Sandália amarela", 70.00, 10, "Calcçados");
insert into tb_produtos(nome, preco, estoque, categoria) values ("Calça sarja", 105.50, 23, "Roupas");

/* acessando os dados */
select * from tb_produtos;
/* maiores que 2000*/
select * from tb_produtos where preco > 500;
/* menores ou iguais que 2000*/
select * from tb_produtos where preco < 500;

/*Alterando o nome e o valor do produto com id 2*/
update tb_produtos set nome = "Relógio importado", preco = 600.00 where id = 2



