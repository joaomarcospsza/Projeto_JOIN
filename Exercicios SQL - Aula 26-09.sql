-- 1.	Escreva o comando que liste os nomes de todas as cidades e as respectivas siglas do estado.
SELECT 
	estado.sigla sigal_estado
    ,cidade.nome nome_cidade
FROM estado, cidade
WHERE estado.id = cidade.estado_id;

-- 2.	Escreva o comando que liste os nomes das cidades ativas e as respectivas siglas do estado. 
SELECT
	estado.sigla sigla_estado
    ,cidade.nome
FROM estado, cidade
WHERE estado.id = cidade.estado_id AND cidade.ativo = "S";

-- 3.	Escreva o comando que liste os nomes dos cliente e os nomes das respectivas cidades. 
SELECT 
	cliente.nome
    ,cidade.nome nome_cidade
FROM cidade, cliente
WHERE cidade.id = cliente.cidade_id;

-- 4.	Escreva o comando que liste os nomes dos cliente e os nomes das respectivas cidades. Liste somente os clientes que moram na cidade de Paranavaí.
SELECT 
	cliente.nome
    ,cidade.nome nome_cidade
    
FROM cidade, cliente
WHERE cidade.id = cliente.cidade_id AND cidade.nome LIKE '%PARANAVAÍ%' ;

-- 5.	Escreva o comando que liste os nomes das cidades e as respectivas siglas do estado. Liste somente as cidades ativas.
SELECT
	estado.sigla
    ,cidade.nome nome_cidade
FROM cidade, estado
WHERE estado.id = cidade.estado_id AND cidade.ativo = 'S';

-- 6.	Escreva o comando que liste os nomes dos funcionários e os nomes das respectivas cidades. 
SELECT
	funcionario.nome nome_funcionario
    ,cidade.nome nome_cidade
FROM funcionario, cidade
WHERE cidade.id = funcionario.cidade_id;

-- 7.	Escreva o comando que liste os nomes dos funcionários e a sigla do respectivo estado. 
SELECT
	funcionario.nome nome_funcionario
    ,estado.sigla
FROM funcionario, cidade, estado
WHERE cidade.id = funcionario.cidade_id AND estado.id = cidade.estado_id;

-- 8.	Escreva o comando que liste os nomes dos cliente e os nomes das respectivas cidades. Liste somente os clientes que moram na região sul.
SELECT
	cliente.nome nome_cliente
    ,cidade.nome nome_cidade
FROM cliente, cidade, estado
WHERE estado.id = cidade.estado_id 
	AND cidade.id = cliente.cidade_id 
	AND (estado.sigla = "RS" 
	OR estado.sigla = "SC" 
    OR estado.sigla = "PR");
