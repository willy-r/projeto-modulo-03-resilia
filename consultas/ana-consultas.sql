--
-- Perguntas/consultas de Ana Karolina.
--

-- Quais são os 5 jogadores que mais pontuaram (cestinhas)?
SELECT 
	nome_jogador, sum(pts) as total_pontos
FROM detalhes_jogo
GROUP BY nome_jogador
ORDER BY total_pontos DESC
LIMIT 5;

-- Quais são os 5 jogadores que mais deram assistências?
SELECT 
	nome_jogador, sum(qtd_ast) as totais_assistencias
FROM detalhes_jogo
GROUP BY nome_jogador
ORDER BY totais_assistencias desc
LIMIT 5;
