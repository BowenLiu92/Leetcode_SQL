WITH cte AS
(SELECT t.*, CASE WHEN t.action ='Withdrawl' THEN -amount ELSE amount END AS net
FROM "13".transaction t)
SELECT customerid, date, action, amount, SUM(net) OVER(PARTITION BY customerid ORDER BY date) AS cumsum
FROM cte
;