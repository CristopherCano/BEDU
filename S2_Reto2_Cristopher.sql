#¿Cuál es el promedio de salario de los puestos?
SELECT AVG(salario) AS promedio_precio FROM puesto;
#¿Cuántos artículos incluyen la palabra Pasta en su nombre?
SELECT count(*) AS articulos_pasta FROM articulo WHERE nombre LIKE "%PASTA%";
#¿Cuál es el salario mínimo y máximo?
SELECT max(salario) AS precio_maximo FROM puesto;
SELECT min(salario) AS precio_minimo FROM puesto;
SELECT min(salario) AS precio_minimo, max(salario) AS precio_maximo FROM puesto;
#¿Cuál es la suma del salario de los últimos cinco puestos agregados?
SELECT SUM(salario) FROM (SELECT salario FROM puesto ORDER BY id_puesto DESC LIMIT 5) AS LastFive;


