select * from students
-- TRIGGERS
-- SPECIAL STORED PROCEDURE , WHICH EXECUTES AUTOMATICALLY [NO MANUAL RUN], WHEN AN ACTION IS PERFORMED
-- ACTION CAN BE ANY DDL ACTIVITY ON DATABASE -- DDL TRIGGER
-- ACITON CAN BE ANY DML ACTIVITY ON DATABASE -- DML TRIGGER
create trigger t1
on students
for insert,update
As
begin
      PRINT'No Inset and updates are Allowed'  
	  Rollback
end
--In Simple words Triggers Used to Stop or Helps TO Avoid the Actions based on whatever conditions
update students set dept_id=23 where student_id = 3 -- U can see the errors
insert into students(dept_id,student_id) values(4,21)--

DROP TRIGGER T1;

--Ex2
CREATE TRIGGER TRIG 02
ON EMP
FOR INSERT
AS
BEGIN
SELECT * FROM inserted

END

INSERT INTO EMP(EMPNO , ENAME, SAL) VALUES (1177, 'ABCD', 12000)  -- it display the record which is inserted at a time 

--
CREATE TABLE AUDIT_LOG(EMPID INT, SAL INT, DOA DATETIME)

CREATE TRIGGER TRIG_03
ON EMP
FOR INSERT
AS
BEGIN
INSERT INTO AUDIT_LOG SELECT EMPNO, SAL, GETDATE() FROM INSERTED

END

INSERT INTO EMP(EMPNO , ENAME, SAL) VALUES (1177, 'ABCD', 12000)

SELECT . FROM AUDIT_LOG
SELECT . FROM EMP
--above How it Works Means,when insert the values into the Emp ut stores in Auditlog as well as Emp table
