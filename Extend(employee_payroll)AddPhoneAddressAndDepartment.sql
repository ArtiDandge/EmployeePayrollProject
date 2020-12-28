alter table employee_payroll add phone_number varchar(10);
alter table employee_payroll add address varchar(50) not null default 'TBD';
alter table employee_payroll add department varchar(20) not null default 'TBD';
