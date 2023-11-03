-- Criar BD
CREATE DATABASE vizualizar;

-- Usar BD
USE vizualizar;

-- Criar Tabela

CREATE TABLE Pedidos(
 Id int auto_increment primary key,
 Nome varchar (255) not null,
 Stat varchar (255) not null
);

-- Inserindo Valores
INSERT INTO Pedidos (Nome, Stat) VALUES
('Bicicleta', 'Pendente'),
('Camiseta', 'Entregue'),
('Fone de Ouvido', 'Pendente');
-- View

CREATE VIEW vw_pedidos_pendentes AS
SELECT id, Nome, Stat
FROM Pedidos
WHERE Stat = 'Pendente';

-- Select 
SELECT * FROM vw_pedidos_pendentes;


-- Apagar DB
DROP DATABASE vizualizar;

DROP TABLE Pedidos;
