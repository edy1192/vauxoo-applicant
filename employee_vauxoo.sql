-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee_department (
      id integer primary key,
      name varchar(50) NOT NULL,
      description varchar(200) NOT NULL
);

CREATE TABLE employee (
  id integer PRIMARY KEY,
  first_name char(100) NOT NULL,
  last_name char(100) NOT NULL,
  employee_department_id integer REFERENCES employee_department(id)
);

INSERT INTO employee_department VALUES 
     (1, 'Accounting and Finance', 'Financial record keeping of transactions involving monetary inflows or outflows'),
     (2, 'Marketing', 'Involves researching what customers want and analysing how the organisation can satisfy these wants'),
     (3,'Human Resources', 'Recruitment and selection. Ensuring that the right people are recruited to the right jobs.'),
     (4, 'Production', 'Activities necessary to provide the organisation’s products or services'),
     (5,'Design', 'Work across platforms to create powerful visuals that highlight each of our product’s unique personalities.'),
     (6, 'Purchasing', 'Acquiring goods and services for use by the organisation');

INSERT INTO employee  VALUES 
     (1, 'Edilianny', 'Sanchez', 2),
     (2, 'Karilin', 'Fuentes', 3),
     (3, 'Luis', 'Perez', 5),
     (4, 'Jose', 'Rivas', 2);
-- ...
