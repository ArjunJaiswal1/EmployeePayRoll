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
INSERT INTO employee_payroll (Name, Salary, Startdate) VALUES ('Mohammed', 45986.58, getdate());
INSERT INTO employee_payroll  VALUES ('Ramesh', 95986.58, getdate());
INSERT INTO employee_payroll  VALUES ('Rakesh', 685986.58, getdate());
INSERT INTO employee_payroll (Name, startdate) VALUES ('Roy', getdate());

--- UC4 Ability to retrieve all the data that is added in payroll service database----
select * from employee_payroll where Name= 'Sajid';
select id,Name from employee_payroll where Name= 'Sajid';

---UC5 Ability to retrieve salary data for a particular employee-----
select salary from employee_payroll where Name= 'Sajid';
select * from employee_payroll;
select salary,Name from employee_payroll where startdate between CAST('2021-02-02' as Date) and getdate();
