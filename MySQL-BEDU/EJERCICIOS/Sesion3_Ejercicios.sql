#Para estas consultas usa RIGHT JOIN
#Repite los ejercicios 5 a 7 usando RIGHT JOIN.

#Escoge 3 consultas de los ejercicios anteriores, crea una vista y escribe una consulta para cada una.
#Obtén el número de cliente, nombre de cliente, número de orden y estado de cada cliente.
SELECT * FROM orders;
SELECT * FROM customers;

SELECT c.customerNumber, c.customerName, o.orderNumber, o.status
FROM customers AS c
RIGHT JOIN orders AS o
ON c.customerNumber = o.customerNumber;

#Obtén los clientes que no tienen una orden asociada.
SELECT DISTINCT customerNumber FROM orders;
SELECT * FROM customers;

SELECT c.customerNumber, c.customerName
FROM orders o
RIGHT JOIN customers c
ON o.customerNumber = c.customerNumber
WHERE o.customerNumber IS NULL;


#Obtén el apellido de empleado, nombre de empleado, nombre de cliente, número de cheque y total, es decir, los clientes asociados a cada empleado.
SELECT * FROM employees;
SELECT * FROM customers;
SELECT * FROM payments;

SELECT p.checkNumber, 
p.amount, c.customerName, 
c.salesRepEmployeeNumber,
e.lastName, e.firstName
FROM payments AS p
RIGHT JOIN customers AS c
ON p.customerNumber = c.customerNumber
RIGHT JOIN employees AS e
ON c.salesRepEmployeeNumber= e.employeeNumber;


