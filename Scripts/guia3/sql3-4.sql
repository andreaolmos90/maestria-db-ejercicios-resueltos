--4. Mostrar los departamentos que tengan máxima cantidad de empleados.

SELECT d.DepartmentID, d.Name, COUNT(edh.BusinessEntityID) 
FROM AdventureWorks2019.HumanResources.Department d 
LEFT JOIN AdventureWorks2019.HumanResources.EmployeeDepartmentHistory edh 
ON d.DepartmentID = edh.DepartmentID 
WHERE edh.EndDate IS NULL
GROUP BY d.DepartmentID, d.Name
HAVING COUNT(edh.BusinessEntityID) = (SELECT MAX(edh2.count_emp) 
	FROM(
	SELECT COUNT(edh.BusinessEntityID) AS count_emp
	FROM AdventureWorks2019.HumanResources.EmployeeDepartmentHistory edh
	WHERE edh.EndDate IS NULL
	GROUP BY edh.DepartmentID) edh2
	)



