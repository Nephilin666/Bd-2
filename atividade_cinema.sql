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