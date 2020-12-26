select sum(salary) from employee_payroll where gender = 'M' group by gender;
select avg(salary) from employee_payroll where gender = 'M' group by gender;
select min(salary) from employee_payroll where gender = 'M' group by gender;
select max(salary) from employee_payroll where gender = 'M' group by gender;
select count(salary) from employee_payroll where gender = 'F' group by gender;