--14. Encontrar los nombres de los empleados que también sean vendedores. 
--Usar subconsultas anidadas.

SELECT e.BusinessEntityID, p.FirstName, p.LastName 
FROM AdventureWorks2019.HumanResources.Employee e 
LEFT JOIN AdventureWorks2019.Person.Person p 
ON e.BusinessEntityID = p.BusinessEntityID 
WHERE e.BusinessEntityID IN (SELECT soh.SalesPersonID 
							FROM AdventureWorks2019.Sales.SalesOrderHeader soh)