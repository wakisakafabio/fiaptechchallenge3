SELECT
    CASE
        WHEN balance < 50000 THEN 'Até 50k'
        WHEN balance < 100000 THEN '50k a 100k'
        WHEN balance < 150000 THEN '100k a 150k'
        ELSE 'Acima de 150k'
    END AS faixa_saldo,
    COUNT(*) AS total_clientes,
    SUM(churn) AS clientes_churn,
    ROUND(100.0 * SUM(churn) / COUNT(*), 2) AS taxa_churn_percent
FROM bank_churn_fabiowakisaka_db.bank_churn_data
GROUP BY 1
ORDER BY faixa_saldo;
