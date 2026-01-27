SELECT * FROM EMPLOYEE_137;
SELECT * FROM JOB_137;
SELECT * FROM DEPOSIT_137;

SELECT job_title, max_sal
FROM JOB_137;

SELECT DISTINCT bname
FROM DEPOSIT_137;

SELECT a_no
FROM DEPOSIT_137
WHERE a_date BETWEEN TO_DATE('01-01-06','DD-MM-YY')
                 AND TO_DATE('25-07-06','DD-MM-YY');

SELECT cname
FROM DEPOSIT_137
WHERE a_date > TO_DATE('09-10-06','DD-MM-YY');

SELECT emp_name AS employee_name, emp_sal
FROM EMPLOYEE_137
WHERE dept_no = 20;

SELECT emp_no, emp_name, dept_no
FROM EMPLOYEE_137
WHERE dept_no IN (10, 20);

SELECT emp_no, emp_name, dept_no
FROM EMPLOYEE_137
WHERE dept_no NOT IN (15, 30)
AND dept_no <> 25;

SELECT emp_no, emp_name, dept_no
FROM EMPLOYEE_137
WHERE dept_no BETWEEN 15 AND 25;

SELECT emp_name
FROM EMPLOYEE_137
WHERE emp_comm IS NOT NULL;

SELECT job_title,
       min_sal || ' - ' || max_sal AS salary_range
FROM JOB_137;

INSERT INTO SUPlier2_137 (emp_no, new_sal, emp_comm, dept_no)
SELECT emp_no, emp_sal, emp_comm, dept_no
FROM EMPLOYEE_137;
