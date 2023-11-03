-- Criar BD
CREATE DATABASE vizualizar;

-- Usar BD
USE vizualizar;

-- Criar Tabela

CREATE TABLE Funcionarios(
 Id int auto_increment primary key,
 Nome varchar (255) not null,
 Cargo varchar (255) not null
);

INSERT INTO Funcionarios (Nome, Cargo) VALUES
('João', 'Operações'),
('Maria', 'Administrativo'),
('José', 'Administrativo');

-- View

CREATE VIEW vw_funcionarios_departamento AS
SELECT Id, Nome, Cargo
FROM Funcionarios
WHERE Cargo = 'Administrativo';

-- Select 
SELECT * FROM vw_funcionarios_departamento;
