create database join_sql;

use join_sql;
show tables;

create table customers
(
customerid int not null,
customername varchar(100),
contactname varchar(100),
address varchar(100),
city varchar(100),
postalcode varchar(10),
country varchar(20),
PRIMARY KEY(customerid)
);

create table orders
(
OrderID int,
CustomerID int,
EmployeeID int,
OrderDate datetime,
ShipperID int,
PRIMARY KEY(orderid)
);

show tables;

select * from orders;

insert into customers values(1,'Sid', 'Sid','Bangalore', 'Bangalore', 560047, 'India');
insert into customers values(2,'Rid', 'Rid','Mysore', 'Mysore', 760047, 'India');
insert into customers values(3,'Mid', 'Mid','Mysore', 'Mysore', 760047, 'India');
insert into customers values(4,'Tid', 'Tid','Channapatna', 'Channapatna', 360047, 'India');
insert into customers values(5,'Nid', 'Nid','Channapatna', 'Channapatna', 360047, 'India');
insert into customers values(6,'Fid', 'Fid','Bangalore', 'Bangalore', 560047, 'India');
insert into customers values(7,'Kid', 'Kid','Mangalore', 'Mangalore', 660047, 'India');
insert into customers values(8,'Lid', 'Lid','Bangalore', 'Bangalore', 560047, 'India');

insert into customers values(9,'Zid', 'Zid','Mangalore', 'Mangalore', 660047, 'India');
insert into customers values(10,'Cid', 'Cid','Bangalore', 'Bangalore', 560047, 'India');

select * from customers;
select * from orders;

insert into orders values(901,1,1,sysdate(), 92801);
insert into orders values(902,1,1,sysdate()-10, 92801);
insert into orders values(903,4,4,sysdate()-20, 92801);
insert into orders values(904,5,5,sysdate()-30, 92801);
insert into orders values(905,6,6,sysdate()-40, 92801);
insert into orders values(906,7,7,sysdate()-20, 92801);
insert into orders values(907,11,11,sysdate()-10, 92801);

-- Left Join
/* Will have everything from the first table and only those values 
that correspond to customer table from orders table*/

select c.customerid, c.customername, c.country, o.orderid, o.orderdate from customers c left join orders o
ON c.customerid = o.customerid;


-- Right Join
/* Will have everything from the second table and only those values 
that correspond to second table table from first table*/

select c.customerid, c.customername, c.country, o.orderid, o.orderdate from customers c right join orders o
ON c.customerid = o.customerid;

-- Inner Join
select c.customerid, c.customername, c.country, o.orderid, o.orderdate from customers c inner join orders o
ON c.customerid = o.customerid;

select c.customerid, c.customername, c.country, o.orderid, o.orderdate from customers c, orders o
where c.customerid = o.customerid;

-- Outer JOIN

select c.customerid, c.customername, c.country, o.orderid, o.orderdate from customers c left join orders o
ON c.customerid = o.customerid
union
select c.customerid, c.customername, c.country, o.orderid, o.orderdate from customers c right join orders o
ON c.customerid = o.customerid;

-- Cross Join

select c.customerid, c.customername, c.country, o.orderid, o.orderdate from customers c cross join orders o
ON c.customerid = o.customerid;

