--5. Hallar los empleados que con menor antiguedad dentro de cada departamento.

SELECT edh.BusinessEntityID, edh.DepartmentID, p.FirstName, p.LastName, edh.StartDate 
FROM AdventureWorks2019.HumanResources.EmployeeDepartmentHistory edh
LEFT JOIN AdventureWorks2019.Person.Person p 
ON edh.BusinessEntityID = p.BusinessEntityID 
WHERE edh.EndDate IS NULL AND edh.StartDate = (SELECT MIN(edh2.StartDate)
									FROM AdventureWorks2019.HumanResources.EmployeeDepartmentHistory edh2
									WHERE edh2.DepartmentID = edh.DepartmentID
									GROUP BY DepartmentID) 
									
									
									

								