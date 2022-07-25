# Music League Data Analysis

### Getting Started

- Load the database: `sqlite3 MusicLeague.db < db_seed.sql`
- Interact w/ the database: `sqlite3 MusicLeague.db`


### Useful Queries

Results per submission:
```
SELECT submission.user_id, artist, title, submission_id, value, SUM(value)
FROM submission
INNER JOIN vote on submission.id=vote.submission_id
GROUP BY submission_id;
```

Get all votes that count (filters out positive votes from people that missed the deadline):
```
SELECT * FROM vote
INNER JOIN submission on submission.id=vote.submission_id
WHERE missed_deadline=0 or (missed_deadline=1 and value < 0);
```

End results:
```
SELECT user_id, name, SUM(submission_score) FROM
(
	SELECT submission.user_id, artist, title, SUM(value) as submission_score
	FROM submission
	INNER JOIN valid_vote on submission.id=valid_vote.submission_id
	GROUP BY submission_id
) AS temp INNER JOIN user on user.id=temp.user_id
GROUP BY user_id;
```

All of Jeremy's submissions:
```
select * from submission
inner join user on user.id=submission.user_id
where name='Jeremy Gustine';
```

All votes for Jeremy's songs:
```
select * from submission
inner join user on user.id=submission.user_id
inner join vote on vote.submission_id=submission.id
where name='Jeremy Gustine';
```

Jeremy's Friends and Enemies:
```
select user.name, sum(value) as total_votes FROM
(
	select vote.user_id as voter_id, * from submission
	inner join user on user.id=submission.user_id
	inner join vote on vote.submission_id=submission.id
	where name='Jeremy Gustine'
)
inner join user on voter_id=user.id
GROUP BY voter_id
order by total_votes desc;
```

Good 2d view of all the joined user, submission, vote data:
```
select week, submitter_id, name, artist, title, missed_deadline, voter_id, voter_name, value as num_votes from 
(
	select submission.user_id as submitter_id, week, artist, title, missed_deadline, vote.user_id as voter_id, name as voter_name, submission_id, value from vote
	inner join user on vote.user_id=user.id
	inner join submission on vote.submission_id=submission.id
) inner join user on user.id=submitter_id order by week asc;
```

Votes per user per week:
```
SELECT week, SUM(votes) as votes_in_week, user_id FROM
(
    SELECT submission.user_id, week, artist, title, submission_id, SUM(value) as votes
    FROM submission
    INNER JOIN valid_vote on submission.id=valid_vote.submission_id
    GROUP BY submission_id
) GROUP BY user_id, week
ORDER BY week, votes_in_week desc, user_id;
```

Jeremy's cumulative score through the weeks:
```
SELECT *, sum(votes_in_week) OVER (ORDER BY week) AS running_total
FROM weekly_vote where user_id=6;
```

Cumulative ranking through tournament:
```
-- https://dba.stackexchange.com/a/282963
SELECT week, name, votes_in_week, SUM(votes_in_week) 
OVER (PARTITION BY user_id ORDER BY user_id ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS running_score 
FROM weekly_vote
ORDER BY week, running_score desc;
```

### TODO

- query that generates BFF for each person
- query that generates greatest enemy for each person
- get genre data from spotify and search for correlations
- how to visualize leaders over time? (bump chart) https://stackoverflow.com/questions/68095438/how-to-make-a-bump-chart

### Python Analysis Scripts

##### Install all dependencies

```
pipenv install
```

##### Add a dependency

```
pipenv install <package>
```

##### Activate the virtual environment

```
pipenv shell
```