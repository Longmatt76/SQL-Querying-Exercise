-- Comments in SQL Start with dash-dash --

--query 1--
playstore=# SELECT * FROM analytics
playstore-# WHERE id = 1880;

--query 2--
playstore=# SELECT id FROM analytics
WHERE last_updated= 2018-08-01;

--query 3--
playstore=# SELECT category, COUNT(category) FROM analytics
GROUP BY category;

--query 4--
playstore=# SELECT reviews FROM analytics LIMIT 5;

--query 5--
playstore=# SELECT MAX(reviews) FROM analytics
playstore-# WHERE rating > 4.8;

--query 6--
playstore=# SELECT category, AVG(rating) FROM analytics
playstore-# GROUP BY category
playstore-# ORDER BY avg DESC;

--query 7--
playstore=# SELECT app_name, price, rating FROM analytics
  WHERE rating < 3
  ORDER BY price DESC
  LIMIT 1;

--query 8--
playstore=# SELECT * FROM analytics
WHERE min_installs <= 50
AND rating IS NOT NULL
ORDER BY rating DESC;

--query 9--
playstore=# SELECT app_name FROM analytics
WHERE rating < 3 AND reviews >= 10000;

--query 10--
playstore=# SELECT * FROM analytics
WHERE price BETWEEN .10 AND 1
ORDER BY reviews DESC LIMIT 10;

--query 11--
playstore=# SELECT * FROM analytics
playstore-# ORDER BY last_updated LIMIT 1;

--query 12--
playstore=# SELECT * FROM analytics
ORDER BY price DESC LIMIT 1;

--query 13--
playstore=# SELECT COUNT(reviews) FROM analytics;

--querry 14--
playstore=#  SELECT category FROM analytics
playstore-# GROUP BY category
playstore-# HAVING COUNT(*) > 300;

--query 15--
playstore=# SELECT app_name, reviews, min_installs, min_installs/reviews AS proportion FROM analytics
WHERE  min_installs >= 100000;
