--9. Mostrar el id, nombres, apellido de los empleados ordenados desde el de fecha de nacimiento
--más antigua.
SELECT A.BusinessEntityID, FirstName, LastName, BirthDate  
FROM AdventureWorks2019.HumanResources.Employee AS A
LEFT JOIN AdventureWorks2019.Person.Person AS B
ON A.BusinessEntityID = B.BusinessEntityID
ORDER BY BirthDate ASC
