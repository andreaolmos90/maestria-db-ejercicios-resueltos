--6. En la tabla SalesPerson se modelan los vendedores. 
--Mostrar el id de todos los vendedores junto al id de la venta, 
--para aquellas con numero de revisión igual a 9 y que se hayan vendido en el 2013. 
--Incluir a aquellos vendedores que no hayan efectuados ventas.

SELECT sp.BusinessEntityID, soh.SalesOrderID 
FROM AdventureWorks2019.Sales.SalesPerson sp 
LEFT JOIN AdventureWorks2019.Sales.SalesOrderHeader soh 
ON sp.BusinessEntityID = soh.SalesPersonID 
WHERE soh.RevisionNumber = 9 AND YEAR(soh.OrderDate) = 2013


