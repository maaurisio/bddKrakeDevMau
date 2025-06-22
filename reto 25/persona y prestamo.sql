SELECT * FROM persona;
SELECT * FROM prestamo;

SELECT
    cedula,          -- Lo quiero en mi resultado porque es la base de mis grupos
    SUM(cantidad_ahorrada) AS monto_total_prestamo -- Quiero el conteo para cada uno de esos grupos
FROM
    persona
GROUP BY
    persona.cedula;          -- ¡Y aquí le digo que agrupe por profesor!

----------------------------------
----------------------------------
SELECT
    Count(*) as total_personas  -- La función de agregación (suma) para cada grupo
FROM
    persona per
WHERE
	per.numero_hijos > 1