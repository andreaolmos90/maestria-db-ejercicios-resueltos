--13.Mostrar los datos de los departamentos que no estén agrupados como “Research and
--Develpment”
SELECT *
FROM AdventureWorks2019.HumanResources.Department
WHERE GroupName != 'Research and Development'