-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
DROP DATABASE IF EXISTS tournament;
CREATE DATABASE tournament;

\c tournament

CREATE TABLE players ( id SERIAL PRIMARY KEY , name TEXT);
CREATE TABLE matches ( id SERIAL PRiMARY KEY,
                    winner INTEGER REFERENCES players(id) NOT NULL,
                    loser INTEGER  REFERENCES players(id) NOT NULL);
CREATE VIEW standings AS SELECT players.id, players.name,
            (SELECT count(matches.winner) FROM matches WHERE players.id = matches.winner) AS matches_win,
            (SELECT count(matches.id) FROM matches WHERE players.id = matches.winner OR players.id = matches.loser) AS matches_played
            FROM players ORDER BY matches_win DESC, matches_played DESC;