create table cuentas (
numero_cuenta char(5) not null,
cedula_propietario char(5) not null,
fecha_creacion date not null,
saldo money not null,
constraint cuentas_pk primary key (numero_cuenta)

)

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
values (55555, 14788, '10/10/1892', 12.0);
insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
values (44444, 14788, '8/5/1992', 120.0);
insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
values (33333, 14788, '4/1/1972', 11.0);
insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
values (66666, 14788, '12/10/1989', 17.0);
insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
values (11111, 14788, '23/9/2003', 128.0);
insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
values (11789, 14788, '23/9/2003', 128.0);
insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
values (11119, 14788, '23/9/2003', 128.0);
insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
values (11117, 14788, '23/9/2003', 128.0);
insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
values (15896, 14788, '23/9/2003', 128.0);
insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
values (14789, 14788, '23/9/2003', 128.0);

select * from  cuentas