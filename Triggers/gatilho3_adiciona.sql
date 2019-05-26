create Trigger FinalPoints
Before Insert on Specification
For Each Row
When not exists(
select *
from Round, TournamentDebate
where Round.id = TournamentDebate.round and Round.name = 'Final' and TournamentDebate.id = New.debate
)
or New.team not in
(
select Team.id
from Tournament, Team, TournamentTeam, Round
where Tournament.id =  TournamentTeam.tournament and Team.id = TournamentTeam.team and Round.tournament = Tournament.id and Round.name = 'SemiFinal'
order by Team.points desc
LIMIT 4
)
Begin
Select raise(ignore);
End;