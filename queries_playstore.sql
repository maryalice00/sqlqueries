-- Comments in SQL Start with dash-dash --

-- app with id of 1800 --
SELECT * FROM analytics WHERE id = 1880;

-- id and app name for apps in last updated on 8/1/18 --
SELECT id, app FROM analytics WHERE last_updated = 'August 01, 2018';

-- count of apps in each category --
SELECT category, COUNT(*) FROM analytics GROUP BY category;

-- top 5 most reviewd apps --
SELECT app, reviews FROM analytics ORDER BY reviews DESC LIMIT 5;

-- app with most reviews and a ratinf >=4.8 --
SELECT app FROM analytics WHERE rating >= 4.8 ORDER BY reviews DESC LIMIT 1;

-- average rating for each category --
SELECT category, AVG(rating) as average_rating FROM analytics GROUP BY category ORDER BY average_rating DESC;

-- most expensive app with a rating <3 --
SELECT app, price, rating FROM analytics WHERE rating < 3 ORDER BY price DESC LIMIT 1;

-- apps with min install <=50 with a rating --
SELECT app FROM analytics WHERE min_installs <= 50 AND rating IS NOT NULL ORDER BY rating DESC;

-- apps rated less than 3 with at least 10000 reviews -- 
SELECT app FROM analytics WHERE rating < 3 AND reviews >= 10000;

-- top 10 most reviewd apps costing between .10 and 1 --
SELECT app FROM analytics WHERE price BETWEEN 0.10 AND 1.00 ORDER BY reviews DESC LIMIT 10;

-- most out dated app -- 
SELECT app FROM analytics WHERE last_updated = (SELECT MIN(last_updated) FROM analytics);

-- most expensive app --
SELECT app, price FROM analytics ORDER BY price DESC LIMIT 1;

--count all reviews-- 
SELECT SUM(reviews) FROM analytics;

-- categories with more than 300 apps -- 
SELECT category FROM analytics GROUP BY category HAVING COUNT(app) > 300;

-- app with highest proprtion of min installs to revies for apps with min installs >=100000 --
SELECT app, reviews, min_installs, (min_installs * 1.0 / reviews) AS proportion FROM analytics WHERE min_installs >= 100000 ORDER BY proportion DESC LIMIT 1;
