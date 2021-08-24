SELECT strftime('%m', created_at) as Month,
    CASE COUNT(id) > 0
    WHEN TRUE THEN SUM(cost_value)/COUNT(id)
    ELSE 0
END
FROM custos
GROUP BY strftime('%m', created_at) as Month