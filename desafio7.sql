SELECT
	art.artista_nome AS artista,
    alb.album_titulo AS album,
    COUNT(seg.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS art
JOIN SpotifyClone.albuns AS alb
ON art.artista_id = alb.artista_id
JOIN SpotifyClone.seguindo AS seg
ON art.artista_id = seg.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
