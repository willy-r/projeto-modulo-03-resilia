--
-- Perguntas/consultas de William Rodrigues.
--

-- Quais são os 5 times que mais ganharam jogos em casa?
SELECT
	CONCAT(t.cidade, ' ', t.nome) nome_time,
  COUNT(*) qtd_vitorias
FROM `time` t
INNER JOIN jogo j
	ON t.id_time = j.id_time_casa
WHERE
	j.temporada BETWEEN 2015 AND 2019
  AND j.vitoria_time_casa = TRUE
GROUP BY nome_time
ORDER BY qtd_vitorias DESC
LIMIT 5;

-- Quais são os 5 times que mais ganharam jogos fora de casa?
SELECT
	CONCAT(t.cidade, ' ', t.nome) nome_time,
  COUNT(*) qtd_vitorias
FROM `time` t
INNER JOIN jogo j
	ON t.id_time = j.id_time_visitante
WHERE
	j.temporada BETWEEN 2015 AND 2019
  AND j.vitoria_time_casa = FALSE
GROUP BY nome_time
ORDER BY qtd_vitorias DESC
LIMIT 5;
