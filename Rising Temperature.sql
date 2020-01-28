SELECT a.Id
FROM Weather a, Weather b
WHERE a.RecordDate = (b.RecordDate + INTERVAL 1 DAY)
    AND a.Temperature > b.Temperature;