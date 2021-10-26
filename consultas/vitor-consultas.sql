--
-- Perguntas/consultas de Vitor Santos.
--

-- Quais são os 5 jogadores que mais cometeram faltas?
select
nome_jogador, sum(qtd_faltas) as total_faltas
from detalhes_jogo group by nome_jogador
order by total_faltas desc, nome_jogador
limit 5;

-- Quais são os 5 jogadores que mais perderam a posse de bola?
SELECT	
  nome_jogador,
  SUM(qtd_bolas_perdidas) total_bolas_perdidas
FROM detalhes_jogo
GROUP BY nome_jogador
ORDER BY total_bolas_perdidas DESC
LIMIT 5;
