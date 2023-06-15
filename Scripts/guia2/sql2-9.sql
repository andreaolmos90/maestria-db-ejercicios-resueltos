--9. Calcular para los tipos de contacto, 
--cuántas personas asociadas están registradas. 
--Ordenar el resultado por cantidad, descendente. (esquema Person)

SELECT ct2.Name, COUNT(bec.BusinessEntityID) AS Qty
FROM AdventureWorks2019.Person.BusinessEntityContact bec 
LEFT JOIN AdventureWorks2019.Person.ContactType ct2 
ON bec.ContactTypeID = ct2.ContactTypeID 
GROUP BY ct2.Name  
ORDER BY COUNT(ct2.Name) DESC