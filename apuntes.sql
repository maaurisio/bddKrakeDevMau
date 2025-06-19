create table registros_entrada (
codigo_registro int not null,
cedula_empleado char(10) not null,
fecha date not null,
hora time not null,
constraint codigo_registro_pk primary key (codigo_registro)
);


--relacionar tablas de muchos a uno
ALTER TABLE registros_entrada
ADD CONSTRAINT fk_codigo_empleado
FOREIGN KEY (codigo_empleado)
REFERENCES empleado (codigo_empleado)

--agregar columnas a una tabla
ALTER TABLE registros_entrada
ADD COLUMN codigo_empleado int not null;
--editar
update cuentas set saldo = 12.00 where cedula_propietario like '17%'
--ESTUDIANTES
update estudiantes set apellido = 'Hernández' where cedula like '17%'
--eliminar
delete from registros_entrada