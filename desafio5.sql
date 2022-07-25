SELECT
	mus.nome_musica AS `cancao`,
    COUNT(ouv.musica_id) AS `reproducoes`
FROM SpotifyClone.musicas AS mus
JOIN SpotifyClone.ouvindo AS ouv
ON ouv.musica_id = mus.musica_id
GROUP BY ouv.musica_id
ORDER BY COUNT(ouv.musica_id) DESC, mus.nome_musica
LIMIT 2;
