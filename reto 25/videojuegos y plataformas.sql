select * from  videojuegos
select * from  plataformas

SELECT
    codigo_videojuego,           -- La columna por la que queremos agrupar
    count(*) AS total_plataformas -- La función de agregación (suma) para cada grupo
FROM
    plataformas
GROUP BY
    codigo_videojuego;           -- Agrupamos por la columna 'producto'


---------------
SELECT
    ROUND(
        AVG(
            CAST(videoj.valoracion AS DECIMAL) -- Aquí está la corrección: CAST(expresión AS tipo)
        )
    ) AS videojuegos_promedio
FROM
    videojuegos videoj