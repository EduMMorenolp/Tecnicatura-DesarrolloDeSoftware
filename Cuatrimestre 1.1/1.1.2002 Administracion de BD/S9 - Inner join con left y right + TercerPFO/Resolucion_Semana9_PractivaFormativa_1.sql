-- Consultas

-- 1) Mostrar los clientes registrados que aún no tienen ingreso en el taller para un diagnóstico.
select distinct  c.codC, c.dni,c.Nombre,c.Apellido 
from cliente c
inner join vehiculo v 
	on (v.codC = c.codC)
left join ficha f 
	on (f.codVEH = v.codVEH)
where f.codveh is null
order by c.Apellido,c.nombre;

-- 2) Obtener un listado ordenado por apellido de los mecánicos y el tipo. 
-- El tipo esta definido con el atributo repara. Para mostrar el listado se pide armar dos select y aplicar la función unión.

select codMec,nombre,apellido, repara  
from mecanico m
where repara = 0 
union 
select codMec,nombre,apellido, repara  
from mecanico m
where repara = 1
order by apellido;

