--13. Encontrar el nombre de los productos cuyo precio de lista es mayor o igual 
--al máximo precio de lista de cualquier subcategoría de producto.

SELECT DISTINCT p.Name 
FROM AdventureWorks2019.Production.Product p 
WHERE p.ListPrice >= ANY (SELECT MAX(ListPrice)
						FROM AdventureWorks2019.Production.Product p2
						GROUP BY ProductSubcategoryID)