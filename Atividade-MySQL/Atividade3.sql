/*Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos alunos deste registro dessa escola. 
Crie uma tabela alunos/a e utilizando a habilidade de abstração e determine 5 atributos relevantes dos alunos/a para se trabalhar com o serviço dessa escola.
Popule esta tabela com até 15 dados;
Faça um select que retorne o/as alunos/a com a nota maior do que 7.
Faça um select que retorne o/as alunos/a com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização.

*/

create database db_registro_escolar;

use db_registro_escolar;

create table tb_info_alunos(
	ra bigint (5) auto_increment,
	nome varchar (200) not null,
	endereco varchar (200),
    faltas int (3),
    nota decimal (10,2),
    primary key(ra)
);

insert into tb_info_alunos (nome, endereco, faltas, nota) values ("José","Rua do Limoeiro", 3, 8);
insert into tb_info_alunos (nome, endereco, faltas, nota) values ("Ana","Rua da Laranjeira", 7, 4.2);
insert into tb_info_alunos (nome, endereco, faltas, nota) values ("Maria","Rua do Abacateiro", 4, 2.8);
insert into tb_info_alunos (nome, endereco, faltas, nota) values ("Luis","Rua do Cajueiro", 6, 6.5);
insert into tb_info_alunos (nome, endereco, faltas, nota) values ("Antonia","Rua da Macieira", 0, 9.1);
insert into tb_info_alunos (nome, endereco, faltas, nota) values ("João","Rua da Cerejeira", 2, 7.2);
insert into tb_info_alunos (nome, endereco, faltas, nota) values ("Mariana","Rua da Pitangueira", 1, 7.6);
insert into tb_info_alunos (nome, endereco, faltas, nota) values ("Felipe","Rua Pereira", 3, 8.2);
insert into tb_info_alunos (nome, endereco, faltas, nota) values ("Luana","Rua da Jabuticabeira", 5, 6.8);
insert into tb_info_alunos (nome, endereco, faltas, nota) values ("Joana","Rua Mangueira", 1, 6.9);
insert into tb_info_alunos (nome, endereco, faltas, nota) values ("Laura","Rua da Romãzeira", 15, 2.3);
insert into tb_info_alunos (nome, endereco, faltas, nota) values ("Junior","Rua da Figueira", 9, 3.9);
insert into tb_info_alunos (nome, endereco, faltas, nota) values ("Rosane","Rua da Goiabeira", 8, 1.6);
insert into tb_info_alunos (nome, endereco, faltas, nota) values ("Arlindo","Rua da Abóbora", 4, 8.7);
insert into tb_info_alunos (nome, endereco, faltas, nota) values ("Lucas","Rua da Melancia", 2, 7.3);


select * from tb_info_alunos where nota >7;
select * from tb_info_alunos where nota <7;

update tb_info_alunos set endereco = "Rua do Açaí" 
	where ra = 7;

select * from tb_info_alunos;