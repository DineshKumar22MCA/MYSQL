USE logic;

CREATE TABLE branches(
branch_id INT PRIMARY KEY AUTO_INCREMENT,
br_name VARCHAR(30) NOT NULL,
addr VARCHAR(200) );

CREATE TABLE employees (
emp_id INT PRIMARY KEY AUTO_INCREMENT,
ename VARCHAR(30) NOT NULL,
job_desc VARCHAR(20),
salary INT,
branch_id INT,
CONSTRAINT Fy_ FOREIGN KEY employees(branch_id) REFERENCES branches(branch_id)
);


INSERT INTO branches VALUES(1,"Chennai","16 ABC Road");
INSERT INTO branches VALUES(2,"Coimbatore","120 15th Block");
INSERT INTO branches VALUES(3,"Mumbai","25 XYZ Road");
INSERT INTO branches VALUES(4,"Hydrabad","32 10th Street");

INSERT INTO employees VALUES(1,'Ram','ADMIN',1000000,2);
INSERT INTO employees VALUES(2,'Harini','MANAGER',2500000,2);
INSERT INTO employees VALUES(3,'George','SALES',2000000,1);
INSERT INTO employees VALUES(4,'Ramya','SALES',1300000,2);
INSERT INTO employees VALUES(5,'Meena','HR',2000000,3);
INSERT INTO employees VALUES(6,'Ashok','MANAGER',3000000,1);
INSERT INTO employees VALUES(7,'Abdul','HR',2000000,1);
INSERT INTO employees VALUES(8,'Ramya','ENGINEER',1000000,2);
INSERT INTO employees VALUES(9,'Raghu','CEO',8000000,3);
INSERT INTO employees VALUES(10,'Arvind','MANAGER',2800000,3);
INSERT INTO employees VALUES(11,'Akshay','ENGINEER',1000000,1);
INSERT INTO employees VALUES(12,'John','ADMIN',2200000,1);
INSERT INTO employees VALUES(13,'Abinaya','ENGINEER',2100000,2);
INSERT INTO employees VALUES(14,'Vidya','ADMIN',2200000,NULL);
INSERT INTO employees VALUES(15,'Ranjani','ENGINEER',2100000,NULL);


select	* from branches;
select * from employees;

-- join 

select e.emp_id,e.ename,e.job_desc,b.br_name
from employees as e
join branches as b
on b.branch_id = e.branch_id;

-- inner join
select e.emp_id,e.ename,e.job_desc,b.br_name
from employees as e
inner join branches as b
on b.branch_id = e.branch_id
order by emp_id;

-- right join

select e.emp_id,e.ename,e.job_desc,b.br_name
from employees as e
right join branches as b
on b.branch_id = e.branch_id;

select e.emp_id,e.ename,e.job_desc,b.br_name
from branches as b
right join employees as e
on b.branch_id = e.branch_id;

-- left join

select e.emp_id,e.ename,e.job_desc,b.br_name
from employees as e
left join branches as b
on e.branch_id = b.branch_id;

select e.emp_id,e.ename,e.job_desc,b.br_name
from branches as b
left join employees as e
on e.branch_id = b.branch_id
order by emp_id;


-- cross join

select e.emp_id,e.ename,e.job_desc,b.br_name
from branches as b
cross join employees as e;

select b.br_name,count(e.emp_id) as no_emp
from employees as e
join branches as b
on b.branch_id = e.branch_id 
group by e.branch_id;


select * from employees;
select * from branches;


