create view PMPoints as
select Person.id, PMSpeakerPoints as Points
from Person Join Specification Join (Debate Natural Join TournamentDebate)
where Person.id = Specification.firstSpeaker and Specification.position = 'OG' and Debate.id = Specification.debate;

create view DPMPoints as
select Person.id, DPMSpeakerPoints as Points
from Person Join Specification Join (Debate Natural Join TournamentDebate)
where Person.id = Specification.secondSpeaker and Specification.position = 'OG' and Debate.id = Specification.debate;


create view LOPoints as
select Person.id, LOSpeakerPoints as Points
from Person Join Specification Join (Debate Natural Join TournamentDebate)
where Person.id = Specification.firstSpeaker and Specification.position = 'OO' and Debate.id = Specification.debate;


create view DLOPoints as
select Person.id, DLOSpeakerPoints as Points
from Person Join Specification Join (Debate Natural Join TournamentDebate)
where Person.id = Specification.secondSpeaker and Specification.position = 'OO' and Debate.id = Specification.debate;


create view MGPoints as
select Person.id, MGSpeakerPoints as Points
from Person Join Specification Join (Debate Natural Join TournamentDebate)
where Person.id = Specification.firstSpeaker and Specification.position = 'CG' and Debate.id = Specification.debate;


create view GWPoints as
select Person.id, GWSpeakerPoints as Points
from Person Join Specification Join (Debate Natural Join TournamentDebate)
where Person.id = Specification.secondSpeaker and Specification.position = 'CG' and Debate.id = Specification.debate;


create view MOPoints as
select Person.id, MOSpeakerPoints as Points
from Person Join Specification Join (Debate Natural Join TournamentDebate)
where Person.id = Specification.firstSpeaker and Specification.position = 'CO' and Debate.id = Specification.debate;


create view OWPoints as
select Person.id, OWSpeakerPoints as Points
from Person Join Specification Join (Debate Natural Join TournamentDebate)
where Person.id = Specification.secondSpeaker and Specification.position = 'CO' and Debate.id = Specification.debate;

create view PeoplePoints as
select *
from DLOPoints
UNION ALL
select *
from DPMPoints
UNION ALL
select *
from GWPoints
UNION ALL
select *
from LOPoints
UNION ALL
select *
from MGPoints
UNION ALL
select *
from MOPoints
UNION ALL
select *
from OWPoints
UNION ALL
select *
from PMPoints;