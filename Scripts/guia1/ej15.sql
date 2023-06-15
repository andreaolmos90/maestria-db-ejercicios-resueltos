--15.Hallar los productos que no tengan asignado color.
SELECT *
FROM AdventureWorks2019.Production.Product p 
WHERE Color IS NULL 
