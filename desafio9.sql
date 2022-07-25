SELECT COUNT(musica_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.ouvindo
GROUP BY usuario_id LIMIT 1 OFFSET 2;
