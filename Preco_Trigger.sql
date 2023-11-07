-- Criar BD
CREATE DATABASE validade;

-- Usar BD
USE validade;

-- Criar Tabela
CREATE TABLE Produtos(
    Id int primary key auto_increment,
    NomeProduto varchar(255) not null,
    Preco decimal (10,2) not null
);

-- Inserindo Valores
INSERT INTO Produtos (nomeProduto, Preco) VALUES 
("Margarina", 50.00);

INSERT INTO Produtos (nomeProduto, Preco) VALUES 
("Arroz", 90.00);
       
-- Trigger
DELIMITER //

CREATE TRIGGER aumenta_precos
BEFORE UPDATE ON Produtos
FOR EACH ROW
BEGIN
    SET new.Preco = new.Preco * 1.1;
END;
//

DELIMITER ;

select * from aumenta_precos;

-- Apagar BD
DROP DATABASE validade;