--18.Hallar el Id y el nombre de los productos cuyo nombre contenga “helmet”
SELECT ProductID, Name 
FROM AdventureWorks2019.Production.Product p 
WHERE Name LIKE '%helmet%'