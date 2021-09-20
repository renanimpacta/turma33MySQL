/*Criando o banco de dados*/
create database db_escola;

/* usando o banco de dados*/
use db_escola;

/*Criando a tabela estudantes*/
create table tb_estudantes(
	ra_id bigint(6) auto_increment,
    nome_aluno varchar(40) not null,
    curso varchar(40) not null,
    ativo boolean not null,
    nota_final int not null,
    
    primary key (ra_id)
);

/* colocando dados na tabela */
insert into tb_estudantes(nome_aluno, curso, ativo, nota_final) values ("Rick", "Física", true, 10);
insert into tb_estudantes(nome_aluno, curso, ativo, nota_final) values ("Morty", "Português", true, 7);
insert into tb_estudantes(nome_aluno, curso, ativo, nota_final) values ("Renan", "computação", true, 8);
insert into tb_estudantes(nome_aluno, curso, ativo, nota_final) values ("Summer", "Ed. Física", true, 6);
insert into tb_estudantes(nome_aluno, curso, ativo, nota_final) values ("Jerry", "Matemática", true, 3);
insert into tb_estudantes(nome_aluno, curso, ativo, nota_final) values ("Beth", "Física", true, 9);
insert into tb_estudantes(nome_aluno, curso, ativo, nota_final) values ("Tammy", "Filosofia", true, 7);
insert into tb_estudantes(nome_aluno, curso, ativo, nota_final) values ("Jessica", "Português", true, 7);

/* acessando os dados */
select * from tb_estudantes;
/* nota maior que 7*/
select * from tb_estudantes where nota_final > 7;
/*nota menor que 7*/
select * from tb_estudantes where nota_final <7;

/*Atualizando dados*/
update tb_estudantes set nome_aluno = "Evil Morty", nota_final = 10 where ra_id = 2;

select * from tb_estudantes;