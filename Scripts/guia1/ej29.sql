--29.Usando la misma tabla, cuál es la cantidad de órdenes emitidas para cada cliente en cada
--año?

SELECT YEAR(OrderDate), CustomerID, COUNT(SalesOrderID)
FROM AdventureWorks2019.Sales.SalesOrderHeader soh 
GROUP BY YEAR(OrderDate), CustomerID