--PRODUCTOS
update productos set stock = 0 where descripcion is null
--CUENTAS
update cuentas set saldo = 12.00 where cedula_propietario like '17%'
--ESTUDIANTES
update estudiantes set apellido = 'Hernández' where cedula like '17%'
--REGISTROS ENTRADA
UPDATE registros_entrada
SET cedula_empleado = '082345679'
WHERE EXTRACT(MONTH FROM fecha) = 8;
--VIDEOJUEGOS
update videojuegos set descripcion = 'MEJOR PUNTUADO' where valoracion > 9
--TRANSACCIONES
UPDATE transacciones
SET tipo = 'T'
WHERE
    monto::NUMERIC > 100 AND monto::NUMERIC < 500
    AND EXTRACT(MONTH FROM fecha) = 9
    AND hora BETWEEN '14:00:00' AND '20:00:00';