/* Relatório geral de todos os clientes */ 
select f.idcliente, f.nome, f.sexo, f.cpf, e.cidade, e.estado, t.tipo, t.numero
from formulario f 
inner join enderecos e 
on f.idcliente = e.id_cliente
inner join telefone t 
on f.idcliente = t.id_cliente
where tipo NULL;