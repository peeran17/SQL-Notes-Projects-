Definition

A Stored Procedure is a precompiled collection of one or more SQL statements stored inside the database and executed whenever needed.

Simple Definition

A Stored Procedure is a reusable SQL program stored in the database.

Why Do We Need Stored Procedures?

Suppose in a company, every day you need to:

Find employees with salary > 50000
Update their bonus
Generate a report

Instead of writing these queries again and again, you can store them inside a procedure and execute them with one command.

Syntax
CREATE PROCEDURE ProcedureName
AS
BEGIN
    -- SQL Statements
END;




select*from proce

--Create basic procedure To get All Details from the proce table
create procedure get_details
as
begin
     select*from proce;
end;

exec get_details

create procedure list
as
begin
     select empid,empname,salary 
	 from proce
	 where salary>=50000
end;

exec list

drop procedure get_details
exec get_details

create procedure get_emp @empid int
as
begin
      select empname,salary
	  from proce
	  where empid=@empid
end;

exec get_emp 101;
exec get_emp 102;

create procedure insert_val  @Empid int,
                             @EmpName varchar(50),
							 @department varchar(30),
							 @salary decimal(10,2),
							 @city varchar(30)

as
begin  
     insert into proce 
	 values(@empid,@empname,@department,@salary,@city);

end;
exec insert_val 107,'kasim','Ai',63000,'Kerala';
select* from proce


