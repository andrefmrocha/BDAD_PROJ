.mode		columns
.headers	on
.nullvalue	NULL

select Person.id, Person.name, avg(Specification.classification) as AvgClassification, Specification.position
from Person, Specification, Debate
where Debate.id = Specification.debate and Person.id = 47 and
(Person.id = Specification.firstSpeaker or Person.id = Specification.secondSpeaker)
group by position
order by AvgClassification asc