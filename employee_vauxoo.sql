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
  employee_department_id integer REFERENCES employee_department(id),
  boss_id integer REFERENCES employee(id)
);

CREATE TABLE employee_hobby
(
  id serial NOT NULL,
  name varchar(70) NOT NULL,
  description varchar(200) NOT NULL,
  CONSTRAINT id_hobby PRIMARY KEY (id)
);

CREATE TABLE employee_hobbies
(
  employee_id  integer REFERENCES employee(id),
  employee_hobby_id integer REFERENCES employee_hobby(id)

);

INSERT INTO employee_department VALUES 
     (1, 'Accounting and Finance', 'Financial record keeping of transactions involving monetary inflows or outflows'),
     (2, 'Marketing', 'Involves researching what customers want and analysing how the organisation can satisfy these wants'),
     (3,'Human Resources', 'Recruitment and selection. Ensuring that the right people are recruited to the right jobs.'),
     (4, 'Production', 'Activities necessary to provide the organisation’s products or services'),
     (5,'Design', 'Work across platforms to create powerful visuals that highlight each of our product’s unique personalities.'),
     (6, 'Purchasing', 'Acquiring goods and services for use by the organisation');

INSERT INTO employee  VALUES 
     (1, 'Edilianny', 'Sanchez', 2, 2),
     (2, 'Karilin', 'Fuentes', 3, 3),
     (3, 'Luis', 'Perez', 5, 1),
     (4, 'Jose', 'Rivas', 2, 3);

INSERT INTO employee_hobby
    VALUES 
     (1, 'Movies', 'Movies'),
     (2, 'Cycling', 'Cycling'),
     (3, 'Sing', 'Sing');

INSERT INTO employee_hobbies
    VALUES (1, 1),
           (1, 2),
           (2, 3),
           (2, 1),
           (3, 1),
           (3, 3),
           (4, 1),
           (4, 2);
-- ...
