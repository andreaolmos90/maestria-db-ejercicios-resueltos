--1. La tabla Employee no contiene el nombre de los empleados. Ese dato se encuentra en la tabla Person. 
--La columna que relaciona ambas tablas es BusinessEntityID
--a) Si existe una FK entre ambas tablas, cómo podemos corroborar su existencia?

--está en la definición de la tabla como FK.

--b) Obtener el nombre, apellido, cargo y fecha de nacimiento de todos los empleados.
--c) Obtener el nombre y apellido de los empleados que nacieron durante el año 1986 y su “género” es F.

--SELECT e.BusinessEntityID, p.FirstName, p.LastName, e.BirthDate, e.Gender 
--FROM AdventureWorks2019.HumanResources.Employee e LEFT JOIN AdventureWorks2019.Person.Person p 
--ON e.BusinessEntityID = p.BusinessEntityID 
--WHERE YEAR(e.BirthDate) = 1986 AND e.Gender = 'F'

--d) Contar la cantidad de empleados cuyo nombre comience con la letra “J” y hayan nacido después del año 1977.
--e) Para las mismas condiciones del punto anterior, cuántos empleados están registrados según su género?

SELECT e.Gender, COUNT(*) 
FROM AdventureWorks2019.HumanResources.Employee e LEFT JOIN AdventureWorks2019.Person.Person p 
ON e.BusinessEntityID = p.BusinessEntityID 
WHERE YEAR(e.BirthDate) > 1977 AND p.FirstName LIKE 'J%'
GROUP BY e.Gender 

