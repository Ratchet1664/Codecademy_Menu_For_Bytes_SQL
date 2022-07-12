CREATE TABLE restaurant(
  id integer PRIMARY KEY,
  name varchar(20),
  description varchar(100),
  rating decimal,
  telephone char(10),
  hours varchar(100),
  category varchar(20),
  price money
);

CREATE TABLE address(
  id integer REFERENCES restaurant(id),
  street_number varchar(10),
  street_name varchar(10),
  city varchar(20),
  state varchar(15),
  google_map_link varchar(50),
  PRIMARY KEY (id)
);


SELECT
  constraint_name, column_name, table_name
FROM 
  information_schema.key_column_usage
WHERE
  table_name = 'restaurant';
  
SELECT
  constraint_name, column_name, table_name
FROM 
  information_schema.key_column_usage
WHERE
  table_name = 'address';
