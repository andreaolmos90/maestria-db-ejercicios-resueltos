--30. Para los empleados, contar la cantidad de empleados solteros nacidos por año y por género,
--para aquellos años donde hayan nacido más de 10 empleados.


SELECT a.YR, b.Gender, b.Qty 

FROM (
	SELECT YEAR(BirthDate) AS YR, COUNT(BusinessEntityID) AS Qty
	FROM AdventureWorks2019.HumanResources.Employee e 
	GROUP BY YEAR(BirthDate)
	HAVING COUNT(BusinessEntityID) > 10) AS a

LEFT JOIN (
	SELECT YEAR(BirthDate) AS YR, Gender, COUNT(BusinessEntityID) AS Qty
	FROM AdventureWorks2019.HumanResources.Employee e 
	WHERE(MaritalStatus = 'S')
	GROUP BY YEAR(BirthDate), Gender) AS b 
	
ON a.YR = b.YR



