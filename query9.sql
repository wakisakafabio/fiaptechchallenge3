SELECT
    CASE
        WHEN credit_score < 500 THEN '<500'
        WHEN credit_score BETWEEN 500 AND 599 THEN '500-599'
        WHEN credit_score BETWEEN 600 AND 699 THEN '600-699'
        WHEN credit_score BETWEEN 700 AND 799 THEN '700-799'
        ELSE '800+'
    END AS faixa_credit_score,
    COUNT(*) AS total_clientes,
    SUM(churn) AS clientes_churn,
    ROUND(100.0 * SUM(churn) / COUNT(*), 2) AS taxa_churn_percent
FROM bank_churn_fabiowakisaka_db.bank_churn_data
GROUP BY 1
ORDER BY 1;
