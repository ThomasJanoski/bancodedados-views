DELIMITER $

CREATE PROCEDURE novaMarca(nome VARCHAR(60), nacionalidade VARCHAR(60))
BEGIN
	INSERT INTO Marcas (nome, nacionalidade) VALUES(nome, nacionalidade);
END$

DELIMITER ;

DELIMITER $

CREATE PROCEDURE novoProduto(nome VARCHAR(50), estoqueAtual INT, estoqueMinimo INT, dataFabricacao DATETIME, dataValidade DATETIME, perecivel BOOLEAN, preco FLOAT, marcaID INT)
BEGIN
	SET @_estoqueAtual = (SELECT IFNULL(estoqueAtual, 0));
    SET @_estoqueMinimo = (SELECT IFNULL(estoqueMinimo, 0));
    SET @_dataFabricacao = (SELECT IFNULL(dataFabricacao, NOW()));
    SET @_dataValidade = (SELECT IFNULL(dataValidade, DATE_ADD(NOW(), INTERVAL 30 DAY)));

	INSERT INTO Produtos (nome, estoqueAtual, estoqueMinimo, dataFabricacao, dataValidade, perecivel, preco, marcaID) 
    VALUES (nome, @_estoqueAtual, @_estoqueMinimo, @_dataFabricacao, @_dataValidade, perecivel, preco, marcaID);
END$

DELIMITER ;

DELIMITER $

CREATE PROCEDURE novoFornecedor(nome VARCHAR(60), email VARCHAR(30), produtoID INT)
BEGIN
	INSERT INTO Fornecedores (nome, email, produtoID) VALUES(nome, email, produtoID);
END$

DELIMITER ;