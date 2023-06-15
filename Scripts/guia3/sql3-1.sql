--1. Usando subconsultas, obtener Id y nombre de los productos que hayan 
--sido vendidos durante el año 2013.

SELECT DISTINCT p.ProductID, p.Name
FROM AdventureWorks2019.Production.Product p 
WHERE p.ProductID IN (
	SELECT sod.ProductID
	FROM AdventureWorks2019.Sales.SalesOrderDetail sod 
	LEFT JOIN AdventureWorks2019.Sales.SalesOrderHeader soh 
	ON sod.SalesOrderID = soh.SalesOrderID 
	WHERE YEAR(soh.OrderDate) = 2013
	)

