SELECT MONTH(created_at),
    CASE COUNT(id) > 0
    WHEN TRUE THEN SUM(cost_value)/COUNT(id)
    ELSE 0
END
FROM custos
GROUP BY MONTH(created_at)