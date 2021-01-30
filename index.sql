
//Q1

CREATE TABLE countries(
    country_id smallint NOT NULL,
    country_name varchar(15) NOT NULL,
    region_id int NOT NULL,
    PRIMARY KEY (country_id)
)



//Q2

CREATE TABLE IF NOT EXISTS countries(
    country_id smallint NOT NULL,
    country_name varchar(15) NOT NULL,
    region_id int NOT NULL,
    PRIMARY KEY (country_id)
)




//Q3

CREATE TABLE  dup_countries LIKE countries;



//Q4

CREATE TABLE IF NOT EXISTS dup_countries AS SELECT * FROM countries



//Q5

CREATE TABLE IF NOT EXISTS countries(
    country_id int NOT NULL,
    country_name varchar(30) NOT NULL,
    region_id int NOT NULL,
    PRIMARY KEY (country_id)
)




//Q6

CREATE TABLE IF NOT EXISTS jobs (
    job_id int (10) NOT NULL,
    job_title varchar (100) NOT NULL,
    min_salary decimal (5, 0),
    max_salary decimal (5, 0)
    CHECK (max_salary <= 25000)
);





//Q7

CREATE TABLE IF NOT EXISTS countries(
  job_id int (10) NOT NULL,
    job_title varchar (100) NOT NULL,
    min_salary decimal (5, 0),
    max_salary decimal (5, 0)
    CHECK (country_name IN('Italy','India','China')) 
)





//Q8

CREATE TABLE IF NOT EXISTS jobs_history (
    emoloyee_id int (10) NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    CHECK (end_date LIKE '--/--/----'),
    job_id int (10) NOT NULL,
    department_id varchar (10) NOT NULL,
);

//Q9

CREATE TABLE IF NOT EXISTS countries(
    country_id int NOT NULL UNIQUE,
    country_name varchar(15) NOT NULL,
    region_id int NOT NULL,
    PRIMARY KEY (country_id)
)


//Q10

CREATE TABLE IF NOT EXISTS jobs(      
 	jobs_id int NOT NULL,
  	job_title varchar(10) NOT NULL,
  	min_salary int DEFAULT 8000,
  	max_salary int DEFAULT NULL
  	
  
)




//Q11

CREATE TABLE IF NOT EXISTS countries(
    country_id int NOT NULL,
    country_name varchar(30) NOT NULL,
    region_id int NOT NULL,
    PRIMARY KEY (country_id)
)





//Q12

CREATE TABLE IF NOT EXISTS countries(
    country_id int NOT NULL UNIQUE AUTO_INCREMENT,
    country_name varchar(15) NOT NULL,
    region_id int NOT NULL,
    PRIMARY KEY (country_id)
)




//Q13

CREATE TABLE IF NOT EXISTS countries(
    country_id int NOT NULL UNIQUE ,
    country_name varchar(30) NOT NULL,
    region_id int NOT NULL UNIQUE,
    PRIMARY KEY (country_id)
)






//Q14


CREATE TABLE job_history(
  EMPLOYEE_ID decimal(5,0) NOT NULL PRIMARY KEY, 
START_DATE date NOT NULL, 
END_DATE date NOT NULL, 
JOB_ID varchar(5) NOT NULL, 
DEPARTMENT_ID decimal(5,0) DEFAULT NULL, 
FOREIGN KEY (job_id) REFERENCES jobs(job_id)
)





//Q15

CREATE TABLE IF NOT EXISTS employee(
  employee_id int NOT NULL  PRIMARY KEY,
  first_name varchar(20) NOT NULL,
  last_name varchar(20) NOT NULL,
  email varchar(30) NOT NULL,
  department_id int NOT NULL,
  manager_id int NOT NULL,
  FOREIGN KEY(department_id,manager_id) REFERENCES  departments(department_id,manager_id)
  )





//Q16

CREATE TABLE IF NOT EXISTS employee(
  employee_id int NOT NULL  PRIMARY KEY,
  first_name varchar(20) NOT NULL,
  last_name varchar(20) NOT NULL,
  email varchar(30) NOT NULL,
  department_id int NOT NULL,
  manager_id int NOT NULL,
  job_id int NOT NULL,
  FOREIGN KEY(department_id,manager_id) REFERENCES departments(department_id,manager_id),
  FOREIGN KEY(department_id ) REFERENCES  departments(department_id ),
  FOREIGN KEY(JOB_ID) REFERENCES  jobs(JOB_ID)
)





//Q17
CREATE TABLE IF NOT EXISTS employee(
  employee_id int NOT NULL  PRIMARY KEY,
  first_name varchar(20) NOT NULL,
  last_name varchar(20) NOT NULL,
  email varchar(30) NOT NULL,
  department_id int NOT NULL,
  manager_id int NOT NULL,
  job_id int NOT NULL,
  FOREIGN KEY(department_id ) REFERENCES  departments(department_id ),
  FOREIGN KEY(job_id) REFERENCES  jobs(job_id)
);






//Q18

CREATE TABLE IF NOT EXISTS employee(
  employee_id int NOT NULL  PRIMARY KEY,
  first_name varchar(20) NOT NULL,
  last_name varchar(20) NOT NULL,
  email varchar(30) NOT NULL,
  department_id int NOT NULL,
  manager_id int NOT NULL,
  job_id int NOT NULL,
  FOREIGN KEY(job_id) REFERENCES  jobs(job_id)
  ON DELETE CASCADE ON UPDATE RESTRICT
);	




//Q19


CREATE TABLE  IF NOT EXISTS employee(
  employee_id int NOT NULL  PRIMARY KEY,
  first_name varchar(20) NOT NULL,
  last_name varchar(20) NOT NULL,
  email varchar(30) NOT NULL,
  department_id int NOT NULL,
  manager_id int NOT NULL,
  job_id int NOT NULL,
  FOREIGN KEY(job_id) REFERENCES  jobs(job_id)
  ON DELETE SET NULL 
  ON UPDATE SET NULL
);




//Q20


CREATE TABLE IF NOT EXISTS employee(
  employee_id int NOT NULL  PRIMARY KEY,
  first_name varchar(20) NOT NULL,
  last_name varchar(20) NOT NULL,
  email varchar(30) NOT NULL,
  department_id int NOT NULL,
  manager_id int NOT NULL,
  job_id int NOT NULL,
  FOREIGN KEY(job_id) REFERENCES  jobs(job_id)
  ON DELETE NO ACTION 
  ON UPDATE NO ACTION
);
  