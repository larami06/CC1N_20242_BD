# CRIANDO O SCHEMA ESTUDO DE CASO 5
create schema EST_CASO_V;

use EST_CASO_V;

# CRIANDO A TABELA CLIENTES
create table if not exists clientes(
clientes_cpf varchar(14) primary key,
clientes_nome varchar(50) not null,
clientes_data_nasc date not null,
clientes_status_fidelidade enum('PAGO','PENDENTE'), # CONTROLANDO SEU STATUS DE PROGRAMA DE FIDELIDADE
clientes_rua varchar(45) not null,
clientes_ruanum int not null,
clientes_bairro varchar(45) not null,
clientes_referencia text not null,
clientes_cidade varchar(45) not null,
clientes_estado varchar(45) not null,
clientes_cep varchar(10) not null,
clientes_pais varchar(45) not null
);

# CRIANDO A TABELA VENDAS
create table if not exists vendas(
vendas_cod int primary key,
clientes_clientes_cpf varchar(14),   # ASSOCIANDO A VENDA COM O CLIENTE
constraint FK_CLIENTESCPF FOREIGN KEY (clientes_clientes_cpf)
references clientes(clientes_cpf)
);

# CRIANDO A TABELA
create table if not exists produtos(
produtos_id int primary key,
produtos_nome varchar(45) not null,
produtos_quant int not null,     # CONTROLANDO O ESTOQUE
produtos_preco decimal(10,2) not null
);

# CRIANDO A TABELA
create table if not exists fornecedores(
fornecedores_id int primary key,
fornecedores_nome varchar(45) not null,
fornecedores_contato text not null
);

# CRIANDO A TABELA
create table if not exists pagamentos(
pag_cod int primary key,
pag_data date not null,
pag_valor decimal(10,2),
pag_status enum('PAGO','PENDENTE'),
vendas_vendas_cod int not null,
constraint FK_VENDAS_COD FOREIGN KEY(vendas_vendas_cod)  # ASSOCIANDO E REGISTRANDO O PAGAMENTO COM CADA VENDA
references vendas(vendas_cod)
);

# ----- ENTIDADES ASSOCIATIVAS  ----- #

# CRIANDO A TABELA
create table if not exists vendas_produtos(   #ASSOCIANDO A VENDA REGISTRADA COM OS PRODUTOS COMPRADOS
vendas_vendas_cod int,
produtos_produtos_id int,
vnd_pdt_quant_vendida int not null,
vnd_pdt_valor_venda decimal(10,2),
constraint FK_VENDASCOD FOREIGN KEY(vendas_vendas_cod)  
references vendas(vendas_cod),
constraint FK_PRODUTOSID FOREIGN KEY(produtos_produtos_id)
references produtos(produtos_id)
);

# CRIANDO A TABELA
create table if not exists produtos_fornecedores(   # ASSOCIANDO OS FORNECEDORES COM CADA PRODUTO FORNECIDO
produtos_produtosid int,
fornecedores_fornecedores_id int,
constraint FK_PRODUTOS_PROD_ID FOREIGN KEY(produtos_produtosid)
references produtos(produtos_id),
constraint FK_FORNCEDORESID FOREIGN KEY(fornecedores_fornecedores_id)
references fornecedores(fornecedores_id)
);

DROP SCHEMA EST_CASO_V;

#-----

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
