DROP TABLE customers;
DROP TABLE films;
DROP TABLE tickets;

CREATE TABLE customers(
  id SERIAL4 PRIMARY KEY,
name VARCHAR(255),
funds INT4
);

CREATE TABLE films(
  id SERIAL4 PRIMARY KEY,
  title VARCHAR(255),
  price INT4
);

CREATE TABLE tickets(
  id SERIAL4 PRIMARY KEY,
  film_id INT4 REFERENCES film(id) ON DELETE CASCADE,
  customer_id INT4 REFERENCES customer(id) ON DELETE CASCADE,
);
