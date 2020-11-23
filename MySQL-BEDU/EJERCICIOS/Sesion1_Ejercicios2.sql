USE classicmodels;

#6.Dentro de la tabla products, obten el código de producto y nombre de los productos cuyo código incluye la cadena _20.
SELECT * FROM products;

SELECT productCode, productName
FROM products
WHERE productCode LIKE '%\_20%';

#7.Dentro de la tabla orderdetails, obten el total de cada orden.
SELECT * FROM orderdetails;

SELECT 
orderNumber,sum(quantityOrdered) AS catidadOrdenadaTotal, 
SUM(priceEach) AS precioTotalOrdenes
FROM orderdetails
GROUP BY orderNumber;

#8.Dentro de la tabla orders obten el número de órdenes por año.
SELECT * FROM orders;

SELECT COUNT(*) AS ordenesporAño, YEAR(orderDate) AS año
FROM orders
GROUP BY YEAR(orderDate);

#9.Obten el apellido y nombre de los empleados cuya oficina está ubicada en USA.
SELECT * FROM employees;
SELECT * FROM offices;

SELECT e.firstName, e.lastName, o.city
FROM offices AS o
INNER JOIN employees AS e
ON o.officeCode = e.officeCode
WHERE o.country = "USA";

#10.Obten el número de cliente, número de cheque y cantidad del cliente que ha realizado el pago más alto.
SELECT *  FROM payments;
SELECT * FROM customers;

SELECT c.customerNumber,  p.checkNumber, p.amount
FROM payments AS p
INNER JOIN customers AS c
ON p.customerNumber = c.customerNumber
ORDER BY p.amount DESC
LIMIT 1;

#11.Obten el número de cliente, número de cheque y cantidad de aquellos clientes cuyo pago es más alto que el promedio.
SELECT customerNumber, checkNumber, amount
FROM payments
WHERE amount > (SELECT AVG(amount)
FROM payments);

#12.Obten el nombre de aquellos clientes que no han hecho ninguna orden.
SELECT *
FROM orders;

SELECT *
FROM customers;

SELECT DISTINCT *
FROM orderdetails;

SELECT customerName, customerNumber
FROM customers
WHERE customerNumber
NOT IN (SELECT DISTINCT customerNumber
FROM orders);

#13.Obten el máximo, mínimo y promedio del número de productos en las órdenes de venta.
SELECT orderNumber,MIN(orderLineNumber), MAX(orderLineNumber), AVG(orderLineNumber)
FROM orderdetails
GROUP BY orderNumber;

#14.Dentro de la tabla orders, obten el número de órdenes que hay por cada estado.
SELECT * FROM orders;

SELECT status, count(orderNumber) AS numero_de_ordenes
FROM orders
GROUP BY status;