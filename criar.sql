DROP TABLE IF EXISTS Person;


CREATE TABLE Person (
    id  INT PRIMARY KEY,
    birthDate   DATE NOT NULL,
    address     TEXT NOT NULL,
    contact     INTEGER NOT NULL,
    name        TEXT NOT NULL

);

DROP TABLE IF EXISTS Student;

CREATE TABLE Student(
    id INT  REFERENCES Person(id) ON DELETE SET NULL ON UPDATE CASCADE,
    studentCycle TEXT NOT NULL,
    studentNumber TEXT NOT NULL,


    PRIMARY KEY(
        id
    )

);

DROP TABLE IF EXISTS Alumni;

CREATE TABLE Alumni(
    id INT  REFERENCES Person(id) ON DELETE SET NULL ON UPDATE CASCADE,
    occupation TEXT NOT NULL,
    studentCycle TEXT NOT NULL,
    

    PRIMARY KEY(
        id
    )
);

DROP TABLE IF EXISTS NonStudent;

CREATE TABLE NonStudent(
    id INT  REFERENCES Person(id) ON DELETE SET NULL ON UPDATE CASCADE,
    occupation TEXT NOT NULL,
    

    PRIMARY KEY(
        id
    )
);

DROP TABLE IF EXISTS University;

CREATE TABLE University (
    id  INT PRIMARY KEY,
    foundationDate   DATE NOT NULL,
    name        TEXT NOT NULL

);

DROP TABLE IF EXISTS Frequent;

CREATE TABLE Frequent(
    person INT  REFERENCES Person(id) ON DELETE SET NULL ON UPDATE CASCADE,
    university INT  REFERENCES University(id) ON DELETE SET NULL ON UPDATE CASCADE,
    

    PRIMARY KEY(
        person,
        university
    )
);


DROP TABLE IF EXISTS Society;

CREATE TABLE Society (
    id INT PRIMARY KEY,
    name TEXT NOT NULL,
    university INT  REFERENCES University(id) ON DELETE SET NULL ON UPDATE CASCADE
);


DROP TABLE IF EXISTS Member;

CREATE TABLE Member(
    student INT  REFERENCES Student(id) ON DELETE SET NULL ON UPDATE CASCADE,
    society INT  REFERENCES Society(id) ON DELETE SET NULL ON UPDATE CASCADE,
    stature TEXT NOT NULL,
    associateNumber INT PRIMARY KEY
);


DROP TABLE IF EXISTS Associate;

CREATE TABLE Associate(
    alumni INT  REFERENCES Alumni(id) ON DELETE SET NULL ON UPDATE CASCADE,
    society INT  REFERENCES Society(id) ON DELETE SET NULL ON UPDATE CASCADE,
    associateNumber INT PRIMARY KEY
);


DROP TABLE IF EXISTS Team;

CREATE TABLE Team(
    id INT PRIMARY KEY,
    name TEXT NOT NULL,
    points INT
);



DROP TABLE IF EXISTS Participate;

CREATE TABLE Participate(
    id INT PRIMARY KEY,
    team INT REFERENCES Team(id) ON DELETE SET NULL ON UPDATE CASCADE,
    person INT REFERENCES Person(id) ON DELETE SET NULL ON UPDATE CASCADE,
    points INT
);

DROP TABLE IF EXISTS Debate;

CREATE TABLE Debate(
    id INT PRIMARY KEY,
    location TEXT NOT NULL,
    date DATE
);

DROP TABLE IF EXISTS Tournament;

CREATE TABLE Tournament(
    id INT PRIMARY KEY,
    society INT  REFERENCES Society(id) ON DELETE SET NULL ON UPDATE CASCADE,
    name TEXT NOT NULL,
    official BOOLEAN
);



DROP TABLE IF EXISTS Round;

CREATE TABLE Round(
    id INT PRIMARY KEY,
    motion TEXT NOT NULL,
    name TEXT NOT NULL,
    tournament INT  REFERENCES Tournament(id) ON DELETE SET NULL ON UPDATE CASCADE
);


DROP TABLE IF EXISTS Adjudicator;

CREATE TABLE Adjudicator(
    id INT PRIMARY KEY,
    debate INT REFERENCES Debate(id) ON DELETE SET NULL ON UPDATE CASCADE,
    person INT REFERENCES Person(id) ON DELETE SET NULL ON UPDATE CASCADE,
    points INT
);


DROP TABLE IF EXISTS TournamentDebate;

CREATE TABLE TournamentDebate(
    id INT  REFERENCES Debate(id) ON DELETE SET NULL ON UPDATE CASCADE,
    round INT REFERENCES Round(id) ON DELETE SET NULL ON UPDATE CASCADE,
    speakerPointsMean INT,

    PRIMARY KEY(
        id
    )
);


DROP TABLE IF EXISTS WeeklyDebate;

CREATE TABLE WeeklyDebate(
    id INT  REFERENCES Debate(id) ON DELETE SET NULL ON UPDATE CASCADE,
    motion TEXT NOT NULL,
    infoSlide TEXT NOT NULL,

    PRIMARY KEY(
        id
    )
);


DROP TABLE IF EXISTS Specification;

CREATE TABLE Specification(
    id INT PRIMARY KEY,
    position TEXT NOT NULL,
    firstSpeaker INT  REFERENCES Person(id) ON DELETE SET NULL ON UPDATE CASCADE,
    secondSpeaker INT  REFERENCES Person(id) ON DELETE SET NULL ON UPDATE CASCADE,
    team INT  REFERENCES Team(id) ON DELETE SET NULL ON UPDATE CASCADE,
    debate INT  REFERENCES Debate(id) ON DELETE SET NULL ON UPDATE CASCADE
);


DROP TABLE IF EXISTS SpeakerPoints;

CREATE TABLE SpeakerPoints(
    id INT PRIMARY KEY,
    points INT NOT NULL,
    debate INT  REFERENCES Debate(id) ON DELETE SET NULL ON UPDATE CASCADE
);



DROP TABLE IF EXISTS Organizer;

CREATE TABLE Organizer(
    id INT PRIMARY KEY,
    society INT  REFERENCES Society(id) ON DELETE SET NULL ON UPDATE CASCADE,
    debate INT  REFERENCES Debate(id) ON DELETE SET NULL ON UPDATE CASCADE
);


DROP TABLE IF EXISTS TournamentTeam;

CREATE TABLE TournamentTeam(
    tournament INT  REFERENCES Tournament(id) ON DELETE SET NULL ON UPDATE CASCADE,
    team INT  REFERENCES Team(id) ON DELETE SET NULL ON UPDATE CASCADE
);