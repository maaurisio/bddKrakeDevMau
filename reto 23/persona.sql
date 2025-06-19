create table persona (
cedula char(10),
nombre varchar(50) not null,
apellido varchar(50) not null,
estatura decimal(10,2),
fecha_nacimiento date not null,
hora_nacimiento time,
cantidad_ahorrada money,
numero_hijos int,
constraint cedula_persona_pk primary key (cedula)
);

create table prestamo (
cedula char(10),
monto money,
fecha_prestamo date,
hora_prestamo time,
garante varchar(40),
constraint cedula_prestamo_pk primary key (cedula)
);

ALTER TABLE prestamo
ADD CONSTRAINT fk_cedula_prestamo
FOREIGN KEY (cedula)
REFERENCES persona (cedula)

-- Inserts para la tabla 'persona'
INSERT INTO persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos) VALUES
('1000000001', 'Ana', 'Gómez', 1.65, '1990-01-15', '10:30:00', '5000.00', 2);
INSERT INTO persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos) VALUES
('1000000002', 'Luis', 'Martínez', 1.80, '1985-07-22', '09:00:00', '12500.50', 0);
INSERT INTO persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos) VALUES
('1000000003', 'Sofía', 'Ramírez', 1.70, '1992-03-10', '14:45:00', '800.75', 1);
INSERT INTO persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos) VALUES
('1000000004', 'Pedro', 'Díaz', 1.75, '1988-11-01', '08:10:00', '20000.00', 3);
INSERT INTO persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos) VALUES
('1000000005', 'Laura', 'Castro', 1.60, '1995-09-25', '11:20:00', '3500.20', 0);

-- Inserts para la tabla 'prestamo'
-- NOTA: Cada 'cedula' aquí debe existir en la tabla 'persona'.
-- Dado que 'cedula' es la PK de 'prestamo', cada persona solo puede tener un registro de préstamo aquí.
INSERT INTO prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) VALUES
('1000000001', '1000.00', '2024-01-20', '10:00:00', 'Garante A');
INSERT INTO prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) VALUES
('1000000002', '5000.00', '2024-02-10', '11:30:00', 'Garante B');
INSERT INTO prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) VALUES
('1000000003', '200.00', '2024-03-05', '09:15:00', 'Garante C');
INSERT INTO prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) VALUES
('1000000004', '10000.00', '2024-04-01', '13:00:00', 'Garante D');
INSERT INTO prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) VALUES
('1000000005', '750.00', '2024-05-12', '16:00:00', 'Garante E');