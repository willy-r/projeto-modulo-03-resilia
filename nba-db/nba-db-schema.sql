--
-- Cria o banco de dados.
-- Usa esse comando só se não for criar no Metabase, se não ignora isso.
--
CREATE DATABASE IF NOT EXISTS nba;
USE nba;

--
-- Cria as tabelas.
--
CREATE TABLE IF NOT EXISTS `time` (
  id_time VARCHAR(10) PRIMARY KEY,
  ano_fundacao YEAR,
  abreviacao VARCHAR(3),
  cidade VARCHAR(50),
  nome VARCHAR(50),
  arena VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS jogo (
  id_jogo VARCHAR(8) PRIMARY KEY,
  data_jogo DATE,
  temporada YEAR,
  id_time_casa VARCHAR(10) NOT NULL,
  pts_casa MEDIUMINT,
  pct_cestas2pt_casa FLOAT,
  pct_cestasLL_casa FLOAT,
  pct_cestas3pt_casa FLOAT,
  qtd_ast_casa TINYINT,
  qtd_reb_casa TINYINT,
  id_time_visitante VARCHAR(10) NOT NULL,
  pts_visitante SMALLINT,
  pct_cestas2pt_visitante FLOAT,
  pct_cestasLL_visitante FLOAT,
  pct_cestas3pt_visitante FLOAT,
  qtd_ast_visitante TINYINT,
  qtd_reb_visitante TINYINT,
  vitoria_time_casa BOOLEAN
);

CREATE TABLE IF NOT EXISTS detalhes_jogo (
  id_jogo VARCHAR(8) NOT NULL,
  id_time VARCHAR(10) NOT NULL,
  nome_jogador VARCHAR(100),
  min_jogador TIME,
  qtd_cestas_feitas TINYINT,
  qtd_tentv_cestas TINYINT,
  pct_aprov_cestas FLOAT,
  qtd_cestas3pt_feitas TINYINT,
  qtd_tentv_cestas3pt TINYINT,
  pct_aprov_cestas3pt FLOAT,
  qtd_cestasLL_feitas TINYINT,
  qtd_tentv_cestasLL TINYINT,
  pct_aprov_cestasLL FLOAT,
  qtd_reb_ofensivos TINYINT,
  qtd_reb_defensivos TINYINT,
  qtd_reb_total TINYINT,
  qtd_ast TINYINT,
  qtd_roubos TINYINT,
  qtd_bloqueios TINYINT,
  qtd_bolas_perdidas TINYINT,
  qtd_faltas TINYINT,
  pts TINYINT
);

--
-- Cria os relacionamentos.
--
ALTER TABLE detalhes_jogo ADD FOREIGN KEY (id_jogo) REFERENCES jogo (id_jogo);
ALTER TABLE detalhes_jogo ADD FOREIGN KEY (id_time) REFERENCES `time` (id_time);
ALTER TABLE jogo ADD FOREIGN KEY (id_time_casa) REFERENCES `time` (id_time);
ALTER TABLE jogo ADD FOREIGN KEY (id_time_visitante) REFERENCES `time` (id_time);
