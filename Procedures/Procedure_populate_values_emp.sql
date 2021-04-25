CREATE OR REPLACE PROCEDURE insert_employee(
     p_emp_id    IN  employees.emp_id%type, 
    p_emp_name   IN employees.emp_name%type,
    p_job_title  IN employees.emp_job_title%type,
    p_manager_id IN employees.emp_manager_id%type,
    p_date_hired IN employees.emp_date_hired%type, 
    p_salary     IN employees.emp_salary%type,
    p_dept_id    IN employees.emp_dept_id%type

) IS
BEGIN    

    INSERT INTO Employees (emp_id, emp_name,job_title,manager_id,date_hired,salary,dept_id) 
    VALUES                (p_emp_id,p_emp_name,p_job_title,p_manager_id,p_date_hired,p_salary,p_dept_id);

 END;