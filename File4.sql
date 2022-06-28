-- DML :  Data Manipulation Language
/*
Insert
Update
Delete
*/

use intro_sql;

drop table emp_info;

show tables;

create table emp_info
(
first_name varchar(50),
last_name varchar(50),
id int not null,
age int,
city varchar(50),
state varchar(50),
PRIMARY KEY (id)
);

select * from emp_info;

insert into emp_info (first_name,last_name,id,age,city,state)
values('John', 'Jones',99980,45,'Payson','Arizona');

insert into emp_info values('John', 'Jones',99980,45,'Payson','Arizona');

insert into emp_info values('Brick', 'Wing', 2254,56, 'US', 'Manhatton');
insert into emp_info values('Jonh', 'Pure', 2255, 56, 'UK', 'Wales');
insert into emp_info values('Leroy', 'Brown',2283,61,'Showlow','Arizona');
insert into emp_info values('Elory', 'Cleaver',3669,22,'Globe','Arizona');
insert into emp_info values('Gus', 'Grey',5596,29,'Bagdad ','Arizona');
insert into emp_info values('Ginger', 'Howell',98002,42,'Cottonwood ','Arizona');
insert into emp_info values('Sebastian', 'Smit',92001,23,'Gila Bend ','Arizona');
insert into emp_info values('Mary Ann', 'May',92009,23,'Tuscon ','Arizona');

-- The Age column is type casted from string to int but if 'qwerty' like value is present in 
-- the int dtype it will not be typecasted

insert into emp_info values('Test', 'Name',93369,'23','Tuscon ','Arizona');  

select * from emp_info where first_name = 'test'; 

create table emp_info_t
( 
f_name varchar(50),
l_name varchar(50),
title varchar(50),
age int,
salary int
);

select * from emp_info_t;

-- Insert Query

insert into emp_info_t values('Jonie','Weber','Secretary',28,19500.00);
insert into emp_info_t values('Potsy', 'Weber', 'Programmer',32, 15300.00);
insert into emp_info_t values ('Dirk','Smith','Programmer II', 45, 29020.00);
insert into emp_info_t values('Brick', 'Wing','Data Analyst',56, 75000.00);
insert into emp_info_t values('Gus', 'Grey','Data Scientist',56, 95000.00);
insert into emp_info_t values('Mary', 'May','AIEngineer', 85, 110000.00);
insert into emp_info_t values('Elory', 'Cleaver','DevOps',22, 125000.00);
insert into emp_info_t values('Sebastian', 'Smit','Uipath',23,19000.00);

-- Select all columns
select * from emp_info_t;

-- Select columns where salary is > 30k
select * from emp_info_t where salary > 30000;

-- Select first an Last name whose age is less that 30 yrs
select first_name as F_Name, last_name as L_Name from emp_info_t where age < 30; 

-- Select age less than 30
select f_name, l_name from emp_info_t where age < 30;

-- Select title has Programmer
select f_name, l_name, salary from emp_info_t where title like '%Programmer%';

-- All columns Last name ends with "ebe"
select * from emp_info_t where l_name like '%ebe%';

-- All columns where first name == Potsy
select * from emp_info_t where l_name = 'Potsy';

select * from emp_info_t;

-- Update Query
-- Syntax : update table table_name set column = '' where filter

SET SQL_SAFE_UPDATES = 0;

update emp_info_t set title = 'Sr. Developer' where f_name = 'Potsy';
select * from emp_info_t;

-- update multiple Columns
update emp_info_t set title = 'Sr Data Scientist', age = 32 where f_name = 'Gus';
select * from emp_info_t;


-- Update age 
select * from emp_info_t where f_name = 'Elory';
update emp_info_t set age = age + 1 where f_name = 'Elory';
-- or
update emp_info_t set age = 22 where f_name = 'Elory';


-- Update All
update emp_info_t set title = 'Adminstrative Assistant' where title = 'Secretary';
select * from emp_info_t;

-- Delete age
-- Syntax delete from table_name where designation = 'value'

delete from emp_info_t where title = "Uipath";
select * from emp_info_t;

-- To delete all the data from the table but still the table exists
delete from emp_info_t;  

-- To completely delete the table as well as data
drop table table_name

