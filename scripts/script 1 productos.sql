create table productos (
codigo int not null,
nombre varchar (50) not null,
descripcion varchar(200),
precio money not null,
constraint codigo_pk primary key (codigo)

)