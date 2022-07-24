import sqlite3
import pandas as pd
import matplotlib.pyplot as plt

cnx = sqlite3.connect('MusicLeague.db')

query = """
select week, submitter_id, name, artist, title, missed_deadline, voter_id, voter_name, value as num_votes from 
(
	select submission.user_id as submitter_id, week, artist, title, missed_deadline, vote.user_id as voter_id, name as voter_name, submission_id, value from vote
	inner join user on vote.user_id=user.id
	inner join submission on vote.submission_id=submission.id
) inner join user on user.id=submitter_id order by week asc;
"""

df = pd.read_sql_query(query, cnx)

print(df['num_votes'])

df['num_votes'].hist(grid=False, bins=15)
plt.xticks([i for i in range(-10, 11) if i % 2 == 0 ])
plt.show()