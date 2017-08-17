
#1///////////////////////////////////////////////////////////////////////////////


#I GENERATED ACTORS TABLE WITH ID(UNIQUE), NAME, BIRTHDATE, CHARACTERNAME, AND MOVIEID.


#2//////////////////////////////////////////////////////////////////////////////


#inputed 10 actors into Actors table

INSERT INTO Actors (name, birthdate, charactername, movieid)
VALUES 	('Tom Hanks','07091956','Woody', 1)
		('Tim Allen','06131953','Buzz Lightyear', 1)
		('Don Rickles','05081926','Mr. Potato Head', 1)
		('Robin Williams','07211951','Alan Parrish', 2)
		('Kirsten Dunst','04301982','Judy Shepherd', 2)
		('David Allen Greer','06301956','Carl Bentley', 2)
		('Bonnie Hunt','09221961','Sarah Whittle', 2)
		('Jack Lemmon','02081925','John Gustafson', 3)
		('Walter Matthau','10011920','Max Goldman', 3)
		('Burgess Meredith','09091907','Grandpa Gustafson', 3)



#3//////////////////////////////////////////////////////////////////////////////


#Created new table, MPAARating, and gave them values.

INSERT INTO MPAARating (rating, rating_id)
VALUES ('G', '1'),
	   ('PG', '2'),
       ('PG-13', '3'),
       ('R', '4'),
       ('NC-17', '5')

#Then updated movies table with new column and updated each with rating. Just first 5 films.

UPDATE movies
SET rating = 1,
WHERE movieid = 1

UPDATE movies
SET rating = 2,
WHERE movieid = 2

UPDATE movies
SET rating = 3,
WHERE movieid = 3

UPDATE movies
SET rating = 4,
WHERE movieid = 4

UPDATE movies
SET rating = 2,
WHERE movieid = 5



#4//////////////////////////////////////////////////////////////////////////////



#change to lower
UPDATE tags

SET tag = LOWER(tag)

WHERE id > 0



#change space to hypens
UPDATE tags 

SET tag = REPLACE((tag), " ", "-")

WHERE id > 0



#5/////////////////////////////////////////////////////////////////////////////////

#Created the query to create the movies-genres table

SELECT m.movieid, g.id, 

FROM movies m,
	 genre g

WHERE m.genres LIKE CONCAT('%',g.genres,'%');




#1///////////////////HARD MODE///////////////////////////////////////////////////////














