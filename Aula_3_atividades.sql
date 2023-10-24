SET SQL_SAFE_UPDATES = 0;

update funcionarios set Nome = "Jorge Washington" where Nome = "João Vitor Almeida";
select * from funcionarios where Nome = "Jorge Washington";

UPDATE funcionarios set nome = 'Jorge Wahington';
select * from funcionarios;
delete from funcionarios;

select*from funcionarios;

delete from funcionarios where Nome = "Monica Yates";

#almentando o salario dos professores
update funcionarios
set Salario = Salario*1.1 where Cargo = "Professor";
select * from funcionarios where Cargo = 'Professor';    

#ajustando o salario minimo

update funcionarios
set Salario = 1300 where Salario < 1300;
select * from funcionarios order by Salario asc;

#atualizando cargo do Alan

update funcionarios
set Cargo = 'Desenvolvedor Front-End' where Nome = 'Alan Robinson';
select*from funcionarios where Nome = 'Alan Robinson'; 

SELECT NOW() as 'Data e hora atual';
select curdate();
select day(now());
#idade dos funcionarios(tentar dps n consegui)
select Nome, curdate(year()) - (year(Nascimento)) from funcionarios;