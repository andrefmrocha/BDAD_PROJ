.mode		columns
.headers	on
.nullvalue	NULL

SELECT Team.name, Team.points, Tournament.name
FROM TournamentTeam, Team, Tournament
WHERE Team.id = TournamentTeam.team AND Tournament.id = TournamentTeam.tournament AND Tournament.name = 'V Tornadu' -- Select Tournament here
ORDER BY Team.points DESC
LIMIT 3 -- Choose Top X here