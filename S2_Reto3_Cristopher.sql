#¿Cuántos registros hay por cada uno de los puestos?
SELECT nombre, count(*) AS numero_puestos FROM puesto GROUP BY nombre;
#¿Cuánto dinero se paga en total por puesto?
SELECT nombre, sum(salario) AS total_pago FROM puesto GROUP BY nombre;
#¿Cuál es el número total de ventas por vendedor?
select * FROM venta;
SELECT id_empleado, count(*) as ventas_totales_empleado FROM venta GROUP BY id_empleado;
#¿Cuál es el número total de ventas por artículo?
SELECT id_articulo, count(*) as ventas__totales_articulo FROM venta GROUP BY id_articulo;