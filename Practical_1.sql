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

