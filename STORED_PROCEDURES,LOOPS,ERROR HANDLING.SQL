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

select * from emp

create procedure sp
as
begin
      declare @x int
	  declare @y int
	  set @x = 20
	  set @y = 40
	  print @x + @y
end
exec sp

create procedure p(@x int,@y varchar)
as
begin
      select Empno,job from EMP where EMPNO =@x and JOB=@y; 
end
exec pp 7521,'Salesman';
exec pp 7900,'clerk';





--if else Conditions 
create procedure sp2 @empno int
as
begin
       if exists(select*from EMP where EMPNO=@empno)
	       PRINT ' Records Found'
       else
	       PRINT 'No Records Found'


end
exec sp2 7369;
exec sp2 7566;
exec sp2 7563;


--create procedure write Multiple Activities
create procedure 










--Loops
--Executing Block of Statement multiple No of Times .
--WHILE
--FOR EACH--DO NOT DISCUSS WE WILL DISCUSS LATER,FOR NOW ONLY WHILE 
--SYNTAX    
--while condition
--begin
--statement1
--statement2
----
--end


create procedure LL1
as
begin
       Declare @x int =1
	   declare @y int =10
	   while @x <= @y 
	   begin 
	         PRINT @x
			 set @x=@x+1
	   end

end

exec LL1

--Increasing x by 2 times with same code 
create procedure LL2
as
begin
       Declare @x int =1
	   declare @y int =10
	   while @x <= @y 
	   begin 
	         PRINT @x
			 set @x=@x+2  -- incrementation must shuould be mention that
	   end

end

exec LL2

---
create procedure LL3
as
begin
      declare @a int = 1
	  declare @b int =8

	  while @a<@b
	  begin
	       print @a
		   set @a =@a+1
		   if @a = 5
		       break
	  end
end

exec LL3

--create procedure with two input parametres x,y ,loops from x to y And print the even numbers
create procedure evenn @x int,@y int
as
begin
        while @x <=@y 
		begin
		     if @x % 2 = 0
			    print @x

          set @x =@x+1
		end

end
exec evenn 1,20

--Error Handling
create procedure er_01(@x int,@y int)
as
begin
      begin try 
	     PRINT @X / @y
	  begin end
	  begin catch 
	      PRINT 'Zero Division is not Possible  Check The Inputs'
	  end catch

end
 --Another Example
 create procedure err (@emp int,@Ename varchar(15),@sal int)
 as
 begin 
      begin try
	        insert into EMP (EMPNO,ENAME,SAL) values(@emp,@Ename,@sal)
	  end try

	  begin catch
	        PRINT'Possible Errors is More NO OF Char in column'
			print error_message()
	  end catch
 end

exec err 734,'rhfrtghththtgghthg',200220;
exec err 732 ,'basha',75000;

