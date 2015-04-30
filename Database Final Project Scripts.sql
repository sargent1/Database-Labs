--Connor Sargent--
--Final Database Project: Music--


--create album table--
CREATE TABLE album
(
  aid text NOT NULL PRIMARY KEY,
  genre character(30),
  title character(35),
  bandName character(30),
  runTime character varying(10),
  releaseDate character varying(15),
  rating integer
);

INSERT INTO album(aid, genre, title, bandName, runTime, releaseDate, rating)
	VALUES('a01', 'Post-Hardcore', 'Instand Gratification', 'Dance Gavin Dance', '38:14', '4/15/2015', 10),
	      ('a02', 'Metalcore', 'Messenger', 'August Burns Red', '36:54', '7/19/2009', 8),
	      ('a03', 'Hardcore', 'Satori', 'I The Mighty', '38:14', '10/3/2013', 7),
	      ('a04', 'Alternative', 'Brand New Eyes', 'Paramore', '39:44', '3/29/2009', 9),
	      ('a05', 'Electronic-Hardcore', 'New Demons', 'I See Stars', '37:05', '5/25/2013', 8),
	      ('a06', 'Post-Hardcore', 'Age of Ignorance', 'Our Last Night', '36:28', '7/5/2013', 9),
	      ('a07', 'Hardcore', 'Issues', 'Issues', '38:14', '3/9/2014', 7),
	      ('a08', 'Metalcore', 'This Or The Apocalypse', 'Dead Years', '38:44', '7/19/2012', 9),
	      ('a09', 'Alternative', 'Vices and Virtues', 'Panic At The Disco', '39:02', '2/22/2011', 8),
	      ('a10', 'Electronic-Hardcore', 'Reckless And Relentless', 'Asking Alexandria', '37:45', '7/19/2011', 6);

--Create studio table--
CREATE TABLE studio
(
  sid text NOT NULL PRIMARY KEY,
  studioName character(35),
  yearEstablished integer,
  state character(20),
  zipcode integer
);

INSERT INTO studio(sid, studioName, yearEstablished, state, zipcode)
	VALUES('s01', 'Rise Studios', 2004, 'NY', 10032),
	      ('s02', 'Ramen Studios', 2006, 'CA', 67345),
	      ('s03', 'Eagle Studios', 2005, 'TX', 54334),
	      ('s04', 'Sumerian Studios', 2002, 'IL', 38235),
	      ('s05', 'Blank Studios', 2007, 'NJ', 07677),
	      ('s06', 'Equal Vision Studios', 2003, 'PA', 10934);

--Create people table--	      
CREATE TABLE people
(
  pid text NOT NULL PRIMARY KEY,
  firstName character(35),
  lastName character(35),
  gender character(1),
  dateOfBirth character(15),
  email character(50)
);

INSERT INTO people(pid, firstName, lastName, gender, dateOfBirth, email)
	VALUES('p01', 'Jon', 'Mess', 'M', '2/5/1988', 'jmessdgd@gmail.com'),
	      ('p02', 'Tilian', 'Pearson', 'M', '6/5/1989', 'tpearsdgd@gmail.com'),
	      ('p03', 'Will', 'Swan', 'M', '10/5/1990', 'swandgd@gmail.com'),
	      ('p04', 'Matt', 'Mingus', 'M', '1/22/1990', 'mingusdgd@gmail.com'),
	      ('p05', 'Tim', 'Feerick', 'M', '3/24/1989', 'feedgd@gmail.com'),
	      ('p06', 'Jake', 'Luhrs', 'M', '8/9/1988', 'jakeabr@gmail.com'),
	      ('p07', 'JB', 'Brubaker', 'M', '9/5/1989', 'jbabr@gmail.com'),
	      ('p08', 'Brent', 'Rambler', 'M', '12/13/1987', 'ramblerabr@gmail.com'),
	      ('p09', 'Dustin', 'Davidson', 'M', '1/5/1989', 'dustyabr@gmail.com'),
	      ('p10', 'Matt', 'Greiner', 'M', '7/28/1990', 'greinsabr@gmail.com'),
	      ('p11', 'Brent', 'Walsh', 'M', '4/14/1988', 'brentitm@gmail.com'),
	      ('p12', 'Ian', 'Pedigo', 'M', '5/21/1991', 'pedigoitm@gmail.com'),
	      ('p13', 'Chris', 'Hinkley', 'M', '3/6/1991', 'hinkitm@gmail.com'),
	      ('p14', 'Blake', 'Dahlinger', 'M', '2/7/1990', 'blakeitm@gmail.com'),
	      ('p15', 'Hayley', 'Williams', 'F', '12/27/1988', 'hayleypmore@gmail.com'),
	      ('p16', 'Taylor', 'York', 'M', '12/17/1989', 'taylorpmore@gmail.com'),
	      ('p17', 'Jeremy', 'Davis', 'M', '2/8/1985', 'jdpmore@gmail.com'),
	      ('p18', 'Devin', 'Oliver', 'M', '11/8/1993', 'deviss@gmail.com'),
	      ('p19', 'Andrew', 'Oliver', 'M', '9/15/1992', 'andrewiss@gmail.com'),
	      ('p20', 'Jimmy', 'Gregerson', 'M', '1/4/1992', 'jimiss@gmail.com'),
	      ('p21', 'Brent', 'Allen', 'M', '4/3/1991', 'brentiss@gmail.com'),
	      ('p22', 'Zach', 'Johnson', 'M', '12/8/1992', 'zachiss@gmail.com'),
	      ('p23', 'Jeff', 'Valentine', 'M', '10/16/1991', 'jeffiss@gmail.com'),
	      ('p24', 'Trevor', 'Wentworth', 'M', '5/22/1993', 'trevoln@gmail.com'),
	      ('p25', 'Matt', 'Wentworth', 'M', '7/2/1992', 'mattoln@gmail.com'),
	      ('p26', 'Alex', 'Woodrow', 'M', '3/29/1991', 'alexoln@gmail.com'),
	      ('p27', 'Tim', 'Molloy', 'M', '10/22/1992', 'timoln@gmail.com'),
	      ('p28', 'Tyler', 'Carter', 'M', '12/30/1991', 'tyleri@gmail.com'),
	      ('p29', 'Michael', 'Bohn', 'M', '6/22/1991', 'mikei@gmail.com'),
	      ('p30', 'Rick', 'Armellino', 'M', '1/28/1990', 'ricktota@gmail.com'),
	      ('p31', 'Grant', 'McFarland', 'M', '8/12/1989', 'granttota@gmail.com'),
	      ('p32', 'Brendan', 'Urie', 'M', '4/12/1987', 'brendanpatd@gmail.com'),
	      ('p33', 'Dallon', 'Weekes', 'M', '5/4/1981', 'dallonpatd@gmail.com'),
	      ('p34', 'Danny', 'Worsnop', 'M', '9/4/1990', 'dannyaa@gmail.com'),
	      ('p35', 'Bob', 'Johnson', 'M', '1/31/1988', 'bobson@gmail.com'),
	      ('p36', 'Tim', 'Levine', 'M', '4/3/1987', 'timle@gmail.com'),
	      ('p37', 'Joey', 'Sturgis', 'M', '5/12/1986', 'joestur@gmail.com'),
	      ('p38', 'Emily', 'Jackson', 'F', '11/3/1987', 'emjack@gmail.com'),
	      ('p39', 'Chad', 'Devins', 'M', '12/1/1985', 'chadev@gmail.com'),
	      ('p40', 'Nick', 'Rossi', 'M', '9/6/1984', 'nrossi@gmail.com'),
	      ('p41', 'Andrew', 'Casey', 'M', '8/30/1989', 'acasey@gmail.com'),
	      ('p42', 'Zack', 'Mischel', 'M', '7/15/1986', 'zmischel@gmail.com'),
	      ('p43', 'Forrest', 'Raynord', 'M', '6/27/1985', 'forrayn@gmail.com'),
	      ('p44', 'Tasi', 'Alabastro', 'M', '4/13/1983', 'tasistro@gmail.com'),
	      ('p45', 'Violet', 'Miller', 'F', '3/2/1986', 'violler@gmail.com'),
	      ('p46', 'Joe', 'Brogno', 'M', '2/18/1984', 'brogjoe@gmail.com'),
	      ('p47', 'Eddie', 'Sinka', 'M', '1/31/1986', 'sinka@gmail.com'),
	      ('p48', 'Scott', 'Thompson', 'M', '4/1/1986', 'scottson@gmail.com'),
	      ('p49', 'Travis', 'Gafford', 'M', '11/30/1987', 'tgaf@gmail.com'),
	      ('p50', 'Joe', 'Miller', 'M', '7/7/1988', 'jmills@gmail.com');
	 
	      
--Create table producedIn--
CREATE TABLE producedIn
(
  pnum integer NOT NULL PRIMARY KEY,
  sid text references studio(sid),
  aid text references album(aid)
);

INSERT INTO producedIn(pnum, sid, aid)
	VALUES(1, 's01', 'a01'),
	      (2, 's01', 'a07'),
	      (3, 's02', 'a04'),
	      (4, 's02', 'a09'),
	      (5, 's03', 'a02'),
	      (6, 's03', 'a08'),
	      (7, 's04', 'a03'),
	      (8, 's05', 'a06'),
	      (9, 's06', 'a05'),
	      (10, 's06', 'a10');
	      

--Creat table featuredIn--
CREATE TABLE featuredIn
(
  fnum integer NOT NULL PRIMARY KEY,
  aid text references album(aid),
  pid text references people(pid)
);

INSERT INTO featuredIn(fNum, aid, pid)
	VALUES(1, 'a01', 'p01'),
	      (2, 'a01', 'p02'),
	      (3, 'a01', 'p03'),
	      (4, 'a01', 'p04'),
	      (5, 'a01', 'p05'),
	      (6, 'a01', 'p35'),
	      (7, 'a01', 'p37'),
	      (8, 'a02', 'p06'),
	      (9, 'a02', 'p07'),
	      (10, 'a02', 'p08'),
	      (11, 'a02', 'p09'),
	      (12, 'a02', 'p10'),
	      (13, 'a02', 'p36'),
	      (14, 'a02', 'p38'),
	      (15, 'a03', 'p11'),
	      (16, 'a03', 'p12'),
	      (17, 'a03', 'p13'),
	      (18, 'a03', 'p14'),
	      (19, 'a03', 'p39'),
	      (20, 'a04', 'p15'),
	      (21, 'a04', 'p16'),
	      (22, 'a04', 'p17'),
	      (23, 'a04', 'p40'),
	      (24, 'a04', 'p41'),
	      (25, 'a05', 'p18'),
	      (26, 'a05', 'p19'),
	      (27, 'a05', 'p20'),
	      (28, 'a05', 'p21'),
	      (29, 'a05', 'p22'),
	      (30, 'a05', 'p23'),
	      (31, 'a05', 'p42'),
	      (32, 'a05', 'p43'),
	      (33, 'a06', 'p24'),
	      (34, 'a06', 'p25'),
	      (35, 'a06', 'p26'),
	      (36, 'a06', 'p27'),
	      (37, 'a06', 'p44'),
	      (38, 'a07', 'p28'),
	      (39, 'a07', 'p29'),
	      (40, 'a07', 'p45'),
	      (41, 'a07', 'p46'),
	      (42, 'a08', 'p30'),
	      (43, 'a08', 'p31'),
	      (44, 'a08', 'p47'),
	      (45, 'a09', 'p32'),
	      (46, 'a09', 'p33'),
	      (47, 'a09', 'p48'),
	      (48, 'a09', 'p49'),
	      (49, 'a10', 'p34'),
	      (50, 'a10', 'p50');


--Create table production--	      
CREATE TABLE production
(
  proNum integer NOT NULL PRIMARY KEY,
  pid text references people(pid),
  jobTitle character(35)
);

INSERT INTO production(proNum, pid, jobTitle)
	VALUES(1, 'p35', 'Producer'),
	      (2, 'p36', 'Producer'),
	      (3, 'p37', 'Manager'),
	      (4, 'p38', 'Manager'),
	      (5, 'p39', 'Producer'),
	      (6, 'p40', 'Mroducer'),
	      (7, 'p41', 'Manager'),
	      (8, 'p42', 'Manager'),
              (9, 'p43', 'Producer'),
              (10, 'p44', 'Producer'),
              (11, 'p45', 'Producer'),
              (12, 'p46', 'Manager'),
              (13, 'p47', 'Producer'),
              (14, 'p48', 'Producer'),
              (15, 'p49', 'Manager'),
              (16, 'p50', 'Producer');


CREATE TABLE band
(
  bNum integer NOT NULL PRIMARY KEY,
  pid text references people(pid),
  bandRole character(35)
);

INSERT INTO band(bNum, pid, bandRole)
	VALUES(1, 'p01', 'Vocals'),
	      (2, 'p02', 'Vocals'),
	      (3, 'p03', 'Guitar'),
	      (4, 'p04', 'Bass'),
	      (5, 'p05', 'Drums'),
	      (6, 'p06', 'Vocals'),
	      (7, 'p07', 'Guitar'),
	      (8, 'p08', 'Guitar'),
	      (9, 'p09', 'Bass'),
	      (10, 'p10', 'Drums'),
	      (11, 'p11', 'Vocals'),
	      (12, 'p12', 'Guitar'),
	      (13, 'p13', 'Bass'),
	      (14, 'p14', 'Drums'),
	      (15, 'p15', 'Vocals'),
	      (16, 'p16', 'Guitar'),
	      (17, 'p17', 'Guitar'),
	      (18, 'p18', 'Vocals'),
	      (19, 'p19', 'Drums'),
	      (20, 'p20', 'Guitar'),
	      (21, 'p21', 'Guitar'),
	      (22, 'p22', 'Vocals'),
	      (23, 'p23', 'Bass'),
	      (24, 'p24', 'Vocals'),
	      (25, 'p25', 'Guitar'),
	      (26, 'p26', 'Drums'),
	      (27, 'p27', 'Bass'),
	      (28, 'p28', 'Vocals'),
	      (29, 'p29', 'Vocals'),
	      (30, 'p30', 'Vocals'),
	      (31, 'p31', 'Drums'),
	      (32, 'p32', 'Vocals'),
	      (33, 'p33', 'Guitar'),
	      (34, 'p34', 'Vocals');

--Create table city 
CREATE TABLE city
(
cid text NOT NULL PRIMARY KEY, 
cityName character(50)
);

INSERT INTO city(cid, cityName)
	VALUES('c01', 'Manhattan'),
	      ('c02', 'Dallas'),
	      ('c03', 'San Jose'),
	      ('c04', 'Chicago'),
	      ('c05', 'Denver'),
	      ('c06', 'Portland'),
	      ('c07', 'Trenton'),
	      ('c08', 'Poughkeepsie'),
	      ('c09', 'Raleigh'),
	      ('c10', 'Orlando');

--Create table tour--
CREATE TABLE tour
(
  tid text NOT NULL PRIMARY KEY,
  cidStart text references city(cid),
  cidEnd text references city(cid),
  tourName character(35),
  startDate character(15),
  endDate character(15)
);

INSERT INTO tour(tid, cidStart, cidEnd, tourName, startDate, endDate)
	VALUES('t01', 'c01', 'c03', 'Vans Warped Tour', '1/5/2015', '5/5/2015'),
	      ('t02', 'c02', 'c04', 'South By So What', '2/2/2015', '6/6/2015'),
	      ('t03', 'c05', 'c07', 'Exposure Tour', '3/3/2015', '7/7/2015'),
	      ('t04', 'c06', 'c08', 'Writing The Future', '4/4/2015', '8/8/2015'),
	      ('t05', 'c09', 'c10', 'Imperial Tour', '1/5/2015', '5/5/2015');

--Create table bandTour--
CREATE TABLE bandTour
(
  btNum integer NOT NULL PRIMARY KEY,
  aid text references album(aid),
  tid text references tour(tid)
);

INSERT INTO bandTour(btNum, aid, tid)
	VALUES(1, 'a01', 't01'),
	      (2, 'a02', 't01'),
	      (3, 'a03', 't03'),
	      (4, 'a04', 't04'),
	      (5, 'a05', 't02'),
	      (6, 'a06', 't03'),
	      (7, 'a07', 't05'),
	      (8, 'a08', 't05'),
	      (9, 'a09', 't04'),
	      (10, 'a10', 't02');

--Create table award--
CREATE TABLE award
(
  awid text NOT NULL PRIMARY KEY,
  awardName character(50),
  awardYear integer
);

INSERT INTO award(awid, awardName, awardYear)
	VALUES('aw01', 'Best Spring Album', 2015),
	      ('aw02', 'Best Metal Album', 2014),
	      ('aw03', 'Best Hardcore Album', 2013),
	      ('aw04', 'Best Alternative Album', 2010),
	      ('aw05', 'Best Electronic Album', 2011);

--Create table awardWinner
CREATE TABLE awardWinner
(
  awNum integer NOT NULL PRIMARY KEY,
  awid text references award(awid),
  aid text references album(aid)
);

INSERT INTO awardWinner(awNum, awid, aid)
	VALUES(1, 'aw01', 'a01'),
	      (2, 'aw02', 'a02'),
	      (3, 'aw03', 'a03'),
	      (4, 'aw04', 'a04'),
	      (5, 'aw05', 'a05');