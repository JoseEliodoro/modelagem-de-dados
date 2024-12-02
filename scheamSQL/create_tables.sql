CREATE DATABASE modelagem;
USE modelagem;

CREATE TABLE IF NOT EXISTS appearances (
  appearance_id VARCHAR(45) PRIMARY KEY,
  game_id INT,
  player_id INT,
  player_club_id INT,
  player_current_club_id INT,
  date DATE,
  player_name VARCHAR(80),
  competition_id VARCHAR(5),
  yellow_cards INT,
  red_cards INT,
  goals INT,
  assists INT,
  minutes_played INT
);
CREATE TABLE IF NOT EXISTS clubs (
  club_id INT PRIMARY KEY,
  club_code VARCHAR(80),
  name VARCHAR(98),
  domestic_competition_id VARCHAR(4),
  total_market_value DOUBLE,
  squad_size INT ,
  average_age DOUBLE,
  foreigners_number INT,
  foreigners_percentage DOUBLE,
  national_team_players INT,
  stadium_name VARCHAR(80),
  stadium_seats INT,
  net_transfer_record VARCHAR(10),
  last_season INT
);
CREATE TABLE IF NOT EXISTS club_games (
  game_id INT,  
  club_id INT,  
  own_goals INT,  
  own_position DOUBLE,
  own_manager_name VARCHAR(80), 
  opponent_id INT,  
  opponent_goals INT,  
  opponent_position DOUBLE,
  opponent_manager_name VARCHAR(80), 
  hosting VARCHAR(4),
  is_win INT,
  CONSTRAINT pk_clube_games PRIMARY KEY (game_id, club_id)
);
CREATE TABLE IF NOT EXISTS competitions(
  competition_id VARCHAR(6) PRIMARY KEY,
  competition_code VARCHAR(80),
  name VARCHAR(80),
  sub_type VARCHAR(80),
  type VARCHAR(20),
  country_id INT, 
  country_name VARCHAR(20),
  domestic_league_code VARCHAR(4),
  confederation VARCHAR(6),
  is_major_national_league BOOLEAN 
);
CREATE TABLE IF NOT EXISTS games(
  game_id INT PRIMARY KEY,  
  competition_id VARCHAR(6), 
  season INT,  
  round VARCHAR(28), 
  date DATE, 
  home_club_id INT,  
  away_club_id INT,  
  home_club_goals INT,  
  away_club_goals INT,
  home_club_manager_name VARCHAR(30), 
  away_club_manager_name VARCHAR(30), 
  referee VARCHAR(45), 
  url VARCHAR(255), 
  home_club_formation VARCHAR(15), 
  away_club_formation VARCHAR(33),
  aggregate VARCHAR(5),
  competition_type VARCHAR(18)
);
CREATE TABLE IF NOT EXISTS game_events(
  game_event_id VARCHAR(32) PRIMARY KEY, 
  date DATE, 
  game_id INT,  
  minute INT,  
  type VARCHAR(15), 
  club_id INT,  
  player_id INT,  
  description VARCHAR(100), 
  player_in_id DOUBLE,
  player_assist_id DOUBLE
);
CREATE TABLE IF NOT EXISTS game_lineups(
  game_lineups_id  VARCHAR(32) PRIMARY KEY,
  date DATE,
  game_id INT, 
  player_id INT, 
  club_id INT, 
  player_name VARCHAR(45),
  type VARCHAR(15),
  position VARCHAR(20),
  number VARCHAR(38),
  team_captain INT
);
CREATE TABLE IF NOT EXISTS players(
  player_id INT PRIMARY KEY,  
  first_name VARCHAR(19), 
  last_name VARCHAR(22), 
  name VARCHAR(32), 
  last_season INT,  
  current_club_id INT,  
  country_of_birth VARCHAR(30), 
  city_of_birth VARCHAR(56), 
  country_of_citizenship VARCHAR(24), 
  date_of_birth DATE, 
  sub_position VARCHAR(18), 
  position VARCHAR(10), 
  foot VARCHAR(5), 
  height_in_cm DOUBLE,
  contract_expiration_date DATE, 
  current_club_domestic_competition_id VARCHAR(4),
  market_value_in_eur DOUBLE,
  highest_market_value_in_eur DOUBLE
);
CREATE TABLE IF NOT EXISTS player_valuations(
  player_id INT, 
  date DATE,
  market_value_in_eur INT, 
  current_club_id INT, 
  player_club_domestic_competition_id VARCHAR(4)
);
CREATE TABLE IF NOT EXISTS transfers(
  transfer_id INT AUTO_INCREMENT PRIMARY KEY,
  player_id INT,  
  transfer_date DATE, 
  transfer_season VARCHAR(5), 
  from_club_id INT,  
  to_club_id INT,
  transfer_fee DOUBLE,
  market_value_in_eur DOUBLE
);
