-- Include your solutions to the More Practice problems in this file.



-- INSERT

-- 2. Add the following rows to the Models table.

-- year    name       brand_name
-- ----    ----       ----------
-- 2015    Chevrolet  Malibu
-- 2015    Subaru     Outback

    cars=# INSERT INTO models (year, name, brand_name)
    cars-# VALUES (2015, 'Chevrolet', 'Malibu');
    INSERT 0 1
    cars=# INSERT INTO models (year, name, brand_name)
    cars-# VALUES (2015, 'Subaru', 'Outback');
    INSERT 0 1

    cars=# SELECT * FROM models ORDER BY id DESC LIMIT 2;
     id | year | brand_name |   name    
    ----+------+------------+-----------
     50 | 2015 | Outback    | Subaru
     49 | 2015 | Malibu     | Chevrolet
    (2 rows)

-- CREATE TABLE
-- 3. Write a SQL statement to crate a table called `Awards`
--    with columns `name`, `year`, and `winner`. Choose
--    an appropriate datatype and nullability for each column
--   (no need to do subqueries here).

    cars=# CREATE TABLE Awards(
    cars(# name VARCHAR(50) NOT NULL,
    cars(# year INTEGER NOT NULL,
    cars(# winnter_id INTEGER PRIMARY KEY);
    CREATE TABLE

    cars=# SELECT * FROM Awards;
     name | year | winnter_id 
    ------+------+------------
    (0 rows)


-- More INSERT
-- 4. Write a SQL statement that adds the following rows to the Awards table:

--   name                 year      winner_model_id
--   ----                 ----      ---------------
--   IIHS Safety Award    2015      the id for the 2015 Chevrolet Malibu
--   IIHS Safety Award    2015      the id for the 2015 Subaru Outback

    cars=# INSERT INTO Awards VALUES ('IIHS Safety Award', 2015, 49);
    INSERT 0 1
    cars=# INSERT INTO Awards VALUES ('IIHS Safety Award', 2015, 50);
    INSERT 0 1

    cars=# SELECT * FROM Awards;
           name        | year | winnter_id 
    -------------------+------+------------
     IIHS Safety Award | 2015 |         49
     IIHS Safety Award | 2015 |         50
    (2 rows)
