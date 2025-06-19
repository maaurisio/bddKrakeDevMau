create table registros_entrada (
codigo_registro int not null,
cedula_empleado char(10) not null,
fecha date not null,
hora time not null,
constraint codigo_registro_pk primary key (codigo_registro)
);

ALTER TABLE registros_entrada
ADD COLUMN codigo_empleado int not null;
delete from registros_entrada


INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
VALUES (1, '1712345678', '2024-05-20', '08:00:00', 7);

INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
VALUES (2, '0987654321', '2024-05-20', '08:15:00', 1);

INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
VALUES (3, '1712345678', '2024-05-21', '08:05:00', 2);

INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
VALUES (4, '0654321987', '2024-05-21', '08:30:00', 3);

INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
VALUES (5, '0987654321', '2024-05-21', '08:10:00', 4);

INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
VALUES (6, '0321654987', '2024-05-22', '07:55:00', 5);

INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
VALUES (7, '1234567890', '2024-05-22', '08:00:00', 6);

INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
VALUES (8, '0654321987', '2024-05-22', '08:20:00', 8);

INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
VALUES (9, '1712345678', '2024-05-23', '07:58:00', 9);

INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
VALUES (10, '0321654987', '2024-05-23', '08:12:00', 10);

select * from  registros_entrada

create table empleado (
codigo_empleado int,
nombre varchar(10) not null,
fecha date not null,
hora time not null,
constraint codigo_empleado_pk primary key (codigo_empleado)
);
INSERT INTO empleado (codigo_empleado, nombre, fecha, hora) VALUES (1, 'Juan', '2024-06-18', '08:00:00');
INSERT INTO empleado (codigo_empleado, nombre, fecha, hora) VALUES (2, 'María', '2024-06-18', '08:30:00');
INSERT INTO empleado (codigo_empleado, nombre, fecha, hora) VALUES (3, 'Pedro', '2024-06-18', '09:00:00');
INSERT INTO empleado (codigo_empleado, nombre, fecha, hora) VALUES (4, 'Ana', '2024-06-17', '08:15:00');
INSERT INTO empleado (codigo_empleado, nombre, fecha, hora) VALUES (5, 'Luis', '2024-06-17', '09:00:00');
INSERT INTO empleado (codigo_empleado, nombre, fecha, hora) VALUES (6, 'Sofía', '2024-06-16', '07:45:00');
INSERT INTO empleado (codigo_empleado, nombre, fecha, hora) VALUES (7, 'Carlos', '2024-06-16', '08:00:00');
INSERT INTO empleado (codigo_empleado, nombre, fecha, hora) VALUES (8, 'Laura', '2024-06-15', '09:30:00');
INSERT INTO empleado (codigo_empleado, nombre, fecha, hora) VALUES (9, 'Diego', '2024-06-15', '08:00:00');
INSERT INTO empleado (codigo_empleado, nombre, fecha, hora) VALUES (10, 'Elena', '2024-06-14', '08:45:00');

ALTER TABLE registros_entrada
ADD CONSTRAINT fk_codigo_empleado
FOREIGN KEY (codigo_empleado)
REFERENCES empleado (codigo_empleado)