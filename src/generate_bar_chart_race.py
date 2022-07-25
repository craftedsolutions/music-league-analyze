import sqlite3
import pandas as pd
import bar_chart_race as bcr

# installed bar_chart_race with `python -m pip install git+https://github.com/dexplo/bar_chart_race`
# https://github.com/dexplo/bar_chart_race/issues/28

cnx = sqlite3.connect('MusicLeague.db')
query = "select * from weekly_ranking"
df = pd.read_sql_query(query, cnx)

df.set_index(['week', 'name', 'votes_in_week', 'running_score'])

# transform df so that rows are weeks, columns are names, and cells are the ranking
ranking_data = df.pivot(index='week', columns='name', values='rank')

# get rid of row 0 (since that was added just for the bump chart)
ranking_data = ranking_data.drop([0])

# duplicate the first row since that bar_chart_race lib behaves strangely for the first row
modified_ranking_data = ranking_data.head(1)
modified_ranking_data = modified_ranking_data.append(ranking_data)

# duplicate the last row since that bar_chart_race lib behaves strangely for the last row
modified_ranking_data = modified_ranking_data.append(modified_ranking_data.iloc[-1])
print(modified_ranking_data)

bcr.bar_chart_race(
    df=modified_ranking_data,
    filename='images/ranking_race.gif',
    orientation='h',
    sort='asc',
    n_bars=11,
    fixed_order=False,
    steps_per_period=20,
    period_length=1000,
    end_period_pause=2000,
    interpolate_period=False,
    period_template='Week {x:,.0f}',
    colors='dark12',
    title='Music League Weekly Rankings',
    bar_size=.95,
    bar_textposition='inside',
    bar_texttemplate='{x:,.0f}',
    bar_label_font=7,
    tick_label_font=7,
    tick_template='{x:,.0f}',
    shared_fontdict=None,
    scale='linear',
    fig=None,
    writer=None,
    bar_kwargs={'alpha': .7},
    fig_kwargs={'figsize': (6, 3.5), 'dpi': 144},
    filter_column_colors=False
)
