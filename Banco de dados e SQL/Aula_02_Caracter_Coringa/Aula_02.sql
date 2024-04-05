/* Exercicio 02 */
 
 
 /* Soluções */
 
select nome,sexo, endereco
from cliente
where endereco like '%RJ';


select nome,sexo, endereco
from cliente
where endereco like 'Oscar cur%';


select nome,sexo, endereco
from cliente
where endereco like '%Centro%';