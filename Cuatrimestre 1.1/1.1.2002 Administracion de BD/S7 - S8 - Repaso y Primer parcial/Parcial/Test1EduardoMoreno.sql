-- Deshabilitar el modo de actualización segura
SET SQL_SAFE_UPDATES = 0;

	/*
	Devido a un error en workbench
	Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.
	Utilize el comando SET SQL_SAFE_UPDATES = 0;
	Para Deshabilitar el modo de actualización segura
	*/

-- Crear la base de datos
CREATE DATABASE Test1EduardoMoreno;

-- Seleccionar la base de datos recién creada
USE Test1EduardoMoreno;

-- Crear la tabla Provincias
CREATE TABLE Provincias (
    codigo INT NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    PRIMARY KEY (codigo)
);

-- Crear la tabla Clientes
CREATE TABLE Clientes (
    Codigo INT AUTO_INCREMENT NOT NULL,
    Nombre VARCHAR(30) NOT NULL,
    Domicilio VARCHAR(30),
    Ciudad VARCHAR(20),
    CodigoProvincia INT NOT NULL,
    PRIMARY KEY (Codigo),
    FOREIGN KEY (CodigoProvincia) REFERENCES Provincias(codigo)
);

-- Insertar registros en la tabla Provincias
INSERT INTO Provincias (codigo, nombre) VALUES
(1, 'Cordoba'),
(2, 'Buenos Aires'),
(3, 'Mendoza'),
(4, 'Rio Negro');

-- Insertar registros en la tabla Clientes
INSERT INTO Clientes (Nombre, Domicilio, Ciudad, CodigoProvincia) VALUES
('Perez Juan', 'San Martin 123', 'Carlos Paz', 1),
('Moreno Marcos', 'Colon 234', 'Rosario', 2),
('Solari Ana', 'Belgrano 567', 'Mendoza', 3);

-- Actualizar el domicilio del cliente Moreno Marcos
UPDATE Clientes SET Domicilio = 'Union 234' WHERE Nombre = 'Moreno Marcos';

-- Eliminar los clientes de la ciudad Mendoza
DELETE FROM Clientes WHERE Ciudad = 'Mendoza';
