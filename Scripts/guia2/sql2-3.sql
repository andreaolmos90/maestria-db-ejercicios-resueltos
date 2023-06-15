--3. La tabla Product contiene los productos y la tabla ProductModel, los modelos.
--a) Encontrar la descripción del producto, su tamaño y la descripción del modelo relacionado, 
--para aquellos productos que no tengan color indicado y para los cuales el nivel seguro de
--stock (SafetyStockLevel) sea menor estricto a 1000.

--SELECT p.Name, p.[Size], pm.CatalogDescription, p.Color 
--FROM AdventureWorks2019.Production.Product p LEFT JOIN AdventureWorks2019.Production.ProductModel pm 
--ON p.ProductModelID  = pm.ProductModelID 
--WHERE p.Color IS NULL AND SafetyStockLevel < 1000


--b) Obtener todas las ventas de los meses de junio y julio del 2011. Mostrar el nombre y
--apellido del cliente, el nro de venta, su fecha, nombre y modelo del producto vendido.

SELECT p.FirstName, p.LastName, soh.SalesOrderNumber, soh.OrderDate, p2.Name, pm.Name 
FROM AdventureWorks2019.Sales.SalesOrderHeader soh LEFT JOIN AdventureWorks2019.Sales.Customer c
ON soh.CustomerID = c.CustomerID 
LEFT JOIN AdventureWorks2019.Person.Person p 
ON c.PersonID = p.BusinessEntityID 
LEFT JOIN AdventureWorks2019.Sales.SalesOrderDetail sod 
ON soh.SalesOrderID = sod.SalesOrderID 
LEFT JOIN AdventureWorks2019.Production.Product p2 
ON sod.ProductID = p2.ProductID 
LEFT JOIN AdventureWorks2019.Production.ProductModel pm 
ON p2.ProductModelID  = pm.ProductModelID 
WHERE YEAR(OrderDate) = 2011 AND (MONTH(OrderDate) = 06 OR MONTH(OrderDate) = 07)
