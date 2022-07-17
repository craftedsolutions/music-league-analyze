CREATE TABLE user (
    id INTEGER PRIMARY KEY,
   	name TEXT NOT NULL,
);

CREATE TABLE submission (
    id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    week INTEGER NOT NULL,
    artist TEXT NOT NULL,
    title TEXT NOT NULL,
);

CREATE TABLE vote (
    id INTEGER PRIMARY KEY,
    submission_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    value INTEGER NOT NULL,
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

INSERT INTO submission (id, user_id, week, artist, title)
VALUES
    -- week 10
    (173, 'cole', 1, 'The Rosewood Thieves', 'Cold in the Country'),
        (173, Jeremy Gustine, 3)
        (173, Aaron Knoll, 3)
        (173, Chip M, 2)
        (173, Adam Oliver, 1)
        (173, CharTheLatte, 1)
    (172, 'chip', 1, 'Jared Evan & Statik Selektah', 'Are We Almost There Yet?'),
        (172, Cole Capsalis, 3)
        (172, CharTheLatte, 1)
        (172, Aaron Knoll, 1)
        (172, Adam Oliver -1)
    (171, 'charlotte', 1, 'Mike Taylor', 'Magic'),
        (171, Adam Oliver, 4)
        (171, Chip M, 2)
        (171, Jeremy Gustine -3)
    (170, 'chip', 1, 'Dae Zhen', 'New Nostalgia'),
        (170, Adam Oliver, 2)
        (170, CharTheLatte, 1)
        (170, Cole Capsalis, 1)
        (170, Aaron Knoll -2)
    (169, 'cole', 1, 'Merle Haggard', 'Old-Fashioned Love'),
        (169, Jeremy Gustine, 2)
        (169, Adam Oliver, 2)
        (169, Aaron Knoll, 1)
        (169, CharTheLatte -1)
        (169, Chip M -3)
    (168, 'adam', 1, 'Americo', 'Changes'),
        (168, Jeremy Gustine, 2)
        (168, Chip M -2)
    (167, 'adam', 1, 'Americo', 'Shadow'),
        (167, Jeremy Gustine, 1)
        (167, Chip M -1)
    (166, 'aaron', 1, 'Terror Pigeon', 'Byoyolo'),
        (166, CharTheLatte, 2)
        (166, Chip M, 1)
        (166, Jeremy Gustine -1)
        (166, Adam Oliver -4)
    (165, 'jeremy', 1, 'Way Out West', 'Norther Lights'),
        (165, Chip M, 1)
        (165, CharTheLatte -3)
    (164, 'aaron', 1, 'The Shella Divine', 'I\'m a Believer'),
        (164, Adam Oliver -1)
        (164, Chip M -1)
        (164, CharTheLatte -2)
    (163, 'jeremy', 1, 'KLMNT', 'Zouin - Tiger Stripes Remix'),
        (163, Adam Oliver, 1)
        (163, Chip M, 1)
        (163, CharTheLatte -3)
        (163, Aaron Knoll -4)
    (162, 'charlotte', 1, 'Robert Hallow and the Holy Men', 'The Tumbler'),
        (162, Aaron Knoll, 4)
        (162, Chip M, 2)
        (162, Adam Oliver -1)
        (162, Jeremy Gustine -2)
        (162, Cole Capsalis -10)

    (161, 'ted', 1, 'Zane Christopher', 'Young'),
        (161, CharTheLatte, 2)
        (161, Jeremy Gustine, 1)
        (161, Chip M, 1)
    (160, 'ted', 1, 'Johann Regaya, ill Fayze, Natalie Burdick', 'Upset Alert'),
        (160, CharTheLatte, 3)
        (160, Aaron Knoll, 1)
        (160, Adam Oliver -1)
        (160, Jeremy Gustine -4)
    (159, 'kseniya', 1, 'Lost Youth, Martin Chapman', 'Amorphous'),
        (159, Cole Capsalis, 2)
        (159, Jeremy Gustine, 1)
        (159, Chip M -2)
        (159, Aaron Knoll -3)
    (158, 'kseniya', 1, 'Fake Fruit', 'No Mutuas'),
        (158, Cole Capsalis, 4)
        (158, CharTheLatte -1)
        (158, Aaron Knoll -1)
        (158, Chip M -1)
        (158, Adam Oliver -2)

    -- week 9
    (157, 'jeremy', 1, 'Justice', 'Genesis'),
        (157, TJ Bowen, 3)
        (157, Cole Capsalis, 3)
        (157, Chip M, 2)
        (157, tedpoatsy, 2)
        (157, Aaron Knoll, 2)
        (157, rtrunck, 1)
    (156, 'cole', 1, 'Ratatat', 'El Pico'),
        (156, Aaron Knoll, 4)
        (156, Jeremy Gustine, 2)
        (156, Chip M, 2)
        (156, TJ Bowen, 1)
        (156, kseniya, 1)
        (156, rtrunck, 1)
    (155, 'chip', 1, 'Brasstracks', 'XO Tour Llif3'),
        (155, tedpoatsy, 3)
        (155, TJ Bowen, 1)
        (155, rtrunck, 1)
        (155, Cole Capsalis, 1)
    (154, 'tj', 1, 'Deadmau5', 'Strobe'),
        (154, tedpoatsy, 2)
        (154, Jeremy Gustine, 1)
        (154, Aaron Knoll, 1)
        (154, rtrunck, 1)
    (153, 'kseniya', 1, 'Booker T. & the M.G.\'s', 'Green Onions'),
        (153, tedpoatsy, 3)
        (153, Jeremy Gustine, 1)
        (153, rtrunck, 1)
        (153, Chip M, 1)
        (153, TJ Bowen -1)
    (152, 'aaron', 1, 'Esbjorn Svensson Trio', 'Dodge the Dodo'),
        (152, Cole Capsalis, 4)
        (152, TJ Bowen, 1)
        (152, Chip M, 1)
        (152, rtrunck -1)
    (151, 'cole', 1, 'Vulfpeck', 'Fugue State'),
        (151, Aaron Knoll, 2)
        (151, Jeremy Gustine, 1)
        (151, TJ Bowen, 1)
        (151, Chip M, 1)
        (151, kseniya -1)
    (150, 'aaron', 1, 'Squarepusher', 'Stor Eiglass'),
        (150, Jeremy Gustine, 2)
        (150, rtrunck, 1)
        (150, Chip M, 1)
    (149, 'jeremy', 1, 'Yanni', 'One Man\'s Dream'),
        (149, TJ Bowen, 3)
        (149, Cole Capsalis, 2)
        (149, kseniya, 1)
        (149, rtrunck -1)
        (149, Chip M -1)
    (148, 'ted', 1, 'The Piano Guys', 'The Cello Song'),
        (148, rtrunck, 2)
        (148, Jeremy Gustine, 1)
        (148, kseniya, 1)
        (148, TJ Bowen -1)
    (147, 'kseniya', 1, 'Gotan Project', 'Santa Maria (Del Buen Ayre)'),
        (147, rtrunck, 1)
        (147, Chip M, 1)
    (146, 'ted', 1, 'The Piano Guys', 'Michael Meets Mozart'),
        (146, rtrunck, 1)
        (146, Chip M, 1)
    (145, 'ryan', 1, 'John Williams', 'Theme From Jurassic Park'),
        (145, kseniya, 5)
        (145, Aaron Knoll -1)
        (145, TJ Bowen -1)
        (145, Chip M -1)
    (144, 'tj', 1, 'Above & Beyond', 'Small Moments'),
        (144, Jeremy Gustine, 1)
        (144, Aaron Knoll, 1)
        (144, rtrunck -1)
    (143, 'chip', 1, 'Freddie Gibbs, Madlib', 'Crime Pays'),
        (143, kseniya, 2)
        (143, Aaron Knoll -1)
        (143, tedpoatsy -2)
        (143, Jeremy Gustine -3)
    (142, 'ryan', 1, 'Harold Faltermeyer, Steve Stevens', 'Top Gun Anthem'),
        (142, Jeremy Gustine, 1)
        (142, Aaron Knoll -1)
        (142, tedpoatsy -1)
        (142, Chip M -1)
        (142, kseniya -2)
        (142, Cole Capsalis -3)

    -- week 8
    (141, 'jeremy', 1, 'Destiny\'s Child', 'Survivor'),
        (141, Adam Oliver, 3)
        (141, TJ Bowen, 2)
        (141, CharTheLatte, 1)
        (141, kseniya, 1)
        (141, Cole Capsalis, 1)
        (141, Chip M, 1)
    (140, 'jeremy', 1, 'No Doubt', 'Don\'t Speak'),
        (140, Aaron Knoll, 5)
        (140, CharTheLatte, 1)
        (140, TJ Bowen, 1)
        (140, kseniya, 1)
    (139, 'kseniya', 1, 'CeeLo Green', 'Fuck You'),
        (139, Adam Oliver, 3)
        (139, CharTheLatte, 2)
        (139, Jeremy Gustine, 1)
        (139, Cole Capsalis, 1)
        (139, Chip M, 1)
        (139, Aaron Knoll -2)
    (138, 'tj', 1, 'Halsey', 'Without Me'),
        (138, Aaron Knoll, 3)
        (138, Adam Oliver, 1)
        (138, kseniya, 1)
        (138, Chip M, 1)
    (137, 'cole', 1, 'Miike Snow', 'Song For No One'),
        (137, Jeremy Gustine, 3)
        (137, Chip M, 2)
        (137, CharTheLatte, 1)
        (137, Aaron Knoll, 1)
        (137, kseniya -2)
    (136, 'aaron', 1, 'Mitski', 'The Only Heartbreaker'),
        (136, Cole Capsalis, 5)
        (136, CharTheLatte, 1)
        (136, Adam Oliver -1)
    (135, 'aaron', 1, 'Robyn', 'Dancing On My Own'),
        (135, TJ Bowen, 2)
        (135, CharTheLatte, 1)
        (135, kseniya, 1)
        (135, Chip M, 1)
        (135, Adam Oliver -1)
    (134, 'cole', 1, 'Mahalia', 'I Wish I Missed My Ex'),
        (134, kseniya, 2)
        (134, Chip M, 1)
    (133, 'chip', 1, 'Big Sean, E-40', 'I Don\'t Fuck With You'),
        (133, kseniya, 3)
        (133, Cole Capsalis, 2)
        (133, CharTheLatte -2)
    (132, 'kseniya', 1, 'The All-American Rejects', 'Gives You Hell'),
        (132, Chip M, 2)
        (132, CharTheLatte, 1)
        (132, Cole Capsalis, 1)
        (132, Jeremy Gustine -1)
        (132, TJ Bowen -1)
    (131, 'adam', 1, 'U2', 'I Still Haven\'t Found What I\'m Looking For'),
        (131, Jeremy Gustine, 2)
        (131, TJ Bowen, 2)
        (131, CharTheLatte -1)
        (131, Chip M -1)
    (130, 'adam', 1, 'U2', 'With Or Without You'),
        (130, Jeremy Gustine, 2)
        (130, TJ Bowen, 2)
        (130, Aaron Knoll -1)
        (130, Chip M -1)
    (129, 'chip', 1, 'Pink', 'So What'),
        (129, Adam Oliver, 2)
        (129, CharTheLatte, 2)
        (129, Jeremy Gustine, 1)
        (129, kseniya -1)
        (129, Cole Capsalis -3)
    (128, 'tj', 1, 'Britney Spears', 'Stronger'),
        (128, Jeremy Gustine, 1)
        (128, Adam Oliver, 1)
        (128, Chip M -1)
    (127, 'charlotte', 1, 'Bastille', 'Good Grief'),
        (127, TJ Bowen, 1)
        (127, Chip M, 1)
        (127, Jeremy Gustine -2)
    (126, 'charlotte', 1, 'Bear Attack!', 'Carnivore'),
        (126, Aaron Knoll, 1)
        (126, kseniya, 1)
        (126, Adam Oliver -1)
        (126, TJ Bowen -2)

    -- week 7
    (125, 'kseniya', 1, 'Weezer', 'Pork and Beans'),
        (125, Chip M, 3)
        (125, CharTheLatte, 1)
        (125, TJ Bowen, 1)
        (125, rtrunck, 1)
        (125, Cole Capsalis, 1)
    (124, 'jeremy', 1, 'Weird Al Yankovic', 'Eat It'),
        (124, CharTheLatte, 2)
        (124, TJ Bowen, 2)
        (124, rtrunck, 1)
        (124, Cole Capsalis, 1)
        (124, tedpoatsy, 1)
    (123, 'ryan', 1, 'Lil Wayne, Static Major', 'Lollipop'),
        (123, kseniya, 4)
        (123, Jeremy Gustine, 1)
        (123, Chip M, 1)
    (122, 'ryan', 1, 'Jack Johnson', 'Banana Pancakes'),
        (122, CharTheLatte, 1)
        (122, TJ Bowen, 1)
        (122, Cole Capsalis, 1)
        (122, tedpoatsy, 1)
        (122, Chip M, 1)
    (121, 'charlotte', 1, 'Subwoolfer', 'Give That Wolf a Banana'),
        (121, Cole Capsalis, 3)
        (121, tedpoatsy, 2)
    (120, 'ted', 1, 'In the Valley Below', 'Peaches'),
        (120, Jeremy Gustine, 2)
        (120, TJ Bowen, 1)
        (120, rtrunck, 1)
    (119, 'chip', 1, 'Glass Animals', 'Tangerine'),
        (119, Jeremy Gustine, 2)
        (119, TJ Bowen, 2)
        (119, tedpoatsy, 1)
        (119, kseniya -1)
    (118, 'jeremy', 1, 'Glass Animals', 'Pork Soda'),
        (118, CharTheLatte, 1)
        (118, TJ Bowen, 1)
        (118, rtrunck, 1)
        (118, Chip M, 1)
        (118, kseniya -1)
    (117, 'chip', 1, 'Berhana', 'Health Food'),
        (117, Cole Capsalis, 3)
    (116, 'kseniya', 1, 'Def Leppard', 'Pour Some Sugar On Me'),
        (16, CharTheLatte, 1)
        (16, rtrunck, 1)
    (115, 'charlotte', 1, 'The Wiggles', 'Fruit Salad'),
        (115, Jeremy Gustine, 3)
        (115, rtrunck, 1)
        (115, tedpoatsy, 1)
        (115, TJ Bowen -1)
        (115, Cole Capsalis -3)
    (114, 'cole', 1, 'Presidents of the USA', 'Peaches'),
        (114, CharTheLatte, 1)
        (114, rtrunck, 1)
        (114, kseniya -1)
    (113, 'tj', 1, 'Harry Styles', 'Watermelon Sugar'),
        (113, CharTheLatte, 1)
        (113, rtrunck, 1)
        (113, Chip M -1)
    (112, 'tj', 1, 'Don McLean', 'American Pie'),
        (112, rtrunck, 1)
    (111, 'ted', 1, 'The 1975', 'Chocolate'),
        (111, Chip M, 2)
        (111, rtrunck -1)
    (110, 'cole', 1, 'The Brothers Johnson', 'Strawberry Letter 23'),
        (110, rtrunck -1)
    (109, 'laura', 1, 'DNCE', 'Cake by the Ocean'),
        (109, TJ Bowen, 2)
        (109, kseniya, 2)
        (109, Chip M, 1)
    (108, 'aaron', 1, 'Moxy Fruvous', 'Johnny Saucep\'n'),
        (108, CharTheLatte, 1)
        (108, Cole Capsalis, 1)
        (108, tedpoatsy, 1)
    (107, 'adam', 1, 'DJ Chipman', 'Peanut butter jelly'),
        (107, kseniya, 4)
        (107, Jeremy Gustine, 2)
        (107, tedpoatsy, 1)
        (107, Chip M, 1)
        (107, TJ Bowen -1)

    (105, 'aaron', 1, '2 Skinnee J\'s', 'BBQ'),
        (105, tedpoatsy, 2)
        (105, CharTheLatte, 1)
        (105, TJ Bowen -1)
        (105, Chip M -1)
    (104, 'laura', 1, 'Meat Loaf', 'I\'d Do Anything For Love'),
        (104, CharTheLatte -1)
        (104, rtrunck -1)
        (104, tedpoatsy -3)
    (103, 'adam', 1, 'Tim McGraw', 'Something Like That'),
        (103, rtrunck, 1)
        (103, Chip M -1)
        (103, CharTheLatte -2)
        (103, Jeremy Gustine -3)

    -- week 6
    (102, 'charlotte', 1, 'Guns N\' Roses', 'Welcome To The Jungle'),
        (102, TJ Bowen, 3)
        (102, Adam Oliver, 1)
        (102, Aaron Knoll, 1)
        (102, kseniya, 1)
        (102, rtrunck, 1)
        (102, Chip M, 1)
    (101, 'tj', 1, 'Led Zeppelin', 'Whole Lotta Love'),
        (101, Chip M, 2)
        (101, Jeremy Gustine, 1)
        (101, Adam Oliver, 1)
        (101, CharTheLatte, 1)
        (101, kseniya, 1)
        (101, rtrunck, 1)
    (100, 'ryan', 1, 'ZZ Top', 'La Grange'),
        (100, Jeremy Gustine, 3)
        (100, Adam Oliver, 1)
        (100, CharTheLatte, 1)
        (100, Chip M, 1)
    (99, 'adam', 1, 'AC/DC', 'Highway to Hell'),
        (99, CharTheLatte, 2)
        (99, Chip M, 2)
        (99, kseniya, 1)
        (99, rtrunck, 1)
        (99, Aaron Knoll -1)
    (98, 'tj', 1, 'Nirvana', 'Smells Like Teen Spirit'),
        (98, Adam Oliver, 2)
        (98, rtrunck, 2)
        (98, Jeremy Gustine, 1)
        (98, Chip M, 1)
        (98, Aaron Knoll -1)
    (97, 'ryan', 1, 'Bush', 'Glycerine'),
        (97, TJ Bowen, 3)
        (97, Adam Oliver, 2)
        (97, Aaron Knoll, 2)
        (97, kseniya -1)
        (97, Chip M -1)
    (96, 'chip', 1, 'blink-182', 'All the Small Things'),
        (96, CharTheLatte, 2)
        (96, Adam Oliver, 1)
        (96, Aaron Knoll, 1)
        (96, kseniya, 1)
        (96, rtrunck, 1)
        (96, TJ Bowen -2)
    (95, 'aaron', 1, 'Ghost', 'Square Hammer'),
        (95, Jeremy Gustine, 2)
        (95, kseniya, 2)
        (95, CharTheLatte, 1)
        (95, rtrunck -1)
    (94, 'kseniya', 1, 'Tool', 'The Pot'),
        (94, Aaron Knoll, 3)
        (94, TJ Bowen, 2)
        (94, Adam Oliver, 1)
        (94, CharTheLatte, 1)
        (94, rtrunck -1)
        (94, Jeremy Gustine -3)
    (93, 'chip', 1, 'Jimmy Eat World', 'The Middle'),
        (93, CharTheLatte, 2)
        (93, Jeremy Gustine, 1)
        (93, Adam Oliver, 1)
        (93, rtrunck, 1)
        (93, Aaron Knoll -1)
        (93, kseniya -1)
    (92, 'charlotte', 1, 'Queen', 'Dragon Attack'),
        (92, TJ Bowen, 2)
        (92, rtrunck, 1)
        (92, Chip M, 1)
        (92, Adam Oliver -1)
    (91, 'jeremy', 1, 'Yes', 'I\'ve Seen All Good People'),
        (91, kseniya, 2)
        (91, rtrunck, 1)
        (91, CharTheLatte -1)
    (90, 'adam', 1, 'Metallica', 'Ride the Lightning'),
        (90, Aaron Knoll, 2)
        (90, kseniya, 1)
        (90, Chip M -1)
    (89, 'aaron', 1, 'Nine Inch Nails', 'March of the Pigs'),
        (89, kseniya, 1)
        (89, Chip M, 1)
        (89, Adam Oliver -1)
    (88, 'kseniya', 1, 'Deftones', 'Swerve City'),
        (88, Jeremy Gustine, 2)
        (88, Chip M, 1)
        (88, CharTheLatte -1)
        (88, rtrunck -1)
    (87, 'jeremy', 1, 'Pixies', 'Tame'),
        (87, Aaron Knoll, 1)
        (87, rtrunck, 1)
        (87, Chip M -1)
        (87, CharTheLatte -1)
        (87, TJ Bowen -1)
        (87, kseniya -1)
        (87, Adam Oliver -1)

    -- week 5
    (86, 'kseniya', 1, 'Shakira, Wyclef Jean', 'Hips Don\'t Lie (feat. Wyclef Jean)'),
        (86, TJ Bowen, 4)
        (86, Adam Oliver, 3)
        (86, Jeremy Gustine, 2)
        (86, tedpoatsy, 1)
        (86, Chip M, 1)
        (86, CharTheLatte, 1)
        (86, Aaron Knoll, 1)
        (86, rtrunck, 1)
    (85, 'cole', 1, 'Olivia Rodrigo', 'good 4 u'),
        (85, Aaron Knoll, 4)
        (85, tedpoatsy, 2)
        (85, CharTheLatte, 1)
        (85, rtrunck, 1)
        (85, Chip M, 1)
    (84, 'ted', 1, 'Cascada', 'Everytime We Touch'),
        (84, Aaron Knoll, 2)
        (84, TJ Bowen, 2)
        (84, kseniya, 2)
        (84, Chip M, 2)
        (84, CharTheLatte, 1)
        (84, rtrunck -1)
    (83, 'tj', 1, 'Kelis', 'Milkshake'),
        (83, kseniya, 2)
        (83, Jeremy Gustine, 2)
        (83, Chip M, 1)
        (83, Adam Oliver, 1)
        (83, CharTheLatte, 1)
        (83, rtrunck, 1)
        (83, tedpoatsy -1)
    (82, 'aaron', 1, 'Donny Osmond', 'I\'ll Make a Man Out of You'),
        (82, Cole Capsalis, 5)
        (82, CharTheLatte, 1)
        (82, kseniya, 1)
        (82, tedpoatsy, 1)
        (82, Chip M, 1)
        (82, Jeremy Gustine -1)
        (82, Adam Oliver -1)
        (82, TJ Bowen -1)
    (81, 'tj', 1, 'Britney Spears', 'Womanizer'),
        (81, Jeremy Gustine, 2)
        (81, tedpoatsy, 2)
        (81, Adam Oliver, 1)
        (81, kseniya, 1)
        (81, rtrunck, 1)
        (81, Cole Capsalis -3)
    (80, 'jeremy', 1, 'Crazy Town', 'Butterfly'),
        (80, Adam Oliver, 2)
        (80, CharTheLatte, 1)
        (80, Chip M, 1)
    (79, 'ted', 1, 'Disney', 'Where You Are'),
        (79, Cole Capsalis, 3)
        (79, Aaron Knoll, 2)
        (79, rtrunck, 1)
        (79, Jeremy Gustine -1)
        (79, TJ Bowen -1)
    (78, 'cole', 1, 'Smash Mouth', 'All Star'),
        (78, Jeremy Gustine, 2)
        (78, CharTheLatte, 1)
        (78, kseniya, 1)
        (78, Chip M -1)
    (77, 'charlotte', 1, 'Will Wood and the Tapeworms', 'Skeleton Appreciation Day'),
        (77, Cole Capsalis, 2)
        (77, Chip M, 2)
        (77, rtrunck, 1)
        (77, Jeremy Gustine -1)
        (77, Adam Oliver -1)
    (76, 'kseniya', 1, 'Backstreet Boys', 'I Want It That Way'),
        (76, Jeremy Gustine, 1)
        (76, Adam Oliver, 1)
        (76, CharTheLatte, 1)
        (76, Aaron Knoll, 1)
        (76, TJ Bowen -1)
        (76, Chip M -1)
    (75, 'adam', 1, 'Salt-N-Pepa', 'Let\'s Talk About Sex'),
        (75, Jeremy Gustine, 1)
        (75, kseniya, 1)
        (75, rtrunck, 1)
        (75, tedpoatsy -1)
    (74, 'charlotte', 1, 'Jasmine Cephas-Jones', 'Say No to This'),
        (74, rtrunck, 1)
        (74, Chip M, 1)
    (73, 'chip', 1, 'Luke Christopher', 'Lot to Learn'),
        (73, CharTheLatte, 1)
        (73, rtrunck, 1)
    (72, 'ryan', 1, 'Miley Cyrus', 'Zombie'),
        (72, tedpoatsy, 2)
    (71, 'adam', 1, 'DJ Chipman', 'Peanut butter jelly'),
        (71, kseniya, 2)
        (71, CharTheLatte, 1)
        (71, Aaron Knoll -2)
    (70, 'aaron', 1, 'Conway Twitty', 'I See the Want in Your Eyes'),
        (70, rtrunck, 1)
        (70, CharTheLatte -1)
    (69, 'chip', 1, 'KYLE', 'Don\'t Wanna Fall In Love'),
        (69, TJ Bowen, 2)
        (69, CharTheLatte -1)
        (69, rtrunck -1)
    (68, 'jeremy', 1, 'Savage Garden', 'Truly Madly Deeply'),
        (68, Adam Oliver, 2)
        (68, kseniya -1)
        (68, rtrunck -1)
        (68, tedpoatsy -1)
    (67, 'ryan', 1, 'Taylor Swift', 'All Too Well'),
        (67, TJ Bowen, 2)
        (67, tedpoatsy, 2)
        (67, Chip M -1)
        (67, CharTheLatte -1)
        (67, Aaron Knoll -1)
        (67, Adam Oliver -1)
        (67, kseniya -2)

    -- week 4
    (66, 'chip', 1, 'Bubba Sparxxx, Ying Yang Twins, Mr. Collipark', 'Ms. New Booty'),
        (66, Jeremy Gustine, 10)
        (66, Cole Capsalis, 3)
        (66, Adam Oliver, -1)
        (66, Aaron Knoll, -1)
        (66, kseniya, -1)
    (65, 'kseniya', 1, 'Blaggards', 'Drunken Sailor'),
        (65, Cole Capsalis, 4)
        (65, Adam Oliver, 2)
        (65, CharTheLatte, 2)
        (65, Chip M, 1)
    (64, 'kseniya', 1, 'Alestorm', 'Keelhauled'),
        (64, Aaron Knoll, 4)
        (64, Adam Oliver, 2)
        (64, CharTheLatte, 1)
    (63, 'cole', 1, 'Dropkick Murphys', 'I\'m Shipping Up To Boston'),
        (63, CharTheLatte, 2)
        (63, Adam Oliver, 1)
        (63, Aaron Knoll, 1)
        (63, kseniya, 1)
        (63, Chip M, 1)
    (62, 'chip', 1, 'Klaus Badelt', 'He\'s a Pirate'),
        (62, Cole Capsalis, 3)
        (62, CharTheLatte, 2)
        (62, Adam Oliver, 1)
    (61, 'charlotte', 1, 'Derina Harvey Band', 'The Last Saskatchewan Pirate'),
        (61, Aaron Knoll, 4)
        (61, Adam Oliver, 2)
    (60, 'charlotte', 1, 'Nathan Evans, 220 KID, Billen Ted', 'Wellerman - Sea Shanty'),
        (60, kseniya, 3)
        (60, Chip M, 2)
    (59, 'jeremy', 1, 'Flogging Molly', 'Salty Dog'),
        (59, Adam Oliver, 1)
        (59, CharTheLatte, 1)
        (59, kseniya, 1)
    (58, 'cole', 1, 'Craig Toungate', 'Yo, Ho, Ho! (And a Bottle of Rum)'),
        (58, kseniya, 2)
        (58, CharTheLatte, 1)
    (57, 'aaron', 1, 'Captain Dan & The Scurvy Crew', 'From the Seas to the Streets'),
        (57, Chip M, 3)
    (56, 'jeremy', 1, 'Pirates Of The Mississippi', 'Feed Jake'),
        (56, kseniya, 1)
        (56, Chip M, -1)
    (55, 'adam', 1, 'Jimmy Buffet', 'A Pirate Looks At Forty'),
        (55, Aaron Knoll, -2)
    (54, 'adam', 1, 'Kenny Chesney', 'Pirate Flag'),
        (54, kseniya, -1)
        (54, Chip M, -1)
        (54, Jeremy Gustine, -3)
    (53, 'aaron', 1, 'MC Lars, Jaret Reddick', 'Download This Song'),
        (53, CharTheLatte, -1)
        (53, Chip M, -1)
        (53, Adam Oliver, -2)
        (53, Cole Capsalis, -3)
    (52, 'ted', 1, 'MARUV', 'Siren Song'),
        (52, CharTheLatte, 1)
        (52, Aaron Knoll, 1)
        (52, kseniya, 1)
        (52, Chip M, 1)
    (51, 'ryan', 1, 'Pat Razket', 'Pirate\'s Lullaby'),
        (51, kseniya, 1)
        (51, Chip M, 1)
    (50, 'ted', 1, 'JAY-Z, Swizz Beatz', 'On To The Next One'),
        (50, Chip M, 1)
        (50, CharTheLatte, -1)
    (49, 'ryan', 1, 'Pulshar', 'So Tired'),
        (49, Adam Oliver, 1)
        (49, CharTheLatte, -1)
        (49, kseniya, -1)

    -- week 3
    (48, 'charlotte', 1, 'Zayde Wolf', 'Top of the World'),
        (48, Aaron Knoll, 4)
        (48, Adam Oliver, 3)
        (48, Jeremy Gustine, 2)
        (48, rtrunck, 1)
        (48, Chip M, 1)
    (47, 'jeremy', 1, 'Outkast', 'So Fresh, So Clean'),
        (47, Cole Capsalis, 4)
        (47, Chip M, 2)
        (47, CharTheLatte, 1)
        (47, Aaron Knoll, 1)
        (47, rtrunck, 1)
        (47, Adam Oliver, -1)
    (46, 'adam', 1, 'American Authors', 'Best Day Of My Life'),
        (46, CharTheLatte, 3)
        (46, Jeremy Gustine, 1)
        (46, Aaron Knoll, 1)
        (46, rtrunck, 1)
        (46, Chip M, 1)
    (45, 'aaron', 1, 'Kamaiyah', 'How Does It Feel'),
        (45, Jeremy Gustine, 2)
        (45, Adam Oliver, 2)
        (45, Cole Capsalis, 2)
        (45, Chip M, 2)
        (45, rtrunck, -1)
    (44, 'charlotte', 1, 'Queen', 'We Are The Champions'),
        (44, Jeremy Gustine, 3)
        (44, rtrunck, 2)
        (44, Cole Capsalis, 1)
    (43, 'chip', 1, 'Kanye West', 'All of the Lights'),
        (43, Adam Oliver, 2)
        (43, Aaron Knoll, 2)
        (43, rtrunck, 1)
        (43, CharTheLatte, -1)
    (42, 'cole', 1, 'Maze & Frankie Beverly', 'Before I Let Go'),
        (42, Jeremy Gustine, 1)
        (42, CharTheLatte, 1)
        (42, rtrunck, 1)
        (42, Chip M, 1)
        (42, Adam Oliver, -1)
    (41, 'chip', 1, 'Tom Morello, Portugal. The Man, Whethan', 'Every Step That I Take'),
        (41, Adam Oliver, 1)
        (41, CharTheLatte, 1)
        (41, rtrunck, 1)
    (40, 'cole', 1, 'Kendrick Lamar', 'Alright'),
        (40, Aaron Knoll, 2)
        (40, Jeremy Gustine, 1)
        (40, Chip M, 1)
        (40, rtrunck, -1)
    (39, 'adam', 1, 'DJ Khaled', 'All I Do is Win'),
        (39, CharTheLatte, 2)
        (39, Cole Capsalis, 2)
        (39, rtrunck, 1)
        (39, Chip M, 1)
        (39, Jeremy Gustine, -2)
        (39, Aaron Knoll, -3)
    (38, 'ryan', 1, 'Don McLean', 'American Pie'),
        (38, CharTheLatte, 2)
        (38, Adam Oliver, -1)
        (38, Chip M, -1)
    (37, 'jeremy', 1, 'Right Said Fred', 'I\'m Too Sexy'),
        (37, Adam Oliver, 1)
        (37, rtrunck, 1)
        (37, Chip M, 1)
        (37, CharTheLatte, -1)
        (37, Cole Capsalis, -3)
    (36, 'aaron', 1, 'The Carters', 'Apeshit'),
        (36, Adam Oliver, 1)
        (36, CharTheLatte, -1)
        (36, rtrunck, -1)
    (35, 'ryan', 1, 'Kenny Chesney', 'American Kids'),
        (35, Cole Capsalis, 1)
        (35, Jeremy Gustine, -1)
        (35, Chip M, -2)

    -- week 2
    (34, 'adam', 1, 'Louis Armstrong', 'La vie en rose'),
        (34, Aaron Knoll, 2)
        (34, Cole Capsalis, 2)
        (34, Jeremy Gustine, 2)
        (34, CharTheLatte, 2)
        (34, tedpoatsy, 1)
        (34, kseniya, 1)
        (34, rtrunck, 1)
        (34, Chip M, -1)
    (33, 'cole', 1, 'James Brown', 'It\'s A Man\'s, Man\'s, Man\'s World'),
        (33, CharTheLatte, 2)
        (33, Aaron Knoll, 2)
        (33, Chip M, 1)
        (33, kseniya, 1)
        (33, rtrunck, 1)
        (33, Adam Oliver, 1)
        (33, tedpoatsy, -1)
    (32, 'kseniya', 1, 'Amy Winehouse', 'You KNow I\'m No Good'),
        (32, Cole Capsalis, 3)
        (32, Jeremy Gustine, 1)
        (32, rtrunck, 1)
        (32, tedpoatsy, 1)
        (32, Chip M, 1)
    (31, 'aaron', 1, 'Moon Hooch', 'Number 9'),
        (31, rtrunck, 2)
        (31, tedpoatsy, 2)
        (31, Jeremy Gustine, 1)
        (31, Adam Oliver, 1)
        (31, Chip M, 1)
    (30, 'ted', 1, 'The Champs', 'Tequila'),
        (30, Adam Oliver, 3)
        (30, kseniya, 2)
        (30, Cole Capsalis, 2)
        (30, rtrunck, 1)
        (30, Jeremy Gustine, 1)
        (30, Chip M, -1)
        (30, CharTheLatte, -1)
    (29, 'charlotte', 1, 'Herb Alpert & The Tijuana Brass', 'Ladyfingers'),
        (29, kseniya, 3)
        (29, Jeremy Gustine, 1)
        (29, rtrunck, 1)
        (29, Chip M, 1)
    (28, 'ryan', 1, 'Little Big Town', 'Wine, Beer, Whiskey'),
        (28, Adam Oliver, 2)
        (28, Aaron Knoll, 2)
        (28, CharTheLatte, 1)
        (28, Chip M, 1)
    (27, 'kseniya', 1, 'Brass Against', 'Killing in the Name'),
        (27, Adam Oliver, 2)
        (27, CharTheLatte, 2)
        (27, Chip M, 2)
        (27, rtrunck, 1)
        (27, tedpoatsy, 1)
        (27, Jeremy Gustine, -1)
        (27, Aaron Knoll, -2)
    (26, 'chip', 1, 'Charlie Heat, Denzel Curry', 'Aloha'),
        (26, Jeremy Gustine, 1)
        (26, CharTheLatte, 1)
        (26, Aaron Knoll, 1)
        (26, kseniya, 1)
        (26, rtrunck, -1)
    (25, 'ryan', 1, 'Jon Pardi', 'Tequila Little Time'),
        (25, tedpoatsy, 2)
        (25, Adam Oliver, 1)
        (25, Aaron Knoll, 1)
        (25, Chip M, 1)
        (25, Jeremy Gustine, -1)
        (25, kseniya, -1)
    (24, 'ted', 1, 'Caught A Ghost', 'Sleeping At Night'),
        (24, CharTheLatte, 1)
        (24, Aaron Knoll, 1)
        (24, Chip M, 1)
    (23, 'chip', 1, 'Mac Miller, Anderson Paak', 'Dang! (feat. Anderson .Paak)'),
        (23, Cole Capsalis, 2)
        (23, kseniya, 1)
        (23, tedpoatsy, 1)
        (23, Adam Oliver, -1)
    (22, 'aaron', 1, 'Radiohead', 'National Anthem'),
        (22, Jeremy Gustine, 2)
        (22, kseniya, 1)
        (22, tedpoatsy, 1)
        (22, Cole Capsalis, -2)
    (21, 'adam', 1, 'Temptations', 'My Girl'),
        (21, Jeremy Gustine, 1)
        (21, rtrunck, 1)
    (20, 'cole', 1, 'Tower of Power', 'Can\'t You See (You Doin\' Me Wrong)'),
        (20, CharTheLatte, 1)
        (20, Aaron Knoll, 1)
        (20, Adam Oliver, -1)
        (20, rtrunck, -1)
    (19, 'jeremy', 1, 'Erick E', 'Ya Don\'t Stop - Original'),
        (19, Chip M, 1)
        (19, CharTheLatte, -1)
        (19, tedpoatsy, -2)
    (18, 'charlotte', 1, 'Cody Fry', 'Underground'),
        (18, rtrunck, 1)
        (18, tedpoatsy, 1)
        (18, Jeremy Gustine, -1)
        (18, Aaron Knoll, -1)
        (18, Cole Capsalis, -1)
        (18, kseniya, -2)
    (17, 'jeremy', 1, 'The Dandy Warhols', 'Godless'),
        (17, 'Cole Capsalis', 1)
        (17, 'Adam Oliver', -1)
        (17, 'CharTheLatte', -1)
        (17, 'rtrunck', -1)
        (17, 'Chip M', -1)

    -- week 1
    (16, 'jeremy', 1, 'Prodigy', 'Firestarter'),
        (16, 'adam', 4)
        (16, 'charlotte', 2)
        (16, 'chip', 2)
        (16, 'aaron', 1)
        (16, 'kseniya', 1)

    (15, 'tj', 1, 'Rage Against the Machine', 'Sleep Now In the Fire'),
        (15, 'cole', 3)
        (15, 'kseniya', 2)
        (15, 'jeremy', 1)
        (15, 'charlotte', 1)
        (15, 'aaron', 1)
        (15, 'chip', 1)

    (14, 'charlotte', 1, 'Grand Commander', 'I Hope You Die in a Fire'),
        (14, 'aaron', 3)
        (14, 'cole', 3)
        (14, 'jeremy', 1)
        (14, 'chip', 1)

    (13, 'tj', 1, 'Talking Heads', 'Burning Down the House'),
        (13, 'charlotte', 2)
        (13, 'jeremy', 2)
        (13, 'adam', 1)
        (13, 'aaron', 1)
        (13, 'kseniya', 1)
        (13, 'cole', 1)
        (13, 'chip', -1)

    (12, 'adam', 1, 'Rage Against the Machine', 'Bulls on Parade'),
        (12, 'aaron', 3)
        (12, 'kseniya', 3)
        (12, 'chip', 1)
        (12, 'charlotte', -1)
        (12, 'tj', -1)

    (11, 'adam', 1, 'The Offspring', 'Nitro (Youth Energy)'),
        (11, 'jeremy', 1)
        (11, 'kseniya', 1)
        (11, 'cole', 1)
        (11, 'chip', 1)

    (10, 'aaron', 1, 'Electric Six', 'Danger! High Voltage - Soulchild Radio Mix'),
        (10, 'jeremy', 2)
        (10, 'charlotte', 2)
        (10, 'cole', 1)
        (10, 'adam', -1)

    (9, 'cole', 1, 'Nelly', 'Hot In Herre'),
        (9, 'charlotte', 2)
        (9, 'kseniya', 2)
        (9, 'jeremy', 1)
        (9, 'aaron', -1)
        (9, 'chip', -1)

    (8, 'aaron', 1, 'Rae Sremmurd, Lil Jon', 'Set the Roof'),
        (8, 'jeremy', 1)
        (8, 'charlotte', 1)
        (8, 'chip', 1)
        (8, 'kseniya', -1)

    (7, 'kseniya', 1, 'Polo & Pan', 'Gengis - Edit'),
        (7, 'tj', 2)
        (7, 'adam', 1)
        (7, 'chip', 1)
        (7, 'jeremy', -1)
        (7, 'aaron', -1)

    (6, 'cole', 1, 'SBTRKT, Little Dragon', 'Wildfire'),
        (6, 'tj', 3)
        (6, 'chip', 1)
        (6, 'jeremy', -1)
        (6, 'kseniya', -1)

    (5, 'chip', 1, 'The Glitch Mob, Aja Volkman', 'Our Demons (feat. Aja Volkman)'),
        (5, 'tj', 3)
        (5, 'jeremy', -1)
        (5, 'charlotte', -1)
        (5, 'kseniya', -1)

    (4, 'chip', 1, 'Jauz', 'Alpha'),
        (4, 'tj', 2)
        (4, 'adam', 1)
        (4, 'jeremy', -1)
        (4, 'charlotte', -1)
        (4, 'aaron', -1)
        (4, 'kseniya', -1)

    (3, 'charlotte', 1, 'The Decemberists', 'Everything Is Awful'),
        (3, 'adam', 3)
        (3, 'cole', 1)
        (3, 'jeremy', -1)
        (3, 'aaron', -1)
        (3, 'tj', -1)
        (3, 'chip', -3)

    (2, 'jeremy', 1, 'Atreyu', 'Deanne The Arsonist'),
        (2, 'aaron', 1)
        (2, 'chip', 1)
        (2, 'adam', -1)
        (2, 'charlotte', -1)
        (2, 'kseniya', -1)
        (2, 'tj', -3)


    (1, 'kseniya', 1, 'Ol Dirty Bastard', 'Shimmy Shimmy Ya');
        (1, 'jeremy', 1)
        (1, 'charlotte', -1)
        (1, 'aaron', -1)
        (1, 'adam', -3)
        (1, 'cole', -5)