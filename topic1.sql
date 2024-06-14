use moviesdb;
select *from movies;

-- Retrieve Data Using Text Query (SELECT, WHERE, DISTINCT, LIKE)

-- 1. Print all movie titles and release year for all Marvel Studios movies.

Select title,release_year FROM movies
Where studio = "Marvel Studios";


-- 2. Print all movies that have Avenger in their name.

SELECT *from movies
WHERE title LIKE "%Avengers%";

-- 3. Print the year when the movie "The Godfather" was released.

SELECT release_year FROM movies
WHERE title = "The Godfather";

-- 4. Print all distinct movie studios in the Bollywood industry.

SELECT DISTINCT studio from movies
WHERE industry = "Bollywood";



