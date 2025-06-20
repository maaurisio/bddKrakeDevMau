SELECT
    cuen.numero_cuenta,
    usu.nombre
FROM
    cuentas cuen,
    usuario usu
WHERE
    cuen.cedula_propietario = usu.cedula
    AND cuen.saldo >= 100::money -- Convierte 100 a tipo MONEY
    AND cuen.saldo <= 1000::money; -- Convierte 1000 a tipo MONEY
	
select * from cuentas
select * from usuario

SELECT
    cuen.numero_cuenta,
	cuen.fecha_creacion,
    usu.nombre,
	usu.cedula
FROM
    cuentas cuen,
    usuario usu
WHERE
    cuen.cedula_propietario = usu.cedula
	AND cuen.fecha_creacion
	between '2022-09-21' AND '2023-09-21'