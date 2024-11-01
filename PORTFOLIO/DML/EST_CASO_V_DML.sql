USE EST_CASO_V;

#MOSTRANDO TABELA DE CLIENTES E INSERINDO VALORES
SHOW columns FROM clientes;
INSERT INTO clientes(clientes_cpf, clientes_nome, clientes_data_nasc, clientes_status_fidelidade, clientes_rua, clientes_ruanum,
clientes_bairro, clientes_referencia, clientes_cidade, clientes_estado, clientes_cep, clientes_pais)
VALUES('871.759.751-04', 'Antônia Valentina Aurora Teixeira','1977-07-16','PAGO', 'Rua Brasil Novo', '144', 'Tancredo Neves', 'Posto de Gasolina', 'Ribeirão das Neves', 'Minas Gerais', '33937-060', 'Brasil');
INSERT INTO clientes (clientes_cpf, clientes_nome, clientes_data_nasc, clientes_status_fidelidade, clientes_rua, clientes_ruanum, clientes_bairro, clientes_referencia, clientes_cidade, clientes_estado, clientes_cep, clientes_pais) 
VALUES ('23456789001', 'Maria Oliveira', '1990-06-25', 'PENDENTE', 'Avenida Brasil', 202, 'Jardim', 'Em frente à escola', 'Rio de Janeiro', 'RJ', '23456-789', 'Brasil');
INSERT INTO clientes (clientes_cpf, clientes_nome, clientes_data_nasc, clientes_status_fidelidade, clientes_rua, clientes_ruanum, clientes_bairro, clientes_referencia, clientes_cidade, clientes_estado, clientes_cep, clientes_pais) 
VALUES ('34567890123', 'Pedro Santos', '1978-09-18', 'PAGO', 'Rua das Palmeiras', 303, 'Vila Nova', 'Próximo ao hospital', 'Belo Horizonte', 'MG', '34567-890', 'Brasil');
INSERT INTO clientes (clientes_cpf, clientes_nome, clientes_data_nasc, clientes_status_fidelidade, clientes_rua, clientes_ruanum, clientes_bairro, clientes_referencia, clientes_cidade, clientes_estado, clientes_cep, clientes_pais) 
VALUES ('45678901234', 'Carla Almeida', '1988-03-14', 'PENDENTE', 'Rua das Margaridas', 404, 'Paulista', 'Ao lado do supermercado', 'Campinas', 'SP', '45678-901', 'Brasil');
INSERT INTO clientes (clientes_cpf, clientes_nome, clientes_data_nasc, clientes_status_fidelidade, clientes_rua, clientes_ruanum, clientes_bairro, clientes_referencia, clientes_cidade, clientes_estado, clientes_cep, clientes_pais) 
VALUES ('56789012345', 'Luiz Fernandes', '1992-01-30', 'PAGO', 'Rua das Rosas', 505, 'Bela Vista', 'Próximo ao mercado', 'Curitiba', 'PR', '56789-012', 'Brasil');
#
UPDATE clientes SET clientes_status_fidelidade = 'PAGO' WHERE clientes_cpf = '23456789001';
UPDATE clientes SET clientes_cidade = 'Porto Alegre' WHERE clientes_cpf = '56789012345';
DELETE FROM clientes WHERE clientes_cpf = '12345678900';


#MOSTRANDO TABELA DE VENDAS E INSERINDO VALORES
SHOW columns FROM vendas;
INSERT INTO vendas(vendas_cod, clientes_clientes_cpf) VALUES('113', '871.759.751-04');
INSERT INTO vendas (vendas_cod, clientes_clientes_cpf) VALUES (2, '34567890123');
INSERT INTO vendas (vendas_cod, clientes_clientes_cpf) VALUES (3, '45678901234');
INSERT INTO vendas (vendas_cod, clientes_clientes_cpf) VALUES (4, '56789012345');
INSERT INTO vendas (vendas_cod, clientes_clientes_cpf) VALUES (5, '23456789001');
#
UPDATE vendas SET clientes_clientes_cpf = '34567890123' WHERE vendas_cod = 1;
UPDATE vendas SET clientes_clientes_cpf = '45678901234' WHERE vendas_cod = 5;
DELETE FROM vendas WHERE vendas_cod = 3;


#MOSTRANDO TABELA DE PRODUTOS E INSERINDO VALORES
SHOW columns FROM produtos;
INSERT INTO produtos(produtos_id, produtos_nome, produtos_quant, produtos_preco) VALUES('1', 'A Produto', '100', '190.00');
INSERT INTO produtos (produtos_id, produtos_nome, produtos_quant, produtos_preco) VALUES (2, 'Produto B', 200, 30.00);
INSERT INTO produtos (produtos_id, produtos_nome, produtos_quant, produtos_preco) VALUES (3, 'Produto C', 150, 70.00);
INSERT INTO produtos (produtos_id, produtos_nome, produtos_quant, produtos_preco) VALUES (4, 'Produto D', 80, 90.00);
INSERT INTO produtos (produtos_id, produtos_nome, produtos_quant, produtos_preco) VALUES (5, 'Produto E', 60, 120.00);
#
UPDATE produtos SET produtos_quant = 90 WHERE produtos_id = 1;
UPDATE produtos SET produtos_preco = 65.00 WHERE produtos_id = 3;
DELETE FROM produtos WHERE produtos_id = 5;


#MOSTRANDO TABELA DE FORNECEDORES E INSERINDO VALORES
SHOW columns FROM fornecedores;
INSERT INTO fornecedores(fornecedores_id, fornecedores_nome, fornecedores_contato) VALUES('0', 'Fornecedor 1', 'forn1@gmailcontato.com');
INSERT INTO fornecedores (fornecedores_id, fornecedores_nome, fornecedores_contato) VALUES (1, 'Fornecedor X', 'contato@fornecedorx.com');
INSERT INTO fornecedores (fornecedores_id, fornecedores_nome, fornecedores_contato) VALUES (2, 'Fornecedor Y', 'contato@fornecedory.com');
INSERT INTO fornecedores (fornecedores_id, fornecedores_nome, fornecedores_contato) VALUES (3, 'Fornecedor Z', 'contato@fornecedorz.com');
INSERT INTO fornecedores (fornecedores_id, fornecedores_nome, fornecedores_contato) VALUES (4, 'Fornecedor W', 'contato@fornecedorw.com');
#
UPDATE fornecedores SET fornecedores_contato = 'novo_contato@fornecedory.com' WHERE fornecedores_id = 2;
UPDATE fornecedores SET fornecedores_nome = 'Fornecedor Y Atualizado' WHERE fornecedores_id = 2;
DELETE FROM fornecedores WHERE fornecedores_id = 5;

#TABELA DE PAGAMENTOS
INSERT INTO pagamentos (pag_cod, pag_data, pag_valor, pag_status, vendas_vendas_cod) VALUES (1, '2024-10-01', 150.00, 'PAGO', 1);
INSERT INTO pagamentos (pag_cod, pag_data, pag_valor, pag_status, vendas_vendas_cod) VALUES (2, '2024-10-02', 300.00, 'PENDENTE', 2);
INSERT INTO pagamentos (pag_cod, pag_data, pag_valor, pag_status, vendas_vendas_cod) VALUES (3, '2024-10-03', 200.00, 'PAGO', 3);
INSERT INTO pagamentos (pag_cod, pag_data, pag_valor, pag_status, vendas_vendas_cod) VALUES (4, '2024-10-04', 400.00, 'PENDENTE', 4);
INSERT INTO pagamentos (pag_cod, pag_data, pag_valor, pag_status, vendas_vendas_cod) VALUES (5, '2024-10-05', 250.00, 'PAGO', 5);
#
UPDATE pagamentos SET pag_status = 'PAGO' WHERE pag_cod = 2;
UPDATE pagamentos SET pag_valor = 220.00 WHERE pag_cod = 3;
DELETE FROM pagamentos WHERE pag_cod = 5;



#MOSTRANDO TABELA VENDAS DE PRODUTOS E INSERINDO VALORES
SHOW columns FROM vendas_produtos;
INSERT INTO vendas_produtos(vendas_vendas_cod, produtos_produtos_id, vnd_pdt_quant_vendida, vnd_pdt_valor_venda) VALUES('113', '0565', '95', '85.00');
INSERT INTO vendas_produtos (vendas_vendas_cod, produtos_produtos_id, vnd_pdt_quant_vendida, vnd_pdt_valor_venda) VALUES (2, 2, 3, 90.00);
INSERT INTO vendas_produtos (vendas_vendas_cod, produtos_produtos_id, vnd_pdt_quant_vendida, vnd_pdt_valor_venda) VALUES (3, 3, 1, 70.00);
INSERT INTO vendas_produtos (vendas_vendas_cod, produtos_produtos_id, vnd_pdt_quant_vendida, vnd_pdt_valor_venda) VALUES (4, 4, 4, 360.00);
INSERT INTO vendas_produtos (vendas_vendas_cod, produtos_produtos_id, vnd_pdt_quant_vendida, vnd_pdt_valor_venda) VALUES (5, 1, 5, 250.00);
#
UPDATE vendas_produtos 
SET vnd_pdt_quant_vendida = 4, vnd_pdt_valor_venda = 200.00 WHERE vendas_vendas_cod = 1 AND produtos_produtos_id = 1;
UPDATE vendas_produtos SET vnd_pdt_valor_venda = 80.00 WHERE vendas_vendas_cod = 2 AND produtos_produtos_id = 1;
DELETE FROM vendas_produtos WHERE vendas_vendas_cod = 3 AND produtos_produtos_id = 3;


#MOSTRANDO TABELA PRODUTOS E FORNECEDORES E INSERINDO VALORES
SHOW columns FROM produtos_fornecedores;
INSERT INTO produtos_fornecedores(produtos_produtosid, fornecedores_fornecedores_id)
VALUES('0565', '09129');
INSERT INTO produtos_fornecedores (produtos_produtosid, fornecedores_fornecedores_id) 
VALUES (1, 1);
INSERT INTO produtos_fornecedores (produtos_produtosid, fornecedores_fornecedores_id) 
VALUES (2, 2);
INSERT INTO produtos_fornecedores (produtos_produtosid, fornecedores_fornecedores_id) 
VALUES (3, 3);
INSERT INTO produtos_fornecedores (produtos_produtosid, fornecedores_fornecedores_id) 
VALUES (4, 4);
#
UPDATE produtos_fornecedores SET fornecedores_fornecedores_id = 3 WHERE produtos_produtosid = 1 AND fornecedores_fornecedores_id = 1;
UPDATE produtos_fornecedores SET produtos_produtosid = 2 WHERE fornecedores_fornecedores_id = 2 AND produtos_produtosid = 1;
DELETE FROM produtos_fornecedores WHERE produtos_produtosid = 4 AND fornecedores_fornecedores_id = 4;
