USE labdb;

CREATE TABLE IF NOT EXISTS guestbook (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  message VARCHAR(200) NOT NULL
);

INSERT INTO guestbook (name, message) VALUES
  ('Alice', 'Hello from the database!'),
  ('Bob', 'Docker Compose is connecting everything.');
