SELECT DISTINCT *
FROM "13".customer c
WHERE c.customerid NOT IN ((SELECT DISTINCT customerid 
							FROM "13".transaction t
							WHERE t.action = 'Withdrawl'))

;