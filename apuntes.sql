create table registros_entrada (
codigo_registro int not null,
cedula_empleado char(10) not null,
fecha date not null,
hora time not null,
constraint codigo_registro_pk primary key (codigo_registro)
);


--relacionar tablas de muchos a uno
ALTER TABLE registros_entrada
ADD CONSTRAINT fk_codigo_empleado
FOREIGN KEY (codigo_empleado)
REFERENCES empleado (codigo_empleado)

--agregar columnas a una tabla
ALTER TABLE registros_entrada
ADD COLUMN codigo_empleado int not null;
--editar
update cuentas set saldo = 12.00 where cedula_propietario like '17%'
--ESTUDIANTES
update estudiantes set apellido = 'Hernández' where cedula like '17%'
--eliminar
delete from registros_entrada
--BETWEEN
SELECT * FROM registros_entrada WHERE hora BETWEEN '07:00:00'AND '14:00:00';
--select con alias
select cli.nombre from clientes cli where cli.nombre = 'Monica';
--select
select * from clientes;

--COUNT: (n numero de filas de la tbla)
select count (*) from clientes;

--MIN: valor minimo de equis columna
select min (monto) from compras;

--MAX: valor maximo de equis columna
select max (monto) from compras;

--SUM: valor de la suma de equis columna
select sum (stock) from productos;

--AVG: promedio de equis columna 
select avg (cast(precio as numeric)) from productos;

--group by
SELECT
    producto,           -- La columna por la que queremos agrupar
    SUM(monto) AS total_ventas -- La función de agregación (suma) para cada grupo
FROM
    ventas
GROUP BY
    producto;           -- Agrupamos por la columna 'producto'


---------------------------------
------------ROUND----------------

	SELECT
    numero_cuenta,
    ROUND(
        AVG(
            CAST(tran.monto AS DECIMAL) -- Aquí está la corrección: CAST(expresión AS tipo)
        )
    ) AS monto_promedio
FROM
    transacciones tran
GROUP BY
    numero_cuenta; -- Necesitas un GROUP BY porque 'numero_cuenta' no es una función de agregación

--------------------------
select
min(fecha) AS fecha_minima,
max(fecha) AS fecha_maxima
FROM
    registros_entrada