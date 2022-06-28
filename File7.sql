show tables;

select * from customerchurndb;

-- Group by function Syntax

/*

select columnName, count(*) from table_name
group by column_Name;

*/

select gender, count(*) from customerchurndb
group by gender;

 select contract, count(*) from customerchurndb
 group by contract;
 
 select Contract,Gender, count(*) from customerchurndb
 group by contract, gender order by Contract asc;
 
 -- Count function Syntax
 
 /* 
 select count(*) from tablr_name;
 or you can use Unique ID
 */
 
 select * from customerchurndb;
 
 select count(*) from customerchurndb;
 select count(customerID) from customerchurndb;
 
  select count(customerID) from customerchurndb where gender = "Male";


-- Sum Min and Max column.

select round(sum(totalcharges),2) from customerchurndb;
select round(avg(totalcharges),2) from customerchurndb;

select min(totalcharges) from customerchurndb;
select max(totalcharges) from customerchurndb;
