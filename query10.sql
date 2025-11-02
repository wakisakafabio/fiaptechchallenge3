SELECT 
    churn,
    COUNT(*) AS total_clientes,
    ROUND(AVG(estimated_salary), 2) AS salario_medio
FROM bank_churn_fabiowakisaka_db.bank_churn_data
GROUP BY churn;
