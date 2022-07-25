SELECT
	COUNT(DISTINCT mus.musica_id) AS `cancoes`,
    COUNT(DISTINCT art.artista_id) AS `artistas`,
    COUNT(DISTINCT alb.album_id) AS `albuns`
FROM SpotifyClone.albuns AS alb
INNER JOIN SpotifyClone.artistas AS art
ON art.artista_id = alb.artista_id
INNER JOIN SpotifyClone.musicas AS mus
ON mus.album_id = alb.album_id;
