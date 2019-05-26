select sum(speakerPointsMean), motion, official
from TournamentDebate, Round , Tournament
where TournamentDebate.round = Round.id and Round.tournament = Tournament.id and Tournament.official = 1
union
select sum(speakerPointsMean), motion, official
from TournamentDebate, Round , Tournament
where TournamentDebate.round = Round.id and Round.tournament = Tournament.id and Tournament.official = 0
order by official;