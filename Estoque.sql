-- Criar BD
CREATE DATABASE vizualizar;

-- Usar BD
USE vizualizar;

-- Criar Tabela

CREATE TABLE Estoque(
 Id int auto_increment primary key,
 Nome varchar (255) not null,
 Quantidade varchar (255) not null
);

INSERT INTO Estoque (Nome, Quantidade) VALUES
('Arroz', '12'),
('Fordo de Feijão', '5'),
('Filé de Frango Congelado', '2');

-- View

CREATE VIEW vw_estoque_insuficiente AS
SELECT Id, Nome, Quantidade
FROM Estoque
WHERE Quantidade < 5;

-- Select 
SELECT * FROM vw_estoque_insuficiente;



