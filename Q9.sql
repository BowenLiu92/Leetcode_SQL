WITH cte AS
(SELECT customerid, date, action, row_number() OVER(PARTITION BY customerid ORDER BY Date
												  ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS ao
FROM "13".transaction t)
SELECT customerid, date, action
FROM cte
WHERE ao = 1

;