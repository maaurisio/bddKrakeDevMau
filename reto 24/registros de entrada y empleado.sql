select * from registros_entrada
select * from empleado

SELECT
    re.cedula_empleado, -- La cédula está en registros_entrada
    re.fecha,           -- La fecha del registro está en registros_entrada
    e.nombre            -- El nombre del empleado está en la tabla empleado
FROM
    empleado e,
    registros_entrada re
WHERE
    e.codigo_empleado = re.codigo_empleado -- Unimos por el código de empleado
    AND (
        -- Primer conjunto de condiciones
        (
            re.fecha BETWEEN '2023-08-01' AND '2023-08-31'
            AND re.cedula_empleado LIKE '%17%' -- Usamos re.cedula_empleado aquí
        )
        OR
        -- Segundo conjunto de condiciones
        (
            re.hora BETWEEN '08:00:00' AND '12:00:00'
            AND re.cedula_empleado LIKE '%17%' -- Usamos re.cedula_empleado aquí
        )
        OR
        -- Tercer conjunto de condiciones
        (
            re.fecha BETWEEN '2023-10-06' AND '2023-10-20'
            AND re.cedula_empleado LIKE '%08%' -- Usamos re.cedula_empleado aquí
            AND re.hora BETWEEN '09:00:00' AND '13:00:00'
        )
    )
ORDER BY
    re.cedula_empleado, re.fecha, re.hora;



	SELECT
    * -- Obtiene todas las columnas de la tabla 'empleado'
FROM
    empleado
WHERE
    codigo_empleado IN (
        SELECT
            codigo_empleado -- Selecciona los códigos de empleado de los registros
        FROM
            registros_entrada
        WHERE
            cedula_empleado = '2201' -- Filtra por la cédula específica en registros_entrada
    );