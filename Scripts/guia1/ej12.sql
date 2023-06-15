--12.¿Cuáles son los datos de los departamentos cuyo nombre esté relacionado con “Production”?

SELECT Name
FROM AdventureWorks2019.HumanResources.Department
WHERE Name LIKE 'Production%'