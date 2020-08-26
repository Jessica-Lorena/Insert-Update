/*Crie um banco de dados para um e commerce, onde o sistema trabalhará com as informações dos produtos deste ecommerce. 
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 15 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização.
*/

create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
	id bigint (5) auto_increment,
	nome varchar (200) not null,
	marca varchar (200),
    valor decimal (10,2),
    peso decimal (10,2),
    bivolt boolean,
    primary key(id)
);

insert into tb_produtos (nome, marca, valor, peso, bivolt) values ("Monitor","LG", 675.89, 2.5, true);
insert into tb_produtos (nome, marca, valor, peso, bivolt) values ("Celular","Samsung", 2345.99, 0.28, true);
insert into tb_produtos (nome, marca, valor, peso, bivolt) values ("Air Fryer","Mondial", 289.99, 5.3, false);
insert into tb_produtos (nome, marca, valor, peso, bivolt) values ("Microondas","Britânia", 383.05, 14.73, false);
insert into tb_produtos (nome, marca, valor, peso, bivolt) values ("Geladeira","Philco", 3457.75, 2.5, true);
insert into tb_produtos (nome, marca, valor, peso, bivolt) values ("Xbox","Microsoft", 2698.00, 2.0, true);
insert into tb_produtos (nome, marca, valor, peso, bivolt) values ("PlayStation","Sony", 3876.05, 2.1, true);
insert into tb_produtos (nome, marca, valor, peso, bivolt) values ("Televisão","Philips", 2199.00, 12.7, false);
insert into tb_produtos (nome, marca, valor, peso, bivolt) values ("Pipoqueira","Mondial", 89.00, 0.65, false);
insert into tb_produtos (nome, marca, valor, peso, bivolt) values ("Liquidificador","Britânia", 98.63, 1.8, false);
insert into tb_produtos (nome, marca, valor, peso, bivolt) values ("Batedeira","Britânia", 185.65, 3.2, false);
insert into tb_produtos (nome, marca, valor, peso, bivolt) values ("Secador","Mondial", 128.32, 0.8, false);
insert into tb_produtos (nome, marca, valor, peso, bivolt) values ("Chapinha","Taiff", 98.90, 0.7, false);
insert into tb_produtos (nome, marca, valor, peso, bivolt) values ("Ondulador","Titânio", 160.94, 2.5, true);
insert into tb_produtos (nome, marca, valor, peso, bivolt) values ("Ventilador","Philco", 256.84, 4.3, true);

select * from tb_produtos where valor >500;
select * from tb_produtos where valor <500;

select * from tb_produtos;

update tb_produtos set valor = 221.98 
	where id = 15;

select * from tb_produtos;