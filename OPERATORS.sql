use logic;
select * from student;

select name,gpa from student;

-- operators 

select * from employee
where salary > 2000000;

select* from employee
where salary = 2000000;

select jobdesc from employee
where salary <> 2000000;

select ename  from employee
where salary < 2000000;

select * from employee
where jobdesc = 'sales';

select * from employee
where jobdesc like 'ma%';

select * from employee
where jobdesc like '%eer';

select * from employee
where jobdesc like '%na%';

select * from employee
where salary between 2000000 and 3000000;

select * from employee
where jobdesc = "CEO" or jobdesc= "HR";

select * from employee
where jobdesc = "MANAGER" AND salary <= 3000000;

select * from employee
where jobdesc in ("CEO","HR"); 

select ename from employee
where jobdesc not in ("CEO","HR"); 

select * from employee
limit 5 ; 





