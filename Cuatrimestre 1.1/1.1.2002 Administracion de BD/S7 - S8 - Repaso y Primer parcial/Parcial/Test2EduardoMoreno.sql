CREATE DATABASE Test2EduardoMoreno;

USE Test2EduardoMoreno;

CREATE TABLE Provincias (
    codigo INT NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    PRIMARY KEY (codigo)
);

CREATE TABLE Clientes (
    Codigo INT AUTO_INCREMENT NOT NULL,
    Nombre VARCHAR(30) NOT NULL,
    Domicilio VARCHAR(30),
    Ciudad VARCHAR(20),
    CodigoProvincia INT NOT NULL,
    PRIMARY KEY (Codigo),
    FOREIGN KEY (CodigoProvincia) REFERENCES Provincias(codigo)
);
