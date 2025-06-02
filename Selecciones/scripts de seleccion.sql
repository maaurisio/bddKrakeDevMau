--PRODUCTOS 
select * from productos where nombre like 'Q%'
select * from productos where descripcion is null
--entre
SELECT * FROM productos WHERE precio BETWEEN '2.00'::MONEY AND '3.00'::MONEY;

--CUENTAS
select numero_cuenta, saldo from  cuentas
SELECT *
FROM cuentas
WHERE fecha_creacion BETWEEN (CURRENT_DATE - INTERVAL '2 months') AND CURRENT_DATE;

--CURRENT_DATE: Obtiene la fecha actual del sistema.
--INTERVAL '2 months': Es una forma de restar o sumar periodos de tiempo en SQL.
--BETWEEN X AND Y: Selecciona los registros donde la fecha_creacion está entre X y Y (inclusive).

SELECT numero_cuenta, saldo
FROM cuentas
WHERE fecha_creacion BETWEEN (CURRENT_DATE - INTERVAL '2 months') AND CURRENT_DATE;

--ESTUDIANTES
SELECT nombre, cedula FROM estudiantes;
SELECT nombre FROM estudiantes where cedula like '17%';
SELECT nombre, apellido FROM estudiantes where nombre like 'A%';

--REGISTROS_ENTRADAS
select cedula_empleado, fecha, hora from  registros_entrada
SELECT * FROM registros_entrada WHERE hora BETWEEN '07:00:00'AND '14:00:00';
SELECT * FROM registros_entrada where hora > '08:00:00';

--VIDEOJUEGOS
SELECT * FROM videojuegos where nombre like 'C%';
SELECT * FROM videojuegos WHERE valoracion BETWEEN 9 AND 10;
select * from videojuegos where descripcion is null

--TRANSACCIONES
select * from  transacciones where tipo = 'D';
SELECT * FROM transacciones WHERE monto BETWEEN '200.00'::MONEY AND '2000.00'::MONEY;
select codigo, monto, tipo, fecha from  transacciones where fecha != null;