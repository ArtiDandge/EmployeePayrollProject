select salary from [dbo].[employee_payroll] where name = 'john'

select * from [dbo].[employee_payroll] where start_date between CAST('2010-12-22' as date) AND GETDATE()
