SELECT * FROM persona;
SELECT * FROM prestamo;

--consulta
select per.cantidad_ahorrada, pre.monto, pre.garante from persona per, prestamo pre  where pre.cedula = per.cedula 
	AND pre.monto >= 100::money -- Convierte 100 a tipo MONEY
    AND pre.monto <= 1000::money; -- Convierte 1000 a tipo MONEY
--subconsulta

select per.cedula, per.nombre, per.apellido, per.estatura, per.fecha_nacimiento, per.hora_nacimiento, per.cantidad_ahorrada, per.numero_hijos
from persona per, prestamo pre where per.nombre = 'Sean'