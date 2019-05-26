create view OpenTPMPoints as
select Person.id, PMSpeakerPoints as Points
from Person Join Specification Join (Debate Natural Join TournamentDebate) Join Round Join Tournament
where Person.id = Specification.firstSpeaker and Specification.position = 'OG' and Debate.id = Specification.debate and Round.id = TournamentDebate.round and Tournament.id = Round.tournament and Tournament.official = false;

create view OpenTDPMPoints as
select Person.id, DPMSpeakerPoints as Points
from Person Join Specification Join (Debate Natural Join TournamentDebate) Join Round Join Tournament
where Person.id = Specification.secondSpeaker and Specification.position = 'OG' and Debate.id = Specification.debate and Round.id = TournamentDebate.round and Tournament.id = Round.tournament and Tournament.official = false;


create view OpenTLOPoints as
select Person.id, LOSpeakerPoints as Points
from Person Join Specification Join (Debate Natural Join TournamentDebate) Join Round Join Tournament
where Person.id = Specification.firstSpeaker and Specification.position = 'OO' and Debate.id = Specification.debate and Round.id = TournamentDebate.round and Tournament.id = Round.tournament and Tournament.official = false;


create view OpenTDLOPoints as
select Person.id, DLOSpeakerPoints as Points
from Person Join Specification Join (Debate Natural Join TournamentDebate) Join Round Join Tournament
where Person.id = Specification.secondSpeaker and Specification.position = 'OO' and Debate.id = Specification.debate and Round.id = TournamentDebate.round and Tournament.id = Round.tournament and Tournament.official = false;


create view OpenTMGPoints as
select Person.id, MGSpeakerPoints as Points
from Person Join Specification Join (Debate Natural Join TournamentDebate) Join Round Join Tournament
where Person.id = Specification.firstSpeaker and Specification.position = 'CG' and Debate.id = Specification.debate and Round.id = TournamentDebate.round and Tournament.id = Round.tournament and Tournament.official = false;


create view OpenTGWPoints as
select Person.id, GWSpeakerPoints as Points
from Person Join Specification Join (Debate Natural Join TournamentDebate) Join Round Join Tournament
where Person.id = Specification.secondSpeaker and Specification.position = 'CG' and Debate.id = Specification.debate and Round.id = TournamentDebate.round and Tournament.id = Round.tournament and Tournament.official = false;


create view OpenTMOPoints as
select Person.id, MOSpeakerPoints as Points
from Person Join Specification Join (Debate Natural Join TournamentDebate) Join Round Join Tournament
where Person.id = Specification.firstSpeaker and Specification.position = 'CO' and Debate.id = Specification.debate and Round.id = TournamentDebate.round and Tournament.id = Round.tournament and Tournament.official = false;


create view OpenTOWPoints as
select Person.id, OWSpeakerPoints as Points
from Person Join Specification Join (Debate Natural Join TournamentDebate) Join Round Join Tournament
where Person.id = Specification.secondSpeaker and Specification.position = 'CO' and Debate.id = Specification.debate and Round.id = TournamentDebate.round and Tournament.id = Round.tournament and Tournament.official = false;

create view OpenTPeoplePoints as
select *
from OpenTDLOPoints
UNION ALL
select *
from OpenTDPMPoints
UNION ALL
select *
from OpenTGWPoints
UNION ALL
select *
from OpenTLOPoints
UNION ALL
select *
from OpenTMGPoints
UNION ALL
select *
from OpenTMOPoints
UNION ALL
select *
from OpenTOWPoints
UNION ALL
select *
from OpenTPMPoints;

