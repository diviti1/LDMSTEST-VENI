-- Query to show all Employees for a Department
SELECT (SELECT DEPT_NAME
            FROM departments d
            WHERE d.dept_id = e.dept_id)
            AS "Department",
         LISTAGG (emp_name, ', ') WITHIN GROUP (ORDER BY dept_id)
            "Employees"
FROM employees e
GROUP BY dept_id
ORDER BY 1;