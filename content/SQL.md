---
---

Below I am learning the *MySQL* flavor of SQL (should be mostly the same to other SQL flavors)

A *table* is a collection of data organized into rows and columns. Tables are sometimes referred to as *relations*.

After each statement you should put the ";"

## Selecting Data

SELECT {column name} FROM {table};

Example:

````SQL
SELECT * FROM celebs;
SELECT name FROM celebs;
````

**Clauses**

* SELECT
* FROM

**Table**

* celebs

## Create a table

**General Syntax**
CREATE TABLE {table name} (
variable name VARIABLE TYPE,
);

Example:

````SQL
CREATE TABLE tablename (
	id INTEGER,
	name TEXT,
	age INTEGER
);
````

## Inserting Data

This will insert data into a new row, it seems like you do not have to enter data for each column thus that data will likely just be NA or another indicator for being missing (Ø for example)

INSERT INTO {table name} ({column1, column2})
VALUES (value1, value2);

Example:

````SQL
INSERT INTO celebs (id, name, age)  
VALUES (1, 'Justin Bieber', 22);
````

## Alter Table

#### Adding a new column:

ALTER TABLE {table name}

ADD COLUMN {new column name} {COLUMN TYPE};

````SQL
ALTER TABLE celebs

ADD COLUMN twitter_handle TEXT;
````

## Updating a table

````SQL
UPDATE celebs

SET twitter_handle = '@taylorswift13'

where id = 4;

  

SELECT * FROM celebs;
````
