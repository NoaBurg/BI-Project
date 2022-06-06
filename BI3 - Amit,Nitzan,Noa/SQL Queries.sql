SELECT DISTINCT(winner), AVG(
From Goals 
Where winner = half_1_winner 

 Select 
 FROM WorldCupMatchess 
 Where winner <> home_team_name
  
  --
  SELECT
    
    'host'     AS side,
    home_team_name  AS team_id,
    home_team_goals AS goals,
    CASE WHEN home_team_goals > away_team_goals THEN 1 WHEN home_team_goals = away_team_goals THEN 0 ELSE -1 END AS victory
FROM
    Teams 

UNION ALL

SELECT
    
    'guest'     AS side,
    away_team_name  AS team_id,
    away_team_goals AS goals,
    CASE WHEN away_team_goals > home_team_goals THEN 1 WHEN away_team_goals = home_team_goals THEN 0 ELSE -1 END AS victory
FROM
    Teams
--
select home_team_name, SUM(home_team_goals)
OVER(PARTITION BY home_team_name) as home_team_victories, 
away_team_name, SUM(away_team_goals)
OVER(PARTITION BY away_team_name) as away_team_victories
FROM WorldCupMatchess

--
SELECT matchid,start_hour, AVG(home_team_goals) 
		OVER(PARTITION BY start_hour) as average_goals_per_hour
FROM WorldCupMatchess
ORDER BY average_goals_per_hour DESC
 -- 
Select winner, COUNT(winner)  
from Goals
Where winner <> 'Tie'
GROUP BY winner
ORDER BY COUNT(winner)  DESC
LIMIT 3
  --
Select matchid,SUM(home_team_goals+away_team_goals) OVER(PARTITION BY matchid) as 'average_goals_in_game'
FROM WorldCupMatchess
Where winner = 'Brazil' and (home_team_name = "Brazil" Or away_team_name = "Brazil");
