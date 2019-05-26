PRAGMA foreign_keys = ON;

create Trigger SemiFinal
Before Insert on Specification
For Each Row
When not exists(
select *
from Round, TournamentDebate
where Round.id = TournamentDebate.round and Round.name = 'SemiFinal' and TournamentDebate.id = New.debate
)
or New.team not in
(
select Team.id
from Tournament, Team, TournamentTeam
where Tournament.id =  TournamentTeam.tournament and Team.id = TournamentTeam.team
order by Team.points desc
LIMIT 8
)
Begin
Select raise(ignore);
End