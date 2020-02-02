WITH cte AS
(SELECT t.action, (CASE WHEN c.phone::TEXT LIKE '415%' THEN 'San Fran' ELSE 'OTHER' END) AS region, t.amount AS amount
FROM "13".transaction t
LEFT JOIN "13".customer c
ON t.customerid = c.customerid)
SELECT region, action, SUM(amount) AS tot
FROM cte
GROUP BY region, action
ORDER BY region DESC
;