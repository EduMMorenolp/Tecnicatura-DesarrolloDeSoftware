-- 1) El dueño del taller quiere saber cual es el monto total que cada cliente debe abonar al asistir al taller. El informe debe mostrar nombre, apellido, teléfono y monto.
SELECT c.Nombre, c.Apellido, c.tel, SUM(p.Monto) AS MontoTotal
FROM cliente c
JOIN vehiculo v ON c.codC = v.codC
JOIN ficha f ON v.codVEH = f.codVEH
JOIN presup p ON f.codF = p.codF
GROUP BY c.Nombre, c.Apellido, c.tel;

-- 2) Tomando la consulta del punto 1, se pide mostrar al cliente o clientes que abona el monto menor..
SELECT c.Nombre, c.Apellido, c.tel, SUM(p.Monto) AS MontoTotal
FROM cliente c
JOIN vehiculo v ON c.codC = v.codC
JOIN ficha f ON v.codVEH = f.codVEH
JOIN presup p ON f.codF = p.codF
GROUP BY c.Nombre, c.Apellido, c.tel
HAVING SUM(p.Monto) = (
    SELECT MIN(monto_total)
    FROM (
        SELECT SUM(p2.Monto) AS monto_total
        FROM cliente c2
        JOIN vehiculo v2 ON c2.codC = v2.codC
        JOIN ficha f2 ON v2.codVEH = f2.codVEH
        JOIN presup p2 ON f2.codF = p2.codF
        GROUP BY c2.codC
    ) AS subconsulta
);

-- 3) Identificar cual o cuales fueron los mecánicos que diagnostican que realizaron  la mayor cantidad de revisiones.
SELECT m.Nombre, m.Apellido, COUNT(fmd.codMD) AS CantidadRevisiones
FROM mecanico m
JOIN mecdiag md ON m.codMec = md.codMec
JOIN fichamd fmd ON md.codMD = fmd.codMD
WHERE m.repara = 0
GROUP BY m.codMec, m.Nombre, m.Apellido;

-- 4) Mostrar los datos relevantes de los repuestos que fueron usados en todos los presupuestos.
SELECT r.codRep, r.Nombre, r.precio
FROM repuesto r
JOIN presurep pr ON r.codRep = pr.codRep
GROUP BY r.codRep, r.Nombre, r.precio
HAVING COUNT(DISTINCT pr.NPresup) = (SELECT COUNT(*) FROM presup);

-- 5) El dueño del taller debe comprar los repuestos y necesita un listado que muestre el nombre, la cantidad, el precio unitario y el total. El listado debe estar ordenado por nombre.
SELECT r.Nombre, SUM(pr.cant) AS Cantidad, r.precio, SUM(pr.cant * r.precio) AS Total
FROM repuesto r
JOIN Presurep pr ON r.codRep = pr.codRep
GROUP BY r.Nombre, r.precio
ORDER BY r.Nombre;

-- 6) Obtener un listado que muestre nombre, apellido del cliente y una columna con el llamada mensaje. Esa columna debe decir Sin vehículo registrado y Con vehículo registrado. La lógica es la siguiente si el cliente no registro ningún vehículo o si el cliente registro por lo menos uno
SELECT c.Nombre, c.Apellido, 
       CASE WHEN v.codC IS NULL THEN 'Sin vehículo registrado' ELSE 'Con vehículo registrado' END AS Mensaje
FROM cliente c
LEFT JOIN vehiculo v ON c.codC = v.codC
GROUP BY c.Nombre, c.Apellido, v.codVEH;

-- 7)  Mostrar en un listado los arreglos que usan por lo menos un repuesto cuyo precio unitario es menor que el promedio de precios de todos los repuestos. El  listado debe mostrar matricula del vehículo, teléfono del cliente, y el monto a abonar en concepto de repuestos.
SELECT v.Matricula, c.tel, SUM(pr.cant * r.precio) AS MontoRepuestos
FROM cliente c
JOIN vehiculo v ON c.codC = v.codC
JOIN ficha f ON v.codVEH = f.codVEH
JOIN presup p ON f.codF = p.codF
JOIN Presurep pr ON p.NPresup = pr.NPresup
JOIN repuesto r ON pr.codRep = r.codRep
WHERE r.precio < (SELECT AVG(precio) FROM repuesto)
GROUP BY v.Matricula, c.tel;

-- 8) Mostrar los clientes registrados que aún no tienen ingreso en el taller para un diagnóstico.
SELECT c.Nombre, c.Apellido
FROM cliente c
LEFT JOIN vehiculo v ON c.codC = v.codC
LEFT JOIN ficha f ON v.codVEH = f.codVEH
WHERE f.codF IS NULL;

-- 9) Obtener un listado ordenado por apellido de los mecánicos y el tipo. El tipo esta definido con el atributo repara. Para mostrar el listado se pide armar dos select y aplicar la función unión.
SELECT m.Apellido, 'Diagnostica' AS Tipo
FROM mecanico m
WHERE m.repara = 0
UNION
SELECT m.Apellido, 'Repara' AS Tipo
FROM mecanico m
WHERE m.repara = 1
ORDER BY Apellido;

-- 10) Utilizando una de las combinaciones de join, mostrar los repuestos que no se mencionan en los presupuestos.
SELECT r.Nombre, r.stock, r.precio
FROM repuesto r
LEFT JOIN Presurep pr ON r.codRep = pr.codRep
WHERE pr.codRep IS NULL;

-- 11) Identificar por fecha cuántas fichas se confeccionaron y cuántos mecánicos diagnosticaron. Recordá que una ficha puede tener más de un diagnostico; por esa razón existe la tabla “fichamd”.
SELECT 
    f.fecha, 
    COUNT(DISTINCT f.codF) AS CantidadFichas, 
    COUNT(DISTINCT md.codMec) AS CantidadMecanicos
FROM 
    ficha f
LEFT JOIN 
    fichamd fmd ON f.codF = fmd.codF
LEFT JOIN 
    mecdiag md ON fmd.codMD = md.codMD
LEFT JOIN 
    mecanico m ON md.codMec = m.codMec
GROUP BY 
    f.fecha;

-- 12) Construir una consulta para cada combinación de join. Se debe redactar la consigna, identificar la combinación utilizada y proponer una alternativa de resolución.
-- INNER JOIN
SELECT c.Nombre, v.Matricula
FROM cliente c
INNER JOIN vehiculo v ON c.codC = v.codC;

-- LEFT JOIN
SELECT c.Nombre, v.Matricula
FROM cliente c
LEFT JOIN vehiculo v ON c.codC = v.codC;

-- RIGHT JOIN
SELECT v.Matricula, c.Nombre
FROM vehiculo v
RIGHT JOIN cliente c ON c.codC = v.codC;
