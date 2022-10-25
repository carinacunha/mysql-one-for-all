SELECT u.usuario AS 'usuario', 
IF(YEAR(MAX(h.dt_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS 'status_usuario'
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historico_reproducoes AS h
ON h.usuario_id = u.usuario_id
GROUP BY h.usuario_id
ORDER BY u.usuario;