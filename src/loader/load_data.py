from scraper import scrape_data_all_leagues
from db import create_db_users, create_db_submissions, create_db_votes
from shaper import get_users, get_submissions, get_votes
# from data import leagues_data

league_urls = [
    # keep in mind the CHAOS WEEKS could greatly skew results
    "https://app.musicleague.com/l/ed526a01c43c4ae887c04bbd65340f15/", #first, 2Q22
    "https://app.musicleague.com/l/1c682077c3b04eab873f4c3aaca1e453/", #3Q22
    "https://app.musicleague.com/l/4a1fa40857bb41d197878e518b01a1a0/", #4Q22
    "https://app.musicleague.com/l/a800865de09e47aa9ca614a389bb8b06/", #1Q23
    "https://app.musicleague.com/l/17c57c65c14941a88d5ab3944c44785b/", #2Q23
    "https://app.musicleague.com/l/a9e1e858e16f4cae98d3d9c06b6a4a0d/", #3Q23
    # excluding the insane 4Q23 for now
]
leagues_data = scrape_data_all_leagues(league_urls)

users = get_users(leagues_data)
db_users = create_db_users(users)
submissions = get_submissions(db_users, leagues_data)
db_submissions = create_db_submissions(submissions)
votes = get_votes(db_users, db_submissions, leagues_data)
db_votes = create_db_votes(votes)

print("Data loaded successfully!")
