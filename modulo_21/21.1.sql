-- Converte o texto da string para CAIXA ALTA
SELECT UCASE('Oi, eu sou uma string');

-- Converte o texto da string para caixa baixa
SELECT LCASE('Oi, eu sou uma string');

-- Substitui as ocorrências de uma substring em uma string
SELECT REPLACE('Oi, eu sou uma string', 'string', 'cadeia de caracteres');

-- Retorna a parte da esquerda de uma string de acordo com o número de caracteres especificado
SELECT LEFT('Oi, eu sou uma string', 3);

-- Retorna a parte da direita de uma string de acordo com o número de caracteres especificado
SELECT RIGHT('Oi, eu sou um string', 6);

-- Exibe o tamanho, em caracteres, da string
SELECT LENGTH('Oi, eu sou uma string');

-- Extrai parte de uma string de acordo com o índice de um caractere inicial e a quantidade de caracteres a extrair
SELECT SUBSTRING('Oi, eu sou uma string', 5, 2);

-- Se a quantidade de caracteres a extrair não for definida, então a string será extraída do índice inicial definido, até o seu final
SELECT SUBSTRING('Oi, eu sou uma string', 5);

-- usando os comandos acima em colunas
SELECT UCASE(title) FROM sakila.film LIMIT 10;
SELECT LCASE(title) FROM sakila.film LIMIT 10;
SELECT REPLACE(title, 'ACADEMY', 'FOO') FROM sakila.film WHERE film_id = 1;
SELECT LEFT(title, 7) FROM sakila.film WHERE film_id = 1;
SELECT RIGHT(title, 8) FROM sakila.film WHERE film_id = 1;
SELECT LENGTH(title) FROM sakila.film WHERE film_id = 1;
SELECT SUBSTRING(title, 5, 2) FROM sakila.film WHERE film_id = 1;
SELECT SUBSTRING(title, 5) FROM sakila.film WHERE film_id = 1; 

/* IF E CASE
O SELECT IF recebe 3 condições SELECT IF(condição a ser avaliada, caso seja verdadeira, caso seja falsa).
O CASE permite fazer varias condições de verificação utilizando o WHEN e THEN 
*/
SELECT * FROM sakila.film;
SELECT title, IF(rental_rate > 0.99, 'CARO', 'BARATO') AS preço FROM sakila.film;

SELECT title, rental_rate,
	CASE
		WHEN rental_rate = 0.99 THEN 'BARATO'
        WHEN rental_rate = 2.99 THEN 'MÉDIO'
        WHEN rental_rate = 4.99 THEN 'CARO'
	ELSE rental_rate = 'NÃO CLASSIFICADO'
END AS valor
FROM sakila.film;
        
/* Funções matemáticas do MySQL
Para as operações matemáticas mais comuns, podemos empregar os operadores matemáticos usuais. 
SELECT 5 + 5; SELECT 5 - 5; SELECT 5 * 5; SELECT 5 / 5;

O DIV retorna o resultado inteiro de uma divisão, ignorando as casas decimais de um número.
SELECT 10 DIV 3; -- 3
SELECT 10 DIV 2; -- 5
SELECT 14 DIV 3; -- 4
SELECT 13 DIV 2; -- 6

Já o operador MOD retorna o resto de uma divisão como resultado.
SELECT 10 MOD 3; -- 1
SELECT 10 MOD 2; -- 0
SELECT 14 MOD 3; -- 2
SELECT 13 MOD 2; -- 1
SELECT 10.5 MOD 2; -- 0.5, ou seja, 2 + 2 + 2 + 2 + 2 = 10, restando 0.5
*/
SELECT rental_duration + rental_rate FROM sakila.film LIMIT 10;
SELECT rental_duration - rental_rate FROM sakila.film LIMIT 10;
SELECT rental_duration / rental_rate FROM sakila.film LIMIT 10;
SELECT rental_duration * rental_rate FROM sakila.film LIMIT 10;

