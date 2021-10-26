use t8grupo7;

-- Quais são os 5 jogadores com maiores aproveitamentos de lance livres?
SELECT
	nome_jogador, round (sum(pct_aprov_cestasLL),2) as porcentagem_total
FROM detalhes_jogo
GROUP BY nome_jogador
ORDER BY porcentagem_total DESC
LIMIT 5;

-- Quais são os 5 jogadores que mais roubaram bolas?

SELECT 
	nome_jogador, sum(qtd_roubos) as roubos_total
FROM detalhes_jogo
GROUP BY nome_jogador
ORDER BY roubos_total DESC
LIMIT 5;
