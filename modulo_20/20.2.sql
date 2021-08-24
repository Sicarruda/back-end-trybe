-- 18/08/21 bloco 20.2
use sakila;
-- usando concat; junta informação em uma unica coluna
SELECT * FROM actor;
select concat (first_name,' ', last_name) as full_name from actor;
-- usando distinct; retorna todos os elementos uma unica vez mesmo que repetidos 
select * from customer;
select distinct store_id, first_name from customer;
select distinct store_id, concat(first_name, ' ', last_name) as full_name from customer;
-- usando count; o count não retorna elementos que possuam null no registro, ele vai contar quantas linhas há na tabela   
select * from address;
select count(*) from address;
select count(address2) from address;
select count(first_name) from actor;
select count(distinct first_name) from actor;
SELECT count(*) FROM customer
WHERE active = 1 AND store_id = 1;
-- usando limit; o limit limita a quantidade de linhas retornadas pelo select, o offset ignora uma quantidade de linhas especificas
select * from country;
select * from country limit 15;
select * from country limit 10 offset 5;
-- caso eu precisse de uma busca mais refinada tenho que personalizar o query, abaixo a query vai retornar tudo o que estiver em country que seja igual a 'Brazil'
select * from country where country = 'Brazil';
-- procura termos que tenham "ba" em qualquer lugar; 
SELECT * FROM country WHERE country LIKE '%ba%';
-- usando order by; ele ordena a tabela em asc = ascendente, ou desc = descendente
select * from country order by country asc;
select * from country order by country desc;