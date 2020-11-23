#Ejercicios Sesión 1

#En este pequeño proyecto aplicarás los conceptos adquiridos durante la sesión:

#Descripción de tablas
#Consulta de los campos de una tabla
#Cláusula WHERE
#Operadores relacionales
#Operadores lógicos
#Cláusula ORDER BY
#Cláusula LIMIT

USE classicmodels;
SELECT * FROM employees;

#1.Dentro de la tabla employees, obtén el apellido de todos los empleados.
SELECT lastName FROM employees;

#2.Dentro de la tabla employees, obtén el apellido, nombre y puesto de todos los empleados.
SELECT lastName, firstName, jobTitle FROM employees;

#3.Dentro de la tabla employees, obtén todos los datos de cada empleado.
SELECT extension, email, officeCode FROM employees;

#4.Dentro de la tabla employees, obtén el apellido, nombre y puesto de todos los empleados que tengan el puesto Sales Rep.
SELECT lastName, firstName, jobTitle FROM employees 
WHERE jobTitle="Sales Rep";

#5.Dentro de la tabla employees, obtén el apellido, nombre, puesto y código de oficina de todos los empleados que tengan el puesto Sales Rep y código de oficina 1.
SELECT lastName, firstName, jobTitle, officeCode FROM employees 
WHERE jobTitle="Sales Rep" AND officeCode = 1;

#6.Dentro de la tabla employees, obtén el apellido, nombre, puesto y código de oficina de todos los empleados que tengan el puesto Sales Rep o código de oficina 1.
SELECT lastName, firstName, jobTitle,officeCode FROM employees 
WHERE jobTitle="Sales Rep" OR  officeCode = 1;

#7.Dentro de la tabla employees, obtén el apellido, nombre y código de oficina de todos los empleados que tenga código de oficina 1, 2 o 3.
SELECT lastName, firstName, jobTitle,officeCode FROM employees 
WHERE officeCode IN (1,2,3);

#8 Dentro de la tabla employees, obten el apellido, nombre y puesto de todos los empleados que tengan un puesto distinto a Sales Rep.
SELECT lastName, firstName, jobTitle FROM employees 
WHERE NOT jobTitle="Sales Rep";

#9.Dentro de la tabla employees, obtén el apellido, nombre y código de oficina de todos los empleados cuyo código de oficina sea mayor a 5.
SELECT lastName, firstName, officeCode FROM employees 
WHERE officeCode > 5;

#10.Dentro de la tabla employees, obtén el apellido, nombre y código de oficina de todos los empleados cuyo cdigo de oficina sea menor o igual 4.
SELECT lastName, firstName, officeCode FROM employees 
WHERE officeCode <= 4;

#11.Dentro de la tabla customers, obtén el nombre, país y estado de todos los clientes cuyo país sea USA y cuyo estado sea CA.
SELECT * FROM customers;

SELECT customerName, country, state 
FROM customers
WHERE country = "USA" 
AND state = "CA";

#12.Dentro de la tabla customers, obtén el nombre, país, estado y límite de crédito de todos los clientes cuyo país sea, USA, cuyo estado sea CA y cuyo límite de crédito sea mayor a 100000.
SELECT customerName, country, state, creditLimit 
FROM customers
WHERE country = "USA" 
AND state = "CA"
AND creditLimit > 100000;

#13.Dentro de la tabla customers, obtén el nombre y país de todos los clientes cuyo país sea USA o France.
SELECT customerName, country
FROM customers
WHERE country IN ("USA", "France");

#14.Dentro de la tabla customers, obtén el nombre, pas y límite de crédito de todos los clientes cuyo país sea USA o France y cuyo límite de crédito sea mayor a 100000. Para este ejercicio ten cuidado con los paréntesis.
SELECT customerName, country, creditLimit 
FROM customers
WHERE country IN ("USA","France")
AND creditLimit > 100000;

#15.Dentro de la tabla offices, obtén el código de la oficina, ciudad, teléfono y país de aquellas oficinas que se encuentren en USA o France.
SELECT * FROM offices;

SELECT officeCode, city, phone, country
FROM offices
WHERE country IN ("USA", "France");

#16.Dentro de la tabla offices, obtén el código de la oficina, ciudad, teléfono y país de aquellas oficinas que no se encuentren en USA o France.
SELECT officeCode, city, phone, country
FROM offices
WHERE country  NOT IN ("USA","France");

#17.Dentro de la tabla orders, obtén el número de orden, número de cliente, estado y fecha de envío de todas las órdenes con el número 10165, 10287 o 10310.
SELECT * FROM orders;

SELECT orderNumber, customerNumber, status, shippedDate
FROM orders
WHERE orderNumber in (10165,10287,10310);

#18.Dentro de la tabla customers, obtén el apellido y nombre de cada cliente y ordena los resultados por apellido de forma ascendente.
SELECT * FROM customers;

SELECT contactLastName, contactFirstName
FROM customers
ORDER BY contactLastName;

#19.Dentro de la tabla customers, obtén el apellido y nombre de cada cliente y ordena los resultados por apellido de forma descendente.
SELECT contactLastName, contactFirstName
FROM customers
ORDER BY contactLastName DESC;

#20.Dentro de la tabla customers, obtén el apellido y nombre de cada cliente y ordena los resultados por apellido de forma descendente y luego por nombre de forma ascendente.
SELECT contactLastName, contactFirstName
FROM customers
ORDER BY contactLastName DESC, contactFirstName ASC;

#21.Dentro de la tabla customers, obtén el número de cliente, nombre de cliente y el límite de crédito de los cinco clientes con el límite de crédito más alto (top 5).
SELECT customerNumber, contactFirstName, creditLimit
FROM customers
ORDER BY creditLimit DESC
LIMIT 5;

#22.Dentro de la tabla customers, obtén el número de cliente, nombre de cliente y el límite de crédito de los cinco clientes con el límite de crédito más bajo.
SELECT customerNumber, contactFirstName, creditLimit
FROM customers
WHERE creditLimit NOT IN (0)
ORDER BY creditLimit ASC
LIMIT 5;

