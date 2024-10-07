use biblioteca;
# 1. Mostrar los datos del primer socio de la biblioteca. “Ayuda”=>  el primer socio es el que tiene el código menor, entonces usá la función “min” y utilizá esa sentencia como subconsulta para proyectar lo requerido.

SELECT * FROM socio WHERE CodSocio = (SELECT min(CodSocio) FROM socio);

# 2. Mostrar los datos de los últimos prestamos de libros “Ayuda” => los últimos préstamos corresponden a la fecha más alta, usá la función “max” y utilizá esa subconsulta.

SELECT * FROM prestamo p WHERE p.FPrestamo = (SELECT Max(FPrestamo) FROM prestamo); 

# 3.Mostrar título y fecha de edición de los libros del autor Hector Arena ordenado por título, “Nota” => > utilizá una subconsulta en el from.

SELECT titulo,AEdicion 
FROM libro l 
INNER JOIN libroautor la 
	ON l.codLibro = la.codLibro 
INNER JOIN (SELECT codAutor from Autor WHERE nombre="Hector" AND apellido="Arena") T1 
	ON la.CodAutor = T1.CodAutor 
ORDER BY titulo; 

# 4. Mostrar los datos de los socios que no llevaron libros prestados “Ayuda” =>  armá una consulta con los socios que tienen préstamo. Los socios que no llevaros libros son los que no están en ese conjunto (utiliza el not in).

SELECT * FROM socio WHERE CodSocio NOT IN (SELECT CodSocio FROM prestamo);

# 5. Mostrar el nombre y apellido de los autores de los ejemplares número 41 y 78.”Nota” =>  esta consulta figura en la actividad 1

SELECT nombre,apellido 
FROM autor a 
INNER JOIN libroautor la 
	ON a.CodAutor = la.CodAutor 
WHERE la.CodLibro IN (SELECT l.CodLibro FROM libro l INNER JOIN ejemplar e ON l.CodLibro = e.CodLibro WHERE e.idEjem = "41" OR e.idEjem= "78");