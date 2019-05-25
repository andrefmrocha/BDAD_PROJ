.mode		columns
.headers	on
.nullvalue	NULL

select *
from Team
where Team.id = 21 or Team.id = 22 or Team.id = 23 or Team.id = 24;

INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",1,2,21,"1");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",3,5,22,"1");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",5,8,23,"1");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",7,11,24,"1");

select *
from Team
where Team.id = 21 or Team.id = 22 or Team.id = 23 or Team.id = 24;