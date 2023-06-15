--7. Modificar la resolución del punto anterior para agregar el nombre del vendedor,
-- que se encuentra en la tabla Person.
SELECT sp.BusinessEntityID, soh.SalesOrderID, p.FirstName, p.LastName 
FROM AdventureWorks2019.Sales.SalesPerson sp 
LEFT JOIN AdventureWorks2019.Sales.SalesOrderHeader soh 
ON sp.BusinessEntityID = soh.SalesPersonID 
LEFT JOIN AdventureWorks2019.Person.Person p 
ON sp.BusinessEntityID = p.BusinessEntityID 
WHERE soh.RevisionNumber = 9 AND YEAR(soh.OrderDate) = 2013