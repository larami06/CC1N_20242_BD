USE EST_CASO_II;

# MOSTRANDO A COLUNA DE PASSAGEIROS E INSERINDO VALORES
SHOW COLUMNS FROM passageiros;
INSERT INTO passageiros(pass_cpf, pass_nome, pass_telefone, pass_rua, pass_numrua, pass_bairro, pass_cidade, pass_estado, pass_pais, pass_codpostal, pass_email)
VALUES('882992023', 'Alisson', '21 99349-2384','Rio Dourado', '34', 'Santa Brisa', 'Terra Alta', 'Serranópolis', 'Brasil', '2838934112', 'alisson@gmail.com');
INSERT INTO passageiros (pass_cpf, pass_nome, pass_telefone, pass_rua, pass_numrua, pass_bairro, pass_cidade, pass_estado, pass_pais, pass_codpostal, pass_email)
VALUES (12345678901, 'João Silva', '1234-5678', 'Rua A', 101, 'Bairro A', 'Cidade A', 'Estado A', 'Brasil', '12345-678', 'joao.silva@example.com');
INSERT INTO passageiros (pass_cpf, pass_nome, pass_telefone, pass_rua, pass_numrua, pass_bairro, pass_cidade, pass_estado, pass_pais, pass_codpostal, pass_email)
VALUES (23456789012, 'Maria Oliveira', '2345-6789', 'Rua B', 202, 'Bairro B', 'Cidade B', 'Estado B', 'Brasil', '23456-789', 'maria.oliveira@example.com');
INSERT INTO passageiros (pass_cpf, pass_nome, pass_telefone, pass_rua, pass_numrua, pass_bairro, pass_cidade, pass_estado, pass_pais, pass_codpostal, pass_email)
VALUES (34567890123, 'Carlos Pereira', '3456-7890', 'Rua C', 303, 'Bairro C', 'Cidade C', 'Estado C', 'Brasil', '34567-890', 'carlos.pereira@example.com');
INSERT INTO passageiros (pass_cpf, pass_nome, pass_telefone, pass_rua, pass_numrua, pass_bairro, pass_cidade, pass_estado, pass_pais, pass_codpostal, pass_email)
VALUES (45678901234, 'Ana Costa', '4567-8901', 'Rua D', 404, 'Bairro D', 'Cidade D', 'Estado D', 'Brasil', '45678-901', 'ana.costa@example.com');
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
INSERT INTO voos (voo_id, voo_data, voo_hora, voo_aeronave)
VALUES (1, '2024-12-01', '14:30:00', 'A320');
INSERT INTO voos (voo_id, voo_data, voo_hora, voo_aeronave)
VALUES (2, '2024-12-02', '16:00:00', 'B737');
INSERT INTO voos (voo_id, voo_data, voo_hora, voo_aeronave)
VALUES (3, '2024-12-03', '18:15:00', 'Embraer 190');
INSERT INTO voos (voo_id, voo_data, voo_hora, voo_aeronave)
VALUES (4, '2024-12-04', '10:00:00', 'A321');
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
INSERT INTO aeroportos (aerop_cod, aerop_nome, aerop_cidade, aerop_pais, aerop_latitude, aerop_longitude)
VALUES (1, 'Aeroporto Internacional A', 'Cidade A', 'Brasil', -23.550520, -46.633308);
INSERT INTO aeroportos (aerop_cod, aerop_nome, aerop_cidade, aerop_pais, aerop_latitude, aerop_longitude)
VALUES (2, 'Aeroporto Internacional B', 'Cidade B', 'Brasil', -22.906847, -43.172896);
INSERT INTO aeroportos (aerop_cod, aerop_nome, aerop_cidade, aerop_pais, aerop_latitude, aerop_longitude)
VALUES (3, 'Aeroporto Internacional C', 'Cidade C', 'Brasil', -25.428954, -49.267136);
INSERT INTO aeroportos (aerop_cod, aerop_nome, aerop_cidade, aerop_pais, aerop_latitude, aerop_longitude)
VALUES (4, 'Aeroporto Internacional D', 'Cidade D', 'Brasil', -15.780148, -47.929246);
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
VALUES('132245', '2018-03-30', 'EcoTex', '100', '6000');
INSERT INTO aeronaves (aeron_prefixo, aeron_anofabr, aeron_fabricante, aeron_capacidade, aeron_autonomia)
VALUES (1, '2020-01-01', 'Airbus', 180, '6000');
INSERT INTO aeronaves (aeron_prefixo, aeron_anofabr, aeron_fabricante, aeron_capacidade, aeron_autonomia)
VALUES (2, '2019-01-01', 'Boeing', 190, '6500');
INSERT INTO aeronaves (aeron_prefixo, aeron_anofabr, aeron_fabricante, aeron_capacidade, aeron_autonomia)
VALUES (3, '2018-01-01', 'Embraer', 120, '5000');
INSERT INTO aeronaves (aeron_prefixo, aeron_anofabr, aeron_fabricante, aeron_capacidade, aeron_autonomia)
VALUES (4, '2021-01-01', 'Bombardier', 130, '5500');
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
INSERT INTO funcionarios (func_id, func_nome, func_datanasc, func_rua, func_numrua, func_bairro, func_cidade, func_estado, func_pais, func_codpostal, func_cpf, func_funcao)
VALUES (1, 'Ricardo Almeida', '1985-06-15', 'Rua E', 505, 'Bairro E', 'Cidade E', 'Estado E', 'Brasil', '56789-012', '12345678901', 'Piloto');
INSERT INTO funcionarios (func_id, func_nome, func_datanasc, func_rua, func_numrua, func_bairro, func_cidade, func_estado, func_pais, func_codpostal, func_cpf, func_funcao)
VALUES (2, 'Fernanda Lima', '1990-08-22', 'Rua F', 606, 'Bairro F', 'Cidade F', 'Estado F', 'Brasil', '67890-123', '23456789012', 'Coordenador de Voo');
INSERT INTO funcionarios (func_id, func_nome, func_datanasc, func_rua, func_numrua, func_bairro, func_cidade, func_estado, func_pais, func_codpostal, func_cpf, func_funcao)
VALUES (3, 'Bruno Santos', '1988-01-10', 'Rua G', 707, 'Bairro G', 'Cidade G', 'Estado G', 'Brasil', '78901-234', '34567890123', 'Comissário de Bordo');
INSERT INTO funcionarios (func_id, func_nome, func_datanasc, func_rua, func_numrua, func_bairro, func_cidade, func_estado, func_pais, func_codpostal, func_cpf, func_funcao)
VALUES (4, 'Tatiane Sousa', '1980-03-05', 'Rua H', 808, 'Bairro H', 'Cidade H', 'Estado H', 'Brasil', '89012-345', '45678901234', 'Mecânico');
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
INSERT INTO equipes (funcionario_id, id_voo)
VALUES (1, 1);
INSERT INTO equipes (funcionario_id, id_voo)
VALUES (2, 1);
INSERT INTO equipes (funcionario_id, id_voo)
VALUES (3, 2);
INSERT INTO equipes (funcionario_id, id_voo)
VALUES (4, 3);
INSERT INTO equipes (funcionario_id, id_voo)
VALUES (4, 5);
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
INSERT INTO reservas (reserva_cod, passageiro_cpf, id_do_voo)
VALUES (1, 12345678901, 1);
INSERT INTO reservas (reserva_cod, passageiro_cpf, id_do_voo)
VALUES (2, 23456789012, 2);
INSERT INTO reservas (reserva_cod, passageiro_cpf, id_do_voo)
VALUES (3, 34567890123, 3);
INSERT INTO reservas (reserva_cod, passageiro_cpf, id_do_voo)
VALUES (4, 45678901234, 4);
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
