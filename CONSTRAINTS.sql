use logic;

create table customer(
cus_id int primary key auto_increment,
ename varchar(30) not null,
job varchar(30) default 'unassained',
salary int,
pan varchar(30) unique,
check (salary > 100000)
);
desc customer;

insert into customer(ename,salary) values ("virat",12000000);
insert into customer(ename,salary) values ("dhoni",31000000);
insert into customer(ename,salary) values ("vicky",55000000);
insert into customer(ename,salary) values ("dinesh",5533000);

select * from customer;

drop table customer;


create table customer(
cus_id int primary key ,
ename varchar(30),
job varchar(30) ,
salary int,
pan varchar(30) 
);

desc customer;

-- add and delete not null
alter table customer
modify ename varchar(30) not null;

desc customer;

alter table customer
modify ename varchar(30);

desc customer;

-- default contrains

alter table customer
alter job set default "unassained"; 

desc customer;

alter table customer
modify job varchar (30); 

desc customer;

-- check constrains

alter table customer
add constraint cks check (salary > 1000000);


desc customer;

alter table customer
drop check cks;


desc customer;


