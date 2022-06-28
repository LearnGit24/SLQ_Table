-- Data Query Language
-- Select

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

use intro_sql;

drop table emp_info;

select * from emp_info;

show tables;

insert into emp_info values('Eric', 'Wing', 2253, 55, 'US','California');

insert into emp_info values('Brick', 'Wing', 2254,56, 'US', 'Manhatton');
insert into emp_info values('Jonh', 'Pure', 2255, 56, 'UK', 'Wales');
insert into emp_info values('Leroy', 'Brown',2283,61,'Showlow','Arizona');
insert into emp_info values('Elory', 'Cleaver',3669,22,'Globe','Arizona');
insert into emp_info values('Gus', 'Grey',5596,29,'Bagdad ','Arizona');
insert into emp_info values('Ginger', 'Howell',98002,42,'Cottonwood ','Arizona');
insert into emp_info values('Sebastian', 'Smit',92001,23,'Gila Bend ','Arizona');
insert into emp_info values('Mary Ann', 'May',92009,23,'Tuscon ','Arizona');


select * from emp_info;
select first_name, last_name from emp_info;

select count(*) from emp_info;

select count(id) from emp_info;

select count(*) as Record_Count from emp_info;

select first_name as firstName, last_name as lastName from emp_info;


select first_name,last_name, city from emp_info;

select * from emp_info where age > 30;

select * from emp_info where age > 30 and age < 50;

select * from emp_info where first_name like 'E%';


select * from emp_info where last_name like '%y';

select * from emp_info where age = 22 or age = 32;

select * from emp_info where age in(22,56);

select * from emp_info where city like '%d%';

select * from emp_info where last_name = 'Wing';
select * from emp_info where last_name = 'Wing' and id = 2253;

select * from emp_info;