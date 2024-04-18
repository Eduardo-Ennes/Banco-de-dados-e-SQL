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

+----------+---------------+
| count(*) | departamento  |
+----------+---------------+
|       21 | Filmes        |
|       36 | Joalheria     |
|       37 | Música        |
|       38 | Crianças      |
|       39 | Ferramentas   |
|       40 | Esporte       |
|       41 | Brinquedos    |
|       43 | Calçados      |
|       45 | Bebês         |
|       46 | Alimentícios  |
|       46 | Saúde         |
|       46 | Automotivo    |
|       47 | Industrial    |
|       47 | Jardim        |
|       47 | Books         |
|       48 | Outdoors      |
|       49 | Eletronicos   |
|       49 | Games         |
|       52 | Computadores  |
|       52 | Lar           |
|       53 | Roupas        |
|       53 | Beleza        |
+----------+---------------+

 
select count(*), nome from funcionarios 
where departamento = 'filmes';
/* 21 filmes  */ 

+----------+----------+
| count(*) | nome     |
+----------+----------+
|       21 | Gonzales |
+----------+----------+


select count(*), nome from funcionarios 
where departamento = 'roupas';
/* 53 roupas */

+----------+-------+
| count(*) | nome  |
+----------+-------+
|       53 | Black |
+----------+-------+


select departamento from funcionarios 
where departamento = 'roupas'
or 
departamento = 'filmes';
/* Tabela muito grande para pôr aqui. */


/* ... */
select nome from funcionarios
where 
(departamento = 'lar' and sexo = 'feminino')
or
(departamento = 'filmes' and sexo = 'feminino');
/* Tabela muito grande para pôr aqui. */


/* ... */
select nome, sexo from funcionarios
where sexo = 'Masculino'
or 
departamento = 'jardim'; 
/* Tabela muito grande para pôr aqui. */