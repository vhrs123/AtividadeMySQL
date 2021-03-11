/*Atividade 3
Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
informações dos alunos deste registro dessa escola.
Crie uma tabela alunos/a e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos alunos/a para se trabalhar com o serviço dessa escola.
Popule esta tabela com até 8 dados;
Faça um select que retorne o/as alunos/a com a nota maior do que 7.
Faça um select que retorne o/as alunos/a com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/
create database bd_escola;

use bd_escola;
create table tb_alunos(
id bigint auto_increment,
nome varchar(10),
apelido varchar(10),
idade int not null,
turma varchar(10),
escola varchar(20),
nota decimal not null,
primary key (id)
);

INSERT INTO tb_alunos(nome,apelido,idade,turma,escola,nota) values("Ana","aninha","18","3-F","Estadual","10");
INSERT INTO tb_alunos(nome,apelido,idade,turma,escola,nota) values("David","DD", "17", "2-F","Municipal","5");
INSERT INTO tb_alunos(nome,apelido,idade,turma,escola,nota) values("luiz","lulu", "20", "2-F","Municipal","8");
INSERT INTO tb_alunos(nome,apelido,idade,turma,escola,nota) values("Andressa","an","17","2-F","Particular","10");
INSERT INTO tb_alunos(nome,apelido,idade,turma,escola,nota) values("paula","paulinhs","18","3-H","Estadual","3");
INSERT INTO tb_alunos(nome,apelido,idade,turma,escola,nota) values("paulo","aph","18","3-S","Particular","8");
INSERT INTO tb_alunos(nome,apelido,idade,turma,escola,nota) values("vitor","vh","14","8-G","municipal","9");
INSERT INTO tb_alunos(nome,apelido,idade,turma,escola,nota) values("gabriela","gabi","18","3-F","Estadual","6");
INSERT INTO tb_alunos(nome,apelido,idade,turma,escola,nota) values("dale","dada","18","3-F","Estadual","10");
INSERT INTO tb_alunos(nome,apelido,idade,turma,escola,nota) values("carol","coca","18","3-F","particular","8");

select * from tb_alunos where nota >7;
select * from tb_alunos where nota <7;

select * from tb_alunos;

