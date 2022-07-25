CREATE TABLE user (
    id INTEGER PRIMARY KEY,
   	name TEXT NOT NULL
);

CREATE TABLE submission (
    id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    week INTEGER NOT NULL,
    artist TEXT NOT NULL,
    title TEXT NOT NULL,
    missed_deadline INTEGER NOT NULL
);

CREATE TABLE vote (
    id INTEGER PRIMARY KEY,
    submission_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    value INTEGER NOT NULL
);

INSERT INTO user (id, name)
VALUES
    (1, 'Cole Capsalis'),
    (2, 'Chip M'),
    (3, 'kseniya'),
    (4, 'CharTheLatte'),
    (5, 'TJ Bowen'),
    (6, 'Jeremy Gustine'),
    (7, 'Aaron Knoll'),
    (8, 'Adam Oliver'),
    (9, 'tedpoatsy'),
    (10, 'rtrunck'),
    (11, 'Laura Poatsy');

INSERT INTO submission (id, user_id, week, artist, title, missed_deadline)
VALUES
    -- week 10
    (173, 1, 10, 'The Rosewood Thieves', 'Cold in the Country', 0),
    (172, 2, 10, 'Jared Evan & Statik Selektah', 'Are We Almost There Yet?', 0),
    (171, 4, 10, 'Mike Taylor', 'Magic', 0),
    (170, 2, 10, 'Dae Zhen', 'New Nostalgia', 0),
    (169, 1, 10, 'Merle Haggard', 'Old-Fashioned Love', 0),
    (168, 8, 10, 'Americo', 'Changes', 0),
    (167, 8, 10, 'Americo', 'Shadow', 0),
    (166, 7, 10, 'Terror Pigeon', 'Byoyolo', 0),
    (165, 6, 10, 'Way Out West', 'Norther Lights', 0),
    (164, 7, 10, 'The Shella Divine', 'I''m a Believer', 0),
    (163, 6, 10, 'KLMNT', 'Zouin - Tiger Stripes Remix', 0),
    (162, 4, 10, 'Robert Hallow and the Holy Men', 'The Tumbler', 0),
    (161, 9, 10, 'Zane Christopher', 'Young', 1),
    (160, 9, 10, 'Johann Regaya, ill Fayze, Natalie Burdick', 'Upset Alert', 1),
    (159, 3, 10, 'Lost Youth, Martin Chapman', 'Amorphous', 1),
    (158, 3, 10, 'Fake Fruit', 'No Mutuas', 1),

    -- week 9
    (157, 6, 9, 'Justice', 'Genesis', 0),
    (156, 1, 9, 'Ratatat', 'El Pico', 0),
    (155, 2, 9, 'Brasstracks', 'XO Tour Llif3', 0),
    (154, 5, 9, 'Deadmau5', 'Strobe', 0),
    (153, 3, 9, 'Booker T. & the M.G.''s', 'Green Onions', 0),
    (152, 7, 9, 'Esbjorn Svensson Trio', 'Dodge the Dodo', 0),
    (151, 1, 9, 'Vulfpeck', 'Fugue State', 0),
    (150, 7, 9, 'Squarepusher', 'Stor Eiglass', 0),
    (149, 6, 9, 'Yanni', 'One Man''s Dream', 0),
    (148, 9, 9, 'The Piano Guys', 'The Cello Song', 0),
    (147, 3, 9, 'Gotan Project', 'Santa Maria (Del Buen Ayre)', 0),
    (146, 9, 9, 'The Piano Guys', 'Michael Meets Mozart', 0),
    (145, 10, 9, 'John Williams', 'Theme From Jurassic Park', 0),
    (144, 5, 9, 'Above & Beyond', 'Small Moments', 0),
    (143, 2, 9, 'Freddie Gibbs, Madlib', 'Crime Pays', 0),
    (142, 10, 9, 'Harold Faltermeyer, Steve Stevens', 'Top Gun Anthem', 0),

    -- week 8
    (141, 6, 8, 'Destiny''s Child', 'Survivor', 0),
    (140, 6, 8, 'No Doubt', 'Don''t Speak', 0),
    (139, 3, 8, 'CeeLo Green', 'Fuck You', 0),
    (138, 5, 8, 'Halsey', 'Without Me', 0),
    (137, 1, 8, 'Miike Snow', 'Song For No One', 0),
    (136, 7, 8, 'Mitski', 'The Only Heartbreaker', 0),
    (135, 7, 8, 'Robyn', 'Dancing On My Own', 0),
    (134, 1, 8, 'Mahalia', 'I Wish I Missed My Ex', 0),
    (133, 2, 8, 'Big Sean, E-40', 'I Don''t Fuck With You', 0),
    (132, 3, 8, 'The All-American Rejects', 'Gives You Hell', 0),
    (131, 8, 8, 'U2', 'I Still Haven''t Found What I''m Looking For', 0),
    (130, 8, 8, 'U2', 'With Or Without You', 0),
    (129, 2, 8, 'Pink', 'So What', 0),
    (128, 5, 8, 'Britney Spears', 'Stronger', 0),
    (127, 4, 8, 'Bastille', 'Good Grief', 0),
    (126, 4, 8, 'Bear Attack!', 'Carnivore', 0),

    -- week 7
    (125, 3, 7, 'Weezer', 'Pork and Beans', 0),
    (124, 6, 7, 'Weird Al Yankovic', 'Eat It', 0),
    (123, 10, 7, 'Lil Wayne, Static Major', 'Lollipop', 0),
    (122, 10, 7, 'Jack Johnson', 'Banana Pancakes', 0),
    (121, 4, 7, 'Subwoolfer', 'Give That Wolf a Banana', 0),
    (120, 9, 7, 'In the Valley Below', 'Peaches', 0),
    (119, 2, 7, 'Glass Animals', 'Tangerine', 0),
    (118, 6, 7, 'Glass Animals', 'Pork Soda', 0),
    (117, 2, 7, 'Berhana', 'Health Food', 0),
    (116, 3, 7, 'Def Leppard', 'Pour Some Sugar On Me', 0),
    (115, 4, 7, 'The Wiggles', 'Fruit Salad', 0),
    (114, 1, 7, 'Presidents of the USA', 'Peaches', 0),
    (113, 5, 7, 'Harry Styles', 'Watermelon Sugar', 0),
    (112, 5, 7, 'Don McLean', 'American Pie', 0),
    (111, 9, 7, 'The 1975', 'Chocolate', 0),
    (110, 1, 7, 'The Brothers Johnson', 'Strawberry Letter 23', 0),
    (109, 11, 7, 'DNCE', 'Cake by the Ocean', 1),
    (108, 7, 7, 'Moxy Fruvous', 'Johnny Saucep''n', 1),
    (107, 8, 7, 'DJ Chipman', 'Peanut butter jelly', 1),
    (105, 7, 7, '2 Skinnee J''s', 'BBQ', 1),
    (104, 11, 7, 'Meat Loaf', 'I''d Do Anything For Love', 1),
    (103, 8, 7, 'Tim McGraw', 'Something Like That', 1),

    -- week 6
    (102, 4, 6, 'Guns N'' Roses', 'Welcome To The Jungle', 0),
    (101, 5, 6, 'Led Zeppelin', 'Whole Lotta Love', 0),
    (100, 10, 6, 'ZZ Top', 'La Grange', 0),
    (99, 8, 6, 'AC/DC', 'Highway to Hell', 0),
    (98, 5, 6, 'Nirvana', 'Smells Like Teen Spirit', 0),
    (97, 10, 6, 'Bush', 'Glycerine', 0),
    (96, 2, 6, 'blink-182', 'All the Small Things', 0),
    (95, 7, 6, 'Ghost', 'Square Hammer', 0),
    (94, 3, 6, 'Tool', 'The Pot', 0),
    (93, 2, 6, 'Jimmy Eat World', 'The Middle', 0),
    (92, 4, 6, 'Queen', 'Dragon Attack', 0),
    (91, 6, 6, 'Yes', 'I''ve Seen All Good People', 0),
    (90, 8, 6, 'Metallica', 'Ride the Lightning', 0),
    (89, 7, 6, 'Nine Inch Nails', 'March of the Pigs', 0),
    (88, 3, 6, 'Deftones', 'Swerve City', 0),
    (87, 6, 6, 'Pixies', 'Tame', 0),

    -- week 5
    (86, 3, 5, 'Shakira, Wyclef Jean', 'Hips Don''t Lie (feat. Wyclef Jean)', 0),
    (85, 1, 5, 'Olivia Rodrigo', 'good 4 u', 0),
    (84, 9, 5, 'Cascada', 'Everytime We Touch', 0),
    (83, 5, 5, 'Kelis', 'Milkshake', 0),
    (82, 7, 5, 'Donny Osmond', 'I''ll Make a Man Out of You', 0),
    (81, 5, 5, 'Britney Spears', 'Womanizer', 0),
    (80, 6, 5, 'Crazy Town', 'Butterfly', 0),
    (79, 9, 5, 'Disney', 'Where You Are', 0),
    (78, 1, 5, 'Smash Mouth', 'All Star', 0),
    (77, 4, 5, 'Will Wood and the Tapeworms', 'Skeleton Appreciation Day', 0),
    (76, 3, 5, 'Backstreet Boys', 'I Want It That Way', 0),
    (75, 8, 5, 'Salt-N-Pepa', 'Let''s Talk About Sex', 0),
    (74, 4, 5, 'Jasmine Cephas-Jones', 'Say No to This', 0),
    (73, 2, 5, 'Luke Christopher', 'Lot to Learn', 0),
    (72, 10, 5, 'Miley Cyrus', 'Zombie', 0),
    (71, 8, 5, 'DJ Chipman', 'Peanut butter jelly', 0),
    (70, 7, 5, 'Conway Twitty', 'I See the Want in Your Eyes', 0),
    (69, 2, 5, 'KYLE', 'Don''t Wanna Fall In Love', 0),
    (68, 6, 5, 'Savage Garden', 'Truly Madly Deeply', 0),
    (67, 10, 5, 'Taylor Swift', 'All Too Well', 0),

    -- week 4
    (66, 2, 4, 'Bubba Sparxxx, Ying Yang Twins, Mr. Collipark', 'Ms. New Booty', 0),
    (65, 3, 4, 'Blaggards', 'Drunken Sailor', 0),
    (64, 3, 4, 'Alestorm', 'Keelhauled', 0),
    (63, 1, 4, 'Dropkick Murphys', 'I''m Shipping Up To Boston', 0),
    (62, 2, 4, 'Klaus Badelt', 'He''s a Pirate', 0),
    (61, 4, 4, 'Derina Harvey Band', 'The Last Saskatchewan Pirate', 0),
    (60, 4, 4, 'Nathan Evans, 220 KID, Billen Ted', 'Wellerman - Sea Shanty', 0),
    (59, 6, 4, 'Flogging Molly', 'Salty Dog', 0),
    (58, 1, 4, 'Craig Toungate', 'Yo, Ho, Ho! (And a Bottle of Rum)', 0),
    (57, 7, 4, 'Captain Dan & The Scurvy Crew', 'From the Seas to the Streets', 0),
    (56, 6, 4, 'Pirates Of The Mississippi', 'Feed Jake', 0),
    (55, 8, 4, 'Jimmy Buffet', 'A Pirate Looks At Forty', 0),
    (54, 8, 4, 'Kenny Chesney', 'Pirate Flag', 0),
    (53, 7, 4, 'MC Lars, Jaret Reddick', 'Download This Song', 0),
    (52, 9, 4, 'MARUV', 'Siren Song', 1),
    (51, 10, 4, 'Pat Razket', 'Pirate''s Lullaby', 1),
    (50, 9, 4, 'JAY-Z, Swizz Beatz', 'On To The Next One', 1),
    (49, 10, 4, 'Pulshar', 'So Tired', 1),

    -- week 3
    (48, 4, 3, 'Zayde Wolf', 'Top of the World', 0),
    (47, 6, 3, 'Outkast', 'So Fresh, So Clean', 0),
    (46, 8, 3, 'American Authors', 'Best Day Of My Life', 0),
    (45, 7, 3, 'Kamaiyah', 'How Does It Feel', 0),
    (44, 4, 3, 'Queen', 'We Are The Champions', 0),
    (43, 2, 3, 'Kanye West', 'All of the Lights', 0),
    (42, 1, 3, 'Maze & Frankie Beverly', 'Before I Let Go', 0),
    (41, 2, 3, 'Tom Morello, Portugal. The Man, Whethan', 'Every Step That I Take', 0),
    (40, 1, 3, 'Kendrick Lamar', 'Alright', 0),
    (39, 8, 3, 'DJ Khaled', 'All I Do is Win', 0),
    (38, 10, 3, 'Don McLean', 'American Pie', 0),
    (37, 6, 3, 'Right Said Fred', 'I''m Too Sexy', 0),
    (36, 7, 3, 'The Carters', 'Apeshit', 0),
    (35, 10, 3, 'Kenny Chesney', 'American Kids', 0),

    -- week 2
    (34, 8, 2, 'Louis Armstrong', 'La vie en rose', 0),
    (33, 1, 2, 'James Brown', 'It''s A Man''s, Man''s, Man''s World', 0),
    (32, 3, 2, 'Amy Winehouse', 'You KNow I''m No Good', 0),
    (31, 7, 2, 'Moon Hooch', 'Number 9', 0),
    (30, 9, 2, 'The Champs', 'Tequila', 0),
    (29, 4, 2, 'Herb Alpert & The Tijuana Brass', 'Ladyfingers', 0),
    (28, 10, 2, 'Little Big Town', 'Wine, Beer, Whiskey', 0),
    (27, 3, 2, 'Brass Against', 'Killing in the Name', 0),
    (26, 2, 2, 'Charlie Heat, Denzel Curry', 'Aloha', 0),
    (25, 10, 2, 'Jon Pardi', 'Tequila Little Time', 0),
    (24, 9, 2, 'Caught A Ghost', 'Sleeping At Night', 0),
    (23, 2, 2, 'Mac Miller, Anderson Paak', 'Dang! (feat. Anderson .Paak)', 0),
    (22, 7, 2, 'Radiohead', 'National Anthem', 0),
    (21, 8, 2, 'Temptations', 'My Girl', 0),
    (20, 1, 2, 'Tower of Power', 'Can''t You See (You Doin'' Me Wrong)', 0),
    (19, 6, 2, 'Erick E', 'Ya Don''t Stop - Original', 0),
    (18, 4, 2, 'Cody Fry', 'Underground', 0),
    (17, 6, 2, 'The Dandy Warhols', 'Godless', 0),

    -- week 1
    (16, 6, 1, 'Prodigy', 'Firestarter', 0),
    (15, 5, 1, 'Rage Against the Machine', 'Sleep Now In the Fire', 0),
    (14, 4, 1, 'Grand Commander', 'I Hope You Die in a Fire', 0),
    (13, 5, 1, 'Talking Heads', 'Burning Down the House', 0),
    (12, 8, 1, 'Rage Against the Machine', 'Bulls on Parade', 0),
    (11, 8, 1, 'The Offspring', 'Nitro (Youth Energy)', 0),
    (10, 7, 1, 'Electric Six', 'Danger! High Voltage - Soulchild Radio Mix', 0),
    (9, 1, 1, 'Nelly', 'Hot In Herre', 0),
    (8, 7, 1, 'Rae Sremmurd, Lil Jon', 'Set the Roof', 0),
    (7, 3, 1, 'Polo & Pan', 'Gengis - Edit', 0),
    (6, 1, 1, 'SBTRKT, Little Dragon', 'Wildfire', 0),
    (5, 2, 1, 'The Glitch Mob, Aja Volkman', 'Our Demons (feat. Aja Volkman)', 0),
    (4, 2, 1, 'Jauz', 'Alpha', 0),
    (3, 4, 1, 'The Decemberists', 'Everything Is Awful', 0),
    (2, 6, 1, 'Atreyu', 'Deanne The Arsonist', 0),
    (1, 3, 1, 'Ol Dirty Bastard', 'Shimmy Shimmy Ya', 0);


INSERT INTO vote (submission_id, user_id, value)
VALUES
    (173, 6, 3),
    (173, 7, 3),
    (173, 2, 2),
    (173, 8, 1),
    (173, 4, 1),
    (172, 1, 3),
    (172, 4, 1),
    (172, 7, 1),
    (172, 8, -1),
    (171, 8, 4),
    (171, 2, 2),
    (171, 6, -3),
    (170, 8, 2),
    (170, 4, 1),
    (170, 1, 1),
    (170, 7, -2),
    (169, 6, 2),
    (169, 8, 2),
    (169, 7, 1),
    (169, 4, -1),
    (169, 2, -3),
    (168, 6, 2),
    (168, 2, -2),
    (167, 6, 1),
    (167, 2, -1),
    (166, 4, 2),
    (166, 2, 1),
    (166, 6, -1),
    (166, 8, -4),
    (165, 2, 1),
    (165, 4, -3),
    (164, 8, -1),
    (164, 2, -1),
    (164, 4, -2),
    (163, 8, 1),
    (163, 2, 1),
    (163, 4, -3),
    (163, 7, -4),
    (162, 7, 4),
    (162, 2, 2),
    (162, 8, -1),
    (162, 6, -2),
    (162, 1, -10),
    (161, 4, 2),
    (161, 6, 1),
    (161, 2, 1),
    (160, 4, 3),
    (160, 7, 1),
    (160, 8, -1),
    (160, 6, -4),
    (159, 1, 2),
    (159, 6, 1),
    (159, 2, -2),
    (159, 7, -3),
    (158, 1, 4),
    (158, 4, -1),
    (158, 7, -1),
    (158, 2, -1),
    (158, 8, -2),
    (157, 5, 3),
    (157, 1, 3),
    (157, 2, 2),
    (157, 9, 2),
    (157, 7, 2),
    (157, 10, 1),
    (156, 7, 4),
    (156, 6, 2),
    (156, 2, 2),
    (156, 5, 1),
    (156, 3, 1),
    (156, 10, 1),
    (155, 9, 3),
    (155, 5, 1),
    (155, 10, 1),
    (155, 1, 1),
    (154, 9, 2),
    (154, 6, 1),
    (154, 7, 1),
    (154, 10, 1),
    (153, 9, 3),
    (153, 6, 1),
    (153, 10, 1),
    (153, 2, 1),
    (153, 5, -1),
    (152, 1, 4),
    (152, 5, 1),
    (152, 2, 1),
    (152, 10, -1),
    (151, 7, 2),
    (151, 6, 1),
    (151, 5, 1),
    (151, 2, 1),
    (151, 3, -1),
    (150, 6, 2),
    (150, 10, 1),
    (150, 2, 1),
    (149, 5, 3),
    (149, 1, 2),
    (149, 3, 1),
    (149, 10, -1),
    (149, 2, -1),
    (148, 10, 2),
    (148, 6, 1),
    (148, 3, 1),
    (148, 5, -1),
    (147, 10, 1),
    (147, 2, 1),
    (146, 10, 1),
    (146, 2, 1),
    (145, 3, 5),
    (145, 7, -1),
    (145, 5, -1),
    (145, 2, -1),
    (144, 6, 1),
    (144, 7, 1),
    (144, 10, -1),
    (143, 3, 2),
    (143, 7, -1),
    (143, 9, -2),
    (143, 6, -3),
    (142, 6, 1),
    (142, 7, -1),
    (142, 9, -1),
    (142, 2, -1),
    (142, 3, -2),
    (142, 1, -3),
    (141, 8, 3),
    (141, 5, 2),
    (141, 4, 1),
    (141, 3, 1),
    (141, 1, 1),
    (141, 2, 1),
    (140, 7, 5),
    (140, 4, 1),
    (140, 5, 1),
    (140, 3, 1),
    (139, 8, 3),
    (139, 4, 2),
    (139, 6, 1),
    (139, 1, 1),
    (139, 2, 1),
    (139, 7, -2),
    (138, 7, 3),
    (138, 8, 1),
    (138, 3, 1),
    (138, 2, 1),
    (137, 6, 3),
    (137, 2, 2),
    (137, 4, 1),
    (137, 7, 1),
    (137, 3, -2),
    (136, 1, 5),
    (136, 4, 1),
    (136, 8, -1),
    (135, 5, 2),
    (135, 4, 1),
    (135, 3, 1),
    (135, 2, 1),
    (135, 8, -1),
    (134, 3, 2),
    (134, 2, 1),
    (133, 3, 3),
    (133, 1, 2),
    (133, 4, -2),
    (132, 2, 2),
    (132, 4, 1),
    (132, 1, 1),
    (132, 6, -1),
    (132, 5, -1),
    (131, 6, 2),
    (131, 5, 2),
    (131, 4, -1),
    (131, 2, -1),
    (130, 6, 2),
    (130, 5, 2),
    (130, 7, -1),
    (130, 2, -1),
    (129, 8, 2),
    (129, 4, 2),
    (129, 6, 1),
    (129, 3, -1),
    (129, 1, -3),
    (128, 6, 1),
    (128, 8, 1),
    (128, 2, -1),
    (127, 5, 1),
    (127, 2, 1),
    (127, 6, -2),
    (126, 7, 1),
    (126, 3, 1),
    (126, 8, -1),
    (126, 5, -2),
    (125, 2, 3),
    (125, 4, 1),
    (125, 5, 1),
    (125, 10, 1),
    (125, 1, 1),
    (124, 4, 2),
    (124, 5, 2),
    (124, 10, 1),
    (124, 1, 1),
    (124, 9, 1),
    (123, 3, 4),
    (123, 6, 1),
    (123, 2, 1),
    (122, 4, 1),
    (122, 5, 1),
    (122, 1, 1),
    (122, 9, 1),
    (122, 2, 1),
    (121, 1, 3),
    (121, 9, 2),
    (120, 6, 2),
    (120, 5, 1),
    (120, 10, 1),
    (119, 6, 2),
    (119, 5, 2),
    (119, 9, 1),
    (119, 3, -1),
    (118, 4, 1),
    (118, 5, 1),
    (118, 10, 1),
    (118, 2, 1),
    (118, 3, -1),
    (117, 1, 3),
    (116, 4, 1),
    (116, 10, 1),
    (115, 6, 3),
    (115, 10, 1),
    (115, 9, 1),
    (115, 5, -1),
    (115, 1, -3),
    (114, 4, 1),
    (114, 10, 1),
    (114, 3, -1),
    (113, 4, 1),
    (113, 10, 1),
    (113, 2, -1),
    (112, 10, 1),
    (111, 2, 2),
    (111, 10, -1),
    (110, 10, -1),
    (109, 5, 2),
    (109, 3, 2),
    (109, 2, 1),
    (108, 4, 1),
    (108, 1, 1),
    (108, 9, 1),
    (107, 3, 4),
    (107, 6, 2),
    (107, 9, 1),
    (107, 2, 1),
    (107, 5, -1),
    (105, 9, 2),
    (105, 4, 1),
    (105, 5, -1),
    (105, 2, -1),
    (104, 4, -1),
    (104, 10, -1),
    (104, 9, -3),
    (103, 10, 1),
    (103, 2, -1),
    (103, 4, -2),
    (103, 6, -3),
    (102, 5, 3),
    (102, 8, 1),
    (102, 7, 1),
    (102, 3, 1),
    (102, 10, 1),
    (102, 2, 1),
    (101, 2, 2),
    (101, 6, 1),
    (101, 8, 1),
    (101, 4, 1),
    (101, 3, 1),
    (101, 10, 1),
    (100, 6, 3),
    (100, 8, 1),
    (100, 4, 1),
    (100, 2, 1),
    (99, 4, 2),
    (99, 2, 2),
    (99, 3, 1),
    (99, 10, 1),
    (99, 7, -1),
    (98, 8, 2),
    (98, 10, 2),
    (98, 6, 1),
    (98, 2, 1),
    (98, 7, -1),
    (97, 5, 3),
    (97, 8, 2),
    (97, 7, 2),
    (97, 3, -1),
    (97, 2, -1),
    (96, 4, 2),
    (96, 8, 1),
    (96, 7, 1),
    (96, 3, 1),
    (96, 10, 1),
    (96, 5, -2),
    (95, 6, 2),
    (95, 3, 2),
    (95, 4, 1),
    (95, 10, -1),
    (94, 7, 3),
    (94, 5, 2),
    (94, 8, 1),
    (94, 4, 1),
    (94, 10, -1),
    (94, 6, -3),
    (93, 4, 2),
    (93, 6, 1),
    (93, 8, 1),
    (93, 10, 1),
    (93, 7, -1),
    (93, 3, -1),
    (92, 5, 2),
    (92, 10, 1),
    (92, 2, 1),
    (92, 8, -1),
    (91, 3, 2),
    (91, 10, 1),
    (91, 4, -1),
    (90, 7, 2),
    (90, 3, 1),
    (90, 2, -1),
    (89, 3, 1),
    (89, 2, 1),
    (89, 8, -1),
    (88, 6, 2),
    (88, 2, 1),
    (88, 4, -1),
    (88, 10, -1),
    (87, 7, 1),
    (87, 10, 1),
    (87, 2, -1),
    (87, 4, -1),
    (87, 5, -1),
    (87, 3, -1),
    (87, 8, -1),
    (86, 5, 4),
    (86, 8, 3),
    (86, 6, 2),
    (86, 9, 1),
    (86, 2, 1),
    (86, 4, 1),
    (86, 7, 1),
    (86, 10, 1),
    (85, 7, 4),
    (85, 9, 2),
    (85, 4, 1),
    (85, 10, 1),
    (85, 2, 1),
    (84, 7, 2),
    (84, 5, 2),
    (84, 3, 2),
    (84, 2, 2),
    (84, 4, 1),
    (84, 10, -1),
    (83, 3, 2),
    (83, 6, 2),
    (83, 2, 1),
    (83, 8, 1),
    (83, 4, 1),
    (83, 10, 1),
    (83, 9, -1),
    (82, 1, 5),
    (82, 4, 1),
    (82, 3, 1),
    (82, 9, 1),
    (82, 2, 1),
    (82, 6, -1),
    (82, 8, -1),
    (82, 5, -1),
    (81, 6, 2),
    (81, 9, 2),
    (81, 8, 1),
    (81, 3, 1),
    (81, 10, 1),
    (81, 1, -3),
    (80, 8, 2),
    (80, 4, 1),
    (80, 2, 1),
    (79, 1, 3),
    (79, 7, 2),
    (79, 10, 1),
    (79, 6, -1),
    (79, 5, -1),
    (78, 6, 2),
    (78, 4, 1),
    (78, 3, 1),
    (78, 2, -1),
    (77, 1, 2),
    (77, 2, 2),
    (77, 10, 1),
    (77, 6, -1),
    (77, 8, -1),
    (76, 6, 1),
    (76, 8, 1),
    (76, 4, 1),
    (76, 7, 1),
    (76, 5, -1),
    (76, 2, -1),
    (75, 6, 1),
    (75, 3, 1),
    (75, 10, 1),
    (75, 9, -1),
    (74, 10, 1),
    (74, 2, 1),
    (73, 4, 1),
    (73, 10, 1),
    (72, 9, 2),
    (71, 3, 2),
    (71, 4, 1),
    (71, 7, -2),
    (70, 10, 1),
    (70, 4, -1),
    (69, 5, 2),
    (69, 4, -1),
    (69, 10, -1),
    (68, 8, 2),
    (68, 3, -1),
    (68, 10, -1),
    (68, 9, -1),
    (67, 5, 2),
    (67, 9, 2),
    (67, 2, -1),
    (67, 4, -1),
    (67, 7, -1),
    (67, 8, -1),
    (67, 3, -2),
    (66, 6, 10),
    (66, 1, 3),
    (66, 8, -1),
    (66, 7, -1),
    (66, 3, -1),
    (65, 1, 4),
    (65, 8, 2),
    (65, 4, 2),
    (65, 2, 1),
    (64, 7, 4),
    (64, 8, 2),
    (64, 4, 1),
    (63, 4, 2),
    (63, 8, 1),
    (63, 7, 1),
    (63, 3, 1),
    (63, 2, 1),
    (62, 1, 3),
    (62, 4, 2),
    (62, 8, 1),
    (61, 7, 4),
    (61, 8, 2),
    (60, 3, 3),
    (60, 2, 2),
    (59, 8, 1),
    (59, 4, 1),
    (59, 3, 1),
    (58, 3, 2),
    (58, 4, 1),
    (57, 2, 3),
    (56, 3, 1),
    (56, 2, -1),
    (55, 7, -2),
    (54, 3, -1),
    (54, 2, -1),
    (54, 6, -3),
    (53, 4, -1),
    (53, 2, -1),
    (53, 8, -2),
    (53, 1, -3),
    (52, 4, 1),
    (52, 7, 1),
    (52, 3, 1),
    (52, 2, 1),
    (51, 3, 1),
    (51, 2, 1),
    (50, 2, 1),
    (50, 4, -1),
    (49, 8, 1),
    (49, 4, -1),
    (49, 3, -1),
    (48, 7, 4),
    (48, 8, 3),
    (48, 6, 2),
    (48, 10, 1),
    (48, 2, 1),
    (47, 1, 4),
    (47, 2, 2),
    (47, 4, 1),
    (47, 7, 1),
    (47, 10, 1),
    (47, 8, -1),
    (46, 4, 3),
    (46, 6, 1),
    (46, 7, 1),
    (46, 10, 1),
    (46, 2, 1),
    (45, 6, 2),
    (45, 8, 2),
    (45, 1, 2),
    (45, 2, 2),
    (45, 10, -1),
    (44, 6, 3),
    (44, 10, 2),
    (44, 1, 1),
    (43, 8, 2),
    (43, 7, 2),
    (43, 10, 1),
    (43, 4, -1),
    (42, 6, 1),
    (42, 4, 1),
    (42, 10, 1),
    (42, 2, 1),
    (42, 8, -1),
    (41, 8, 1),
    (41, 4, 1),
    (41, 10, 1),
    (40, 7, 2),
    (40, 6, 1),
    (40, 2, 1),
    (40, 10, -1),
    (39, 4, 2),
    (39, 1, 2),
    (39, 10, 1),
    (39, 2, 1),
    (39, 6, -2),
    (39, 7, -3),
    (38, 4, 2),
    (38, 8, -1),
    (38, 2, -1),
    (37, 8, 1),
    (37, 10, 1),
    (37, 2, 1),
    (37, 4, -1),
    (37, 1, -3),
    (36, 8, 1),
    (36, 4, -1),
    (36, 10, -1),
    (35, 1, 1),
    (35, 6, -1),
    (35, 2, -2),
    (34, 7, 2),
    (34, 1, 2),
    (34, 6, 2),
    (34, 4, 2),
    (34, 9, 1),
    (34, 3, 1),
    (34, 10, 1),
    (34, 2, -1),
    (33, 4, 2),
    (33, 7, 2),
    (33, 2, 1),
    (33, 3, 1),
    (33, 10, 1),
    (33, 8, 1),
    (33, 9, -1),
    (32, 1, 3),
    (32, 6, 1),
    (32, 10, 1),
    (32, 9, 1),
    (32, 2, 1),
    (31, 10, 2),
    (31, 9, 2),
    (31, 6, 1),
    (31, 8, 1),
    (31, 2, 1),
    (30, 8, 3),
    (30, 3, 2),
    (30, 1, 2),
    (30, 10, 1),
    (30, 6, 1),
    (30, 2, -1),
    (30, 4, -1),
    (29, 3, 3),
    (29, 6, 1),
    (29, 10, 1),
    (29, 2, 1),
    (28, 8, 2),
    (28, 7, 2),
    (28, 4, 1),
    (28, 2, 1),
    (27, 8, 2),
    (27, 4, 2),
    (27, 2, 2),
    (27, 10, 1),
    (27, 9, 1),
    (27, 6, -1),
    (27, 7, -2),
    (26, 6, 1),
    (26, 4, 1),
    (26, 7, 1),
    (26, 3, 1),
    (26, 10, -1),
    (25, 9, 2),
    (25, 8, 1),
    (25, 7, 1),
    (25, 2, 1),
    (25, 6, -1),
    (25, 3, -1),
    (24, 4, 1),
    (24, 7, 1),
    (24, 2, 1),
    (23, 1, 2),
    (23, 3, 1),
    (23, 9, 1),
    (23, 8, -1),
    (22, 6, 2),
    (22, 3, 1),
    (22, 9, 1),
    (22, 1, -2),
    (21, 6, 1),
    (21, 10, 1),
    (20, 4, 1),
    (20, 7, 1),
    (20, 8, -1),
    (20, 10, -1),
    (19, 2, 1),
    (19, 4, -1),
    (19, 9, -2),
    (18, 10, 1),
    (18, 9, 1),
    (18, 6, -1),
    (18, 7, -1),
    (18, 1, -1),
    (18, 3, -2),
    (17, 1, 1),
    (17, 8, -1),
    (17, 4, -1),
    (17, 10, -1),
    (17, 2, -1),
    (16, 8, 4),
    (16, 4, 2),
    (16, 2, 2),
    (16, 7, 1),
    (16, 3, 1),
    (15, 1, 3),
    (15, 3, 2),
    (15, 6, 1),
    (15, 4, 1),
    (15, 7, 1),
    (15, 2, 1),
    (14, 7, 3),
    (14, 1, 3),
    (14, 6, 1),
    (14, 2, 1),
    (13, 4, 2),
    (13, 6, 2),
    (13, 8, 1),
    (13, 7, 1),
    (13, 3, 1),
    (13, 1, 1),
    (13, 2, -1),
    (12, 7, 3),
    (12, 3, 3),
    (12, 2, 1),
    (12, 4, -1),
    (12, 5, -1),
    (11, 6, 1),
    (11, 3, 1),
    (11, 1, 1),
    (11, 2, 1),
    (10, 6, 2),
    (10, 4, 2),
    (10, 1, 1),
    (10, 8, -1),
    (9, 4, 2),
    (9, 3, 2),
    (9, 6, 1),
    (9, 7, -1),
    (9, 2, -1),
    (8, 6, 1),
    (8, 4, 1),
    (8, 2, 1),
    (8, 3, -1),
    (7, 5, 2),
    (7, 8, 1),
    (7, 2, 1),
    (7, 6, -1),
    (7, 7, -1),
    (6, 5, 3),
    (6, 2, 1),
    (6, 6, -1),
    (6, 3, -1),
    (5, 5, 3),
    (5, 6, -1),
    (5, 4, -1),
    (5, 3, -1),
    (4, 5, 2),
    (4, 8, 1),
    (4, 6, -1),
    (4, 4, -1),
    (4, 7, -1),
    (4, 3, -1),
    (3, 8, 3),
    (3, 1, 1),
    (3, 6, -1),
    (3, 7, -1),
    (3, 5, -1),
    (3, 2, -3),
    (2, 7, 1),
    (2, 2, 1),
    (2, 8, -1),
    (2, 4, -1),
    (2, 3, -1),
    (2, 5, -3),
    (1, 6, 1),
    (1, 4, -1),
    (1, 7, -1),
    (1, 8, -3),
    (1, 1, -5);


CREATE VIEW valid_vote AS
SELECT vote.id, vote.submission_id, vote.user_id, vote.value
FROM vote
INNER JOIN submission on submission.id=vote.submission_id
WHERE missed_deadline=0 or (missed_deadline=1 and value < 0);

CREATE TABLE weekly_vote_default (
    id INTEGER PRIMARY KEY,
    week INTEGER NOT NULL,
    votes_in_week INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    name TEXT NOT NULL
);
-- TODO: this should be able to be done better with a for loop
INSERT INTO weekly_vote_default (week, votes_in_week, user_id, name)
VALUES
    -- week 0 is added here just to help with the bar chart race and bump chart
    (0, 0, 1, 'Cole Capsalis'),
    (0, 0, 2, 'Chip M'),
    (0, 0, 3, 'kseniya'),
    (0, 0, 4, 'CharTheLatte'),
    (0, 0, 5, 'TJ Bowen'),
    (0, 0, 6, 'Jeremy Gustine'),
    (0, 0, 7, 'Aaron Knoll'),
    (0, 0, 8, 'Adam Oliver'),
    (0, 0, 9, 'tedpoatsy'),
    (0, 0, 10, 'rtrunck'),
    (0, 0, 11, 'Laura Poatsy'),
    (1, 0, 1, 'Cole Capsalis'),
    (1, 0, 2, 'Chip M'),
    (1, 0, 3, 'kseniya'),
    (1, 0, 4, 'CharTheLatte'),
    (1, 0, 5, 'TJ Bowen'),
    (1, 0, 6, 'Jeremy Gustine'),
    (1, 0, 7, 'Aaron Knoll'),
    (1, 0, 8, 'Adam Oliver'),
    (1, 0, 9, 'tedpoatsy'),
    (1, 0, 10, 'rtrunck'),
    (1, 0, 11, 'Laura Poatsy'),
    (2, 0, 1, 'Cole Capsalis'),
    (2, 0, 2, 'Chip M'),
    (2, 0, 3, 'kseniya'),
    (2, 0, 4, 'CharTheLatte'),
    (2, 0, 5, 'TJ Bowen'),
    (2, 0, 6, 'Jeremy Gustine'),
    (2, 0, 7, 'Aaron Knoll'),
    (2, 0, 8, 'Adam Oliver'),
    (2, 0, 9, 'tedpoatsy'),
    (2, 0, 10, 'rtrunck'),
    (2, 0, 11, 'Laura Poatsy'),
    (3, 0, 1, 'Cole Capsalis'),
    (3, 0, 2, 'Chip M'),
    (3, 0, 3, 'kseniya'),
    (3, 0, 4, 'CharTheLatte'),
    (3, 0, 5, 'TJ Bowen'),
    (3, 0, 6, 'Jeremy Gustine'),
    (3, 0, 7, 'Aaron Knoll'),
    (3, 0, 8, 'Adam Oliver'),
    (3, 0, 9, 'tedpoatsy'),
    (3, 0, 10, 'rtrunck'),
    (3, 0, 11, 'Laura Poatsy'),
    (4, 0, 1, 'Cole Capsalis'),
    (4, 0, 2, 'Chip M'),
    (4, 0, 3, 'kseniya'),
    (4, 0, 4, 'CharTheLatte'),
    (4, 0, 5, 'TJ Bowen'),
    (4, 0, 6, 'Jeremy Gustine'),
    (4, 0, 7, 'Aaron Knoll'),
    (4, 0, 8, 'Adam Oliver'),
    (4, 0, 9, 'tedpoatsy'),
    (4, 0, 10, 'rtrunck'),
    (4, 0, 11, 'Laura Poatsy'),
    (5, 0, 1, 'Cole Capsalis'),
    (5, 0, 2, 'Chip M'),
    (5, 0, 3, 'kseniya'),
    (5, 0, 4, 'CharTheLatte'),
    (5, 0, 5, 'TJ Bowen'),
    (5, 0, 6, 'Jeremy Gustine'),
    (5, 0, 7, 'Aaron Knoll'),
    (5, 0, 8, 'Adam Oliver'),
    (5, 0, 9, 'tedpoatsy'),
    (5, 0, 10, 'rtrunck'),
    (5, 0, 11, 'Laura Poatsy'),
    (6, 0, 1, 'Cole Capsalis'),
    (6, 0, 2, 'Chip M'),
    (6, 0, 3, 'kseniya'),
    (6, 0, 4, 'CharTheLatte'),
    (6, 0, 5, 'TJ Bowen'),
    (6, 0, 6, 'Jeremy Gustine'),
    (6, 0, 7, 'Aaron Knoll'),
    (6, 0, 8, 'Adam Oliver'),
    (6, 0, 9, 'tedpoatsy'),
    (6, 0, 10, 'rtrunck'),
    (6, 0, 11, 'Laura Poatsy'),
    (7, 0, 1, 'Cole Capsalis'),
    (7, 0, 2, 'Chip M'),
    (7, 0, 3, 'kseniya'),
    (7, 0, 4, 'CharTheLatte'),
    (7, 0, 5, 'TJ Bowen'),
    (7, 0, 6, 'Jeremy Gustine'),
    (7, 0, 7, 'Aaron Knoll'),
    (7, 0, 8, 'Adam Oliver'),
    (7, 0, 9, 'tedpoatsy'),
    (7, 0, 10, 'rtrunck'),
    (7, 0, 11, 'Laura Poatsy'),
    (8, 0, 1, 'Cole Capsalis'),
    (8, 0, 2, 'Chip M'),
    (8, 0, 3, 'kseniya'),
    (8, 0, 4, 'CharTheLatte'),
    (8, 0, 5, 'TJ Bowen'),
    (8, 0, 6, 'Jeremy Gustine'),
    (8, 0, 7, 'Aaron Knoll'),
    (8, 0, 8, 'Adam Oliver'),
    (8, 0, 9, 'tedpoatsy'),
    (8, 0, 10, 'rtrunck'),
    (8, 0, 11, 'Laura Poatsy'),
    (9, 0, 1, 'Cole Capsalis'),
    (9, 0, 2, 'Chip M'),
    (9, 0, 3, 'kseniya'),
    (9, 0, 4, 'CharTheLatte'),
    (9, 0, 5, 'TJ Bowen'),
    (9, 0, 6, 'Jeremy Gustine'),
    (9, 0, 7, 'Aaron Knoll'),
    (9, 0, 8, 'Adam Oliver'),
    (9, 0, 9, 'tedpoatsy'),
    (9, 0, 10, 'rtrunck'),
    (9, 0, 11, 'Laura Poatsy'),
    (10, 0, 1, 'Cole Capsalis'),
    (10, 0, 2, 'Chip M'),
    (10, 0, 3, 'kseniya'),
    (10, 0, 4, 'CharTheLatte'),
    (10, 0, 5, 'TJ Bowen'),
    (10, 0, 6, 'Jeremy Gustine'),
    (10, 0, 7, 'Aaron Knoll'),
    (10, 0, 8, 'Adam Oliver'),
    (10, 0, 9, 'tedpoatsy'),
    (10, 0, 10, 'rtrunck'),
    (10, 0, 11, 'Laura Poatsy');

CREATE VIEW weekly_vote AS
SELECT week, SUM(votes) as votes_in_week, user_id, name FROM
(
	SELECT submission.user_id, name, week, artist, title, submission_id, SUM(value) as votes
	FROM submission
	INNER JOIN valid_vote on submission.id=valid_vote.submission_id
	INNER JOIN user on user.id=submission.user_id
	GROUP BY submission_id
) GROUP BY user_id, week
ORDER BY week, votes_in_week desc, user_id;

CREATE VIEW weekly_vote_cool AS
SELECT A.week, A.votes_in_week, A.user_id, A.name
FROM weekly_vote_default A
LEFT JOIN weekly_vote B
     ON A.week = B.week and A.user_id=B.user_id
WHERE B.week IS NULL and B.user_id IS NULL
UNION
SELECT * FROM weekly_vote
ORDER BY week, votes_in_week DESC, user_id;

CREATE VIEW weekly_ranking AS
SELECT *, RANK() OVER (PARTITION BY week ORDER BY running_score desc) AS rank
FROM
(
	SELECT week, name, votes_in_week, SUM(votes_in_week)
	OVER (PARTITION BY user_id ORDER BY user_id ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS running_score
	FROM weekly_vote_cool
	ORDER BY week, running_score DESC
);

CREATE VIEW all_votes_with_default AS
SELECT 1 as user_id, COALESCE(value, 0) as value FROM submission
LEFT OUTER JOIN vote ON vote.submission_id = submission.id and vote.user_id=1
UNION ALL
SELECT 2 as user_id, COALESCE(value, 0) as value FROM submission
LEFT OUTER JOIN vote ON vote.submission_id = submission.id and vote.user_id=2
UNION ALL
SELECT 3 as user_id, COALESCE(value, 0) as value FROM submission
LEFT OUTER JOIN vote ON vote.submission_id = submission.id and vote.user_id=3
UNION ALL
SELECT 4 as user_id, COALESCE(value, 0) as value FROM submission
LEFT OUTER JOIN vote ON vote.submission_id = submission.id and vote.user_id=4
UNION ALL
SELECT 5 as user_id, COALESCE(value, 0) as value FROM submission
LEFT OUTER JOIN vote ON vote.submission_id = submission.id and vote.user_id=5
UNION ALL
SELECT 6 as user_id, COALESCE(value, 0) as value FROM submission
LEFT OUTER JOIN vote ON vote.submission_id = submission.id and vote.user_id=6
UNION ALL
SELECT 7 as user_id, COALESCE(value, 0) as value FROM submission
LEFT OUTER JOIN vote ON vote.submission_id = submission.id and vote.user_id=7
UNION ALL
SELECT 8 as user_id, COALESCE(value, 0) as value FROM submission
LEFT OUTER JOIN vote ON vote.submission_id = submission.id and vote.user_id=8
UNION ALL
SELECT 9 as user_id, COALESCE(value, 0) as value FROM submission
LEFT OUTER JOIN vote ON vote.submission_id = submission.id and vote.user_id=9
UNION ALL
SELECT 10 as user_id, COALESCE(value, 0) as value FROM submission
LEFT OUTER JOIN vote ON vote.submission_id = submission.id and vote.user_id=10
UNION ALL
SELECT 11 as user_id, COALESCE(value, 0) as value FROM submission
LEFT OUTER JOIN vote ON vote.submission_id = submission.id and vote.user_id=11;