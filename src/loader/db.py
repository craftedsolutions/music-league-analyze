import sqlite3


def create_db_users(users):
    conn = sqlite3.connect('MusicLeague.db')
    c = conn.cursor()
    db_users = []
    for user in users:
        c.execute("INSERT INTO user (name) VALUES (?)", (user,))
        user_id = c.lastrowid
        db_users.append({
            'id': user_id,
            'name': user
        })
    conn.commit()
    conn.close()
    return db_users


def create_db_submissions(submissions):
    conn = sqlite3.connect('MusicLeague.db')
    c = conn.cursor()

    db_submissions = []
    for submission in submissions:
        c.execute(
            "INSERT INTO submission (user_id, title, league_num, week, artist, missed_deadline) VALUES (?, ?, ?, ?, ?, ?)",
            (
                submission['user_id'],
                submission['title'],
                submission['league_num'],
                submission['week'],
                submission['artist'],
                submission['missed_deadline']
            )
        )
        submission_id = c.lastrowid
        db_submissions.append({
            'id': submission_id,
            'user_id': submission['user_id'],
            'title': submission['title'],
            'league_num': submission['league_num'],
            'week': submission['week'],
            'artist': submission['artist'],
            'missed_deadline': submission['missed_deadline']
        })
    conn.commit()
    conn.close()
    return db_submissions


def create_db_votes(votes):
    conn = sqlite3.connect('MusicLeague.db')
    c = conn.cursor()

    db_votes = []
    for vote in votes:
        c.execute(
            "INSERT INTO vote (user_id, submission_id, value) VALUES (?, ?, ?)",
            (
                vote['user_id'],
                vote['submission_id'],
                vote['votes']
            )
        )
        vote_id = c.lastrowid
        db_votes.append({
            'id': vote_id,
            'submission_id': vote['submission_id'],
            'user_id': vote['user_id'],
            'value': vote['votes']
        })
    conn.commit()
    conn.close()
    return db_votes
