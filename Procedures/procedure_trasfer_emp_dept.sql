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

