SELECT DISTINCT c.*
FROM "13".customer c
WHERE c.customerid NOT IN (SELECT customerid
						  FROM "13".transaction)
;