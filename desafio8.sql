SELECT
	art.artista_nome AS artista,
	alb.album_titulo AS album
FROM SpotifyClone.albuns AS alb
JOIN SpotifyClone.artistas AS art
ON art.artista_id = alb.artista_id LIMIT 2;
