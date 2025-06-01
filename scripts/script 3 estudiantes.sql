create table estudiantes (
cedula char(10) not null,
nombre varchar (50) not null,
apellido varchar(50) not null,
email varchar(50) not null,
fecha_nacimiento date not null,
constraint estudiantes_pk primary key (cedula)

)

INSERT INTO estudiantes (cedula, nombre, apellido, email, fecha_nacimiento)
VALUES ('1712345678', 'Ana', 'García', 'ana.garcia@example.com', '2000-05-15');

INSERT INTO estudiantes (cedula, nombre, apellido, email, fecha_nacimiento)
VALUES ('0987654321', 'Luis', 'Martínez', 'luis.martinez@example.com', '1999-11-22');

INSERT INTO estudiantes (cedula, nombre, apellido, email, fecha_nacimiento)
VALUES ('0654321987', 'Sofía', 'Rodríguez', 'sofia.rodriguez@example.com', '2001-01-08');

INSERT INTO estudiantes (cedula, nombre, apellido, email, fecha_nacimiento)
VALUES ('0321654987', 'Pedro', 'Fernández', 'pedro.fernandez@example.com', '1998-07-03');

INSERT INTO estudiantes (cedula, nombre, apellido, email, fecha_nacimiento)
VALUES ('1234567890', 'María', 'López', 'maria.lopez@example.com', '2002-03-20');

INSERT INTO estudiantes (cedula, nombre, apellido, email, fecha_nacimiento)
VALUES ('2109876543', 'Carlos', 'González', 'carlos.gonzalez@example.com', '2000-09-10');

INSERT INTO estudiantes (cedula, nombre, apellido, email, fecha_nacimiento)
VALUES ('0456789123', 'Laura', 'Díaz', 'laura.diaz@example.com', '1997-04-25');

INSERT INTO estudiantes (cedula, nombre, apellido, email, fecha_nacimiento)
VALUES ('1098765432', 'Diego', 'Pérez', 'diego.perez@example.com', '2003-02-18');

SELECT * FROM estudiantes;