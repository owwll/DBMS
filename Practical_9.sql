create table salespeople_137(
    snum number(4) primary key,
    sname varchar2(20) not null ,
    city varchar2(15) ,
    comm number(5,2)
  );

-- test case 1 : insert successfully
insert into salespeople_137 values (1 , 'dhruvin' , 'surat' , 90);

-- test case 2 : insert error because of primary key constrain
insert into salespeople_137 values (1 , 'Mahavir' , 'rajkot' , 23);

-- test case 3 : Insert a record with a null Sname
insert into salespeople_137 values (2, null , 'rajkot', 23);

-- test case 4 : Insert a record with missing City and Comm
insert into salespeople_137 values (2 , 'Mahavir' , null , null);

-- test case 5 : fetch all data 
select * from salespeople_137;

create table customer_137 (
    cnum number(4) primary key ,
    cname varchar2(20) not null ,
    city varchar2(20),
    rating number(3) default 10,
    snum number(4) references salespeople_137(snum)
  );


insert into customer_137 values (1,'pruthvi','surat',10,1);
insert into customer_137 (cnum , cname , city , snum)values (2,'dhruvin','surat',1);
insert into customer_137 values (3,null ,'surat',8 , 2);
insert into customer_137 values (3,'mahavir' ,'surat',8 ,3);
insert into customer_137(cnum , cname,snum) values (3 , 'mahavir',2);

create table order_137 (
    orderno number(4) primary key ,
    amount number(5),
    odate varchar2(10) ,
    cnum number(4) references customer_137(cnum),
    snum number(4) references salespeople_137(snum)
    );
insert into order_137 values (1,120,'2/4/2026',1,1);
insert into order_137 values (2,110 , '2/04/2026',5,1);
insert into order_137 (orderno , odate , cnum , snum) values (2 , '12/5/2005', 3,2);
insert into order_137 (orderno , amount , cnum , snum) values (3 , 452, 3,2);
select * from order_137;

create table client_master_137 (client_no varchar2(6) primary key , client_name varchar2(10));
create table salesman_master( sales_no varchar2(6) primary key);
create table sales_order_137(
    order_no varchar2(6) primary key check (order_no like 'O%'),
    order_date date,
    client_no varchar2(6) references client_master_137(client_no),
    dely_addr varchar2(25),
    salesman_no references salesman_master(sales_no),
    dely_type char default 'F' check( dely_type in ('F' ,'P')),
    order_status varchar2(20) check (order_status in ('in  process' , 'fulfilled' , 'backorder','cancelled'))
);

insert into client_master_137 values('C123' , 'Dhruvin');
insert into salesman_master values ('S123');
insert into sales_order_137 values ('O123' , '22 feb 2024' , 'C123' , 'surat','S123','P' , 'in  process');
insert into sales_order_137 values ('O23' , '22 feb 2024' , 'C123' , 'surat','S12','P' , 'in  process');
insert into sales_order_137 values ('123' , '22 feb 2024' , 'C123' , 'surat','S12','P' , 'in  process');
insert into sales_order_137(order_no , client_no , dely_addr , salesman_no , dely_type , order_status) values ('O2033'  , 'C123' , 'surat','S12','P' , 'in  process');
insert into sales_order_137(order_no , client_no , dely_addr , salesman_no , dely_type , order_status) values ('O2033'  , 'C123' , 'surat','S123','P' , 'in  process');
select * from sales_order_137;

create table salesman_master_137(
    snum varchar2(6) check (snum like 'S%'),
    sname varchar2(20) not null,
    address varchar2(30) not null,
    city varchar2(20),
    pincode varchar2(8),
    state varchar2(20),
    sal_amt number(8,2) not null check (sal_amt > 0 ),
    ytd_sales number(6,2) not null check (ytd_sales > 0) ,
    tgt_sales number(6,2) not null
);

insert into salesman_master_137 values ('S12345' , 'Dhruvin' , 'sarthana' , 'surat' , 395006, 'gujrat' , 12345, 2454,7645);

Create table c_master_137 ( client_no varchar2(6) primary key check (client_no like ‘C%’),  name varchar2(20) not null , address varchar2(30) , city varchar2(15) , pincode number(8) , state varchar2(15) , bal_due number(10 , 2) );
