USE tienda;
#1 ¿Cuál es el nombre de los empleados cuyo sueldo es menor a $10,000?    

# Primero obtenemos aquellos empleados que tienen un suedo mayor a 10000 de la tabla puesto
SELECT id_puesto,salario FROM puesto 
WHERE salario > 10000;

# De la tabla empleado realizamos la subconsulta anterior para conocer el nombre completo 
SELECT nombre,apellido_paterno,apellido_materno FROM empleado
WHERE id_puesto in 
(SELECT id_puesto FROM puesto
WHERE salario > 10000);

#2 ¿Cuál es la cantidad mínima y máxima de ventas de cada empleado?

# Se realiza un coteo de las ventas realizadas por cada empleada en la tabla venta
SELECT clave, id_empleado, COUNT(*) AS ventas_empleado
FROM venta
GROUP BY clave, id_empleado;

# Se grupan las ventas minimas y maximas por id_empleado. Porteriomete realizamos la subconsulta anterior.
SELECT id_empleado, MIN(ventas_empleado), MAX(ventas_empleado)
FROM 
(SELECT clave, id_empleado, COUNT(*) AS ventas_empleado
FROM venta
GROUP BY clave, id_empleado) AS subconsulta
GROUP BY id_empleado
ORDER BY id_empleado;

#3 ¿Cuáles claves de venta incluyen artículos cuyos precios son mayores a $5,000?
	
# Se consultan los articulos tienen un precio mayor a 5000 de la tabla articulo
SELECT id_articulo FROM articulo
WHERE precio > 5000;

# De la tabla venta realizamos la subconsulta anterior para conocer el id_articulo y clave
SELECT clave,id_articulo FROM venta
WHERE id_articulo in 
(SELECT id_articulo FROM articulo
WHERE precio > 5000);