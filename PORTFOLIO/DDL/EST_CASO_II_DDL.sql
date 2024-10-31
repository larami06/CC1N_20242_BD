#criando
create schema EST_CASO_II;

#selecionando e usando o schema
use EST_CASO_II;

#criando a tabela passageiros
create table if not exists passageiros(
pass_cpf int primary key,
pass_nome varchar(45) not null,
pass_telefone varchar(15) not null,
pass_rua varchar(45) not null,
pass_numrua int,
pass_bairro varchar(45) not null,
pass_cidade varchar(45) not null,
pass_estado varchar(30) not null,
pass_pais varchar(30) not null,
pass_codpostal varchar(10) not null,
pass_email varchar(30) not null
);

#criando a tabela voos
create table if not exists voos(
voo_id int primary key,
voo_data date not null,
voo_hora time not null,
voo_aeronave varchar(20) not null
);

#criando a tabela aeroportos
create table if not exists aeroportos(
aerop_cod int primary key,
aerop_nome varchar(45) not null,
aerop_cidade varchar(45) not null,
aerop_pais varchar(30) not null,
aerop_latitude decimal(12,9) not null,
aerop_longitude decimal(12,9) not null
);

#criando a tabela aeronaves
create table if not exists aeronaves(
aeron_prefixo int primary key,
aeron_anofabr date not null,
aeron_fabricante varchar(45) not null,
aeron_capacidade int not null,
aeron_autonomia varchar(30) not null
);

#criando a tabela funcionarios
create table if not exists funcionarios(
func_id int primary key,
func_nome varchar(45) not null,
func_datanasc date not null,
func_rua varchar(45) not null,
func_numrua int not null,
func_bairro varchar(45) not null,
func_cidade varchar(45) not null,
func_estado varchar(45) not null,
func_pais varchar(30) not null,
func_codpostal varchar(10) not null,
func_cpf varchar(14) not null,
func_funcao text not null
);

#criando a tabela equipes (operação do voo)
create table if not exists equipes(
funcionario_id int not null, #chave primaria estrangeira (funcionario)
id_voo int not null, #chave primaria estrangeira (voo)
constraint fk_funcionario FOREIGN KEY (funcionario_id)
references funcionarios(func_id),
constraint fk_voo FOREIGN KEY (id_voo)
references voos(voo_id)
); #associativa

create table if not exists reservas(
reserva_cod int primary key,
passageiro_cpf int, #chave estrangeira
id_do_voo int, #chave estrangeira
constraint fk_passageiro FOREIGN KEY (passageiro_cpf) 
references passageiros(pass_cpf), #referenciando à chave estrangeira (passageiro cpf)
constraint fk_id_voo FOREIGN KEY (id_do_voo) 
references voos(voo_id) #referenciando à chave estrangeira (voo id)
);

DROP SCHEMA EST_CASO_II;

#-----

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
