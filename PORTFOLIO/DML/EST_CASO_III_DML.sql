
#ALTERANDO EST_CASO_III
CREATE DATABASE EST_CASO_III;

#ALTERANDO TABELA DE CLIENTES
ALTER TABLE clientes COMMENT = 'Tabela de informações dos clientes';
ALTER TABLE clientes ADD cli_datanasc date not null;
ALTER TABLE clientes DROP COLUMN data_cadastro;
ALTER TABLE clientes MODIFY COLUMN razaosocial_cli varchar(50) not null;
ALTER TABLE clientes CHANGE COLUMN ramo_ativ_cli ramo_atividade_cli varchar(45);


#ALTERANDO TABELA DE EMPREGADOS
ALTER TABLE empregados COMMENT = 'Tabela de informações dos empregados';
ALTER TABLE empregados ADD sobrenome_empg date not null;
ALTER TABLE empregados DROP COLUMN qualifi_empg;
ALTER TABLE empregados MODIFY COLUMN razaosocial_cli varchar(15) not null;
ALTER TABLE empregados CHANGE COLUMN data_adm_empg data_admis_empg varchar(45);


#ALTERANDO TABELA DE EMPRESAS
ALTER TABLE empresas COMMENT = 'Tabela de informações das empresas';
ALTER TABLE empresas ADD descricao_empsa text not null;
ALTER TABLE empresas DROP COLUMN end_empsa;
ALTER TABLE empresas MODIFY COLUMN razaosocial_empsa varchar(15) not null;
ALTER TABLE empresas CHANGE COLUMN pessoacontat_empsa pessoacontato_empsa varchar(45) not null;


#ALTERANDO TABELA DE FORNECEDORES
ALTER TABLE fornecedores COMMENT = 'Tabela de informações dos fornecedores';
ALTER TABLE fornecedores ADD descricao_forn text not null;
ALTER TABLE fornecedores MODIFY COLUMN pessoacontat_forn varchar(40) not null;
ALTER TABLE fornecedores DROP COLUMN cnpj_forn;
ALTER TABLE fornecedores CHANGE COLUMN tel_forn telefone_forn varchar(12) not null;

#ALTERANDO TABELA DE ENCOMENDAS
ALTER TABLE encomenda COMMENT = 'Tabela de informações de encomenda';
ALTER TABLE encomenda ADD data_fabr_enco date not null;
ALTER TABLE encomenda DROP COLUMN valor_liqui;
ALTER TABLE encomenda MODIFY COLUMN data_inclu datetime not null;
ALTER TABLE encomenda CHANGE COLUMN forma_pag forma_pagamento ENUM('Cartão de Crédito', 'Boleto', 'Transferência Bancária', 'PIX');


# ALTERANDO TABELA DE TIPO DE COMPONENTES
ALTER TABLE tipo_componente COMMENT = 'Tabela de tipo de componente';

#ALTERANDO TABELA DE PRODUTOS
ALTER TABLE produtos COMMENT = 'Tabela de informações de produtos';
ALTER TABLE encomenda DROP COLUMN desenho_prod;
ALTER TABLE encomenda MODIFY COLUMN cor_prod VARCHAR(35) not null;


#ALTERANDO TABELA DE COMPONENTES
ALTER TABLE produtos COMMENT = 'Tabela de informações de componentes';

#ALTERANDO TABELA DE MAQUINAS
ALTER TABLE produtos COMMENT = 'Tabela de informações de maquinas';

drop schema EST_CASO_III;