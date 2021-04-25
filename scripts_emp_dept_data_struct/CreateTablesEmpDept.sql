CREATE TABLE departments (
  dept_id          number(5) CONSTRAINT department_id_pk PRIMARY KEY,
  dept_name        varchar2(50) not null,
  location         varchar2(50)

);
/
CREATE TABLE employees(
 emp_id           number(10) CONSTRAINT employee_id_pk PRIMARY KEY , 
 emp_name         varchar2(50) NOT NULL,
 job_title        varchar2(50),
 manager_id       number(10),
 date_hired       date, 
 salary           number(10),
 dept_id          number(5), CONSTRAINT employees_dept_id_fk 
                             FOREIGN KEY (dept_id)
                            REFERENCES departments(dept_id)
);
/