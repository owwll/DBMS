Create table Product_137(order_no varchar2(255) Primary key , product_no Varchar2(255) , qty_order NUMBER(3) NOT NULL check (qty_order >0));

insert into product_137 values ('O19001' , 'P00001' , 10);
insert into product_137 values ('O19001' , 'P00002' , 3);
insert into product_137 values ('O19002' , 'P00001' , 4);
insert into product_137 values ('O19003' , 'P00004' , 2);
insert into product_137 values ('O19004' , 'P00003' , 6);
insert into product_137 values ('O19005' , 'P00005' , 2);
insert into product_137 values ('O19006' , 'P00004' , 7);

select product_no , SUM(qty_order) from product_137 group by product_no;

select product_no , SUM(qty_order) from product_137 where (product_no = 'P00001' or product_no = 'P00004') group by product_no;

create table emp_company ( ename varchar2(255) , cname varchar2(255) , salary number);

insert into emp_company_137 values ('Anil' , 'ACC' , 1500);
insert into emp_company_137 values ('Shankar' , 'TATA' , 2000);
insert into emp_company_137 values ('Jay' , 'WIPRO' , 1800);
insert into emp_company_137 values ('Sunil' , 'WIPRO' , 1700);
insert into emp_company_137 values ('Vijay' , 'TATA' , 5000);
insert into emp_company_137 values ('Prakash' , 'TATA' , 3000);

select cname , MAX(salary) from emp_company_137 group by cname;
select cname , avg(salary) from emp_company_137 group by cname;
select cname , avg(salary) from emp_company_137 having (avg(salary) > 1500) group by cname;
select cname , avg(salary) from emp_company_137 having cname != 'ACC'  group by cname;


