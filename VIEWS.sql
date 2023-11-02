use logic;

select employees.emp_id,employees.ename,
employees.job_desc,branches.br_name
from employees
join branches
on employees.branch_id = branches.branch_id
order by emp_id;


CREATE VIEW emp_br
AS
SELECT employees.emp_id,employees.ename,
employees.job_desc,branches.br_name
FROM employees
INNER JOIN branches
ON employees.branch_id=branches.branch_id
ORDER BY emp_id;

select * from emp_br;

drop view emp_br;

CREATE OR REPLACE VIEW emp_br  -- modify view
AS 
SELECT employees.emp_id,employees.ename,
employees.job_desc,branches.br_name
FROM employees
INNER JOIN branches
ON employees.branch_id=branches.branch_id;

