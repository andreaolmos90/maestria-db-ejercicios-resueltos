--19.Modificar la consulta anterior para que retorne aquellos productos cuyo nombre no contenga
--“helmet”
SELECT ProductID, Name 
FROM AdventureWorks2019.Production.Product p 
WHERE Name NOT LIKE '%helmet%'
