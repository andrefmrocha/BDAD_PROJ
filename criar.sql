-- Fazer assertion temporais, numero de equipas do torneio => numero de debate, constituicao das equipas

DROP TABLE IF EXISTS Person;

CREATE TABLE Person (
    id			INT	 PRIMARY KEY,
    birthDate	DATE NOT NULL,
    address		TEXT NOT NULL,
    contact		INT	 NOT NULL UNIQUE,
    name		TEXT NOT NULL

) WITHOUT ROWID;

DROP TABLE IF EXISTS Student;

CREATE TABLE Student(
    id				INT  REFERENCES Person(id) ON DELETE SET NULL ON UPDATE CASCADE,
    studentCycle	TEXT NOT NULL,
    studentNumber	TEXT NOT NULL UNIQUE,

    PRIMARY KEY(id)
) WITHOUT ROWID;

DROP TABLE IF EXISTS Alumni;

CREATE TABLE Alumni(
    id				INT	 REFERENCES Person(id) ON DELETE SET NULL ON UPDATE CASCADE,
    occupation		TEXT NOT NULL,
    studentCycle	TEXT NOT NULL,
    
    PRIMARY KEY(id)
) WITHOUT ROWID;

DROP TABLE IF EXISTS NonStudent;

CREATE TABLE NonStudent(
    id			INT	 REFERENCES Person(id) ON DELETE SET NULL ON UPDATE CASCADE,
    occupation	TEXT NOT NULL,
    
    PRIMARY KEY(id)
) WITHOUT ROWID;

DROP TABLE IF EXISTS University;

CREATE TABLE University (
    id				INT	 PRIMARY KEY,
    foundationDate	DATE NOT NULL,
    name			TEXT NOT NULL UNIQUE

) WITHOUT ROWID;

DROP TABLE IF EXISTS Frequent;

CREATE TABLE Frequent(
    person		INT	REFERENCES Person(id) ON DELETE SET NULL ON UPDATE CASCADE,
    university	INT	REFERENCES University(id) ON DELETE SET NULL ON UPDATE CASCADE,

    PRIMARY KEY(
        person,
        university
    )
) WITHOUT ROWID;


DROP TABLE IF EXISTS Society;

CREATE TABLE Society (
    id			INT  PRIMARY KEY,
    name		TEXT NOT NULL UNIQUE,
    university	INT  REFERENCES University(id) ON DELETE SET NULL ON UPDATE CASCADE
) WITHOUT ROWID;


DROP TABLE IF EXISTS Member;

CREATE TABLE Member(
    student			INT  REFERENCES Student(id) ON DELETE SET NULL ON UPDATE CASCADE,
    society			INT  REFERENCES Society(id) ON DELETE SET NULL ON UPDATE CASCADE,
    stature			TEXT NOT NULL
						 CHECK(stature == 'Associate' OR stature == 'Director' OR stature == 'SubDirector' OR 
						 	stature == 'Treasure' OR stature == 'BoardMember' OR stature == 'Director' OR stature == 'CenterDirector'),
    associateNumber	INT  NOT NULL,
	
	PRIMARY KEY(
		associateNumber,
		society
	)
) WITHOUT ROWID;


DROP TABLE IF EXISTS Associate;

CREATE TABLE Associate(
    alumni			INT REFERENCES Alumni(id) ON DELETE SET NULL ON UPDATE CASCADE,
    society			INT REFERENCES Society(id) ON DELETE SET NULL ON UPDATE CASCADE,
    associateNumber	INT NOT NULL,

	PRIMARY KEY(
		associateNumber,
		society
	)
) WITHOUT ROWID;


DROP TABLE IF EXISTS Team;

CREATE TABLE Team(
    id		INT  PRIMARY KEY,
    name	TEXT NOT NULL,
	person1	INT	 REFERENCES Person(id) ON DELETE SET NULL ON UPDATE CASCADE,
    person2	INT	 REFERENCES Person(id) ON DELETE SET NULL ON UPDATE CASCADE,
    points	INT
) WITHOUT ROWID;


DROP TABLE IF EXISTS Debate;

CREATE TABLE Debate(
    id			INT  PRIMARY KEY,
    location	TEXT NOT NULL,
    date		DATE NOT NULL,
	time 		TIME NOT NULL,
	UNIQUE (location, date, time)
) WITHOUT ROWID;

DROP TABLE IF EXISTS Tournament;

CREATE TABLE Tournament(
    id			INT  PRIMARY KEY,
    society		INT  REFERENCES Society(id) ON DELETE SET NULL ON UPDATE CASCADE,
    name		TEXT NOT NULL UNIQUE,
    official	BOOLEAN
) WITHOUT ROWID;



DROP TABLE IF EXISTS Round;

CREATE TABLE Round(
    id			INT  PRIMARY KEY,
    motion		TEXT NOT NULL UNIQUE,
    name		TEXT NOT NULL
					 CHECK(name == 'R1' OR name == 'R2' OR name == 'R3' OR name == 'R4' OR name == 'R5' OR name == 'SF' OR name == 'Final'),
    infoSlide	TEXT,
    tournament	INT  REFERENCES Tournament(id) ON DELETE SET NULL ON UPDATE CASCADE
) WITHOUT ROWID;


DROP TABLE IF EXISTS Adjudicator;

CREATE TABLE Adjudicator(
    id 		INT PRIMARY KEY,
    debate	INT REFERENCES Debate(id) ON DELETE SET NULL ON UPDATE CASCADE,
    person	INT REFERENCES Person(id) ON DELETE SET NULL ON UPDATE CASCADE,
) WITHOUT ROWID;


DROP TABLE IF EXISTS TournamentDebate;

CREATE TABLE TournamentDebate(
    id 					INT	 REFERENCES Debate(id) ON DELETE SET NULL ON UPDATE CASCADE,
    round 				INT	 REFERENCES Round(id) ON DELETE SET NULL ON UPDATE CASCADE,
    speakerPointsMean	REAL DEFAULT(50) 
							 CHECK (speakerPointsMean <= 100 AND speakerPointsMean >= 50),

    PRIMARY KEY(id)
) WITHOUT ROWID;


DROP TABLE IF EXISTS WeeklyDebate;

CREATE TABLE WeeklyDebate(
    id			INT  REFERENCES Debate(id) ON DELETE SET NULL ON UPDATE CASCADE,
    motion		TEXT NOT NULL UNIQUE,
    infoSlide	TEXT,

    PRIMARY KEY(id)
) WITHOUT ROWID;


DROP TABLE IF EXISTS Specification;

CREATE TABLE Specification(
    id				INT  PRIMARY KEY,
	classification	INT	 NOT NULL
						 CHECK(classification <= 4 AND classification >= 1),
    position		TEXT NOT NULL
						 CHECK(position == 'OG' OR position == 'OO' OR position == 'CG' OR position == 'CO'),
    firstSpeaker	INT  REFERENCES Person(id) ON DELETE SET NULL ON UPDATE CASCADE
						 CHECK(firstSpeaker == Team(person1) OR firstSpeaker == Team(person2)),
    secondSpeaker	INT  REFERENCES Person(id) ON DELETE SET NULL ON UPDATE CASCADE
						 CHECK(secondSpeaker == Team(person1) OR secondSpeaker == Team(person2)),
    team			INT  REFERENCES Team(id) ON DELETE SET NULL ON UPDATE CASCADE,
    debate			INT  REFERENCES Debate(id) ON DELETE SET NULL ON UPDATE CASCADE
	UNIQUE(position, debate),
	UNIQUE(classification, debate),
	UNIQUE(team, debate),
	UNIQUE(firstSpeaker, debate),
	UNIQUE(secondSpeaker, debate),
	CHECK(firstSpeaker <> secondSpeaker)
) WITHOUT ROWID;


DROP TABLE IF EXISTS SpeakerPoints;

CREATE TABLE SpeakerPoints(
    id		INT  PRIMARY KEY,
	type 	TEXT NOT NULL
				 CHECK(type == 'PM' OR type == 'DPM' OR type == 'LO' OR type == 'DLO' OR type == 'MG' OR type == 'GW' OR type == 'MO' OR type == 'OW'),
    points	INT  NOT NULL
				 DEFAULT(50)
				 CHECK (points <= 100 AND points >= 50),
    debate	INT  REFERENCES Debate(id) ON DELETE SET NULL ON UPDATE CASCADE,
	UNIQUE(type, debate)
) WITHOUT ROWID;



DROP TABLE IF EXISTS Organizer;

CREATE TABLE Organizer(
    id		INT PRIMARY KEY,
    society	INT REFERENCES Society(id) ON DELETE SET NULL ON UPDATE CASCADE,
    debate	INT REFERENCES Debate(id) ON DELETE SET NULL ON UPDATE CASCADE
) WITHOUT ROWID;


DROP TABLE IF EXISTS TournamentTeam;

CREATE TABLE TournamentTeam(
    tournament	INT  REFERENCES Tournament(id) ON DELETE SET NULL ON UPDATE CASCADE,
    team		INT  REFERENCES Team(id) ON DELETE SET NULL ON UPDATE CASCADE,
	
) WITHOUT ROWID;