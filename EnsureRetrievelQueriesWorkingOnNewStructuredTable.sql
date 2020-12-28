select * from Employee e inner join Company c on
e.CompanyID = c.company_id  inner join Payroll p on
p.payroll_id = e.Payroll_ID inner join Employee_Department_Mapping ed on
ed.EmployeeID = e.employee_id inner join Department d on 
d.department_id = ed.DepartmentID where e.employee_id = 1;

select * from Employee e inner join Company c on
e.CompanyID = c.company_id  inner join Payroll p on
p.payroll_id = e.Payroll_ID inner join Employee_Department_Mapping ed on
ed.EmployeeID = e.employee_id inner join Department d on 
d.department_id = ed.DepartmentID where e.employee_id = 2;

select employee_name, basic_pay from Employee where start_date between CAST('2017-02-12' as date) AND GETDATE();