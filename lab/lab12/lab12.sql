.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet FROM students WHERE color = "blue" AND pet = "dog";

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song FROM students WHERE color = "blue" AND pet = "dog";


CREATE TABLE smallest_int AS
  SELECT time, smallest FROM students WHERE smallest > 2 ORDER BY smallest LIMIT 20;


CREATE TABLE matchmaker AS
  SELECT first.pet, first.song, first.color, second.color
  FROM students AS first, students AS second
  WHERE first.time < second.time AND first.pet = second.pet AND first.song = second.song;


CREATE TABLE sevens AS
  SELECT seven FROM students, numbers
  WHERE number = 7 AND numbers."7" = "True" AND students.time = numbers.time;

