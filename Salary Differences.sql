SELECT
ABS((
(SELECT max(salary) from db_employee
JOIN db_dept ON  db_dept.id = db_employee.department_id
WHERE department = 'marketing')

(SELECT max(salary) from db_employee
JOIN db_dept ON db_dept.id = db_employee.department_id
WHERE department = 'engineering')
)) AS salary_difference;