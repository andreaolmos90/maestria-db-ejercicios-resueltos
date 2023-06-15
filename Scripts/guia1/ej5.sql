--Mostrar los datos de las personas que tengan asignado el tipo “SP” ó el tipo “VC”.
SELECT *
FROM AdventureWorks2019.Person.Person
WHERE PersonType = 'VC' OR PersonType = 'SP'