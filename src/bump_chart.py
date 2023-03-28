import sqlite3
import pandas as pd
import matplotlib.pyplot as plt
from lib.bump_chart_plot import bumpchart

cnx = sqlite3.connect('MusicLeague.db')
query = "select * from weekly_ranking"
df = pd.read_sql_query(query, cnx)

df.set_index(['week', 'name', 'votes_in_week', 'running_score'])

print(df.to_string())

# transform df so that rows are weeks, columns are names, and cells are the rank
ranking_data = df.pivot_table(index='week', columns='name', values='rank', aggfunc='first')

# change data on 0th row to disambiguate the tie that looks funny
ranking_data.at[0, 'CharTheLatte'] = 1
ranking_data.at[0, 'nat9172'] = 2
ranking_data.at[0, 'Cody Palmer'] = 3
ranking_data.at[0, 'jgracie6'] = 4
ranking_data.at[0, 'rtrunck'] = 5
ranking_data.at[0, 'Aaron Knoll'] = 6
ranking_data.at[0, 'Adam Oliver'] = 7
ranking_data.at[0, 'TJ Bowen'] = 8
ranking_data.at[0, 'Cappy Hausfeld'] = 9
ranking_data.at[0, 'Matt Markiewicz'] = 10
ranking_data.at[0, 'Chip M'] = 11
ranking_data.at[0, 'Jeremy Gustine'] = 12
ranking_data.at[0, 'Cole Capsalis'] = 13

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
