

/* =======================================================================================	
			Observa que este texto esta encerrado entre barra asterisco, asterisco barra
			y su color es verde (en el notePad), quiere decir que es un comentario y si se ejecuta
			en MySQL el sistema gestor lo ignora 
			Por lo tanto encontraras explicaciones en este archivo bajo este formato 
	========================================================================================================== */
	
/* ============================================================================================	
			Datos para la tabla SOCIO 
			Fijate que los datos varchar estan entre COMILLAS 
===============================================================================================  */
	
insert into socio values
(20145, '11452452','Maria Josefuna', 'Luro', 'Av Nazca 21478 CABA', '47857855'),
(20154, '19785452', 'Marcos', 'Nevarez', 'Trelles 1234 CABA', '47852154'),             
(21489, '20145874', 'Juliana', 'Laprida', 'Bacacay 10789 Haedo', '49061236'),
(21474, '22145986', 'Karina', 'Quirno', 'Bolivia 52345 CABA', '47851414');

insert into autor values
 (1452, 'Jose Maria', 'Martin', '42345654', 'JoseMartin@hotmail.com', '45725439'),
 (1454, 'Martin', 'Pozuelo', '34823492', 'MartinPozuelo@hotmail.com', '45743245'),
 (1451, 'Enrique', 'Palladino', '34562812', 'EnriquePalladino@hotmail.com', '45741423'),
 (1455, 'Leandro', 'Palladino', '34234547', 'LeandroPalladino@hotmail.com', '45723468'),
 (1453, 'Judith', 'Shulman','34567928', 'JudithShulman@hotmail.com', '45721564'),
 (1457, 'Rachel', 'Lotan', '45912840', 'RachelLotan@hotmail.com', '45863291'),
 (1450, 'Jennifer', 'Whitcomb', '32948102', 'JenniferWhitcomb@hotmail.com', '45824092'),
 (1280, 'Fernando', 'Casale','20469516','Casale12@gmail.com','47896134'),
 (1281, 'Gustavo', 'Katcheroff', '18567345', 'KGustavo@hotmail.com', '41235656'),
 (1285,'Jose Javier','García Badell','16897516','javiercitoGB@hotmail.com','41255498');

insert into libro values
 (83, 'Arquitectura de equipos y sistemas informaticos','9788478978687', 'Ra-Ma', '2008/03/04','2008/02/01'), 
 (81, 'Adminnistracion Organizacional','9789508020733', 'Espacio', '1998/04/07', '1998/12/12'),
 (82, 'El trabajo en grupo y la diversidad en el aula' , '978950518817X', 'Amorrortu editores', '1998/05/06', '1999/04/08'),
 (40, 'Manual de Diseño Web 2001','9789875260665','MP Ediciones','1997/05/26','1998/09/15'),
 (45,'CLIPPER 5.2','9788448119169','McGRAW-HILL','2007/03/09','2010/08/21');


insert into libroautor values 
(83, 1452),
(83, 1454),
(81, 1451),
(81, 1455),
(82, 1453),
(82, 1457),
(82, 1450),
(40, 1280),
(40, 1281),
(45, 1285);

/* =========================================================
				El dato booleano puede ser verdadero o falso
				 en este caso se uso el 1 o el 0
 ======================================================== */
insert into ejemplar values
 (420,83,1,0,1),
 (421,83,2,0,0),
 (422,83,3,0,0),
 (423,83,4,0,1), 
 (424,83,5,0,0),
 (425,81,1,0,0),
 (426,81,2,0,0),
 (427,81,3,0,1),
 (428,81,4,0,0),
 (429,81,5,0,0),
 (430,81,6,0,0),
 (431,81,7,0,0),
 (432,82,1,0,0),
 (433,82,2,0,0),
 (434,82,3,1,0),
 (435,82,4,0,0),
 (436,82,5,0,0),
 (437,40,12,1,1),
 (438,40,10,0,1),
 (439,40,8,1,1),
 (440,40,7,1,1),
 (441,40,6,0,1);
 
 
 insert into Prestamo values
(1, 20154, '2023/03/29', '2023/04/08', '2023/04/08'),
(2, 20154, '2023/04/01', '2023/04/08', '2023/04/10'),
(3, 21489, '2023/04/01','2023/04/08', '2023/04/10'),
(4, 20154, '2023/04/02', '2023/04/11', '2023/04/11');


insert into DetallePre values
(1,437),
(1,423),
(2,438),
(3,441),
(3,420),
(4,427);

/* ==========================================================================================================

				si queres ver las tablas cargadas


				MariaDB [Biblioteca]> show tables;
				+----------------------+
				| Tables_in_biblioteca |
				+----------------------+
				| autor                |
				| detallepre           |
				| ejemplar             |
				| libro                |
				| libroautor           |
				| prestamo             |
				| socio                |
				+----------------------+
				7 rows in set (0.00 sec)


				Para conocer lo que tiene cada tabla podes  ejecutar
				El * significa que se proyectan TODAS las columnas

						SELECT * FROM (Nombre-Tabla);
						
				Por ejemplo
						 select * from socio;	

				+----------+----------+----------------+----------+---------------------+----------+
				| CodSocio | DNI      | Nombre         | Apellido | Direccion           | Tel      |
				+----------+----------+----------------+----------+---------------------+----------+
				|    20145 | 11452452 | Maria Josefuna | Luro     | Av Nazca 21478 CABA | 47857855 |
				|    20154 | 19785452 | Marcos         | Nevarez  | Trelles 1234 CABA   | 47852154 |
				|    21474 | 22145986 | Karina         | Quirno   | Bolivia 52345 CABA  | 47851414 |
				|    21489 | 20145874 | Juliana        | Laprida  | Bacacay 10789 Haedo | 49061236 |
				+----------+----------+----------------+----------+---------------------+----------+
				4 rows in set (0.01 sec)



==========================================================================================*/