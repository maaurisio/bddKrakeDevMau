create table usuarios (
id int,
nombre varchar(25) not null,
apellido varchar(25) not null,
fecha_nacimiento DATE,
constraint id_usuario_pk primary key (id)
);

create table grupo (
id int,
nombre varchar(25) not null,
descripcion varchar(75),
fecha_creacion date,
constraint id_grupo_pk primary key (id)
)

--tabla rompimiento
create table usuarios_grupo (
--id's de las tablas a relacionar
us_codigo_usuarios int not null,
gr_codigo_grupo int not null,
constraint usuarios_fk foreign key (us_codigo_usuarios) references usuarios (id),
constraint grupo_fk foreign key (gr_codigo_grupo) references grupo (id),
constraint usuarios_grupo_pk primary key (us_codigo_usuarios, gr_codigo_grupo )
)

-- Inserts para la tabla 'usuarios'
INSERT INTO usuarios (id, nombre, apellido, fecha_nacimiento) VALUES
(1, 'Ana', 'García', '1990-05-15'),
(2, 'Luis', 'Martínez', '1988-11-20'),
(3, 'Marta', 'Pérez', '1995-03-01'),
(4, 'Carlos', 'Rodríguez', '1985-07-22'),
(5, 'Sofía', 'López', '1992-09-10');

-- Inserts para la tabla 'grupo'
INSERT INTO grupo (id, nombre, descripcion, fecha_creacion) VALUES
(101, 'Desarrolladores', 'Equipo de desarrollo de software', '2023-01-01'),
(102, 'Diseñadores UX', 'Creación de experiencias de usuario', '2023-02-10'),
(103, 'Marketing Digital', 'Estrategias de marketing online', '2023-03-20'),
(104, 'Recursos Humanos', 'Gestión de personal y bienestar', '2023-04-15'),
(105, 'Soporte Técnico', 'Asistencia a usuarios y sistemas', '2023-05-01');

-- Inserts para la tabla de relación 'usuarios_grupo'
-- Asegúrate de que los IDs de usuario y grupo existan en sus respectivas tablas.
INSERT INTO usuarios_grupo (us_codigo_usuarios, gr_codigo_grupo) VALUES
(1, 101), -- Ana es parte del grupo de Desarrolladores
(2, 102), -- Luis es parte del grupo de Diseñadores UX
(3, 103), -- Marta es parte del grupo de Marketing Digital
(4, 101), -- Carlos también es parte de Desarrolladores
(5, 104); -- Sofía es parte de Recursos Humanos

--Consulta
select usu.nombre, gru.nombre AS nombre_grupo from usuarios usu, grupo gru, usuarios_grupo usug
where usu.id = usug.us_codigo_usuarios
and gru.id = usug.gr_codigo_grupo

--Subconsulta
SELECT
    nombre -- Debes seleccionar el nombre de los usuarios.
FROM
    usuarios -- Utiliza la tabla "usuarios".
WHERE
    id IN ( -- Utiliza la condición "id IN (SELECT ***** FROM ***** WHERE ******* = 1)".
        SELECT us_codigo_usuarios -- Utiliza una subconsulta para obtener los "us_id" de la tabla "usuario_grupo" donde "gr_id" sea igual a 1.
        FROM usuarios_grupo
        WHERE gr_codigo_grupo = 101 -- Ojo: En tus datos de ejemplo los IDs de grupo son 101, 102, etc. Si no hay '1', no saldrá nada.
    );
--funcion de agregacion
SELECT
    g.nombre AS nombre_grupo,  -- Selecciona el nombre del grupo de la tabla 'grupo'
    (SELECT COUNT(ug.us_codigo_usuarios) -- Subconsulta: Cuenta los usuarios...
     FROM usuarios_grupo ug
     WHERE ug.gr_codigo_grupo = g.id) AS cantidad_usuarios_en_grupo -- ...donde el ID del grupo en usuarios_grupo coincide con el ID del grupo de la fila actual (g.id)
FROM
    grupo g; -- Itera sobre cada grupo en la tabla 'grupo

----------------------------CONSULTA 2-------------------
---------------------------------------------------------

--Consulta2
select usu.nombre, gru.nombre AS nombre_grupo from usuarios usu, grupo gru, usuarios_grupo usug
where usu.id = usug.us_codigo_usuarios
and gru.id = usug.gr_codigo_grupo
and gru.nombre like '%intensivo'

--Subconsulta2
SELECT
    nombre -- Debes seleccionar el nombre de los usuarios.
FROM
    usuarios -- Utiliza la tabla "usuarios".
WHERE
    id IN ( -- Utiliza la condición "id IN (SELECT ***** FROM ***** WHERE ******* = 1)".
        SELECT us_codigo_usuarios -- Utiliza una subconsulta para obtener los "us_id" de la tabla "usuario_grupo" donde "gr_id" sea igual a 1.
        FROM usuarios_grupo
        WHERE gr_codigo_grupo = 102 -- Ojo: En tus datos de ejemplo los IDs de grupo son 101, 102, etc. Si no hay '1', no saldrá nada.
    );

--funcion de agregacion2
SELECT
    g.nombre AS nombre_grupo,  -- Selecciona el nombre del grupo de la tabla 'grupo'
    (SELECT MAX(ug.us_codigo_usuarios) -- Subconsulta: Cuenta los usuarios...
     FROM usuarios_grupo ug
     WHERE ug.gr_codigo_grupo = g.id) AS cantidad_usuarios_en_grupo -- ...donde el ID del grupo en usuarios_grupo coincide con el ID del grupo de la fila actual (g.id)
FROM
    grupo g; -- Itera sobre cada grupo en la tabla 'grupo

SELECT
    g.nombre AS nombre_grupo,
    (SELECT MIN(ug.us_codigo_usuarios)
     FROM usuarios_grupo ug
     WHERE ug.gr_codigo_grupo = g.id) AS id_usuario_minimo_en_grupo
FROM
    grupo g;

--Consulta3
select usu.nombre, gru.nombre AS nombre_grupo from usuarios usu, grupo gru, usuarios_grupo usug
where usu.id = usug.us_codigo_usuarios
and gru.id = usug.gr_codigo_grupo
and gru.fecha_creacion
between '2020-03-08' and '2020-03-08'

--subconsulta3
SELECT
    nombre -- Debes seleccionar el nombre de los usuarios.
FROM
    usuarios -- Utiliza la tabla "usuarios".
WHERE
    id IN ( -- Utiliza la condición "id IN (SELECT ***** FROM ***** WHERE ******* = 1)".
        SELECT us_codigo_usuarios -- Utiliza una subconsulta para obtener los "us_id" de la tabla "usuario_grupo" donde "gr_id" sea igual a 1.
        FROM usuarios_grupo
        WHERE gr_codigo_grupo = 103 -- Ojo: En tus datos de ejemplo los IDs de grupo son 101, 102, etc. Si no hay '1', no saldrá nada.
    );
-------------
SELECT
    g.nombre AS nombre_grupo,  -- Selecciona el nombre del grupo
    (SELECT MIN(ug.us_codigo_usuarios) -- Subconsulta para obtener el MINIMO us_codigo_usuarios
     FROM usuarios_grupo ug
     WHERE ug.gr_codigo_grupo = g.id) AS id_usuario_minimo_en_grupo
FROM
    grupo g
WHERE
    g.descripcion LIKE '%matutino%'; -- Aquí va la condición de filtro para la descripción del grupo

select * from usuarios
select * from grupo
select * from usuarios_grupo