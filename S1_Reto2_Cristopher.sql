#¿Cuál es el nombre de los empleados con el puesto 4?
select * from empleado where 
id_puesto = 4; #2

#¿Qué puestos tienen un salario mayor a $10,000?
select * from puesto where
salario > 1000; #mayor 

#¿Qué articulos tienen un precio mayor a $1,000 y un iva mayor a 100?
select * from articulo where 
precio > 1000 and iva > 100;

#¿Qué ventas incluyen los artículo 135 o 963 y fueron hechas por los empleados 835 o 369?
select * from venta where
id_articulo in (135, 963) and 
id_empleado in (835, 369);