select * from clientes;
select * from compras;

obtner el monto total 
de compras realizadas por cada cliente

SELECT
    cedula,
    SUM(monto) AS total_comprado
FROM
    compras
GROUP BY
    cedula;

	--2024-05-15
--COUNT: (n numero de filas de la tbla)
SELECT
    comp.fecha_compra,
    COUNT(comp.fecha_compra) AS numero_de_compras
FROM
    compras comp
where 
	comp.fecha_compra = '2024-05-15'
GROUP BY
    comp.fecha_compra
	

