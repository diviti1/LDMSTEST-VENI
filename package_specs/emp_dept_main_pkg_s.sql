CREATE OR REPLACE PACKAGE emp_dept_main_pkg 
AS
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
--| veni          25-Apr-2021   1       Initial Version                    
--+============================================================================

  --
  --+============================================================================+
  --| Name       :  insert department values                                     |
  --| Description: populate values into department table using appendix          |
  --| Modification History:                                                      |
  --| ----------------------                                                     |
  --| Author        Date        Ver Refer Remarks                                |
  --| ------------- ----------- --- ----- -----------------------------------    |
  --| veni            25-Apr-2021   1       Initial Version
  --+============================================================================+
  
 PROCEDURE insert_departments(
    p_dept_id    IN   department.dept_id%type, 
    p_dept_name  IN   department.dept_name%type,
    p_location   IN   department.location%type
   ) ;
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

);
  --

  --
  --+============================================================================+
  --| Name       :  Transfer employee to different department                    |
  --| Description:  To update employee department                                |
  --| Modification History:                                                      |
  --| ----------------------                                                     |
  --| Author        Date        Ver Refer Remarks                                |
  --| ------------- ----------- --- ----- -----------------------------------    |
  --| veni           25-Apr-2021   1       Initial Version
  --+============================================================================+
 PROCEDURE update_emp_dept(
    p_emp_id  IN employee.emp_id%type, 
    p_dept_id IN employee.dept_id%type
      
);
  --
  --
  --+============================================================================+
  --| Name       :  salary increment for employee                                |
  --| Description:  increment employee salary by a percentage                    |
  --| Modification History:                                                      |
  --| ----------------------                                                     |
  --| Author        Date        Ver Refer Remarks                                |
  --| ------------- ----------- --- ----- -----------------------------------    |
  --| veni          25-Apr-2021   1       Initial Version
  --+============================================================================+
 CREATE OR REPLACE PROCEDURE Sal_incre_emp(
    
    p_dept_id IN employee.dept_id%type,
    p_sal     IN float   
);

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
 FUNCTION getEmpSalary(p_emp_id in NUMBER)
Return NUMBER;
  --

END emp_dept_main_pkg ;
/
SHOW ERROR PACKAGE emp_dept_main_pkg ;
/