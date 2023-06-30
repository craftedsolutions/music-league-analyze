CREATE VIEW valid_vote AS
SELECT vote.id, vote.submission_id, vote.user_id, vote.value
FROM vote
INNER JOIN submission on submission.id=vote.submission_id
WHERE missed_deadline=0 or (missed_deadline=1 and value < 0);

CREATE VIEW weekly_vote AS
SELECT week, SUM(votes) as votes_in_week, user_id, name FROM
(
	SELECT submission.user_id, name, week, artist, title, submission_id, SUM(value) as votes
	FROM submission
	INNER JOIN valid_vote on submission.id=valid_vote.submission_id
	INNER JOIN user on user.id=submission.user_id
	GROUP BY submission_id
) GROUP BY user_id, week
ORDER BY week, votes_in_week desc, user_id;

CREATE VIEW weekly_vote_cool AS
SELECT A.week, A.votes_in_week, A.user_id, A.name
FROM weekly_vote_default A
LEFT JOIN weekly_vote B
     ON A.week = B.week and A.user_id=B.user_id
WHERE B.week IS NULL and B.user_id IS NULL
UNION
SELECT * FROM weekly_vote
ORDER BY week, votes_in_week DESC, user_id;

CREATE VIEW weekly_ranking AS
SELECT *, RANK() OVER (PARTITION BY week ORDER BY running_score desc) AS rank
FROM
(
	SELECT week, name, votes_in_week, SUM(votes_in_week)
	OVER (PARTITION BY user_id ORDER BY user_id ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS running_score
	FROM weekly_vote_cool
	ORDER BY week, running_score DESC
);

CREATE VIEW all_votes_with_default AS
SELECT submission.id as submission_id, 1 as user_id, COALESCE(value, 0) as value FROM submission
LEFT OUTER JOIN vote ON vote.submission_id = submission.id and vote.user_id=1
UNION ALL
SELECT submission.id as submission_id, 2 as user_id, COALESCE(value, 0) as value FROM submission
LEFT OUTER JOIN vote ON vote.submission_id = submission.id and vote.user_id=2
UNION ALL
SELECT submission.id as submission_id, 3 as user_id, COALESCE(value, 0) as value FROM submission
LEFT OUTER JOIN vote ON vote.submission_id = submission.id and vote.user_id=3
UNION ALL
SELECT submission.id as submission_id, 4 as user_id, COALESCE(value, 0) as value FROM submission
LEFT OUTER JOIN vote ON vote.submission_id = submission.id and vote.user_id=4
UNION ALL
SELECT submission.id as submission_id, 5 as user_id, COALESCE(value, 0) as value FROM submission
LEFT OUTER JOIN vote ON vote.submission_id = submission.id and vote.user_id=5
UNION ALL
SELECT submission.id as submission_id, 6 as user_id, COALESCE(value, 0) as value FROM submission
LEFT OUTER JOIN vote ON vote.submission_id = submission.id and vote.user_id=6
UNION ALL
SELECT submission.id as submission_id, 7 as user_id, COALESCE(value, 0) as value FROM submission
LEFT OUTER JOIN vote ON vote.submission_id = submission.id and vote.user_id=7
UNION ALL
SELECT submission.id as submission_id, 8 as user_id, COALESCE(value, 0) as value FROM submission
LEFT OUTER JOIN vote ON vote.submission_id = submission.id and vote.user_id=8
UNION ALL
SELECT submission.id as submission_id, 9 as user_id, COALESCE(value, 0) as value FROM submission
LEFT OUTER JOIN vote ON vote.submission_id = submission.id and vote.user_id=9
UNION ALL
SELECT submission.id as submission_id, 10 as user_id, COALESCE(value, 0) as value FROM submission
LEFT OUTER JOIN vote ON vote.submission_id = submission.id and vote.user_id=10;
-- Removed Laura since she never cast a vote. It made the chart look funny.
--UNION ALL
--SELECT submission.id as submission_id, 11 as user_id, COALESCE(value, 0) as value FROM submission
--LEFT OUTER JOIN vote ON vote.submission_id = submission.id and vote.user_id=11;

CREATE VIEW friends_and_enemies AS
select * from (
	select 'CharTheLatte' as user_name, user.name as voter_name, sum(value) as total_votes FROM
	(
		select vote.user_id as voter_id, * from submission
		inner join user on user.id=submission.user_id
		inner join vote on vote.submission_id=submission.id
		where name='CharTheLatte'
	)
	inner join user on voter_id=user.id
	GROUP BY voter_id
	order by total_votes desc
)
UNION ALL
select * from (
    select 'Jeremy Gustine' as user_name, user.name as voter_name, sum(value) as total_votes FROM
    (
        select vote.user_id as voter_id, * from submission
        inner join user on user.id=submission.user_id
        inner join vote on vote.submission_id=submission.id
        where name='Jeremy Gustine'
    )
    inner join user on voter_id=user.id
    GROUP BY voter_id
    order by total_votes desc
)
UNION ALL
select * from (
    select 'Kyle Brill' as user_name, user.name as voter_name, sum(value) as total_votes FROM
    (
        select vote.user_id as voter_id, * from submission
        inner join user on user.id=submission.user_id
        inner join vote on vote.submission_id=submission.id
        where name='Kyle Brill'
    )
    inner join user on voter_id=user.id
    GROUP BY voter_id
    order by total_votes desc
)
UNION ALL
select * from (
    select 'Aaron Knoll' as user_name, user.name as voter_name, sum(value) as total_votes FROM
    (
        select vote.user_id as voter_id, * from submission
        inner join user on user.id=submission.user_id
        inner join vote on vote.submission_id=submission.id
        where name='Aaron Knoll'
    )
    inner join user on voter_id=user.id
    GROUP BY voter_id
    order by total_votes desc
)
UNION ALL
select * from (
    select 'Chip M' as user_name, user.name as voter_name, sum(value) as total_votes FROM
    (
        select vote.user_id as voter_id, * from submission
        inner join user on user.id=submission.user_id
        inner join vote on vote.submission_id=submission.id
        where name='Chip M'
    )
    inner join user on voter_id=user.id
    GROUP BY voter_id
    order by total_votes desc
)
UNION ALL
select * from (
select 'James Hammond' as user_name, user.name as voter_name, sum(value) as total_votes FROM
(
	select vote.user_id as voter_id, * from submission
	inner join user on user.id=submission.user_id
	inner join vote on vote.submission_id=submission.id
	where name='James Hammond'
)
inner join user on voter_id=user.id
GROUP BY voter_id
order by total_votes desc
)
UNION ALL
select * from (
    select 'Cappy Hausfeld' as user_name, user.name as voter_name, sum(value) as total_votes FROM
    (
        select vote.user_id as voter_id, * from submission
        inner join user on user.id=submission.user_id
        inner join vote on vote.submission_id=submission.id
        where name='Cappy Hausfeld'
    )
    inner join user on voter_id=user.id
    GROUP BY voter_id
    order by total_votes desc
)
UNION ALL
select * from (
    select 'Matt Markiewicz' as user_name, user.name as voter_name, sum(value) as total_votes FROM
    (
        select vote.user_id as voter_id, * from submission
        inner join user on user.id=submission.user_id
        inner join vote on vote.submission_id=submission.id
        where name='Matt Markiewicz'
    )
    inner join user on voter_id=user.id
    GROUP BY voter_id
    order by total_votes desc
)
UNION ALL
select * from (
    select 'Adam Oliver' as user_name, user.name as voter_name, sum(value) as total_votes FROM
    (
        select vote.user_id as voter_id, * from submission
        inner join user on user.id=submission.user_id
        inner join vote on vote.submission_id=submission.id
        where name='Adam Oliver'
    )
    inner join user on voter_id=user.id
    GROUP BY voter_id
    order by total_votes desc
)
UNION ALL
select * from (
    select 'jgracie6' as user_name, user.name as voter_name, sum(value) as total_votes FROM
    (
        select vote.user_id as voter_id, * from submission
        inner join user on user.id=submission.user_id
        inner join vote on vote.submission_id=submission.id
        where name='jgracie6'
    )
    inner join user on voter_id=user.id
    GROUP BY voter_id
    order by total_votes desc
)
UNION ALL
select * from (
    select 'nat9172' as user_name, user.name as voter_name, sum(value) as total_votes FROM
    (
        select vote.user_id as voter_id, * from submission
        inner join user on user.id=submission.user_id
        inner join vote on vote.submission_id=submission.id
        where name='nat9172'
    )
    inner join user on voter_id=user.id
    GROUP BY voter_id
    order by total_votes desc
)
UNION ALL
select * from (
    select 'kseniya' as user_name, user.name as voter_name, sum(value) as total_votes FROM
    (
        select vote.user_id as voter_id, * from submission
        inner join user on user.id=submission.user_id
        inner join vote on vote.submission_id=submission.id
        where name='kseniya'
    )
    inner join user on voter_id=user.id
    GROUP BY voter_id
    order by total_votes desc
)
UNION ALL
select * from (
    select 'rtrunck' as user_name, user.name as voter_name, sum(value) as total_votes FROM
    (
        select vote.user_id as voter_id, * from submission
        inner join user on user.id=submission.user_id
        inner join vote on vote.submission_id=submission.id
        where name='rtrunck'
    )
    inner join user on voter_id=user.id
    GROUP BY voter_id
    order by total_votes desc
)
UNION ALL
select * from (
    select 'Cole Capsalis' as user_name, user.name as voter_name, sum(value) as total_votes FROM
    (
        select vote.user_id as voter_id, * from submission
        inner join user on user.id=submission.user_id
        inner join vote on vote.submission_id=submission.id
        where name='Cole Capsalis'
    )
    inner join user on voter_id=user.id
    GROUP BY voter_id
    order by total_votes desc
);