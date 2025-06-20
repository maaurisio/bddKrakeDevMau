create table videojuegos (
codigo int not null,
nombre varchar(100) not null,
descripcion varchar(300),
constraint codigo_videojuegos_pk primary key (codigo)
);

delete from videojuegos
--agregar columnas a una tabla
ALTER TABLE videojuegos
ADD COLUMN valoracion int not null;

INSERT INTO videojuegos (codigo, nombre, descripcion, valoracion)
VALUES (101, 'The Legend of Zelda: Breath of the Wild', 'Una épica aventura de mundo abierto con rompecabezas y exploración.', 8);

INSERT INTO videojuegos (codigo, nombre, descripcion, valoracion)
VALUES (102, 'Red Dead Redemption 2', 'Un western épico que sigue la historia de Arthur Morgan y la banda de Van der Linde.', 8);

INSERT INTO videojuegos (codigo, nombre, descripcion, valoracion)
VALUES (103, 'Minecraft', 'Un juego de construcción y aventura donde puedes crear cualquier cosa que imagines.', 8);

INSERT INTO videojuegos (codigo, nombre, descripcion, valoracion)
VALUES (104, 'Grand Theft Auto V', 'Un juego de acción y aventura ambientado en el estado ficticio de San Andreas.', 8);

INSERT INTO videojuegos (codigo, nombre, descripcion, valoracion)
VALUES (105, 'Cyberpunk 2077', 'Un RPG de acción y aventura de mundo abierto ambientado en Night City, una megalópolis futurista.', 8);

INSERT INTO videojuegos (codigo, nombre, valoracion)
VALUES (106, 'pacman', 8);
INSERT INTO videojuegos (codigo, nombre, valoracion)
VALUES (107, 'tetris', 8);
INSERT INTO videojuegos (codigo, nombre, valoracion)
VALUES (108, 'sudoku');

select * from  videojuegos

create table plataformas (
id_plataforma int,
nombre_plataforma varchar(50) not null,
codigo_videojuego int,
constraint id_plataforma_pk primary key (id_plataforma)
);
INSERT INTO plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
VALUES (109, 'PlayStation 5', 106);

INSERT INTO plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
VALUES (102, 'Xbox Series X', 102);

INSERT INTO plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
VALUES (103, 'Nintendo Switch', 103);
ALTER TABLE plataformas
ADD CONSTRAINT fk_id_plataforma
FOREIGN KEY (codigo_videojuego)
REFERENCES videojuegos (codigo);