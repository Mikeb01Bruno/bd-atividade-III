-- Criar BD
CREATE DATABASE vizualizar;

-- Usar BD
USE vizualizar;

-- Criar Tabela

CREATE TABLE Produtos(
 Id int auto_increment primary key,
 Nome varchar (255) not null,
 Preco double not null
);

-- Inserindo Valores
INSERT INTO Produtos (Nome, Preco) VALUES
('Bicicleta', '95.00'),
('Carro', '1000.00'),
('Pneu', '340.00');
-- View

CREATE VIEW vw_produtos_caros AS
SELECT id, Nome, preco
FROM Produtos
WHERE Preco >100;

-- Select 
SELECT * FROM vw_produtos_caros;

