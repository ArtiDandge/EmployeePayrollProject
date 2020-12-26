alter table [dbo].[employee_payroll] add gender char(1)

update [dbo].[employee_payroll] set gender = 'M' where name = 'john' or name = 'bob'

update [dbo].[employee_payroll] set gender = 'F' where name = 'charlie'