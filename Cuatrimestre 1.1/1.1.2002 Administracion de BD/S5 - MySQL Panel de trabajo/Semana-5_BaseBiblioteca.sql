drop database if exists biblioteca;
create database Biblioteca;
use Biblioteca;

create table Socio(
CodSocio int,
DNI varchar (10),
Nombre varchar (60),
Apellido varchar (60),
Direccion varchar (50),
Tel varchar (15),
constraint pk_socio primary key (CodSocio)
)engine=innodb;


create table Autor(
CodAutor int,
Nombre varchar (60),
Apellido varchar (60),
DNI varchar (10),
Mail varchar (50),
Tel varchar (15),
constraint pk_autor primary key (CodAutor)
)engine=innodb;


create table Libro(
CodLibro int,
Titulo varchar (90),
ISBN varchar (15),
Editorial varchar (20),
AEscritura date,
AEdicion date,
constraint pk_libro primary key (CodLibro)
)engine=innodb;

create table LibroAutor(
CodLibro int,
CodAutor int,
constraint pk_LibroAutor primary key (CodLibro, CodAutor),
constraint fk_LibroAutor_L foreign key (CodLibro) references Libro (CodLibro),
constraint fk_LibroAutor_A foreign key (CodAutor) references Autor (CodAutor)
)engine=innodb;

 
create table Ejemplar(
idEjem int auto_increment,
CodLibro int,
NEjemplar int,
Deteriorado boolean,
Prestado boolean,
constraint pk_Ejemplar primary key (idEjem),
constraint fk_Ejemplar foreign key (CodLibro) references Libro (CodLibro)
)engine=innodb;

create table Prestamo(
NPrestamo int auto_increment ,
CodSocio int,
FPrestamo date,
FDevolucion date,
FTope date,
constraint pk_prestamo primary key (NPrestamo),
constraint fk_prestamo_S foreign key (CodSocio) references Socio(CodSocio)
)engine=innodb;


create table DetallePre(
NPrestamo int, 
idEjem int,
constraint pk_prestamo primary key (NPrestamo, idEjem),
constraint fk_DetPre_prestamo foreign key (NPrestamo) references Prestamo(NPrestamo),
constraint fk_DetPre_ejem foreign key (idEjem) references Ejemplar(idEjem)
)engine=innodb;

