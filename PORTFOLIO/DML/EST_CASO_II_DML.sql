USE EST_CASO_II;

# MOSTRANDO A COLUNA DE PASSAGEIROS E INSERINDO VALORES
SHOW COLUMNS FROM passageiros;
INSERT INTO passageiros(pass_cpf, pass_nome, pass_telefone, pass_rua, pass_numrua, pass_bairro, pass_cidade, pass_estado, pass_pais, pass_codpostal, pass_email)
VALUES('882992023', 'Alisson', '21 99349-2384','Rio Dourado', '34', 'Santa Brisa', 'Terra Alta', 'Serranópolis', 'Brasil', '2838934112', 'alisson@gmail.com');
#
UPDATE passageiros
SET pass_telefone = '1234-5678'
WHERE pass_cpf = 123456789;
UPDATE passageiros
SET pass_cidade = 'São Paulo'
WHERE pass_cpf = 123456789;
#
DELETE FROM passageiros
WHERE pass_cpf = 123456789;


# MOSTRANDO A COLUNA DE VOOS E INSERINDO VALORES
SHOW COLUMNS FROM voos;
INSERT INTO voos(voo_id, voo_data, voo_hora, voo_aeronave)
VALUES('22383', '2025-02-10', '13:30:00', 'AJF-9349');
#
UPDATE voos
SET voo_data = '2024-11-10'
WHERE voo_id = 1;
UPDATE voos
SET voo_aeronave = 'Boeing 737'
WHERE voo_id = 2;
#
DELETE FROM voos
WHERE voo_id = 1;


# MOSTRANDO A COLUNA DE AEROPORTOS E INSERINDO VALORES
SHOW COLUMNS FROM aeroportos;
INSERT INTO aeroportos(aerop_cod, aerop_nome, aerop_cidade, aerop_pais, aerop_latitude, aerop_longitude)
VALUES('344234', 'SkyBlue', 'Norte Real', 'Brasil', '37.7749', '122.4194');
#
UPDATE aeroportos
SET aerop_nome = 'Aeroporto Internacional'
WHERE aerop_cod = 3;
UPDATE aeroportos
SET aerop_latitude = -23.627999
WHERE aerop_cod = 4;
#
DELETE FROM aeroportos
WHERE aerop_cod = 3;


# MOSTRANDO A COLUNA DE AERONAVES E INSERINDO VALORES
SHOW COLUMNS FROM aeronaves;
INSERT INTO aeronaves(aeron_prefixo, aeron_anofabr, aeron_fabricante, aeron_capacidade, aeron_autonomia)
VALUES('132245', '2018-03-30', 'EcoTex', '100', '16.000');
#
UPDATE aeronaves
SET aeron_anofabr = '2020-05-12'
WHERE aeron_prefixo = 101;
UPDATE aeronaves
SET aeron_capacidade = 200
WHERE aeron_prefixo = 102;
#
DELETE FROM aeronaves
WHERE aeron_prefixo = 101;


# MOSTRANDO A COLUNA DE FUNCIONÁRIOS E INSERINDO VALORES
SHOW COLUMNS FROM funcionarios;
INSERT INTO funcionarios(func_id, func_nome, func_datanasc, func_rua, func_numrua, func_bairro, func_cidade, func_estado, func_pais, func_codpostal, func_cpf, func_funcao)
VALUES('1102','Bruna','2002-12-01','Arroyo Grande', '58', 'Lagoa Branca', 'Nova Aliança','Encantado', 'Brasil', '1987240512', '32322402320', 'Comissária de Bordo');
#
UPDATE funcionarios
SET func_cidade = 'Rio de Janeiro'
WHERE func_id = 5;
UPDATE funcionarios
SET func_funcao = 'Piloto'
WHERE func_id = 6;
#
DELETE FROM funcionarios
WHERE func_id = 5;


#TABELA EQUIPES
UPDATE equipes
SET funcionario_id = 7
WHERE id_voo = 2 AND funcionario_id = 5;
UPDATE equipes
SET id_voo = 3
WHERE funcionario_id = 7;
#
DELETE FROM equipes
WHERE funcionario_id = 7 AND id_voo = 2;


# MOSTRANDO A COLUNA DE RESERVAS E INSERINDO VALORES
SHOW COLUMNS FROM reservas;
INSERT INTO reservas(reserva_cod, passageiro_cpf, id_do_voo)
VALUES('550', '882992023', '22383');
#
UPDATE reservas
SET id_do_voo = 3
WHERE reserva_cod = 10;
UPDATE reservas
SET passageiro_cpf = 123456780
WHERE reserva_cod = 11;
#
DELETE FROM reservas
WHERE reserva_cod = 10;
