/*Atividade 1

Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter
o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as
informações dos personagens desse game.
O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.*/

create database db_generation_game_online;

use db_generation_game_online;

create table tb_personagem(
id bigint auto_increment,
nome varchar (100),	
forca int not null,
jogo varchar (100),
primary key (id)
);

INSERT INTO tb_personagem(nome,forca,jogo) values ("Swat",9,"Cross Fire");
INSERT INTO tb_personagem(nome,forca,jogo) values ("Spop",7,"Cross Fire");
INSERT INTO tb_personagem(nome,forca,jogo) values ("Soldier",9,"Cross Fire");
INSERT INTO tb_personagem(nome,forca,jogo) values ("Cia",10,"Cross Fire");
INSERT INTO tb_personagem(nome,forca,jogo) values ("Sova",9,"Valorant");
INSERT INTO tb_personagem(nome,forca,jogo) values ("Spik",6,"Valorant");
INSERT INTO tb_personagem(nome,forca,jogo) values ("Valdemort",10,"Valorant");
INSERT INTO tb_personagem(nome,forca,jogo) values ("Derick",5,"Valorant");

select * from tb_personagem;

create table tb_classe(
id bigint auto_increment,
especialidade varchar (100),
tipo varchar (100),
forca decimal not null,
personagem_id bigint not null,
primary key (id),
foreign key(personagem_id) references tb_personagem (id)
);

INSERT INTO tb_classe ( especialidade,tipo,forca,personagem_id) values("Assalto","Forca Bruta",950,1);
INSERT INTO tb_classe ( especialidade,tipo,forca,personagem_id) values("Proteçao","Forca defensiva",7500,2);
INSERT INTO tb_classe ( especialidade,tipo,forca,personagem_id) values("especialista","Forca mental",1458,3);
INSERT INTO tb_classe ( especialidade,tipo,forca,personagem_id) values("Genialidade","Forca total",1500,4);
INSERT INTO tb_classe ( especialidade,tipo,forca,personagem_id) values("anti bomba","Forca anti bomba",855,5);
INSERT INTO tb_classe ( especialidade,tipo,forca,personagem_id) values("crime","Forca media",505,6);
INSERT INTO tb_classe ( especialidade,tipo,forca,personagem_id) values("fera","Forca unica",1000,7);
INSERT INTO tb_classe ( especialidade,tipo,forca,personagem_id) values("nub","Forca fraca",5550,8);


SELECT * FROM tb_classe WHERE forca BETWEEN 2000 AND 7000;

SELECT * FROM tb_classe Where forca BETWEEN 1000 AND 2000;

SELECT * FROM tb_classe Where especialidade like "%cr%";


 select * from tb_classe
 
 inner join tb_personagem on tb_personagem.id = tb_classe.tb_personagem.id;
 
 -- FIM --




