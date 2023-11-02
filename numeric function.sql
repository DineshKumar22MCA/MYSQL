use logic;
select	count(*) from employee;

select count(jobdesc) 
from employee
where jobdesc = 'ADMIN';


select avg(salary)
from employee;


select avg(salary)
from employee
where jobdesc = 'MANAGER';


select sum(salary)
from employee
where jobdesc = 'MANAGER';


select *
from employee
where salary = (select max(salary)
from employee);




