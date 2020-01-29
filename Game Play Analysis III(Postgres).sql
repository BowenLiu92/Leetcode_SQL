SELECT event_date, sum(games_played) OVER(PARTITION BY player_id ORDER BY event_date) AS rs, player_id AS player
	FROM "LC"."Activity";