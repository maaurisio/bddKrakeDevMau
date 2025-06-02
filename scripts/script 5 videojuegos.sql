create table videojuegos (
codigo int not null,
nombre varchar(100) not null,
descripcion varchar(300),
valoracion int not null,
constraint codigo_videojuegos_pk primary key (codigo)
)

INSERT INTO videojuegos (codigo, nombre, descripcion, valoracion)
VALUES (101, 'The Legend of Zelda: Breath of the Wild', 'Una épica aventura de mundo abierto con rompecabezas y exploración.', 6);

INSERT INTO videojuegos (codigo, nombre, descripcion, valoracion)
VALUES (102, 'Red Dead Redemption 2', 'Un western épico que sigue la historia de Arthur Morgan y la banda de Van der Linde.', 9);

INSERT INTO videojuegos (codigo, nombre, descripcion, valoracion)
VALUES (103, 'Minecraft', 'Un juego de construcción y aventura donde puedes crear cualquier cosa que imagines.', 10);

INSERT INTO videojuegos (codigo, nombre, descripcion, valoracion)
VALUES (104, 'Grand Theft Auto V', 'Un juego de acción y aventura ambientado en el estado ficticio de San Andreas.',10);

INSERT INTO videojuegos (codigo, nombre, descripcion, valoracion)
VALUES (105, 'Cyberpunk 2077', 'Un RPG de acción y aventura de mundo abierto ambientado en Night City, una megalópolis futurista.', 8);

INSERT INTO videojuegos (codigo, nombre)
VALUES (106, 'pacman');
INSERT INTO videojuegos (codigo, nombre)
VALUES (107, 'tetris');
INSERT INTO videojuegos (codigo, nombre)
VALUES (108, 'sudoku');

ALTER TABLE videojuegos
ADD COLUMN 
drop table videojuegos

select * from  videojuegos