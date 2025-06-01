create table transacciones (

codigo int not null,
numero_cuenta char(5),
monto money not null,
tipo char(1)not null,
fecha date not null,
hora time not null,
constraint transacciones_codigo_pk primary key (codigo)

)

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
VALUES (9, '54321', 200.00, 'D', '2025-06-01', '10:10:00');

INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES (10, '98765', 45.00, 'D', '2025-06-01', '15:20:00');

select * from  transacciones