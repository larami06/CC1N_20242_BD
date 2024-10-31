#MOSTRANDO TABELA DE CLIENTES E INSERINDO VALORES
SHOW columns FROM clientes;
INSERT INTO clientes(clientes_cpf, clientes_nome, clientes_data_nasc, clientes_status_fidelidade, clientes_rua, clientes_ruanum,
clientes_bairro, clientes_referencia, clientes_cidade, clientes_estado, clientes_cep, clientes_pais)
VALUES('871.759.751-04', 'Antônia Valentina Aurora Teixeira','1977-07-16','PAGO', 'Rua Brasil Novo', '144', 'Tancredo Neves', 'Posto de Gasolina', 'Ribeirão das Neves', 'Minas Gerais', '33937-060', 'Brasil');

#MOSTRANDO TABELA DE VENDAS E INSERINDO VALORES
SHOW columns FROM vendas;
INSERT INTO vendas(vendas_cod, clientes_clientes_cpf)
VALUES('113', '871.759.751-04');

#MOSTRANDO TABELA DE PRODUTOS E INSERINDO VALORES
SHOW columns FROM produtos;
INSERT INTO produtos(produtos_id, produtos_nome, produtos_quant, produtos_preco)
VALUES('0565', 'Jaqueta Confort+', '100', '190.00');

#MOSTRANDO TABELA DE FORNECEDORES E INSERINDO VALORES
SHOW columns FROM fornecedores;
INSERT INTO fornecedores(fornecedores_id, fornecedores_nome, fornecedores_contato)
VALUES('09129', 'Compact', '(31)2774-6804');

#MOSTRANDO TABELA VENDAS DE PRODUTOS E INSERINDO VALORES
SHOW columns FROM vendas_produtos;
INSERT INTO vendas_produtos(vendas_vendas_cod, produtos_produtos_id, vnd_pdt_quant_vendida, vnd_pdt_valor_venda)
VALUES('113', '0565', '95', '85.00');

#MOSTRANDO TABELA PRODUTOS E FORNECEDORES E INSERINDO VALORES
SHOW columns FROM produtos_fornecedores;
INSERT INTO produtos_fornecedores(produtos_produtosid, fornecedores_fornecedores_id)
VALUES('0565', '09129');
