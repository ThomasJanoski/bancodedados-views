CALL novaMarca('Tecnolite', 'Brasileira');
CALL novaMarca('BlueOcean', 'Americana');
CALL novaMarca('MapleLeafTech', 'Canadense');
CALL novaMarca('LionRoar', 'Britânica');
CALL novaMarca('AutoBahn', 'Alemã');
CALL novaMarca('EiffelInnovations', 'Francesa');
CALL novaMarca('VesuvioTech', 'Italiana');
CALL novaMarca('SakuraAI', 'Japonesa');
CALL novaMarca('DragonDynamics', 'Chinesa');
CALL novaMarca('KoalaKode', 'Australiana');


CALL novoProduto('TechGadget', NULL, NULL, NULL, NULL, FALSE, 100.00, 1);
CALL novoProduto('OceanWave', 50, 10, '2024-01-01', '2025-01-01', TRUE, 200.00, 2);
CALL novoProduto('LeafyGreen', 100, 20, '2024-02-01', '2025-02-01', FALSE, 300.00, 3);
CALL novoProduto('RoaringLion', 150, 30, '2024-03-01', '2025-03-01', TRUE, 400.00, 4);
CALL novoProduto('Speedster', 200, 40, '2024-04-01', '2025-04-01', FALSE, 500.00, 5);
CALL novoProduto('EiffelTower', 250, 50, '2024-05-01', '2025-05-01', TRUE, 600.00, 6);
CALL novoProduto('VesuvioVolcano', 300, 60, '2024-06-01', '2025-06-01', FALSE, 700.00, 7);
CALL novoProduto('SakuraBlossom', 350, 70, '2024-07-01', '2025-07-01', TRUE, 800.00, 8);
CALL novoProduto('DragonFire', 400, 80, '2024-08-01', '2025-08-01', FALSE, 900.00, 9);
CALL novoProduto('KoalaCuddly', 450, 90, '2024-09-01', '2025-09-01', TRUE, 1000.00, 10);

CALL novoFornecedor('FornecedorTech', 'contato@fornecedortech.com', 1);
CALL novoFornecedor('FornecedorOcean', 'contato@fornecedorocean.com', 2);
CALL novoFornecedor('FornecedorLeaf', 'contato@fornecedorleaf.com', 3);
CALL novoFornecedor('FornecedorLion', 'contato@fornecedorlion.com', 4);
CALL novoFornecedor('FornecedorAuto', 'contato@fornecedorauto.com', 5);
CALL novoFornecedor('FornecedorEiffel', 'contato@fornecedoreiffel.com', 6);
CALL novoFornecedor('FornecedorVesuvio', 'contato@fornecedorvesuvio.com', 7);
CALL novoFornecedor('FornecedorSakura', 'contato@fornecedorsakura.com', 8);
CALL novoFornecedor('FornecedorDragon', 'contato@fornecedordragon.com', 9);
CALL novoFornecedor('FornecedorKoala', 'contato@fornecedorkoala.com', 10);

SELECT * FROM Marcas;
SELECT * FROM Fornecedores;
SELECT * FROM Produtos;

SET @MarcaID = (SELECT ID FROM Marcas WHERE Nome = "KoalaKode");
SELECT @MarcaID as "";