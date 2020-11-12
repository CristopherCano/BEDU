USE tienda;
#1 ¿Cuál es el nombre de los empleados que realizaron cada venta?

SELECT clave, 
CONCAT(nombre,' ',
apellido_paterno) AS nombre_completo
FROM venta AS v
INNER JOIN empleado AS e
ON v.id_empleado = e.id_empleado	#Unimos las tablas venta y empleado
ORDER BY clave;

#2 ¿Cuál es el nombre de los artículos que se han vendido?

SELECT nombre, clave, fecha
FROM venta AS v
INNER JOIN articulo AS a
ON a.id_articulo = v.id_articulo	#Unimos las tablas venta y articulo
ORDER BY clave;

#3 ¿Cuál es el total de cada venta?

SELECT clave, COUNT(*) AS cantidad, 
SUM(precio) AS monto_total
FROM venta AS v
INNER JOIN articulo AS a
ON v.id_articulo = a.id_articulo	#Unimos las tbalas venta y articulo
GROUP BY clave    
ORDER BY clave;



