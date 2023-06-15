--11.¿Cuáles son los departamentos que están agrupados como “Manufacturing” ó como “Quality
--Assurance”?

SELECT Name
FROM AdventureWorks2019.HumanResources.Department
WHERE GroupName = 'Manufacturing' OR GroupName = 'Quality Assurance'