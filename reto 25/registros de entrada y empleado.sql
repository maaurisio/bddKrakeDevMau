select * from registros_entrada
select * from empleado

--group by
SELECT
    cedula_empleado,             -- La columna por la que estamos agrupando
    COUNT(*) AS total_registros  -- Un alias más descriptivo para el conteo
FROM
    registros_entrada
GROUP BY
    cedula_empleado; 

--------------------------
select
min(fecha) AS fecha_minima,
max(fecha) AS fecha_maxima
FROM
    registros_entrada