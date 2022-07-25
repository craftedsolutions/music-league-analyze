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

# change data on 0th row to disambiguate the tie that looks funny
ranking_data.at[0, 'Cole Capsalis'] = 1
ranking_data.at[0, 'Chip M'] = 2
ranking_data.at[0, 'kseniya'] = 3
ranking_data.at[0, 'CharTheLatte'] = 4
ranking_data.at[0, 'TJ Bowen'] = 5
ranking_data.at[0, 'Jeremy Gustine'] = 6
ranking_data.at[0, 'Aaron Knoll'] = 7
ranking_data.at[0, 'Adam Oliver'] = 8
ranking_data.at[0, 'tedpoatsy'] = 9
ranking_data.at[0, 'rtrunck'] = 10
ranking_data.at[0, 'Laura Poatsy'] = 11

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
