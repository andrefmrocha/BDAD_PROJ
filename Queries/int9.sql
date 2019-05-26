select motion, official, avg(speakerPointsMean)
from TournamentDebate, Round , Tournament
where TournamentDebate.round = Round.id and Round.tournament = Tournament.id and Tournament.official = 1
union
select motion, official, avg(speakerPointsMean)
from TournamentDebate, Round , Tournament
where TournamentDebate.round = Round.id and Round.tournament = Tournament.id and Tournament.official = 0
order by official;