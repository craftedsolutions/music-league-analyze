def get_users(scraped_data):
    return {
        song["submitter"]
        for song_list in scraped_data.values()
        for song in song_list
    }


def get_submissions(db_users, scraped_data, league_num):
    user_id_dict = {item['name']: item['id'] for item in db_users}

    submissions = []
    for key, value in scraped_data.items():
        week = key
        weekly_submissions = value
        for weekly_submission in weekly_submissions:
            submissions.append({
                'user_id': user_id_dict[weekly_submission['submitter']],
                'title': weekly_submission['song_title'],
                'league_num': league_num,
                'week': week,
                'artist': weekly_submission['artist'],
                'missed_deadline': int(weekly_submission['missed_deadline'])
            })
    return submissions


def get_votes(db_users, db_submissions, scraped_data):
    user_id_dict = {item['name']: item['id'] for item in db_users}
    # This is so we don't accidentally deduplicate the same song being submitted twice across weeks:
    # f'{item["week"]}-{item["artist"]}-{item["title"]}'
    submission_id_dict = {f'{item["week"]}-{item["artist"]}-{item["title"]}': item['id'] for item in db_submissions}

    votes = [
        {'song_title': item['song_title'], 'week': item['week'], 'artist': item['artist'], **vote}
        for key in scraped_data
        for item in scraped_data[key]
        for vote in item['votes']
    ]

    for vote in votes:
        vote['user_id'] = user_id_dict[vote['name']]
        vote['submission_id'] = submission_id_dict[f'{vote["week"]}-{vote["artist"]}-{vote["song_title"]}']
        vote['votes'] = int(vote['votes'])

    return votes
