
select * from customerchurndb;

select gender, count(*) from customerchurndb
group by gender;

select gender from customerchurndb
group by gender;

select * from customerchurndb order by customerId desc;
select * from customerchurndb order by customerId asc;

select * from customerchurndb order by customerId desc limit 5;

select contract,count(*) from customerchurndb
group by contract order by contract desc;


select contract,count(*) as cnt from customerchurndb
group by contract order by cnt desc;

-- Where

select contract,totalcharges,count(*) from customerchurndb where totalcharges > 3000;

-- Having Clause

select contract, count(*) as cnt from customerchurndb
group by contract having cnt > 500;

select contract,gender, count(*) as cnt from customerchurndb
group by contract,gender having cnt > 800;

select contract,gender, count(*) as cnt from customerchurndb
group by contract,gender having cnt > 800 order by contract asc;

-- LIMIT

select contract,gender, count(*) as cnt from customerchurndb
group by contract,gender having cnt > 800 order by contract asc limit 2;

