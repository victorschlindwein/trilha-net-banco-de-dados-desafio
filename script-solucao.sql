SELECT * FROM Filmes

SELECT Nome, Ano 
FROM Filmes

SELECT *
FROM Filmes
ORDER BY Ano ASC

SELECT *
FROM Filmes
WHERE Nome = 'De volta para o futuro'

SELECT *
FROM Filmes
WHERE Ano = '1997'

SELECT *
FROM Filmes
WHERE Ano > 2000

SELECT *
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

SELECT Ano ,COUNT(1) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

SELECT PrimeiroNome, UltimoNome, Genero 
FROM Atores
WHERE Genero = 'M'

SELECT PrimeiroNome, UltimoNome, Genero 
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

SELECT Filmes.Nome, Generos.Genero
FROM Filmes 
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

SELECT Filmes.Nome, Generos.Genero
FROM Filmes 
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério'

SELECT
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
FROM Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id