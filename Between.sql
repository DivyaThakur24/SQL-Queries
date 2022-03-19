-- SQLite
--Total between 15 and 20
SELECT InvoiceId, CustomerId, InvoiceDate, BillingAddress, BillingCity, BillingState, BillingCountry, BillingPostalCode, Total
FROM invoices
WHERE Total BETWEEN 15 AND 20;