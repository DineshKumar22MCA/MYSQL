USE logic;

select * from student;

show index from student;


create table abc(
cus_id int primary key auto_increment,
ename varchar(30) not null,
job varchar(30) default 'unassained',
salary int,
pan varchar(30) unique,
check (salary > 100000)
);

show index from abc;

create index name_index on abc(ename);

show index from abc;

alter table abc 
drop index ename;

alter table abc
add index(ename);

