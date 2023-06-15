--Mostrar el Id y apellido de las personas que se los llame como “Mr.” y su apellido sea “White”.

SELECT BusinessEntityID, LastName
FROM AdventureWorks2019.Person.Person
WHERE Title = 'Mr.' AND LastName = 'White'