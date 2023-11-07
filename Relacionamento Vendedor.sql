-- Criar BD
CREATE DATABASE vizualizar;

-- Usar BD
USE vizualizar;

-- Criar Tabela
CREATE TABLE Clientes(
Id int primary key auto_increment,
IdVendedor int,
Nome varchar(255) not null,
DataNascimento date not null,
Telefone varchar(22) not null,
foreign key (IdVendedor) references Vendedor(Id)
);

CREATE TABLE Vendedor(
Id int primary key auto_increment,
Nome varchar(255) not null,
Produto varchar(255)
);

-- Inserindo valores nos Clientes

insert into Clientes(IdVendedor, Nome,DataNascimento,Telefone)
Values(1,"Bruno","2003-01-01","(71) 94321-9932");

insert into Clientes(IdVendedor, Nome,DataNascimento,Telefone)
 Values(2,"Igor","1999-09-11","(63) 94823-2231");
 
insert into Clientes(IdVendedor, Nome,DataNascimento,Telefone)
Values(3,"Jucelino","1980-01-22","(11) 97772-6200");

-- Inserindo valores no Vendedor

insert into Vendedor(Nome,Produto)
 Values("Mariano","Camiseta de Time");
 
 insert into Vendedor(Nome,Produto)
 Values("Fernando","Short Moletom");
 
 insert into Vendedor(Nome,Produto)
 Values("Vitor","Perfumes");
 
 -- Criar View
 
 Create view vw_relacionamento_cliente_vendedor as
 select 
 C.Nome AS "Nome dos Clientes",
 C.DataNascimento as "Data de Nascimento dos Clientes",
 C.Telefone as "Telefone dos Clientes",
 V.Nome as "Nome do Vendedores",
 V.Produto as "Produto do Vendedors"
 From Vendedor V
 inner join Clientes C 
 on V.Id = C.IdVendedor;

-- Vizualizar View

select * from vw_relacionamento_cliente_vendedor;




