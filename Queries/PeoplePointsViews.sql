create view PMPoints as
select Person.id, Debate.id, date, PMSpeakerPoints as Points
from Person Join Specification Join (Debate Natural Join TournamentDebate)
where Person.id = Specification.firstSpeaker and Specification.position = 'OG' and Debate.id = Specification.debate;

create view DPMPoints as
select Person.id,Debate.id,  date, DPMSpeakerPoints as Points
from Person Join Specification Join (Debate Natural Join TournamentDebate)
where Person.id = Specification.secondSpeaker and Specification.position = 'OG' and Debate.id = Specification.debate;


create view LOPoints as
select Person.id,Debate.id,  date, LOSpeakerPoints as Points
from Person Join Specification Join (Debate Natural Join TournamentDebate)
where Person.id = Specification.firstSpeaker and Specification.position = 'OO' and Debate.id = Specification.debate;


create view DLOPoints as
select Person.id,Debate.id,  date, DLOSpeakerPoints as Points
from Person Join Specification Join (Debate Natural Join TournamentDebate)
where Person.id = Specification.secondSpeaker and Specification.position = 'OO' and Debate.id = Specification.debate;


create view MGPoints as
select Person.id,Debate.id,  date, MGSpeakerPoints as Points
from Person Join Specification Join (Debate Natural Join TournamentDebate)
where Person.id = Specification.firstSpeaker and Specification.position = 'CG' and Debate.id = Specification.debate;


create view GWPoints as
select Person.id,Debate.id,  date, GWSpeakerPoints as Points
from Person Join Specification Join (Debate Natural Join TournamentDebate)
where Person.id = Specification.secondSpeaker and Specification.position = 'CG' and Debate.id = Specification.debate;


create view MOPoints as
select Person.id,Debate.id,  date, MOSpeakerPoints as Points
from Person Join Specification Join (Debate Natural Join TournamentDebate)
where Person.id = Specification.firstSpeaker and Specification.position = 'CO' and Debate.id = Specification.debate;


create view OWPoints as
select Person.id,Debate.id,  date, OWSpeakerPoints as Points
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