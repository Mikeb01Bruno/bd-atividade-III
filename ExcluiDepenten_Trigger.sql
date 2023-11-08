-- Criar BD
CREATE DATABASE ExcluiDepen;

-- Usar BD
USE ExcluiDepen;

-- Criar Tabela 

create table Funcionario(
Id int primary key auto_increment,
Nome varchar(255),
Salario decimal(10.2)
);

create table Dependentes(
Id int primary key auto_increment,
Nome varchar(255),
IdFuncionario int,
foreign key (IdFuncionario) references Funcionario (Id)
);

-- Inserindo valores Funcionário

insert into Funcionario(Nome,Salario)
values("Pedro",1800);

insert into Funcionario(Nome,Salario)
values("Bruno",2400);

-- Inserindo valores Dependentes

insert into Dependentes(Nome,IdFuncionario)
values("Ferraz",2);

insert into Dependentes(Nome,IDFuncionario)
values("Pereira",1);

-- Select Dependentes

select * from Dependentes;


DELIMITER //

CREATE TRIGGER Excluir_Dependentes
AFTER DELETE ON Funcionario
FOR EACH ROW
BEGIN
    DELETE FROM Dependentes WHERE IdFuncionario = OLD.Id;
END;
//
DELIMITER ;

drop database CxcluirDepen;