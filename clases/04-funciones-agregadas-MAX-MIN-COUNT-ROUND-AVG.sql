SELECT
	COUNT(*),
	MIN(followers) as min_folllowers,
	MAX(followers) as max_followers,
	ROUND(AVG(followers)) as avg_followers,
	SUM(followers) / COUNT(*) as avg_manual
FROM
	users;