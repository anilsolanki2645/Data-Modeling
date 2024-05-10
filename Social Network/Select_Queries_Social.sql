-- Select Queries

-- [1] Retrieve users who have made posts along with the count of their posts:

SELECT u.username, COUNT(p.post_id) AS post_count
FROM users u
LEFT JOIN posts p ON u.user_id = p.user_id
GROUP BY u.user_id;


-- [2] Retrieve posts along with the number of comments each post has received:

SELECT p.title, COUNT(c.comment_id) AS comment_count
FROM posts p
LEFT JOIN comments c ON p.post_id = c.post_id
GROUP BY p.post_id;

-- [3] Retrieve users who have made comments on posts along with the count of their comments:

SELECT u.username, COUNT(c.comment_id) AS comment_count
FROM users u
JOIN comments c ON u.user_id = c.user_id
GROUP BY u.user_id;

-- [4] Retrieve posts along with the usernames of the users who made the posts:

SELECT p.title, u.username
FROM posts p
JOIN users u ON p.user_id = u.user_id;

-- [5] Retrieve posts along with the total number of comments and the usernames of the users who made the posts:

SELECT p.title, COUNT(c.comment_id) AS comment_count, u.username
FROM posts p
LEFT JOIN comments c ON p.post_id = c.post_id
JOIN users u ON p.user_id = u.user_id
GROUP BY p.post_id;

-- Using Sub Queries

-- [6] Subquery in SELECT clause to calculate a derived value:

SELECT username, 
       (SELECT COUNT(*) FROM posts WHERE posts.user_id = users.user_id) AS post_count
FROM users;

-- [7] Subquery in WHERE clause to filter results based on a condition:

SELECT * 
FROM posts 
WHERE user_id IN (SELECT user_id FROM users WHERE username = 'user1');

-- [8] Subquery in FROM clause to create a derived table:

SELECT user_id, total_comments 
FROM (SELECT user_id, COUNT(*) AS total_comments FROM comments GROUP BY user_id) AS comment_counts;

-- [9] Subquery in SELECT clause to retrieve aggregated data:

SELECT username,
       (SELECT COUNT(*) FROM comments WHERE comments.user_id = users.user_id) AS total_comments
FROM users;

-- [10] Subquery in HAVING clause to filter grouped results:

SELECT user_id, COUNT(*) AS total_posts
FROM posts
GROUP BY user_id
HAVING total_posts > (SELECT AVG(total_posts) FROM (SELECT user_id, COUNT(*) AS total_posts FROM posts GROUP BY user_id) AS post_counts);
