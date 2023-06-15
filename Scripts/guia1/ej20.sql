--20.Mostrar los datos principales de las personas (tabla Person) cuyo LastName termine con “es” y
--contenga en total 5 caracteres.
SELECT FirstName, LastName 
FROM AdventureWorks2019.Person.Person
WHERE LastName LIKE '___es'
