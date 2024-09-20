/* Alumno Eduardo M Moreno*/ 

/* 1. Mostrar los datos de los presupuestos cuyo monto es menor a $ 10000. */

SELECT * FROM presup WHERE monto < 10000;

/* 2. Mostrar el cliente ingresado más joven considerando su documento (del conjunto de datos ingresados).*/ 

SELECT nombre, apellido, dni FROM cliente ORDER BY dni DESC LIMIT 1;

/* 3. Mostrar los repuestos que tengan la misma cantidad de stock que en el punto de pedido. */

SELECT * FROM repuesto WHERE stock = pp;

/* 4. Mostrar los mecánicos cuyo apellido comience con la letra C. */

SELECT * FROM mecanico WHERE apellido LIKE "C%";

/* 5. Mostrar nombre del repuesto junto al precio ordenado alfabéticamente. */

SELECT nombre, precio FROM repuesto ORDER BY nombre;

/* 6. Mostrar la cantidad de presupuestos realizados en el taller. */

SELECT count(npresup) AS "Cantidad Presupuestos" FROM presup;

/* 7. Mostrar por color cuantos  vehículos registrados hay. */ 

SELECT color, COUNT(*) AS cantidad FROM vehiculo GROUP BY color;

/* 8. Mostrar por código de ficha la cantidad de informes que tiene. */

SELECT codf, COUNT(*) AS "Cantidad de informes" FROM fichamd GROUP BY codf;

/* 9. Listar ordenado por temática  a los mecánicos que diagnostican (indicar nombre, apellido y temática).*/

SELECT m.nombre, m.apellido, d.tematica FROM mecanico AS m JOIN mecdiag AS d ON m.codMec = d.codMec ORDER BY d.tematica;

/* 10. Mostrar los números de presupuesto que tengan al menos un repuesto cuyo precio oscile entre $ 1200 y $ 10000 inclusive. */

SELECT p.NPresup AS "Numero Presupuesto", p.Monto FROM presup AS p JOIN presurep AS pr ON p.NPresup = pr.Npresup WHERE p.Monto BETWEEN 1200 AND 10000;

/* 11. Calcular el valor promedio del costo de los repuestos del taller. El título de la columna debe decir Precio Promedio */

SELECT avg(precio) AS "Precio Promedio" FROM repuesto;

/* 12. Mostrar los datos de los clientes que tienen más de un vehículo */ 

SELECT c.* FROM cliente AS c JOIN vehiculo AS v ON c.codC = v.codC GROUP BY c.codC HAVING COUNT(v.codC) > 1;

/* 13. Identificar con nombre y apellido a los mecánicos que no hicieron ningún diagnóstico. */ 

SELECT m.nombre, m.apellido FROM mecanico AS m WHERE m.codMec NOT IN (SELECT d.codMec FROM mecdiag AS d);

/* 14. Mostrar por vehículo el monto final que deben abonar en concepto de presupuesto. */ 

SELECT v.matricula, SUM(p.monto) AS "Monto Total" FROM vehiculo AS v JOIN ficha AS f ON v.codVEH = f.codVEH JOIN presup AS p ON f.codF = p.codF GROUP BY v.matricula;