-- CREATE DATABASE
DROP DATABASE week_2_movie_data;

CREATE DATABASE week_2_movie_data;
USE week_2_movie_data;

-- CREATE TABLEs
CREATE TABLE movie (
  movie_id INT AUTO_INCREMENT,
  title VARCHAR(100),
  runtime INT,
  release_date DATE,
  PRIMARY KEY (movie_id)
);

-- INSERT data
INSERT INTO movie (title, runtime, release_date)
  VALUES ('The Banshees of Inisherin', 109, '2022-10-21'),
  ('The Truman Show', 107, '1998-06-05'),
  ('The Dark Knight', 152, '2008-07-18'),
  ('O Brother, where art thou?', 107, '2000-08-30'),
  ('Moana 2', 152, '2024-11-27'),
  ('Get Away', 104, '2024-12-06'),
  ('The Lord of the Rings: The War of the Rohirrim', 123, '2024-12-13'),
  ('Sonic the Hedgehog 3', 102, '2024-12-20'),
  ('Nosferatu', 99, '2024-12-25'),
  ('Paddington in Peru', 134, '2025-01-17'),
  ('Captain America: Brave New World', 108, '2025-02-14'),
  ('Wicked', 160, '2025-11-22'),
  ('Civil War', 109, '2024-04-12');
