# MOSTRANDO A TABELA TIPO DE ENDEREÇO E INSERINDO DADOS
SHOW COLUMNS FROM tipo_endereco;
INSERT INTO tipo_endereco(codtipo_end, nome_tipoend)
VALUES('2', 'Casa');

# MOSTRANDO A TABELA ENDEREÇOS E INSERINDO DADOS
SHOW COLUMNS FROM enderecos;
INSERT INTO enderecos(id_endereco, cep, logradouro, cidade, bairro, complemeto, numero, uf, tipo_end)
VALUES('90', '28100823', 'Rua Vale Sereno', 'Nova Esperança', 'Montes Claros', 'Casa', '237', '25', '2' );

# MOSTRANDO A TABELA RECURSOS ESPECIFICOS E INSERINDO DADOS
SHOW COLUMNS FROM recursos_espec;
INSERT INTO recursos_espec(id_re, quantnecess_re, uni_re, tempouso_re, horasmdo_re)
VALUES('242', '15','Metais', '05:30:02','08:50:00');

# MOSTRANDO A TABELA REGISTRO DE SUPRIMENTOS E INSERINDO DADOS
SHOW COLUMNS FROM regist_supri;
INSERT INTO regist_supri(id_rs, data_rs, descricao_rs)
VALUES('95', '2021-06-12','Materiais Disponíveis');

# MOSTRANDO A TABELA REGISTRO DE MANUNTENÇÃO E INSERINDO DADOS
SHOW COLUMNS FROM regist_manuntencao;
INSERT INTO regist_manuntencao(id_manun, data_manunt, desc_manunt)
VALUES('64', '2023-03-01','Máquina reparada devidamente');

# MOSTRANDO A TABELA CLIENTES E INSERINDO DADOS
SHOW COLUMNS FROM clientes;
INSERT INTO clientes(cod_cli, cnpj_cli, razaosocial_cli, ramo_ativ_cli, data_cadastro, tel_cli, pessoacontat_cli, end_cli)
VALUES('130', '20634700000145', 'Rafael Publicidade e Propaganda ME', 'Publicidade e Propaganda', '2013-05-10', '(14)25637544', 'Rafael Claúdio', '90');

# MOSTRANDO A TABELA EMPREGADOS E INSERINDO DADOS
SHOW COLUMNS FROM empregados;
INSERT INTO empregados(matricula_empg, nome_empg, cargo_empg, salario_empg, data_adm_empg, tel_empg, qualifi_empg, end_empg)
VALUES('23432101', 'Emanuel De Souza', 'Engenheiro de Projetos de Produto', '3500.00', '2015-03-02', '(11)99880968', 'Especialista', '101');

# MOSTRANDO A TABELA EMPRESAS E INSERINDO DADOS
SHOW COLUMNS FROM empresas;
INSERT INTO empresas(cnpj_empsa, razaosocial_empsa, pessoacontat_empsa, tel_empsa, end_empsa)
VALUES('505862400', 'Ferragens ME', 'Francisco', '(12)38741672', '309');

# MOSTRANDO A TABELA FORNECEDORES E INSERINDO DADOS
SHOW COLUMNS FROM fornecedores;
INSERT INTO fornecedores(cnpj_forn, razaosocial_forn, pessoacontat_forn, tel_forn, end_forn)
VALUES('444774973', 'Telecom Ltda', 'Matheus Benedito', '(13)27861579', '20');

# MOSTRANDO A TABELA ENCOMENDA E INSERINDO DADOS
SHOW COLUMNS FROM encomenda;
INSERT INTO encomenda(cod_enco, data_inclu, valor_total, valor_descont, valor_liqui, forma_pag, quant_parcelas)
VALUES('9937', '2024-08-23', '290.00','50.00', '11.79', 'Boleto', '3');

# MOSTRANDO A TABELA TIPO DE COMPONENTE E INSERINDO DADOS
SHOW COLUMNS FROM tipo_componente;
INSERT INTO tipo_componente(cod_identifi, nome_tipocomp)
VALUES('42', 'Processador (CPU)');

# MOSTRANDO A TABELA PRODUTOS E INSERINDO DADOS
SHOW COLUMNS FROM produtos;
INSERT INTO produtos(cod_prod, nome_prod, cor_prod, dimens_prod, peso_prod, preco_prod, tempfab_prod, desenho_prod, horasmdo_prod, identificador, recursos, registros_supri)
VALUES('067', 'Câmera SkyView 4K', 'Preto', '247.60', '500.00','6.400','2024-10-31 10:00:00','Câmera 247.6 mm x 178,5 mm x 5.9 mm','05:00:00','42','242', '95');

# MOSTRANDO A TABELA COMPONENTE E INSERINDO DADOS
SHOW COLUMNS FROM componente;
INSERT INTO componente(cod_comp, nome_comp, quantest_comp, uni_comp, precouni_comp, tipo_compo)
VALUES('293', 'Placa de Rede Wi-Fi', '90', '4', '76.00', '42');

# MOSTRANDO A TABELA MAQUINAS E INSERINDO DADOS
SHOW COLUMNS FROM maquinas;
INSERT INTO maquinas(id_maq, tempovida_maq, datacompra_maq, data_fimgarant_maq, maqui_manuntencao)
VALUES('003','2020-01-15','2020-01-01', '2025-01-01', '64');
