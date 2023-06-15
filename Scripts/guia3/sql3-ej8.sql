--8. Determinar si existen empleados y clientes con mismo Id, usando subconsultas

SELECT BusinessEntityID
FROM AdventureWorks2019.HumanResources.Employee e 
WHERE BusinessEntityID IN (SELECT CustomerID
							FROM AdventureWorks2019.Sales.Customer c)