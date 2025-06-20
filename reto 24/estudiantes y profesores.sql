SELECT * FROM estudiantes;
SELECT * FROM profesores;

--consulta
select pro.codigo,est.nombre, est.apellido from estudiantes est, profesores pro  where est.apellido like '%n%';

--subconsulta
select est.cedula,est.nombre, est.apellido, est.email, est.fecha_nacimiento from estudiantes est, profesores pro  where pro.nombre like 'Francisco';
