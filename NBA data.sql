create database nba;
use nba; 


CREATE TABLE curry_game_logs (
    season_id INT,
    player_id INT,
    game_id VARCHAR(20),
    game_date DATE,
    matchup VARCHAR(50),
    is_home BOOLEAN,
    opponent VARCHAR(10),
    wl CHAR(1),
    min_played INT,
    fgm INT,
    fga INT,
    fg_pct DECIMAL(4,3),
    fg3m INT,
    fg3a INT,
    fg3_pct DECIMAL(4,3),
    ftm INT,
    fta INT,
    ft_pct DECIMAL(4,3),
    oreb INT,
    dreb INT,
    reb INT,
    ast INT,
    stl INT,
    blk INT,
    tov INT,
    pf INT,
    pts INT,
    plus_minus INT
);

select * from curry_game_logs;

describe curry_game_logs;

-- LOADING STATS FOR STEPHEN CURRY STORED AS 4 CSV FILES BY YEAR

-- LOADING 2021 CURRY DATA

LOAD DATA INFILE "E:/Miscellaneous/Data Science/Python/Projects/NBA/2021/curry_2021_gamelog.csv"
INTO TABLE curry_game_logs
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    season_id,
    player_id,
    game_id,
    @game_date_raw,
    @matchup_raw,
    wl,
    min_played,
    fgm,
    fga,
    fg_pct,
    fg3m,
    fg3a,
    fg3_pct,
    ftm,
    fta,
    ft_pct,
    oreb,
    dreb,
    reb,
    ast,
    stl,
    blk,
    tov,
    pf,
    pts,
    plus_minus,
    @video_available   -- ignored column #28
)
SET
    game_date = STR_TO_DATE(@game_date_raw, '%b %d, %Y'),
    matchup = @matchup_raw,

    -- opponent extraction
    opponent =
        CASE
            WHEN @matchup_raw LIKE '% @ %'
                THEN SUBSTRING_INDEX(@matchup_raw, '@ ', -1)
            WHEN @matchup_raw LIKE '% vs. %'
                THEN SUBSTRING_INDEX(@matchup_raw, 'vs. ', -1)
        END,

    -- home/away detection
    is_home =
        CASE
            WHEN @matchup_raw LIKE '%vs.%' THEN 1
            ELSE 0
        END;

select * from curry_game_logs;


-- LOADING 2022 CURRY DATA

LOAD DATA INFILE "E:/Miscellaneous/Data Science/Python/Projects/NBA/2022/curry_2022_gamelog.csv"
INTO TABLE curry_game_logs
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    season_id,
    player_id,
    game_id,
    @game_date_raw,
    @matchup_raw,
    wl,
    min_played,
    fgm,
    fga,
    fg_pct,
    fg3m,
    fg3a,
    fg3_pct,
    ftm,
    fta,
    ft_pct,
    oreb,
    dreb,
    reb,
    ast,
    stl,
    blk,
    tov,
    pf,
    pts,
    plus_minus,
    @video_available   -- ignored column #28
)
SET
    game_date = STR_TO_DATE(@game_date_raw, '%b %d, %Y'),
    matchup = @matchup_raw,

    -- opponent extraction
    opponent =
        CASE
            WHEN @matchup_raw LIKE '% @ %'
                THEN SUBSTRING_INDEX(@matchup_raw, '@ ', -1)
            WHEN @matchup_raw LIKE '% vs. %'
                THEN SUBSTRING_INDEX(@matchup_raw, 'vs. ', -1)
        END,

    -- home/away detection
    is_home =
        CASE
            WHEN @matchup_raw LIKE '%vs.%' THEN 1
            ELSE 0
        END;


-- LOADING 2023 CURRY DATA

LOAD DATA INFILE "E:/Miscellaneous/Data Science/Python/Projects/NBA/2023/curry_2023_gamelog.csv"
INTO TABLE curry_game_logs
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    season_id,
    player_id,
    game_id,
    @game_date_raw,
    @matchup_raw,
    wl,
    min_played,
    fgm,
    fga,
    fg_pct,
    fg3m,
    fg3a,
    fg3_pct,
    ftm,
    fta,
    ft_pct,
    oreb,
    dreb,
    reb,
    ast,
    stl,
    blk,
    tov,
    pf,
    pts,
    plus_minus,
    @video_available   -- ignored column #28
)
SET
    game_date = STR_TO_DATE(@game_date_raw, '%b %d, %Y'),
    matchup = @matchup_raw,

    -- opponent extraction
    opponent =
        CASE
            WHEN @matchup_raw LIKE '% @ %'
                THEN SUBSTRING_INDEX(@matchup_raw, '@ ', -1)
            WHEN @matchup_raw LIKE '% vs. %'
                THEN SUBSTRING_INDEX(@matchup_raw, 'vs. ', -1)
        END,

    -- home/away detection
    is_home =
        CASE
            WHEN @matchup_raw LIKE '%vs.%' THEN 1
            ELSE 0
        END;


-- LOADING 2024 CURRY DATA

LOAD DATA INFILE "E:/Miscellaneous/Data Science/Python/Projects/NBA/2024/curry_2024_gamelog.csv"
INTO TABLE curry_game_logs
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    season_id,
    player_id,
    game_id,
    @game_date_raw,
    @matchup_raw,
    wl,
    min_played,
    fgm,
    fga,
    fg_pct,
    fg3m,
    fg3a,
    fg3_pct,
    ftm,
    fta,
    ft_pct,
    oreb,
    dreb,
    reb,
    ast,
    stl,
    blk,
    tov,
    pf,
    pts,
    plus_minus,
    @video_available   -- ignored column #28
)
SET
    game_date = STR_TO_DATE(@game_date_raw, '%b %d, %Y'),
    matchup = @matchup_raw,

    -- opponent extraction
    opponent =
        CASE
            WHEN @matchup_raw LIKE '% @ %'
                THEN SUBSTRING_INDEX(@matchup_raw, '@ ', -1)
            WHEN @matchup_raw LIKE '% vs. %'
                THEN SUBSTRING_INDEX(@matchup_raw, 'vs. ', -1)
        END,

    -- home/away detection
    is_home =
        CASE
            WHEN @matchup_raw LIKE '%vs.%' THEN 1
            ELSE 0
        END;

select * from curry_game_logs;


-- CLEANING THE DATA

UPDATE curry_game_logs
SET season_id = season_id - 20000;

SELECT game_date 
FROM curry_game_logs
ORDER BY game_date DESC LIMIT 10;

UPDATE curry_game_logs
SET fg_pct = NULLIF(fg_pct, 0),
    fg3_pct = NULLIF(fg3_pct, 0),
    ft_pct = NULLIF(ft_pct, 0)
WHERE fga = 0 OR fg3a = 0 OR fta = 0;

UPDATE curry_game_logs
SET min_played = 0
WHERE min_played < 0 OR min_played IS NULL;   -- no rows affected

UPDATE curry_game_logs
SET plus_minus = TRIM(plus_minus);

SELECT season_id, COUNT(*) 
FROM curry_game_logs
GROUP BY season_id;


-- KEVIN  DURANT UPLOAD

CREATE TABLE durant_game_logs (
    season_id INT,
    player_id INT,
    game_id VARCHAR(20),
    game_date DATE,
    matchup VARCHAR(50),
    is_home BOOLEAN,
    opponent VARCHAR(10),
    wl CHAR(1),
    min_played INT,
    fgm INT,
    fga INT,
    fg_pct DECIMAL(4,3),
    fg3m INT,
    fg3a INT,
    fg3_pct DECIMAL(4,3),
    ftm INT,
    fta INT,
    ft_pct DECIMAL(4,3),
    oreb INT,
    dreb INT,
    reb INT,
    ast INT,
    stl INT,
    blk INT,
    tov INT,
    pf INT,
    pts INT,
    plus_minus INT
);

select * from durant_game_logs;


-- LOADING DURANT 2021 DATA

LOAD DATA INFILE "E:/Miscellaneous/Data Science/Python/Projects/NBA/2021/durant_2021_gamelog.csv"
INTO TABLE durant_game_logs
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    season_id,
    player_id,
    game_id,
    @game_date_raw,
    @matchup_raw,
    wl,
    min_played,
    fgm,
    fga,
    fg_pct,
    fg3m,
    fg3a,
    fg3_pct,
    ftm,
    fta,
    ft_pct,
    oreb,
    dreb,
    reb,
    ast,
    stl,
    blk,
    tov,
    pf,
    pts,
    plus_minus,
    @video_available   -- ignored column #28
)
SET
    game_date = STR_TO_DATE(@game_date_raw, '%b %d, %Y'),
    matchup = @matchup_raw,

    -- opponent extraction
    opponent =
        CASE
            WHEN @matchup_raw LIKE '% @ %'
                THEN SUBSTRING_INDEX(@matchup_raw, '@ ', -1)
            WHEN @matchup_raw LIKE '% vs. %'
                THEN SUBSTRING_INDEX(@matchup_raw, 'vs. ', -1)
        END,

    -- home/away detection
    is_home =
        CASE
            WHEN @matchup_raw LIKE '%vs.%' THEN 1
            ELSE 0
        END;
        
        
-- LOADING DURANT 2022 DATA

LOAD DATA INFILE "E:/Miscellaneous/Data Science/Python/Projects/NBA/2022/durant_2022_gamelog.csv"
INTO TABLE durant_game_logs
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    season_id,
    player_id,
    game_id,
    @game_date_raw,
    @matchup_raw,
    wl,
    min_played,
    fgm,
    fga,
    fg_pct,
    fg3m,
    fg3a,
    fg3_pct,
    ftm,
    fta,
    ft_pct,
    oreb,
    dreb,
    reb,
    ast,
    stl,
    blk,
    tov,
    pf,
    pts,
    plus_minus,
    @video_available   -- ignored column #28
)
SET
    game_date = STR_TO_DATE(@game_date_raw, '%b %d, %Y'),
    matchup = @matchup_raw,

    -- opponent extraction
    opponent =
        CASE
            WHEN @matchup_raw LIKE '% @ %'
                THEN SUBSTRING_INDEX(@matchup_raw, '@ ', -1)
            WHEN @matchup_raw LIKE '% vs. %'
                THEN SUBSTRING_INDEX(@matchup_raw, 'vs. ', -1)
        END,

    -- home/away detection
    is_home =
        CASE
            WHEN @matchup_raw LIKE '%vs.%' THEN 1
            ELSE 0
        END;
        
select * from durant_game_logs;


-- LOADING DURANT 2023 DATA

LOAD DATA INFILE "E:/Miscellaneous/Data Science/Python/Projects/NBA/2023/durant_2023_gamelog.csv"
INTO TABLE durant_game_logs
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    season_id,
    player_id,
    game_id,
    @game_date_raw,
    @matchup_raw,
    wl,
    min_played,
    fgm,
    fga,
    fg_pct,
    fg3m,
    fg3a,
    fg3_pct,
    ftm,
    fta,
    ft_pct,
    oreb,
    dreb,
    reb,
    ast,
    stl,
    blk,
    tov,
    pf,
    pts,
    plus_minus,
    @video_available   -- ignored column #28
)
SET
    game_date = STR_TO_DATE(@game_date_raw, '%b %d, %Y'),
    matchup = @matchup_raw,

    -- opponent extraction
    opponent =
        CASE
            WHEN @matchup_raw LIKE '% @ %'
                THEN SUBSTRING_INDEX(@matchup_raw, '@ ', -1)
            WHEN @matchup_raw LIKE '% vs. %'
                THEN SUBSTRING_INDEX(@matchup_raw, 'vs. ', -1)
        END,

    -- home/away detection
    is_home =
        CASE
            WHEN @matchup_raw LIKE '%vs.%' THEN 1
            ELSE 0
        END;
        

-- LOADING DURANT 2024 DATA

LOAD DATA INFILE "E:/Miscellaneous/Data Science/Python/Projects/NBA/2024/durant_2024_gamelog.csv"
INTO TABLE durant_game_logs
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    season_id,
    player_id,
    game_id,
    @game_date_raw,
    @matchup_raw,
    wl,
    min_played,
    fgm,
    fga,
    fg_pct,
    fg3m,
    fg3a,
    fg3_pct,
    ftm,
    fta,
    ft_pct,
    oreb,
    dreb,
    reb,
    ast,
    stl,
    blk,
    tov,
    pf,
    pts,
    plus_minus,
    @video_available   -- ignored column #28
)
SET
    game_date = STR_TO_DATE(@game_date_raw, '%b %d, %Y'),
    matchup = @matchup_raw,

    -- opponent extraction
    opponent =
        CASE
            WHEN @matchup_raw LIKE '% @ %'
                THEN SUBSTRING_INDEX(@matchup_raw, '@ ', -1)
            WHEN @matchup_raw LIKE '% vs. %'
                THEN SUBSTRING_INDEX(@matchup_raw, 'vs. ', -1)
        END,

    -- home/away detection
    is_home =
        CASE
            WHEN @matchup_raw LIKE '%vs.%' THEN 1
            ELSE 0
        END;
        
        
select * from durant_game_logs;


-- CLEANING THE DATA

UPDATE durant_game_logs
SET season_id = season_id - 20000;

SELECT game_date 
FROM durant_game_logs
ORDER BY game_date DESC LIMIT 10;

UPDATE durant_game_logs
SET fg_pct = NULLIF(fg_pct, 0),
    fg3_pct = NULLIF(fg3_pct, 0),
    ft_pct = NULLIF(ft_pct, 0)
WHERE fga = 0 OR fg3a = 0 OR fta = 0;

UPDATE durant_game_logs
SET min_played = 0
WHERE min_played < 0 OR min_played IS NULL;   -- no rows affected

UPDATE durant_game_logs
SET plus_minus = TRIM(plus_minus);

SELECT season_id, COUNT(*) 
FROM durant_game_logs


GROUP BY season_id;


-- MERGING THE 2 TABLES

CREATE TABLE player_game_logs (
    season_id INT,
    player_id INT,
    game_id VARCHAR(20),
    game_date DATE,
    matchup VARCHAR(50),
    is_home BOOLEAN,
    opponent VARCHAR(10),
    wl CHAR(1),
    min_played INT,
    fgm INT,
    fga INT,
    fg_pct DECIMAL(4,3),
    fg3m INT,
    fg3a INT,
    fg3_pct DECIMAL(4,3),
    ftm INT,
    fta INT,
    ft_pct DECIMAL(4,3),
    oreb INT,
    dreb INT,
    reb INT,
    ast INT,
    stl INT,
    blk INT,
    tov INT,
    pf INT,
    pts INT,
    plus_minus INT
);


INSERT INTO player_game_logs
SELECT *
FROM curry_game_logs;

INSERT INTO player_game_logs
SELECT *
FROM durant_game_logs;

SELECT * from player_game_logs;

DESCRIBE player_game_logs;

SHOW TABLES;


-- Check for nulls or blanks

SELECT DISTINCT pts FROM player_game_logs ORDER BY pts;  -- no null values

SELECT DISTINCT fg_pct FROM player_game_logs ORDER BY fg_pct;

DROP TABLE IF EXISTS player_season_stats;


--  adding 2 columns- Player_name and Team

ALTER TABLE player_game_logs
ADD player_name VARCHAR(20);

ALTER TABLE player_game_logs
ADD team VARCHAR (10);

UPDATE player_game_logs
SET player_name = CASE
    WHEN player_id = 201939 THEN 'Stephen Curry'
    WHEN player_id = 201142 THEN 'Kevin Durant'
    ELSE player_name
END;

update player_game_logs
set team = 'GSW'
WHERE player_name = 'Stephen Curry';

UPDATE player_game_logs
SET team = CASE
    WHEN season_id > 2022 THEN 'PHO'
    ELSE 'BKN'
END
WHERE player_name = 'Kevin Durant';


select * from player_game_logs;

-- EXPORTING FILE

SELECT 'season_id', 'player_name', 'game_date', 'team', 'matchup', 'is_home', 'opponent', 'wl', 'min_played', 'fgm', 'fga', 'fg_pct', 'fg3m', 'fg3a', 'ftm', 'fta', 'ft_pct', 'oreb', 'dreb', 'ast', 'stl', 'blk', 'tov', 'pf', 'pts', 'plus_minus', 'ts_pct', 'game_score'
UNION ALL
SELECT season_id, player_name, game_date, team, matchup, is_home, opponent, wl, min_played, fgm, fga, fg_pct, fg3m, fg3a, ftm, fta, ft_pct, oreb, dreb, ast, stl, blk, tov, pf, pts, plus_minus, ts_pct, game_score
FROM player_game_logs
INTO OUTFILE 'C:/mysql_exports/game_stats.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';


