-- 12. Calcular el total vendido por territorio, para aquellos que tengan más de 
--100 ventas a nivel producto. Considerar precio unitario y cantidad vendida. 
--(esquema Sales)

SELECT st.Name, SUM(sod.LineTotal) AS total_revenue, SUM(sod.OrderQty) AS qty_products
FROM AdventureWorks2019.Sales.SalesOrderHeader soh 
LEFT JOIN AdventureWorks2019.Sales.SalesOrderDetail sod 
ON soh.SalesOrderID = sod.SalesOrderID 
LEFT JOIN AdventureWorks2019.Sales.SalesTerritory st 
ON soh.TerritoryID = st.TerritoryID 
GROUP BY st.TerritoryID, st.Name
HAVING SUM(sod.OrderQty) > 100
