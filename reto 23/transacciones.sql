create table transacciones (

codigo int not null,
numero_cuenta char(5),
monto money not null,
tipo char(1)not null,
fecha date not null,
hora time not null,
constraint transacciones_codigo_pk primary key (codigo)

);

INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES (1, '12345', 100.00, 'C', '2025-05-28', '10:30:00');

INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES (2, '54321', 50.00, 'D', '2025-05-28', '11:00:00');

INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES (3, '12345', 250.00, 'C', '2025-05-29', '09:15:00');

INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES (4, '98765', 75.00, 'D', '2025-05-29', '14:45:00');

INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES (5, '12345', 20.00, 'D', '2025-05-30', '16:00:00');

INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES (6, '54321', 150.00, 'C', '2025-05-30', '09:00:00');

INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES (7, '98765', 1000.00, 'C', '2025-05-31', '12:00:00');

INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES (8, '12345', 30.00, 'D', '2025-05-31', '13:30:00');

INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES (9, '12345', 200.00, 'D', '2025-06-01', '10:10:00');

INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES (10, '12345', 45.00, 'D', '2025-06-01', '15:20:00');

select * from  transacciones

create table banco (
codigo_banco int,
codigo_transaccion int,
detalle varchar(100),
constraint codigo_banco_pk primary key (codigo_banco)
);
INSERT INTO banco (codigo_banco, codigo_transaccion, detalle) VALUES (1, 1, 'Depósito en efectivo cuenta principal');
INSERT INTO banco (codigo_banco, codigo_transaccion, detalle) VALUES (2, 2, 'Transferencia recibida de Juan Pérez');
INSERT INTO banco (codigo_banco, codigo_transaccion, detalle) VALUES (3, 3, 'Pago de servicios básicos');
ALTER TABLE banco
ADD CONSTRAINT fk_codigo_transaccion
FOREIGN KEY (codigo_transaccion)
REFERENCES transacciones (codigo)