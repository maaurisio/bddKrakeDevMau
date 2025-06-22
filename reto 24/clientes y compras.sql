--consulta
select cli.nombre, cli.apellido from clientes cli, compras com where cli.cedula like '%7%';

--subconsulta
select cli.cedula, cli.nombre, cli.apellido from clientes cli, compras com where  cli.nombre = 'Monica'

select * from clientes;
select * from compras;

