USE logic;

drop table employee;

create table employee(
emp_id int primary key auto_increment ,
ename varchar(30) not null,
jobdesc varchar(30) not null,
salary int);



insert into employee(ename,jobdesc,salary) values ('Ram','ADMIN',1000000);
insert into employee(ename,jobdesc,salary) values ('Harini','MANAGER',2500000);
insert into employee(ename,jobdesc,salary) values ('George','SALES',2000000);
insert into employee(ename,jobdesc,salary) values ('Ramya','SALES',1300000);
insert into employee(ename,jobdesc,salary) values ('Meena','HR',2000000);
insert into employee(ename,jobdesc,salary) values ('Ashoke','MANAGER',3000000);
insert into employee(ename,jobdesc,salary) values ('Abdul','HR',2000000);
insert into employee(ename,jobdesc,salary) values ('Ramya','ENGINEER',1000000);
insert into employee(ename,jobdesc,salary) values ('Raghu','CEO',8000000);
insert into employee(ename,jobdesc,salary) values ('Arvind','MANGER',2800000);
insert into employee(ename,jobdesc,salary) values ('Akshay','ENGINEER',1000000);
insert into employee(ename,jobdesc,salary) values ('John','ADMIN',2200000);
insert into employee(ename,jobdesc,salary) values ('Abinaya','ENGINEER',2100000);



desc employee;

select * from employee;

