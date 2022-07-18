## Music League Data Analysis

#### Getting Started

- Load the database: `sqlite3 MusicLeage.db < db_seed.sql`
- Interact w/ the database: `sqlite3 MusicLeage.db`


#### Useful Queries

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


#### TODO

- query that generates BFF for each person
- query that generates greatest enemy for each person
- get genre data from spotify and search for correlations


