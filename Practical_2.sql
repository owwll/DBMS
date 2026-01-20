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

-- Insert the data into sup2_137 from employee whose name is ‘Anita’ and verify.
INSERT INTO sup2_137 SELECT * FROM employee_137 WHERE emp_name = 'Anita';

-- Rename the table sup2 and verify
RENAME sup2_137 to suplier2_137;
DESC sup2_137;

-- Destroy table sup1_137 with all the data and verify
DROP TABLE sup1_137;
DESC sup1_137;

-- Add one column phone to an employee with size of column is Varchar2(10) and verify
ALTER TABLE employee_137 ADD phone_no Varchar2(10);
desc employee_137;

-- Modify column phone and change type to char(10) and verify.
ALTER TABLE employee_137 MODIFY phone_no Char(10);
desc employee_137;

-- Delete employee_name column from sup2 and verify;
ALTER TABLE suplier2_137 DROP COLUMN employee_name;
SELECT * from sup2_137;

-- Rename the column salary to new_sal in sup2 and verify.
ALTER TABLE suplier2_137 RENAME COLUMN emp_sal TO new_sal;
desc suplier2_137;
