--Joins :
--To Merge Tables :-> **Theres SHould Be atleast 1 Common Col

--1)INNERJOIN : Returns only the rows that have matching values in both tables.
--2)Left Join:  Returns all rows from the left table and the matching rows from the right table.
If --           no match → NULL values.
--3) Right Join : Returns all rows from the right table and the matching rows from the left table.
--                If no match → NULL values.
--4)Full Joins : Returns All Rows From Both sides,If no match → NULL on missing side

select*from EMP
select*from dept


--joins 
--inner join

select * from EMP e join dept d on e.DEPTNO=d.DEPTNO

select * from emp e inner join dept d on e.DEPTNO=d.deptno

--left join
select e.ENAME,d.dname from EMP e left join dept d on e.DEPTNO =d.deptno
--right join
select e.Ename ,d.dname from EMP e right join dept d  on e.DEPTNO=d.deptno
