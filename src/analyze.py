import sqlite3
import pandas as pd

cnx = sqlite3.connect('MusicLeague.db')

query = """
select week, name, artist, title, missed_deadline, voter_name, value from 
(
	select submission.user_id as submitter_id, week, artist, title, missed_deadline, name as voter_name, submission_id, value from vote
	inner join user on vote.user_id=user.id
	inner join submission on vote.submission_id=submission.id
) inner join user on user.id=submitter_id order by week asc;
"""

df = pd.read_sql_query(query, cnx)

print(df)