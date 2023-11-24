CREATE TABLE user (
    id INTEGER PRIMARY KEY,
   	name TEXT NOT NULL
);

CREATE TABLE submission (
    id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    league_num INTEGER NOT NULL,
    week INTEGER NOT NULL,
    artist TEXT NOT NULL,
    title TEXT NOT NULL,
    link TEXT NOT NULL,
    missed_deadline INTEGER NOT NULL
);

CREATE TABLE vote (
    id INTEGER PRIMARY KEY,
    submission_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    value INTEGER NOT NULL
);