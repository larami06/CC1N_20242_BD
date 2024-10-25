create schema EST_CASO_IV;

use EST_CASO_IV;

# criando a tabela modalidades
create table if not exists modalidades(
modalidade_id int primary key,
modalidade_nome varchar(45) not null,
modalidade_desc text not null,
modalidade_capacidade int not null
);

# criando a tabela alunos
create table if not exists alunos(
aluno_cpf int primary key,
aluno_nome varchar(50) not null,
aluno_datanasc date not null,
aluno_cep varchar (14),
aluno_rua varchar(45) not null, 
aluno_numrua int,
aluno_bairro varchar(45) not null,
aluno_cidade varchar(45) not null,
aluno_estado varchar(30) not null,
aluno_pais varchar(30) not null,
modalidade_interesse int not null, # FK ID MODALIDADE, relacionando os alunos com suas modalidades de interesse
constraint FK_INTERESSE foreign key(modalidade_interesse)
references modalidades (modalidade_id)

);
 
# criando a tabela instrutores
create table if not exists instrutores(
instrutor_cpf int primary key,
instrutor_nome varchar(50) not null,
instrutor_datanasc date not null,
instrutor_cep varchar (14) not null,
modalidades_ensina int not null, # relacionando o instrutor com as modalidades que ele leciona 
constraint FK_ENSINA foreign key(modalidades_ensina)
references modalidades (modalidade_id)
);

# criando a tabela plano de treinamento
create table if not exists plano_treinamento(
plano_id int primary key,
descricao_plano text not null,
data_criacao_plano date not null,
data_atualizacao_plano date not null,
cpf_aluno int not null,   # relacionando os planos de treinamento com os devidos alunos
cpf_instrutor int not null,  # relacionando os planos de treinamento com os intrutores
constraint FK_CPFALUNO foreign key(cpf_aluno)
references alunos (aluno_cpf),
constraint FK_CPFINSTRU foreign key(cpf_instrutor)
references instrutores (instrutor_cpf)
);


# criando a tabela aula
create table if not exists aula(
aula_id int primary key,
aula_horario time not null, 
capacidade int not null,
modalidade_id int not null,  # relacionando as aulas com a devidas modalidades
aula_instrutor_resp int not null,   # relacionando os instrutores responsaveis com as aulas que ele leciona
constraint FK_MODAL foreign key(modalidade_id) 
references modalidades (modalidade_id),
constraint FK_AULAINSTR foreign key(aula_instrutor_resp)
references instrutores (instrutor_cpf)
);

# criando a tabela pagamento
create table if not exists pagamento( 
pagamento_id int primary key,
pagamento_data date not null,
pagamento_valor decimal(10,2) not null,
pagamento_status ENUM('PAGO','PENDENTE'),
id_do_alun0 int not null,  # relacionando o aluno com o pagamento
constraint FK_IDALUNO foreign key(id_do_alun0)
references alunos (aluno_cpf)
);

DROP SCHEMA EST_CASO_IV;