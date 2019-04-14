	PRAGMA foreign_keys = ON;
	-- Person table
	DROP TABLE IF EXISTS Person;

	CREATE TABLE Person (
		id			INTEGER	 PRIMARY KEY,
		birthDate	DATE NOT NULL,
		address		TEXT NOT NULL,
		contact		INTEGER	 NOT NULL UNIQUE
					CHECK((contact >= 910000000 AND contact <= 939999999) OR (contact >= 960000000 AND contact <= 969999999)),
		name		TEXT NOT NULL

	);


	-- Student table
	DROP TABLE IF EXISTS Student;

	CREATE TABLE Student(
		id				INTEGER REFERENCES Person(id) ON DELETE CASCADE ON UPDATE CASCADE
						NOT NULL,
		alumni          BOOLEAN NOT NULL, -- TODO ver isto

		PRIMARY KEY(id)
	);


	-- NonStudent table
	DROP TABLE IF EXISTS NonStudent;

	CREATE TABLE NonStudent(
		id			INTEGER	 REFERENCES Person(id) ON DELETE CASCADE ON UPDATE CASCADE
							 NOT NULL,
		occupation	TEXT,
		
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
		person			INTEGER	REFERENCES Student(id) ON DELETE CASCADE ON UPDATE CASCADE
						NOT NULL,
		university		INTEGER	REFERENCES University(id) ON DELETE CASCADE ON UPDATE CASCADE
						NOT NULL,
		studentNumber	INTEGER NOT NULL,
		-- TODO: VER ISTO
		-- CHECK(person.alumni = true),
		UNIQUE (university, studentNumber),

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
		university	INTEGER NOT NULL 
							REFERENCES University(id) ON DELETE CASCADE ON UPDATE CASCADE
	);


	-- -- Member table
	DROP TABLE IF EXISTS Member;

	CREATE TABLE Member(
		person			INTEGER NOT NULL 
								REFERENCES Student(id) ON DELETE CASCADE ON UPDATE CASCADE,
		society			INTEGER REFERENCES Society(id) ON DELETE CASCADE ON UPDATE CASCADE
						NOT NULL,
		stature			TEXT NOT NULL
							CHECK(stature = 'Associate' OR stature = 'Director' OR stature = 'SubDirector' OR 
								stature = 'Treasure' OR stature = 'BoardMember' OR stature = 'Director' OR stature = 'CenterDirector'),
		associateNumber	INTEGER NOT NULL,

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
		person1	INTEGER	NOT NULL 
						REFERENCES Person(id) ON DELETE CASCADE ON UPDATE CASCADE,
		person2	INTEGER	NOT NULL
						REFERENCES Person(id) ON DELETE CASCADE ON UPDATE CASCADE,
		points	INTEGER DEFAULT(0)
						CHECK (points >= 0 AND points <= 15)
						NOT NULL
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
		id			INTEGER PRIMARY KEY,
		society		INTEGER NOT NULL
							REFERENCES Society(id) ON DELETE CASCADE ON UPDATE CASCADE,
		name		TEXT NOT NULL UNIQUE,
		official	BOOLEAN NOT NULL
	);


	-- Round table
	DROP TABLE IF EXISTS Round;

	CREATE TABLE Round(
		id			INTEGER  PRIMARY KEY,
		motion		TEXT NOT NULL UNIQUE,
		name		TEXT NOT NULL
						CHECK(name = 'R1' OR name = 'R2' OR name = 'R3' OR name = 'R4' OR name = 'R5' OR name = 'SemiFinal' OR name = 'Final'),
		infoSlide	TEXT,
		tournament	INTEGER NOT NULL
							REFERENCES Tournament(id) ON DELETE CASCADE ON UPDATE CASCADE,
		UNIQUE(tournament, name)
	);


	-- Adjudicator table
	DROP TABLE IF EXISTS Adjudicator;

	CREATE TABLE Adjudicator(
		debate	INTEGER REFERENCES Debate(id) ON DELETE CASCADE ON UPDATE CASCADE
				NOT NULL,
		person	INTEGER REFERENCES Person(id) ON DELETE CASCADE ON UPDATE CASCADE
				NOT NULL,
		PRIMARY KEY(
			debate,
			person
		)
	);


	-- TournamentDebate table
	DROP TABLE IF EXISTS TournamentDebate;

	CREATE TABLE TournamentDebate(
		id 					INTEGER	REFERENCES Debate(id) ON DELETE CASCADE ON UPDATE CASCADE
							NOT NULL,
		round 				INTEGER	NOT NULL
									REFERENCES Round(id) ON DELETE CASCADE ON UPDATE CASCADE,
		speakerPointsMean	REAL	DEFAULT(50)
									CHECK (speakerPointsMean <= 100 AND speakerPointsMean >= 50)
									NOT NULL,
		PMSpeakerPoints		INTEGER	DEFAULT(50) 
									CHECK (speakerPointsMean <= 100 AND speakerPointsMean >= 50)
									NOT NULL,
		DPMSpeakerPoints	INTEGER	DEFAULT(50) 
									CHECK (speakerPointsMean <= 100 AND speakerPointsMean >= 50)
									NOT NULL,
		LOSpeakerPoints		INTEGER	DEFAULT(50) 
									CHECK (speakerPointsMean <= 100 AND speakerPointsMean >= 50)
									NOT NULL,
		DLOSpeakerPoints	INTEGER	DEFAULT(50) 
									CHECK (speakerPointsMean <= 100 AND speakerPointsMean >= 50)
									NOT NULL,
		MGSpeakerPoints		INTEGER	DEFAULT(50) 
									CHECK (speakerPointsMean <= 100 AND speakerPointsMean >= 50)
									NOT NULL,
		GWSpeakerPoints		INTEGER	DEFAULT(50) 
									CHECK (speakerPointsMean <= 100 AND speakerPointsMean >= 50)
									NOT NULL,
		MOSpeakerPoints		INTEGER	DEFAULT(50) 
									CHECK (speakerPointsMean <= 100 AND speakerPointsMean >= 50)
									NOT NULL,
		OWSpeakerPoints 	INTEGER	DEFAULT(50) 
									CHECK (speakerPointsMean <= 100 AND speakerPointsMean >= 50)
									NOT NULL,
		CHECK(speakerPointsMean = (PMSpeakerPoints + DPMSpeakerPoints + LOSpeakerPoints + DLOSpeakerPoints + 
									MGSpeakerPoints + GWSpeakerPoints + MOSpeakerPoints + OWSpeakerPoints) / 8.0),
		PRIMARY KEY(id)
	);


	-- WeeklyDebate table
	DROP TABLE IF EXISTS WeeklyDebate;

	CREATE TABLE WeeklyDebate(
		id			INTEGER REFERENCES Debate(id) ON DELETE CASCADE ON UPDATE CASCADE
					NOT NULL,
		motion		TEXT NOT NULL,
		infoSlide	TEXT,	
		organizer	INTEGER NOT NULL
							REFERENCES Society(id) ON DELETE CASCADE ON UPDATE CASCADE,

		PRIMARY KEY(id)
	);


	-- Specification table
	DROP TABLE IF EXISTS Specification;

	CREATE TABLE Specification(
		id				INTEGER  PRIMARY KEY,
		classification	INTEGER	 NOT NULL
							CHECK(classification <= 4 AND classification >= 1),
		position		TEXT NOT NULL
							CHECK(position = 'OG' OR position = 'OO' OR position = 'CG' OR position = 'CO'),
		firstSpeaker	INTEGER NOT NULL
								REFERENCES Person(id) ON DELETE CASCADE ON UPDATE CASCADE,
		secondSpeaker	INTEGER NOT NULL
								REFERENCES Person(id) ON DELETE CASCADE ON UPDATE CASCADE,
		team			INTEGER NOT NULL
								REFERENCES Team(id) ON DELETE CASCADE ON UPDATE CASCADE,
		debate			INTEGER NOT NULL
								REFERENCES Debate(id) ON DELETE CASCADE ON UPDATE CASCADE,
		UNIQUE(position, debate),
		UNIQUE(classification, debate),
		UNIQUE(team, debate),
		UNIQUE(firstSpeaker, debate),
		UNIQUE(secondSpeaker, debate),
		CHECK(firstSpeaker <> secondSpeaker)
	);

	-- TournamentTeam table
	DROP TABLE IF EXISTS TournamentTeam;

	CREATE TABLE TournamentTeam(
		tournament	INTEGER NOT NULL
							REFERENCES Tournament(id) ON DELETE CASCADE ON UPDATE CASCADE,
		team		INTEGER NOT NULL
							REFERENCES Team(id) ON DELETE CASCADE ON UPDATE CASCADE,

		PRIMARY KEY (
			tournament,
			team
		)
		
	) WITHOUT ROWID;
