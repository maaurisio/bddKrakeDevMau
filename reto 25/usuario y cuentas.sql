--reto 25
select avg(cast(saldo as numeric))
from cuentas cuen, usuario usu 
where cuen.cedula_propietario = usu.cedula
and cuen.cedula_propietario = '17286'

select tipo_cuenta, count(*) as total_cuentas 
from usuario
group by tipo_cuenta

select * from cuentas
select * from usuario