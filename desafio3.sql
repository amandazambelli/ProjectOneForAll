SELECT
	us.nome_usuario AS `usuario`,
    COUNT(ouv.usuario_id) AS `qtde_musicas_ouvidas`,
    ROUND((SUM(mus.duracao) / 60), 2) AS `total_minutos`
FROM SpotifyClone.usuarios AS us
JOIN SpotifyClone.ouvindo AS ouv
ON ouv.usuario_id = us.usuario_id
JOIN SpotifyClone.musicas AS mus
ON mus.musica_id = ouv.musica_id
GROUP BY us.nome_usuario
ORDER BY us.nome_usuario;
