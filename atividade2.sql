create database cine_senai_max;
use cine_senai_max;
drop table filmes;
create table filmes(
id_filme int,
titulo varchar(60),
genero varchar(45),
duracao int,
ano_lancamento int,
preco_aluguel double,
primary key(id_filme)
);

insert into filmes(id_filme, titulo, genero, duracao, ano_lancamento, preco_aluguel)
value(1, 'Tropa de Elite', 'Ação', 115, 2007, 5.99);
select*from filmes;
#localizando filme com id 6
select titulo , genero from filmes
where id_filme = 6;

#localizando filme com id 33
select titulo , ano_lancamento from filmes
where id_filme = 33;

#localizando e excluindo id 73 da tabela
select*from filmes
where id_filme = 73;
delete from filmes
where id_filme = 73;

#alterando genero do filme rio2 
select*from filmes
where titulo = 'Rio 2';
update  filmes
set genero = 'Animação' where id_filme = 71;

#almentando a lucratividade em 10% do filme Tropa de Elite

select*from filmes
where id_filme = 1;
update filmes
set preco_aluguel = preco_aluguel * 1.1
where id_filme = 1;