--5 5. Mostrar la descripción de los productos que nunca hayan sido vendidos.

SELECT pd.Description, sod.SalesOrderID 
FROM AdventureWorks2019.Production.Product p2 LEFT JOIN AdventureWorks2019.Production.ProductDescription pd 
ON p2.ProductID = pd.ProductDescriptionID FULL OUTER JOIN AdventureWorks2019.Sales.SalesOrderDetail sod 
ON sod.ProductID  = p2.ProductID 
WHERE sod.SalesOrderID IS NULL