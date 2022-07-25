SELECT
	MIN(valor_plano) AS `faturamento_minimo`,
    MAX(valor_plano) AS `faturamento_maximo`,
    ROUND((SUM(plan.valor_plano) / 10), 2) AS `faturamento_medio`,
    SUM(plan.valor_plano) AS `faturamento_total`
FROM SpotifyClone.usuarios AS us
JOIN SpotifyClone.planos AS plan
ON us.plano_id = plan.plano_id;
