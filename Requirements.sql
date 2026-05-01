--As Long Streak Break Finally into The Auction 
--Today We are Having the Practcie 

--database : help ,e to store information
--tabular [structure] rows and columns 
--data

--server[local]
--developer version
                    -- testing and developement 
					--learning purpose

--express
--         production Purpose[host]
--         publically
--         10 GB [limited]
--          advanvce features 
-------------------------------------------------------------------------
--BASIC
      --Minimalistic 
	  --NSSQL SERVER
--CUSTOM
       --Customize installation
	   
--authentication Mode
--windows
--SQL SERVER Authentication Mode
-------------------------------------------------------------
--AZURE EXTENSION[UNCHECK] (Paid Version)
            -- Hubrid Mode Storing

-------------------------------------------------------------


--TYPES OF COMMANDS 
--DDL (CREATE ,ALTER-Modifuying the existing database objects(No changes Will Be done on DATA) ,DROP,TRUNCATE(Data is Going to be removed ,structure remains same like rules applied [primary,foreign],column))
--DML  (INSERT ,UPDATE,DELETE)
--DQL   (SELECT) --tO DISPLAY SOMETHING 

--DCL
--GRANT--give
--REVOKE-remove

--TCL  Transaction
begin transaction

--commit -- it is used tp save this Changes
--change 1
--rollback -save points -undo
--change2
--change 3--By Applying Commit 
commit 

--Example

create table table1(
Dept_id int PRIMARY KEY,
DEPTNAME VARCHAR(50)
);

INSERT INTO table1 values 
(1,'HR'),
(2,'sales'),
(3,'IT'),
(4,'Finance');

--Constraints
--primary key - 
   --1)no null.duplicates
   --2)unique
   --Null are allowed ,dupluacte not allowed
   --default
   --foreign 

   select *from table1





