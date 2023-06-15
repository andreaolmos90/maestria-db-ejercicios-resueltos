--12. Encontrar el nombre de los productos que no pertenezcan a la 
--subcategoría “Wheels”. Usar EXISTS.

SELECT p.ProductID, p.Name, p.ProductSubcategoryID
FROM AdventureWorks2019.Production.Product p
WHERE EXISTS (SELECT *
			FROM AdventureWorks2019.Production.ProductSubcategory ps
			WHERE p.ProductSubcategoryID = ps.ProductSubcategoryID AND ps.Name != 'Wheels')
