# selecionar todos os registros da tabela 'passageiros'
SELECT * FROM passageiros;

# Selecionar o nome e email dos passageiros que possuem telefone 
SELECT pass_nome, pass_email
FROM passageiros
WHERE pass_telefone IS NOT NULL;

# Selecionar os 10 voos mais recentes, ordenados por ano fab
SELECT aeron_prefixo, aeron_anofabr
FROM aeronaves
ORDER BY aeron_anofabr DESC
LIMIT 10;

# Selecionar o número de funcionarios por cidade
SELECT func_cidade, COUNT(*) AS total_funcionarios
FROM funcionarios
GROUP BY cidades_funcionarios;


