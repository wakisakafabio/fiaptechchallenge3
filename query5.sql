SELECT 
    FLOOR(age/10)*10 AS faixa_etaria_inicial,
    COUNT(*) AS total_clientes,
    SUM(churn) AS clientes_churn,
    ROUND(100.0 * SUM(churn) / COUNT(*), 2) AS taxa_churn_percent
FROM bank_churn_fabiowakisaka_db.bank_churn_data
GROUP BY FLOOR(age/10)*10
ORDER BY taxa_churn_percent DESC;
