
# ALTERANDO TABELA DE CLIENTES
ALTER TABLE clientes COMMENT = 'Tabela de informações de clientes';
ALTER TABLE clientes ADD clientes_pessoacontato varchar(40) not null;
ALTER TABLE clientes MODIFY COLUMN clientes_rua varchar(50) not null;
ALTER TABLE clientes CHANGE COLUMN clientes_ruanum clientes_num_rua int not null;
ALTER TABLE clientes DROP COLUMN clientes_data_nasc;


# ALTERANDO TABELA DE VENDAS
ALTER TABLE vendas COMMENT = 'Tabela de informações de vendas';
ALTER TABLE vendas ADD venda_data date not null;
ALTER TABLE vendas DROP COLUMN vendas_cod;

# ALTERANDO TABELA DE PRODUTOS
ALTER TABLE produtos COMMENT = 'Tabela de informações de produtos';
ALTER TABLE produtos ADD produtos_desc text not null;
ALTER TABLE produtos MODIFY COLUMN produtos_nome varchar(50) not null;
ALTER TABLE produtos CHANGE COLUMN produtos_quant produtos_quantidade int not null;
ALTER TABLE produtos DROP COLUMN produtos_preco;


# ALTERANDO TABELA DE FORNECEDORES
ALTER TABLE fornecedores COMMENT = 'Tabela de informações de fornecedores';
ALTER TABLE fornecedores ADD fornecedores_cep varchar(14) not null;
ALTER TABLE fornecedores MODIFY COLUMN fornecedores_nome varchar(30) not null;
ALTER TABLE fornecedores DROP COLUMN fornecedores_contato;


# ALTERANDO TABELA DE PAGAMENTOS
ALTER TABLE pagamentos COMMENT = 'Tabela de informações de pagamentos';
ALTER TABLE pagamentos MODIFY COLUMN pag_data datetime not null;
ALTER TABLE pagamentos DROP COLUMN pag_cod;



# ALTERANDO TABELA DE VENDAS DE PRODUTOS
ALTER TABLE produtos COMMENT = 'Tabela de informações de vendas de produtos';
ALTER TABLE produtos CHANGE COLUMN vnd_pdt_quant_vendida venda_prdto_quanti_vendida int not null;
ALTER TABLE produtos DROP COLUMN produtos_produtos_id;


DROP SCHEMA EST_CASO_V;
