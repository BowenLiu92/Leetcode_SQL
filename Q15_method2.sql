SELECT DISTINCT c.*
FROM "13".customer c
LEFT JOIN "13".transaction t
ON c.customerid = t.customerid
WHERE t.customerid IS NULL
;