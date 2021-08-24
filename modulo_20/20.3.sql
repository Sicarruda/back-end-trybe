USE sakila;

-- usando where;
SELECT * FROM actor WHERE last_name = 'DAVIS';

/* OPERADORES - DESCRIÇÃO
	= 			IGUAL
    <>			DIFERENTE DE
    >			MAIOR QUE
    <			MENOR QUE
    >=			MAIOR QUE OU IGUAL A 
    <=			MENOR QUE OU IGUAL A 
    AND			OPERADOR LOGICO EXECUTE
    OR			OPERADOR LOGICO OU
    IS			COMPARA COM VALORES BOOLEANOS (TRUE, FALSE, NULL)
    NOT 		NEGAÇÃO
    
    A ORDEM DOS OPERADORES 
    PARENTESES => MULTIPLICAÇÃO, DIVISÃO => SUBTRAÇÃO, ADIÇÃO => NOT => AND => OR
*/

SELECT * FROM  film
WHERE length > 50
ORDER BY length;
SELECT * FROM film
WHERE title <> 'ALIEN CENTER'
AND replacement_cost > 20
AND rating = 'G'
OR rating ="PG-13";

SELECT *  FROM rental
WHERE return_date IS NULL;

SELECT * FROM staff
WHERE active IS TRUE;

SELECT * FROM address
WHERE address2 IS NOT NULL;

SELECT * FROM film
WHERE title  NOT LIKE 'a%'

/* LIKE
 O LIKE é usado para buscar, por meio de uma sequência específica de caracteres. Além disso, dois "curingas", ou modificadores, são normalmente usados com o LIKE:
    % - O sinal de percentual, que pode representar zero, um ou múltiplos caracteres
    _ - O underscore (às vezes chamado de underline, no Brasil), que representa um único caractere
*/
-- Encontra qualquer resultado finalizando com "don"
SELECT * FROM sakila.film
WHERE title LIKE '%don';

-- Encontra qualquer resultado iniciando com "plu"
SELECT * FROM sakila.film
WHERE title LIKE 'plu%';

-- Encontra qualquer resultado que contém "plu"
SELECT * FROM sakila.film
WHERE title LIKE '%plu%';

-- Encontra qualquer resultado que inicia com "p" e finaliza com "r"
SELECT * FROM sakila.film
WHERE title LIKE 'p%r';

-- Encontra qualquer resultado em que o segundo caractere da frase é "C"
SELECT * FROM sakila.film
WHERE title LIKE '_C%';

-- Encontra qualquer resultado em que o título possui exatamente 8 caracteres
SELECT * FROM sakila.film
WHERE title LIKE '________';

-- Encontra todas as palavras com no mínimo 3 caracteres e que iniciam com E
SELECT * FROM sakila.film
WHERE title LIKE 'E__%';
    

