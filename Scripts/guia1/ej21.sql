--21.Usando la tabla SpecialOffer del esquema Sales, mostrar la diferencia entre MinQty y MaxQty,
--con el id y descripción.
SELECT SpecialOfferID, Description, DIFFERENCE(MinQty, MaxQty) AS DIFF
FROM AdventureWorks2019.Sales.SpecialOffer so 