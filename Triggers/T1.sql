CREATE TRIGGER DerivedTeamPoints
AFTER INSERT ON Specification
FOR EACH ROW
BEGIN
    UPDATE Team
    SET points = (Team.points + 4 - New.classification)
    WHERE Team.id = New.team;
END;