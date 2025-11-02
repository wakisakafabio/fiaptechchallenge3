SELECT 
    active_member,
    COUNT(*) AS total_clientes,
    SUM(churn) AS churn_count,
    ROUND(100.0 * SUM(churn)/COUNT(*), 2) AS churn_percentage
FROM bank_churn_fabiowakisaka_db.bank_churn_data
GROUP BY active_member;
