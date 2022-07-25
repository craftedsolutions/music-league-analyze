import sqlite3
import pandas as pd
import seaborn as sb
import matplotlib.pyplot as plt

cnx = sqlite3.connect('MusicLeague.db')

query = """
select submission_id, name, value from all_votes_with_default
inner join user on all_votes_with_default.user_id=user.id;
"""

df = pd.read_sql_query(query, cnx)

df.set_index(['submission_id', 'name', 'value'])

df = df.pivot(index='submission_id', columns='name', values='value')
# print(df)
corr = df.corr(method='pearson')

# print(corr)

ax = plt.axes()
sb.heatmap(corr,
    xticklabels=corr.columns,
    yticklabels=corr.columns,
    cmap='RdBu_r',
    annot=True,
    linewidth=0.5
)
ax.set_title('Similarity in Voting Behavior')
plt.tight_layout()
plt.show()

# https://stackoverflow.com/questions/1836352/similarity-between-users-based-on-votes
# https://datagy.io/python-pearson-correlation/
# https://realpython.com/numpy-scipy-pandas-correlation-python/
# https://pythontic.com/pandas/dataframe-computations/correlation
# https://levelup.gitconnected.com/pearson-coefficient-of-correlation-using-pandas-ca68ce678c04
# Should I try Euclidean distance? https://stackoverflow.com/questions/1836352/similarity-between-users-based-on-votes
