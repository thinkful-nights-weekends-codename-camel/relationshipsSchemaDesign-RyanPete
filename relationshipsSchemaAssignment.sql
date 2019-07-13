-- ASSIGNMENT

--Excercise 1 - How many people work in the Sales department?
SELECT COUNT(e.id) FROM employee e 
JOIN department d on d.id = e.department
WHERE dept_name = 'Sales';

--Excercise 2 - List the names of all employees assigned to the 'Plan christmas party' project.
SELECT 
  emp_name 
FROM employee e
JOIN employee_project ep ON ep.emp_id = e.id
JOIN project p ON ep.project_id = p.id
WHERE p.project_name = 'Plan christmas party';

--Excercise 3 -List the names of employees from the Warehouse department that are assigned to the 'Watch paint dry' project.
SELECT 
  emp_name 
FROM employee e
JOIN employee_project ep ON ep.emp_id = e.id
JOIN project p ON ep.project_id = p.id
JOIN department d on d.id = e.department
WHERE p.project_name = 'Watch paint dry' AND d.dept_name = 'Warehouse';

--Excercise 4 - Which projects are the Sales department employees assigned to?
SELECT 
  e.emp_name,
  p.project_name
FROM employee e
JOIN employee_project ep ON ep.emp_id = e.id
JOIN project p ON ep.project_id = p.id
JOIN department d on d.id = e.department
WHERE d.dept_name = 'Sales';

--Excercise 5 - List only the managers that are assigned to the 'Watch paint dry' project.
SELECT 
  emp_name 
FROM employee e
JOIN employee_project ep ON ep.emp_id = e.id
JOIN project p ON ep.project_id = p.id
JOIN department d on d.id = e.department
WHERE p.project_name = 'Watch paint dry' AND d.manager = ep.emp_id;
