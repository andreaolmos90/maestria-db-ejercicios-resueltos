--8. Mostrar todas los valores de BusinessEntityID de la tabla SalesPerson 
--junto a cada valor ProductID de la tabla Product

SELECT sp.BusinessEntityID, p.ProductID 
FROM AdventureWorks2019.Sales.SalesPerson sp 
CROSS JOIN AdventureWorks2019.Production.Product p 