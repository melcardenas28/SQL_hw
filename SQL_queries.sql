CREATE TABLE "titles" (
	
    "title_id" VARCHAR(5),
    "title" VARCHAR(30),
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     ),
    CONSTRAINT "uc_titles_title" UNIQUE (
        "title"
    )
);

SELECT * FROM titles


CREATE TABLE "departments" (
    "dept_no" VARCHAR(4),
    "dept_name" VARCHAR(30),
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     ),
    CONSTRAINT "uc_departments_dept_name" UNIQUE (
        "dept_name"
    )
);

SELECT * FROM departments

CREATE TABLE "employees" (
    "emp_no" INT  NOT NULL, -- Cannot use SERIAL as there is a break between 299999 and 400000
    "emp_title_id" VARCHAR(5),
    "birth_date" DATE ,
    "first_name" VARCHAR(30),
    "last_name" VARCHAR(30),
    "sex" VARCHAR(1) ,
    "hire_date" DATE ,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);
SELECT * FROM employees

CREATE TABLE "salaries" (
    "emp_no" INT ,
    "salary" money ,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "emp_no"
     )
);

SELECT * FROM salaries

CREATE TABLE "dept_emp" (
    "emp_no" INT ,
    "dept_no" VARCHAR(4) ,
    CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "emp_no","dept_no"
     )
);
SELECT * FROM dept_emp


