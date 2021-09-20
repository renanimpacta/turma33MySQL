use db_rh;

/*Criando a tabela*/
create table tb_funcionaries (
	id bigint(5) auto_increment,
	nome_func varchar(20) not null,
    salario decimal(10,2) not null,
    cargo varchar(20) not null,
    ativo boolean not null,
    
    primary key(id)
);

/*Populando a tabela */
insert into tb_funcionaries(nome_func, salario, cargo, ativo) values ("Renan", 5000.00, "Dev FullStack Jr", true);
insert into tb_funcionaries(nome_func, salario, cargo, ativo) values ("Joana", 7000.00, "Dev FullStack Pl", true);
insert into tb_funcionaries(nome_func, salario, cargo, ativo) values ("Pedro", 2000.00, "Atendente", true);
insert into tb_funcionaries(nome_func, salario, cargo, ativo) values ("João", 3400.00, "Analista", true);
insert into tb_funcionaries(nome_func, salario, cargo, ativo) values ("Rita", 10000.00, "Product owner", true);

/* acessando os dados */
select * from tb_funcionaries;
/* maiores que 2000*/
select * from tb_funcionaries where salario > 2000;
/* menores ou iguais que 2000*/
select * from tb_funcionaries where salario <= 2000;

/* Atualizando um dado */
update tb_funcionaries set nome_func = "Pedro DESLIGADO", salario = 0.00, ativo = false where id = 3;

select * from tb_funcionaries
