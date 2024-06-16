
-- Exercise - Summary analytics (MIN, MAX, AVG, GROUP BY)

SELECT * FROM moviesdb.movies;

-- 1. How many movies were released between 2015 and 2022

SELECT COUNT(*) as total_release
FROM moviesdb.movies
WHERE release_year BETWEEN 2015 AND 2022;

-- 2. Print the max and min movie release year

SELECT MIN(release_year), MAX(release_year)
FROM moviesdb.movies;

-- 3. Print a year and how many movies were released in that year starting with the latest year-- 

SELECT release_year, COUNT(*) as movie_count
FROM moviesdb.movies
 GROUP BY release_year 
 ORDER BY release_year DESC;



