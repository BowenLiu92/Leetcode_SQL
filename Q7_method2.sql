SELECT
customerid,
SUM(CASE WHEN t.action = 'Deposit' THEN 1 ELSE 0 END) AS Deposit, 
SUM(CASE WHEN t.action = 'Withdrawl' THEN 1 ELSE 0 END) AS Withdrawl,
SUM(CASE WHEN t.action = 'Inquiry' THEN 1 ELSE 0 END) AS Inquiry
FROM "13".transaction t
GROUP BY customerid
;