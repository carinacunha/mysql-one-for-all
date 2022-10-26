SELECT c.cancao AS 'nome',
COUNT(*) As 'reproducoes'
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_reproducoes AS h
ON c.cancao_id = h.cancao_id
INNER JOIN SpotifyClone.usuarios AS u
ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.planos AS p
ON u.plano_id = p.plano_id
WHERE plano IN ('gratuito', 'pessoal')
GROUP BY nome
ORDER BY nome ASC;