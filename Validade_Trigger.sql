-- Criar BD
CREATE DATABASE validade;

-- Usar BD
USE validade;

-- Criar Tabela
CREATE TABLE Produto (
    Id int primary key auto_increment,
    Nome varchar(255) not null,
    Validade date not null
);

-- Insert com aspas simples
INSERT INTO Produto (Nome, Validade)
VALUES ('Peito de Frango', '2023-11-01');

INSERT INTO Produto (Nome, Validade)
VALUES ('Carne Moida', '2023-12-30');


-- Criar Trigger | Delimiter
DELIMITER //

CREATE TRIGGER validar_data_validade
BEFORE INSERT ON Produto
FOR EACH ROW
BEGIN

    IF NEW.Validade < '2023-10-30' THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Data de validade inválida';
    END IF;
END
//
DELIMITER ;



select * from Produto;

DROP DATABASE validade;