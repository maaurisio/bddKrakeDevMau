create table registros_entrada (
codigo_registro int not null,
cedula_empleado char(10) not null,
fecha date not null,
hora time not null,
constraint codigo_registro_pk primary key (codigo_registro)
)

INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora)
VALUES (1, '1712345678', '2024-05-20', '08:00:00');

INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora)
VALUES (2, '0987654321', '2024-05-20', '08:15:00');

INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora)
VALUES (3, '1712345678', '2024-05-21', '08:05:00');

INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora)
VALUES (4, '0654321987', '2024-05-21', '08:30:00');

INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora)
VALUES (5, '0987654321', '2024-05-21', '08:10:00');

INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora)
VALUES (6, '0321654987', '2024-05-22', '07:55:00');

INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora)
VALUES (7, '1234567890', '2024-05-22', '08:00:00');

INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora)
VALUES (8, '0654321987', '2024-05-22', '08:20:00');

INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora)
VALUES (9, '1712345678', '2024-05-23', '07:58:00');

INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora)
VALUES (10, '0321654987', '2024-05-23', '08:12:00');

select * from  registros_entrada