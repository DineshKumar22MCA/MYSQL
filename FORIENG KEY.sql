use logic;


create table branch(
br_id int primary key auto_increment ,
location varchar(30),
address varchar(30)
);

create table staff(
emp_id int primary key auto_increment ,
ename varchar(30),
job varchar(30),
salary int ,
br_id int ,
constraint fk  foreign key staff (br_id) references branch(br_id)
);

insert into branch values (1,"chennai", "tambaram");
insert into branch values (2,"coimbatore","palladam");
insert into branch values (3,"kerala","kochin");

insert into staff values (1,"ram","ADMIN",10000,2),
(2,"harini","MANAGER",250000,2),
(3,"george","SALES",20000,1),
(4,"ramya","SALES",13000,2),
(5,"meena","HR",20000,3),
(6,"ashoke","MANAGER",30000,1),
(7,"abdhul","HR",20000,1),
(8,"ramya","MANAGER",50000,2),
(9,"raghu","CEO",80000,3),
(10,"arvind","MANAGER",24000,3);

select * from branch;
select * from staff;

alter table branch
add column mg_id int ,
add foreign key  branch(mg_id) references staff(emp_id);

update branch
set mg_id = 6
where br_id = 1;

update branch
set mg_id = 2
where br_id = 2;

update branch
set mg_id = 10
where br_id = 3;


