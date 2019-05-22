select motion, sum(speakerPointsMean) as speakerPointsSum
from Round JOIN TournamentDebate
where Round.id = TournamentDebate.round and 
(Round.name = 'R1' or Round.name = 'R2' or Round.name = 'R3' or Round.name = 'R4' or Round.name = 'R5' )
group by Round.motion
order by speakerPointsSum desc