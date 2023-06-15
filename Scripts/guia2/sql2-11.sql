--11. Calcular la suma de las ventas (SalesQuota) históricas por persona y año. 
--Mostrar el apellido de la persona. (esquemas Sales (SalesPersonQuotaHistory) y Person)

SELECT p.BusinessEntityID, p.FirstName, p.LastName, YEAR(sp.QuotaDate), SUM(sp.SalesQuota)  
FROM AdventureWorks2019.Person.Person p 
RIGHT JOIN AdventureWorks2019.Sales.SalesPersonQuotaHistory sp
ON p.BusinessEntityID = sp.BusinessEntityID 
GROUP BY p.BusinessEntityID, p.FirstName, p.LastName, YEAR(sp.QuotaDate)

