--13. Mostrar para cada provincia (id y nombre), 
--la cantidad de domicilios que tenga registrados, 
--sólo para aquellas provincias que tengan más de 1000 domicilios.

SELECT sp.StateProvinceID, sp.Name, COUNT(a.AddressID) AS address_qty
FROM AdventureWorks2019.Person.StateProvince sp 
LEFT JOIN AdventureWorks2019.Person.Address a 
ON sp.StateProvinceID = a.StateProvinceID 
GROUP BY sp.StateProvinceID, sp.Name
HAVING COUNT(a.AddressID) > 1000
