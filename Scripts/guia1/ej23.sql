--23. Para resolver el problema anterior, usar la función ISNULL para, cuando no tengan asignado
--valor, reemplazarlo - en el cálculo – por 0 (cero).

SELECT SpecialOfferID, Description, ISNULL(DIFFERENCE(MinQty, MaxQty), 0) AS DIFF
FROM AdventureWorks2019.Sales.SpecialOffer so 
