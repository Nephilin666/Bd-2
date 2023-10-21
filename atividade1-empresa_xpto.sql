#cirando banco de dados
create database empresa_xpto;
# ativando banco de dados
use empresa_xpto;
# criando tabela
create table funcionarios(
	Nome varchar(60),
    CPF char(12),
    Cargo varchar(60),
    Salario float,
    Nascimento date
);
# inserindo dados

insert into funcionarios(Nome, CPF, Cargo, Salario, Nascimento)
value('João Vitor Almeida', '111111111-11', 'TI', 2000.00, '1998-09-04'),
('Paulo Vitor Araújo', '222222222-22', 'Recursos Humanos', 3000.00, '1999-03-12');

select * from funcionarios;
describe funcionarios;
# Consultando as colunas Nome e Nascimento de uma tabela

select Nome, Nascimento from funcionarios; 

#consultando colunas nome , carco e salario

select Nome, Cargo, Salario from funcionarios;

# Consultando as colunas salario e cargo

select Salario, Cargo from funcionarios;

#consulta de todas as colunas que são Arquiteto de Software

select * from funcionarios where cargo = "Arquiteto de Software";
# *** gerente de projetos
select Nome, Cargo, Salario from funcionarios where Cargo = "Gerente de projetos";

#** cargo e salario professor

select Salario, Cargo from funcionarios where cargo = "Professor";

#nome cargo e salario acima de 10000

select Nome, Cargo, Salario from funcionarios where Salario > 10000;

#consulta do nome de que recebe menos de que um salario minimo

select Nome from funcionarios where Salario < 1302;

#consulta cargos onde o salario é maior ou igual a 28000

select Cargo from funcionarios where Salario >= 28000;

# procurando um funcionario

select * from funcionarios where Nome = "Monica Yates";

# procurando no sistema salario de determinado funcionario

select Cargo, Salario from funcionarios where Nome ="Jennifer Gardner";

# data de nascimento de determinado funcionario

select Nascimento from funcionarios where Nome = "Russell Cole";

# encontrando funcionario atraves do cpf

select Nome, Cargo from funcionarios where CPF = "84716339531";

#Criando apelidos

select
Nome as 'Nome Completo',
Salario as 'Salário',
Nascimento as 'Data de Nascimento'
from funcionarios;

# retonando nome completo, salario e data de nascimento dos funcionarios de nasceram de 1998 em diante

select
Nome as 'Nome Completo',
Salario as 'Salário',
Nascimento as 'Data de Nascimento'
from funcionarios
where Nascimento > '1998-01-01';

#ordenação 

select
Nome as 'Nome Completo',
Salario as 'Salário'
from funcionarios
order by Salario ASC;

#funcionarios em ordem alfabética 
select * from funcionarios order by Nome asc;

#ordenação por salarios 

select
Nome as 'Nome Completo',
Salario as 'Salário',
Cargo as 'Cargo'
from funcionarios
order by Salario asc;

#ordenação por idade

select
Nome as 'Nome Completo',
Salario as 'Salário'
from funcionarios
order by Nascimento asc;

#consultando os maiores salarios

select
Nome as 'Nome Completo',
Cargo as 'Cargo'
from funcionarios 
order by Salario desc
limit 5;

# funcionario mais velho

select
Nome as 'Nome Completo'
from funcionarios
order by Nascimento asc
limit 1;

#menores salarios

select
Salario as 'Salário'
from funcionarios
order by Salario asc
limit 10;

#desafio 1

select
Nome as 'Nome Completo',
Salario as 'Salário',
Cargo
from funcionarios
where Cargo = "Professor"
order by Nome asc;

#desafio2

select
Nome as 'Nome Completo',
Salario as 'Salário',
Cargo
from funcionarios
where Cargo = 'Médico'
order by Salario desc
limit 5;

#desafio3

select
Nome as 'Nome Completo',
CPF
from funcionarios
where Cargo = 'Recepcionista'
order by Salario asc
limit 1;