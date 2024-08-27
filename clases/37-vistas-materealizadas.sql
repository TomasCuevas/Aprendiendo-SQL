CREATE MATEREALIZED VIEW comments_per_week_mat as
SELECT
    date_trunc ('week', posts.created_at) as weeks,
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
    comments_per_week_mat;

REFRESH MATERIALIZED VIEW comments_per_week_mat;