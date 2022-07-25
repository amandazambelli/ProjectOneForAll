SELECT
	COUNT(mus.musica_id) AS `cancoes`,
    COUNT(art.artista_id) AS `artistas`,
    COUNT(alb.album_id) AS `albuns`
FROM SpotifyClone.musicas AS mus
INNER JOIN SpotifyClone.artistas AS art
ON art.artista_id = artistas.artista_id
INNER JOIN SpotifyClone.albuns AS alb
ON alb.album_id = albuns.album_id;
