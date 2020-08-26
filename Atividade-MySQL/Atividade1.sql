/*Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos funcionários desta empresa. 
Crie uma tabela de funcionários e utilizando a habilidade de abstração e determine 5 atributos relevantes dos funcionários para se trabalhar com o serviço deste RH.
Popule esta tabela com até 15 dados;
Faça um select que retorne os funcionários com o salário maior do que 2000.
Faça um select que retorne os funcionários com o salário menor do que 2000.
Ao término atualize um dado desta tabela através de uma query de atualização*/

create database db_rh;

use db_rh;

create table tb_funcionarios(
	cpf bigint (11) not null,
    nome varchar (200) not null,
    salario decimal (10,2),
    aliquota decimal (10,2),
    deduzir_imposto decimal (10,2),
    primary key (cpf)
);

insert into tb_funcionarios (cpf, nome, salario, aliquota, deduzir_imposto) values (79677355245,"José", 4322.55, 27.5, 756.53);
insert into tb_funcionarios (cpf, nome, salario, aliquota, deduzir_imposto) values (91457391962,"Ana", 3895.75, 22.5, 552.15);
insert into tb_funcionarios (cpf, nome, salario, aliquota, deduzir_imposto) values (62423065278,"Maria", 3100.10, 15, 305.80);
insert into tb_funcionarios (cpf, nome, salario, aliquota, deduzir_imposto) values (70587213014,"Luis", 1760.43, 7.5, 122.78);
insert into tb_funcionarios (cpf, nome, salario, aliquota, deduzir_imposto) values (38984121586,"Antonia", 1542.57, 0, 0);
insert into tb_funcionarios (cpf, nome, salario, aliquota, deduzir_imposto) values (73408063919,"João", 4108.68, 27.5,756.53);
insert into tb_funcionarios (cpf, nome, salario, aliquota, deduzir_imposto) values (10455190565,"Mariana", 4010.23, 22.5, 552.15);
insert into tb_funcionarios (cpf, nome, salario, aliquota, deduzir_imposto) values (62900084877,"Felipe", 2460.71, 15, 305.80);
insert into tb_funcionarios (cpf, nome, salario, aliquota, deduzir_imposto) values (97660724955,"Luana", 1804.73, 7.5, 122.78);
insert into tb_funcionarios (cpf, nome, salario, aliquota, deduzir_imposto) values (42706223971,"Joana", 1326.23, 0, 0);
insert into tb_funcionarios (cpf, nome, salario, aliquota, deduzir_imposto) values (74206478163,"Laura", 6578.89, 27.5,756.53);
insert into tb_funcionarios (cpf, nome, salario, aliquota, deduzir_imposto) values (45743055278,"José", 3375.97, 22.5, 552.15);
insert into tb_funcionarios (cpf, nome, salario, aliquota, deduzir_imposto) values (65426143315,"Rosane", 2847.46, 15, 305.80);
insert into tb_funcionarios (cpf, nome, salario, aliquota, deduzir_imposto) values (28749703055,"Arlindo", 2341.12, 7.5, 122.78);
insert into tb_funcionarios (cpf, nome, salario, aliquota, deduzir_imposto) values (60569523667,"Lucas", 1245.11, 0, 0);

select * from tb_funcionarios where salario >2000;
select * from tb_funcionarios where salario <2000;

update tb_funcionarios set nome = "Luis" , salario = 2013.89, aliquota = 7.5, deduzir_imposto = 122.78 
	where cpf = 70587213014;

select * from tb_funcionarios;