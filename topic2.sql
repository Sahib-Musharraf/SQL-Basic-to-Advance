use moviesdb;
select *from movies;

-- Exercise - Retrieve Data Using Numeric Query (BETWEEN, IN, ORDER BY, LIMIT, OFFSET)

-- 1. Print all movies in the order of their release year (latest first)
SELECT *
FROM movies
ORDER BY release_year DESC;

-- 2. All movies released in the year 2022

SELECT *
FROM movies
WHERE release_year = 2022;


-- 3. Now all the movies released after 2020

SELECT *
FROM movies
WHERE release_year > 2020;

-- 4. All movies after the year 2020 that have more than 8 rating

SELECT *
FROM movies
WHERE release_year > 2020 AND imdb_rating > 8;

-- 5. Select all movies that are by Marvel studios and Hombale Films
SELECT *
FROM movies
WHERE studio IN ("Marvel Studios", "Hombale Films");

-- 6. Select all THOR movies by their release year

SELECT title,release_year
FROM movies
WHERE title LIKE "%THOR%" ORDER BY release_year ASC ;

-- 7. Select all movies that are not from Marvel Studios

SELECT *
FROM Movies
WHERE studio != "Marvel Studio";


