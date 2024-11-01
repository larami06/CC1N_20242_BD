USE EST_CASO_III;

# MOSTRANDO A TABELA TIPO DE ENDEREÇO E INSERINDO DADOS
SHOW COLUMNS FROM tipo_endereco;
INSERT INTO tipo_endereco(codtipo_end, nome_tipoend)
VALUES('2', 'Casa');
#
UPDATE tipo_endereco SET nome_tipoend = 'Residencial' WHERE codtipo_end = 1;
UPDATE tipo_endereco SET nome_tipoend = 'Comercial' WHERE codtipo_end = 2;
#
DELETE FROM tipo_endereco WHERE codtipo_end = 3;


# MOSTRANDO A TABELA ENDEREÇOS E INSERINDO DADOS
SHOW COLUMNS FROM enderecos;
INSERT INTO enderecos(id_endereco, cep, logradouro, cidade, bairro, complemeto, numero, uf, tipo_end)
VALUES('90', '28100823', 'Rua Vale Sereno', 'Nova Esperança', 'Montes Claros', 'Casa', '237', '25', '2' );
#
UPDATE enderecos SET cep = '12345-678', cidade = 'Nova Cidade' WHERE id_endereco = 1;
UPDATE enderecos SET numero = 42, bairro = 'Centro' WHERE id_endereco = 2;
#
DELETE FROM enderecos WHERE id_endereco = 3;


# MOSTRANDO A TABELA RECURSOS ESPECIFICOS E INSERINDO DADOS
SHOW COLUMNS FROM recursos_espec;
INSERT INTO recursos_espec(id_re, quantnecess_re, uni_re, tempouso_re, horasmdo_re)
VALUES('242', '15','Metais', '05:30:02','08:50:00');
#
UPDATE recursos_espec SET quantnecess_re = 10, uni_re = 'kg' WHERE id_re = 1;
UPDATE recursos_espec SET horasmdo_re = '02:00:00' WHERE id_re = 2;
#
DELETE FROM recursos_espec WHERE id_re = 3;


# MOSTRANDO A TABELA REGISTRO DE SUPRIMENTOS E INSERINDO DADOS
SHOW COLUMNS FROM regist_supri;
INSERT INTO regist_supri(id_rs, data_rs, descricao_rs)
VALUES('95', '2021-06-12','Materiais Disponíveis');
#
UPDATE regist_supri SET data_rs = '2024-12-01' WHERE id_rs = 1;
UPDATE regist_supri SET descricao_rs = 'Suprimento Atualizado' WHERE id_rs = 2;
#
DELETE FROM regist_supri WHERE id_rs = 3


# MOSTRANDO A TABELA REGISTRO DE MANUNTENÇÃO E INSERINDO DADOS
SHOW COLUMNS FROM regist_manuntencao;
INSERT INTO regist_manuntencao(id_manun, data_manunt, desc_manunt)
VALUES('64', '2023-03-01','Máquina reparada devidamente');
#
UPDATE regist_manuntencao SET data_manunt = '2024-11-01' WHERE id_manun = 1;
UPDATE regist_manuntencao SET desc_manunt = 'Manutenção Geral' WHERE id_manun = 2;
#
DELETE FROM regist_manuntencao WHERE id_manun = 3;


# MOSTRANDO A TABELA CLIENTES E INSERINDO DADOS
SHOW COLUMNS FROM clientes;
INSERT INTO clientes(cod_cli, cnpj_cli, razaosocial_cli, ramo_ativ_cli, data_cadastro, tel_cli, pessoacontat_cli, end_cli)
VALUES('130', '20634700000145', 'Rafael Publicidade e Propaganda ME', 'Publicidade e Propaganda', '2013-05-10', '(14)25637544', 'Rafael Claúdio', '90');
#
UPDATE clientes SET tel_cli = '11987654321' WHERE cod_cli = 1;
UPDATE clientes SET pessoacontat_cli = 'João Silva' WHERE cod_cli = 2;
#
DELETE FROM clientes WHERE cod_cli = 3;


# MOSTRANDO A TABELA EMPREGADOS E INSERINDO DADOS
SHOW COLUMNS FROM empregados;
INSERT INTO empregados(matricula_empg, nome_empg, cargo_empg, salario_empg, data_adm_empg, tel_empg, qualifi_empg, end_empg)
VALUES('23432101', 'Emanuel De Souza', 'Engenheiro de Projetos de Produto', '3500.00', '2015-03-02', '(11)99880968', 'Especialista', '101');
#
UPDATE empregados SET salario_empg = 5000.00 WHERE matricula_empg = 1;
UPDATE empregados SET cargo_empg = 'Gerente de Produção' WHERE matricula_empg = 2;
#
DELETE FROM empregados WHERE matricula_empg = 3;


# MOSTRANDO A TABELA EMPRESAS E INSERINDO DADOS
SHOW COLUMNS FROM empresas;
INSERT INTO empresas(cnpj_empsa, razaosocial_empsa, pessoacontat_empsa, tel_empsa, end_empsa)
VALUES('505862400', 'Ferragens ME', 'Francisco', '(12)38741672', '309');
#
UPDATE empresas SET tel_empsa = '1144332211' WHERE cnpj_empsa = 101;
UPDATE empresas SET pessoacontat_empsa = 'Maria Souza' WHERE cnpj_empsa = 102;
#
DELETE FROM empresas WHERE cnpj_empsa = 103;


# MOSTRANDO A TABELA FORNECEDORES E INSERINDO DADOS
SHOW COLUMNS FROM fornecedores;
INSERT INTO fornecedores(cnpj_forn, razaosocial_forn, pessoacontat_forn, tel_forn, end_forn)
VALUES('444774973', 'Telecom Ltda', 'Matheus Benedito', '(13)27861579', '20');
#
UPDATE fornecedores SET tel_forn = '1133445566' WHERE cnpj_forn = 201;
UPDATE fornecedores SET pessoacontat_forn = 'Carlos Santos' WHERE cnpj_forn = 202;
#
DELETE FROM fornecedores WHERE cnpj_forn = 203;


# MOSTRANDO A TABELA ENCOMENDA E INSERINDO DADOS
SHOW COLUMNS FROM encomenda;
INSERT INTO encomenda(cod_enco, data_inclu, valor_total, valor_descont, valor_liqui, forma_pag, quant_parcelas)
VALUES('9937', '2024-08-23', '290.00','50.00', '11.79', 'Boleto', '3');
#
UPDATE encomenda SET valor_total = 1000.00 WHERE cod_enco = 1;
UPDATE encomenda SET valor_descont = 50.00 WHERE cod_enco = 2;
#
DELETE FROM encomenda WHERE cod_enco = 3


# MOSTRANDO A TABELA TIPO DE COMPONENTE E INSERINDO DADOS
SHOW COLUMNS FROM tipo_componente;
INSERT INTO tipo_componente(cod_identifi, nome_tipocomp)
VALUES('42', 'Processador (CPU)');
#
UPDATE tipo_componente SET nome_tipocomp = 'Elétrico' WHERE cod_identifi = 1;
UPDATE tipo_componente SET nome_tipocomp = 'Mecânico' WHERE cod_identifi = 2;
#
DELETE FROM tipo_componente WHERE cod_identifi = 3;


# MOSTRANDO A TABELA PRODUTOS E INSERINDO DADOS
SHOW COLUMNS FROM produtos;
INSERT INTO produtos(cod_prod, nome_prod, cor_prod, dimens_prod, peso_prod, preco_prod, tempfab_prod, desenho_prod, horasmdo_prod, identificador, recursos, registros_supri)
VALUES('067', 'Câmera SkyView 4K', 'Preto', '247.60', '500.00','6.400','2024-10-31 10:00:00','Câmera 247.6 mm x 178,5 mm x 5.9 mm','05:00:00','42','242', '95');
#
UPDATE produtos SET preco_prod = 200.00 WHERE cod_prod = 1;
UPDATE produtos SET nome_prod = 'Produto Atualizado' WHERE cod_prod = 2;
#
DELETE FROM produtos WHERE cod_prod = 3;


# MOSTRANDO A TABELA COMPONENTE E INSERINDO DADOS
SHOW COLUMNS FROM componente;
INSERT INTO componente(cod_comp, nome_comp, quantest_comp, uni_comp, precouni_comp, tipo_compo)
VALUES('293', 'Placa de Rede Wi-Fi', '90', '4', '76.00', '42');
#
UPDATE componente SET precouni_comp = 5.00 WHERE cod_comp = 1;
UPDATE componente SET quantest_comp = 150 WHERE cod_comp = 2;
#
DELETE FROM componente WHERE cod_comp = 3;


# MOSTRANDO A TABELA MAQUINAS E INSERINDO DADOS
SHOW COLUMNS FROM maquinas;
INSERT INTO maquinas(id_maq, tempovida_maq, datacompra_maq, data_fimgarant_maq, maqui_manuntencao)
VALUES('003','2020-01-15','2020-01-01', '2025-01-01', '64');
#
UPDATE maquinas SET datacompra_maq = '2023-01-01' WHERE id_maq = 1;
UPDATE maquinas SET data_fimgarant_maq = '2026-01-01' WHERE id_maq = 2;
#
DELETE FROM maquinas WHERE id_maq = 3;


#TABELA CLIENTES_ENCOMENDAS
UPDATE clientes_encomendas SET clientes_codig = 1 WHERE encomendas_codig = 10;
UPDATE clientes_encomendas SET encomendas_codig = 20 WHERE clientes_codig = 2;
#
DELETE FROM clientes_encomendas WHERE clientes_codig = 3 AND encomendas_codig = 30;


#TABELA FORN_FORNECEM_COMP
UPDATE forn_fornecem_comp SET cnpj_fornecedor = 1 WHERE cod_componente = 10;
UPDATE forn_fornecem_comp SET cod_componente = 20 WHERE cnpj_fornecedor = 2;
#
DELETE FROM forn_fornecem_comp WHERE cnpj_fornecedor = 3 AND cod_componente = 30;

#TABELA PROD_UTILIZAM_COMP
UPDATE prod_utilzam_comp SET cod_de_produto = 1 WHERE cod_de_comp = 10;
UPDATE prod_utilzam_comp SET cod_de_comp = 20 WHERE cod_de_produto = 2;
#
DELETE FROM prod_utilzam_comp WHERE cod_de_produto = 3 AND cod_de_comp = 30;


#TABELA PROD_TRANSP_ENCO
UPDATE prod_transp_enco SET cod_d_produto = 1 WHERE cod_d_encomenda = 10;
UPDATE prod_transp_enco SET cod_d_encomenda = 20 WHERE cod_d_produto = 2;
#
DELETE FROM prod_transp_enco WHERE cod_d_produto = 3 AND cod_d_encomenda = 30;

#TABELA MAQ_FABRICAM_PROD
UPDATE maq_fabricam_prod SET maqui_id = 1 WHERE prod = 10;
UPDATE maq_fabricam_prod SET prod = 20 WHERE maqui_id = 2;
#
DELETE FROM maq_fabricam_prod WHERE maqui_id = 3 AND prod

#TABELA EMPRG_PRODUZEM_PROD
UPDATE emprg_produzem_prod SET empregado = 1 WHERE produtos_prod = 10;
UPDATE emprg_produzem_prod SET produtos_prod = 20 WHERE empregado = 2;
#
DELETE FROM emprg_produzem_prod WHERE empregado = 3 AND produtos_prod = 30;
