# MOSTRANDO A COLUNA DE PASSAGEIROS E INSERINDO VALORES
SHOW COLUMNS FROM passageiros;
INSERT INTO passageiros(pass_cpf, pass_nome, pass_telefone, pass_rua, pass_numrua, pass_bairro, pass_cidade, pass_estado, pass_pais, pass_codpostal, pass_email)
VALUES('882992023', 'Alisson', '21 99349-2384','Rio Dourado', '34', 'Santa Brisa', 'Terra Alta', 'Serranópolis', 'Brasil', '2838934112', 'alisson@gmail.com');

# MOSTRANDO A COLUNA DE VOOS E INSERINDO VALORES
SHOW COLUMNS FROM voos;
INSERT INTO voos(voo_id, voo_data, voo_hora, voo_aeronave)
VALUES('22383', '2025-02-10', '13:30:00', 'AJF-9349');

# MOSTRANDO A COLUNA DE AEROPORTOS E INSERINDO VALORES
SHOW COLUMNS FROM aeroportos;
INSERT INTO aeroportos(aerop_cod, aerop_nome, aerop_cidade, aerop_pais, aerop_latitude, aerop_longitude)
VALUES('344234', 'SkyBlue', 'Norte Real', 'Brasil', '37.7749', '122.4194');

# MOSTRANDO A COLUNA DE AERONAVES E INSERINDO VALORES
SHOW COLUMNS FROM aeronaves;
INSERT INTO aeronaves(aeron_prefixo, aeron_anofabr, aeron_fabricante, aeron_capacidade, aeron_autonomia)
VALUES('132245', '2018-03-30', 'EcoTex', '100', '16.000');

# MOSTRANDO A COLUNA DE FUNCIONÁRIOS E INSERINDO VALORES
SHOW COLUMNS FROM funcionarios;
INSERT INTO funcionarios(func_id, func_nome, func_datanasc, func_rua, func_numrua, func_bairro, func_cidade, func_estado, func_pais, func_codpostal, func_cpf, func_funcao)
VALUES('1102','Bruna','2002-12-01','Arroyo Grande', '58', 'Lagoa Branca', 'Nova Aliança','Encantado', 'Brasil', '1987240512', '32322402320', 'Comissária de Bordo');

# MOSTRANDO A COLUNA DE RESERVAS E INSERINDO VALORES
SHOW COLUMNS FROM reservas;
INSERT INTO reservas(reserva_cod, passageiro_cpf, id_do_voo)
VALUES('550', '882992023', '22383');
