--16.Para todos los productos que tengan asignado algún color y que tengan un stock
--(SafetyStockLevel) mayor a 900, mostrar su id, nombre y color. Ordernarlo por id descendente
--y por color ascendente.
SELECT ProductID, Name, Color 
FROM AdventureWorks2019.Production.Product p 
WHERE Color IS NOT NULL AND SafetyStockLevel > 900
ORDER BY ProductID DESC, Color 
