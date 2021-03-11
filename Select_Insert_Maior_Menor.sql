/*Atividade 2
Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce.
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

CREATE database bd_ecommerce;

use bd_ecommerce;

create table tb_produtos(
id bigint auto_increment,
produto varchar(20),
preço  float not null,
categoria varchar(20),
marca varchar (20),
cor varchar(20),
primary key (id)
);
insert into tb_produtos(produto,preço,categoria,marca,cor) values ("Tenis",499.99,"calcados","nikke","preto");
insert into tb_produtos(produto,preço,categoria,marca,cor) values ("oculos",500.00,"pessoal","aolkey","prata");
insert into tb_produtos(produto,preço,categoria,marca,cor) values ("bone",200.00,"vestimenta","aolkey","branco");
insert into tb_produtos(produto,preço,categoria,marca,cor) values ("camisa",100.00,"vestimenta","adidas","verde");
insert into tb_produtos(produto,preço,categoria,marca,cor) values ("calca",50.00,"vestimenta","c&a","azul");
insert into tb_produtos(produto,preço,categoria,marca,cor) values ("garrafa",20.20,"acessorios","esquina","roxo");
insert into tb_produtos(produto,preço,categoria,marca,cor) values ("jaqueta",400.00,"vestimenta","puma","vermelho");
insert into tb_produtos(produto,preço,categoria,marca,cor) values (" pc",1500.0,"eletronico","sony","marrom");

select * from tb_produtos where preço > 500;
select * from tb_produtos where preço < 500;

update tb_produtos set tb_produtos.cor="Esmeralda" where id =2;
select * from tb_produtos;



