-- to show all the table write this sql 
SELECT table_name 
  FROM user_tables
  order by table_name;

-- to show table property in sql 
DESC tablename;

-- create new table with the help of the other table (create supplier table with existing table employee_137)
CREATE TABLE supplier AS SELECT * FROM employee_137;

-- only create with 2 column of employee_137 table
CREATE TABLE sup1 AS SELECT emp_no , emp_name FROM employee_137;

-- only create stucture not copy data so we have to write such condition whitch is allways fails
CREATE TABLE sup2_137 AS SELECT * FROM employee_137 WHERE (EMP_NO <0);
