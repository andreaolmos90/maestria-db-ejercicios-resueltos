--4. Mostrar todos la descripción de los productos y el id de la orden de venta. 
--Incluir aquellos productos que nunca se hayan vendido.

SELECT pd.Description, sod.SalesOrderID 
FROM AdventureWorks2019.Production.Product p2 LEFT JOIN AdventureWorks2019.Production.ProductDescription pd 
ON p2.ProductID = pd.ProductDescriptionID LEFT JOIN AdventureWorks2019.Sales.SalesOrderDetail sod 
ON sod.ProductID  = p2.ProductID 
