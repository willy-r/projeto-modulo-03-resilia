--
-- Perguntas/consultas de Wellerson Ramos.
--

-- Quais são os 5 jogadores mais ofensivos?
SELECT 
    nome_jogador, 
    sum(qtd_cestas_feitas + qtd_cestas3pt_feitas + qtd_cestasLL_feitas + qtd_reb_ofensivos + qtd_ast + qtd_roubos - qtd_bolas_perdidas) as pontos_de_ofensividade
 FROM
    detalhes_jogo as dj
 group by nome_jogador
 having pontos_de_ofensividade is not null
 order by pontos_de_ofensividade DESC
 limit 5;


-- Quais são os 5 jogadores mais defensivos?
select
nome_jogador, 
sum(qtd_reb_defensivos + qtd_bloqueios) as pontos_de_defensividade
from detalhes_jogo 
group by nome_jogador
order by pontos_de_defensividade desc
limit 5;

-- Quais são os 5 jogadores que mais pontuam com cestas de 3 pontos?
select
nome_jogador, 
sum(qtd_cestas3pt_feitas) aproveitamento
from detalhes_jogo 
group by nome_jogador
having aproveitamento is not null
order by aproveitamento desc
limit 5;
