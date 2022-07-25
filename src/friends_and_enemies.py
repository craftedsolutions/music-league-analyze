import sqlite3
import pandas as pd
import seaborn as sb
import matplotlib.pyplot as plt

cnx = sqlite3.connect('MusicLeague.db')

query = """
select * from friends_and_enemies;
"""

df = pd.read_sql_query(query, cnx)

df.set_index(['user_name', 'voter_name', 'total_votes'])

df = df.pivot(index='user_name', columns='voter_name', values='total_votes')


print(df)

ax = plt.axes()
hm = sb.heatmap(df,
    xticklabels=df.columns,
    yticklabels=df.columns,
    cmap="YlGnBu",
    annot=True,
    linewidth=0.5
)
hm.set(ylabel='Pick Your Name Here', xlabel='Is This Your Friend or Enemy?')
ax.set_title('Friends and Enemies')

plt.tight_layout()
plt.show()