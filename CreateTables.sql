CREATE TABLE Marcas (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    nacionalidade VARCHAR(60)
);

CREATE TABLE Produtos (
	ID INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    estoqueAtual INT NOT NULL DEFAULT 0,
    estoqueMinimo INT NOT NULL DEFAULT 0,
    dataFabricacao DATETIME NOT NULL DEFAULT NOW(),
    dataValidade DATETIME NOT NULL DEFAULT (NOW()+30),
    perecivel BOOLEAN,
    preco FLOAT,
    marcaID INT,
    
    FOREIGN KEY (marcaID) REFERENCES Marcas(ID)
);

CREATE TABLE Fornecedores (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    email VARCHAR(30),
    produtoID INT,
    
	FOREIGN KEY (produtoID) REFERENCES Produtos(ID)
);