SELECT c.*
FROM "13".transaction t
LEFT JOIN
"13".customer c
ON t.customerid = c.customerid
WHERE t.action = 'Inquiry'
;