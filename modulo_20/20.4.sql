USE sakila;
SELECT * FROM actor;

/*INSERT INTO
 adicionando valores em uma tabela, mas ignorado erros,
insert ignore into actor (first_name, last_name) VALUES ('Ana', 'julia');
não entendi direito esse comando
*/
INSERT INTO actor (first_name, last_name) VALUES ('Ana', 'julia');

/*UPDATE
 o comando update atualiza a tabela
 TOMAR CUIDADO COM A ATUALIZAÇÂO...
 sem nenhuma especificação ele pode alterar a tabela toda em vez do elemento desejado
 */
UPDATE actor set last_name = 'FALIANOPS'
where actor_id = 203; 

/*DELETE
CUIDADO COM A FALTA DE ESPECIFICAÇÂO
ao utilizar o DELETE FROM ele apaga a tabela inteira se não for especificado o que tem que ser deletado
o DELETE guarda dados em memoria posibilitando que o ROLLBACK possa recuperar a deleção;
o TRUNCATE não guarda nada em memoria se deletar com o TRUNCATE ta deletado sinto muito pode chorar 
*/
delete from actor
where actor_id = 203;
