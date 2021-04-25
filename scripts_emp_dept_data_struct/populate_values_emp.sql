INSERT INTO EMPLOYEES (emp_id,emp_name,job_title,manager_id,date_hired,salary,dept_id)
            VALUES    (90001, 'John Smith', 'CEO',null, to_date('01/01/95','DD/MM/YYYY'),100000, 1);
INSERT INTO EMPLOYEES (emp_id,emp_name,job_title,manager_id,date_hired,salary,dept_id)
            VALUES    (90002, 'Jimmy Willis', 'Manager', 90001, to_date('23/09/03','DD/MM/YYYY'), 52500, 4);
INSERT INTO EMPLOYEES (emp_id,emp_name,job_title,manager_id,date_hired,salary,dept_id)
            VALUES    (90003, 'Roxy Jones', 'Salesperson',null, to_date('11/02/17 ','DD/MM/YYYY') ,35000, 4);
INSERT INTO EMPLOYEES (emp_id,emp_name,job_title,manager_id,date_hired,salary,dept_id)
            VALUES    (90004, 'Selwyn Field', 'Salesperson',null, to_date('20/05/15 ','DD/MM/YYYY') ,32000, 4);
INSERT INTO EMPLOYEES (emp_id,emp_name,job_title,manager_id,date_hired,salary,dept_id)
            VALUES    (90005 ,'David Hallett', 'Engineer', 90006,to_date('17/04/18 ','DD/MM/YYYY') , 40000 ,2);
INSERT INTO EMPLOYEES (emp_id,emp_name,job_title,manager_id,date_hired,salary,dept_id)
            VALUES    (90006, 'Sarah Phelps', 'Manager', 90001, to_date('21/03/15 ','DD/MM/YYYY'), 45000, 2);
INSERT INTO EMPLOYEES (emp_id,emp_name,job_title,manager_id,date_hired,salary,dept_id)
            VALUES    (90007 ,'Louise Harper', 'Engineer', 90006, to_date('01/01/13 ','DD/MM/YYYY') ,47000 ,2);
INSERT INTO EMPLOYEES (emp_id,emp_name,job_title,manager_id,date_hired,salary,dept_id)
            VALUES    (90008, 'Tina Hart', 'Engineer', 90009, to_date('28/07/14 ','DD/MM/YYYY'), 45000 ,3);
INSERT INTO EMPLOYEES (emp_id,emp_name,job_title,manager_id,date_hired,salary,dept_id)
            VALUES    (90009, 'Gus Jones, 'Manager', 90001, to_date('15/05/18 ','DD/MM/YYYY'), 50000, 3);