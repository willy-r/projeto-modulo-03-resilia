-- Quais são os 5 jogadores que mais pontuaram (cestinhas)?
SELECT 
	nome_jogador, sum(qtd_cestas_feitas) as cestas_totais
FROM detalhes_jogo
GROUP BY nome_jogador
ORDER BY cestas_totais DESC
LIMIT 5;

-- Quais são os 5 jogadores que mais deram assistências?
SELECT 
	nome_jogador, sum(qtd_ast) as totais_assistencias
FROM detalhes_jogo
GROUP BY nome_jogador
ORDER BY totais_assistencias desc
LIMIT 5;
