create table Company
(
company_id int primary key,
company_name varchar(20) not null default 'TBD'
);

create table Employee
(
employee_id int primary key,
employee_name varchar(20) not null,
geneder varchar(1) not null,
phone_number varchar(10),
start_date date not null
);

alter table Employee add basic_pay money not null default 'TBD';
EXEC sp_rename 'Employee.basic_pay', 'basic_pay'

create table Department
(
department_id int primary key,
department_name varchar(20) not null,
);

create table Payroll
(
payroll_id int primary key,
basic_pay money not null,
deduction money,
taxable_pay money,
income_tax money,
net_pay money not null
);

alter table Employee
add Company_Employee_Id int
references Company(company_id);

alter table Employee
add Payroll_ID int
references Payroll(payroll_id)

create table Employee_Department_Mapping
(
MappingID int not null primary key,
EmployeeID int not null,
DepartmentID int not null,
foreign key(EmployeeID) references Employee(employee_id),
foreign key(DepartmentID) references Department(department_id)
);

insert into Company values
(1, 'IBM'),
(2, 'Microsoft'),
(3, 'Oracal'),
(4, 'Infosys'),
(5, 'TCS'),
(6, 'Accenture'),
(7, 'Amdocs'),
(8, 'Birlasoft');

insert into Department values 
(11, 'Sales', 1),
(12, 'Marketing', 2)

insert into Department (department_id, department_name) values 
(1011, 'Maintenance'),
(1002, 'Accouting')

insert into Department (department_id, department_name) values 
(1001, 'Production'),
(1003, 'Management') 

insert into Payroll
(payroll_id, basic_pay, deduction, taxable_pay, income_tax, net_pay) values
(01, 200000.00, 1500.00, 23000.00, 3000.00, 350000.00),
(02, 300000.00, 1500.00, 23000.00, 4000.00, 400000.00),
(011, 20300.00, 3500.00, 33000.00, 4500.00, 450000.00)

select * from Employee;

insert into Employee 
(employee_id, employee_name, geneder, phone_number, start_date, basic_pay, CompanyID, Payroll_ID) values
(1, 'John', 'M', '654321098', '2018-03-12', 100000.00, 1, 11),
(2, 'Mike', 'M', '7654321980', '2019-12-23', 200000.00, 2, 12)

insert into Employee 
(employee_id, employee_name, geneder, phone_number, start_date, basic_pay, CompanyID, Payroll_ID) values
(3, 'Kate', 'F', '6443321098', '2017-04-12', 200000.00, 3, 011),
(4, 'Michale', 'M', '7654321980', '2019-12-23', 150000.00, 4, 01),
(5, 'Sam', 'M', '8443321098', '2017-04-12', 200000.00, 8, 02),
(6, 'Abby', 'F', '6633321980', '2020-12-23', 550000.00, 5, 011),
(7, 'Jacky', 'M', '8443321098', '2017-04-12', 200000.00, 2, 02),
(8, 'Abby', 'F', '6633321980', '2020-12-23', 550000.00, 3, 01)

insert into Employee_Department_Mapping values
(0001, 1, 11),
(0002, 2, 12)