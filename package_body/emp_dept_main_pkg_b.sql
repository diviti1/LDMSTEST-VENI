CREATE OR REPLACE PACKAGE BODY emp_dept_main_pkg
AS
--
--
--+============================================================================|
--|                      Oracle_code_challenge                                 |
--+============================================================================|
--| Name       : acc_main_pkg_s.sql                                            |
--| Description: Main package to manage emp,dept related routines              |
--|                                                                            |
--| Modification History:                                                      |
--| ---------------------                                                      |
--| Author        Date        Ver Refer Remarks                                |
--| ------------- ----------- --- ----- ---------------------------------------|
--| veni         25-Apr-2021   1       Initial Version                    
--+============================================================================

  --
  --+============================================================================+
  --| Name       :  insert department values                                     |
  --| Description: populate values into department table using appendix          |
  --| Modification History:                                                      |
  --| ----------------------                                                     |
  --| Author        Date        Ver Refer Remarks                                |
  --| ------------- ----------- --- ----- -----------------------------------    |
  --| veni           25-Apr-2021   1       Initial Version
  --+============================================================================+
  
     PROCEDURE insert_departments(
      p_dept_id    IN   department.dept_id%type, 
      p_dept_name  IN   department.dept_name%type,
      p_location   IN   department.location%type
   

) IS
BEGIN    

    INSERT INTO departments (dept_id, dept_name, dept_location) 
    VALUES                  (p_dept_id, p_dept_name, p_location);

 END;
  --

 --
  --+============================================================================+
  --| Name       : insert employee values                                        |
  --| Description: populate values into employee table using appendix            |
  --| Modification History:                                                      |
  --| ----------------------                                                     |
  --| Author        Date        Ver Refer Remarks                                |
  --| ------------- ----------- --- ----- -----------------------------------    |
  --| veni          25-Apr-2021   1       Initial Version
  --+============================================================================+

   PROCEDURE insert_employee(
    p_emp_id     IN  employees.emp_id%type, 
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
  --

 --
  --+============================================================================+
  --| Name       :  Transfer employee to different department                    |
  --| Description:  To update employee department                                |
  --| Modification History:                                                      |
  --| ----------------------                                                     |
  --| Author        Date        Ver Refer Remarks                                |
  --| ------------- ----------- --- ----- -----------------------------------    |
  --| veni         25-Apr-2021   1       Initial Version
  --+============================================================================+
 CREATE OR REPLACE PROCEDURE update_emp_dept(
     p_emp_id IN employee.emp_id%type, 
    p_dept_id IN employee.dept_id%type
   
   

) IS
BEGIN    

    UPDATE employees SET dept_id = p_dept_id 
	              WHERE emp_id  =p_emp_id;
EXCEPTION
 WHEN NO_DATA_FOUND THEN
 DBMS_OUTPUT.PUT_LINE ('Employee not found.');

 END;
--
--
  --+============================================================================+
  --| Name       :  salary increment for employee                                |
  --| Description:  increment employee salary by a percentage                    |
  --| Modification History:                                                      |
  --| ----------------------                                                     |
  --| Author        Date        Ver Refer Remarks                                |
  --| ------------- ----------- --- ----- -----------------------------------    |
  --| veni         25-Apr-2021   1       Initial Version
  --+============================================================================+
 PROCEDURE Sal_incre_emp(
    
    p_dept_id IN employee.dept_id%type,
    p_sal     IN float   

) IS
BEGIN    

    UPDATE employees SET salary = salary+salary*p_sal
	              WHERE dept_id  = p_dept_id;
EXCEPTION
 WHEN NO_DATA_FOUND THEN
 DBMS_OUTPUT.PUT_LINE ('Department id not found.');

 END;
--
--
  --+============================================================================+
  --| Name       :  Return salary of employee                                    |
  --| Description:  Returning employee salary                                    |
  --| Modification History:                                                      |
  --| ----------------------                                                     |
  --| Author        Date        Ver Refer Remarks                                |
  --| ------------- ----------- --- ----- -----------------------------------    |
  --| veni          25-Apr-2021   1       Initial Version
  --+============================================================================+
Create or Replace FUNCTION getEmpSalary(p_emp_id in NUMBER)
Return NUMBER IS

    l_return_salary NUMBER;
    
BEGIN
         Select salary into l_return_salary from employees where emp_id = p_emp_id ;
     return l_return_salary;
EXCEPTION
 WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE ('Employee not found.'); 
END;
ENDemp_dept_main_pkg;
/
SHOW ERROR PACKAGE emp_dept_main_pkg;
/