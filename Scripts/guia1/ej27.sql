-- 27.Usando la misma tabla,

--a) Cuál es el precio unitario más caro vendido?
--SELECT MAX(UnitPrice)
--FROM AdventureWorks2019.Sales.SalesOrderDetail sod 

--b) Cuál es el número total de items ordenado para cada producto? 
--SELECT ProductID, SUM(OrderQty) as TotalOrderItms
--FROM AdventureWorks2019.Sales.SalesOrderDetail sod
--GROUP BY ProductID 
--ORDER BY TotalOrderItms DESC

--c) Cuál es la cantidad de líneas de cada orden?
--SELECT SalesOrderID, COUNT(LineTotal) AS TotalLinesQty
--FROM AdventureWorks2019.Sales.SalesOrderDetail sod 
--GROUP BY SalesOrderID 
--ORDER BY TotalLinesQty DESC

--d) Cuál es la cantidad de líneas de cada orden, sólo para aquellas órdenes que tengan más de 3 líneas? Ordenar por id de orden descendente.
--SELECT SalesOrderID, COUNT(LineTotal) AS TotalLinesQty
--FROM AdventureWorks2019.Sales.SalesOrderDetail sod 
--GROUP BY SalesOrderID 
--HAVING COUNT(LineTotal) > 3
--ORDER BY SalesOrderID DESC

--e) Cuál es el importe total (LineTotal) de cada orden, para aquellas que tengan menos de 3 líneas?
--SELECT SalesOrderID, SUM(LineTotal)
--FROM AdventureWorks2019.Sales.SalesOrderDetail sod 
--GROUP BY SalesOrderID 
--HAVING COUNT(LineTotal) < 3

--f) Cuál es la cantidad distinta de productos ordenados?

-- no se que pregunta!!

