create table ciudad (
    id int,
    nombre varchar(45) not null,
    constraint id_ciudad_pk primary key (id)
);

create table municipio (
    id int,
    nombre varchar(45) not null,
    ciudad_id int,
    constraint municipio_ciudad_fk foreign key (ciudad_id) references ciudad (id), -- Nombre de FK más claro
    constraint id_municipio_pk primary key (id)
);

create table proyecto (
    id int,
    proyecto varchar (50) not null,
    monto money not null,
    fecha_inicio date,
    fecha_entrega date,
    constraint id_proyecto_pk primary key (id)
);

create table proyecto_municipio (
    municipio_id int, -- Tipo de dato añadido
    proyecto_id int,  -- Tipo de dato añadido
    constraint proyecto_municipio_municipio_fk foreign key (municipio_id) references municipio (id), -- Nombre de FK más claro
    constraint proyecto_municipio_proyecto_fk foreign key (proyecto_id) references proyecto (id),     -- Nombre de FK más claro
    constraint proyecto_municipio_pk primary key (municipio_id, proyecto_id)
);

-- Inserts para la tabla 'ciudad'
INSERT INTO ciudad (id, nombre) VALUES
(1, 'Quito'),
(2, 'Guayaquil'),
(3, 'Cuenca'),
(4, 'Ambato'),
(5, 'Loja');

-- Inserts para la tabla 'municipio'
INSERT INTO municipio (id, nombre, ciudad_id) VALUES
(101, 'Centro Histórico', 1),   -- Quito
(102, 'La Mariscal', 1),       -- Quito
(201, 'Samborondón', 2),       -- Guayaquil
(301, 'El Valle', 3),          -- Cuenca
(401, 'Izamba', 4);            -- Ambato

-- Inserts para la tabla 'proyecto'
INSERT INTO proyecto (id, proyecto, monto, fecha_inicio, fecha_entrega) VALUES
(1001, 'Construccion Vial Sector Norte', 1500000.00, '2024-01-15', '2025-06-30'),
(1002, 'Mejora de Parque Central', 250000.50, '2024-03-01', '2024-12-15'),
(1003, 'Instalacion de Fibra Optica', 800000.75, '2024-05-10', '2025-03-20'),
(1004, 'Programa de Reciclaje Urbano', 120000.00, '2024-07-01', '2024-11-30'),
(1005, 'Rehabilitacion de Hospital Regional', 3000000.00, '2024-09-01', '2026-08-31');

-- Inserts para la tabla 'proyecto_municipio' (Tabla de relación)
-- Asegurarse que los IDs de municipio y proyecto existan en sus respectivas tablas.
INSERT INTO proyecto_municipio (municipio_id, proyecto_id) VALUES
(101, 1001), -- Proyecto 1001 en Municipio 101 (Quito)
(102, 1002), -- Proyecto 1002 en Municipio 102 (Quito)
(201, 1001), -- Proyecto 1001 también en Municipio 201 (Guayaquil)
(301, 1003), -- Proyecto 1003 en Municipio 301 (Cuenca)
(401, 1004); -- Proyecto 1004 en Municipio 401 (Ambato)

--consulta
select m.nombre, p.proyecto
from municipio m, proyecto p, proyecto_municipio pm
where m.id = pm.municipio_id
and p.id = pm.proyecto_id

--subconsulta2
SELECT
    p.proyecto
FROM
    proyecto p
WHERE
    p.id IN (
        SELECT pm.proyecto_id -- <--- Ahora devuelve el proyecto_id
        FROM proyecto_municipio pm
        WHERE pm.municipio_id = 101 -- <--- Filtra por un municipio_id específico
    );
---------------------
---------------------
SELECT
    m.nombre,
    Count(pm.proyecto_id)    
FROM
    municipio m, proyecto_municipio pm
WHERE
    m.id = pm.municipio_id
GROUP BY
	m.nombre;

--consulta2
select m.nombre, p.proyecto
from municipio m, proyecto p, proyecto_municipio pm
where m.id = pm.municipio_id
and p.id = pm.proyecto_id
and m.nombre like '%GAD%'

-------------------------
SELECT
    m.nombre,
    min(pm.proyecto_id)    
FROM
    municipio m, proyecto_municipio pm
WHERE
    m.id = pm.municipio_id
GROUP BY
	m.nombre;

--consulta3
select m.nombre, c.nombre
from municipio m, ciudad c
where c.id = m.ciudad_id
--subconsulta3
SELECT
    p.proyecto
FROM
    proyecto p
WHERE
    p.id IN (
        SELECT pm.proyecto_id -- <--- Ahora devuelve el proyecto_id
        FROM proyecto_municipio pm
        WHERE pm.municipio_id = 3 -- <--- Filtra por un municipio_id específico
    );
-------------------------
SELECT
    m.nombre,
    max(pm.proyecto_id)    
FROM
    municipio m, proyecto_municipio pm
WHERE
    m.id = pm.municipio_id
GROUP BY
	m.nombre;