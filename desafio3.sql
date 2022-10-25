SELECT u.usuario AS 'usuario', COUNT(h.usuario_id) AS 'qt_de_musicas_ouvidas', ROUND(SUM(c.duracao)/60, 2) AS 'total_minutos'
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historico_reproducoes AS h
ON h.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.cancoes AS c
ON h.cancao_id = c.cancao_id
GROUP BY h.usuario_id
ORDER BY u.usuario;