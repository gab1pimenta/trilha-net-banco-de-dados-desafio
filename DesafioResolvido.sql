-- Consulta 1
SELECT 
	Nome,
	Ano
FROM Filmes

-- Consulta 2
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano 

-- Consulta 3
SELECT 
    Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De volta para o Futuro';

-- Consulta 4
SELECT 
    Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = '1997';

-- Consulta 5
SELECT 
    Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > '2000';

-- Consulta 6 
SELECT 
    Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao> 100 AND Duracao < 150
ORDER BY Duracao;

-- Consulta 7
SELECT 
   	Ano, COUNT(*) AS QuantidadeDeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY QuantidadeDeFilmes DESC;

-- Consulta 8
SELECT
	Id, 
	PrimeiroNome, 
	UltimoNome, 
	Genero
FROM Atores
WHERE Genero = 'M'

-- Consulta 9
SELECT
	Id, 
	PrimeiroNome, 
	UltimoNome, 
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- Consulta 10
SELECT Filmes.Nome AS NomeFilme, Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;

-- Consulta 11
SELECT Filmes.Nome AS NomeFilme, Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério';

-- Consulta 12
SELECT
Filmes.Nome AS NomeFilme, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id