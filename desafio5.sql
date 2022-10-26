SELECT c.cancao AS 'cancao', COUNT(h.cancao_id) AS 'reproducoes'
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_reproducoes AS h
ON h.cancao_id = c.cancao_id
GROUP BY c.cancao_id
ORDER BY reproducoes DESC, c.cancao ASC LIMIT 2;