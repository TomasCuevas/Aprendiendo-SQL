CREATE VIEW comments_per_week as
SELECT
    date_trunc('week', posts.created_at) as weeks,
    count(DISTINCT posts.post_id) as number_of_posts,
    SUM(claps.counter) as total_claps
FROM
    posts
    INNER JOIN claps ON claps.post_id = posts.post_id
GROUP BY
    weeks
ORDER BY
    weeks DESC;
SELECT
    *
FROM
    posts
WHERE
    post_id = 1;

SELECT * FROM comments_per_week;

DROP VIEW comments_per_week;