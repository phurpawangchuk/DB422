
-- max salary for each designation
select designation,max(salary) as max_salary
from employee
group by designation

-- OR
--emp details who have max salary
select name,designation,salary
from employee e1
where salary = (
        select max(salary)
        from employee e2
        where e1.designation=e2.designation
    )
-- OR
SELECT name, designation, salary
FROM employee e1
GROUP BY name, designation, salary
HAVING salary = (
    SELECT max(salary)
    FROM employee e2
    WHERE e1.designation = e2.designation
);
-- finding second max salary of manager position
select max(salary) as second_max
from employee
where designation='Manager'
and salary < (
    select max(salary)
    from employee
    where designation='Manager'
);

-- second max salary for each position
WITH RankedSalaries AS (
    SELECT *,
        ROW_NUMBER() OVER (PARTITION BY designation ORDER BY salary DESC) AS salary_rank
    FROM
        employee
)
SELECT designation, MAX(salary) AS second_max_salary
    FROM RankedSalaries
    WHERE salary_rank = 2
    GROUP BY designation;

--  emp details whose salary is less than their position avg salary
SELECT name, designation, salary
FROM employee e1
WHERE salary < (
    SELECT AVG(salary)
    FROM employee e2
    WHERE e1.designation = e2.designation
);

