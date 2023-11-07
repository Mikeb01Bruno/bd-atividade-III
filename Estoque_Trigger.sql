-- Criar BD
CREATE DATABASE Logistica;

-- Usar BD
USE Logistica;

-- Criar Tabela Estoque
CREATE TABLE Estoque (
    Id int primary key auto_increment,
    NomeProduto varchar(255) not null,
    QuantidadeEstoque int not null
);

-- Inserindo Valores na tabela Estoque
INSERT INTO Estoque (NomeProduto, QuantidadeEstoque) VALUES 
("Fardo de Cuscuz", 30);

INSERT INTO Estoque (NomeProduto, QuantidadeEstoque) VALUES 
("Pacote de Arroz", 13);

-- Trigger para atualizar o estoque
DELIMITER //
CREATE TRIGGER atualizar_estoque_vendido
BEFORE INSERT ON Estoque
FOR EACH ROW
BEGIN
    SET new.QuantidadeEstoque = new.QuantidadeEstoque - 1;
END;
//

DELIMITER ;

