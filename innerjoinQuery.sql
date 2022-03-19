SELECT c.CustomerID, i.CustomerID, FirstName, LastName, InvoiceDate, BillingCountry, Total
FROM customers AS c, invoices AS i
WHERE c.CustomerId = i.CustomerId;
--Matching values of CustomerID from both the tables
--Combined values from two different tables that contained one common column - ColumnName

SELECT c.CustomerID, i.CustomerID, c.FirstName, c.LastName, i.InvoiceDate, i.BillingCountry, i.Total
FROM customers AS c
INNER JOIN invoices AS i  ON c.CustomerId = i.CustomerId;