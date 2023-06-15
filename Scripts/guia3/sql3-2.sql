--2. Usando subconsultas, obtener Id y nombre de los productos que no hayan 
--sido vendidos nunca.

SELECT DISTINCT p.ProductID, p.Name
FROM AdventureWorks2019.Production.Product p 
WHERE p.ProductID NOT IN (
	SELECT sod.ProductID
	FROM AdventureWorks2019.Sales.SalesOrderDetail sod 
	LEFT JOIN AdventureWorks2019.Sales.SalesOrderHeader soh 
	ON sod.SalesOrderID = soh.SalesOrderID 
	)

