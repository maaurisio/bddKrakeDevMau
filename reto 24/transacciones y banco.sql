select * from  transacciones
select * from  banco

--consulta
select * from  transacciones tran 
where tran.tipo = 'C' and tran.numero_cuenta 
between '22001' and '22004'


--subconsulta 
select * from  transacciones tran, banco ban
where tran.codigo = ban.codigo_banco
and ban.codigo_banco = 1


