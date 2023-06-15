--6. Hallar las provincias que tengan más cantidad de domicilios 
--que los que tiene la provincia con Id 58.

SELECT StateProvinceID, COUNT(AddressID) AS QTY
FROM AdventureWorks2019.Person.Address a
GROUP BY StateProvinceID 
HAVING COUNT(AddressID) > (SELECT COUNT(AddressID)
						FROM AdventureWorks2019.Person.Address b
						WHERE StateProvinceID = 58)