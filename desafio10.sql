SELECT
	mus.nome_musica AS nome,
    COUNT(ouv.musica_id) AS reproducoes
FROM SpotifyClone.musicas AS mus
JOIN SpotifyClone.ouvindo AS ouv
ON mus.musica_id = ouv.musica_id
JOIN SpotifyClone.usuarios AS us
ON ouv.usuario_id = us.usuario_id
WHERE us.plano_id IN(1,4)
GROUP BY mus.musica_id
ORDER BY nome;
