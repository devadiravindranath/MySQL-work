create database normalization;
use normalization;

create table student_data_unnormalized (
	student_id int,
    student_name varchar(50),
    course1 varchar(50),
    course2 varchar(50),
    course3 varchar(50),
    department varchar(50),
    advisor varchar(50)
);

insert into student_data_unnormalized values
(101,'ravi','python','java','dbms','ece','sowmya'),
(102,'arjun','c','c++','os','cse','kiran'),
(103,'meena','python','ml','ai','ece','sneha'),
(104,'rahul','java','spring','hibernate','cse','anita'),
(105,'divya','html','css','javascript','ece','priya'),
(106,'karthik','sql','dbms','plsql','cse','ramesh'),
(107,'suresh','python','django','flask','cse','anil'),
(108,'latha','c','data structures','algorithms','ece','kavitha');

-- view unnormalized data

select * from student_data_unnormalized;

-- convert to inf(split multi-valued columns into separate rows)

create table student_data_1nf(
	student_id int,
    student_name varchar(50),
    course varchar(50),
    department varchar(50),
    advisor varchar(50)
);

insert into student_data_1nf(student_id,student_name,course,department,advisor) values
(101,'ravi','python','ece','sowmya'),
(101,'ravi','java','ece','sowmya'),
(101,'ravi','dbms','ece','sowmya'),

(102,'arjun','c','cse','kiran'),
(102,'arjun','c++','cse','kiran'),
(102,'arjun','os','cse','kiran'),

(103,'meena','python','ece','sneha'),
(103,'meena','ml','ece','sneha'),
(103,'meena','ai','ece','sneha'),

(104,'rahul','java','cse','anita'),
(104,'rahul','spring','cse','anita'),
(104,'rahul','hibernate','cse','anita'),

(105,'divya','html','ece','priya'),
(105,'divya','css','ece','priya'),
(105,'divya','javascript','ece','priya'),

(106,'karthik','sql','cse','ramesh'),
(106,'karthik','dbms','cse','ramesh'),
(106,'karthik','plsql','cse','ramesh'),

(107,'suresh','python','cse','anil'),
(107,'suresh','django','cse','anil'),
(107,'suresh','flask','cse','anil'),

(108,'latha','c','ece','kavitha'),
(108,'latha','data structures','ece','kavitha'),
(108,'latha','algorithms','ece','kavitha');

select * from student_data_1nf;

-- convert to 2nf(remove partial dependency)
-- split into student table and enrollment table

create table student_data_2nf_students (
	student_id int primary key,
    student_name varchar(50),
    department varchar(20),
    advisor varchar(30)
);

insert into student_data_2nf_students 
select distinct student_id,student_name, department , advisor
from student_data_1nf;

create table student_data_2nf_enrollment(
	student_id int,
    course varchar(30),
    foreign key(student_id) references student_data_2nf_students(student_id)
);

insert into studnet_data_2nf_enrollment(student_id,course)
select student_id, course from student_data_1nf;

-- view Both Tables
select * from student_data_2NF_students;
select * from student_data_2NF_enrollment;

-----------------------------------------------
-- convert to 3NF (Remove transitive dependency)
-- Department and Advisor relationship stored seperately
-----------------------------------------------
 create table department_3NF(
	student_id int primary key,
    student_name varchar(30),
    department varchar(20),
    foreign key (department_id) references department_3nf(department_id)
 );

insert into students_3nf
select distinct student_id, student_name, department from student_data_2nf_students;





