
#ALTERANDO TABELA DE MODALIDADES
ALTER TABLE modalidades COMMENT = 'Tabela de informações das modalidades';
ALTER TABLE modalidades ADD modalidade_tipo varchar(40) not null;
ALTER TABLE modalidades MODIFY COLUMN modalidade_desc varchar(20) not null;
ALTER TABLE modalidades CHANGE COLUMN modalidade_capacidade modalidade_capacid int not null;
ALTER TABLE modalidades DROP COLUMN modalidade_nome;


#ALTERANDO TABELA DE ALUNOS
ALTER TABLE alunos COMMENT = 'Tabela de informações dos alunos';
ALTER TABLE alunos ADD alunos_id varchar(15) not null;
ALTER TABLE alunos MODIFY COLUMN aluno_datanasc datetime not null;
ALTER TABLE alunos CHANGE COLUMN aluno_pais pais_aluno varchar(30) not null;
ALTER TABLE alunos DROP COLUMN aluno_rua;
 

#ALTERANDO TABELA DE INSTRUTORES
ALTER TABLE instrutores COMMENT = 'Tabela de informações dos instrutores';
ALTER TABLE instrutores ADD instrutor_sobrenome varchar(40) not null;
ALTER TABLE instrutores MODIFY COLUMN instrutor_nome varchar(20) not null;
ALTER TABLE instrutores CHANGE COLUMN instrutor_datanasc datanasc_instrutor int not null;
ALTER TABLE instrutores DROP COLUMN instrutor_cep;



#ALTERANDO TABELA DE PLANO DE TREINAMENTO
ALTER TABLE plano_treinamento COMMENT = 'Tabela de informações do plano de treinamento';
ALTER TABLE plano_treinamento DROP COLUMN plano_id;
ALTER TABLE plano_treinamento ADD data_cancelamento date not null;
ALTER TABLE plano_treinamento MODIFY COLUMN data_criacao_plano datetime not null;
ALTER TABLE plano_treinamento CHANGE COLUMN descricao_plano descricao_do_plano varchar(55);


#ALTERANDO TABELA DE AULAS
ALTER TABLE aula COMMENT = 'Tabela de informações de aula';
ALTER TABLE aula ADD aula_dia date not null;
ALTER TABLE aula MODIFY COLUMN aula_id varchar(20) primary key;
ALTER TABLE aula CHANGE COLUMN modalidade_id modalidade_da_aula_id int not null;
ALTER TABLE aula DROP COLUMN aula_horario;



#ALTERANDO TABELA DE PAGAMENTO
ALTER TABLE pagamento COMMENT = 'Tabela de informações de pagamento';
ALTER TABLE pagamento ADD pagamento_cancelamento boolean;
ALTER TABLE pagamento MODIFY COLUMN pagamento_data datetime primary key;
ALTER TABLE pagamento CHANGE COLUMN pagamento_status status_do_pagamento int not null;
ALTER TABLE pagamento DROP COLUMN pagamento_id;

DROP SCHEMA EST_CASO_IV;