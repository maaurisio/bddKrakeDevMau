create table productos (
codigo int not null,
nombre varchar (50) not null,
descripcion varchar(200),
precio money not null,
stock int not null,
constraint codigo_pk primary key (codigo)
)

<<<<<<< HEAD
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
=======
insert into productos(codigo, nombre, descripcion, precio, stock) values (5256, 'bebidas', 'plastico', 100.0, 100);
insert into productos(codigo, nombre, descripcion, precio, stock) values (5565, 'cajas', 'sin nombre', 100.0, 54);
insert into productos(codigo, nombre, descripcion, precio, stock) values (5212, 'vidrio', 'grande', 100.0, 74);
insert into productos(codigo, nombre, descripcion, precio, stock) values (5213, 'tv', 'gama alta', 100.0, 69);
insert into productos(codigo, nombre, descripcion, precio, stock) values (5226, 'papel', 'para imprimir', 100.0, 574);

insert into productos(codigo, nombre, precio, stock) values (5789, 'tv', 700.0, 100);
insert into productos(codigo, nombre, precio, stock) values (5723, 'celulares', 100.0, 456);
insert into productos(codigo, nombre, precio, stock) values (5714, 'laptops', 500.0, 478);

select * from  productos

drop table productos

>>>>>>> 931abc22141a81f1d328df7840e46db9f9813e8b
