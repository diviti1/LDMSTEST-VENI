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