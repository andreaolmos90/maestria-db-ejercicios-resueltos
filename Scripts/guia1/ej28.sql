-- 28.Usando la tabla SalesOrderHeader, cuál es la cantidad de órdenes emitidas en cada año?
--(usar la función Year, aplicada a la columna OrderDate).

SELECT YEAR(OrderDate), COUNT(SalesOrderID)
FROM AdventureWorks2019.Sales.SalesOrderHeader soh 
GROUP BY YEAR(OrderDate)
