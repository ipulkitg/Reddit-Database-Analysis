--Query 1
DROP TABLE IF EXISTS query1;
CREATE TABLE query1 AS
SELECT 
    COUNT(*) AS "count of comments" 
    FROM comments 
    WHERE author = 'xymemez';

-- Query 2
DROP TABLE IF EXISTS query2;
CREATE TABLE query2 AS
SELECT 
    subreddit_type AS "subreddit type", 
    COUNT(*) AS "subreddit count"
FROM 
    subreddits
GROUP BY 
    subreddit_type;

-- Query 3
DROP TABLE IF EXISTS query3;
CREATE TABLE query3 AS
SELECT 
    subreddit AS "name", COUNT(*) AS "comments count", 
    ROUND(AVG(score), 2) AS "average score"
FROM 
    comments
GROUP BY 
    subreddit
ORDER BY 
    COUNT(*) DESC
LIMIT 10;

-- Query 4
DROP TABLE IF EXISTS query4;
CREATE TABLE query4 AS
SELECT 
    name AS "name", link_karma AS "link karma", comment_karma AS "comment karma",
       CASE WHEN link_karma >= comment_karma THEN 1 ELSE 0 END AS "label"
FROM 
    authors
WHERE 
    (link_karma + comment_karma) / 2 > 1000000
ORDER BY 
    (link_karma + comment_karma) / 2 DESC;

-- Query 5
DROP TABLE IF EXISTS query5;
CREATE TABLE query5 AS
SELECT 
    subreddits.subreddit_type AS "sr type", 
    COUNT(comments.id) AS "comments num"
FROM 
    comments
JOIN 
    subreddits ON comments.subreddit_id = subreddits.name
WHERE 
    author = '[deleted_user]'
GROUP BY 
    subreddits.subreddit_type;