CREATE TABLE weekly_vote_default (
    id INTEGER PRIMARY KEY,
    week INTEGER NOT NULL,
    votes_in_week INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    name TEXT NOT NULL
);

-- TODO: this should be able to be done better with a for loop
-- week 0 is added here just to help with the bar chart race and bump chart
INSERT INTO weekly_vote_default (week, votes_in_week, user_id, name)
VALUES
    (0, 0, 1, 'CharTheLatte'),
    (0, 0, 2, 'Jeremy Gustine'),
    (0, 0, 3, 'Kyle Brill'),
    (0, 0, 4, 'Aaron Knoll'),
    (0, 0, 5, 'Chip M'),
    (0, 0, 6, 'James Hammond'),
    (0, 0, 7, 'Cappy Hausfeld'),
    (0, 0, 8, 'Matt Markiewicz'),
    (0, 0, 9, 'Adam Oliver'),
    (0, 0, 10, 'jgracie6'),
    (0, 0, 11, 'nat9172'),
    (0, 0, 12, 'kseniya'),
    (0, 0, 13, 'rtrunck'),
    (0, 0, 14, 'Cole Capsalis'),
    (1, 0, 1, 'CharTheLatte'),
    (1, 0, 2, 'Jeremy Gustine'),
    (1, 0, 3, 'Kyle Brill'),
    (1, 0, 4, 'Aaron Knoll'),
    (1, 0, 5, 'Chip M'),
    (1, 0, 6, 'James Hammond'),
    (1, 0, 7, 'Cappy Hausfeld'),
    (1, 0, 8, 'Matt Markiewicz'),
    (1, 0, 9, 'Adam Oliver'),
    (1, 0, 10, 'jgracie6'),
    (1, 0, 11, 'nat9172'),
    (1, 0, 12, 'kseniya'),
    (1, 0, 13, 'rtrunck'),
    (1, 0, 14, 'Cole Capsalis'),
    (2, 0, 1, 'CharTheLatte'),
    (2, 0, 2, 'Jeremy Gustine'),
    (2, 0, 3, 'Kyle Brill'),
    (2, 0, 4, 'Aaron Knoll'),
    (2, 0, 5, 'Chip M'),
    (2, 0, 6, 'James Hammond'),
    (2, 0, 7, 'Cappy Hausfeld'),
    (2, 0, 8, 'Matt Markiewicz'),
    (2, 0, 9, 'Adam Oliver'),
    (2, 0, 10, 'jgracie6'),
    (2, 0, 11, 'nat9172'),
    (2, 0, 12, 'kseniya'),
    (2, 0, 13, 'rtrunck'),
    (2, 0, 14, 'Cole Capsalis'),
    (3, 0, 1, 'CharTheLatte'),
    (3, 0, 2, 'Jeremy Gustine'),
    (3, 0, 3, 'Kyle Brill'),
    (3, 0, 4, 'Aaron Knoll'),
    (3, 0, 5, 'Chip M'),
    (3, 0, 6, 'James Hammond'),
    (3, 0, 7, 'Cappy Hausfeld'),
    (3, 0, 8, 'Matt Markiewicz'),
    (3, 0, 9, 'Adam Oliver'),
    (3, 0, 10, 'jgracie6'),
    (3, 0, 11, 'nat9172'),
    (3, 0, 12, 'kseniya'),
    (3, 0, 13, 'rtrunck'),
    (3, 0, 14, 'Cole Capsalis'),
    (4, 0, 1, 'CharTheLatte'),
    (4, 0, 2, 'Jeremy Gustine'),
    (4, 0, 3, 'Kyle Brill'),
    (4, 0, 4, 'Aaron Knoll'),
    (4, 0, 5, 'Chip M'),
    (4, 0, 6, 'James Hammond'),
    (4, 0, 7, 'Cappy Hausfeld'),
    (4, 0, 8, 'Matt Markiewicz'),
    (4, 0, 9, 'Adam Oliver'),
    (4, 0, 10, 'jgracie6'),
    (4, 0, 11, 'nat9172'),
    (4, 0, 12, 'kseniya'),
    (4, 0, 13, 'rtrunck'),
    (4, 0, 14, 'Cole Capsalis'),
    (5, 0, 1, 'CharTheLatte'),
    (5, 0, 2, 'Jeremy Gustine'),
    (5, 0, 3, 'Kyle Brill'),
    (5, 0, 4, 'Aaron Knoll'),
    (5, 0, 5, 'Chip M'),
    (5, 0, 6, 'James Hammond'),
    (5, 0, 7, 'Cappy Hausfeld'),
    (5, 0, 8, 'Matt Markiewicz'),
    (5, 0, 9, 'Adam Oliver'),
    (5, 0, 10, 'jgracie6'),
    (5, 0, 11, 'nat9172'),
    (5, 0, 12, 'kseniya'),
    (5, 0, 13, 'rtrunck'),
    (5, 0, 14, 'Cole Capsalis'),
    (6, 0, 1, 'CharTheLatte'),
    (6, 0, 2, 'Jeremy Gustine'),
    (6, 0, 3, 'Kyle Brill'),
    (6, 0, 4, 'Aaron Knoll'),
    (6, 0, 5, 'Chip M'),
    (6, 0, 6, 'James Hammond'),
    (6, 0, 7, 'Cappy Hausfeld'),
    (6, 0, 8, 'Matt Markiewicz'),
    (6, 0, 9, 'Adam Oliver'),
    (6, 0, 10, 'jgracie6'),
    (6, 0, 11, 'nat9172'),
    (6, 0, 12, 'kseniya'),
    (6, 0, 13, 'rtrunck'),
    (6, 0, 14, 'Cole Capsalis'),
    (7, 0, 1, 'CharTheLatte'),
    (7, 0, 2, 'Jeremy Gustine'),
    (7, 0, 3, 'Kyle Brill'),
    (7, 0, 4, 'Aaron Knoll'),
    (7, 0, 5, 'Chip M'),
    (7, 0, 6, 'James Hammond'),
    (7, 0, 7, 'Cappy Hausfeld'),
    (7, 0, 8, 'Matt Markiewicz'),
    (7, 0, 9, 'Adam Oliver'),
    (7, 0, 10, 'jgracie6'),
    (7, 0, 11, 'nat9172'),
    (7, 0, 12, 'kseniya'),
    (7, 0, 13, 'rtrunck'),
    (7, 0, 14, 'Cole Capsalis'),
    (8, 0, 1, 'CharTheLatte'),
    (8, 0, 2, 'Jeremy Gustine'),
    (8, 0, 3, 'Kyle Brill'),
    (8, 0, 4, 'Aaron Knoll'),
    (8, 0, 5, 'Chip M'),
    (8, 0, 6, 'James Hammond'),
    (8, 0, 7, 'Cappy Hausfeld'),
    (8, 0, 8, 'Matt Markiewicz'),
    (8, 0, 9, 'Adam Oliver'),
    (8, 0, 10, 'jgracie6'),
    (8, 0, 11, 'nat9172'),
    (8, 0, 12, 'kseniya'),
    (8, 0, 13, 'rtrunck'),
    (8, 0, 14, 'Cole Capsalis'),
    (9, 0, 1, 'CharTheLatte'),
    (9, 0, 2, 'Jeremy Gustine'),
    (9, 0, 3, 'Kyle Brill'),
    (9, 0, 4, 'Aaron Knoll'),
    (9, 0, 5, 'Chip M'),
    (9, 0, 6, 'James Hammond'),
    (9, 0, 7, 'Cappy Hausfeld'),
    (9, 0, 8, 'Matt Markiewicz'),
    (9, 0, 9, 'Adam Oliver'),
    (9, 0, 10, 'jgracie6'),
    (9, 0, 11, 'nat9172'),
    (9, 0, 12, 'kseniya'),
    (9, 0, 13, 'rtrunck'),
    (9, 0, 14, 'Cole Capsalis'),
    (10, 0, 1, 'CharTheLatte'),
    (10, 0, 2, 'Jeremy Gustine'),
    (10, 0, 3, 'Kyle Brill'),
    (10, 0, 4, 'Aaron Knoll'),
    (10, 0, 5, 'Chip M'),
    (10, 0, 6, 'James Hammond'),
    (10, 0, 7, 'Cappy Hausfeld'),
    (10, 0, 8, 'Matt Markiewicz'),
    (10, 0, 9, 'Adam Oliver'),
    (10, 0, 10, 'jgracie6'),
    (10, 0, 11, 'nat9172'),
    (10, 0, 12, 'kseniya'),
    (10, 0, 13, 'rtrunck'),
    (10, 0, 14, 'Cole Capsalis'),
    (11, 0, 1, 'CharTheLatte'),
    (11, 0, 2, 'Jeremy Gustine'),
    (11, 0, 3, 'Kyle Brill'),
    (11, 0, 4, 'Aaron Knoll'),
    (11, 0, 5, 'Chip M'),
    (11, 0, 6, 'James Hammond'),
    (11, 0, 7, 'Cappy Hausfeld'),
    (11, 0, 8, 'Matt Markiewicz'),
    (11, 0, 9, 'Adam Oliver'),
    (11, 0, 10, 'jgracie6'),
    (11, 0, 11, 'nat9172'),
    (11, 0, 12, 'kseniya'),
    (11, 0, 13, 'rtrunck'),
    (11, 0, 14, 'Cole Capsalis'),
    (12, 0, 1, 'CharTheLatte'),
    (12, 0, 2, 'Jeremy Gustine'),
    (12, 0, 3, 'Kyle Brill'),
    (12, 0, 4, 'Aaron Knoll'),
    (12, 0, 5, 'Chip M'),
    (12, 0, 6, 'James Hammond'),
    (12, 0, 7, 'Cappy Hausfeld'),
    (12, 0, 8, 'Matt Markiewicz'),
    (12, 0, 9, 'Adam Oliver'),
    (12, 0, 10, 'jgracie6'),
    (12, 0, 11, 'nat9172'),
    (12, 0, 12, 'kseniya'),
    (12, 0, 13, 'rtrunck'),
    (12, 0, 14, 'Cole Capsalis'),
    (13, 0, 1, 'CharTheLatte'),
    (13, 0, 2, 'Jeremy Gustine'),
    (13, 0, 3, 'Kyle Brill'),
    (13, 0, 4, 'Aaron Knoll'),
    (13, 0, 5, 'Chip M'),
    (13, 0, 6, 'James Hammond'),
    (13, 0, 7, 'Cappy Hausfeld'),
    (13, 0, 8, 'Matt Markiewicz'),
    (13, 0, 9, 'Adam Oliver'),
    (13, 0, 10, 'jgracie6'),
    (13, 0, 11, 'nat9172'),
    (13, 0, 12, 'kseniya'),
    (13, 0, 13, 'rtrunck'),
    (13, 0, 14, 'Cole Capsalis');




