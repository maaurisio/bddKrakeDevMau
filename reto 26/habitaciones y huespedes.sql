create table habitaciones (
habitacion_numero int,
precio_por_noche decimal not null,
piso int not null,
max_personas int,
constraint n_habitaciones_pk primary key (habitacion_numero)
);

create table huespedes (
id int,
nombres varchar(45) not null,
apellido varchar (45) not null,
telefono char(10),
correo varchar(45),
direccion varchar (45),
ciudad varchar(45),
pais varchar(45),
constraint id_huespedes_pk primary key (id)
);
CREATE TABLE reservas (
    inicio_fecha DATE NOT NULL,
    fin_fecha DATE NOT NULL,
    habitacion_id INT,
    huesped_id INT,
    CONSTRAINT habitaciones_fk FOREIGN KEY (habitacion_id) REFERENCES habitaciones (habitacion_numero),
    CONSTRAINT huesped_fk FOREIGN KEY (huesped_id) REFERENCES huespedes (id),
    CONSTRAINT reservas_pk PRIMARY KEY (habitacion_id, huesped_id) -- Clave primaria compuesta
);
-- Inserts para la tabla 'habitaciones'
INSERT INTO habitaciones (habitacion_numero, precio_por_noche, piso, max_personas) VALUES
(101, 120.50, 1, 2),    -- Habitación individual/pareja
(203, 180.00, 2, 3),    -- Habitación familiar pequeña
(305, 250.75, 3, 4),    -- Suite familiar
(401, 90.00, 4, 1),     -- Habitación económica individual
(502, 300.25, 5, 5);    -- Penthouse para grupos grandes

-- Inserts para la tabla 'huespedes'
INSERT INTO huespedes (id, nombres, apellido, telefono, correo, direccion, ciudad, pais) VALUES
(1, 'Maria', 'Gonzales', '0987654321', 'maria.g@example.com', 'Calle Principal 123', 'Quito', 'Ecuador'),
(2, 'Pedro', 'Ramirez', '0912345678', 'pedro.r@example.com', 'Avenida Central 456', 'Bogota', 'Colombia'),
(3, 'Laura', 'Diaz', '0998765432', 'laura.d@example.com', 'Carrera 7ma #10-20', 'Lima', 'Peru'),
(4, 'Juan', 'Perez', '0923456789', 'juan.p@example.com', 'Bulevar de los Sueños 78', 'Madrid', 'España'),
(5, 'Sofia', 'Torres', '0976543210', 'sofia.t@example.com', 'Via del Corso 50', 'Roma', 'Italia');

-- Inserts para la tabla 'reservas'
INSERT INTO reservas (inicio_fecha, fin_fecha, habitacion_id, huesped_id) VALUES
('2025-07-10', '2025-07-15', 101, 1), -- Maria Gonzales reserva la habitación 101
('2025-08-01', '2025-08-05', 203, 2), -- Pedro Ramirez reserva la habitación 203
('2025-09-20', '2025-09-22', 305, 3), -- Laura Diaz reserva la habitación 305
('2025-10-05', '2025-10-07', 101, 4), -- Juan Perez reserva la habitación 101 (después de Maria)
('2025-11-12', '2025-11-19', 502, 5); -- Sofia Torres reserva la habitación 502

--consulta
select hab.habitacion_numero, hue.nombres, hue.apellido
from habitaciones hab, huespedes hue, reservas res
where hab.habitacion_numero = res.habitacion_id
and hue.id = res.huesped_id

--subconsulta
SELECT
    nombres,
    apellido
FROM
    huespedes
WHERE
    id IN (             
        SELECT res.huesped_id
        FROM reservas res
        WHERE res.habitacion_id = 101                          
    );
--------------------------------
SELECT
    h.habitacion_numero,
    (SELECT COUNT(r.huesped_id)               
     FROM reservas r
     WHERE r.habitacion_id = h.habitacion_numero) AS cantidad_huespedes_reservados
FROM
    habitaciones h;

--consulta2
select hab.habitacion_numero, hab.piso, hue.nombres, hue.apellido
from habitaciones hab, huespedes hue, reservas res
where hab.habitacion_numero = res.habitacion_id
and hue.id = res.huesped_id
and hab.piso = 4
--subconsulta2
SELECT
    nombres,
    apellido
FROM
    huespedes
WHERE
    id IN (             
        SELECT res.huesped_id
        FROM reservas res
        WHERE res.habitacion_id = 3                         
    );
--------------------------
SELECT
    h.habitacion_numero,
    AVG(r.huesped_id)    
FROM
    habitaciones h, reservas r 
WHERE
    h.habitacion_numero = r.habitacion_id 
GROUP BY
    h.habitacion_numero; 

--consulta3
select hab.habitacion_numero, hue.nombres, hue.apellido
from habitaciones hab, huespedes hue, reservas res
where hab.habitacion_numero = res.habitacion_id
and hue.id = res.huesped_id
--subconsulta3
SELECT
    nombres,
    apellido
FROM
    huespedes
WHERE
    id IN (             
        SELECT res.huesped_id
        FROM reservas res
        WHERE res.habitacion_id = 4                  
    );
------------------------------
------------------------------
SELECT
    h.habitacion_numero,
    SUM(h.precio_por_noche)    
FROM
    habitaciones h, reservas r 
WHERE
    h.habitacion_numero = r.habitacion_id 
GROUP BY
    h.habitacion_numero; 