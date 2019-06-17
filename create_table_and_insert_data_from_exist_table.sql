CREATE TABLE actor_name(first_name varchar(45) not null, last_name varchar(45) not null);
INSERT INTO actor_name SELECT first_name,last_name FROM actor AS actor_name;