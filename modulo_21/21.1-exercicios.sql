/*
    Faça uma query que exiba a palavra 'trybe' em CAIXA ALTA.
    Faça uma query que transforme a frase 'Você já ouviu falar do DuckDuckGo?' em 'Você já ouviu falar do Google?' .
    Utilizando uma query , encontre quantos caracteres temos em 'Uma frase qualquer' .
    Extraia e retorne a palavra "JavaScript" da frase 'A linguagem JavaScript está entre as mais usadas' .
    Por fim, padronize a string 'RUA NORTE 1500, SÃO PAULO, BRASIL' para que suas informações estejam todas em caixa baixa.

*/

SELECT UCASE('tribe');

SELECT REPLACE('Você já ouviu falar do DuckDuckGo?', 'DuckDuckGo', 'Google');

SELECT LENGTH('Uma frase qualquer');

SELECT SUBSTRING('A linguagem JavaScript está entre as mais usadas',13,10 );

SELECT LCASE('RUA NORTE 1500, SÃO PAULO, BRASIL');

SELECT title, film_id, IF (title = 'ACE GOLDFINGER', "Já assisti a esse filme", "Não conheço o filme") AS "conheço o filme?" FROM sakila.film;

SELECT title, rating,
	CASE 
		WHEN rating = 'G' THEN "Livre para todos"
        WHEN rating = 'PG' THEN "Não recomendado para menores de 10 anos"
        WHEN rating = 'PG-13' THEN "Não recomendado para menores de 13 anos"
        WHEN rating = 'R' THEN  "Não recomendado para menores de 17 anos"
		ELSE "Proibido para menores de idade"
	END AS 'público-alvo'
FROM sakila.film;
        
/* Desafios com DIV e MOD
Dica: Números pares são aqueles que podem ser divididos em duas partes iguais. Ou seja, são aqueles cuja divisão por 2 retorna resto 0.

    Monte uma query usando o MOD juntamente com o IF para descobrir se o valor 15 é par ou ímpar. Chame essa coluna de 'Par ou Ímpar' , onde ela pode dizer 'Par' ou 'Ímpar'.
    Temos uma sala de cinema que comporta 220 pessoas. Quantos grupos completos de 12 pessoas podemos levar ao cinema sem que ninguém fique de fora?
    Utilizando o resultado anterior, responda à seguinte pergunta: temos lugares sobrando? Se sim, quantos?
*/

SELECT IF(15 MOD 2 = 0, 'PAR', 'IMPAR') AS 'PAR OU IMPAR';
SELECT 220 DIV 12; -- 18
SELECT 220 MOD 12; -- 4

/*
    Monte uma query que gere um valor entre 15 e 20 .
    Monte uma query que exiba o valor arredondado de 15.7515971 com uma precisão de 5 casas decimais.
    Estamos com uma média de 39.494 de vendas de camisas por mês. Qual é o valor aproximado para baixo dessa média?
    Temos uma taxa de inscrição de 85.234% no curso de fotografia para iniciantes. Qual é o valor aproximado para cima dessa média?
*/

SELECT ROUND(15 + (RAND() * 5));
SELECT ROUND(15.7515971,5);
SELECT FLOOR(39.494);
SELECT CEIL(85.234);
SELECT DATEDIFF('2030-01-20', '2021-08-24');
SELECT TIMEDIFF('10:25:45', '11:00:00');

/*
Monte uma query que exiba:
    A média de duração dos filmes e dê o nome da coluna de 'Média de Duração';
    A duração mínima dos filmes como 'Duração Mínima';
    A duração máxima dos filmes como 'Duração Máxima';
    A soma de todas as durações como 'Tempo de Exibição Total';
    E finalmente, a quantidade total de filmes cadastrados na tabela sakila.film como 'Filmes Registrados'.
*/

SELECT AVG(length) AS 'Média de Duração',
MIN(length) AS 'Duração Mínima', 
MAX(length) AS 'Duração Máxima',
SUM(length) AS 'Tempo de Exibição Total',
COUNT(length) AS 'Filmes Registrados'
FROM sakila.film;
