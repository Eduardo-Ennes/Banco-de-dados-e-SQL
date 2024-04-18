

/* NULL */
select nome, email from cliente
where email IS NULL;

select nome, email from cliente
where email IS NOT NULL;



/* UPDATE */
UPDATE = ATUALIZE 

update cliente 
set email = 'lilian.rodrugues@gmail.com'
where nome = 'Lilian';

update cliente 
set email = 'Jorge56@gmail.com'
where nome = 'JORGE';



/* DELETE */
/* PASSOS DE SEGURANÇA */

select count(*) from cliente;  --> 6

+----------+
| count(*) |
+----------+
|        6 |
+----------+


select count(*) from cliente   --> 1
where nome = 'ana';

delete from cliente
where nome = 'ana';

select count(*) from cliente;   --> 5

insert into cliente values('Zakarias', 'M', 'zacarias@ig.com.br', 123564563, 21986958693, 'Jardim - Jardim oceanico - Rio de Janeiro - RJ')