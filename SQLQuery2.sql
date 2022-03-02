Create database Payroll_Service;
use payroll_Service;

---UC2 Create Table---
create table employee_payroll
(
 id int identity(1,1) primary key,
 name varchar(100),
 salary float,
 startdate date,
);

---UC3 Create Employee payroll database service as a part of CURD operation---
INSERT INTO employee_payroll (Name, Salary, Startdate) VALUES ('Arjun', 45986.58, getdate());
INSERT INTO employee_payroll  VALUES ('Ramesh', 95986.58, getdate());
INSERT INTO employee_payroll  VALUES ('Rakesh', 685986.58, getdate());
INSERT INTO employee_payroll (Name, startdate) VALUES ('Sonu', getdate());

--- UC4 Ability to retrieve all the data that is added in payroll service database----
select * from employee_payroll where Name= 'Ramesh';
select id,Name from employee_payroll where Name= 'Ramesh';

---UC5 Ability to retrieve salary data for a particular employee-----
select salary from employee_payroll where Name= 'Ramesh';
select * from employee_payroll;
select salary,Name from employee_payroll where startdate between CAST('2021-02-02' as Date) and getdate();

---UC6 Ability to Add Gender To Employee----
ALTER TABLE employee_payroll ADD Gender char(1);

update employee_payroll set Gender='M' WHERE id=3;
update employee_payroll set Gender='M' WHERE id=1;
update employee_payroll set Gender='F' WHERE id=2;
update employee_payroll set Gender='M' WHERE id=1;
update employee_payroll set Gender='F' WHERE id=4;

select sum(Salary) as TotalSalary,Gender from employee_payroll group by Gender;
select * from employee_payroll;
select Avg(salary) as NumbOfEmployees,Gender from employee_payroll group by Gender;

----UC7 Ability to find sum, average, min, max no of male and female---


select sum(salary) as 'totalSalary',Gender from employee_payroll group by Gender;
select avg(salary) as 'averageSalary',Gender from employee_payroll group by Gender;
select min(salary) as 'minimumSalary',Gender from employee_payroll group by Gender;
select max(salary) as 'maximumSalary',Gender from employee_payroll group by Gender;
select count(Gender) as 'male' from employee_payroll where Gender='M';
select count(Gender) as 'female' from employee_payroll where Gender='F'; 

select * from employee_payroll;

---UC8 Ability to store employee information like employee phone, address-----

alter table employee_payroll add 
phone varchar(200),
department varchar(100) not null default 'CSE',
address varchar(250) not null default 'Banglore';
