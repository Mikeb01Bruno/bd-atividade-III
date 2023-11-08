-- Criar BD
CREATE DATABASE demissao;

-- Usar BD
USE demissao;

-- Criar Tabela 

create table Funcionario(
Id int primary key auto_increment,
Nome varchar(255),
Salario decimal(10.2)
);

create table Demitir(
Id int primary key auto_increment,
Nome varchar(255),
Salario decimal(10.2)
);

insert into Funcionario(Nome,Salario)
values("Pedro",1800);

insert into Funcionario(Nome,Salario)
values("Bruno",2400);

DELIMITER //

CREATE TRIGGER demitir_funcionario
AFTER DELETE ON Funcionario
FOR EACH ROW
BEGIN
     INSERT INTO Demitir(Id, Nome, Salario)
     VALUES (OLD.Id, OLD.Nome, OLD.Salario);
END;

//DELIMITER ;

