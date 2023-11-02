use logic;

select * from employee;

select jobdesc,avg(salary)
from employee
group by jobdesc;


select jobdesc,count(ename) as no_of_emp
from employee
group by jobdesc;


select jobdesc,count(emp_id)
from employee
group by jobdesc
having count(emp_id)>1;


select jobdesc,count(emp_id)
from employee
group by jobdesc
having count(emp_id)>=1
order by jobdesc;


select jobdesc,count(emp_id) as dd
from employee
group by jobdesc
having dd >= 1
order by dd desc;



select jobdesc,count(emp_id) as dd
from employee
where salary > 1500000
group by jobdesc
having dd >= 1
order by dd desc ;

