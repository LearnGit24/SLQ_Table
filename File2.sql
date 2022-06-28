-- Data Definition Language
/*
Create
Alter 
Drop
*/

use intro_SQL;

show tables;

create table employees
(
emp_name varchar(50),
emp_id int not null,
manager_name varchar(50),
division int,
PRIMARY KEY (emp_id)
);

select * from employees;

-- Create Table

create table my_emp_data
(
firstname varchar(50),
lastname varchar(50),
title varchar(50),
age int,
salary int
);


show tables;

select * from my_emp_data;

-- Alter Table
alter table my_emp_data
add gender varchar(1);

alter table my_emp_data
add random varchar(1);


alter table my_emp_data

-- Drop Table
drop random;

select * from my_emp_data;

show tables;

create database random_new;
drop database random_new;


