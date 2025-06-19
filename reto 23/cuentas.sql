create table usuario (
cedula char(5) not null,
nombre varchar(25) not null,
apellido varchar(25) not null,
tipo_cuenta varchar(20) ,
limite_credito decimal(10,5) ,
constraint usuario_pk primary key (cedula)
)

insert into usuario(cedula, nombre, apellido) 
values (17286, 'mauricio', 'mrlas');

select * from usuario

create table cuentas (
numero_cuenta char(5) not null,
cedula_propietario char(5) not null,
fecha_creacion date not null,
saldo money not null,
constraint cuentas_pk primary key (numero_cuenta)
)
insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
values (81818, 17286, '21/08/2022', 400.0);
insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
values (66666, 17286, '21/08/2022', 700.0);
insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
values (11111, 17286, '21/08/2022', 800.0);
insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
values (22222, 17286, '21/08/2022', 500.0);
insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
values (33333, 17286, '21/08/2022', 300.0);
insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
values (44444, 17286, '21/08/2022', 200.0);
insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
values (25252, 17286, '21/08/2022', 600.0);
insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
values (36363, 17286, '21/08/2022', 300.0);

select * from cuentas

ALTER TABLE cuentas
ADD CONSTRAINT fk_cedula_propietario
FOREIGN KEY (cedula_propietario)
REFERENCES usuario (cedula);




