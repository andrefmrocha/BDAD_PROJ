select
  Person.id,
  Adjudicator.debate,
  Frequent.university as AjudicatorUni
from
  Adjudicator,
  (
    Person Natural
    Join Student
  ),
  Frequent,
  (
    Debate Natural
    Join TournamentDebate
  ) as AjudicatorDebate,
  PeoplePoints
where
  Adjudicator.person = 13
  and Person.id = Frequent.person
  and Adjudicator.person = Person.id
  and Adjudicator.debate = Debate.id
  and exists (
    select
      *
    from
      University,
      TournamentDebate,
      Specification
    where
      University.id = AjudicatorUni
      and TournamentDebate.id = AjudicatorDebate.id
      and Specification.debate = Debate.id
      and (
        Specification.firstSpeaker = PeoplePoints.id
        or Specification.secondSpeaker = PeoplePoints.id
      )
  )