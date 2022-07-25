SELECT
	us.nome_usuario AS `usuario`,
    IF (YEAR(MAX(ouv.data_rep)) = '2021', 'Usuário ativo', 'Usuário inativo') AS `condicao_usuario`
FROM SpotifyClone.ouvindo AS ouv
JOIN SpotifyClone.usuarios AS us
ON us.usuario_id = ouv.usuario_id
GROUP BY us.usuario_id
ORDER BY us.nome_usuario;
