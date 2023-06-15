--7. Hallar el Id y fecha de nacimiento de los empleados que tengan como función “Research and
--Development Manager” y que tengan menos de 10 “VacationHours”.


SELECT BusinessEntityID, BirthDate
FROM AdventureWorks2019.HumanResources.Employee
WHERE JobTitle LIKE 'Research and Development Manager' AND VacationHours < 10