-- Pranav Tanna Date: 16/01/2024
-- creating database
create database NetTech
use NetTech
/* Creating table 
	and then inserting data into table employee */
create table Employee(
emp_id int,
emp_name varchar(20),
City varchar(20),
Address varchar(50),
Salary int);

insert into Employee(emp_id,emp_name,City,Address,Salary) Values(1,"Pranav","Thane","Brahmand",1000);
insert into Employee Values(2,"Abhishek","Dahisar","Dahisar East",2000);
insert into Employee Values(3,"Deepika","Goregoan","Film City",3000);
insert into Employee Values(4,"Nikhil","Thane","Brahmand",4000);
insert into Employee Values(5,"abc","Thane","Brahmand",4000);


select * from Employee order by Emp_ID
select emp_name,Salary from Employee
select Distinct City,Address from Employee
select COUNT(distinct City) from Employee
select * from Employee where City="Thane"

update Employee set Address="Boisar" where emp_id=1

Create database Hello
drop database Hello

Alter table Employee
rename column emp_id TO Emp_ID
Alter table Employee
rename column emp_name TO Emp_Name

alter table Employee
add Email varchar(20)

alter table Employee
drop column Email

SELECT * FROM Employee
WHERE City = 'Thane' AND Address = 'Brahmand';

SELECT * FROM Employee
WHERE City = 'Thane' OR Address = 'Brahmand';

SELECT * FROM Employee
WHERE NOT City = 'Thane';

SELECT * FROM Employee
order by Address desc

delete from Employee where Emp_ID=5

select COUNT(Salary) from Employee
select MIN(Salary) from Employee
select MAX(Salary) from Employee
select AVG(Salary) from Employee

select * from Employee
where Emp_Name like '%i%'

select * from Employee
where Salary between 2000 AND 3000

select Emp_ID as ID, Emp_Name as Name from Employee

alter table Employee
add Email varchar(50)

update Employee
set Email='abcgmail.com' where Emp_Name='Abhishek'

update Employee
set Email='xyz@gmail.com' where Emp_Name='Pranav'

select count(Emp_ID), Address from Employee
group by Address
having count(Emp_ID) > 1

alter table Employee
add check (Salary>=1000)

select * from Employee

-- Joins concept
create table Orders(
Prod_id int not null,
Prod_name varchar(20),
Emp_ID int,
Address varchar(50),
Price int,
primary key (Emp_ID),
foreign key (Emp_ID) references Employee(Emp_ID));

insert into Orders Values(1001,"soap",1,"Brahmand",77);
insert into Orders Values(2001,"shampoo",2,"Dahisar East",50);
insert into Orders Values(3001,"brush",3,"Film City",90);
insert into Orders Values(4001,"toothpaste",4,"Brahmand",353);
insert into Orders Values(5001,"abc",5,"Brahmand",48);

select * from Orders
select * from Employee

/*
alter table Employee
add primary key (Emp_ID)

alter table Employee
add foreign key (Emp_ID) references Orders(Emp_ID)
*/

select Orders.Prod_name, Employee.Emp_ID, Orders.Price
From Employee inner join Orders on Orders.Emp_ID=Employee.Emp_ID

select Orders.Prod_name, Employee.Emp_ID, Orders.Price
From Employee cross join Orders on Orders.Emp_ID=Employee.Emp_ID
order by Price

update Orders set Address="USA" where emp_id=2

select Emp_ID,Address from Employee
union
select Emp_ID,Address from Orders
order by Address