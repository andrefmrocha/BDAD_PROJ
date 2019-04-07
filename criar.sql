-- Fazer assertion temporais, numero de equipas do torneio => numero de debate, constituicao das equipas

-- Person table
DROP TABLE IF EXISTS Person;

CREATE TABLE Person (
    id			INTEGER	 PRIMARY KEY,
    birthDate	DATE NOT NULL,
    address		TEXT NOT NULL,
    contact		INTEGER	 NOT NULL UNIQUE,
    name		TEXT NOT NULL

);


-- Student table
DROP TABLE IF EXISTS Student;

CREATE TABLE Student(
    id				INTEGER  REFERENCES Person(id) ON DELETE SET NULL ON UPDATE CASCADE,
    studentCycle	TEXT NOT NULL,
    studentNumber	TEXT NOT NULL UNIQUE,
    alumni          BOOLEAN,

    PRIMARY KEY(id)
);


-- NonStudent table
DROP TABLE IF EXISTS NonStudent;

CREATE TABLE NonStudent(
    id			INTEGER	 REFERENCES Person(id) ON DELETE SET NULL ON UPDATE CASCADE,
    occupation	TEXT NOT NULL,
    
    PRIMARY KEY(id)
);


-- University table
DROP TABLE IF EXISTS University;

CREATE TABLE University (
    id				INTEGER	 PRIMARY KEY,
    foundationDate	DATE NOT NULL,
    name			TEXT NOT NULL UNIQUE

);


-- Frequent table
DROP TABLE IF EXISTS Frequent;

CREATE TABLE Frequent(
    person		INTEGER	REFERENCES Person(id) ON DELETE SET NULL ON UPDATE CASCADE,
    university	INTEGER	REFERENCES University(id) ON DELETE SET NULL ON UPDATE CASCADE,
	-- TODO: VER ISTO
	-- CHECK(person.alumni = true),

    PRIMARY KEY(
        person,
        university
    )
) WITHOUT ROWID;


-- Society table
DROP TABLE IF EXISTS Society;

CREATE TABLE Society (
    id			INTEGER  PRIMARY KEY,
    name		TEXT NOT NULL UNIQUE,
    university	INTEGER  REFERENCES University(id) ON DELETE SET NULL ON UPDATE CASCADE
);


-- -- Member table
-- TODO: ver esta tentativa de unir associate e member
DROP TABLE IF EXISTS Member;

CREATE TABLE Member(
    person			INTEGER  REFERENCES Person(id) ON DELETE SET NULL ON UPDATE CASCADE,
    society			INTEGER  REFERENCES Society(id) ON DELETE SET NULL ON UPDATE CASCADE,
    stature			TEXT NOT NULL
						 CHECK(stature = 'Associate' OR stature = 'Director' OR stature = 'SubDirector' OR 
						 	stature = 'Treasure' OR stature = 'BoardMember' OR stature = 'Director' OR stature = 'CenterDirector'),
    associateNumber	INTEGER  NOT NULL,

	-- CHECK((member = Alumni(id) AND stature = 'Associate') OR member = Student(id)),
    -- Check with triggers if person belongs to uni of the society
	PRIMARY KEY(
		associateNumber,
		society
	)
) WITHOUT ROWID;

-- Team table
DROP TABLE IF EXISTS Team;

CREATE TABLE Team(
    id		INTEGER  PRIMARY KEY,
    name	TEXT NOT NULL,
	person1	INTEGER	 REFERENCES Person(id) ON DELETE SET NULL ON UPDATE CASCADE,
    person2	INTEGER	 REFERENCES Person(id) ON DELETE SET NULL ON UPDATE CASCADE,
    points	INTEGER
	CHECK (points >= 0 AND points <= 15)
);


-- Debate table
DROP TABLE IF EXISTS Debate;

CREATE TABLE Debate(
    id			INTEGER  PRIMARY KEY,
    location	TEXT NOT NULL,
    date		DATE NOT NULL,
	time 		TIME NOT NULL,
	UNIQUE (location, date, time)
);


-- Tournament table
DROP TABLE IF EXISTS Tournament;

CREATE TABLE Tournament(
    id			INTEGER  PRIMARY KEY,
    society		INTEGER  REFERENCES Society(id) ON DELETE SET NULL ON UPDATE CASCADE,
    name		TEXT NOT NULL UNIQUE,
    official	BOOLEAN
);


-- Round table
DROP TABLE IF EXISTS Round;

CREATE TABLE Round(
    id			INTEGER  PRIMARY KEY,
    motion		TEXT NOT NULL UNIQUE,
    name		TEXT NOT NULL
					 CHECK(name = 'R1' OR name = 'R2' OR name = 'R3' OR name = 'R4' OR name = 'R5' OR name = 'SemiFinal' OR name = 'Final'),
    infoSlide	TEXT,
    tournament	INTEGER  REFERENCES Tournament(id) ON DELETE SET NULL ON UPDATE CASCADE
);


-- Adjudicator table
DROP TABLE IF EXISTS Adjudicator;

CREATE TABLE Adjudicator(
    debate	INTEGER REFERENCES Debate(id) ON DELETE SET NULL ON UPDATE CASCADE,
    person	INTEGER REFERENCES Person(id) ON DELETE SET NULL ON UPDATE CASCADE,
    PRIMARY KEY(
        debate,
        person
    )
);


-- TournamentDebate table
DROP TABLE IF EXISTS TournamentDebate;

CREATE TABLE TournamentDebate(
    id 					INTEGER	 REFERENCES Debate(id) ON DELETE SET NULL ON UPDATE CASCADE,
    round 				INTEGER	 REFERENCES Round(id) ON DELETE SET NULL ON UPDATE CASCADE,
    speakerPointsMean	REAL DEFAULT(50) 
							 CHECK (speakerPointsMean <= 100 AND speakerPointsMean >= 50),
	-- TODO: fazer check to speakerPointsMean  
	OGSpeakerPoints		INTEGER	 REFERENCES SpeakerPoints(id) ON DELETE SET NULL ON UPDATE CASCADE,
	OOSpeakerPoints		INTEGER	 REFERENCES SpeakerPoints(id) ON DELETE SET NULL ON UPDATE CASCADE,
	CGSpeakerPoints		INTEGER	 REFERENCES SpeakerPoints(id) ON DELETE SET NULL ON UPDATE CASCADE,
	COSpeakerPoints		INTEGER	 REFERENCES SpeakerPoints(id) ON DELETE SET NULL ON UPDATE CASCADE,

    PRIMARY KEY(id)
);


-- WeeklyDebate table
DROP TABLE IF EXISTS WeeklyDebate;

CREATE TABLE WeeklyDebate(
    debate      INTEGER REFERENCES Debate(id) ON DELETE SET NULL ON UPDATE CASCADE,
    motion		TEXT	NOT NULL,
    infoSlide	TEXT,	
	-- Ver como por não nulo
    organizer	INTEGER REFERENCES Society(id) ON DELETE SET NULL ON UPDATE CASCADE,


    PRIMARY KEY(debate)
);


-- Specification table
DROP TABLE IF EXISTS Specification;

CREATE TABLE Specification(
    id				INTEGER  PRIMARY KEY,
	classification	INTEGER	 NOT NULL
						 CHECK(classification <= 4 AND classification >= 1),
    position		TEXT NOT NULL
						 CHECK(position = 'OG' OR position = 'OO' OR position = 'CG' OR position = 'CO'),
    firstSpeaker	INTEGER  REFERENCES Person(id) ON DELETE SET NULL ON UPDATE CASCADE,
    secondSpeaker	INTEGER  REFERENCES Person(id) ON DELETE SET NULL ON UPDATE CASCADE,
    team			INTEGER  REFERENCES Team(id) ON DELETE SET NULL ON UPDATE CASCADE,
    debate			INTEGER  REFERENCES Debate(id) ON DELETE SET NULL ON UPDATE CASCADE,
	UNIQUE(position, debate),
	UNIQUE(classification, debate),
	UNIQUE(team, debate),
	UNIQUE(firstSpeaker, debate),
	UNIQUE(secondSpeaker, debate),
	CHECK(firstSpeaker <> secondSpeaker)
);


-- SpeakerPoints table
DROP TABLE IF EXISTS SpeakerPoints;

CREATE TABLE SpeakerPoints(
    id					INTEGER  PRIMARY KEY,
	firstSpeakerPoints	INTEGER  NOT NULL
								 DEFAULT(50)
								 CHECK (firstSpeakerPoints <= 100 AND firstSpeakerPoints >= 50),
	secondSpeakerPoints	INTEGER  NOT NULL
								 DEFAULT(50)
								 CHECK (secondSpeakerPoints <= 100 AND secondSpeakerPoints >= 50),
	UNIQUE(firstSpeakerPoints, secondSpeakerPoints)
);

-- Performance table
DROP TABLE IF EXISTS Performance;

CREATE TABLE Performance(
    team			INTEGER	REFERENCES Team(id) ON DELETE SET NULL ON UPDATE CASCADE,
    speakerpoints	INTEGER	REFERENCES SpeakerPoints(id) ON DELETE SET NULL ON UPDATE CASCADE,

    PRIMARY KEY(
        team,
        speakerpoints
    )
) WITHOUT ROWID;


-- TournamentTeam table
DROP TABLE IF EXISTS TournamentTeam;

CREATE TABLE TournamentTeam(
    tournament	INTEGER  REFERENCES Tournament(id) ON DELETE SET NULL ON UPDATE CASCADE,
    team		INTEGER  REFERENCES Team(id) ON DELETE SET NULL ON UPDATE CASCADE,

    PRIMARY KEY (
        tournament,
        team
    )
	
) WITHOUT ROWID;