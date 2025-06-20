select * from  ventas
select * from  productos

--consulta
select pro.nombre, pro.stock,ven.cantidad 
from ventas ven, productos pro 
where pro.nombre like '%m%' or pro.descripcion = '0'


--subconsulta
select pro.nombre, pro.stock
from ventas ven, productos pro 
where pro.codigo = 5