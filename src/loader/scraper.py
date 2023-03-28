from playwright.sync_api import sync_playwright
import time
import os


def get_submission_data(entry, week_num):
    rows = entry.query_selector_all('xpath=./child::div')
    voter_rows = rows[2:]
    song_title = rows[0].query_selector('xpath=//div[2]/div/div[1]/strong/a').inner_html()
    artist = rows[0].query_selector('xpath=//div[2]/div/div[1]/span[1]/span').inner_html()
    submitter = rows[1].query_selector('xpath=//div[2]/span').inner_html()
    missed_deadline = rows[1].query_selector('xpath=//div[2]/span[2]')
    missed_deadline = True if missed_deadline else False

    submitter = submitter.replace('Submitted by ', '')
    votes = []
    for row in voter_rows:
        voter = row.query_selector('xpath=//div/div/div[2]/span').inner_html()
        positive_vote_value = row.query_selector('xpath=//div[1]/div[3]/span/span')
        negative_vote_value = row.query_selector('xpath=//div/div/div[3]/span')
        if positive_vote_value or negative_vote_value:
            vote_value = positive_vote_value if positive_vote_value else negative_vote_value
            positive_vote_value = vote_value.inner_html()
            votes.append({
                'name': voter,
                'votes': positive_vote_value
            })
    return {
        'week': week_num,
        'song_title': song_title,
        'artist': artist,
        'submitter': submitter,
        'missed_deadline': missed_deadline,
        'votes': votes,
    }


def handle_weekly_summary(page, week_num):
    # page.get_by_text('ROUND 12').wait_for() # this doesn't work here, data comes back in different response
    time.sleep(2)
    container = page.query_selector('xpath=//*[@id="app"]/div/div[2]/div')
    entries = container.query_selector_all('xpath=child::*')[1:]

    submissions = []
    for entry in entries:
        submission_data = get_submission_data(entry, week_num)
        submissions.append(submission_data)

    page.go_back()
    return submissions


def scrape_data(league_url):
    with sync_playwright() as p:
        browser = p.chromium.launch(headless=False)
        page = browser.new_page()
        page.goto(league_url)
        page.click('a:has-text("Log In With Spotify")')
        page.click('span:has-text("Continue with Google")')
        page.fill('input[aria-label="Email or phone"]', f'{os.environ.get("USER")}')
        page.click('button:has-text("Next")')
        page.fill('input[aria-label="Enter your password"]', f'{os.environ.get("PASS")}')
        page.click('button:has-text("Next")')
        page.click('button:has-text("Agree")')

        page.get_by_text('ROUND 12').wait_for()
        sibling_divs = page.query_selector_all('xpath=//h4[text()="Completed Rounds"]/following-sibling::div')
        sibling_divs.reverse()
        num_weeks = len(sibling_divs)

        data = {}
        for i in range(num_weeks):
            sibling_divs = page.query_selector_all('xpath=//h4[text()="Completed Rounds"]/following-sibling::div')
            sibling_divs.reverse()
            sibling_divs[i].query_selector('xpath=//div[2]/div[2]/a').click()
            week_num = i + 1
            weekly_data = handle_weekly_summary(page, week_num)
            data[week_num] = weekly_data
            time.sleep(2)

        browser.close()
        return data
