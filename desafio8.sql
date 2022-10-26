SELECT ar.artista AS 'artista',
a.album AS 'album'
FROM SpotifyClone.albuns AS a
INNER JOIN SpotifyClone.artistas AS ar
ON ar.artista_id = a.artista_id
WHERE artista = 'Elis Regina';