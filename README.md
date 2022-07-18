

Load the database: `sqlite3 MusicLeage.db < db_seed.sql`

Interact w/ the database: `sqlite3 MusicLeage.db`

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

