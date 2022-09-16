show databases;
create database payroll_services;
use payroll_services;
select database();
create table employee_payroll(id int not null auto_increment, name varchar(150) not null,salary Double not null,startDate Date not null, primary key(id) );
describe employee_payroll;
insert into employee_payroll(name,salary,startDate) VALUES ('Bill',1000000.00,'2018-01-03'), ('Teresa',2000000.00,'2019-11-13'), ('Charlie',3000000.00,'2020-05-21');
select * from employee_payroll;
select salary from employee_payroll where startDate between cast('2018-01-01' as date) and date(now());
select * from employee_payroll where salary > 30000;
select salary from employee_payroll where startDate between cast('2019-01-01' as date) and date(now());
alter table employee_payroll add gender char(1) not null after name;

describe employee_payroll;
update employee_payroll set gender = 'F' where name = 'Teresa';
update employee_payroll set gender = 'M' where name = 'Bill' or name = 'charlie';
select * from employee_payroll;
update employee_payroll set salary = '3000000.00' where name = 'Teresa';
select * from employee_payroll;
select avg(salary) from employee_payroll where gender = 'M' group by gender;
select avg(salary) from employee_payroll group by gender;
select gender, avg(salary) from employee_payroll group by gender;
select gender, count(name) from employee_payroll group by gender;
select gender, sum(salary) from employee_payroll group by gender;
select gender, min(salary) from employee_payroll group by gender;
select gender, max(salary) from employee_payroll group by gender;
alter table employee_payroll add Phone int(13);
alter table employee_payroll add Department varchar(250);
alter table employee_payroll add address varchar(250);
select * from employee_payroll;
alter table employee_payroll alter address set default 'Mumbai';
select * from employee_payroll;
alter table employee_payroll add basicPay Double;
alter table employee_payroll add Deductions Double;
alter table employee_payroll add TaxablePay Double;
alter table employee_payroll add IncomeTax Double;
alter table employee_payroll add NetPay Double;
select * from employee_payroll;
insert into employee_payroll (name, gender, salary, startDate, Phone, Department, address, basicPay, Deductions, TaxablePay, IncomeTax, NetPAy) VALUES ('Teresa', 'F', 3000000.00, '2018-01-03', 985628, 'Marketing', 'Mumbai', 3000000.00, 1000000.00, 2000000.00, 500000.00, 15000000.00);
select * from employee_payroll;
update employee_payroll set Department = 'Sales' where id = '2';
select * from employee_payroll;
update employee_payroll set Department = 'Sales' where id = '1';
update employee_payroll set Department = 'Marketing' where id = '3';
update employee_payroll set Phone = '777582777' where id = '3';
update employee_payroll set Phone = '777582777' where id = '3';
update employee_payroll set Phone = '827582777' where id = '1' or '2';
update employee_payroll set address = 'Mumbai' where id = '1' or '2' or '3' or '4';
update employee_payroll set basicPay = 3000000.00 where id = '1' or '2' or '3' or '4';
select * from employee_payroll;
update employee_payroll set Phone = '777582777' where id = '3';
update employee_payroll set Phone = '777582827' where id = '1';
update employee_payroll set Phone = '982582827' where id = '4';
update employee_payroll set Deductions = 9000000 where id = '1';
update employee_payroll set Deductions = 8000000 where id = '2';
update employee_payroll set Deductions = 7000000 where id = '3';
update employee_payroll set TaxablePay = 2100000 where id = '1';
update employee_payroll set TaxablePay = 2200000 where id = '2';
update employee_payroll set TaxablePay = 2300000 where id = '3';
update employee_payroll set IncomeTax = 500000.00 where id = '1' or '2' or '3' or '4';
update employee_payroll set NetPay = 1600000 where id = '1';
update employee_payroll set NetPay = 1700000 where id = '2';
update employee_payroll set NetPay = 1800000 where id = '3';
select * from employee_payroll;
create table Department ( department varchar(250) NOT NULL, primary key (department) );
insert into Department ( department ) VALUES ('Sales'),('Marketing');
create table Employee ( id int, compID int, PhoneNumber bigint(13), address varchar(25), gender char(1), primary key (id) );
insert into Employee (id, compID, PhoneNumber, address, gender) VALUES ( 1, 10, 7775827779, 'Mumbai', 'F'), (2, 11, 7775828889, 'Mumbai', 'M');
select * from Employee;
create table Emp_Department (empID int, Depart varchar(250) not null, foreign key (empID) references Employee (id), foreign key (Depart) references Department (department), primary key (empID, Depart));
describe Emp_Department;
insert into Emp_Department (empID, Depart) VALUES (1, 'Marketing');
insert into Emp_Department (empID, Depart) VALUES (1, 'Sales');
insert into Emp_Department (empID, Depart) VALUES (2, 'Sales');
insert into Emp_Department (empID, Depart) VALUES (2, 'Marketing');
select * from Emp_Department;
select * from Emp_Department where empID = 1;
select * from Department where department = 1;
select * from Department where department = 'sales';
