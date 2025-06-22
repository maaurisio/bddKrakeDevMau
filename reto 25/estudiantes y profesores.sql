select * from estudiantes;
select * from profesores;

SELECT
    e.codigo_profesor,
    COUNT(*) AS total_estudiantes -- O COUNT(*) si no tienes una columna de ID específica para estudiantes
FROM
    estudiantes e
GROUP BY
    e.codigo_profesor


SELECT
    -- Paso 5: Redondear el promedio de edad al entero más cercano
    ROUND(
        -- Paso 4: Calcular el promedio de las edades aproximadas de todos los estudiantes
        AVG(
            -- Paso 3: Restar el año de nacimiento al año actual para obtener la edad aproximada en años
            EXTRACT(YEAR FROM CURRENT_DATE) -- Paso 1: Extraer el año de la fecha actual (ej. 2025)
            -
            EXTRACT(YEAR FROM fecha_nacimiento) -- Paso 2: Extraer el año de la fecha de nacimiento de cada estudiante
        )
    ) AS edad_promedio -- Darle un nombre descriptivo a la columna resultante
FROM
    estudiantes; -- Indicar que los datos provienen de la tabla 'estudiantes'

	