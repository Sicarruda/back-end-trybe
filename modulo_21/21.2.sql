-- JOIN

/* INNER JOIN
permite retornar todos os resultados em que a condição da cláusula ON for satisfeita. A sintaxe de um INNER JOIN é a seguinte:

SELECT t1.coluna, t2.coluna
FROM tabela1 AS t1
INNER JOIN tabela2 AS t2
ON t1.coluna_em_comum = t2.coluna_em_comum;
*/
-- exemplo
SELECT city.city, city.country_id, country.country
FROM sakila.city AS city
INNER JOIN sakila.country AS country
ON city.country_id = country.country_id;

-- adicionando mais de um inner join 
SELECT A.address, C.city, A.district, P.country
-- tabela da esquerda left join não importa se as informaçoes estão nulas na direita
FROM sakila.address AS A
-- tabela da direita rigth join 
INNER JOIN sakila.city AS C
ON A.city_id = C.city_id
INNER JOIN sakila.country AS P
ON C.country_id = P.country_id
WHERE A.city_id = 449; 

/* LEFT JOIN
Retorna duas tabelas retornando todos os valores da tabela da esquerda tendo ou não relacionamento com a tabela da direita, neste caso ele retornará NULL.
A tabela da esquerda é toda tabela que venha do FROM e não do LEFT JOIN
*/

/* RIGHT JOIN
Retorna duas tabelas retornando todos os valores da tabela da direitra tendo ou não relacionamento com a tabela da esquerda, neste caso ele retornará NULL.
A tabela da direita é toda tabela que venha do RIGTH JOIN e não do FROM
*/
