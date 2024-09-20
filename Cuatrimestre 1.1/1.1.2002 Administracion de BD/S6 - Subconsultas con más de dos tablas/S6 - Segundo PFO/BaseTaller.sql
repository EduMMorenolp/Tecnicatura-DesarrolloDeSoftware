
drop database if exists taller;
create database taller;
use taller;


create table cliente(
codC int,
DNI varchar(12),
Nombre Varchar(45),
Apellido varchar(50),
Direccion varchar(70),
tel varchar(15),
constraint PK_cliente primary key(codC)
)ENGINE=INNODB;

insert into cliente values
(1022,'19785452','Micaela','Fuentes','Heguera 1840 Haedo Pcia Bs.As.','48526323'),
(1023,'36478298','Luis','Rodriguez','Lope de Vega 1089 CABA','28495378'),
(1027,'43570272','Dylan','Toscano','Andres Vallejos 3067 PB B CABA','1554895973'),
(1028,'44520290','Sofia','Cristalino','Devoto 2207 depto C CABA','1123436647'),
(1030,'08007220','Juan','Garcia','Baigorria 123 CABA','15151516'),
(1040,'16452236','Blanca','Quiroga','Miranda 1047 Moron Pcia Bs.As.','45263232'),
(1043,'44791232','Fiorela','Vazquez','Pasaje Pedro 1212 CABA','1536201577'),
(1047,'25364823','Manuel', 'Gonzales','Av Sabara 1234 CABA','47778585'),
(1048,'45848254','Hernan','Hernandez','Madero 954 Caseros Pcia Bs.As.','45785114'),
(1050,'30500505','Julio','Domingo','Beiro 2457 CABA','1150550511'),
(1055,'44218713','Facundo','Abadi','Av de los Incas 123 CABA','1512132223'),
(1056,'25410014','Claudia','Laprida','Morelos 1020 CABA','1520203623'),
(1059,'45678907','Micaela','Suarez','Escalada 4500 CABA','45663344'),
(1061,'43630332','Miguel','Fernandez','Pola 100 CABA','15151515'),
(1062,'43630333','Anastasia','Romanov','Eva Peron 4330 CABA','15151516'),
(1063,'30241690','Hector','Caceres','Nueva York 1964 CABA','15891912'),
(1067,'31224678','Daniel','Alvarez','Emilio Lamarca 1509 CABA','15666772'),
(1069,'15468894','Pablo','Cortez','Argerich 3500 CABA','89554332'),
(1070,'12253634','Matias','de la Fuente','Lope de Vega 2051 CABA','65656250'),
(1073,'41456878','Maria','Martines','Madero 4578 CABA','1156789808'),
(1074,'26438918','Maximiliano','Power','Lezcano2458 CABA','34256763'),
(1078,'24123491','Abel','Muruchi','Urquiza_4037 CABA','44556677'),
(1083,'44712296','Nicolas','Marquez','Aguirre 3078 CABA','1136185262'),
(1084,'21489342','Mariano','Yanani','Corrientes 1763 Caseros Pcia Bs.As.','45681903'),
(1094,'15289876','Matias','Hernandez','Av San Martin 3500 CABA','1578364085'),
(1096,'44321456','Thiago','Fernandez','Helguera 3450 CABA','1234543210'),
(1098,'42161735','Ludmila','Perez','25 de Mayo 177 Haedo Pcia Bs.As.','1144397957'),
(1104,'60412343','Julio','Argüello','Bolivares 4332 CABA','43242334');


create table mecanico(
codMec int,
Nombre Varchar(45),
Apellido varchar(50),
DNI varchar(12),
tel varchar(15),
repara boolean,    /* 0 si diagnostica y 1 si repara */
constraint PK_mecanico primary key(codMec)
)ENGINE=INNODB;

insert into mecanico values
(476,'Miguel','Fernandez','11222333','15151515',0),
(477,'Marcelo','Juarez','20123145','45892356',1),
(478,'Margarita','Hidalgo','11222333','58091478',0),
(481,'Melchor','Moreno','94857365','38475638',1),
(483,'Pedro','Peña','12345678','58091479',0),
(484,'Matias','Benitez','44263814','1126259156',0),
(488,'Federico','Cristalino','44230903','1126259155',0),
(497,'Martin','Martinez','33445566','1122233434',0),
(499,'Antonio','Costas','32846783','1158091478',0),
(501,'Jose Maria','Mayo','90348576','26734901',1),
(504,'Juan','Dominguez','46847514','46817514',0),
(506,'Julia','Ramirez','30600506','1150650611',0),
(509,'Raul','Damonte','18184454','1515155220',1),
(514,'Gustavo','Lopez','20122013','89902233',1),
(516,'Osvaldo','Correa','28491029','15235678',0),
(517,'Joaquin','Ragonese','25146920','15224578',1),
(521,'Emiliano','Estrada','71228339','58091478',0),
(522,'Loana','Albear','16520499','42789332',0),
(526,'Sara','Gustani','40234532','1523778632',0),
(524,'Luciano','Florian','42518989','158909128',1),
(528,'Samuel','Condori','24123908','22334455',1),
(540,'Javier','Benitez','37289212','1582332554',1),
(542,'Fabian','Gutierrez','44273197','6590351237',0),
(544,'David','Rojas','46166677','1123917471',0),
(550,'Sofia','Moreyra','43123323','49877894',1);

create table mecdiag(
codMD int,
tematica varchar(70),
codMec int,
constraint PK_mecdiag primary key(codMD),
constraint FK_mecdiag_mec foreign key(codMec) references mecanico(codMec)
)ENGINE=INNODB;


insert into MecDiag values 
(2122,'Motor roto',483),
(2127,'Motores en general',488),
(2143,'Resortes del diferencial rotos',497),
(2155,'Neumaticos',499),
(2151,'Puertas',506),
(2160,'Motores',476),
(2161,'Analista de chasis',504),
(2163,'Analista de piston',484),
(2164,'Electricista',478),
(2165,'Amortiguadores y direccion',516),
(2166,'Direccion',526),
(2168,'Tren delantero',521),
(2190,'Mecanica general',522),
(2197,'Neumatica',542),
(2199,'Tren delantero',544);


create table mecrep(
codMR int,
horaE time,
horaS time,
codMec int,
constraint PK_mecrep primary key(codMR),
constraint FK_mecrep_mec foreign key(codMec) references mecanico(codMec)
)ENGINE=INNODB;


insert into MECREP values
(4233,'17:05','19:45',481),
(4235,'07:45','22:00',477),
(4255,'12:00','20:00',501),
(4256,'08:00','14:30',509),
(4267,'13:00','19:00',514),
(4272,'14:45','20:30',517),
(4293,'10:00','15:45',540),
(4294,'11:00','12:00',524),
(4296,'10:00','18:30',528),
(4303,'7:45','18:00',550);


create table vehiculo(
codVEH int,
Matricula varchar(7),
Modelo varchar(45),
Marca varchar(50),
Color varchar(25),
codC int,
constraint PK_codVEH primary key(codVEH),
constraint FK_vehiculo FOREIGN key(codC) references cliente(codC)
)ENGINE=INNODB;


insert into Vehiculo values
(894,'NVM191','Veneno','Benztruk','Verde',1027),
(895,'BLH189','R8-E-TRON','Audi','Rojo',1028),
(896,'AAA000','LaFerrari','Ferrari','rojo',1030),
(897,'BBB222','Italia','Ferrari','Amarillo',1030),
(898,'JKL203','Fiesta','Ford','Azul',1022),
(1000,'HCO379','Clio','Renault','Gris',1040),
(1004,'ABC567','Impreza','Subaru','Azul',1047),
(1007,'MTC491','Punto','Fiat','Azul Oscuro',1050),
(1008,'HJY295','505','Peugeot','Negro',1048),
(1009,'NPW301','Suran','Volkswagen','Gris',1055),
(1010,'DRB249','Tiggo 3','Chery','Arena',1056),
(1013,'GG149EZ','100','Fiat','azul',1061),
(1014,'GG149WP','306','peugeot','rojo',1062),
(1015,'JAJ508','89','Peugeot','Azul',1023),
(1016,'ATR468','90','Volkswagen','Amarillo',1059),
(1017,'GSM602','Kangoo','Renault','Gris',1063),
(1018,'FLC112','Fiesta','Ford','Negro',1043),
(1020,'GJD884', 'Siena', 'Chevrolet', 'Negro', 1067),
(1022,'HGG223','Fiorino','Fiat','Negro',1083),
(1024,'AB124CD','NissanJuke','Nissan','Rojo',1073),
(1026,'CRO234','Reno 19','Renault','Fucsia',1074),
(1029,'ARE855','EcoSport','Ford','Blanco',1078),
(1041,'AAD590','Fiesta','Ford','Negro',1096),
(1044,'BNE745','Uno','Fiat','Rojo',1094),
(1045,'CVL323','405','Peugeot','Verde oscuro',1098),
(1049,'DNJ312','Fiesta','Ford','Rojo',1104),
(1051,'NBA987','Falcon','Ford','Bordo',1104);


create table repuesto(
codRep int,
Nombre varchar (50),
stock int,
PP int,
precio float,
Unidad varchar(20),
constraint PK_codRep primary key(codRep)
)ENGINE=INNODB;


insert into Repuesto values
(60,'Motor',2,1,65000,'Por unidad'),
(61,'Rueda',5,2,1000,'Por unidad'),
(62,'Ventana',50,10,1000,'Por unidad'),
(63,'Retrovisor',150,50,500,'Por unidad'),
(65,'Cigüeñal',10,8,3000,'Cada uno'),
(66,'Grasa de caja de cambios',8,3,900,'Por tarro de 1/2 kg'),
(78,'Limpiaparabrisas',7,9,359,'Por dos unidades'),
(80,'Barra caja de cambios',2,1,1200,'Por unidad'),
(81,'Volante',2,2,14300,'Por unidad'),
(83,'Tapa de cilindro gol trend',11,10,9800,'Por unidad'),
(84,'Discos de frenos',7,3,1300,'Por unidad'),
(86,'Cigüeñal Ford Universal',6,3,7000,'Por unidad'),
(87,'Motor Volkswagen 2.0',2,1,30000,'Por unidad'),
(88,'Arbol de levas corsa 1.6',3,1,8500,'Por unidad'),
(89,'Embrague de auto 250',4,3,6250,'Por unidad'),
(90,'Puerta',50,9,5600,'Por unidad'),
(91,'Bocina',14,6,3000,'Por unidad'),
(92,'Diferencial',2,1,12567,'Por unidad'),
(93,'Carburador',6,3,5678,'Por unidad'),
(94,'Cadena distribucion Peugeot 308',16,4,24000,'Por unidad'),
(95,'Embrague Ford',14,7,49266,'Por unidad'),
(96,'Amortiguador Peugeot 308',4,2,4000,'Por unidad'),
(97,'Pack de Ruedas Todo terreno',2,2,4000,'Por unidad'),
(115,'Kit reparacion parrilla Peugeot',4,2,1200,'Por set completo'),
(118,'Tren delantero original Peugeot',1,0,9500,'Por kit de 10 piezas'),
(119,'Llanta',40,15,1800,'Por 2 unidades'),
(120,'Arbol de Levas',20,5,8500,'Por unidad'),
(121,'Valvula de admision',30,10,250,'Por 10 unidades'),
(122,'Caja de Cambios',50,10,14600,'Por 2 unidades'),
(123,'Cilindro',10,5,3045,'Por unidad'),
(124,'Piston',9,5,1200,'Por unidad'),
(129,'Parachoques',26,10,60,'cada 2 unidades');


create table ficha(
codF int,
codVEH int,
fecha date,
hora time,
constraint PK_ficha primary key(codF),
constraint FK_codC_ficha FOREIGN key(codVEH) references vehiculo(codVEH)
)ENGINE=INNODB;

insert into ficha values
(8003,1020,'2023/03/30','09:20'),
(8004,1007,'2023/03/30','13:50'),
(8005,1014,'2023/04/01','08:30'),
(8006,896,'2023/04/01','10:45'),
(8007,1017,'2023/04/05','12:38');


create table fichamd(
codF int,
codMD int,
informe varchar(100),
constraint PK_FichaMD primary key(codMD,codF),
constraint FK_codF FOREIGN key(codF) references ficha(codF),
constraint FK_codMD_FM FOREIGN key(codMD) references MecDiag(codMD)
)ENGINE=INNODB;

insert into fichamd values
(8003,2160,'Presenta rotura de motor. Se solicita reemplazo'),
(8003,2122,'Reemplazo de motor'),
(8004,2190,'Problemas con la caja de cambios'),
(8005,2168,'Choque frontal rotura tren delantero'),
(8006,2164,'Se detecto problemas electricos a nivel de luces delanteras'),
(8007,2151,'Problemas al abrir las puertas traseras');



create table presup(
NPresup int,
codF int,
fecha date,
DiagFinal varchar(100),
Monto float,
constraint PK_NPresup primary key(NPresup),
constraint FK_codF_presup FOREIGN key(codF) references ficha(codF)
)ENGINE=INNODB;

insert into presup values
(70100,8003,'2023/03/30','Se debe reeplazar el motor en su totalidad. Rotura del Block del motor',150000),
(70101,8004,'2023/04/04','Reemplazo de la grasa de la caja de cambio, y reparacion de la barra',8750),
(70102,8005,'2023/04/05','Sustitucion del tren delantero y arreglo de la parrila frontal',14000),
(70103,8006,'2023/04/06','Reseteo de la computadora interna del vehiculo con programa oficial',18500),
(70104,8007,'2023/04/06','Reparacion de cierre de puerta trasera izquierda y reemplazo de puerta derecha',9700);



create table Presurep(
Npresup int,
codRep int,
cant int,
constraint PK_PresuRep primary key(Npresup,codRep),
constraint FK_Npresu FOREIGN key(Npresup) references presup(Npresup),
constraint FK_codRe FOREIGN key(codRep) references repuesto(codRep)
)ENGINE=INNODB;

insert into presurep values
(70100,60,1),
(70101,80,1),
(70101,66,2),
(70102,115,1),
(70102,118,1),
(70104,90,1);