CREATE DATABASE codegnan;
USE codegnan;

CREATE TABLE students(
stud_id INT PRIMARY KEY ,
NAME VARCHAR(30),
email VARCHAR(50),
PASSWORD VARCHAR(30),
course VARCHAR(30),
phoneno VARCHAR(30),
address VARCHAR(50),
parent_name varchar(30),
parent_phno VARCHAR(60),
attendence decimal(3,2),
job_applied int,
exam_reports TEXT
);

INSERT INTO students values
(1,'ravi','ravi@gmail.com','@123456','python','123456789','abcd','laxman','78945612','90',2,'good'),
(2,'dileep','dileep@gmail.com','@12356','java','123465789','xyz','dad','786546412','80',2,'bad'),
(3,'abid','abid@gmail.com','@123886','mysql','123555789','a1b1','mom','785555612','75',3,'average'),
(4,'vicky','vicky@gmail.com','@12546','dbms','12345454','mnop','laxman','78900000','80',4,'good'),
(5,'uday','uday@gmail.com','@1222256','python','12000789','hfh','sis','7895545612','75',2,'good');

ALTER TABLE students
MODIFY attendence INT;

select * from students;

create view trainer_view as
select name,email,course,attendence,exam_reports from students;

select * from trainer_view;

create view program_manager_view as
select name,email,course,phoneno,parent_phno,attendence,exam_reports from students;

select * from program_manager_view;

create view placements_view as
select stud_id,name,email,course,parent_phno,attendence,exam_reports from students;

select * from placements_view;

