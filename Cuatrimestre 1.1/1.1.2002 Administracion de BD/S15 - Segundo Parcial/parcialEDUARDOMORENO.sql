
/* 1) Obtener los nombres y el precio de los artículos ordenado alfabéticamente por el nombre. */
SELECT nombre, precio
FROM articulos
ORDER BY nombre;

/*2) Obtener el código, nombre y precio de los artículos cuyo precio este comprendido entre los 60 y 120 pesos (ambos incluidos) ordenado por el precio. */
SELECT codigo, nombre, precio
FROM articulos
WHERE precio BETWEEN 60 AND 120
ORDER BY precio;

/*3) Obtener el nombre, precio y precio con iva de todos los artículos (precio con iva se calcula multiplicando el precio por el 21%) */
SELECT nombre, precio, precio * 1.21 AS precio_con_iva
FROM articulos;

/*4) Obtener el precio promedio del fabricante 2*/
SELECT AVG(precio) AS precio_promedio
FROM articulos
WHERE fabricante = 2;

/*5) Obtener un listado completo de todos los artículos incluyendo el nombre de los fabricantes, ordenado por el nombre del fabricante y el nombre de los artículos.*/
SELECT a.nombre AS articulo, a.precio, f.nombre AS fabricante
FROM articulos a
JOIN fabricantes f ON a.fabricante = f.codigo
ORDER BY f.nombre, a.nombre;

/*6) Obtener el precio promedio de todos los fabricantes incluyendo el nombre los fabricantes ordenado en forma descendente por el precio promedio*/
SELECT f.nombre AS fabricante, AVG(a.precio) AS precio_promedio
FROM articulos a
JOIN fabricantes f ON a.fabricante = f.codigo
GROUP BY f.nombre
ORDER BY precio_promedio DESC;

/*7) Obtener los nombres de los fabricantes y su precio promedio que ofrezcan productos cuyo precio promedio sea mayor o igual a 150*/
SELECT f.nombre AS fabricante, AVG(a.precio) AS precio_promedio
FROM articulos a
JOIN fabricantes f ON a.fabricante = f.codigo
GROUP BY f.nombre
HAVING AVG(a.precio) >= 150;

/*8) Obtener una lista con el nombre precio de los artículos mas caros  de cada fabricante incluyendo su nombre (resolverlo usando subconsulta)*/
SELECT a.nombre AS articulo, a.precio, f.nombre AS fabricante
FROM articulos a
JOIN fabricantes f ON a.fabricante = f.codigo
WHERE a.precio = (
    SELECT MAX(precio)
    FROM articulos
    WHERE fabricante = a.fabricante
);

/*9) Obtener el nombre de los fabricantes que no poseen ningún articulo*/
SELECT nombre
FROM fabricantes f
WHERE NOT EXISTS (
    SELECT 1
    FROM articulos a
    WHERE a.fabricante = f.codigo
);

/*10)  Aplicar un 10% de descuento a los artículos del fabricante 3*/
UPDATE articulos
SET precio = precio * 0.9
WHERE fabricante = 3;

/*11)  Borrar los artículos del fabricante 1 y 7*/
DELETE FROM articulos
WHERE fabricante IN (1, 7);

/*12)  Obtener los nombres de los fabricantes que comiencen con la letra O.*/
SELECT nombre
FROM fabricantes
WHERE nombre LIKE 'O%';

/*13)  Crear una vista que devuelva un listado completo de todos los artículos incluyendo el nombre de los fabricantes*/
CREATE VIEW vista_articulos_fabricantes AS
SELECT a.nombre AS articulo, a.precio, f.nombre AS fabricante
FROM articulos a
JOIN fabricantes f ON a.fabricante = f.codigo;

SELECT * FROM vista_articulos_fabricantes;

/*14)  Obtener el nombre del fabricante con la cantidad de artículos que posee. */
SELECT f.nombre AS fabricante, COUNT(a.codigo) AS cantidad_articulos
FROM fabricantes f
LEFT JOIN articulos a ON f.codigo = a.fabricante
GROUP BY f.nombre;