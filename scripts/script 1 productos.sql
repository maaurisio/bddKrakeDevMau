create table productos (
codigo int not null,
nombre varchar (50) not null,
descripcion varchar(200),
precio money not null,
constraint codigo_pk primary key (codigo)

)

insert into productos(codigo, nombre, descripcion, precio) values (5256, 'bebidas', 'plastico', 100.0);
insert into productos(codigo, nombre, descripcion, precio) values (5565, 'cajas', 'sin nombre', 100.0);
insert into productos(codigo, nombre, descripcion, precio) values (5212, 'vidrio', 'grande', 100.0);
insert into productos(codigo, nombre, descripcion, precio) values (5213, 'tv', 'gama alta', 100.0);
insert into productos(codigo, nombre, descripcion, precio) values (5226, 'papel', 'para imprimir', 100.0

insert into productos(codigo, nombre, precio) values (5789, 'tv', 700.0);
insert into productos(codigo, nombre, precio) values (5723, 'celulares', 100.0);
insert into productos(codigo, nombre, precio) values (5714, 'laptops', 500.0);

select * from  productos

