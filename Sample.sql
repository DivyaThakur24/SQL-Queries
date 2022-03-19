SELECT id, SUM(total), Company
FROM(
SELECT c.CustomerId AS id, i.Total AS total, c.Company AS Company
FROM customers AS c 
JOIN invoices As i 
WHERE c.Company IS NOT NULL)
GROUP BY 1,3;


SELECT id, SUM(total), Company
FROM (SELECT c.CustomerId AS id, i.Total AS total, c.Company
FROM customers AS c 
JOIN invoices As i 
WHERE c.Company IS NOT NULL) AS Sub
GROUP BY 1,3;