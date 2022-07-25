import sqlite3
import pandas as pd
import matplotlib.pyplot as plt
from lib.bump_chart_plot import bumpchart

cnx = sqlite3.connect('MusicLeague.db')
query = "select * from weekly_ranking"
df = pd.read_sql_query(query, cnx)

df.set_index(['week', 'name', 'votes_in_week', 'running_score'])

# transform df so that rows are weeks, columns are names, and cells are the ranking
ranking_data = df.pivot(index='week', columns='name', values='rank')

print(ranking_data)

plt.figure(figsize=(10, 5))
bumpchart(
    ranking_data,
    show_rank_axis=True,
    scatter=True,
    holes=False,
    line_args={"linewidth": 5, "alpha": 0.5},
    scatter_args={"s": 100, "alpha": 0.8},
    index_name='Week #',
    column_name='Fighter Name',
    value_name='Final Rank'
)
plt.show()
