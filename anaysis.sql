-- Q1: Goals by competition for each player
SELECT
    Player,
    Competition,
    COUNT(*) AS Total_Goals
FROM player.data
GROUP BY Player, Competition
ORDER BY Player, Total_Goals DESC;

-- Which clubs have conceded the most goals to Messi and Ronaldo?
SELECT
    Player,
    Opponent,
    COUNT(*) AS Goals_Scored
FROM player.data
GROUP BY Player, Opponent
ORDER BY Player, Goals_Scored DESC;

-- What type pf goal does each player score the most 
SELECT
    Player,
    Type,
    COUNT(*) AS Total_Goals
FROM player.data
GROUP BY Player, Type
ORDER BY Player, Total_Goals DESC;

-- Which team mates assisted them the most 
SELECT
    Player,
    Goal_assist AS Assist_Player,
    COUNT(*) AS Assisted_Goals
FROM player.data
WHERE Goal_assist IS NOT NULL
AND Goal_assist <> ''
GROUP BY Player, Goal_assist
ORDER BY Player, Assisted_Goals DESC;

-- Which position did they score most goals from
SELECT
    Player,
    Playing_Position,
    COUNT(*) AS Goals
FROM player.data
WHERE Playing_Position IS NOT NULL
AND Playing_Position <> ''
GROUP BY Player, Playing_Position
ORDER BY Player, Goals DESC;
