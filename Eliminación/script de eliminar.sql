--PRODUCTOS
delete from productos where descripcion is null
--CUENTAS
delete from cuentas where cedula_propietario like '10%'
--ESTUDIANTES
delete from estudiantes where cedula like '%05'
--REGISTROS_ENTRADAS
delete from registros_entrada where EXTRACT(MONTH FROM fecha) = 5;
--VIDEOJUEGOS
delete from videojuegos where valoracion < 7
--TRANSACCIONES
DELETE FROM transacciones
WHERE
    hora BETWEEN '14:00:00' AND '18:00:00'
    AND EXTRACT(MONTH FROM fecha) = 8
    AND EXTRACT(YEAR FROM fecha) = EXTRACT(YEAR FROM CURRENT_DATE);