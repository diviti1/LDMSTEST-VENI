CREATE OR REPLACE PROCEDURE Sal_incre_emp(
    
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