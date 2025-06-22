select * from  transacciones
select * from  banco

select
count(*) as total_transacciones_credito
from transacciones trans
where 
trans.tipo = 'C';

SELECT
	numero_cuenta,
    ROUND(
        AVG(
           CAST (tran.monto as decimal)
        )
    ) AS monto_promedio
FROM
    transacciones tran
	GROUP BY
    numero_cuenta;