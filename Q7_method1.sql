WITH cte AS
(SELECT
customerid,
(CASE WHEN t.action = 'Deposit' THEN 1 ELSE 0 END) AS Deposit, 
(CASE WHEN t.action = 'Withdrawl' THEN 1 ELSE 0 END) AS Withdrawl,
(CASE WHEN t.action = 'Inquiry' THEN 1 ELSE 0 END) AS Inquiry
FROM "13".transaction t)
SELECT customerid, SUM(Deposit), SUM(Withdrawl), SUM(Inquiry)
FROM cte
GROUP BY customerid
;