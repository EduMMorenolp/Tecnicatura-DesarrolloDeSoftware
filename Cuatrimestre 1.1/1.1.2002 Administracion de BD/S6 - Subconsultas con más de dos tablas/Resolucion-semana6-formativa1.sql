/* 
  Usar la tabla “libro” y “libroautor” para mostrar el titulo del libro y la cantidad de autores que tiene cada uno. “Ayuda” => 
  se debe agrupar por libro (usar group by) y la proyección además del título tiene la función  count. 
*/

SELECT titulo, count(CodAutor)
	FROM libro as l 
		INNER JOIN libroautor as la on l.CodLibro = la.CodLibro
			GROUP BY l.CodLibro;

/* 2.  Mostrar el nombre, apellido y teléfono de los socios que devolvieron los libros en la fecha tope. */

SELECT distinct nombre, apellido, tel 
	FROM socio as s
		INNER JOIN prestamo as p on s.CodSocio = p.CodSocio
			WHERE p.FTope = p.FDevolucion;
            
/* 3.  Mostrar los títulos de los libros que tengan algún ejemplar deteriorado. “Ayuda”  => 
para estar deteriorado el ejemplar, el dominio del atributo deteriorado debe ser verdadero (o 1).
 En caso que el libro tenga más de un deteriorado se repetirá entonces usa el distinct. */
 
 SELECT distinct titulo
	FROM libro as l
		INNER JOIN ejemplar as e on l.CodLibro=e.CodLibro
			WHERE deteriorado = 1;
            
/*4.  Mostrar el nombre y apellido de los autores de los ejemplares número 41 y 78. 
“Nota”  => deben usar autor, libroautor,  libro y ejemplar.

Nota de resolucion: yo por los ejemplares numero, entiendo IdEjem, porque no existen NEjemplar 41 y 78
De todos modos cabiando la ultima fila de la query, se podria consultar tambien NEjemplar
 */

SELECT nombre, apellido
	FROM autor as a
		INNER JOIN libroautor as la on a.Codautor=la.CodAutor
			INNER JOIN libro as l on la.CodLibro = l.CodLibro
				INNER JOIN ejemplar as e on l.CodLibro = e.CodLibro
					WHERE e.idEjem in (41, 78);
                                    
/*
5.  Mostrar un listado de los préstamos informando número de préstamo, fecha de préstamo, código de socio y teléfono del socio. 
*/

SELECT p.NPrestamo, p.FPrestamo, p.CodSocio, s.tel
FROM prestamo AS p 
	INNER JOIN socio AS s ON p.CodSocio = s.CodSocio;
    
                                    