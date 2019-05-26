select *
from Specification, TournamentDebate
where Specification.debate = 34 and Specification.debate = TournamentDebate.id;
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",54,54,42,"34");
select *
from Specification, TournamentDebate
where Specification.debate = 34 and Specification.debate = TournamentDebate.id;