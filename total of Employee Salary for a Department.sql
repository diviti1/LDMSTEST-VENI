--Query to show total of Employee Salary for a Department
SELECT D.Dept_ID as DEPARTMENT_ID,D.DEPT_NAME, SUM(E.SALARY) as TOTAL_SALARY 
FROM DEPARTMENTS D
JOIN EMPLOYEEs E 
ON D.Dept_ID=E.Dept_ID
GROUP BY D.Dept_ID,D.DEPT_NAME