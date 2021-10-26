select
nome_jogador, sum(qtd_faltas) as total_faltas
from detalhes_jogo group by nome_jogador
order by total_faltas desc
limit 5;


