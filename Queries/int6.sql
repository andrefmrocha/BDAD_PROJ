SELECT
    CASE
      when Specification.position LIKE 'O%'
         then 'Oppening'
        when Specification.position LIKE 'C%'
         then 'Closing'
    END
      AS "Half",
      Round.id, Round.name, Round.motion, avg(Specification.classification)
FROM Round JOIN Tournament JOIN TournamentDebate JOIN Debate JOIN Specification
WHERE Round.tournament = Tournament.id and -- Natural Join Round - Tournament
      TournamentDebate.round = Round.id and -- Natural Join TournamentDebate - Round
      Debate.id = TournamentDebate.id and  -- Natural Join Debate - TournamentDebate
      Specification.debate = Debate.id and -- Natural Join Specification - Debate
      Tournament.name = 'V Tornadu' -- Choose Tournament here
GROUP BY 
    Round.id,
    CASE
      when Specification.position LIKE 'O%'
         then 'Oppening'
        when Specification.position LIKE 'C%'
         then 'Closing'
    END;