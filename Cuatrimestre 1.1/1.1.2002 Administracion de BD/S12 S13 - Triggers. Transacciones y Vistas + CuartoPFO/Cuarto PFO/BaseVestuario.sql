drop database if exists vestuario;
create database vestuario;
use vestuario;

create table traje(
idtraje int,
nombre varchar(40),
constraint pk_curso primary key (idtraje)
)Engine = InnoDB; 

insert into traje values
(120, "Futbolista"),
(123, "Ejecutivo"),
(125, "Mujer 1"),
(126, "Joven"),
(127, "Medico"),
(128, "Joven estudiantil"),
(130, "Secretaria"),
(131, "Ama de llaves");


create table prenda(
codprenda int,
nombre varchar(40),
stock int,
constraint pk_producto primary key (codprenda)
)Engine = InnoDB;

insert into prenda values
(1020, "Pantalon gris", 8),
(1022, "Pollera campana", 6),
(1028, "Camisa blanca de hombre", 15),
(1029, "Camisa de mujer", 14),
(1030, "Tacon alto", 20),
(1031, "Camiseta futbol", 22),
(1032, "Short deportivo", 20),
(1033, "Vestido corto", 4),
(1145, "Ambo blanco hombre", 2),
(2110, "Cartera de mano", 5),
(2114, "Medias futboleras", 10),
(2115, "Botines futbol", 10),
(2120, "Tacon bajo", 15),
(2125, "Zapatos negros hombre", 8),
(2127, "Zapatillas", 12),
(2130, "Mocasin negro", 9),
(4785, "Medias largas mujer", 5),
(4786, "Remera escote redondo", 7),
(4787, "Traje de hombre cruzado negro", 5),
(4788, "Corbata lisa", 6),
(4789, "Maletin hombre", 4),
(4790, "Traje de mujer con pollera", 3),
(4791, "Traje de mujer con pantalon", 4),
(4792, "Blusa lisa", 7);


create table traPre(
codTraje int,
codPrenda int,
constraint pk_traPre primary key (codtraje, codPrenda),
constraint fk_traPre_traje foreign key (codtraje) references traje (idtraje),
constraint fk_traPre_prenda foreign key (codPrenda) references prenda (codprenda)
)Engine = InnoDB;

insert into traPre values
(120,1031),
(120,1032),
(120,2114),
(120,2115),
(125,1033),
(125,2110),
(125,2120),
(125,4785),
(123,2125),
(123,4787),
(123,4788),
(123,4789),
(126,1020),
(126,2127),
(126,4786),
(127,1145),
(127,2130),
(128,1022),
(128,2120),
(128,4785),
(128,4792),
(130,1030),
(130,4785),
(130,4790),
(131,4791),
(131,2120);

create table obra(
idObra int,
nombre varchar(45),
constraint pk_obra primary key (idObra)
)Engine = InnoDB;

insert into obra values
(8775, "El hombre del maletin"),
(8856, "Medical Center"),
(8862, "La luna dorada"),
(8930, "La mansion misteriosa"),
(9012, "El idolo y la joven");

create table ObraTraje(
idObra int,
idTraje int,
constraint pk_ObraTraje primary key (idObra, idTraje),
constraint fk_Obratraje_traje foreign key (idtraje) references traje (idtraje),
constraint fk_Obratraje_obra foreign key (idobra) references obra (idobra)
)Engine = InnoDB;

insert into ObraTraje values
(8775,123),
(8775,126),
(8775,125),
(8862,125),
(8862,126),
(8862,123),
(8856,127),
(8856,120),
(8856,130),
(8856,128),
(8930,131),
(8930,126),
(9012,120),
(9012,125),
(9012,128),
(9012,126);


create table encargo(
idEncargo int auto_increment,
codTraje int,
cantidad int,
fecha date,
estado boolean, 
constraint pk_encargo primary key (idEncargo),
constraint fk_encargo_traje foreign key (codtraje) references traje (idtraje)
)Engine = InnoDB;


create table movimiento(
idM int auto_increment,
codtraje int,
cantidad int,
constraint pk_movimiento  primary key (idM)
)Engine = InnoDB;

insert into movimiento (codtraje,cantidad) values
(123,2),
(120,6),
(125,2),
(130,4),
(123,2);
