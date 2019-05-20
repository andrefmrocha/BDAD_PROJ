select Person.id, Adjudicator.debate, Frequent.university as AjudicatorUni, Specification.classification, Specification.position, Specification.firstSpeaker, Specification.secondSpeaker
from Adjudicator, (Person Natural Join Student), Frequent , (Debate Natural Join TournamentDebate), Specification,  PeoplePoints
where Adjudicator.person = 13 and Person.id = Frequent.person and Adjudicator.person = Person.id and Adjudicator.debate = Debate.id
and Specification.debate = Debate.id 
and exists 
(select * 
from University 
where University.id = Frequent.university and AjudicatorUni = Frequent.person and
(Specification.firstSpeaker = PeoplePoints.id or Specification.firstSpeaker = PeoplePoints.id))
