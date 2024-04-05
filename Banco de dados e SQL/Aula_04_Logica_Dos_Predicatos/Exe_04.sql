/* Exercico 02 */

/* soluções */ 
select * from gafanhotos 
where nacionalidade = 'EUA' and nacionalidade 'Irlanda'



/* Para mais de uma condição usar parenteses */
/* 21 filmes  */
select count(*), departamento
from funcionarios
group by departamento
order by 1;
 
select count(*), nome from funcionarios 
where departamento = 'filmes';
/* 21 filmes  */ 

select count(*), nome from funcionarios 
where departamento = 'roupas';
/* 53 roupas */

select departamento from funcionarios 
where departamento = 'roupas'
or 
departamento = 'filmes';

/* ... */
select nome from funcionarios
where 
(departamento = 'lar' and sexo = 'feminino')
or
(departamento = 'filmes' and sexo = 'feminino');

/* ... */
select nome, sexo from funcionarios
where sexo = 'Masculino'
or 
departamento = 'jardim'; 