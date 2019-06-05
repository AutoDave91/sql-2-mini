CREATE TABLE movie (
  movie_id SERIAL PRIMARY KEY,
  title VARCHAR(60),
  media_type_id INT,
  FOREIGN KEY(media_type_id) REFERENCES media_type(media_type_id)
)

INSERT INTO movie ( title, media_type_id )
VALUES ( 'Aladdin', 3 );
SELECT * FROM movie

ALTER TABLE movie
ADD COLUMN genre_id INTEGER REFERENCES genre(genre_id);
SELECT * FROM movie

INSERT INTO movie ( title, media_type_id )
VALUES ( 'The Hunt for Red October', 3 );
SELECT * FROM movie;
UPDATE movie SET genre_id = 22
WHERE movie_id = 1;
SELECT * FROM movie

SELECT ar.name, al.title FROM artist AS ar
INNER JOIN album AS al
ON ar.artist_id = al.artist_id

SELECT * FROM track
WHERE genre_id IN (
  SELECT genre_id FROM genre
  WHERE name = 'Jazz' OR name ='Blues'
)

UPDATE employee SET phone = NULL
WHERE employee_id = 1;
SELECT * FROM employee
WHERE employee_id =1

SELECT * FROM customer
WHERE company IS NULL

