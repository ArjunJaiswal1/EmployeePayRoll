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
INSERT INTO employee_payroll (Name, Salary, Startdate) VALUES ('Arjun', 45956.58, getdate());
INSERT INTO employee_payroll  VALUES ('Ramesh', 95346.58, getdate());
INSERT INTO employee_payroll  VALUES ('Rakesh', 685876.58, getdate());
INSERT INTO employee_payroll (Name, startdate) VALUES ('Sonu', getdate());

--- UC4 Ability to retrieve all the data that is added in payroll service database----
select * from employee_payroll where Name= 'Ramesh';
select id,Name from employee_payroll where Name= 'Ramesh';
