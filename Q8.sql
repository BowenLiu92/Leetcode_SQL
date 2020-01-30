With cte AS (SELECT
customerid, COUNT(action) AS d_number
FROM "13".transaction t
WHERE action = 'Deposit'
GROUP BY customerid)
SELECT customerid 
FROM cte
WHERE d_number < 2
;