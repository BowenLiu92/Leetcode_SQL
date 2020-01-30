WITH temp AS (SELECT 
customerid,
CASE
WHEN t.Action = 'Withdrawl' THEN -t.amount
ELSE t.amount
END AS amount
FROM "13".transaction t)
SELECT customerid, SUM(amount)
FROM temp
GROUP BY customerid
;