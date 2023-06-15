--26.Para la tabla SalesOrderDetail del esquema Sales, calcular cuál es la cantidad total 
--de items ordenados (OrderQty) para el producto con Id igual a 778.

SELECT COUNT(OrderQty)
FROM AdventureWorks2019.Sales.SalesOrderDetail sod 
WHERE ProductID = 778