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
INSERT INTO employee_payroll  VALUES ('Rakeh', 685986.58, getdate());
INSERT INTO employee_payroll (Name, startdate) VALUES ('Salim', getdate());
