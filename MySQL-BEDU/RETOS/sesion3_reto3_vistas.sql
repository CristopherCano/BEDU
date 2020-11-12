USE tienda;
#1 Obtener el puesto de un empleado.
SELECT * FROM empleado;
SELECT * FROM puesto;

SELECT p.nombre AS nombre_puesto, 
CONCAT(e.nombre, ' ',
 e.apellido_paterno,' ',
 e.apellido_materno) AS nombre_completo
FROM empleado AS e
INNER JOIN puesto AS p
ON e.id_puesto = p.id_puesto;

CREATE VIEW nomina1 AS (
	SELECT p.nombre AS nombre_puesto, 
	 CONCAT(e.nombre, ' ', 
	 e.apellido_paterno,' ',
	 e.apellido_materno) AS nombre_completo
	FROM empleado AS e
	INNER JOIN puesto AS p
	ON e.id_puesto = p.id_puesto
);

SELECT * FROM nomina1;

#2 Saber qué artículos ha vendido cada empleado.
SELECT * FROM empleado;
SELECT * FROM articulo;
SELECT * FROM venta;

SELECT 
  CONCAT(e.nombre, ' ', 
  e.apellido_paterno, ' ', 
  e.apellido_materno) AS nombre_completo,
  a.nombre AS nombre_articulo,
  clave, fecha, cantidad
FROM empleado AS e
INNER JOIN venta as v
ON v.id_empleado = e.id_empleado
INNER JOIN articulo AS a
ON v.id_articulo = a.id_articulo
ORDER BY clave;

CREATE VIEW articulos_vendidos AS (
	SELECT 
	  CONCAT(e.nombre, ' ', 
	  e.apellido_paterno, ' ', 
	  e.apellido_materno) AS nombre_completo,
	  a.nombre AS nombre_articulo,
	  clave, fecha, cantidad
	FROM empleado AS e
	INNER JOIN venta as v
	ON v.id_empleado = e.id_empleado
	INNER JOIN articulo AS a
	ON v.id_articulo = a.id_articulo
	ORDER BY clave
);

SELECT * FROM articulos_vendidos;

#3 Saber qué puesto ha tenido más ventas.
SELECT * FROM empleado;
SELECT * FROM puesto;
SELECT * FROM venta;

SELECT p.nombre, COUNT(v.clave) AS ventas_por_puesto
FROM venta AS v
JOIN empleado AS e
  ON v.id_empleado = e.id_empleado
JOIN puesto AS p
  ON e.id_puesto = p.id_puesto
GROUP BY p.nombre
ORDER BY ventas_por_puesto DESC;

CREATE VIEW ranking_ventas AS (
  SELECT p.nombre, COUNT(v.clave) AS ventas_por_puesto
  FROM venta AS v
    JOIN empleado AS e
  ON v.id_empleado = e.id_empleado
    JOIN puesto AS p
  ON e.id_puesto = p.id_puesto
  GROUP BY p.nombre
  ORDER BY ventas_por_puesto DESC
);

SELECT * FROM ranking_ventas
ORDER BY ventas_por_puesto DESC
LIMIT 1
;



