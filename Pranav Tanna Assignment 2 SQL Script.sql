-- Pranav Tanna Assignment 2
create database assignment2
use assignment2

create table EmployeeInfo(
Emp_ID int,
Emp_Fname varchar(20),
Emp_Lname varchar(20),
Department varchar(20),
Project int,
Address varchar(50),
DOB date,
Gender varchar(10)
);

alter table EmployeeInfo
modify column Project varchar(20)

insert into EmployeeInfo values (1,'Sanjay','Mehra','HR','P1','Hyderabad(HYD)','1976-12-01','M')
insert into EmployeeInfo values (2,'Ananya','Mishra','Admin','P2','Delhi(DEL)','1968-05-02','F')
insert into EmployeeInfo values (3,'Rohan','Diwan','Account','P3','Mumbai(BOM)','1980-01-01','M')
insert into EmployeeInfo values (4,'Sonia','Kulkarni','HR','P1','Hyderabad(HYD)','1992-05-02','F')
insert into EmployeeInfo values (5,'Ankit','Kapoor','Admin','P2','Delhi(DEL)','1994-07-03','M')

select * from EmployeeInfo

create table EmployeePosition(
Emp_ID int,
Emp_Position varchar(20),
DateOfJoining varchar(20),
Salary varchar(20)
);

alter table EmployeePosition
modify column DateOfJoining Date
alter table EmployeePosition
modify column Salary int

insert into EmployeePosition values (1,'Manager','2022-05-01',500000)
insert into EmployeePosition values (2,'Executive','2022-05-02',75000)
insert into EmployeePosition values (3,'Manager','2022-05-01',90000)
insert into EmployeePosition values (2,'Lead','2022-05-02',85000)
insert into EmployeePosition values (1,'Executive','2022-05-01',300000)

select * from EmployeePosition

--Q1)
select upper(Emp_Fname) as EmpName from EmployeeInfo

--Q2)
select * from EmployeeInfo
where Department='HR'

--Q3)
select curdate()

--Q4)
select Left(Emp_Lname,  4) from EmployeeInfo

--Q5)
select * from EmployeePosition
where Salary between 50000 AND 100000

--Q6)
select * from EmployeeInfo
where Emp_Fname like 'S%'

--Q7) N=4
select * from EmployeeInfo limit 0,4

--Q8)
select CONCAT(Emp_Fname, ' ',Emp_Lname) as FullName from EmployeeInfo

--Q9)
select * from EmployeeInfo
where DOB between '1965-05-02' AND '1977-12-31'

--Q10)
select * from EmployeeInfo
order by Emp_Lname desc, Department asc

--Q11)
select * from EmployeeInfo
where Emp_Lname like '%a'

--Q12)
select * from EmployeeInfo
where Address='Delhi(DEL)'

--Q13)
select * from EmployeePosition
where Emp_Position='Manager'

Q14)
select Department,Count(*) as EmpDepCount from EmployeeInfo
group by Department
order by EmpDepCOunt asc