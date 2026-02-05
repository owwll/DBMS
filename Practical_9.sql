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


