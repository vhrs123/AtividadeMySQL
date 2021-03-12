/*Atividade 3

Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco
deverá ter o seguinte nome db_farmacia_do_bem, onde o sistema trabalhará com as
informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desta farmacia.

Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço deste farmacia(não
esqueça de criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela Produto com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.

Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra D.

Faça um um select com Inner join entre tabela categoria e produto.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são cosméticos).
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(

id bigint auto_increment,
comprimidos varchar (125),
liquidos varchar (15),
pasta varchar (10),
primary key (id)
);

insert into tb_categoria ( comprimidos,liquidos,pasta) values ( "amoxilina","dipirona","ads");
insert into tb_categoria ( comprimidos,liquidos,pasta) values ("diclofenato","xarope","valda");
insert into tb_categoria ( comprimidos,liquidos,pasta) values ("nelsadina", "ibuprofeno", "AS");
insert into tb_categoria ( comprimidos,liquidos,pasta) values ("advil","novalgina","tylenol");

select * from tb_categoria;



create table tb_produtos(tb_categoria
id bigint auto_increment,
pcomprimidos double(10,2) not null,
pliquidos double(10,2) not null,
ppasta double(10,2) not null,
categoria_id bigint not null,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);



insert into tb_produtos(pcomprimidos,pliquidos,ppasta,categoria_id) values (10.50,50.50,20.00,1);
insert into tb_produtos(pcomprimidos,pliquidos,ppasta,categoria_id) values (54.00,50.52,40.00,2);
insert into tb_produtos(pcomprimidos,pliquidos,ppasta,categoria_id) values (19.99,25.45,21.25,3);
insert into tb_produtos(pcomprimidos,pliquidos,ppasta,categoria_id) values (25.59,34.55,65.99,4);

select * from tb_produtos;

select * from tb_produtos where pcomprimidos between 50 and 200;
select * from tb_produtos where pliquidos between 50 and 200;
select * from tb_produtos where ppasta between 50 and 200;

select * from tb_produtos where pcomprimidos >3;
select * from tb_produtos where pliquidos >3;
select * from tb_produtos where ppasta >3;

select * from tb_produtos where ppasta<3;

select * from tb_categoria where comprimidos like "%di%";

select * from tb_produtos

inner join tb_categoria on tb_categoria.id = tb_produtos.tb_categoria.id;







