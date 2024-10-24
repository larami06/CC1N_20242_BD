#ALTERANDO EST_CASO_II
CREATE DATABASE EST_CASO_II;

#ALTERANDO TABELA DE PASSAGEIROS
ALTER TABLE passageiros COMMENT = 'Tabela de informações dos passageiros';
ALTER TABLE passageiros ADD pass_cep varchar(14) not null;
ALTER TABLE passageiros DROP COLUMN pass_pais;
ALTER TABLE passageiros MODIFY COLUMN pass_cidade varchar(50) not null;
ALTER TABLE passageiros CHANGE COLUMN pass_numrua pass_numero_rua varchar(45);

#ALTERANDO TABELA DE VOOS
ALTER TABLE voos COMMENT = 'Tabela de informações dos voos';
ALTER TABLE voos ADD voo_aeron_origem text;
ALTER TABLE voos ADD voo_aeron_destino text;
ALTER TABLE voos DROP COLUMN voo_hora;
ALTER TABLE voos MODIFY COLUMN voo_aeronave varchar(30) not null;
ALTER TABLE voos CHANGE COLUMN voo_hora voo_horario time not null;

#ALTERANDO TABELA DE AEROPORTOS
ALTER TABLE voos COMMENT = 'Tabela de informações dos aeroportos';
ALTER TABLE aeroportos ADD aerop_horarios time;
ALTER TABLE aeroportos DROP COLUMN aerop_pais;
ALTER TABLE aeroportos MODIFY COLUMN aerop_cidade varchar(50) not null;
ALTER TABLE aeroportos CHANGE COLUMN aerop_latitude aerop_lat decimal(12,9) not null;
#ALTERANDO TABELA DE AERONAVES
ALTER TABLE voos COMMENT = 'Tabela de informações das aeronaves';
ALTER TABLE aeronaves ADD aeron_desc text;
ALTER TABLE aeronaves DROP COLUMN aeron_fabricante;
ALTER TABLE aeronaves MODIFY COLUMN aeron_autonomia varchar (50) not null;
ALTER TABLE aeronaves CHANGE COLUMN aeron_anofabr aeron_ano_de_fabr date not null;

#ALTERANDO TABELA DE FUNCIONARIOS
ALTER TABLE voos COMMENT = 'Tabela de informações dos funcionarios';
ALTER TABLE funcionarios ADD func_email varchar(30);
ALTER TABLE funcionarios DROP COLUMN func_codpostal;
ALTER TABLE funcionarios MODIFY COLUMN func_pais varchar(50) not null;
ALTER TABLE funcionarios CHANGE COLUMN func_numrua func_num_da_rua int not null;

#ALTERANDO TABELA DE EQUIPES
ALTER TABLE voos COMMENT = 'Tabela de informações das equipes';
ALTER TABLE equipes ADD equipes_quant int not null;
ALTER TABLE equipes DROP COLUMN funcionario_id;

#ALTERANDO TABELA DE RESERVAS
ALTER TABLE voos COMMENT = 'Tabela de informações das reservas';
ALTER TABLE reservas ADD reservas_horario time not null;
ALTER TABLE reservas DROP COLUMN reserva_cod;
ALTER TABLE reservas MODIFY COLUMN passageiro_cpf varchar(12);
ALTER TABLE reservas CHANGE COLUMN id_do_voo id_voo int;

DROP SCHEMA EST_CASO_II;

