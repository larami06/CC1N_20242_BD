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
aeron_autonomia time not null
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

DROP SCHEMA EST_CASO_II_DDL;
