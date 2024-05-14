-- VIEW MOSTRANDO TODOS OS PRODUTOS E SUAS MARCAS --
CREATE OR REPLACE VIEW View_Produto_Marca AS
    SELECT 
        Produtos.nome AS Produto, Marcas.nome AS Marca
    FROM
        Produtos
            LEFT JOIN
        Marcas ON Produtos.marcaID = Marcas.ID;
;

SELECT * FROM View_Produto_Marca;

-- VIEW MOSTRANDO TODOS OS PRODUTOS E SEUS FORNECEDORES --
CREATE OR REPLACE VIEW View_Produto_Fornecedor AS
    SELECT DISTINCT
        Produtos.nome AS Produto,
        Fornecedores.nome AS Fornecedor
    FROM
        Produtos
            LEFT JOIN
        Fornecedores ON Produtos.ID = Fornecedores.produtoID
; 

SELECT * FROM View_Produto_Fornecedor;

-- VIEW MOSTRNDO TODOS OS PRODUTOS E SEUS FORNECEDORES E MARCAS --
CREATE OR REPLACE VIEW View_Produto_Fornecedor_Marca AS
    SELECT DISTINCT
        Produtos.nome AS Produto,
        Marcas.nome AS Marca,
        Fornecedores.nome AS Fornecedor
    FROM
        Produtos
            LEFT JOIN
        Marcas ON Produtos.marcaID = Marcas.ID
            LEFT JOIN
        Fornecedores ON Produtos.ID = Fornecedores.produtoID
;

SELECT * FROM View_Produto_Fornecedor_Marca;

-- CRIE UMA VIEW QUE MOSTRA TODOS OS PRODUTOS COM ESTOQUE ABAIXO DO MÍNIMO --
CREATE OR REPLACE VIEW View_produtoAbaixoDoMinimo AS
    SELECT 
        Produtos.nome AS Produto,
        Produtos.estoqueAtual AS EstoqueAtual,
        Produtos.estoqueMinimo AS EstoqueMínimo
    FROM
        Produtos
    WHERE
        Produtos.estoqueAtual < Produtos.estoqueMinimo
; 

SELECT * FROM View_produtoAbaixoDoMinimo;

-- CRIE UMA VIEW QUE MOSTRA TODOS OS PRODUTOS E SUAS RESPECTIVAS MARCAS COM VALIDADE VENCIDA --
CREATE OR REPLACE VIEW View_Produto_Marca_Vencido AS
    SELECT 
        Produtos.nome AS Produto,
        Marcas.nome AS Marca,
        Produtos.dataValidade AS DataDeValidade,
        NOW() AS Hoje
    FROM
        Produtos
            INNER JOIN
        Marcas ON Produtos.marcaID = Marcas.ID
    WHERE
        Produtos.dataValidade < NOW()
; 

SELECT * FROM View_Produto_Marca_Vencido;

-- SELECIONAR OS PRODUTOS COM PREÇO ACIMA DA MÉDIA
CREATE OR REPLACE VIEW View_ProdutoPrecoAcimaMedia AS
    SELECT 
        Produtos.nome AS Produto,
        Produtos.preco AS Preço,
        (SELECT AVG(Produtos.preco) FROM Produtos) AS Média
    FROM
        Produtos
    WHERE
        Produtos.preco > (SELECT AVG(Produtos.preco) FROM Produtos)
; 

SELECT * FROM View_ProdutoPrecoAcimaMedia;