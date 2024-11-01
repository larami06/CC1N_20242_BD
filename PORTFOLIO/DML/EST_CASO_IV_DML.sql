USE EST_CASO_IV;

#MOSTRANDO A TABELA DE MODALIDADES E INCLUINDO VALORES
SHOW COLUMNS FROM modalidades;
INSERT INTO modalidades(modalidade_id, modalidade_nome, modalidade_desc, modalidade_capacidade)
VALUES('03', 'Treinamento Funcional', 'Tipo de exercício que trabalha movimentos naturais do corpo, como pular, correr, agachar, empurrar e levantar. Ele utiliza equipamentos variados, como cordas e elásticos, proporcionando um treino dinâmico.', '30');

INSERT INTO modalidades (modalidade_id, modalidade_nome, modalidade_desc, modalidade_capacidade) 
VALUES (2, 'Pilates', 'Pilates focado no fortalecimento e flexibilidade', 20);

INSERT INTO modalidades (modalidade_id, modalidade_nome, modalidade_desc, modalidade_capacidade) 
VALUES (3, 'Musculação', 'Treinamento de força com máquinas e pesos livres', 50);

INSERT INTO modalidades (modalidade_id, modalidade_nome, modalidade_desc, modalidade_capacidade) 
VALUES (4, 'Dança', 'Aulas de dança aeróbica para melhorar a condição física', 25);

INSERT INTO modalidades (modalidade_id, modalidade_nome, modalidade_desc, modalidade_capacidade) 
VALUES (5, 'Natação', 'Aulas de natação para todos os níveis', 15);
#
UPDATE modalidades SET modalidade_nome = 'Modalidade Avançada' 
WHERE modalidade_capacidade > 50;
UPDATE modalidades SET modalidade_capacidade = 40 
WHERE modalidade_nome = 'Modalidade Básica';
DELETE FROM modalidades WHERE modalidade_id = 3;


#MOSTRANDO A TABELA DE ALUNOS E INCLUINDO VALORES
SHOW COLUMNS FROM alunos;
INSERT INTO alunos(aluno_cpf, aluno_nome, aluno_datanasc, aluno_cep, aluno_rua, aluno_numrua, aluno_bairro, aluno_cidade, aluno_estado,aluno_pais, modalidade_interesse)
VALUES('808266051', 'Vicente Francisco Barros', '1995-09-18', '66030-145','Rua Vila Oladir', '773', 'Jurunas', 'Belém', 'PA', 'Brasil', '03');

INSERT INTO alunos (aluno_cpf, aluno_nome, aluno_datanasc, aluno_cep, aluno_rua, aluno_numrua, aluno_bairro, aluno_cidade, aluno_estado, aluno_pais, modalidade_interesse) 
VALUES (23456789012, 'Bruno Alves', '1995-05-20', '23456-789', 'Avenida Brasil', 202, 'Jardim', 'Rio de Janeiro', 'RJ', 'Brasil', 2);

INSERT INTO alunos (aluno_cpf, aluno_nome, aluno_datanasc, aluno_cep, aluno_rua, aluno_numrua, aluno_bairro, aluno_cidade, aluno_estado, aluno_pais, modalidade_interesse) 
VALUES (34567890123, 'Carla Ferreira', '1998-09-10', '34567-890', 'Rua das Palmeiras', 303, 'Vila Nova', 'Belo Horizonte', 'MG', 'Brasil', 3);

INSERT INTO alunos (aluno_cpf, aluno_nome, aluno_datanasc, aluno_cep, aluno_rua, aluno_numrua, aluno_bairro, aluno_cidade, aluno_estado, aluno_pais, modalidade_interesse) 
VALUES (45678901234, 'Diego Martins', '1989-12-22', '45678-901', 'Avenida Paulista', 404, 'Paulista', 'São Paulo', 'SP', 'Brasil', 4);

INSERT INTO alunos (aluno_cpf, aluno_nome, aluno_datanasc, aluno_cep, aluno_rua, aluno_numrua, aluno_bairro, aluno_cidade, aluno_estado, aluno_pais, modalidade_interesse) 
VALUES (56789012345, 'Elena Souza', '1992-03-30', '56789-012', 'Rua das Margaridas', 505, 'Bela Vista', 'Porto Alegre', 'RS', 'Brasil', 5);
#
UPDATE alunos SET aluno_cidade = 'Nova Cidade' 
WHERE aluno_cep = '12345-678';
UPDATE alunos SET modalidade_interesse = 2 
WHERE aluno_bairro = 'Centro';
DELETE FROM alunos WHERE aluno_cpf = 987654321;


#MOSTRANDO A TABELA DE INSTRUTORES E INCLUINDO VALORES
SHOW COLUMNS FROM instrutores;
INSERT INTO instrutores(instrutor_cpf, instrutor_nome, instrutor_datanasc, instrutor_cep, modalidades_ensina)
VALUES('274558003', 'Ayla Esther Gabriela Fernandes', '1979-04-26', '91040-030', '03');

INSERT INTO instrutores (instrutor_cpf, instrutor_nome, instrutor_datanasc, instrutor_cep, modalidades_ensina) 
VALUES (22222222222, 'Gabriela Silva', '1985-08-15', '23456-789', 2);

INSERT INTO instrutores (instrutor_cpf, instrutor_nome, instrutor_datanasc, instrutor_cep, modalidades_ensina) 
VALUES (33333333333, 'Hugo Andrade', '1978-11-20', '34567-890', 3);

INSERT INTO instrutores (instrutor_cpf, instrutor_nome, instrutor_datanasc, instrutor_cep, modalidades_ensina) 
VALUES (44444444444, 'Isabela Santos', '1983-05-05', '45678-901', 4);

INSERT INTO instrutores (instrutor_cpf, instrutor_nome, instrutor_datanasc, instrutor_cep, modalidades_ensina) 
VALUES (55555555555, 'José Almeida', '1975-07-30', '56789-012', 5);
#
UPDATE instrutores SET instrutor_nome = 'Instrutor Senior' 
WHERE modalidades_ensina = 1;
UPDATE instrutores SET instrutor_cep = '98765-432' 
WHERE instrutor_nome = 'João Silva';
DELETE FROM instrutores WHERE instrutor_cpf = 123456789;


#MOSTRANDO A TABELA DE PLANOS DE TREINAMENTO E INCLUINDO VALORES
SHOW COLUMNS FROM plano_treinamento;
INSERT INTO plano_treinamento(plano_id, descricao_plano, data_criacao_plano, data_atualizacao_plano, cpf_aluno, cpf_instrutor)
VALUES('112', 'Aumentar a resistência, força e coordenação, promovendo emagrecimento e melhorias na capacidade cardiovascular.', '2024-10-10', '2024-11-10', '808266051', '274558003');

INSERT INTO plano_treinamento (plano_id, descricao_plano, data_criacao_plano, data_atualizacao_plano, cpf_aluno, cpf_instrutor) 
VALUES (2, 'Plano de Pilates Intermediário', '2024-01-05', '2024-01-15', 23456789012, 22222222222);

INSERT INTO plano_treinamento (plano_id, descricao_plano, data_criacao_plano, data_atualizacao_plano, cpf_aluno, cpf_instrutor) 
VALUES (3, 'Plano de Musculação Avançada', '2024-01-08', '2024-01-18', 34567890123, 33333333333);

INSERT INTO plano_treinamento (plano_id, descricao_plano, data_criacao_plano, data_atualizacao_plano, cpf_aluno, cpf_instrutor) 
VALUES (4, 'Plano de Dança Aeróbica', '2024-01-12', '2024-01-22', 45678901234, 44444444444);

INSERT INTO plano_treinamento (plano_id, descricao_plano, data_criacao_plano, data_atualizacao_plano, cpf_aluno, cpf_instrutor) 
VALUES (5, 'Plano de Natação Iniciante', '2024-01-20', '2024-01-30', 56789012345, 55555555555);
#
UPDATE plano_treinamento SET data_atualizacao_plano = '2024-12-01' 
WHERE descricao_plano LIKE '%avançado%';
UPDATE plano_treinamento SET cpf_instrutor = 987654321 
WHERE cpf_aluno = 123456789;
DELETE FROM plano_treinamento WHERE plano_id = 5;


#MOSTRANDO A TABELA DE AULA E INCLUINDO VALORES
SHOW COLUMNS FROM aula;
INSERT INTO aula(aula_id, aula_horario, capacidade, modalidade_id, aula_instrutor_resp)
VALUES('0202', '09:00:00', '35', '03', '274558003');

INSERT INTO aula (aula_id, aula_horario, capacidade, modalidade_id, aula_instrutor_resp) 
VALUES (2, '10:00:00', 12, 2, 22222222222);

INSERT INTO aula (aula_id, aula_horario, capacidade, modalidade_id, aula_instrutor_resp) 
VALUES (3, '15:00:00', 25, 3, 33333333333);

INSERT INTO aula (aula_id, aula_horario, capacidade, modalidade_id, aula_instrutor_resp) 
VALUES (4, '18:00:00', 20, 4, 44444444444);

INSERT INTO aula (aula_id, aula_horario, capacidade, modalidade_id, aula_instrutor_resp) 
VALUES (5, '20:00:00', 10, 5, 55555555555);
#
UPDATE aula SET aula_horario = '08:00:00' 
WHERE capacidade < 10;
UPDATE aula SET capacidade = 20 
WHERE aula_instrutor_resp = 987654321;
DELETE FROM aula WHERE aula_id = 7;


#MOSTRANDO A TABELA DE PAGAMENTO E INCLUINDO VALORES
SHOW COLUMNS FROM pagamento;
INSERT INTO pagamento(pagamento_id, pagamento_data, pagamento_valor, pagamento_status, id_do_alun0)
VALUES('392211', '2024-10-10', '90.00', 'PAGO', '808266051');

INSERT INTO pagamento (pagamento_id, pagamento_data, pagamento_valor, pagamento_status, id_do_alun0) 
VALUES (2, '2024-01-05', 200.00, 'PAGO', 23456789012);

INSERT INTO pagamento (pagamento_id, pagamento_data, pagamento_valor, pagamento_status, id_do_alun0) 
VALUES (3, '2024-01-08', 250.00, 'PENDENTE', 34567890123);

INSERT INTO pagamento (pagamento_id, pagamento_data, pagamento_valor, pagamento_status, id_do_alun0) 
VALUES (4, '2024-01-12', 180.00, 'PAGO', 45678901234);

INSERT INTO pagamento (pagamento_id, pagamento_data, pagamento_valor, pagamento_status, id_do_alun0) 
VALUES (5, '2024-01-20', 100.00, 'PENDENTE', 56789012345);
#
UPDATE pagamento SET pagamento_status = 'PAGO' 
WHERE pagamento_data < '2024-01-01';
UPDATE pagamento SET pagamento_valor = 100.00 
WHERE pagamento_status = 'PENDENTE';
DELETE FROM pagamento WHERE pagamento_id = 10;
