SELECT
COUNT(h.cancao_id) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historico_reproducoes AS h
ON u.usuario_id = h.usuario_id
WHERE usuario = 'Barbara Liskov'
GROUP BY u.usuario_id;