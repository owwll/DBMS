-- to show all the table write this sql 
SELECT table_name 
  FROM user_tables
  order by table_name;

-- to show table property in sql 
DESC tablename;

-- create new table with the help of the other table (create supplier table with existing table employee_137)
CREATE table supplier AS SELECT * FROM employee_137;

