DELETE FROM SUPPLIER_137;

DELETE FROM SUPPLIER_137
WHERE emp_no = 103;

UPDATE EMPLOYEE_137
SET emp_name = 'Aman'
WHERE emp_name = 'Anita';

UPDATE EMPLOYEE_137
SET emp_name = 'Updated_Name'
WHERE emp_no = 103;
 
SELECT MAX(max_sal) AS max_salary,
       MIN(min_sal) AS min_salary
FROM JOB_137;
 
SELECT MAX(max_sal) AS max_salary,
       MIN(min_sal) AS min_salary
FROM JOB_137;

SELECT AVG(emp_sal) AS avg_salary
FROM EMPLOYEE_137;

SELECT COUNT(dept_no) AS total_departments,
       COUNT(DISTINCT dept_no) AS distinct_departments
FROM EMPLOYEE_137
WHERE emp_sal > 1000;

SELECT *
FROM EMPLOYEE_137
ORDER BY emp_name ASC, emp_no DESC;

SELECT emp_no, emp_name, dept_no, emp_comm
FROM EMPLOYEE_137
ORDER BY dept_no ASC, emp_comm DESC;

UPDATE EMPLOYEE_137
SET emp_comm = 500
WHERE dept_no = 20;

SELECT emp_sal, emp_comm
FROM EMPLOYEE_137
ORDER BY emp_comm ASC NULLS FIRST,
         emp_sal DESC;

SELECT emp_no, emp_comm
FROM EMPLOYEE_137
ORDER BY emp_comm ASC NULLS LAST,
         emp_no DESC;

