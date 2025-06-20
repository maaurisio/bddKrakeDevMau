select * from  videojuegos
select * from  plataformas

--consulta
select jue.codigo, jue.nombre, jue.descripcion, 
jue.valoracion, pla.id_plataforma, pla.nombre_plataforma, pla.codigo_videojuego from  videojuegos jue, plataformas pla 
where jue.descripcion = 'Guerra' and jue.valoracion < 7 or jue.nombre like 'C%' and jue.valoracion > 8 and jue.nombre like 'D%' 

--subconsulta

select pla.id_plataforma, pla.nombre_plataforma, pla.codigo_videojuego
from  videojuegos jue, plataformas pla where jue.codigo = pla.codigo_videojuego 
and jue.nombre = 'God of war'
