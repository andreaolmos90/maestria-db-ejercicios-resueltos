--2. La tabla Customers tampoco contiene el nombre de los clientes. La columna que las relaciona
--es, PersonID
--a) Obtener nombre, apellido, storeId para aquellos clientes que estén en el TerritoryID = 4 ó que pertenezcan al tipo de persona 4 (PersonType)
--b) ¿cuáles son el nombre, apellido y número de orden de venta (SaleOrderID) para los clientes que pertenecen al tipo de persona 4?


SELECT p.FirstName, p.LastName, c.StoreID, c.TerritoryID, P.PersonType 
FROM AdventureWorks2019.Sales.Customer c INNER JOIN AdventureWorks2019.Person.Person p 
ON c.PersonID = p.BusinessEntityID 
WHERE c.TerritoryID = 4

-- CUAL ES EL TIPO DE PERSONA 4?