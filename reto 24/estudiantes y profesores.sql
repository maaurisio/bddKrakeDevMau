SELECT * FROM estudiantes;
SELECT * FROM profesores;

--consulta
select pro.codigo,est.nombre, est.apellido from estudiantes est, profesores pro  where est.apellido like '%n%';

