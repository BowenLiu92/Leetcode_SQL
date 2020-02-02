SELECT t.customerid AS id, AVG(amount) AS avgamt
FROM "13".transaction t
WHERE t.action != 'Inquiry'
GROUP BY t.customerid
;