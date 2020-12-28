alter table employee_payroll add deduction money;
alter table employee_payroll add taxable_pay money;
alter table employee_payroll add income_tax money;
alter table employee_payroll add net_pay money;

update employee_payroll set deduction = 0, taxable_pay = 0, net_pay = 0;
update employee_payroll set income_tax = 0;

select * from employee_payroll;