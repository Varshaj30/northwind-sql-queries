--18. Find all employees who report to ‘Andrew Fuller’

Select last_name, first_name, employee_id
from employees
where reports_to = (
  SELECT 
      employee_id
    FROM 
      employees
    WHERE 
      First_Name = 'Andrew' AND Last_Name = 'Fuller'

