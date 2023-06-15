--3. Obtener los productos vendidos de mayor precio unitario, 
--entre los vendidos en el año 2013.

SELECT DISTINCT p.ProductID, p.Name, sod2.UnitPrice 
FROM AdventureWorks2019.Production.Product p 
LEFT JOIN AdventureWorks2019.Sales.SalesOrderDetail sod2 
ON p.ProductID = sod2.ProductID 
LEFT JOIN AdventureWorks2019.Sales.SalesOrderHeader soh2 
ON sod2.SalesOrderID = soh2.SalesOrderID
WHERE sod2.UnitPrice = (
	SELECT MAX(sod.UnitPrice)
	FROM AdventureWorks2019.Sales.SalesOrderDetail sod 
	LEFT JOIN AdventureWorks2019.Sales.SalesOrderHeader soh 
	ON sod.SalesOrderID = soh.SalesOrderID
	WHERE YEAR(soh.OrderDate) = 2013
	)
AND YEAR(soh2.OrderDate) = 2013
