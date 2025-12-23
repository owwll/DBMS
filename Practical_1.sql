-- NUMBER(7,2) mean total 7 length and 2 is desimal point int length like 2.14 , 4.24
CREATE TABLE job_137 
(
  job_id VARCHAR2(15) PRIMARY KEY,
  job_title VARCHAR2(30),
  min_sal NUMBER(7,2),
  max_sal NUMBER(7,2)
);

CREATE TABLE employee_137
(
  emp_no NUMBER(3) PRIMARY KEY ,
  emp_name VARCHAR2(30) NOT NULL,
  emp_sal NUMBER(8,2) ,
  emp_comm NUMBER(6,1),
  dept_no NUMBER(3)
);

CREATE TABLE deposit_137
(
  a_no VARCHAR2(5) PRIMARY KEY,
  cname VARCHAR2(15) NOT NULL,
  bname VARCHAR2(10) NOT NULL,
  amount NUMBER(7,2) NOT NULL,
  a_date DATE
);

CREATE TABLE borrow_137
(
  loanno VARCHAR2(5) PRIMARY KEY,
  cname VARCHAR2(15) NOT NULL,
  bname VARCHAR2(10) NOT NULL,
  amount NUMBER(7,2) NOT NULL
);

-- insert into employee_137 table
INSERT INTO employee_137 (emp_no , emp_name , emp_sal , emp_comm , dept_no ) 
  VALUES (101 , 'smith' , 800 , 455 , 20);
INSERT INTO employee_137 (emp_no , emp_name , emp_sal , emp_comm , dept_no ) 
  VALUES (102 , 'snehal' , 1600 , 0 , 25);
INSERT INTO employee_137  VALUES (103 , 'Adama', 1100, 425, 20);
INSERT INTO employee_137  VALUES (104, 'Aman', 3000, ,15);
INSERT INTO employee_137  VALUES (105, 'Anita', 5000 ,5000 , 10);
INSERT INTO employee_137  VALUES (106, 'anamika' , 2975 , null , 30);

--insert into job_137 table 
INSERT INTO job_137  VALUES ('IT_PROG' , 'Programmer', 4000, 10000);
INSERT INTO job_137  VALUES ('MK_MGR', 'Marketing manager', 9000 ,15000);
INSERT INTO job_137  VALUES ('FI_MGR', 'Finance manager', 8200, 12000);
INSERT INTO job_137  VALUES ('FI_ACC', 'Account',' 4200', 9000);
INSERT INTO job_137  VALUES ('LEC', 'Lecturer', 6000, 17000);
INSERT INTO job_137  VALUES ('COMP_OP', 'Computer Operator', 1500, 13000);

--insert into deposit_137 table
INSERT INTO deposit_137  VALUES (101, 'Anil', 'andheri', 7000, '01-jan-06');
INSERT INTO deposit_137  VALUES (102, 'sunil', 'virar' ,5000, '15-jul-06');
INSERT INTO deposit_137  VALUES (103, 'jay', 'villeparle', 6500, '12-mar-06');
INSERT INTO deposit_137  VALUES (104, 'vijay', 'andheri' ,8000 ,'17-sep-06');
INSERT INTO deposit_137  VALUES (105, 'keyur', 'dadar' ,7500 ,'19-nov-06');
INSERT INTO deposit_137  VALUES (106, 'mayur', 'borivali', 5500, '21-dec-06');

--insert into borrow_137 table
INSERT INTO borrow_137  VALUES (201, 'ANIL', 'VRCE', 1000.00);
INSERT INTO borrow_137  VALUES (206, 'MEHUL', 'AJNI' ,5000.00);
INSERT INTO borrow_137  VALUES (311 ,'SUNIL', 'DHARAMPETH', 3000.00);
INSERT INTO borrow_137  VALUES (321 ,'MADHURI' ,'ANDHERI' ,2000.00);
INSERT INTO borrow_137  VALUES (375, 'PRMOD', 'VIRAR', 8000.00);
INSERT INTO borrow_137  VALUES (481 ,'KRANTI' ,'NEHRU', 3000.00);

--show all value in database 
select * from employee_137;
select * from job_137;
select * from deposit_137;
select * from borrow_137;
