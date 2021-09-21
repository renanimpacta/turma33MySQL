-- criando o banco de dados
create database db_farmacia_do_bem;

-- colocando o db em uso
use db_farmacia_do_bem;

-- criando a tabela de categorias
create table tb_categoria(
	id bigint auto_increment,
    nome varchar(40) not null,
    generico boolean not null,
    
    primary key (id)
    
);

-- criando a tabela tb_pizza
create table tb_produto(
	id bigint auto_increment,
    nome varchar(40) not null,
    preco decimal(10,2) not null,
    precisa_receita boolean not null,
    fk_id_categoria bigint,
    
    primary key (id),
    foreign key (fk_id_categoria) references tb_categoria(id)
);

-- populando tabela categoria
insert into tb_categoria (nome, generico) values ("cosméticos", false);
insert into tb_categoria (nome, generico) values ("comprimidos", true);
insert into tb_categoria (nome, generico) values ("xaropes", true);
insert into tb_categoria (nome, generico) values ("pomadas", true);
insert into tb_categoria (nome, generico) values ("outros", false);

select * from tb_categoria;

-- populando tabela produto
insert into tb_produto (nome, preco, precisa_receita, fk_id_categoria) values ("benegripe", 15.00, true, 2);
insert into tb_produto (nome, preco, precisa_receita, fk_id_categoria) values ("vitamina C", 25.00, false, 5);
insert into tb_produto (nome, preco, precisa_receita, fk_id_categoria) values ("xarope de menta", 30.00, true, 3);
insert into tb_produto (nome, preco, precisa_receita, fk_id_categoria) values ("xarope de abacaxi", 35.00, true, 3);
insert into tb_produto (nome, preco, precisa_receita, fk_id_categoria) values ("pomada vick", 27.00, false, 4);
insert into tb_produto (nome, preco, precisa_receita, fk_id_categoria) values ("nebacetin", 18.75, false, 4);
insert into tb_produto (nome, preco, precisa_receita, fk_id_categoria) values ("shampoo Seda", 22.00, false, 1);
insert into tb_produto (nome, preco, precisa_receita, fk_id_categoria) values ("esmalte preto", 7.00, false, 1);

select * from tb_produto;

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where preco > 50; -- não tem

-- select trazendo os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where preco between 3 and 60;

-- select utilizando LIKE buscando os Produtos com a letra B.
select * from tb_produto where nome like "b%"; -- Posicionando o % dessa forma, seleciona apenas a primeira letra

-- select com Inner join entre tabela categoria e produto.
select * from tb_produto inner join tb_categoria on tb_produto.fk_id_categoria = tb_categoria.id;

-- select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos).
select * from tb_produto left join tb_categoria on tb_produto.fk_id_categoria = tb_categoria.id where tb_categoria.nome = "cosméticos" -- "nome" é ambiguo, possui nas duas tabelas, então precisei especificar de qual tabela eu queria
