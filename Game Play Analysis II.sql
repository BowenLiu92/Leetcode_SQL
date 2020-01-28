SELECT
	player_id, device_id
FROM Activity a
WHERE (player_id, event_date) IN (SELECT player_id, MIN(event_date)
					FROM Activity a
					GROUP BY player_id);