SELECT 
customerid,
SUM(CASE
	WHEN t.Action = 'Deposit' THEN Amount
	ELSE -Amount
	END) AS ta
FROM "13".transaction t
GROUP BY customerid
;