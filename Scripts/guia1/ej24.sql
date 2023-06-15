-- 24.¿Cuántos clientes están almacenados en la tabla Customers?

SELECT COUNT(t.CustomerID)
FROM(
SELECT DISTINCT CustomerID 
FROM AdventureWorks2019.Sales.Customer c) AS t


SELECT COUNT(c.CustomerID)
FROM AdventureWorks2019.Sales.Customer c