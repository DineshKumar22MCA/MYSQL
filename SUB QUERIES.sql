USE logic;

select * from employees
where branch_id = 
(
  select branch_id 
  from branches
  where br_name = "chennai"
);

select * from branches;
select  * from employees;

SELECT * FROM employees
WHERE salary = (SELECT MIN(salary)
FROM employees);


select branch_id,br_name
from branches
where exists
(select * from employees
where job_desc = "ADMIN" AND
branches.branch_id = employees.branch_id);



SELECT branch_id,br_name
FROM branches
WHERE branch_id = any
(SELECT branch_id FROM employees
WHERE salary > 2500000);


SELECT * FROM employees
WHERE branch_id <> ALL ( SELECT branch_id 
FROM branches
WHERE br_name IN ("Chennai","Coimbatore"));

select * from branches;
select  * from employees;