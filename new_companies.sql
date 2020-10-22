--Amber's conglomerate corporation just acquired some new companies. Each of the companies follows this hierarchy: 

--Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.


SELECT c.company_code, c.founder, COUNT(DISTINCT lm.lead_manager_code), COUNT(DISTINCT sm.senior_manager_code), COUNT(DISTINCT m.manager_code), COUNT(DISTINCT e.employee_code)
FROM company c
INNER JOIN Lead_Manager lm ON c.company_code = lm.company_code
INNER JOIN Senior_Manager sm ON lm.lead_manager_code = sm.lead_manager_code
INNER JOIN Manager m ON sm.senior_manager_code = m.senior_manager_code
INNER JOIN Employee e ON m.manager_code = e.manager_code
GROUP BY c.company_code, c.founder
ORDER BY c.company_code;