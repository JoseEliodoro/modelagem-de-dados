ALTER TABLE appearances
ADD CONSTRAINT fk_player_appearance_id
FOREIGN KEY (player_id)
REFERENCES players (player_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE appearances
ADD CONSTRAINT fk_game_appearance_id
FOREIGN KEY (game_id)
REFERENCES games (game_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE clubs
ADD CONSTRAINT fk_domestic_competition
FOREIGN KEY (domestic_competition_id)
REFERENCES competitions (competition_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE games
ADD CONSTRAINT fk_competition_id
FOREIGN KEY (competition_id)
REFERENCES competitions (competition_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE games
ADD CONSTRAINT fk_home_club_id
FOREIGN KEY (home_club_id)
REFERENCES clubs (club_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE games
ADD CONSTRAINT fk_away_club_id
FOREIGN KEY (away_club_id)
REFERENCES clubs (club_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE players
ADD CONSTRAINT fk_current_club_id
FOREIGN KEY (current_club_id)
REFERENCES clubs (club_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE game_events
ADD CONSTRAINT fk_player_id
FOREIGN KEY (player_id)
REFERENCES players (player_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE game_events
ADD CONSTRAINT fk_game_id
FOREIGN KEY (game_id)
REFERENCES games (game_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE game_events
ADD CONSTRAINT fk_club_id
FOREIGN KEY (club_id)
REFERENCES clubs (club_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE player_valuations
ADD CONSTRAINT fk_player_valuations_id
FOREIGN KEY (player_id)
REFERENCES players (player_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE club_games
ADD CONSTRAINT fk_club_games_id
FOREIGN KEY (game_id)
REFERENCES games (game_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE club_games
ADD CONSTRAINT fk_opponent_id
FOREIGN KEY (opponent_id)
REFERENCES clubs (club_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE transfers
ADD CONSTRAINT fk_transfers_id
FOREIGN KEY (player_id)
REFERENCES players (player_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE transfers
ADD CONSTRAINT fk_from_transfers_club_id
FOREIGN KEY (from_club_id)
REFERENCES clubs (club_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE transfers
ADD CONSTRAINT fk_to_transfers_club_id
FOREIGN KEY (to_club_id)
REFERENCES clubs (club_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

/* ALTER TABLE game_lineups
ADD CONSTRAINT fk_game_lineups_club
FOREIGN KEY (to_club_id)
REFERENCES clubs (club_id)
ON DELETE CASCADE
ON UPDATE CASCADE; */

ALTER TABLE game_lineups
ADD CONSTRAINT fk_game_lineups_player
FOREIGN KEY (player_id)
REFERENCES players (player_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE game_lineups
ADD CONSTRAINT fk_game_lineups_game
FOREIGN KEY (game_id)
REFERENCES games (game_id)
ON DELETE CASCADE
ON UPDATE CASCADE;