create table productos (
codigo int not null,
nombre varchar (50) not null,
descripcion varchar(200),
precio money not null,
stock int not null,
constraint codigo_pk primary key (codigo)
)

insert into productos(codigo, nombre, precio, stock) values (5789, 'tv', 700.0, 10);
insert into productos(codigo, nombre, precio, stock) values (5723, 'celulares', 100.0, 80);
insert into productos(codigo, nombre, precio, stock) values (5714, 'laptops', 500.0, 100);
insert into productos(codigo, nombre, precio, stock) values (5774, 'mesas', 500.0, 100);

select * from  productos

create table ventas (
id_venta int,
codigo_producto int not null,
fecha_venta date not null,
cantidad int not null,
constraint ventas_pk primary key (id_venta)
)

ALTER TABLE ventas
ADD CONSTRAINT fk_codigo_producto
FOREIGN KEY (codigo_producto)
REFERENCES productos (codigo);
INSERT INTO ventas (id_venta, codigo_producto, fecha_venta, cantidad) VALUES (101, 7897, '2024-06-18', 2);
INSERT INTO ventas (id_venta, codigo_producto, fecha_venta, cantidad) VALUES (102, 5774, '2024-06-18', 5);
INSERT INTO ventas (id_venta, codigo_producto, fecha_venta, cantidad) VALUES (103, 5001, '2024-06-17', 1);

select * from  ventas