--31.Para la tabla Product:
--a) Cuál es el promedio del precio de lista por color de producto?
--b) Cuál es el promedio del precio de lista por color de producto para aquellos colores que
--tengan más de 15 productos?

SELECT Color, avg(ListPrice) AS avgPrice
FROM AdventureWorks2019.Production.Product p 
GROUP BY Color 
--HAVING COUNT(ProductID)>15

