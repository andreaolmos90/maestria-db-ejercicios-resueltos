--11. Para cada venta, encontrar la denominación del producto 
--de mayor precio total (precio x cantidad) de su propia orden.

SELECT sod.SalesOrderID, p.Name
FROM AdventureWorks2019.Sales.SalesOrderDetail sod 
LEFT JOIN Production.Product p 
ON sod.ProductID = p.ProductID 
WHERE LineTotal = (SELECT MAX(LineTotal)
					FROM AdventureWorks2019.Sales.SalesOrderDetail sod2 
					GROUP BY SalesOrderID 
					HAVING sod2.SalesOrderID = sod.SalesOrderID)