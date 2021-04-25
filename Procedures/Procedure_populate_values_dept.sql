CREATE OR REPLACE PROCEDURE insert_departments(
      p_dept_id    IN   department.dept_id%type, 
      p_dept_name  IN   department.dept_name%type,
      p_location   IN   department.location%type
   

) IS
BEGIN    

    INSERT INTO departments (dept_id, dept_name, dept_location) 
    VALUES                  (p_dept_id, p_dept_name, p_location);

 END;