--identifying duplicates 
SELECT movie_name, language, year_of_release, COUNT(*)
FROM amazon_movie2
GROUP BY movie_name, language, year_of_release
HAVING COUNT(*) > 1;

--deleted duplicates 
DELETE FROM Amazon_Movies2 WHERE movie_name IN (
    SELECT max(MOVIE_NAME)
    FROM AMAZON_MOVIES2
    GROUP BY MOVIE_NAME, language, year_of_release
    HAVING COUNT(*) > 1
);

--deleting running time 
Alter Table Amazon_movies2
DROP COLUMN Running_Time;


