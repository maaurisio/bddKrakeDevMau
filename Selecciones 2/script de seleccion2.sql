--PRODUCTOS 
SELECT *
FROM productos
WHERE stock = 10 AND precio::NUMERIC < 10;
SELECT nombre, stock
FROM productos
WHERE
    nombre ILIKE '%m%' OR descripcion LIKE '% %';
select nombre from productos where descripcion is null
OR stock = 0;

--CUENTAS
select * from cuentas;
select numero_cuenta, saldo from cuentas where saldo::NUMERIC > 100 and saldo::NUMERIC < 1000;
select * from cuentas where saldo::NUMERIC = 0 OR cedula_propietario LIKE '%2';

--ESTUDIANTES
select * from estudiantes;
select * from estudiantes where nombre like 'M%' OR apellido LIKE '%z';
select nombre from estudiantes where cedula like '%32%' AND cedula LIKE '18%';
select nombre, apellido from estudiantes where cedula like '%06' OR cedula LIKE '17%';

--REGISTROS ENTRADA
select * from registros_entrada;
select fecha from registros_entrada where EXTRACT(MONTH FROM fecha) = 9 
OR cedula_empleado like '17%';
select fecha from registros_entrada where EXTRACT(MONTH FROM fecha) = 8 
AND cedula_empleado like '17%' AND hora BETWEEN '08:00:00'AND '12:00:00';

SELECT fecha
FROM registros_entrada
WHERE
    (
        (EXTRACT(MONTH FROM fecha) = 8 AND cedula_empleado LIKE '17%' AND hora BETWEEN '08:00:00' AND '12:00:00')
        OR
        (EXTRACT(MONTH FROM fecha) = 9 AND cedula_empleado LIKE '08%' AND hora BETWEEN '09:00:00' AND '13:00:00')
    );

--VIDEOJUEGOS
select * from videojuegos;
select nombre from videojuegos where nombre LIKE '%C%' OR valoracion = 7;
select nombre from videojuegos where codigo between 3 AND 7 OR valoracion = 7; 
select * from videojuegos where valoracion > 7 AND nombre LIKE 'C%' OR valoracion > 8 AND nombre LIKE 'D%';

--TRANSACCIONES
select * from transacciones;
select * from transacciones where tipo = 'C' AND numero_cuenta between '222001' AND '22004';
select * from transacciones where tipo = 'D' AND fecha = '2025-05-25' AND  numero_cuenta between '222007' AND '22010';
select * from transacciones where codigo between 1 AND 5 AND numero_cuenta between '22002' AND '22004 ' AND fecha between '2025-05-26' AND '2025-05-29';

