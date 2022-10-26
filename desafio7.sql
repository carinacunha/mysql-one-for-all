SELECT ar.artista AS 'artista',
a.album AS 'album',
COUNT(s.usuario_id) AS 'seguidores'
FROM SpotifyClone.albuns AS a
INNER JOIN SpotifyClone.artistas AS ar
ON ar.artista_id = a.artista_id
INNER JOIN SpotifyClone.seguidores_artistas AS s
ON ar.artista_id = s.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista ASC, album ASC;