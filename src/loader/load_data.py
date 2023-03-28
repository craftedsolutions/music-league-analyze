from scraper import scrape_data
from db import create_db_users, create_db_submissions, create_db_votes
from shaper import get_users, get_submissions, get_votes

league_num = 4
scraped_data = scrape_data("https://app.musicleague.com/l/a800865de09e47aa9ca614a389bb8b06/")

users = get_users(scraped_data)
db_users = create_db_users(users)
submissions = get_submissions(db_users, scraped_data, league_num)
db_submissions = create_db_submissions(submissions)
votes = get_votes(db_users, db_submissions, scraped_data)
db_votes = create_db_votes(votes)

print("Data loaded successfully!")
