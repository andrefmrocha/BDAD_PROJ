select motion, sum(speakerPointsMean) as speakerPointsSum
from Round JOIN TournamentDebate
where Round.id = TournamentDebate.round
group by Round.motion
order by speakerPointsSum desc