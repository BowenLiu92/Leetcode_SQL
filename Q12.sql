WITH cte AS
(SELECT customerid, MIN(date) AS firstdate
 FROM "13".transaction
 GROUP BY customerid)
 SELECT customerid,
 CASE
 WHEN firstdate IS NOT NULL THEN (NOW()::date - firstdate)
 ELSE 9999
 END AS te
 FROM cte
;