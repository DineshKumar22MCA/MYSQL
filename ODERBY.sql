use logic;

select distinct ename
from employee;

select * from employee
order by salary;


select * from employee
order by salary desc;

select * from employee
where jobdesc = "MANAGER" order by salary;

select * from employee
order by salary,ename;

select * from employee
order by (case jobdesc
WHEN "DEVELOPER" THEN 1
WHEN "MANAGER" THEN 2
WHEN "HR" THEN 3
WHEN "CEO" THEN 4
ELSE 100 END);