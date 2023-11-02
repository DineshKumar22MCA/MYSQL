use logic;

select UCASE(ename)
from employee;

select UCASE(ename) names 
from employee;

select UCASE(ename) as emp_names
from employee;

select lcase(jobdesc) role
from employee;


select ename,char_length(ename) as length
from employee;


select ename,concat("rs",salary)
from employee;

select ename,concat("rs.",salary)
from employee;

select ename,concat("rs.",format(salary,0))
from employee;


select concat_ws('_','virat','kohli')
from employee;


select ename,left(jobdesc,4)
from employee;


select ename,right(jobdesc,4)
from employee;
