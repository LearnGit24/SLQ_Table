-- Data Definition Language
/*
Create
Alter 
Drop
*/

create database Intro_SQL; 

drop table Students;

create table Students
(
students_id int,
student_name varchar(50) not null,
age int,
gender varchar(1),
location varchar(100)
);

select * from Students;

insert into Students values (1,'Muzammil',30,'M','Medina');
insert into Students values (2,null,31,'M','India');

insert into Students values (3,'Jawad', 26, 'M', 'Mecca');

create table dep
(
depid int not null,
depname varchar(25),
depadd varchar(100),
primary key (depid)
);

select * from dep;

drop table dep;

create table  emp
(
empid int,
empname varchar(100),
depadd varchar(255),
depid int,
PRIMARY KEY (empid),
FOREIGN KEY (depid) REFERENCES dep(depid)
);

select * from emp;


drop table my_emp_data;

show tables;


