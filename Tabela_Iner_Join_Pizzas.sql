	/*Atividade 2

Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco
deverá ter o seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as
informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.

siga exatamente esse passo a passo

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.

Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de
criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela pizza com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 45 reais.

Faça um select trazendo os Produtos com valor entre 29 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra C.

Faça um um select com Inner join entre tabela categoria e pizza.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são pizza doce).
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
servico1 varchar (25),
servico2 varchar (25),
servico3 varchar (25),
primary key (id)
);

INSERT INTO  tb_categoria(servico1,servico2,servico3) values ("PIZZAS GRANDRE","PIZZAS MEDIA","PIZZA PEQUENA");
INSERT INTO  tb_categoria(servico1,servico2,servico3) values ("ESFIHAS GRANDRE","ESFIHAS MEDIA ","ESFIHA PEQUENA");
INSERT INTO  tb_categoria(servico1,servico2,servico3) values ("PASTEL GRANDRE","PASTEL MEDIO","PASTEL PEQUENO");

SELECT * FROM  tb_categoria;


 create table tb_pizza(
id bigint auto_increment,
preco1 double(10,2) not null,
preco2 double(10,2) not null,
preco3 double(10,2) not null,
outrosAlimentos varchar (50),
categoria_id bigint not null,
primary key  (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_pizza ( preco1,preco2,preco3,outrosAlimentos,categoria_id) values (40.99,25.99,16.50,"Coxinha",1);

insert into tb_pizza ( preco1,preco2,preco3,outrosAlimentos,categoria_id) values (8.00,5.00,3.00,"Cone",2);

insert into tb_pizza ( preco1,preco2,preco3,outrosAlimentos,categoria_id) values (12.00,7.99,4.99,"Broto",3);
select * from tb_pizza;

SELECT * FROM tb_pizza WHERE preco1 BETWEEN 45 AND 100;
SELECT * FROM tb_pizza WHERE preco2 BETWEEN 45 AND 100;
SELECT * FROM tb_pizza WHERE preco3 BETWEEN 45 AND 100;

SELECT * FROM tb_pizza WHERE preco1 BETWEEN 28 AND 61;
SELECT * FROM tb_pizza WHERE preco2 BETWEEN 28 AND 61;
SELECT * FROM tb_pizza WHERE preco3 BETWEEN 28 AND 61;


SELECT * FROM tb_pizza Where outrosAlimentos like  "%co%";


 select * from tb_pizza

 inner join tb_pizza on tb_pizza.id = tb_categoria.tb_pizza.id;
 

 -- FIM --







