--9. Mostrar los años de las ventas registradas y de las compras registradas. 
--Identificar para cada año, si corresponde a ventas ó a compras.

SELECT YEAR(OrderDate), COUNT(PurchaseOrderID) compras
FROM AdventureWorks2019.Purchasing.PurchaseOrderHeader poh
GROUP BY YEAR(OrderDate) 
LEFT JOIN AdventureWorks2019.Sales.SalesOrderHeader soh 

