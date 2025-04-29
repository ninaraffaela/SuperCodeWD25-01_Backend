-- Zeige alle Daten aus der Customers-Tabelle an
SELECT * FROM Customers

-- Zeige nur die Spalten CustomerName, City und Country aus der Customers-Tabelle an.
SELECT CustomerName, City, Country FROM Customers;

-- Zeige alle Kunden aus Deutschland an.
SELECT CustomerName, Country FROM Customers
WHERE Country = 'Germany';

-- Zeige alle Kunden aus London, UK an.
SELECT CustomerName, City, Country FROM Customers
WHERE Country = 'UK' AND City = 'London';

-- Zeige alle Kunden alphabetisch nach CustomerName sortiert an
SELECT CustomerName FROM Customers
ORDER BY CustomerName;

-- Zeige nur die ersten 5 Einträge der Tabelle Customers an
SELECT * FROM Customers
LIMIT 5;
(Funktioniert jedoch nicht)


-- Gib die Gesamtzahl aller Einträge in der Customers-Tabelle aus
SELECT count(*) FROM Customers;