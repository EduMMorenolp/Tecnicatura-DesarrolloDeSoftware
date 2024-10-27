DELIMITER //

/* 1) */
CREATE PROCEDURE pa_traje_prenda(IN min_stock INT)
BEGIN
    SELECT t.idtraje AS codigo_traje, t.nombre AS nombre_traje,
           p.codprenda AS codigo_prenda, p.nombre AS nombre_prenda, p.stock
    FROM traje t
    JOIN traPre tp ON t.idtraje = tp.codTraje
    JOIN prenda p ON tp.codPrenda = p.codprenda
    WHERE p.stock >= min_stock;
END //

/* 2) */
CREATE PROCEDURE pa_prendas_actualizar_stock(IN prenda_cod INT, IN nuevo_stock INT)
BEGIN
    UPDATE prenda
    SET stock = nuevo_stock
    WHERE codprenda = prenda_cod;
END //

/* 3) */
CREATE PROCEDURE pa_obra(IN obra_cod INT, OUT cantidad_trajes INT)
BEGIN
    SELECT COUNT(ot.idTraje)
    INTO cantidad_trajes
    FROM ObraTraje ot
    WHERE ot.idObra = obra_cod;
END //

/* 4) */
CREATE FUNCTION f_codificado(obra_nombre VARCHAR(45))
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
    DECLARE nombre_codificado VARCHAR(50);
    SET nombre_codificado = CONCAT(LEFT(obra_nombre, LENGTH(obra_nombre) - 3), '***');
    RETURN nombre_codificado;
END //

DELIMITER ;

/* 1) */
CALL pa_traje_prenda(10);

/* 2) */
CALL pa_prendas_actualizar_stock(1020, 8);

/* 3) */
SET @cantidad_trajes = 0;
CALL pa_obra(8775, @cantidad_trajes);
SELECT @cantidad_trajes AS cantidad_trajes;

/* 4) */
SELECT f_codificado('El hombre del maletin') AS obra_codificada;

/* 5) */
CREATE VIEW vista_obra_traje_prenda AS
SELECT o.nombre AS nombre_obra, t.nombre AS nombre_traje, COUNT(p.codprenda) AS cantidad_prendas
FROM obra o
JOIN ObraTraje ot ON o.idObra = ot.idObra
JOIN traje t ON ot.idTraje = t.idtraje
JOIN traPre tp ON t.idtraje = tp.codTraje
JOIN prenda p ON tp.codPrenda = p.codprenda
GROUP BY o.nombre, t.nombre;

SELECT * FROM vista_obra_traje_prenda;
