import sqlite3
import pandas as pd
import matplotlib.pyplot as plt
from lib.bump_chart_plot import bumpchart

# https://stackoverflow.com/questions/1836352/similarity-between-users-based-on-votes
# https://datagy.io/python-pearson-correlation/
# https://realpython.com/numpy-scipy-pandas-correlation-python/
# https://pythontic.com/pandas/dataframe-computations/correlation
# https://levelup.gitconnected.com/pearson-coefficient-of-correlation-using-pandas-ca68ce678c04

cnx = sqlite3.connect('MusicLeague.db')

# compare all votes for each person against each other person that voted for the same song
# include zeroes for non-votes?

"""
Basically for each user, we need to get their vote series

Now, we will loop through all the users so that we compare all possible pairs
and caclualte the correlation on each of those
"""


def get_votes_for_user(user_id):
    query = f"""
        SELECT COALESCE(value, 0) as value FROM submission
        LEFT OUTER JOIN vote ON vote.submission_id = submission.id AND vote.user_id = {user_id};
    """
    df = pd.read_sql_query(query, cnx)
    # TODO: return series instead of data frame?
    return df['value']


def get_pearson_correlation(series1, series2):
    return series1.corr(series2, method='pearson')

data = {
    1: {'name': 'Cole Capsalis', 'votes': None},
    2: {'name': 'Chip M', 'votes': None},
    3: {'name': 'kseniya', 'votes': None},
    4: {'name': 'CharTheLatte', 'votes': None},
    5: {'name': 'TJ Bowen', 'votes': None},
    6: {'name': 'Jeremy Gustine', 'votes': None},
    7: {'name': 'Aaron Knoll', 'votes': None},
    8: {'name': 'Adam Oliver', 'votes': None},
    9: {'name': 'tedpoatsy', 'votes': None},
    10: {'name': 'rtrunck', 'votes': None},
    11: {'name': 'Laura Poatsy', 'votes': None}
}

for user_id in data:
    series = get_votes_for_user(user_id)
    data[user_id]['votes'] = series

# for user_id in data:
#     for user_id_to_compare in data:
#         df1 = data[user_id]['votes']
#         df2 = data[user_id_to_compare]['votes']
#         score = get_pearson_correlation(df1, df2)
#         print(score)

series1 = data[6]['votes']
series2 = data[1]['votes']
# print(series2)
score = get_pearson_correlation(series1, series2)
print(score)
