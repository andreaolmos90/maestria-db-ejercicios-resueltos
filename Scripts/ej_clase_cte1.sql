--numero promedio de pedidos de venta de todos los años para los representantes de ventas

WITH CTE_SALES (salesPersonID, numberOfSales, yearSales) AS

(SELECT soh.SalesPersonID, YEAR(soh.OrderDate) as yearSales, COUNT(soh.SalesOrderID) AS numberOfSales 
FROM AdventureWorks2019.Sales.SalesOrderHeader soh
WHERE soh.SalesPersonID IS NOT NULL
GROUP BY soh.SalesPersonID, YEAR(soh.OrderDate))

SELECT salesPersonID, AVG(numberOfSales) AS AVG_SALES, COUNT(numberOfSales)
FROM CTE_SALES
GROUP BY(salesPersonID)
