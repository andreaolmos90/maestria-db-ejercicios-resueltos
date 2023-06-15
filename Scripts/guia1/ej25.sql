--25. ¿Cuál es la cantidad de clientes por tienda? Y cuál es la cantidad de clientes por territorio para
--aquellos territorios que tengan más de 100 clientes? ¿Cuáles son las tiendas (su Id) asociadas
--al territorio Id 4 que tienen menos de 2 clientes?

--SELECT StoreID, COUNT(c.CustomerID)
--FROM AdventureWorks2019.Sales.Customer c
--GROUP BY StoreID 

SELECT TerritoryID, COUNT(CustomerID)
FROM AdventureWorks2019.Sales.Customer
GROUP BY TerritoryID 
HAVING COUNT(CustomerID) > 100

--SELECT StoreID, COUNT(CustomerID)
--FROM AdventureWorks2019.Sales.Customer
--WHERE TerritoryID = 4
--GROUP BY StoreID
--HAVING COUNT(CustomerID) < 2