--10. Mostrar nombre y apellido de los empleados del estado de “Oregon” 
--(esquemas Person y HumanResources)

SELECT p.FirstName, p.LastName, sp.Name 
FROM AdventureWorks2019.HumanResources.Employee e 
LEFT JOIN AdventureWorks2019.Person.BusinessEntityAddress bea
ON e.BusinessEntityID = bea.BusinessEntityID 
LEFT JOIN AdventureWorks2019.Person.Address a 
ON bea.AddressID = a.AddressID 
LEFT JOIN AdventureWorks2019.Person.StateProvince sp 
ON a.StateProvinceID = sp.StateProvinceID 
LEFT JOIN AdventureWorks2019.Person.Person p 
ON e.BusinessEntityID = p.BusinessEntityID 
WHERE sp.Name = 'Oregon'
