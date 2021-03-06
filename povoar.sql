/*
Composição da Database:
 x	- 10 Universidades
 x	- 8 Sociedades - uni 3 e 9 não têm sociedade
 x	- 3 Torneios - 2 oficiais (Distrital e Tornadu) e 1 open todos de 16 equipas
 x	- 14 Rondas - 7 * 3
 x	- 46 DebatesTorneio - (4 (16 equipas) * 5 (rondas iniciais) + 2 * 1 (Semifinais) + 1 (final) ) * 3 (torneios)
 x	- 3 DebatesRegulares
 x	- 100 Debates
 x	- 46 Teams
 x	- 70 Pessoas - 40 estudantes +  15 alumni + 15 nonstudent
 x	- 63 Frequent - 55 normais e 1, 8, ... (7 em 7 < 55 ) duas unis 
 x	- 40 Member
 x	- 350 Adjudicatos - 25 debates de 2, 25 de 3, 25 de 4 e 25 de 5
 x 	- 400 Specification
 x	- 48 TournamentTeam (3 torneios * 16 equipas cada torneio)

*/

-- Person
INSERT INTO Person (birthDate,address,contact,name) VALUES ("14-05-96","P.O. Box 134, 2408 Non Avenue","962747892","Quinlan Hall");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("03-04-94","P.O. Box 610, 8290 Amet Avenue","919537065","Nehru Avery");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("15-07-00","Ap #376-3349 Posuere Avenue","914790656","Myles Dillon");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("29-12-00","Ap #433-8548 Aliquet Av.","914899198","Howard Mcguire");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("17-07-92","P.O. Box 688, 1777 Donec Avenue","917304632","Lysandra Blackburn");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("01-09-90","Ap #693-8303 Rhoncus. St.","929987020","April Glass");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("09-06-00","Ap #506-8390 Vestibulum Ave","928669715","Abbot Sanford");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("05-04-00","2609 Velit Street","963905116","Jolene Morgan");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("14-11-99","4574 Sem Street","914340466","Conan Hubbard");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("15-04-91","P.O. Box 492, 7590 Augue St.","917129222","Jena Nguyen");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("12-12-98","P.O. Box 129, 7888 Integer Ave","935628729","Ina Haley");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("30-11-91","Ap #632-2006 Senectus St.","921046934","Isaiah Nelson");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("26-11-96","Ap #480-4543 Ullamcorper Rd.","939305612","Uta George");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("15-05-94","7181 Dictum Rd.","924375437","Holly Harris");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("28-10-98","Ap #557-7016 Nunc Avenue","929390586","Chava Carey");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("24-04-00","Ap #620-1087 Mauris St.","917317670","Uriah Shelton");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("03-12-97","Ap #467-2835 Dolor Rd.","964094750","Gil Macias");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("09-05-91","P.O. Box 206, 3945 Fringilla Rd.","938567083","Walker Black");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("09-09-93","Ap #403-8532 Odio St.","929501244","Giselle Maynard");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("31-10-97","183-9294 Lobortis St.","934331467","Kiara Alvarado");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("11-01-98","P.O. Box 364, 9757 Tortor Road","919953062","Shafira Richardson");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("16-10-95","Ap #947-1765 Pharetra Rd.","910835235","Clarke Shannon");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("29-09-95","199-9166 Eget Road","963945990","Sydney Craft");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("17-04-92","431-9192 Vestibulum Street","921315075","Xanthus Gordon");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("03-06-98","P.O. Box 915, 4184 Posuere Avenue","934758943","Denton Bailey");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("03-07-91","1265 Iaculis Avenue","960254534","Cameron Goodman");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("19-02-91","678-6180 Posuere Ave","938814391","Imelda Brewer");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("31-05-97","4558 Consectetuer, Road","969503152","Tara Morton");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("23-06-96","780-8450 Arcu. Street","917387798","Jayme Dawson");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("24-06-94","P.O. Box 158, 9012 Orci. Street","933095708","Jerry Woodward");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("01-11-93","Ap #898-7015 Proin Rd.","939763461","Yoshio Sanford");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("23-04-99","9319 In Rd.","967739508","Caldwell Maldonado");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("07-12-96","Ap #571-6694 Venenatis Rd.","961609113","Honorato Mcmahon");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("13-11-95","Ap #451-6177 Sagittis. Ave","923474233","Shad Joyner");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("02-03-96","6942 Penatibus St.","921703953","Barclay Payne");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("30-04-97","4406 Nunc Ave","934978256","Ignacia Valdez");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("29-05-98","235-3104 Fringilla Ave","935371025","Veda Bishop");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("26-01-96","P.O. Box 277, 4901 Malesuada Rd.","964269287","Ignatius Beard");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("27-11-98","Ap #924-5356 Facilisis Av.","966147557","Leah Mcgee");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("26-07-97","8147 Arcu. Ave","965590113","Joseph Blair");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("10-02-97","P.O. Box 980, 6101 Tempor Av.","923490760","Chaim Rich");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("02-02-92","421 Auctor Road","960647130","Paki Stein");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("06-04-93","1522 Semper St.","924753605","Quincy Harrington");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("17-07-00","Ap #753-4734 Erat Av.","937887330","Kalia Larsen");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("05-08-92","Ap #496-737 Ante Ave","914724296","Amanda Wyatt");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("12-02-90","441-4373 Tempus St.","920629459","Shoshana Owens");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("05-12-00","505-5274 Enim Street","921519652","Uma Neal");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("25-09-94","P.O. Box 266, 7525 Mauris Avenue","920488100","James Whitley");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("09-08-00","7837 Maecenas Rd.","924735660","Benedict Castro");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("08-07-98","Ap #695-5682 Mauris Av.","966187669","Joshua Stark");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("08-04-99","Ap #654-3457 Dictum Rd.","925558947","Wayne Hardy");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("23-01-97","Ap #779-3510 Id Road","933202306","Edan Sharpe");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("05-05-92","P.O. Box 612, 7262 Accumsan Street","931718658","Harper Rodriquez");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("15-01-93","P.O. Box 304, 1975 Magna. St.","921223123","Jeremy Everett");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("08-11-99","7494 Dictum Rd.","920166332","Ezra Woodward");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("24-10-96","P.O. Box 358, 1740 Varius St.","920346346","Brittany Whitaker");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("13-03-91","9763 Ligula. Road","931609925","Carter Pace");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("08-02-90","P.O. Box 582, 3222 Sollicitudin Av.","961333487","Basil Chase");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("22-05-96","P.O. Box 689, 1520 Bibendum Road","918975525","Scott Clements");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("10-03-92","3066 Est Av.","935715926","Kristen Hays");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("28-01-97","144-3808 Curabitur Rd.","933706423","Nina Pollard");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("24-10-00","943-5303 Euismod St.","910085001","Zenaida Burke");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("08-09-94","Ap #427-2901 Dictum St.","927462828","Caryn Ratliff");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("30-04-92","P.O. Box 373, 8221 Lorem, Ave","969950837","Paula Zamora");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("19-10-96","701 Tellus, Rd.","915234549","Hu Mendoza");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("29-04-96","9698 Pellentesque Av.","910776202","Penelope Buckner");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("06-03-97","804-2614 Cursus. St.","925363586","Samson Soto");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("24-03-96","P.O. Box 222, 2814 Nunc St.","932828327","Giselle Patrick");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("14-12-91","Ap #533-2360 Blandit St.","964978083","Shelby Hull");
INSERT INTO Person (birthDate,address,contact,name) VALUES ("06-01-96","3092 Augue Rd.","929560751","Zachary Sanders");


-- Student
-- Cursos: MIEMM|ANIME|MECC|MEMG|MIEA|GEOGR|MIEIC|MMUS|MMIPA|SIBA|PDPSI|MIARQ|MHMR|MPPU|MLPMC|MBIO|FRC|MCOB|MIMED
-- NonAlumni : 40
INSERT INTO Student (id,alumni) VALUES (1,"0");
INSERT INTO Student (id,alumni) VALUES (2,"0");
INSERT INTO Student (id,alumni) VALUES (3,"0");
INSERT INTO Student (id,alumni) VALUES (4,"0");
INSERT INTO Student (id,alumni) VALUES (5,"0");
INSERT INTO Student (id,alumni) VALUES (6,"0");
INSERT INTO Student (id,alumni) VALUES (7,"0");
INSERT INTO Student (id,alumni) VALUES (8,"0");
INSERT INTO Student (id,alumni) VALUES (9,"0");
INSERT INTO Student (id,alumni) VALUES (10,"0");
INSERT INTO Student (id,alumni) VALUES (11,"0");
INSERT INTO Student (id,alumni) VALUES (12,"0");
INSERT INTO Student (id,alumni) VALUES (13,"0");
INSERT INTO Student (id,alumni) VALUES (14,"0");
INSERT INTO Student (id,alumni) VALUES (15,"0");
INSERT INTO Student (id,alumni) VALUES (16,"0");
INSERT INTO Student (id,alumni) VALUES (17,"0");
INSERT INTO Student (id,alumni) VALUES (18,"0");
INSERT INTO Student (id,alumni) VALUES (19,"0");
INSERT INTO Student (id,alumni) VALUES (20,"0");
INSERT INTO Student (id,alumni) VALUES (21,"0");
INSERT INTO Student (id,alumni) VALUES (22,"0");
INSERT INTO Student (id,alumni) VALUES (23,"0");
INSERT INTO Student (id,alumni) VALUES (24,"0");
INSERT INTO Student (id,alumni) VALUES (25,"0");
INSERT INTO Student (id,alumni) VALUES (26,"0");
INSERT INTO Student (id,alumni) VALUES (27,"0");
INSERT INTO Student (id,alumni) VALUES (28,"0");
INSERT INTO Student (id,alumni) VALUES (29,"0");
INSERT INTO Student (id,alumni) VALUES (30,"0");
INSERT INTO Student (id,alumni) VALUES (31,"0");
INSERT INTO Student (id,alumni) VALUES (32,"0");
INSERT INTO Student (id,alumni) VALUES (33,"0");
INSERT INTO Student (id,alumni) VALUES (34,"0");
INSERT INTO Student (id,alumni) VALUES (35,"0");
INSERT INTO Student (id,alumni) VALUES (36,"0");
INSERT INTO Student (id,alumni) VALUES (37,"0");
INSERT INTO Student (id,alumni) VALUES (38,"0");
INSERT INTO Student (id,alumni) VALUES (39,"0");
INSERT INTO Student (id,alumni) VALUES (40,"0");

INSERT INTO Student (id,alumni) VALUES (65,"0");

-- Alumni : 15
INSERT INTO Student (id,alumni) VALUES (41,"1");
INSERT INTO Student (id,alumni) VALUES (42,"1");
INSERT INTO Student (id,alumni) VALUES (43,"1");
INSERT INTO Student (id,alumni) VALUES (44,"1");
INSERT INTO Student (id,alumni) VALUES (45,"1");
INSERT INTO Student (id,alumni) VALUES (46,"1");
INSERT INTO Student (id,alumni) VALUES (47,"1");
INSERT INTO Student (id,alumni) VALUES (48,"1");
INSERT INTO Student (id,alumni) VALUES (49,"1");
INSERT INTO Student (id,alumni) VALUES (50,"1");
INSERT INTO Student (id,alumni) VALUES (51,"1");
INSERT INTO Student (id,alumni) VALUES (52,"1");
INSERT INTO Student (id,alumni) VALUES (53,"1");
INSERT INTO Student (id,alumni) VALUES (54,"1");
INSERT INTO Student (id,alumni) VALUES (55,"1");



-- NonStudent
INSERT INTO NonStudent (id,occupation) VALUES (56,"Advertising");
INSERT INTO NonStudent (id,occupation) VALUES (57,"Customer Relations");
INSERT INTO NonStudent (id,occupation) VALUES (58,"Customer Relations");
INSERT INTO NonStudent (id,occupation) VALUES (59,"Payroll");
INSERT INTO NonStudent (id,occupation) VALUES (60,"Tech Support");
INSERT INTO NonStudent (id,occupation) VALUES (61,"Human Resources");
INSERT INTO NonStudent (id,occupation) VALUES (62,"Tech Support");
INSERT INTO NonStudent (id,occupation) VALUES (63,"Research and Development");
INSERT INTO NonStudent (id,occupation) VALUES (64,"Asset Management");
-- INSERT INTO NonStudent (id,occupation) VALUES (65,"Media Relations");
INSERT INTO NonStudent (id,occupation) VALUES (66,"Human Resources");
INSERT INTO NonStudent (id,occupation) VALUES (67,"Accounting");
INSERT INTO NonStudent (id,occupation) VALUES (68,"Public Relations");
INSERT INTO NonStudent (id,occupation) VALUES (69,"Payroll");
INSERT INTO NonStudent (id,occupation) VALUES (70,"Quality Assurance");


-- University
INSERT INTO University (name,foundationDate) VALUES ("Universidade Europeia de Lisboa","05-26-39");
INSERT INTO University (name,foundationDate) VALUES ("Escola Superior Artística do Porto","11-23-15");
INSERT INTO University (name,foundationDate) VALUES ("Escola Superior de Educação de João de Deus","08-27-20");
INSERT INTO University (name,foundationDate) VALUES ("Instituto Superior de Comunicação Empresarial","06-19-52");
INSERT INTO University (name,foundationDate) VALUES ("Universidade de Aveiro","02-03-65");
INSERT INTO University (name,foundationDate) VALUES ("Universidade do Porto","04-20-92");
INSERT INTO University (name,foundationDate) VALUES ("Universidade de Coimbra","08-12-97");
INSERT INTO University (name,foundationDate) VALUES ("Universidade Católica do Porto","10-03-88");
INSERT INTO University (name,foundationDate) VALUES ("Instituto Piaget","07-28-22");
INSERT INTO University (name,foundationDate) VALUES ("Instituto Superior da Maia","02-10-35");


-- Frequent
-- Students: 40
INSERT INTO Frequent (person,university,studentNumber) VALUES (1,10,201226201);
INSERT INTO Frequent (person,university,studentNumber) VALUES (2,3,201651738);
INSERT INTO Frequent (person,university,studentNumber) VALUES (3,1,201217532);
INSERT INTO Frequent (person,university,studentNumber) VALUES (4,4,201284407);
INSERT INTO Frequent (person,university,studentNumber) VALUES (5,5,201129268);
INSERT INTO Frequent (person,university,studentNumber) VALUES (6,7,201651787);
INSERT INTO Frequent (person,university,studentNumber) VALUES (7,9,201255161);
INSERT INTO Frequent (person,university,studentNumber) VALUES (8,7,201172817);
INSERT INTO Frequent (person,university,studentNumber) VALUES (9,3,201851553);
INSERT INTO Frequent (person,university,studentNumber) VALUES (10,9,201450677);
INSERT INTO Frequent (person,university,studentNumber) VALUES (11,6,201747860);
INSERT INTO Frequent (person,university,studentNumber) VALUES (12,5,201028854);
INSERT INTO Frequent (person,university,studentNumber) VALUES (13,4,201660525);
INSERT INTO Frequent (person,university,studentNumber) VALUES (14,5,201161519);
INSERT INTO Frequent (person,university,studentNumber) VALUES (15,1,201300647);
INSERT INTO Frequent (person,university,studentNumber) VALUES (16,3,201504621);
INSERT INTO Frequent (person,university,studentNumber) VALUES (17,5,201355831);
INSERT INTO Frequent (person,university,studentNumber) VALUES (18,9,201615236);
INSERT INTO Frequent (person,university,studentNumber) VALUES (19,2,201350297);
INSERT INTO Frequent (person,university,studentNumber) VALUES (20,2,201542239);
INSERT INTO Frequent (person,university,studentNumber) VALUES (21,7,201395190);
INSERT INTO Frequent (person,university,studentNumber) VALUES (22,2,201688894);
INSERT INTO Frequent (person,university,studentNumber) VALUES (23,9,201527880);
INSERT INTO Frequent (person,university,studentNumber) VALUES (24,3,201877420);
INSERT INTO Frequent (person,university,studentNumber) VALUES (25,3,201623072);
INSERT INTO Frequent (person,university,studentNumber) VALUES (26,3,201420831);
INSERT INTO Frequent (person,university,studentNumber) VALUES (27,9,201556768);
INSERT INTO Frequent (person,university,studentNumber) VALUES (28,6,201086186);
INSERT INTO Frequent (person,university,studentNumber) VALUES (29,5,201852273);
INSERT INTO Frequent (person,university,studentNumber) VALUES (30,10,201752942);
INSERT INTO Frequent (person,university,studentNumber) VALUES (31,8,201109700);
INSERT INTO Frequent (person,university,studentNumber) VALUES (32,7,201369060);
INSERT INTO Frequent (person,university,studentNumber) VALUES (33,4,201263865);
INSERT INTO Frequent (person,university,studentNumber) VALUES (34,5,201067134);
INSERT INTO Frequent (person,university,studentNumber) VALUES (35,7,201745603);
INSERT INTO Frequent (person,university,studentNumber) VALUES (36,4,201634210);
INSERT INTO Frequent (person,university,studentNumber) VALUES (37,9,201252800);
INSERT INTO Frequent (person,university,studentNumber) VALUES (38,6,201406039);
INSERT INTO Frequent (person,university,studentNumber) VALUES (39,7,201589366);
INSERT INTO Frequent (person,university,studentNumber) VALUES (40,5,201441614);
-- Alumni: 15
INSERT INTO Frequent (person,university,studentNumber) VALUES (41,2,200566697);
INSERT INTO Frequent (person,university,studentNumber) VALUES (42,1,200663019);
INSERT INTO Frequent (person,university,studentNumber) VALUES (43,8,201425442);
INSERT INTO Frequent (person,university,studentNumber) VALUES (44,2,201584465);
INSERT INTO Frequent (person,university,studentNumber) VALUES (45,9,200888036);
INSERT INTO Frequent (person,university,studentNumber) VALUES (46,10,200704066);
INSERT INTO Frequent (person,university,studentNumber) VALUES (47,8,200793038);
INSERT INTO Frequent (person,university,studentNumber) VALUES (48,9,200775149);
INSERT INTO Frequent (person,university,studentNumber) VALUES (49,8,201069578);
INSERT INTO Frequent (person,university,studentNumber) VALUES (50,6,200417902);
INSERT INTO Frequent (person,university,studentNumber) VALUES (51,6,200548122);
INSERT INTO Frequent (person,university,studentNumber) VALUES (52,6,200630057);
INSERT INTO Frequent (person,university,studentNumber) VALUES (53,3,200551970);
INSERT INTO Frequent (person,university,studentNumber) VALUES (54,6,201326035);
INSERT INTO Frequent (person,university,studentNumber) VALUES (55,9,200683238);
-- 2 Uni
INSERT INTO Frequent (person,university,studentNumber) VALUES (1,1,201704211);
INSERT INTO Frequent (person,university,studentNumber) VALUES (8,4,200502123);
INSERT INTO Frequent (person,university,studentNumber) VALUES (15,7,201612345);
INSERT INTO Frequent (person,university,studentNumber) VALUES (22,10,201706462);
INSERT INTO Frequent (person,university,studentNumber) VALUES (29,3,201706430);
INSERT INTO Frequent (person,university,studentNumber) VALUES (36,2,201406963);
INSERT INTO Frequent (person,university,studentNumber) VALUES (43,5,201111111);
INSERT INTO Frequent (person,university,studentNumber) VALUES (50,5,201737373);

-- Society
INSERT INTO Society (name,university) VALUES ("SdDUL",1);
INSERT INTO Society (name,university) VALUES ("SDESAP",2);
INSERT INTO Society (name,university) VALUES ("SDISCE",4);
INSERT INTO Society (name,university) VALUES ("SdDUA",5);
INSERT INTO Society (name,university) VALUES ("SdDUP",6);
INSERT INTO Society (name,university) VALUES ("SDUC",7);
INSERT INTO Society (name,university) VALUES ("SdDUCP",8);
INSERT INTO Society (name,university) VALUES ("SDISM",10);


-- Team
INSERT INTO Team (name,person1,person2,points) VALUES ("accumsan neque et nunc.",1,2,13);
INSERT INTO Team (name,person1,person2,points) VALUES ("id risus quis",3,4,2);
INSERT INTO Team (name,person1,person2,points) VALUES ("nunc sit",5,6,6);
INSERT INTO Team (name,person1,person2,points) VALUES ("Nullam ut",7,8,12);
INSERT INTO Team (name,person1,person2,points) VALUES ("senectus et",9,10,9);
INSERT INTO Team (name,person1,person2,points) VALUES ("Vivamus euismod urna.",11,12,4);
INSERT INTO Team (name,person1,person2,points) VALUES ("a,",13,14,14);
INSERT INTO Team (name,person1,person2,points) VALUES ("Vivamus sit amet risus.",15,16,10);
INSERT INTO Team (name,person1,person2,points) VALUES ("Nam",17,18,8);
INSERT INTO Team (name,person1,person2,points) VALUES ("arcu",19,20,2);
INSERT INTO Team (name,person1,person2,points) VALUES ("nibh enim,",21,22,5);
INSERT INTO Team (name,person1,person2,points) VALUES ("tincidunt.",23,24,8);
INSERT INTO Team (name,person1,person2,points) VALUES ("Integer in magna.",25,26,4);
INSERT INTO Team (name,person1,person2,points) VALUES ("Duis a mi fringilla",27,28,8);
INSERT INTO Team (name,person1,person2,points) VALUES ("et, commodo",29,30,15);
INSERT INTO Team (name,person1,person2,points) VALUES ("id sapien. Cras dolor",31,32,3);
INSERT INTO Team (name,person1,person2,points) VALUES ("est, mollis non,",33,34,15);
INSERT INTO Team (name,person1,person2,points) VALUES ("Suspendisse",35,36,2);
INSERT INTO Team (name,person1,person2,points) VALUES ("Suspendisse sagittis. Nullam vitae",37,38,15);
INSERT INTO Team (name,person1,person2,points) VALUES ("inceptos hymenaeos. Mauris ut",39,40,3);

INSERT INTO Team (name,person1,person2,points) VALUES ("Cras interdum. Nunc",1,2,0);
INSERT INTO Team (name,person1,person2,points) VALUES ("morbi tristique senectus",3,5,0);
INSERT INTO Team (name,person1,person2,points) VALUES ("est",5,8,0);
INSERT INTO Team (name,person1,person2,points) VALUES ("odio.",7,11,0);
INSERT INTO Team (name,person1,person2,points) VALUES ("placerat velit.",9,14,7);
INSERT INTO Team (name,person1,person2,points) VALUES ("blandit. Nam nulla magna,",11,17,4);
INSERT INTO Team (name,person1,person2,points) VALUES ("lacus.",13,20,6);
INSERT INTO Team (name,person1,person2,points) VALUES ("ornare tortor at risus.",15,23,9);
INSERT INTO Team (name,person1,person2,points) VALUES ("pede.",17,26,10);
INSERT INTO Team (name,person1,person2,points) VALUES ("Suspendisse aliquet, sem ut",19,29,0);
INSERT INTO Team (name,person1,person2,points) VALUES ("elit, dictum",21,32,0);
INSERT INTO Team (name,person1,person2,points) VALUES ("tristique pellentesque, tellus sem",23,35,3);

INSERT INTO `Team` (`name`,`person1`,`person2`,`points`) VALUES ("enim. Nunc",38,39,5);
INSERT INTO `Team` (`name`,`person1`,`person2`,`points`) VALUES ("gravida. Aliquam tincidunt,",40,41,7);
INSERT INTO `Team` (`name`,`person1`,`person2`,`points`) VALUES ("orci",42,43,15);
INSERT INTO `Team` (`name`,`person1`,`person2`,`points`) VALUES ("risus,",44,45,15);
INSERT INTO `Team` (`name`,`person1`,`person2`,`points`) VALUES ("luctus.",46,47,7);
INSERT INTO `Team` (`name`,`person1`,`person2`,`points`) VALUES ("aliquet, metus urna convallis",48,49,8);
INSERT INTO `Team` (`name`,`person1`,`person2`,`points`) VALUES ("eu nibh vulputate mauris",50,51,1);
INSERT INTO `Team` (`name`,`person1`,`person2`,`points`) VALUES ("Integer mollis. Integer tincidunt",52,53,9);
INSERT INTO `Team` (`name`,`person1`,`person2`,`points`) VALUES ("molestie tellus.",54,55,3);
INSERT INTO `Team` (`name`,`person1`,`person2`,`points`) VALUES ("In ornare",56,57,10);
INSERT INTO `Team` (`name`,`person1`,`person2`,`points`) VALUES ("pede.",58,59,14);
INSERT INTO `Team` (`name`,`person1`,`person2`,`points`) VALUES ("sed, facilisis vitae, orci.",60,61,6);
INSERT INTO `Team` (`name`,`person1`,`person2`,`points`) VALUES ("diam. Duis mi enim,",62,63,6);
INSERT INTO `Team` (`name`,`person1`,`person2`,`points`) VALUES ("aliquet nec,",64,65,1);
INSERT INTO `Team` (`name`,`person1`,`person2`,`points`) VALUES ("adipiscing non, luctus",66,67,2);
INSERT INTO `Team` (`name`,`person1`,`person2`,`points`) VALUES ("egestas hendrerit",68,69,13);

-- Member
-- stature: Associate|Director|SubDirector|Treasure|BoardMember|Director|CenterDirector

INSERT INTO Member (person,society,stature,associateNumber) VALUES (38,2,"Director",1);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (21,7,"BoardMember",2);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (55,4,"SubDirector",3);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (52,1,"SubDirector",4);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (33,7,"CenterDirector",5);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (15,2,"Director",6);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (33,1,"SubDirector",7);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (35,5,"SubDirector",8);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (45,7,"Treasure",9);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (43,4,"Director",10);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (16,5,"Associate",11);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (50,4,"Associate",12);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (42,5,"CenterDirector",13);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (27,5,"CenterDirector",14);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (22,1,"BoardMember",15);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (46,6,"Treasure",16);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (42,4,"Director",17);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (25,6,"CenterDirector",18);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (53,7,"Director",19);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (47,6,"Associate",20);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (31,6,"BoardMember",21);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (35,3,"Treasure",22);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (18,4,"Associate",23);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (18,8,"CenterDirector",24);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (52,2,"Associate",25);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (25,6,"Associate",26);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (38,8,"BoardMember",27);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (22,8,"Director",28);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (48,1,"SubDirector",29);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (52,8,"Associate",30);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (42,6,"Associate",31);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (40,1,"Treasure",32);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (24,6,"Director",33);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (28,7,"Director",34);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (54,6,"CenterDirector",35);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (34,1,"Treasure",36);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (53,8,"CenterDirector",37);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (50,3,"Treasure",38);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (24,4,"Associate",39);
INSERT INTO Member (person,society,stature,associateNumber) VALUES (48,1,"Associate",40);


-- Debate
INSERT INTO Debate (location,date,time) VALUES ("795-5054 Ante Rd.","02-02-14","1539198721");
INSERT INTO Debate (location,date,time) VALUES ("P.O. Box 940, 2551 Vivamus Rd.","01-11-14","1533110854");
INSERT INTO Debate (location,date,time) VALUES ("Ap #193-8526 Neque Av.","04-27-14","1543319039");
INSERT INTO Debate (location,date,time) VALUES ("P.O. Box 917, 5352 Dui, Avenue","08-11-14","1540830203");
INSERT INTO Debate (location,date,time) VALUES ("P.O. Box 881, 9871 Risus. Ave","11-09-16","1538655999");
INSERT INTO Debate (location,date,time) VALUES ("119-7294 Suspendisse Avenue","06-15-17","1567292619");
INSERT INTO Debate (location,date,time) VALUES ("P.O. Box 306, 4669 Elit Street","07-30-17","1545294119");
INSERT INTO Debate (location,date,time) VALUES ("2104 Magna. Avenue","01-12-18","1534551752");
INSERT INTO Debate (location,date,time) VALUES ("514-5519 Adipiscing Ave","06-29-16","1577017447");
INSERT INTO Debate (location,date,time) VALUES ("P.O. Box 192, 3236 Dis Rd.","05-23-17","1580707629");
INSERT INTO Debate (location,date,time) VALUES ("305-2901 Semper Rd.","12-19-15","1569837690");
INSERT INTO Debate (location,date,time) VALUES ("P.O. Box 809, 5303 Consequat Ave","10-11-17","1535431907");
INSERT INTO Debate (location,date,time) VALUES ("521-5121 Enim, St.","03-12-17","1570224955");
INSERT INTO Debate (location,date,time) VALUES ("Ap #957-3028 Fusce St.","08-23-18","1576467785");
INSERT INTO Debate (location,date,time) VALUES ("Ap #269-3436 Dui. St.","01-17-19","1545980418");
INSERT INTO Debate (location,date,time) VALUES ("Ap #898-6866 Id, Rd.","08-30-16","1579560530");
INSERT INTO Debate (location,date,time) VALUES ("341-1950 Est St.","06-20-17","1540021897");
INSERT INTO Debate (location,date,time) VALUES ("2954 In Avenue","11-29-16","1540971392");
INSERT INTO Debate (location,date,time) VALUES ("818-4671 Fringilla Av.","04-24-14","1541139265");
INSERT INTO Debate (location,date,time) VALUES ("P.O. Box 625, 6986 Mi. Rd.","02-01-17","1530330403");
INSERT INTO Debate (location,date,time) VALUES ("4585 Arcu Av.","10-05-15","1579069446");
INSERT INTO Debate (location,date,time) VALUES ("560-7047 A, Rd.","05-02-18","1544558825");
INSERT INTO Debate (location,date,time) VALUES ("P.O. Box 360, 5092 Risus Ave","06-12-16","1561595808");
INSERT INTO Debate (location,date,time) VALUES ("P.O. Box 502, 6817 Bibendum Av.","06-03-15","1529942048");
INSERT INTO Debate (location,date,time) VALUES ("1863 Nisi Ave","06-04-14","1575238122");
INSERT INTO Debate (location,date,time) VALUES ("Ap #214-5005 Cras Rd.","10-10-16","1541126559");
INSERT INTO Debate (location,date,time) VALUES ("1603 Ipsum Road","11-01-18","1559408802");
INSERT INTO Debate (location,date,time) VALUES ("469-2596 Pede. St.","06-06-16","1540540096");
INSERT INTO Debate (location,date,time) VALUES ("Ap #617-9894 Pede. Street","02-16-17","1577676476");
INSERT INTO Debate (location,date,time) VALUES ("P.O. Box 470, 612 Libero. St.","03-01-16","1530789850");
INSERT INTO Debate (location,date,time) VALUES ("881-9424 Tincidunt Avenue","09-20-15","1537745097");
INSERT INTO Debate (location,date,time) VALUES ("162-6955 Sed, Avenue","01-09-19","1581182664");
INSERT INTO Debate (location,date,time) VALUES ("Ap #210-7086 Sed Avenue","03-20-19","1563606373");
INSERT INTO Debate (location,date,time) VALUES ("674-6397 Aliquam Rd.","12-20-14","1564727122");
INSERT INTO Debate (location,date,time) VALUES ("874-5818 Dignissim Av.","09-17-14","1584398275");
INSERT INTO Debate (location,date,time) VALUES ("8045 Ligula St.","09-28-18","1569913810");
INSERT INTO Debate (location,date,time) VALUES ("Ap #861-2639 Nec Ave","06-18-16","1570978972");
INSERT INTO Debate (location,date,time) VALUES ("Ap #591-6811 Non, St.","12-25-15","1553314843");
INSERT INTO Debate (location,date,time) VALUES ("P.O. Box 223, 172 Vitae St.","08-12-18","1526141414");
INSERT INTO Debate (location,date,time) VALUES ("865-5835 Dis Road","02-07-16","1582065052");
INSERT INTO Debate (location,date,time) VALUES ("7393 Adipiscing Rd.","06-15-16","1527826525");
INSERT INTO Debate (location,date,time) VALUES ("313-1766 Ac Street","09-22-17","1570306880");
INSERT INTO Debate (location,date,time) VALUES ("P.O. Box 862, 5987 Nec, Avenue","05-17-14","1544634902");
INSERT INTO Debate (location,date,time) VALUES ("Ap #765-213 Ante St.","07-02-17","1525393377");
INSERT INTO Debate (location,date,time) VALUES ("Ap #563-3739 Egestas. Av.","02-07-15","1536010012");
INSERT INTO Debate (location,date,time) VALUES ("Ap #421-6086 Malesuada Ave","09-23-18","1554142437");
INSERT INTO Debate (location,date,time) VALUES ("Ap #173-2818 A St.","05-16-18","1524824963");
INSERT INTO Debate (location,date,time) VALUES ("117-8420 Vitae Ave","08-15-16","1538740820");
INSERT INTO Debate (location,date,time) VALUES ("6338 Suspendisse Avenue","11-25-15","1532968154");
INSERT INTO Debate (location,date,time) VALUES ("P.O. Box 114, 9129 Vivamus St.","08-22-16","1574541819");
INSERT INTO Debate (location,date,time) VALUES ("208-6937 Eu St.","06-08-16","1560891503");
INSERT INTO Debate (location,date,time) VALUES ("757-4602 Lacus. Rd.","09-28-14","1542162994");
INSERT INTO Debate (location,date,time) VALUES ("888-4405 Sollicitudin St.","03-04-14","1564839118");
INSERT INTO Debate (location,date,time) VALUES ("Ap #165-547 Non, Av.","04-22-17","1547965491");
INSERT INTO Debate (location,date,time) VALUES ("379-9275 Cursus Road","01-29-19","1563417068");
INSERT INTO Debate (location,date,time) VALUES ("P.O. Box 643, 4932 Lorem, St.","12-18-17","1541825100");
INSERT INTO Debate (location,date,time) VALUES ("721-4590 Proin St.","07-01-16","1538590935");
INSERT INTO Debate (location,date,time) VALUES ("P.O. Box 672, 1409 Ac Rd.","01-24-14","1530257360");
INSERT INTO Debate (location,date,time) VALUES ("Ap #773-2785 Pellentesque Av.","11-18-14","1554368042");
INSERT INTO Debate (location,date,time) VALUES ("483-6113 Cursus. Road","07-09-17","1571771145");
INSERT INTO Debate (location,date,time) VALUES ("8905 Ut, St.","07-22-15","1535623050");
INSERT INTO Debate (location,date,time) VALUES ("7306 Eu, Road","10-10-15","1577140503");
INSERT INTO Debate (location,date,time) VALUES ("Ap #391-856 Proin St.","10-15-14","1549070537");
INSERT INTO Debate (location,date,time) VALUES ("P.O. Box 189, 4432 Dolor Av.","01-21-16","1529379432");
INSERT INTO Debate (location,date,time) VALUES ("P.O. Box 843, 9627 Imperdiet, Av.","02-27-17","1541875161");
INSERT INTO Debate (location,date,time) VALUES ("Ap #152-3436 Amet, Av.","12-14-16","1584608209");
INSERT INTO Debate (location,date,time) VALUES ("Ap #642-9737 Enim, Rd.","02-14-19","1576080238");
INSERT INTO Debate (location,date,time) VALUES ("P.O. Box 190, 5320 Tempus Avenue","02-19-17","1570300401");
INSERT INTO Debate (location,date,time) VALUES ("P.O. Box 416, 1890 At St.","04-06-14","1565114073");
INSERT INTO Debate (location,date,time) VALUES ("P.O. Box 649, 8169 Rutrum Street","06-06-18","1563869354");
INSERT INTO Debate (location,date,time) VALUES ("P.O. Box 576, 150 Mollis. St.","02-07-19","1571032292");
INSERT INTO Debate (location,date,time) VALUES ("3879 Lorem Street","05-30-17","1567190951");
INSERT INTO Debate (location,date,time) VALUES ("1270 Lectus Road","08-06-18","1580187678");
INSERT INTO Debate (location,date,time) VALUES ("P.O. Box 980, 6833 Ac Av.","01-20-18","1556348492");
INSERT INTO Debate (location,date,time) VALUES ("774-1448 In, St.","12-25-15","1571145722");
INSERT INTO Debate (location,date,time) VALUES ("P.O. Box 355, 5923 Aliquam Ave","06-11-14","1570885744");
INSERT INTO Debate (location,date,time) VALUES ("826-8199 Sed Ave","11-23-15","1584413365");
INSERT INTO Debate (location,date,time) VALUES ("6993 Vitae Rd.","04-20-15","1578573040");
INSERT INTO Debate (location,date,time) VALUES ("735-9828 Maecenas Road","07-02-17","1526193673");
INSERT INTO Debate (location,date,time) VALUES ("115-2662 Augue St.","07-16-16","1576023021");
INSERT INTO Debate (location,date,time) VALUES ("P.O. Box 147, 9218 Amet, Ave","08-28-17","1580609552");
INSERT INTO Debate (location,date,time) VALUES ("P.O. Box 973, 1031 Donec Rd.","09-11-17","1567361785");
INSERT INTO Debate (location,date,time) VALUES ("P.O. Box 158, 264 Euismod Avenue","01-05-15","1543072895");
INSERT INTO Debate (location,date,time) VALUES ("3827 Aliquam Av.","01-19-17","1541298132");
INSERT INTO Debate (location,date,time) VALUES ("P.O. Box 312, 8493 Non Rd.","10-27-15","1547807795");
INSERT INTO Debate (location,date,time) VALUES ("628-2866 Velit Rd.","04-06-17","1564130732");
INSERT INTO Debate (location,date,time) VALUES ("Ap #682-1323 In Ave","11-18-14","1556770540");
INSERT INTO Debate (location,date,time) VALUES ("P.O. Box 126, 8623 Vestibulum Av.","01-07-15","1582045303");
INSERT INTO Debate (location,date,time) VALUES ("2682 Gravida St.","09-29-15","1561015414");
INSERT INTO Debate (location,date,time) VALUES ("P.O. Box 570, 7181 Odio, Street","07-17-17","1528779009");
INSERT INTO Debate (location,date,time) VALUES ("P.O. Box 595, 2620 Tempus Rd.","08-04-17","1565871236");
INSERT INTO Debate (location,date,time) VALUES ("Ap #636-3654 Est Rd.","09-14-18","1563378168");
INSERT INTO Debate (location,date,time) VALUES ("791-1164 Lorem Rd.","06-09-16","1537275941");
INSERT INTO Debate (location,date,time) VALUES ("P.O. Box 846, 5024 Sapien. Ave","11-11-14","1530861922");
INSERT INTO Debate (location,date,time) VALUES ("P.O. Box 709, 5112 Ut Rd.","03-02-14","1539740648");
INSERT INTO Debate (location,date,time) VALUES ("Ap #495-7380 Fusce Road","07-09-16","1525620215");
INSERT INTO Debate (location,date,time) VALUES ("Ap #903-3799 Eu St.","02-07-14","1541866851");
INSERT INTO Debate (location,date,time) VALUES ("Ap #973-3682 Nunc Ave","05-03-18","1566793179");
INSERT INTO Debate (location,date,time) VALUES ("Ap #492-4259 Quam. Road","02-05-15","1559863240");
INSERT INTO Debate (location,date,time) VALUES ("6212 Non, Road","06-25-18","1535356561");


-- Adjudicator
-- 1 to 25: 2 by debate = 50
-- 1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25
INSERT INTO Adjudicator (person,debate) VALUES (49,"1");
INSERT INTO Adjudicator (person,debate) VALUES (55,"1");
INSERT INTO Adjudicator (person,debate) VALUES (50,"2");
INSERT INTO Adjudicator (person,debate) VALUES (14,"2");
INSERT INTO Adjudicator (person,debate) VALUES (10,"3");
INSERT INTO Adjudicator (person,debate) VALUES (37,"3");
INSERT INTO Adjudicator (person,debate) VALUES (12,"4");
INSERT INTO Adjudicator (person,debate) VALUES (55,"4");
INSERT INTO Adjudicator (person,debate) VALUES (36,"5");
INSERT INTO Adjudicator (person,debate) VALUES (40,"5");
INSERT INTO Adjudicator (person,debate) VALUES (6,"6");
INSERT INTO Adjudicator (person,debate) VALUES (33,"6");
INSERT INTO Adjudicator (person,debate) VALUES (63,"7");
INSERT INTO Adjudicator (person,debate) VALUES (66,"7");
INSERT INTO Adjudicator (person,debate) VALUES (43,"8");
INSERT INTO Adjudicator (person,debate) VALUES (46,"8");
INSERT INTO Adjudicator (person,debate) VALUES (43,"9");
INSERT INTO Adjudicator (person,debate) VALUES (20,"9");
INSERT INTO Adjudicator (person,debate) VALUES (13,"10");
INSERT INTO Adjudicator (person,debate) VALUES (6,"10");
INSERT INTO Adjudicator (person,debate) VALUES (14,"11");
INSERT INTO Adjudicator (person,debate) VALUES (48,"11");
INSERT INTO Adjudicator (person,debate) VALUES (66,"12");
INSERT INTO Adjudicator (person,debate) VALUES (43,"12");
INSERT INTO Adjudicator (person,debate) VALUES (50,"13");
INSERT INTO Adjudicator (person,debate) VALUES (36,"13");
INSERT INTO Adjudicator (person,debate) VALUES (1,"14");
INSERT INTO Adjudicator (person,debate) VALUES (62,"14");
INSERT INTO Adjudicator (person,debate) VALUES (70,"15");
INSERT INTO Adjudicator (person,debate) VALUES (2,"15");
INSERT INTO Adjudicator (person,debate) VALUES (53,"16");
INSERT INTO Adjudicator (person,debate) VALUES (13,"16");
INSERT INTO Adjudicator (person,debate) VALUES (53,"17");
INSERT INTO Adjudicator (person,debate) VALUES (67,"17");
INSERT INTO Adjudicator (person,debate) VALUES (38,"18");
INSERT INTO Adjudicator (person,debate) VALUES (36,"18");
INSERT INTO Adjudicator (person,debate) VALUES (42,"19");
INSERT INTO Adjudicator (person,debate) VALUES (38,"19");
INSERT INTO Adjudicator (person,debate) VALUES (57,"20");
INSERT INTO Adjudicator (person,debate) VALUES (35,"20");
INSERT INTO Adjudicator (person,debate) VALUES (13,"21");
INSERT INTO Adjudicator (person,debate) VALUES (37,"21");
INSERT INTO Adjudicator (person,debate) VALUES (40,"22");
INSERT INTO Adjudicator (person,debate) VALUES (57,"22");
INSERT INTO Adjudicator (person,debate) VALUES (2,"23");
INSERT INTO Adjudicator (person,debate) VALUES (9,"23");
INSERT INTO Adjudicator (person,debate) VALUES (3,"24");
INSERT INTO Adjudicator (person,debate) VALUES (17,"24");
INSERT INTO Adjudicator (person,debate) VALUES (10,"25");
INSERT INTO Adjudicator (person,debate) VALUES (53,"25");
-- 26 to 50: 3 by debate = 75
-- 26|27|28|29|30|31|32|33|34|35|36|37|38|39|40|41|42|43|44|45|46|47|48|49|50
INSERT INTO Adjudicator (person,debate) VALUES (19,"26");
INSERT INTO Adjudicator (person,debate) VALUES (17,"26");
INSERT INTO Adjudicator (person,debate) VALUES (34,"26");
INSERT INTO Adjudicator (person,debate) VALUES (52,"27");
INSERT INTO Adjudicator (person,debate) VALUES (1,"27");
INSERT INTO Adjudicator (person,debate) VALUES (34,"27");
INSERT INTO Adjudicator (person,debate) VALUES (68,"28");
INSERT INTO Adjudicator (person,debate) VALUES (28,"28");
INSERT INTO Adjudicator (person,debate) VALUES (11,"28");
INSERT INTO Adjudicator (person,debate) VALUES (59,"29");
INSERT INTO Adjudicator (person,debate) VALUES (22,"29");
INSERT INTO Adjudicator (person,debate) VALUES (25,"29");
INSERT INTO Adjudicator (person,debate) VALUES (4,"30");
INSERT INTO Adjudicator (person,debate) VALUES (58,"30");
INSERT INTO Adjudicator (person,debate) VALUES (16,"30");
INSERT INTO Adjudicator (person,debate) VALUES (65,"31");
INSERT INTO Adjudicator (person,debate) VALUES (19,"31");
INSERT INTO Adjudicator (person,debate) VALUES (33,"31");
INSERT INTO Adjudicator (person,debate) VALUES (33,"32");
INSERT INTO Adjudicator (person,debate) VALUES (13,"32");
INSERT INTO Adjudicator (person,debate) VALUES (57,"32");
INSERT INTO Adjudicator (person,debate) VALUES (65,"33");
INSERT INTO Adjudicator (person,debate) VALUES (58,"33");
INSERT INTO Adjudicator (person,debate) VALUES (47,"33");
INSERT INTO Adjudicator (person,debate) VALUES (54,"34");
INSERT INTO Adjudicator (person,debate) VALUES (35,"34");
INSERT INTO Adjudicator (person,debate) VALUES (8,"34");
INSERT INTO Adjudicator (person,debate) VALUES (57,"35");
INSERT INTO Adjudicator (person,debate) VALUES (18,"35");
INSERT INTO Adjudicator (person,debate) VALUES (48,"35");
INSERT INTO Adjudicator (person,debate) VALUES (13,"36");
INSERT INTO Adjudicator (person,debate) VALUES (1,"36");
INSERT INTO Adjudicator (person,debate) VALUES (58,"36");
INSERT INTO Adjudicator (person,debate) VALUES (18,"37");
INSERT INTO Adjudicator (person,debate) VALUES (13,"37");
INSERT INTO Adjudicator (person,debate) VALUES (28,"37");
INSERT INTO Adjudicator (person,debate) VALUES (63,"38");
INSERT INTO Adjudicator (person,debate) VALUES (61,"38");
INSERT INTO Adjudicator (person,debate) VALUES (8,"38");
INSERT INTO Adjudicator (person,debate) VALUES (28,"39");
INSERT INTO Adjudicator (person,debate) VALUES (62,"39");
INSERT INTO Adjudicator (person,debate) VALUES (10,"39");
INSERT INTO Adjudicator (person,debate) VALUES (13,"40");
INSERT INTO Adjudicator (person,debate) VALUES (7,"40");
INSERT INTO Adjudicator (person,debate) VALUES (33,"40");
INSERT INTO Adjudicator (person,debate) VALUES (48,"41");
INSERT INTO Adjudicator (person,debate) VALUES (31,"41");
INSERT INTO Adjudicator (person,debate) VALUES (69,"41");
INSERT INTO Adjudicator (person,debate) VALUES (12,"42");
INSERT INTO Adjudicator (person,debate) VALUES (24,"42");
INSERT INTO Adjudicator (person,debate) VALUES (19,"42");
INSERT INTO Adjudicator (person,debate) VALUES (46,"43");
INSERT INTO Adjudicator (person,debate) VALUES (44,"43");
INSERT INTO Adjudicator (person,debate) VALUES (51,"43");
INSERT INTO Adjudicator (person,debate) VALUES (34,"44");
INSERT INTO Adjudicator (person,debate) VALUES (17,"44");
INSERT INTO Adjudicator (person,debate) VALUES (36,"44");
INSERT INTO Adjudicator (person,debate) VALUES (2,"45");
INSERT INTO Adjudicator (person,debate) VALUES (33,"45");
INSERT INTO Adjudicator (person,debate) VALUES (20,"45");
INSERT INTO Adjudicator (person,debate) VALUES (67,"46");
INSERT INTO Adjudicator (person,debate) VALUES (39,"46");
INSERT INTO Adjudicator (person,debate) VALUES (44,"46");
INSERT INTO Adjudicator (person,debate) VALUES (48,"47");
INSERT INTO Adjudicator (person,debate) VALUES (37,"47");
INSERT INTO Adjudicator (person,debate) VALUES (51,"47");
INSERT INTO Adjudicator (person,debate) VALUES (67,"48");
INSERT INTO Adjudicator (person,debate) VALUES (30,"48");
INSERT INTO Adjudicator (person,debate) VALUES (38,"48");
INSERT INTO Adjudicator (person,debate) VALUES (55,"49");
INSERT INTO Adjudicator (person,debate) VALUES (27,"49");
INSERT INTO Adjudicator (person,debate) VALUES (37,"49");
INSERT INTO Adjudicator (person,debate) VALUES (17,"50");
INSERT INTO Adjudicator (person,debate) VALUES (39,"50");
INSERT INTO Adjudicator (person,debate) VALUES (57,"50");
-- 51 to 75: 4 by debate = 100
-- 51|52|53|54|55|56|57|58|59|60|61|62|63|64|65|66|67|68|69|70|71|72|73|74|75
INSERT INTO Adjudicator (person,debate) VALUES (35,"51");
INSERT INTO Adjudicator (person,debate) VALUES (66,"51");
INSERT INTO Adjudicator (person,debate) VALUES (9,"51");
INSERT INTO Adjudicator (person,debate) VALUES (50,"51");
INSERT INTO Adjudicator (person,debate) VALUES (61,"52");
INSERT INTO Adjudicator (person,debate) VALUES (5,"52");
INSERT INTO Adjudicator (person,debate) VALUES (2,"52");
INSERT INTO Adjudicator (person,debate) VALUES (36,"52");
INSERT INTO Adjudicator (person,debate) VALUES (53,"53");
INSERT INTO Adjudicator (person,debate) VALUES (45,"53");
INSERT INTO Adjudicator (person,debate) VALUES (13,"53");
INSERT INTO Adjudicator (person,debate) VALUES (18,"53");
INSERT INTO Adjudicator (person,debate) VALUES (55,"54");
INSERT INTO Adjudicator (person,debate) VALUES (39,"54");
INSERT INTO Adjudicator (person,debate) VALUES (13,"54");
INSERT INTO Adjudicator (person,debate) VALUES (70,"54");
INSERT INTO Adjudicator (person,debate) VALUES (15,"55");
INSERT INTO Adjudicator (person,debate) VALUES (40,"55");
INSERT INTO Adjudicator (person,debate) VALUES (13,"55");
INSERT INTO Adjudicator (person,debate) VALUES (42,"55");
INSERT INTO Adjudicator (person,debate) VALUES (70,"56");
INSERT INTO Adjudicator (person,debate) VALUES (64,"56");
INSERT INTO Adjudicator (person,debate) VALUES (60,"56");
INSERT INTO Adjudicator (person,debate) VALUES (11,"56");
INSERT INTO Adjudicator (person,debate) VALUES (21,"57");
INSERT INTO Adjudicator (person,debate) VALUES (38,"57");
INSERT INTO Adjudicator (person,debate) VALUES (20,"57");
INSERT INTO Adjudicator (person,debate) VALUES (10,"57");
INSERT INTO Adjudicator (person,debate) VALUES (3,"58");
INSERT INTO Adjudicator (person,debate) VALUES (52,"58");
INSERT INTO Adjudicator (person,debate) VALUES (23,"58");
INSERT INTO Adjudicator (person,debate) VALUES (20,"58");
INSERT INTO Adjudicator (person,debate) VALUES (36,"59");
INSERT INTO Adjudicator (person,debate) VALUES (30,"59");
INSERT INTO Adjudicator (person,debate) VALUES (19,"59");
INSERT INTO Adjudicator (person,debate) VALUES (49,"59");
INSERT INTO Adjudicator (person,debate) VALUES (28,"60");
INSERT INTO Adjudicator (person,debate) VALUES (70,"60");
INSERT INTO Adjudicator (person,debate) VALUES (37,"60");
INSERT INTO Adjudicator (person,debate) VALUES (21,"60");
INSERT INTO Adjudicator (person,debate) VALUES (67,"61");
INSERT INTO Adjudicator (person,debate) VALUES (44,"61");
INSERT INTO Adjudicator (person,debate) VALUES (36,"61");
INSERT INTO Adjudicator (person,debate) VALUES (11,"61");
INSERT INTO Adjudicator (person,debate) VALUES (20,"62");
INSERT INTO Adjudicator (person,debate) VALUES (52,"62");
INSERT INTO Adjudicator (person,debate) VALUES (7,"62");
INSERT INTO Adjudicator (person,debate) VALUES (44,"62");
INSERT INTO Adjudicator (person,debate) VALUES (69,"63");
INSERT INTO Adjudicator (person,debate) VALUES (5,"63");
INSERT INTO Adjudicator (person,debate) VALUES (11,"63");
INSERT INTO Adjudicator (person,debate) VALUES (67,"63");
INSERT INTO Adjudicator (person,debate) VALUES (13,"64");
INSERT INTO Adjudicator (person,debate) VALUES (49,"64");
INSERT INTO Adjudicator (person,debate) VALUES (39,"64");
INSERT INTO Adjudicator (person,debate) VALUES (37,"64");
INSERT INTO Adjudicator (person,debate) VALUES (28,"65");
INSERT INTO Adjudicator (person,debate) VALUES (58,"65");
INSERT INTO Adjudicator (person,debate) VALUES (46,"65");
INSERT INTO Adjudicator (person,debate) VALUES (8,"65");
INSERT INTO Adjudicator (person,debate) VALUES (67,"66");
INSERT INTO Adjudicator (person,debate) VALUES (68,"66");
INSERT INTO Adjudicator (person,debate) VALUES (37,"66");
INSERT INTO Adjudicator (person,debate) VALUES (3,"66");
INSERT INTO Adjudicator (person,debate) VALUES (50,"67");
INSERT INTO Adjudicator (person,debate) VALUES (62,"67");
INSERT INTO Adjudicator (person,debate) VALUES (12,"67");
INSERT INTO Adjudicator (person,debate) VALUES (39,"67");
INSERT INTO Adjudicator (person,debate) VALUES (52,"68");
INSERT INTO Adjudicator (person,debate) VALUES (16,"68");
INSERT INTO Adjudicator (person,debate) VALUES (28,"68");
INSERT INTO Adjudicator (person,debate) VALUES (1,"68");
INSERT INTO Adjudicator (person,debate) VALUES (65,"69");
INSERT INTO Adjudicator (person,debate) VALUES (64,"69");
INSERT INTO Adjudicator (person,debate) VALUES (58,"69");
INSERT INTO Adjudicator (person,debate) VALUES (25,"69");
INSERT INTO Adjudicator (person,debate) VALUES (38,"70");
INSERT INTO Adjudicator (person,debate) VALUES (13,"70");
INSERT INTO Adjudicator (person,debate) VALUES (62,"70");
INSERT INTO Adjudicator (person,debate) VALUES (64,"70");
INSERT INTO Adjudicator (person,debate) VALUES (15,"71");
INSERT INTO Adjudicator (person,debate) VALUES (47,"71");
INSERT INTO Adjudicator (person,debate) VALUES (49,"71");
INSERT INTO Adjudicator (person,debate) VALUES (20,"71");
INSERT INTO Adjudicator (person,debate) VALUES (52,"72");
INSERT INTO Adjudicator (person,debate) VALUES (47,"72");
INSERT INTO Adjudicator (person,debate) VALUES (26,"72");
INSERT INTO Adjudicator (person,debate) VALUES (23,"72");
INSERT INTO Adjudicator (person,debate) VALUES (2,"73");
INSERT INTO Adjudicator (person,debate) VALUES (55,"73");
INSERT INTO Adjudicator (person,debate) VALUES (29,"73");
INSERT INTO Adjudicator (person,debate) VALUES (19,"73");
INSERT INTO Adjudicator (person,debate) VALUES (14,"74");
INSERT INTO Adjudicator (person,debate) VALUES (40,"74");
INSERT INTO Adjudicator (person,debate) VALUES (44,"74");
INSERT INTO Adjudicator (person,debate) VALUES (34,"74");
INSERT INTO Adjudicator (person,debate) VALUES (64,"75");
INSERT INTO Adjudicator (person,debate) VALUES (37,"75");
INSERT INTO Adjudicator (person,debate) VALUES (58,"75");
INSERT INTO Adjudicator (person,debate) VALUES (27,"75");
-- 76 to 100: 5 by debate = 125
-- 76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|91|92|93|94|95|96|97|98|99|100
INSERT INTO Adjudicator (person,debate) VALUES (17,"76");
INSERT INTO Adjudicator (person,debate) VALUES (67,"76");
INSERT INTO Adjudicator (person,debate) VALUES (38,"76");
INSERT INTO Adjudicator (person,debate) VALUES (48,"76");
INSERT INTO Adjudicator (person,debate) VALUES (41,"76");
INSERT INTO Adjudicator (person,debate) VALUES (38,"77");
INSERT INTO Adjudicator (person,debate) VALUES (63,"77");
INSERT INTO Adjudicator (person,debate) VALUES (8,"77");
INSERT INTO Adjudicator (person,debate) VALUES (6,"77");
INSERT INTO Adjudicator (person,debate) VALUES (50,"77");
INSERT INTO Adjudicator (person,debate) VALUES (36,"78");
INSERT INTO Adjudicator (person,debate) VALUES (15,"78");
INSERT INTO Adjudicator (person,debate) VALUES (52,"78");
INSERT INTO Adjudicator (person,debate) VALUES (22,"78");
INSERT INTO Adjudicator (person,debate) VALUES (34,"78");
INSERT INTO Adjudicator (person,debate) VALUES (37,"79");
INSERT INTO Adjudicator (person,debate) VALUES (27,"79");
INSERT INTO Adjudicator (person,debate) VALUES (51,"79");
INSERT INTO Adjudicator (person,debate) VALUES (5,"79");
INSERT INTO Adjudicator (person,debate) VALUES (62,"79");
INSERT INTO Adjudicator (person,debate) VALUES (3,"80");
INSERT INTO Adjudicator (person,debate) VALUES (43,"80");
INSERT INTO Adjudicator (person,debate) VALUES (60,"80");
INSERT INTO Adjudicator (person,debate) VALUES (48,"80");
INSERT INTO Adjudicator (person,debate) VALUES (47,"80");
INSERT INTO Adjudicator (person,debate) VALUES (33,"81");
INSERT INTO Adjudicator (person,debate) VALUES (27,"81");
INSERT INTO Adjudicator (person,debate) VALUES (50,"81");
INSERT INTO Adjudicator (person,debate) VALUES (18,"81");
INSERT INTO Adjudicator (person,debate) VALUES (70,"81");
INSERT INTO Adjudicator (person,debate) VALUES (32,"82");
INSERT INTO Adjudicator (person,debate) VALUES (51,"82");
INSERT INTO Adjudicator (person,debate) VALUES (41,"82");
INSERT INTO Adjudicator (person,debate) VALUES (29,"82");
INSERT INTO Adjudicator (person,debate) VALUES (2,"82");
INSERT INTO Adjudicator (person,debate) VALUES (8,"83");
INSERT INTO Adjudicator (person,debate) VALUES (55,"83");
INSERT INTO Adjudicator (person,debate) VALUES (38,"83");
INSERT INTO Adjudicator (person,debate) VALUES (26,"83");
INSERT INTO Adjudicator (person,debate) VALUES (19,"83");
INSERT INTO Adjudicator (person,debate) VALUES (17,"84");
INSERT INTO Adjudicator (person,debate) VALUES (22,"84");
INSERT INTO Adjudicator (person,debate) VALUES (67,"84");
INSERT INTO Adjudicator (person,debate) VALUES (58,"84");
INSERT INTO Adjudicator (person,debate) VALUES (14,"84");
INSERT INTO Adjudicator (person,debate) VALUES (14,"85");
INSERT INTO Adjudicator (person,debate) VALUES (24,"85");
INSERT INTO Adjudicator (person,debate) VALUES (43,"85");
INSERT INTO Adjudicator (person,debate) VALUES (63,"85");
INSERT INTO Adjudicator (person,debate) VALUES (35,"85");
INSERT INTO Adjudicator (person,debate) VALUES (42,"86");
INSERT INTO Adjudicator (person,debate) VALUES (49,"86");
INSERT INTO Adjudicator (person,debate) VALUES (36,"86");
INSERT INTO Adjudicator (person,debate) VALUES (32,"86");
INSERT INTO Adjudicator (person,debate) VALUES (26,"86");
INSERT INTO Adjudicator (person,debate) VALUES (13,"87");
INSERT INTO Adjudicator (person,debate) VALUES (50,"87");
INSERT INTO Adjudicator (person,debate) VALUES (66,"87");
INSERT INTO Adjudicator (person,debate) VALUES (61,"87");
INSERT INTO Adjudicator (person,debate) VALUES (4,"87");
INSERT INTO Adjudicator (person,debate) VALUES (46,"88");
INSERT INTO Adjudicator (person,debate) VALUES (52,"88");
INSERT INTO Adjudicator (person,debate) VALUES (37,"88");
INSERT INTO Adjudicator (person,debate) VALUES (54,"88");
INSERT INTO Adjudicator (person,debate) VALUES (35,"88");
INSERT INTO Adjudicator (person,debate) VALUES (24,"89");
INSERT INTO Adjudicator (person,debate) VALUES (12,"89");
INSERT INTO Adjudicator (person,debate) VALUES (61,"89");
INSERT INTO Adjudicator (person,debate) VALUES (62,"89");
INSERT INTO Adjudicator (person,debate) VALUES (29,"89");
INSERT INTO Adjudicator (person,debate) VALUES (35,"90");
INSERT INTO Adjudicator (person,debate) VALUES (55,"90");
INSERT INTO Adjudicator (person,debate) VALUES (18,"90");
INSERT INTO Adjudicator (person,debate) VALUES (38,"90");
INSERT INTO Adjudicator (person,debate) VALUES (27,"90");
INSERT INTO Adjudicator (person,debate) VALUES (43,"91");
INSERT INTO Adjudicator (person,debate) VALUES (52,"91");
INSERT INTO Adjudicator (person,debate) VALUES (63,"91");
INSERT INTO Adjudicator (person,debate) VALUES (11,"91");
INSERT INTO Adjudicator (person,debate) VALUES (55,"91");
INSERT INTO Adjudicator (person,debate) VALUES (36,"92");
INSERT INTO Adjudicator (person,debate) VALUES (28,"92");
INSERT INTO Adjudicator (person,debate) VALUES (25,"92");
INSERT INTO Adjudicator (person,debate) VALUES (10,"92");
INSERT INTO Adjudicator (person,debate) VALUES (63,"92");
INSERT INTO Adjudicator (person,debate) VALUES (7,"93");
INSERT INTO Adjudicator (person,debate) VALUES (59,"93");
INSERT INTO Adjudicator (person,debate) VALUES (35,"93");
INSERT INTO Adjudicator (person,debate) VALUES (57,"93");
INSERT INTO Adjudicator (person,debate) VALUES (47,"93");
INSERT INTO Adjudicator (person,debate) VALUES (23,"94");
INSERT INTO Adjudicator (person,debate) VALUES (32,"94");
INSERT INTO Adjudicator (person,debate) VALUES (66,"94");
INSERT INTO Adjudicator (person,debate) VALUES (8,"94");
INSERT INTO Adjudicator (person,debate) VALUES (9,"94");
INSERT INTO Adjudicator (person,debate) VALUES (65,"95");
INSERT INTO Adjudicator (person,debate) VALUES (59,"95");
INSERT INTO Adjudicator (person,debate) VALUES (17,"95");
INSERT INTO Adjudicator (person,debate) VALUES (10,"95");
INSERT INTO Adjudicator (person,debate) VALUES (21,"95");
INSERT INTO Adjudicator (person,debate) VALUES (3,"96");
INSERT INTO Adjudicator (person,debate) VALUES (11,"96");
INSERT INTO Adjudicator (person,debate) VALUES (65,"96");
INSERT INTO Adjudicator (person,debate) VALUES (37,"96");
INSERT INTO Adjudicator (person,debate) VALUES (25,"96");
INSERT INTO Adjudicator (person,debate) VALUES (16,"97");
INSERT INTO Adjudicator (person,debate) VALUES (54,"97");
INSERT INTO Adjudicator (person,debate) VALUES (35,"97");
INSERT INTO Adjudicator (person,debate) VALUES (34,"97");
INSERT INTO Adjudicator (person,debate) VALUES (52,"97");
INSERT INTO Adjudicator (person,debate) VALUES (54,"98");
INSERT INTO Adjudicator (person,debate) VALUES (52,"98");
INSERT INTO Adjudicator (person,debate) VALUES (32,"98");
INSERT INTO Adjudicator (person,debate) VALUES (25,"98");
INSERT INTO Adjudicator (person,debate) VALUES (10,"98");
INSERT INTO Adjudicator (person,debate) VALUES (60,"99");
INSERT INTO Adjudicator (person,debate) VALUES (68,"99");
INSERT INTO Adjudicator (person,debate) VALUES (30,"99");
INSERT INTO Adjudicator (person,debate) VALUES (45,"99");
INSERT INTO Adjudicator (person,debate) VALUES (35,"99");
INSERT INTO Adjudicator (person,debate) VALUES (28,"100");
INSERT INTO Adjudicator (person,debate) VALUES (65,"100");
INSERT INTO Adjudicator (person,debate) VALUES (54,"100");
INSERT INTO Adjudicator (person,debate) VALUES (24,"100");
INSERT INTO Adjudicator (person,debate) VALUES (69,"100");


-- WeeklyDebate
INSERT INTO WeeklyDebate (id,motion,infoSlide,organizer) VALUES (1,"Pellentesque ut ipsum ac mi eleifend",null,1);
INSERT INTO WeeklyDebate (id,motion,infoSlide,organizer) VALUES (2,"turpis nec mauris blandit","metus vitae velit egestas",2);
INSERT INTO WeeklyDebate (id,motion,infoSlide,organizer) VALUES (3,"rhoncus id, mollis nec, cursus a, enim. Suspendisse","amet,",3);
INSERT INTO WeeklyDebate (id,motion,infoSlide,organizer) VALUES (4,"consectetuer ipsum nunc id enim. Curabitur","ullamcorper, velit in",4);

-- Tournament
INSERT INTO Tournament (name,official,society) VALUES ("V Tornadu",1,5);
INSERT INTO Tournament (name,official,society) VALUES ("III Open Coimbra",0,6);


-- Round
-- name: R1|R2|R3|R4|R5|SemiFinal|Final
insert into Round (motion, infoSlide, tournament, name) values ('This House Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', null, 1, 'R1');
insert into Round (motion, infoSlide, tournament, name) values ('This House Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi.', 1, 'R2');
insert into Round (motion, infoSlide, tournament, name) values ('This House Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio.', 1, 'R3');
insert into Round (motion, infoSlide, tournament, name) values ('This House Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 1, 'R4');
insert into Round (motion, infoSlide, tournament, name) values ('This House In est risus, auctor sed, tristique in, tempus sit amet, sem.', null, 1, 'R5');
insert into Round (motion, infoSlide, tournament, name) values ('This House Vestibulum ac est lacinia nisi venenatis tristique.', 'Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio.', 1, 'SemiFinal');
insert into Round (motion, infoSlide, tournament, name) values ('This House Pellentesque at nulla.', null, 1, 'Final');
insert into Round (motion, infoSlide, tournament, name) values ('This House Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 2, 'R1');
insert into Round (motion, infoSlide, tournament, name) values ('This House Pellentesque ultrices mattis odio.', null, 2, 'R2');
insert into Round (motion, infoSlide, tournament, name) values ('This House Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', null, 2, 'R3');
insert into Round (motion, infoSlide, tournament, name) values ('This House Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue.', null, 2, 'R4');
insert into Round (motion, infoSlide, tournament, name) values ('This House In congue. Etiam justo.', null, 2, 'R5');
insert into Round (motion, infoSlide, tournament, name) values ('This House Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', null, 2, 'SemiFinal');
insert into Round (motion, infoSlide, tournament, name) values ('This House Integer ac leo. Pellentesque ultrices mattis odio.', null, 2, 'Final');

/*
-- SpeakerPoints
*/
-- TournamentDebate
-- Tournament 1: R1 - R5
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (5,1,73.875,90,51,81,68,89,59,84,69);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (6,1,65.25,56,80,68,52,71,54,65,76);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (7,1,64.375,51,60,56,59,89,57,68,75);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (8,1,62.125,52,58,73,60,61,62,57,74);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (9,2,73.5,80,85,61,86,61,56,92,67);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (10,2,68.75,60,61,80,76,55,75,51,92);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (11,2,76.375,66,82,72,80,82,88,81,60);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (12,2,67.5,81,79,81,78,50,54,61,56);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (13,3,72.875,61,89,62,71,71,75,93,61);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (14,3,74.625,85,55,51,79,82,90,63,92);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (15,3,71.75,74,60,86,66,92,71,54,71);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (16,3,71.875,85,66,71,55,82,81,53,82);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (17,4,70.5,89,53,76,63,59,86,75,63);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (18,4,72.375,79,92,53,82,58,51,89,75);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (19,4,65.5,90,59,52,84,58,66,63,52);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (20,4,72,76,71,69,92,55,54,68,91);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (21,5,65.375,58,73,57,73,87,63,58,54);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (22,5,65.375,55,51,63,78,81,62,53,80);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (23,5,67,53,51,86,56,87,73,77,53);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (24,5,64,54,85,58,54,57,68,66,70);

-- Tournament 1: SemiFinals
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (25,"6","70.625",77,73,77,61,77,75,63,62);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (26,"6","79.375",73,76,85,88,80,85,68,80);

-- Tournament 1: Finals
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (27,"7","74.875",76,71,72,75,70,73,75,87);


-- Tournament 2: R1 - R5
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (28,"8","69.875",61,59,69,79,74,55,80,82);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (29,"8","70.75",78,83,58,70,52,69,91,65);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (30,"8","73.125",83,70,70,79,62,93,51,77);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (31,"8","75.125",91,58,91,53,79,66,79,84);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (32,"9","70",60,70,75,66,66,65,75,83);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (33,"9","72.25",91,71,81,74,59,59,68,75);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (34,"9","67.375",75,79,65,53,54,60,67,86);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (35,"9","70.875",88,91,57,56,82,86,53,54);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (36,"10","76.375",81,52,60,72,92,78,83,93);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (37,"10","78",89,87,68,74,52,91,72,91);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (38,"10","71.125",54,53,73,71,89,81,71,77);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (39,"10","67.5",76,50,51,83,90,54,85,51);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (40,"11","73.375",55,58,87,59,78,90,69,91);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (41,"11","75.375",71,86,90,63,84,57,68,84);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (42,"11","75.25",93,89,72,67,89,58,61,73);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (43,"11","70",75,85,51,88,56,80,55,70);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (44,"12","71.375",62,85,56,70,65,93,74,66);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (45,"12","75.125",85,92,67,81,64,86,76,50);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (46,"12","68.875",89,66,56,71,60,65,82,62);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (47,"12","70.5",70,64,64,90,50,70,66,90);

-- Tournament 2: SemiFinals
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (48,"13","77.375",75,68,65,81,71,81,93,85);
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (49,"13","72.125",75,62,81,81,80,70,61,67);

-- Tournament 2: Finals
INSERT INTO TournamentDebate (id,round,speakerPointsMean,PMSpeakerPoints,DPMSpeakerPoints,LOSpeakerPoints,DLOSpeakerPoints,MGSpeakerPoints,GWSpeakerPoints,MOSpeakerPoints,OWSpeakerPoints) VALUES (50,"14","76.5",70,89,88,72,74,69,65,85);



INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",1,2,1,"5");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",3,4,2,"5");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",5,6,3,"5");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",7,8,4,"5");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",9,10,5,"6");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",11,12,6,"6");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",13,14,7,"6");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",15,16,8,"6");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",17,18,9,"7");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",19,20,10,"7");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",21,22,11,"7");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",23,24,12,"7");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",25,26,13,"8");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",27,28,14,"8");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",29,30,15,"8");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",31,32,16,"8");

INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",1,2,1,"9");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",3,4,2,"9");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",5,6,3,"9");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",7,8,4,"9");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",9,10,5,"10");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",11,12,6,"10");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",13,14,7,"10");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",15,16,8,"10");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",17,18,9,"11");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",19,20,10,"11");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",21,22,11,"11");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",23,24,12,"11");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",25,26,13,"12");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",27,28,14,"12");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",29,30,15,"12");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",31,32,16,"12");

INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",1,2,1,"13");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",3,4,2,"13");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",5,6,3,"13");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",7,8,4,"13");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",9,10,5,"14");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",11,12,6,"14");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",13,14,7,"14");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",15,16,8,"14");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",17,18,9,"15");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",19,20,10,"15");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",21,22,11,"15");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",23,24,12,"15");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",25,26,13,"16");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",27,28,14,"16");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",29,30,15,"16");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",31,32,16,"16");

INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",1,2,1,"17");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",3,4,2,"17");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",5,6,3,"17");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",7,8,4,"17");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",9,10,5,"18");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",11,12,6,"18");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",13,14,7,"18");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",15,16,8,"18");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",17,18,9,"19");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",19,20,10,"19");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",21,22,11,"19");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",23,24,12,"19");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",25,26,13,"20");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",27,28,14,"20");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",29,30,15,"20");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",31,32,16,"20");

INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",1,2,1,"21");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",3,4,2,"21");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",5,6,3,"21");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",7,8,4,"21");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",9,10,5,"22");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",11,12,6,"22");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",13,14,7,"22");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",15,16,8,"22");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",17,18,9,"23");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",19,20,10,"23");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",21,22,11,"23");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",23,24,12,"23");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",25,26,13,"24");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",27,28,14,"24");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",29,30,15,"24");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",31,32,16,"24");

INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",1,2,1,"25");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",9,10,5,"25");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",17,18,9,"25");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",25,26,13,"25");

INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",3,4,2,"26");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",11,12,6,"26");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",19,20,10,"26");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",27,28,14,"26");

INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",1,2,1,"27");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",9,10,5,"27");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",3,4,2,"27");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",11,12,6,"27");




INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",38,39,33,"28");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",40,41,34,"28");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",42,43,35,"28");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",44,45,36,"28");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",46,47,37,"29");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",48,49,38,"29");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",50,51,39,"29");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",52,53,40,"29");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",54,55,41,"30");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",56,57,42,"30");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",58,59,43,"30");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",60,61,44,"30");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",62,63,45,"31");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",64,65,46,"31");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",66,67,47,"31");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",68,69,48,"31");

INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",38,39,33,"32");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",40,41,34,"32");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",42,43,35,"32");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",44,45,36,"32");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",46,47,37,"33");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",48,49,38,"33");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",50,51,39,"33");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",52,53,40,"33");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",54,55,41,"34");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",56,57,42,"34");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",58,59,43,"34");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",60,61,44,"34");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",62,63,45,"35");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",64,65,46,"35");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",66,67,47,"35");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",68,69,48,"35");


INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",38,39,33,"36");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",40,41,34,"36");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",42,43,35,"36");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",44,45,36,"36");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",46,47,37,"37");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",48,49,38,"37");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",50,51,39,"37");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",52,53,40,"37");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",54,55,41,"38");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",56,57,42,"38");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",58,59,43,"38");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",60,61,44,"38");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",62,63,45,"39");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",64,65,46,"39");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",66,67,47,"39");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",68,69,48,"39");

INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",38,39,33,"40");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",40,41,34,"40");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",42,43,35,"40");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",44,45,36,"40");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",46,47,37,"41");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",48,49,38,"41");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",50,51,39,"41");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",52,53,40,"41");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",54,55,41,"42");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",56,57,42,"42");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",58,59,43,"42");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",60,61,44,"42");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",62,63,45,"43");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",64,65,46,"43");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",66,67,47,"43");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",68,69,48,"43");

INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",38,39,33,"44");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",40,41,34,"44");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",42,43,35,"44");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",44,45,36,"44");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",46,47,37,"45");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",48,49,38,"45");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",50,51,39,"45");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",52,53,40,"45");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",54,55,41,"46");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",56,57,42,"46");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",58,59,43,"46");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",60,61,44,"46");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",62,63,45,"47");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",64,65,46,"47");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",66,67,47,"47");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",68,69,48,"47");


INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",38,39,33,"48");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",46,47,37,"48");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",54,55,41,"48");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",62,63,45,"48");

INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",40,41,34,"49");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",48,49,38,"49");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",56,57,42,"49");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",64,65,46,"49");


INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",38,39,33,"50");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",46,47,37,"50");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",56,57,42,"50");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",64,65,46,"50");




-- INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",1,2,21,"1");
-- INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",3,5,22,"1");
-- INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",5,8,23,"1");
-- INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",7,11,24,"1");


INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",9,14,25,"2");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",11,17,26,"2");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",13,20,27,"2");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",15,23,28,"2");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",17,26,29,"3");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",19,29,30,"3");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",21,32,31,"3");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",23,35,32,"3");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OG","1",25,38,33,"4");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("OO","2",27,41,34,"4");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CG","3",29,44,35,"4");
INSERT INTO Specification (position,classification,firstSpeaker,secondSpeaker,team,debate) VALUES ("CO","4",31,47,36,"4");


INSERT INTO TournamentTeam (tournament,team) VALUES ("1",1);
INSERT INTO TournamentTeam (tournament,team) VALUES ("1",2);
INSERT INTO TournamentTeam (tournament,team) VALUES ("1",3);
INSERT INTO TournamentTeam (tournament,team) VALUES ("1",4);
INSERT INTO TournamentTeam (tournament,team) VALUES ("1",5);
INSERT INTO TournamentTeam (tournament,team) VALUES ("1",6);
INSERT INTO TournamentTeam (tournament,team) VALUES ("1",7);
INSERT INTO TournamentTeam (tournament,team) VALUES ("1",8);
INSERT INTO TournamentTeam (tournament,team) VALUES ("1",9);
INSERT INTO TournamentTeam (tournament,team) VALUES ("1",10);
INSERT INTO TournamentTeam (tournament,team) VALUES ("1",11);
INSERT INTO TournamentTeam (tournament,team) VALUES ("1",12);
INSERT INTO TournamentTeam (tournament,team) VALUES ("1",13);
INSERT INTO TournamentTeam (tournament,team) VALUES ("1",14);
INSERT INTO TournamentTeam (tournament,team) VALUES ("1",15);
INSERT INTO TournamentTeam (tournament,team) VALUES ("1",16);


INSERT INTO TournamentTeam (tournament,team) VALUES ("2",33);
INSERT INTO TournamentTeam (tournament,team) VALUES ("2",34);
INSERT INTO TournamentTeam (tournament,team) VALUES ("2",35);
INSERT INTO TournamentTeam (tournament,team) VALUES ("2",36);
INSERT INTO TournamentTeam (tournament,team) VALUES ("2",37);
INSERT INTO TournamentTeam (tournament,team) VALUES ("2",38);
INSERT INTO TournamentTeam (tournament,team) VALUES ("2",39);
INSERT INTO TournamentTeam (tournament,team) VALUES ("2",40);
INSERT INTO TournamentTeam (tournament,team) VALUES ("2",41);
INSERT INTO TournamentTeam (tournament,team) VALUES ("2",42);
INSERT INTO TournamentTeam (tournament,team) VALUES ("2",43);
INSERT INTO TournamentTeam (tournament,team) VALUES ("2",44);
INSERT INTO TournamentTeam (tournament,team) VALUES ("2",45);
INSERT INTO TournamentTeam (tournament,team) VALUES ("2",46);
INSERT INTO TournamentTeam (tournament,team) VALUES ("2",47);
INSERT INTO TournamentTeam (tournament,team) VALUES ("2",48);