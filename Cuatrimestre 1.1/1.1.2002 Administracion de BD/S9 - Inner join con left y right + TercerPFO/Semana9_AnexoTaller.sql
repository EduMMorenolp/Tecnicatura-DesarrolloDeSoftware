
/* ==================================================
Esta sentencia lo que hace es agregar a la tabla <<presup>>
 el atributo aceptado con valor falso por defecto
 Este valor se cambia una vez que el cliente lo acepte
 y comienza el arreglo del vehiculo
 Lo que debes hacer es agregarlo a la base de datos
 ya creada en Mysql

========================================================== */


alter table presup add (aceptado boolean default 0);