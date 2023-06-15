--7. Hallar año y mes de fechas de modificación coincidentes 
--entre los registros de la tabla Person para el tipo de persona “EM” 
--y los registros de la tabla Address para la provincia con nombre “Washington”.

SELECT DISTINCT YEAR(ModifiedDate), MONTH(ModifiedDate) 
FROM AdventureWorks2019.Person.Person p 
WHERE PersonType = 'EM'
AND BusinessEntityID IN (SELECT BusinessEntityID
						FROM AdventureWorks2019.Person.Address a 
						LEFT JOIN AdventureWorks2019.Person.StateProvince sp 
						ON a.StateProvinceID = sp.StateProvinceID 
						WHERE sp.Name = 'Washington')