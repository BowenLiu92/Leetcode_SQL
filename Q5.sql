SELECT c.customerid AS cid, c.firstname||' '||c.lastname AS cfull, t.action AS type, sum(t.amount) AS amount
FROM "13".transaction t
LEFT JOIN "13".customer c
ON t.customerid = c.customerid
GROUP BY 1,2,3
;