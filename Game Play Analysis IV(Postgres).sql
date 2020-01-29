SELECT ROUND(COUNT(a2.player_id)::numeric(5,2)/COUNT(a1.player_id), 2) AS fraction
FROM "LC"."Activity" a1
LEFT JOIN
	"LC"."Activity" a2
ON a1.player_id = a2. player_id
AND a2.event_date - a1.event_date = 1
WHERE (a1.player_id, a1.event_date) IN (SELECT player_id, MIN(event_date)
									   FROM "LC"."Activity"
									   GROUP BY player_id);