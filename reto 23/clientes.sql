create table clientes (
cedula char(10) not null,
nombre varchar(50) not null,
apellido varchar(50) not null,
constraint clientes_pk primary key (cedula)
);

create table compras (
id_compra int,
cedula char(10) not null,
fecha_compra date not null,
monto decimal(10,2) not null,
constraint compras_pk primary key (id_compra)
)

ALTER TABLE compras
ADD CONSTRAINT fk_cedula_cliente
FOREIGN KEY (cedula)
REFERENCES clientes (cedula);
-- Inserts para la tabla 'clientes'
INSERT INTO clientes (cedula, nombre, apellido) VALUES ('7894561232', 'Monica', 'Lopez');
INSERT INTO clientes (cedula, nombre, apellido) VALUES ('0987654321', 'Juan', 'Pérez');

-- Inserts para la tabla 'compras'
-- Nota: La 'cedula' debe coincidir con alguna de las cédulas insertadas en la tabla 'clientes'.
INSERT INTO compras (id_compra, cedula, fecha_compra, monto) VALUES (1, '7894561232', '2024-05-15', 50.75);
INSERT INTO compras (id_compra, cedula, fecha_compra, monto) VALUES (2, '0987654321', '2024-05-20', 120.00);

select * from clientes;
select * from compras;

 

select cli.nombre, cli.apellido from clientes cli, compras com where cli.cedula = '7894561232';
