#MOSTRANDO A TABELA DE MODALIDADES E INCLUINDO VALORES
SHOW COLUMNS FROM modalidades;
INSERT INTO modalidades(modalidade_id, modalidade_nome, modalidade_desc, modalidade_capacidade)
VALUES('03', 'Treinamento Funcional', 'Tipo de exercício que trabalha movimentos naturais do corpo, como pular, correr, agachar, empurrar e levantar. Ele utiliza equipamentos variados, como cordas e elásticos, proporcionando um treino dinâmico.', '30');

#MOSTRANDO A TABELA DE ALUNOS E INCLUINDO VALORES
SHOW COLUMNS FROM alunos;
INSERT INTO alunos(aluno_cpf, aluno_nome, aluno_datanasc, aluno_cep, aluno_rua, aluno_numrua, aluno_bairro, aluno_cidade, aluno_estado,aluno_pais, modalidade_interesse)
VALUES('808266051', 'Vicente Francisco Barros', '1995-09-18', '66030-145','Rua Vila Oladir', '773', 'Jurunas', 'Belém', 'PA', 'Brasil', '03');

#MOSTRANDO A TABELA DE INSTRUTORES E INCLUINDO VALORES
SHOW COLUMNS FROM instrutores;
INSERT INTO instrutores(instrutor_cpf, instrutor_nome, instrutor_datanasc, instrutor_cep, modalidades_ensina)
VALUES('274558003', 'Ayla Esther Gabriela Fernandes', '1979-04-26', '91040-030', '03');

#MOSTRANDO A TABELA DE PLANOS DE TREINAMENTO E INCLUINDO VALORES
SHOW COLUMNS FROM plano_treinamento;
INSERT INTO plano_treinamento(plano_id, descricao_plano, data_criacao_plano, data_atualizacao_plano, cpf_aluno, cpf_instrutor)
VALUES('112', 'Aumentar a resistência, força e coordenação, promovendo emagrecimento e melhorias na capacidade cardiovascular.', '2024-10-10', '2024-11-10', '808266051', '274558003');

#MOSTRANDO A TABELA DE AULA E INCLUINDO VALORES
SHOW COLUMNS FROM aula;
INSERT INTO aula(aula_id, aula_horario, capacidade, modalidade_id, aula_instrutor_resp)
VALUES('0202', '09:00:00', '35', '03', '274558003');

#MOSTRANDO A TABELA DE PAGAMENTO E INCLUINDO VALORES
SHOW COLUMNS FROM pagamento;
INSERT INTO pagamento(pagamento_id, pagamento_data, pagamento_valor, pagamento_status, id_do_alun0)
VALUES('392211', '2024-10-10', '90.00', 'PAGO', '808266051');
