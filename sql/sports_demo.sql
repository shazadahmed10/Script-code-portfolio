-- Create players table
CREATE TABLE players (
    player_id INT PRIMARY KEY,
    name VARCHAR(50),
    team VARCHAR(50),
    position VARCHAR(20));

-- Insert players
INSERT INTO players (player_id, name, team, position) VALUES
(1, 'Jordan', 'Bulls', 'Guard'),
(2, 'LeBron', 'Lakers', 'Forward'),
(3, 'Steph', 'Warriors', 'Guard'),
(4, 'Shaq', 'Lakers', 'Center');

-- Create games table
CREATE TABLE games (
    game_id INT PRIMARY KEY,
    player_id INT,
    points INT,
    rebounds INT,
    assists INT,
    FOREIGN KEY (player_id) REFERENCES players(player_id));

-- Insert games
INSERT INTO games (game_id, player_id, points, rebounds, assists) VALUES
(501, 1, 30, 5, 6),
(502, 2, 25, 8, 7),
(503, 3, 33, 4, 9),
(504, 1, 28, 6, 5),
(505, 4, 18, 12, 2);

-- Select with renaming and filtering
SELECT 
    name AS player_name,
    team,
    position
FROM players
WHERE team = 'Lakers';

-- Join to get player performance
SELECT 
    p.name AS player_name,
    g.points,
    g.rebounds,
    g.assists
FROM players p
LEFT JOIN games g ON p.player_id = g.player_id;

-- Create new column and group by player
SELECT 
    p.name AS player_name,
    AVG(g.points) AS avg_points,
    SUM(g.rebounds) AS total_rebounds,
    SUM(g.points + g.rebounds + g.assists) AS total_contribution
FROM players p
JOIN games g ON p.player_id = g.player_id
GROUP BY p.name;

-- Cherry-picked stat: Player with the highest total contribution
SELECT 
    p.name AS player_name,
    SUM(g.points + g.rebounds + g.assists) AS total_contribution
FROM players p
JOIN games g ON p.player_id = g.player_id
GROUP BY p.name
ORDER BY total_contribution DESC
LIMIT 1;
