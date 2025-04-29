-- Customers
-- Zeige alle Länder an, die mehr als fünf Kunden haben
SELECT Country, COUNT(*) AS CustomerCount FROM Customers
GROUP BY Country
HAVING COUNT(*) > 5;

-- Orders
-- Zeige alle Bestellungen im August 1996 an
SELECT * FROM Orders
WHERE OrderDate like '%/8/1996';

-- Zeige alle CustomerIds, die mehr als eine Bestellung getätigt haben
SELECT CustomerID, COUNT(*) AS OrderCount
FROM Orders
GROUP BY CustomerID
HAVING COUNT(*) > 1;

--# Zeige die CustomerId mit den meisten Bestellungen an 
SELECT CustomerID, COUNT(*) AS OrderCount
FROM Orders
GROUP BY CustomerID
ORDER BY OrderCount DESC
LIMIT 1;
--# (Syntax error in ORDER BY clause.)

--# Bonus: Zeige direkt den Kundennamen an (nutze JOIN um zwei Tabellenabfragen zu verbinden)
SELECT Customers.CustomerName, Orders.CustomerID, COUNT(*) AS OrderCount
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
GROUP BY Orders.CustomerID, Customers.CustomerName
ORDER BY OrderCount DESC
LIMIT 1;
--# (SYNTAX ERROR in FROM clause)

-- Products
-- Zeige alle Produkte an, die von der Firma “Heli Süßwaren GmbH & Co. KG ” geliefert werden
SELECT * FROM Products
WHERE SupplierID = 11;

-- Zeige den Durchschnittspreis aller Produkte an
SELECT AVG(Price) AS AveragePrice
FROM Products;

-- Zeige den Höchstpreis aller Produkte an
SELECT MAX(Price) AS MaxPrice
FROM Products;


-- Suppliers
-- Zeige alle Lieferanten an, deren Telefonnummer keine Klammern () enthält
SELECT * FROM Suppliers
WHERE Phone NOT LIKE '%(%' AND Phone NOT LIKE '%)%';

-- # Liste die Länder mit der Anzahl der Lieferanten auf, sortiert nach der Anzahl der Lieferanten in absteigender Reihenfolge und bei gleicher Anzahl von Lieferanten alphabetisch nach Ländernamen.
SELECT Country, COUNT(*) AS SupplierCount
FROM Suppliers
GROUP BY Country
ORDER BY SupplierCount DESC, Country ASC;
--# (No value given for one or more required parameters.)
